package cn.qky.classgroup.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

import java.util.List;

/**
 * @Author: Edwin
 * @Description: 报名主表
 */
@Data
@Entity
@Table(name = "biz_enroll")
public class BizEnroll extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "所属群组id")
	private Long groupId;

	@Column
	@ApiModelProperty(value = "标题")
	private String title;

	@Column
	@ApiModelProperty(value = "内容")
	private String content;

	@Column
	@ApiModelProperty(value = "报名截止时间")
	private Long endDate;

	@Column
	@ApiModelProperty(value = "已读人数")
	private Integer readNum;

	@Column
	@ApiModelProperty(value = "报名人数")
	private Integer enrollNum;

	@Column
	@ApiModelProperty(value = "报名名额,-1表示不限；")
	private Integer limitNum;

	@Column
	@ApiModelProperty(value = "创建人名称")
	private String creatorName;

	@Transient
	@ApiModelProperty(value = "附件列表")
	@TableField(exist=false)
	private List<BasAtts> basAtts;

}
