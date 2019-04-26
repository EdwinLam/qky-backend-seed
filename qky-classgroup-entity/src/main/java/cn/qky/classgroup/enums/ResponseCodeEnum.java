package cn.qky.classgroup.enums;

/**
 * 服务器响应code
 */
public enum ResponseCodeEnum {
    SUCCESS(0, "成功"),
    SYSTEM_ERROR(1001, "系统错误"),
    ACCESS_DENY(1002, "没有权限访问"),
    BUSINESS_ERROR(1003, "业务错误"),
    TOKEN_TIME_OUT(1004, "token超时");

    private final Integer value;
    private final String name;
    ResponseCodeEnum(Integer value, String name) {
        this.value = value;
        this.name = name;
    }

    public Integer getValue() {
        return value;
    }

    public String getName() {
        return name;
    }
}
