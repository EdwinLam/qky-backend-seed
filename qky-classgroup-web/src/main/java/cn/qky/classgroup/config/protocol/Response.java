package cn.qky.classgroup.config.protocol;

import cn.qky.classgroup.exception.QkyException;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;

public class Response implements Serializable {
    /**
     * 返回的响应码 为空，说明是正常返回
     */
    private Integer code;
    /**
     * 异常信息
     */
    private String message;
    /**
     * 时间
     */
    private Date timestamp;

    public Response(QkyException rippleException) {
        this.code = rippleException.getCode();
        this.message = rippleException.getMessage();
        this.timestamp = new Date();
    }

    public HashMap toMap() {
        HashMap valueMap = new HashMap();
        valueMap.put("code", this.code);
        valueMap.put("message", this.message);
        valueMap.put("timestamp", this.timestamp);
        return valueMap;
    }
}
