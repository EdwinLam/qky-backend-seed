package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BizEnrollDao;
import cn.qky.classgroup.service.BizEnrollService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Edwin
 * @Description: 报名表接口实现
 */
@Slf4j
@Service
@Transactional
public class BizEnrollServiceImpl implements BizEnrollService {

    @Autowired
    private BizEnrollDao bizEnrollDao;

    @Override
    public BizEnrollDao getRepository() {
        return bizEnrollDao;
    }
}
