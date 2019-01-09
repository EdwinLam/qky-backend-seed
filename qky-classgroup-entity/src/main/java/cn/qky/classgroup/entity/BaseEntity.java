package cn.qky.classgroup.entity;


import cn.qky.classgroup.enums.DataStatusEnum;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @Author: Edwin
 * @Description: 基础实体类
 */
@Data
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties(value = {"hibernateLazyInitializer", "handler", "fieldHandler"})
public abstract class BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @ApiModelProperty(value = "唯一标识")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @ApiModelProperty(value = "创建者")
    private String creator;

    @CreatedDate
    @ApiModelProperty(value = "创建时间")
    private Long createDate;

    @ApiModelProperty(value = "更新者")
    private String lastModifier;

    @LastModifiedDate
    @ApiModelProperty(value = "更新时间")
    private Long lastModDate;

    @ApiModelProperty(value = "状态 0-启用，1-停用")
    private Integer status = DataStatusEnum.ENABLED.getValue();
}
