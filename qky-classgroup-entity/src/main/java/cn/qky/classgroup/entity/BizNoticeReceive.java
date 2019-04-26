package cn.qky.classgroup.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

import java.util.List;

/**
 * @Author: Edwin
 * @Description: 通知接收情况表
 */
@Data
@Entity
@Table(name = "biz_notice_receive")
public class BizNoticeReceive extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "分组id")
	private Long groupId;

	@Column
	@ApiModelProperty(value = "通知的id")
	private Long noticeId;

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

	@OneToOne(cascade=CascadeType.REMOVE)
	@JoinColumn(name = "userId", referencedColumnName = "id",insertable=false,updatable=false)
	private BasUser basUser;
}
