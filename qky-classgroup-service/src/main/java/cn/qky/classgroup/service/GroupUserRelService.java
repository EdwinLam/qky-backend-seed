package cn.qky.classgroup.service;

import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.entity.GroupUserRel;

import java.util.List;

/**
 * @Author Edwin
 * @Description: 群组与用户关系接口
 */
public interface GroupUserRelService extends BaseService<GroupUserRel,Long> {
    /**
     * 同步用户分组信息到用户
     * @param basUser
     */
    void synRelToUser(BasUser basUser);


    /**
     * 根据用户id获取用户拥有分组
     * @param userId
     * @return
     */
    List<GroupUserRel> getUserRelByUserId(Long userId);

    /**
     * 选择分组关系
     * @param userId
     * @param groupId
     */
    void selectGroupRel(Long userId,Long groupId);
}
