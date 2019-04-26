package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.BasAttsDao;
import cn.qky.classgroup.entity.BasAtts;
import cn.qky.classgroup.enums.DataStatusEnum;
import cn.qky.classgroup.enums.SourceCodeEnum;
import cn.qky.classgroup.service.BasAttsService;
import cn.qky.classgroup.utils.EntityUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author Edwin
 * @Description: 附件表接口实现
 */
@Slf4j
@Service
@Transactional
public class BasAttsServiceImpl implements BasAttsService {

    @Autowired
    private BasAttsDao basAttsDao;


    @Override
    public BasAttsDao getRepository() {
        return basAttsDao;
    }

    @Override
    public void BatchAddBasAtts(Long groupId,Long userId,SourceCodeEnum sourceCodeEnum,Long sourceId,List<BasAtts> basAttsList){
        basAttsList.forEach(v -> {
            v.setGroupId(groupId);
            v.setSourceId(sourceId);
            v.setSourceCode(sourceCodeEnum.getValue());
            EntityUtils.initEntityByUser(v,userId);
        });
        basAttsDao.saveAll(basAttsList);
    }

    @Override
    public List<BasAtts> getAtts(SourceCodeEnum sourceCodeEnum,Long sourceId){
        BasAtts basAttsParam = new BasAtts();
        basAttsParam.setSourceCode(sourceCodeEnum.getValue());
        basAttsParam.setSourceId(sourceId);
        basAttsParam.setStatus(DataStatusEnum.ENABLED.getValue());
        return findAll(basAttsParam);
    }
}
