package cn.qky.classgroup.result;

import cn.qky.classgroup.result.group.StatisticalGroupMemberNumber;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.io.Serializable;

/**
 * @Author: Edwin
 * @Description:
 */
@Data
public class SystemUser implements Serializable {

    @ApiModelProperty(value = "用户id")
    private Long userId;

    @ApiModelProperty(value = "分组数量")
    private Integer groupNum;

    @ApiModelProperty(value = "所在分组id")
    private Long groupId;

    @ApiModelProperty(value = "是否管理员")
    private boolean admin;

    @ApiModelProperty(value = "是否拥有者")
    private boolean owner;

    @ApiModelProperty(value = "头像")
    private String avatarUrl;

    @ApiModelProperty(value = "手机号码")
    private String phoneNumber;

    @ApiModelProperty(value = "分组名称")
    private String groupName;

    @ApiModelProperty(value = "分组昵称")
    private String groupNickName;

    @ApiModelProperty(value = "所在分组公告")
    private String groupNotice;

    @ApiModelProperty(value = "所在分组code")
    private String groupCode;

    @ApiModelProperty(value = "分组数量统计")
    private StatisticalGroupMemberNumber statisticalGroupMemberNumber;
}
