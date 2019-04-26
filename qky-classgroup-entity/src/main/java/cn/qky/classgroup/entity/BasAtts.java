package cn.qky.classgroup.entity;

import lombok.Data;
import javax.persistence.*;
import io.swagger.annotations.ApiModelProperty;

/**
 * @Author: Edwin
 * @Description: 附件表，有于记录整个应用中各个功能模块产生的附件
 */
@Data
@Entity
@Table(name = "bas_atts")
public class BasAtts extends BaseEntity {

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
	@ApiModelProperty(value = "文件名称,用于显示")
	private String fileName;

	@Column
	@ApiModelProperty(value = "文件大小，单位是k")
	private Long fileSize;

	@Column
	@ApiModelProperty(value = "文件类型")
	private String fileType;

	@Column
	@ApiModelProperty(value = "文件访问路径")
	private String fileUrl;

	@Column
	@ApiModelProperty(value = "文件id,上传第三方文件系统时，文件标识的id")
	private String fileId;

}
