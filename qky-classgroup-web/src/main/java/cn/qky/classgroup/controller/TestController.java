package cn.qky.classgroup.controller;

import cn.thinkjoy.qky.msg.api.rpc.IMsgSender;
import com.alibaba.dubbo.config.annotation.Reference;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author Edwin
 * @Description: 测试接口
 */
@Slf4j
@RestController
@Api(description = "测试接口")
@RequestMapping("/test")
public class TestController{
    @Reference
    private IMsgSender msgSender;


    @RequestMapping(value = "/msg",method = RequestMethod.GET)
    @ApiOperation(value = "测试短信发送接口")
    public void msg(){
        // 增加发送的号码
        List<String> phones = new ArrayList();
        phones.add("13824789780");
        Map<String,Object> paramMap = new HashMap<>();
        paramMap.put("schoolCode","classGroup");
        paramMap.put("schoolName","班群小助理");
        msgSender.sendSms("测试内容",phones, "QKY_CLASSGROUP","dev:"+"QKY_CLASSGROUP",paramMap);
    }

}
