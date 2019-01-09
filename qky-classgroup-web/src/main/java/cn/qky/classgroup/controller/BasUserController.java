package cn.qky.classgroup.controller;

import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.service.BasUserService;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @Author Edwin
 * @Description: 用户基本信息管理接口
 */
@Slf4j
@RestController
@Api(description = "用户基本信息管理接口")
@RequestMapping("/basUser")
public class BasUserController extends BaseController<BasUser, String>{

    @Autowired
    private BasUserService basUserService;

    @Override
    public BasUserService getService() {
        return basUserService;
    }

}
