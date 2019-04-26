package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BizNoticeReceiveDao;
import cn.qky.classgroup.service.BizNoticeReceiveService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Edwin
 * @Description: 通知接收表接口实现
 */
@Slf4j
@Service
@Transactional
public class BizNoticeReceiveServiceImpl implements BizNoticeReceiveService {

    @Autowired
    private BizNoticeReceiveDao bizNoticeReceiveDao;

    @Override
    public BizNoticeReceiveDao getRepository() {
        return bizNoticeReceiveDao;
    }
}
