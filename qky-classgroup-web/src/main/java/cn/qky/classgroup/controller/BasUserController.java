package cn.qky.classgroup.controller;

import cn.hutool.core.util.StrUtil;
import cn.qky.classgroup.entity.GroupUserRel;
import cn.qky.classgroup.exception.QkyException;
import cn.qky.classgroup.service.GroupUserRelService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @Author Edwin
 * @Description: 用户基本信息管理接口
 */
@Slf4j
@RestController
@Api(description = "用户基本信息管理接口")
@RequestMapping("/basUser")
public class BasUserController extends BaseController{

    @Autowired
    private GroupUserRelService groupUserRelService;

    @RequestMapping(value = "/getUserRelByUserId", method = RequestMethod.GET)
    @ApiOperation(value = "获取用户拥有的分组")
    public List<GroupUserRel> getUserRelByUserId(@ApiParam(name="userId",value="用户id")Long userId){
        return groupUserRelService.getUserRelByUserId(userId);
    }

    @RequestMapping(value = "/updateGroupNickName", method = RequestMethod.POST)
    @ApiOperation(value = "更新用户分组姓名")
    public Boolean updateGroupNickName(
            @ApiParam(name="userId",value="用户id")Long userId,
            @ApiParam(name="groupId",value="分组id")Long groupId,
            @ApiParam(name="nickName",value="群组昵称")String nickName){
        if(StrUtil.isBlank(nickName)){
            throw new QkyException("请输入姓名");
        }
        if(nickName.length()>10){
            throw new QkyException("姓名不能大于10个字符");
        }
        // 根据id获取用户关系信息
        GroupUserRel groupUserRelParam = new GroupUserRel();
        groupUserRelParam.setGroupId(groupId);
        groupUserRelParam.setUserId(userId);
        GroupUserRel groupUserRel = groupUserRelService.findOne(groupUserRelParam);
        if(!nickName.equals(groupUserRel.getNickName())){
            groupUserRel.setNickName(nickName);
            groupUserRelService.update(groupUserRel);
        }
        return true;
    }
}
