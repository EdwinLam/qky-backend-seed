package cn.qky.classgroup.enums;

/**
 * @Auther: Edwin
 * @Description:
 */
public enum DataStatusEnum {
    ENABLED(0, "启用"),
    /**
     * 不启用
     */
    DISABLED(1, "不启用");

    private final int value;
    private final String name;
    /**
     * 由一个值和名称实例化对象
     *
     * @param value
     * @param name
     */
    DataStatusEnum(int value, String name) {
        this.value = value;
        this.name = name;
    }

    /**
     * 取得枚举的值
     *
     * @return
     */
    public int getValue() {
        return value;
    }

    /**
     * 取得枚举的名称
     *
     * @return
     */
    public String getName() {
        return name;
    }


}
