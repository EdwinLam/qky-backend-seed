package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BizNoticeDao;
import cn.qky.classgroup.entity.BizNotice;
import cn.qky.classgroup.entity.BizNoticeReceive;
import cn.qky.classgroup.enums.SourceCodeEnum;
import cn.qky.classgroup.service.BasAttsService;
import cn.qky.classgroup.service.BizMessageService;
import cn.qky.classgroup.service.BizNoticeReceiveService;
import cn.qky.classgroup.service.BizNoticeService;
import cn.qky.classgroup.utils.EntityUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Edwin
 * @Description: 通知表接口实现
 */
@Slf4j
@Service
@Transactional
public class BizNoticeServiceImpl implements BizNoticeService {

    @Autowired
    private BizNoticeDao bizNoticeDao;

    @Autowired
    private BasAttsService basAttsService;

    @Autowired
    private BizNoticeReceiveService bizNoticeReceiveService;

    @Autowired
    private BizMessageService bizMessageService;

    @Override
    public BizNoticeDao getRepository() {
        return bizNoticeDao;
    }

    @Override
    @Transactional
    public boolean addBizNotice(BizNotice bizNotice,Long userId,Long groupId,String groupNickName){
        EntityUtils.initEntityByUser(bizNotice,userId);
        bizNotice.setGroupId(groupId);
        bizNotice.setCreatorName(groupNickName);
        bizNotice.setReadNum(0);
        bizNoticeDao.save(bizNotice);
        // 保存附件
        if(bizNotice.getBasAtts().size()>0)
            basAttsService.BatchAddBasAtts(groupId,userId, SourceCodeEnum.NOTICE,bizNotice.getId(),bizNotice.getBasAtts());
        // 保存信息提醒表
        bizMessageService.saveMessage(groupId,userId,bizNotice.getId(),groupNickName,SourceCodeEnum.NOTICE,bizNotice.getTitle(),bizNotice.getContent());
        return true;
    }

    public boolean doReadNotice(Long groupId,Long userId,Long noticeId){
        BizNoticeReceive bizNoticeReceiveParam = new BizNoticeReceive();
        bizNoticeReceiveParam.setUserId(userId);
        bizNoticeReceiveParam.setNoticeId(noticeId);
        if(bizNoticeReceiveService.count(bizNoticeReceiveParam)==0){
            BizNoticeReceive bizNoticeReceive = new BizNoticeReceive();
            EntityUtils.initEntityByUser(bizNoticeReceive,userId);
            bizNoticeReceive.setUserId(userId);
            bizNoticeReceive.setNoticeId(noticeId);
            bizNoticeReceive.setGroupId(groupId);
            bizNoticeReceiveService.save(bizNoticeReceive);
            // 更新通知已阅数
            BizNotice bizNotice = bizNoticeDao.getOne(noticeId);
            bizNotice.setReadNum((int)bizNoticeReceiveService.count(bizNoticeReceiveParam));
            bizNoticeDao.save(bizNotice);
        }
        return true;
    }
}
