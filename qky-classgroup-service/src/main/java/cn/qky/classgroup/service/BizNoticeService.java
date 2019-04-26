package cn.qky.classgroup.service;

import cn.qky.classgroup.entity.BizNotice;

/**
 * @Author Edwin
 * @Description: 通知表接口
 */
public interface BizNoticeService extends BaseService<BizNotice,Long> {
    /**
     * 添加通知
     * @param bizNotice
     * @return
     */
    boolean addBizNotice(BizNotice bizNotice,Long userId,Long groupId,String groupNickName);


    /**
     * 更新已读标志
     * @param groupId
     * @param userId
     * @param noticeId
     * @return
     */
    boolean doReadNotice(Long groupId,Long userId,Long noticeId);
}
