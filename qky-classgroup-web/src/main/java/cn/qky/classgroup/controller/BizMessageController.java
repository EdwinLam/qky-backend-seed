package cn.qky.classgroup.controller;

import cn.qky.classgroup.entity.BizMessage;
import cn.qky.classgroup.service.BizMessageService;
import cn.qky.classgroup.vo.QueryByGroupIdVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: Edwin
 * @Description:
 */
@Slf4j
@RestController
@Api(description = "消息总表")
@RequestMapping("/bizMessage")
public class BizMessageController extends BaseController {

    @Autowired
    private BizMessageService bizMessageService;

    @RequestMapping(value = "/queryByGroupId", method = RequestMethod.GET)
    @ApiOperation(value = "根据分组Id查询分组信息")
    public Page<BizMessage> queryByGroupId(QueryByGroupIdVo queryByGroupIdVo){
        BizMessage bizMessageParam = new BizMessage();
        bizMessageParam.setGroupId(queryByGroupIdVo.getGroupId());
        return bizMessageService.page(bizMessageParam,queryByGroupIdVo.getPageNumber(),queryByGroupIdVo.getPageSize());
    }

}
