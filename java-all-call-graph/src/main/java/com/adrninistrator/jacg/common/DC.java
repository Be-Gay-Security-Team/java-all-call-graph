package com.adrninistrator.jacg.common;

/**
 * @author adrninistrator
 * @date 2021/6/18
 * @description:
 */

public class DC {

    public static final String CN_FULL_NAME = "full_name";
    public static final String CN_SIMPLE_NAME = "simple_name";

    public static final String MA_METHOD_HASH = "method_hash";
    public static final String MA_ANNOTATION_NAME = "annotation_name";
    public static final String MA_FULL_METHOD = "full_method";

    public static final String MC_ID = "id";
    public static final String MC_CALL_TYPE = "call_type";
    public static final String MC_CALLER_METHOD_HASH = "caller_method_hash";
    public static final String MC_CALLER_FULL_METHOD = "caller_full_method";
    public static final String MC_CALLER_METHOD_NAME = "caller_method_name";
    public static final String MC_CALLER_FULL_CLASS_NAME = "caller_full_class_name";
    public static final String MC_CALLER_CLASS_NAME = "caller_class_name";
    public static final String MC_CALLEE_METHOD_HASH = "callee_method_hash";
    public static final String MC_CALLEE_FULL_METHOD = "callee_full_method";
    public static final String MC_CALLEE_METHOD_NAME = "callee_method_name";
    public static final String MC_CALLEE_FULL_CLASS_NAME = "callee_full_class_name";
    public static final String MC_CALLEE_CLASS_NAME = "callee_class_name";

    private DC() {
        throw new IllegalStateException("illegal");
    }
}
