package cn.qky.classgroup.entity;

import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 消息总表
 */
@Data
@Entity
@Table(name = "biz_message")
public class BizMessage extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "所属群组id")
	private Long groupId;

	@Column
	@ApiModelProperty(value = "所属业务表id")
	private Long sourceId;

	@Column
	@ApiModelProperty(value = "来源标识编码,通常是sourceId所对应的表名，如biz_notice表示通知；biz_enroll表示报名；")
	private String sourceCode;

	@Column
	@ApiModelProperty(value = "消息名称")
	private String messageTitle;

	@Column
	@ApiModelProperty(value = "消息内容")
	private String messageContent;

	@Column
	@ApiModelProperty(value = "创建者名称")
	private String creatorName;

}
