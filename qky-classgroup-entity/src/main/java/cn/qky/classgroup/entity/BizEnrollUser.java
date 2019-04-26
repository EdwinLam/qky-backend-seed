package cn.qky.classgroup.entity;

import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 活动报名名单表，类似接龙游戏
 */
@Data
@Entity
@Table(name = "biz_enroll_user")
public class BizEnrollUser extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "分组id")
	private Long groupId;

	@Column
	@ApiModelProperty(value = "报名id")
	private Long enrollId;

	@Column
	@ApiModelProperty(value = "学生id")
	private Long studentId;

	@Column
	@ApiModelProperty(value = "用户id")
	private Long userId;

	@Column
	@ApiModelProperty(value = "用户昵称")
	private String nickName;

	@Column
	@ApiModelProperty(value = "备注")
	private String remark;

}
