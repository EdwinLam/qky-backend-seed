package cn.qky.classgroup.utils;

import cn.qky.classgroup.constant.UserInfoRedis;
import cn.qky.classgroup.entity.BasUser;
import cn.qky.classgroup.entity.GroupUserRel;
import cn.qky.classgroup.enums.AppCodeEnum;
import cn.qky.classgroup.service.GroupUserRelService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * @Author: Edwin
 * @Description:
 */
@Slf4j
@Component
public class UserInfoRedisUtils {

    @Autowired
    private RedisTemplate redisTemplate;


    /**
     * 选择用户分组关系
     * @param userId
     * @param groupUserRel
     */
    public void selectGroupRel(Long userId,GroupUserRel groupUserRel){
        String redisKey = AppCodeEnum.QKY_CLASSGROUP.getValue()+":"+UserInfoRedis.CUR_GROUPMAP;
        Map<Long,GroupUserRel> resultMap= redisTemplate.opsForHash().entries(redisKey);
        if(resultMap==null)
            resultMap = new HashMap<>();
        resultMap.put(userId,groupUserRel);
        redisTemplate.opsForHash().putAll(redisKey,resultMap);
    }

    /**
     * 获取用户所在分组id
     * @param userId
     * @return
     */
    public GroupUserRel getCurGroupRel(Long userId){
        String redisKey = AppCodeEnum.QKY_CLASSGROUP.getValue()+":"+UserInfoRedis.CUR_GROUPMAP;
        Map<Long,GroupUserRel> resultMap= redisTemplate.opsForHash().entries(redisKey);
        return resultMap.get(userId);
    }

    /**
     * 设置登录用户
     * @param basUser
     */
    public void setCurUser(BasUser basUser){
        String redisKey = AppCodeEnum.QKY_CLASSGROUP.getValue()+":" + UserInfoRedis.CUR_USER;
        Map<Long,BasUser> userMap= redisTemplate.opsForHash().entries(redisKey);
        userMap.put(basUser.getId(),basUser);
        redisTemplate.opsForHash().putAll(redisKey,userMap);
    }

    /**
     * 设置登录用户
     * @param userId
     */
    public BasUser getUserById(Long userId){
        String redisKey = AppCodeEnum.QKY_CLASSGROUP.getValue()+":" + UserInfoRedis.CUR_USER;
        Map<Long,BasUser> userMap= redisTemplate.opsForHash().entries(redisKey);
        return userMap.get(userId);
    }
}
