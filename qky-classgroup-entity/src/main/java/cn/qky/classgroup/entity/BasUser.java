package cn.qky.classgroup.entity;

import com.baomidou.mybatisplus.annotations.TableField;
import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 用户基本信息
 */
@Data
@Entity
@Table(name = "bas_user")
public class BasUser extends BaseEntity {

	private static final long serialVersionUID = 1L;
	@Column
	@ApiModelProperty(value = "用户唯一标识")
	private String openid;

	@Column
	@ApiModelProperty(value = "开放平台的唯一标识符")
	private String unionid;

	@Column
	@ApiModelProperty(value = "用户昵称")
	private String nickName;

	@Column
	@ApiModelProperty(value = "用户头像，最后一个数值代表正方形头像大小（有0、46、64、96、132数值可选，0代表640*640正方形头像），用户没有头像时该项为空。若用户更换头像，原有头像URL将失效。")
	private String avatarUrl;

	@Column
	@ApiModelProperty(value = "用户的性别，值为1时是男性，值为2时是女性，值为0时是未知")
	private Integer gender;

	@Column
	@ApiModelProperty(value = "用户所在城市")
	private String city;

	@Column
	@ApiModelProperty(value = "用户所在省份")
	private String province;

	@Column
	private String country;

	@Column
	@ApiModelProperty(value = "用户绑定的手机号（国外手机号会有区号）")
	private String phoneNumber;

	@Column
	@ApiModelProperty(value = "没有区号的手机号")
	private String purePhoneNumber;

	@Column
	private String countryCode;

    @Transient
    @ApiModelProperty(value = "用户名")
    @TableField(exist=false)
    private String username;

    @Transient
    @ApiModelProperty(value = "密码")
    @TableField(exist=false)
    private String password;

	@Transient
	@ApiModelProperty(value = "分组数量")
	@TableField(exist=false)
	private Integer groupNum;

	@Transient
	@ApiModelProperty(value = "分组昵称")
	@TableField(exist=false)
	private String groupNickName;
}
