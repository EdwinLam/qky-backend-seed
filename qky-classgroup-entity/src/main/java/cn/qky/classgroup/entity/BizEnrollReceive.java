package cn.qky.classgroup.entity;

import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 通知接收情况表
 */
@Data
@Entity
@Table(name = "biz_enroll_receive")
public class BizEnrollReceive extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "分组id")
	private Long groupId;

	@Column
	@ApiModelProperty(value = "报名的id")
	private Long enrollId;

	@Column
	@ApiModelProperty(value = "接收人id ，用户表中的用户id")
	private Long userId;

	@Column
	@ApiModelProperty(value = "接收人在群昵称（冗余字段）")
	private String nickName;

	@Column
	@ApiModelProperty(value = "阅读状态（0：未读；1：已读)")
	private Integer readStatus;

	@Column
	@ApiModelProperty(value = "阅读时间")
	private Long readDate;

}
