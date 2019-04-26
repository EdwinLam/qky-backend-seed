package cn.qky.classgroup.controller;

import cn.hutool.core.util.StrUtil;
import cn.qky.classgroup.entity.*;
import cn.qky.classgroup.enums.DataStatusEnum;
import cn.qky.classgroup.enums.SourceCodeEnum;
import cn.qky.classgroup.exception.QkyException;
import cn.qky.classgroup.service.BasAttsService;
import cn.qky.classgroup.service.BizEnrollService;
import cn.qky.classgroup.service.BizNoticeReceiveService;
import cn.qky.classgroup.service.BizNoticeService;
import cn.qky.classgroup.vo.QueryByGroupIdVo;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author Edwin
 * @Description: 班级通知接口
 */
@Slf4j
@RestController
@Api(description = "班级通知接口")
@RequestMapping("/biz/enroll")
public class BizEnrollController extends BaseController{

    @Autowired
    private BizEnrollService bizEnrollService;

    @Autowired
    private BasAttsService basAttsService;



    @RequestMapping(value = "/queryByGroupId", method = RequestMethod.GET)
    @ApiOperation(value = "根据分组Id查询通知信息")
    public Page<BizEnroll> queryByGroupId(QueryByGroupIdVo queryByGroupIdVo){
        BizEnroll bizEnrollParam = new BizEnroll();
        bizEnrollParam.setGroupId(queryByGroupIdVo.getGroupId());
        return bizEnrollService.page(bizEnrollParam,queryByGroupIdVo.getPageNumber(),queryByGroupIdVo.getPageSize());
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取信息")
    public BizEnroll view(Long id){
        BizEnroll bizEnroll = bizEnrollService.get(id);
        // 获取附件列表
        bizEnroll.setBasAtts(basAttsService.getAtts(SourceCodeEnum.ENROLL,id));
        return bizEnroll;
    }

}
