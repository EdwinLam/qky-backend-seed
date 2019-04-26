package cn.qky.classgroup.entity;

import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 群组与用户关系表，一个用户可以有N个群组
 */
@Data
@Entity
@Table(name = "group_user_rel")
public class GroupUserRel extends BaseEntity {

	private static final long serialVersionUID = 1L;

	@OneToOne(cascade=CascadeType.REMOVE)
	@JoinColumn(name = "groupId", referencedColumnName = "id",insertable=false,updatable=false)
	private BasGroup basGroup;

	@OneToOne(cascade=CascadeType.REMOVE)
	@JoinColumn(name = "userId", referencedColumnName = "id",insertable=false,updatable=false)
	private BasUser basUser;

	@Column
	@ApiModelProperty(value = "群组id")
	private Long groupId;

	@Column
	@ApiModelProperty(value = "用户id")
	private Long userId;

	@Column
	@ApiModelProperty(value = "用户类型(1:教师；2：家长)")
	private Integer userType;

	@Column
	@ApiModelProperty(value = "用户在群组中的身份，1：班主任（创建人) ；2：管理员；3：教师；4：家长。群组创建人默认是班主任，管理员由群主设置。")
	private Integer userIdentity;

	@Column
	@ApiModelProperty(value = "成员状态，审核不通过时，移除记录，只保留两种状态；0：待审核，1：正式成员；")
	private Integer userStatus;

	@Column
	@ApiModelProperty(value = "成员在群组中的昵称")
	private String nickName;

	@Column
	@ApiModelProperty(value = "备注，可用于用户申请加入群组时，填写的信息，用于审核依据")
	private String remark;

	@Column
	@ApiModelProperty(value = "关联学生id")
	private Long studentId;

}
