package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BasUserDao;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.service.BasUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author Edwin
 * @Description: 用户基本信息接口实现
 */
@Slf4j
@Service
@Transactional
public class BasUserServiceImpl implements BasUserService {

    @Autowired
    private BasUserDao basUserDao;

    @Override
    public BasUserDao getRepository() {
        return basUserDao;
    }

    @Override
    public BasUser synBasUser(String openid) {
        BasUser basUserParam = new BasUser();
        basUserParam.setOpenid(openid);
        BasUser dbBasUser =findOne(basUserParam);
        if(dbBasUser==null){
            BasUser basUser = new BasUser();
            basUser.setOpenid(openid);
            dbBasUser = save(basUser);
        }
        return dbBasUser;
    }
}
