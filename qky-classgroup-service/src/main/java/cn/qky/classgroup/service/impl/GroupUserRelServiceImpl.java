package cn.qky.classgroup.service.impl;

import cn.qky.classgroup.dao.GroupUserRelDao;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.entity.GroupUserRel;
import cn.qky.classgroup.enums.GroupUserStatusEnum;
import cn.qky.classgroup.service.GroupUserRelService;
import cn.qky.classgroup.utils.UserInfoRedisUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author Edwin
 * @Description: 群组与用户关系接口实现
 */
@Slf4j
@Service
@Transactional
public class GroupUserRelServiceImpl implements GroupUserRelService {

    @Autowired
    private GroupUserRelDao groupUserRelDao;

    @Autowired
    private UserInfoRedisUtils userInfoRedisUtils;

    @Override
    public GroupUserRelDao getRepository() {
        return groupUserRelDao;
    }

    public void selectGroupRel(Long userId,Long groupId) {
        GroupUserRel groupUserRelParam = new GroupUserRel();
        groupUserRelParam.setGroupId(groupId);
        groupUserRelParam.setUserId(userId);
        GroupUserRel groupUserRel = findOne(groupUserRelParam);
        userInfoRedisUtils.selectGroupRel(userId,groupUserRel);
    }

    @Override
    public void synRelToUser(BasUser basUser) {
        List<GroupUserRel> groupUserRelList=getUserRelByUserId(basUser.getId());
        basUser.setGroupNum(groupUserRelList.size());
        if(groupUserRelList.size()>0){
            selectGroupRel(basUser.getId(),groupUserRelList.get(0).getBasGroup().getId());
        }
    }

    @Override
    public  List<GroupUserRel> getUserRelByUserId(Long userId){
        GroupUserRel groupUserRelParam = new GroupUserRel();
        groupUserRelParam.setUserId(userId);
        groupUserRelParam.setUserStatus(GroupUserStatusEnum.FULL_MEMBER.getValue());
        return findAll(groupUserRelParam);
    }
}
