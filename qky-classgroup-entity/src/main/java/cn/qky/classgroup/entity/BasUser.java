package cn.qky.classgroup.entity;


import com.baomidou.mybatisplus.annotations.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @Auther: Edwin
 * @Description:
 */

@Data
@Entity
@Table(name = "bas_user")
public class BasUser extends BaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "用户唯一标识")
    @Column(unique = true, nullable = false, length = 100)
    private String openid;

    @ApiModelProperty(value = "开放平台的唯一标识符")
    @Column(unique = true, length = 100)
    private String unionid;

    @Transient
    @ApiModelProperty(value = "用户名")
    @TableField(exist=false)
    private String username;

    @Transient
    @ApiModelProperty(value = "密码")
    @TableField(exist=false)
    private String password;
}
