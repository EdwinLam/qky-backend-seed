package cn.qky.classgroup.dao.mapper;

import cn.qky.classgroup.entity.BasGroup;
import cn.qky.classgroup.result.group.StatisticalGroupMemberNumber;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * @Author: Edwin
 * @Description:
 */
public interface BasGroupMapper extends BaseMapper<BasGroup> {
    StatisticalGroupMemberNumber statisticalGroupMemberNumber(@Param("groupId") Long groupId);
}
