package cn.qky.classgroup.controller;

import cn.hutool.http.HttpUtil;
import cn.hutool.json.JSONObject;
import cn.qky.classgroup.constant.SecurityConstant;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.entity.GroupUserRel;
import cn.qky.classgroup.enums.GroupUserIdentityEnum;
import cn.qky.classgroup.result.SystemUser;
import cn.qky.classgroup.service.BasGroupService;
import cn.qky.classgroup.service.BasUserService;
import cn.qky.classgroup.service.GroupUserRelService;
import cn.qky.classgroup.utils.UserInfoRedisUtils;
import com.google.gson.Gson;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.swagger.annotations.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/**
 * @Author: Edwin
 * @Description: 系统相关接口
 */
@Slf4j
@RestController
@Api(description = "登录相关接口")
@RequestMapping("/system")
public class SystemController extends BaseController{

    @Value("${weixin.appid}")
    private String appid;

    @Value("${weixin.secret}")
    private String secret;

    @Value("${weixin.apiUrl}")
    private String apiUrl;

    @Value("${weixin.grant_type}")
    private String grant_type;

    @Value("${qky.tokenExpireTime}")
    private Integer tokenExpireTime;

    @Autowired
    BasUserService basUserService;

    @Autowired
    GroupUserRelService groupUserRelService;

    @Autowired
    private BasGroupService basGroupService;

    @Autowired
    private UserInfoRedisUtils userInfoRedisUtils;


    @RequestMapping(value = "/ssoLogin", method = RequestMethod.POST)
    @ApiOperation(value = "微信单点登录接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "code",value = "登录凭证",paramType = "form",dataType = "String"),
    })
    public String ssoLogin(String code){
        // 微信接口验证
        HashMap<String, Object> paramMap = new HashMap<>();
        paramMap.put("appid", appid);
        paramMap.put("secret",secret);
        paramMap.put("js_code", code);
        paramMap.put("grant_type", grant_type);
        String jsonResultStr= HttpUtil.get(apiUrl, paramMap);
        JSONObject result = new JSONObject(jsonResultStr);
        String openid = result.get("openid").toString();
        Object exp = result.get("expires_in");
        int expires_in = exp==null?tokenExpireTime * 60 * 1000:Integer.parseInt(exp.toString());
        // 获取账号
        BasUser basUser = basUserService.synBasUser(openid);
        // 同步账号分组信息
        groupUserRelService.synRelToUser(basUser);
        // 设置redis
        userInfoRedisUtils.setCurUser(basUser);
        // 生成jwt
        String token = Jwts.builder()
                .setSubject(basUser.getOpenid())
                .claim(SecurityConstant.AUTHORITIES, new Gson().toJson(new ArrayList<>()))
                .claim("userId", basUser.getId())
                .setExpiration(new Date(System.currentTimeMillis() + expires_in))
                .signWith(SignatureAlgorithm.HS512, SecurityConstant.JWT_SIGN_KEY)
                .compact();
        return SecurityConstant.TOKEN_SPLIT + token;
    }

    @RequestMapping(value = "/switchGroup", method = RequestMethod.POST)
    @ApiOperation(value = "切换用户分组")
    public Boolean switchGroup(@ApiParam(name="userId",value="用户id")Long groupId){
        groupUserRelService.selectGroupRel(getCurrentUserId(),groupId);
        return true;
    }

    @RequestMapping(value = "/getInfo", method = RequestMethod.GET)
    @ApiOperation(value = "获取登录用户相关信息")
    public SystemUser getInfo(){
        BasUser basUser = getCurrentUser();
        SystemUser systemUser = new SystemUser();
        GroupUserRel groupUserRelParam = new GroupUserRel();
        groupUserRelParam.setUserId(basUser.getId());
        systemUser.setUserId(basUser.getId());
        systemUser.setGroupNum((int)groupUserRelService.count(groupUserRelParam));
        groupUserRelParam.setGroupId(getCurrentGroupId());
        GroupUserRel groupUserRel = groupUserRelService.findOne(groupUserRelParam);
        systemUser.setGroupName(groupUserRel.getBasGroup().getGroupName());
        systemUser.setGroupId(groupUserRel.getGroupId());
        systemUser.setGroupCode(groupUserRel.getBasGroup().getGroupCode());
        systemUser.setGroupNotice(groupUserRel.getBasGroup().getNotice());
        systemUser.setAdmin(groupUserRel.getUserIdentity()== GroupUserIdentityEnum.ADMIN.getValue());
        systemUser.setOwner(groupUserRel.getUserIdentity()== GroupUserIdentityEnum.GROUP_OWNER.getValue());
        systemUser.setAvatarUrl(basUser.getAvatarUrl());
        systemUser.setGroupNickName(groupUserRel.getNickName());
        systemUser.setPhoneNumber(basUser.getPhoneNumber());
        systemUser.setStatisticalGroupMemberNumber(basGroupService.statisticalGroupMemberNumber(groupUserRel.getGroupId()));
        return systemUser;
    }
}
