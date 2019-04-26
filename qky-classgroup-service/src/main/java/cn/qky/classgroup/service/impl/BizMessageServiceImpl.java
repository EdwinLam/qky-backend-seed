package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BizMessageDao;
import cn.qky.classgroup.entity.BizMessage;
import cn.qky.classgroup.enums.SourceCodeEnum;
import cn.qky.classgroup.service.BizMessageService;
import cn.qky.classgroup.utils.EntityUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Edwin
 * @Description: 消息总表接口实现
 */
@Slf4j
@Service
@Transactional
public class BizMessageServiceImpl implements BizMessageService {

    @Autowired
    private BizMessageDao bizMessageDao;

    @Override
    public BizMessageDao getRepository() {
        return bizMessageDao;
    }

    @Override
    @Transactional
    public boolean saveMessage(Long groupId, Long userId,Long sourceId,String creatorName,SourceCodeEnum sourceCodeEnum,String messageTitle,String messageContent){
        BizMessage bizMessage = new BizMessage();
        bizMessage.setMessageTitle(messageTitle);
        bizMessage.setMessageContent(messageContent);
        EntityUtils.initEntityByUser(bizMessage,userId);
        bizMessage.setGroupId(groupId);
        bizMessage.setCreatorName(creatorName);
        bizMessage.setSourceCode(sourceCodeEnum.getValue());
        bizMessage.setSourceId(sourceId);
        bizMessageDao.save(bizMessage);
        return true;
    }
}
