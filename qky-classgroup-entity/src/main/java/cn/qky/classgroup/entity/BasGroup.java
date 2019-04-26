package cn.qky.classgroup.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 群组表
 */
@Data
@Entity
@Table(name = "bas_group")
public class BasGroup extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "群号,9位数字构成,类似于QQ群的群号")
	private String groupCode;

	@Column
	@ApiModelProperty(value = "群组名称")
	private String groupName;

	@Column
	@ApiModelProperty(value = "手机号码")
	private String phone;

	@Column
	@ApiModelProperty(value = "通知公告")
	private String notice;

	@Column
	@ApiModelProperty(value = "群组介绍")
	private String introduce;

	@Column
	@ApiModelProperty(value = "成员人数限制,-1表示无限制（该字段用于日后增值考虑）")
	private Integer memberLimit;

	@Column
	@ApiModelProperty(value = "成员是否要审核，1：是；0：否；开启时，所加入的成员需审核后才能加入群组。")
	private Integer isNeedCheck;

	@Column
	@ApiModelProperty(value = "成员人数")
	private Integer memberNum;

	@Transient
	@ApiModelProperty(value = "是否加入")
	@TableField(exist=false)
	private Boolean joined;

}
