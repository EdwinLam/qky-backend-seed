package cn.qky.classgroup.controller;

import cn.qky.classgroup.entity.BasGroup;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.result.group.StatisticalGroupMemberNumber;
import cn.qky.classgroup.service.BasGroupService;
import io.swagger.annotations.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author Edwin
 * @Description: 用户分组接口
 */
@Slf4j
@RestController
@Api(description = "用户分组接口")
@RequestMapping("/basGroup")
public class BasGroupController extends BaseController{

    @Autowired
    private BasGroupService basGroupService;


    @RequestMapping(value = "/queryByCode", method = RequestMethod.GET)
    @ApiOperation(value = "登录接口")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "groupCode",value = "分组code",paramType = "path",dataType = "string"),
    })
    public BasGroup queryByCode(String groupCode){
        BasGroup basGroupParam = new BasGroup();
        basGroupParam.setGroupCode(groupCode);
        BasGroup basGroup = basGroupService.findOne(basGroupParam);
        basGroup.setJoined(true);
        BasUser basUser = getCurrentUser();
        System.out.println(basUser.getPhoneNumber());
        return basGroup;
    }

    @RequestMapping(value = "/statisticalGroupMemberNumber", method = RequestMethod.GET)
    @ApiOperation(value = "统计分组各种人员数量")
    public StatisticalGroupMemberNumber statisticalGroupMemberNumber(@ApiParam(name="groupId",value="分组id")Long groupId){
        return basGroupService.statisticalGroupMemberNumber(groupId);
    }

}
