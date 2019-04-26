package cn.qky.classgroup.service;

import cn.qky.classgroup.entity.BasAtts;
import cn.qky.classgroup.enums.SourceCodeEnum;

import java.util.List;

/**
 * @Author Edwin
 * @Description: 附件表接口
 */
public interface BasAttsService extends BaseService<BasAtts,Long> {

     /**
      * 批量添加附件
      * @param groupId 分组id
      * @param userId 用户id
      * @param sourceCodeEnum 业务代码
      * @param sourceId 业务id
      * @param basAttsList 附件列表
      */
     void BatchAddBasAtts(Long groupId,Long userId, SourceCodeEnum sourceCodeEnum, Long sourceId, List<BasAtts> basAttsList);

     /**
      * 获取附件列表
      * @param sourceCodeEnum
      * @param sourceId
      * @return
      */
     List<BasAtts> getAtts(SourceCodeEnum sourceCodeEnum, Long sourceId);
}
