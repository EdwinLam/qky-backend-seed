package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BizEnrollUserDao;
import cn.qky.classgroup.service.BizEnrollUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Edwin
 * @Description: 报名记录表接口实现
 */
@Slf4j
@Service
@Transactional
public class BizEnrollUserServiceImpl implements BizEnrollUserService {

    @Autowired
    private BizEnrollUserDao bizEnrollUserDao;

    @Override
    public BizEnrollUserDao getRepository() {
        return bizEnrollUserDao;
    }
}
