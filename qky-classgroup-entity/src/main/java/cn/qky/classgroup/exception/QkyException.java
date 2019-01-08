package cn.qky.classgroup.exception;

import cn.qky.classgroup.enums.ResponseCodeEnum;
import lombok.Data;

@Data
public class QkyException extends RuntimeException {

    private String message;
    private Integer code = ResponseCodeEnum.BUSINESS_ERROR.getValue();

    public QkyException(String message) {
        super(message);
        this.message = message;
    }

    public QkyException(Integer code, String msg) {
        super(msg);
        this.message = msg;
        this.code = code;
    }

    public QkyException(ResponseCodeEnum responseCodeEnum) {
        super(responseCodeEnum.getName());
        this.message = responseCodeEnum.getName();
        this.code = responseCodeEnum.getValue();
    }

    public QkyException(ResponseCodeEnum responseCodeEnum, String message) {
        super(responseCodeEnum.getName());
        this.message = message;
        this.code = responseCodeEnum.getValue();
    }
}
