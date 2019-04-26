package cn.qky.classgroup.vo;

import cn.qky.classgroup.vo.PageVo;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @Author: Edwin
 * @Description:
 */
@Data
public class QueryByGroupIdVo extends PageVo {

    @ApiModelProperty(value = "分组id")
    private Long groupId;

}
