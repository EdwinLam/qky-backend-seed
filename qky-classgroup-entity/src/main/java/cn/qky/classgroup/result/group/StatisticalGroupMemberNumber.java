package cn.qky.classgroup.result.group;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author: Edwin
 * @Description:
 */
@Data
public class StatisticalGroupMemberNumber {
    @ApiModelProperty(value = "分组id")
    private Long groupId;

    @ApiModelProperty(value = "分组名称")
    private String groupName;

    @ApiModelProperty(value = "群主数量")
    private String ownerNumber;

    @ApiModelProperty(value = "管理员数量")
    private String adminNumber;

    @ApiModelProperty(value = "教师数量")
    private String teacherNumber;

    @ApiModelProperty(value = "家长数量")
    private String parentNumber;

    @ApiModelProperty(value = "成员数量")
    private String memberNumber;
}
