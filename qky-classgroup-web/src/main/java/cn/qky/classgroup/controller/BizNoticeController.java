package cn.qky.classgroup.controller;

import cn.hutool.core.util.StrUtil;
import cn.qky.classgroup.entity.BasAtts;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.entity.BizNotice;
import cn.qky.classgroup.entity.BizNoticeReceive;
import cn.qky.classgroup.enums.DataStatusEnum;
import cn.qky.classgroup.enums.SourceCodeEnum;
import cn.qky.classgroup.exception.QkyException;
import cn.qky.classgroup.service.BasAttsService;
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
@RequestMapping("/bizNotice")
public class BizNoticeController extends BaseController{

    @Autowired
    private BizNoticeService bizNoticeService;

    @Autowired
    private BasAttsService basAttsService;

    @Autowired
    private BizNoticeReceiveService bizNoticeReceiveService;


    @RequestMapping(value = "/queryByGroupId", method = RequestMethod.GET)
    @ApiOperation(value = "根据分组Id查询通知信息")
    public Page<BizNotice> queryByGroupId(QueryByGroupIdVo queryByGroupIdVo){
        BizNotice bizNoticeParam = new BizNotice();
        bizNoticeParam.setGroupId(queryByGroupIdVo.getGroupId());
        return bizNoticeService.page(bizNoticeParam,queryByGroupIdVo.getPageNumber(),queryByGroupIdVo.getPageSize());
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    @ApiOperation(value = "根据id获取信息")
    public BizNotice view(Long id){
        BizNotice bizNotice = bizNoticeService.get(id);
        // 获取附件列表
        BasAtts basAttsParam = new BasAtts();
        basAttsParam.setSourceCode(SourceCodeEnum.NOTICE.getValue());
        basAttsParam.setSourceId(id);
        basAttsParam.setStatus(DataStatusEnum.ENABLED.getValue());
        List<BasAtts> basAtts = basAttsService.findAll(basAttsParam);
        bizNotice.setBasAtts(basAtts);
        // 获取已读列表
        BizNoticeReceive bizNoticeReceiveParam = new BizNoticeReceive();
        bizNoticeReceiveParam.setNoticeId(id);
        bizNoticeReceiveParam.setStatus(DataStatusEnum.ENABLED.getValue());
        List<BizNoticeReceive> bizNoticeReceives =  bizNoticeReceiveService.findAll(bizNoticeReceiveParam);
        List<BasUser> basUsers =bizNoticeReceives.stream().map(
                bizNoticeReceive->{
                    BasUser basUser = bizNoticeReceive.getBasUser();
                    basUser.setGroupNickName(bizNoticeReceive.getNickName());
                    return basUser;
                }
        ).collect(Collectors.toList());
        bizNotice.setBasUsers(basUsers);
        // 标志已读
        bizNoticeService.doReadNotice(getCurrentGroupId(),getCurrentUserId(),id);
        return bizNotice;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ApiOperation(value = "新增通知")
    public boolean add(@RequestBody BizNotice bizNotice){
        BasUser basUser = getCurrentUser();
        if(validateAddNotice(bizNotice))
            bizNoticeService.addBizNotice(bizNotice,basUser.getId(),getCurrentGroupId(),getCurrentGroupRel().getNickName());
        return true;
    }

    /**
     * 验证新增通知
     * @param bizNotice
     * @return
     */
    public boolean validateAddNotice(BizNotice bizNotice) {
        if (StrUtil.isBlank(bizNotice.getTitle()))
            throw new QkyException("通知标题不能为空");
        if (StrUtil.isBlank(bizNotice.getContent()))
            throw new QkyException("通知内容不能为空");
        if (bizNotice.getTitle().length() > 20)
            throw new QkyException("通知标题不能多于20字");
        if (bizNotice.getContent().length() > 300)
            throw new QkyException("通知内容不能多于300字");
        if (bizNotice.getBasAtts().size() > 9)
            throw new QkyException("最多可以添加9张图片");
        return true;
    }

}
