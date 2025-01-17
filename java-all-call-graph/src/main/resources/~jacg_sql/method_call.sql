CREATE TABLE if not exists method_call_{appName} (
  id integer(18) NOT NULL COMMENT '序号',
  call_type varchar(10) NOT NULL COMMENT '调用类型',
  caller_method_hash varchar(30) NOT NULL COMMENT '调用方，方法hash+字节数',
  caller_full_method varchar(767) NOT NULL COMMENT '调用方，完整方法（类名+方法名+参数）',
  caller_method_name varchar(100) NOT NULL COMMENT '调用方，方法名',
  caller_full_class_name varchar(100) NOT NULL COMMENT '调用方，类名全名',
  caller_class_name varchar(100) NOT NULL COMMENT '调用方，类名（全名或简单类名）',
  callee_method_hash varchar(30) NOT NULL COMMENT '被调用方，方法hash+字节数',
  callee_full_method varchar(767) NOT NULL COMMENT '被调用方，完整方法（类名+方法名+参数）',
  callee_method_name varchar(100) NOT NULL COMMENT '被调用方，方法名',
  callee_full_class_name varchar(100) NOT NULL COMMENT '被调用方，类名全名',
  callee_class_name varchar(100) NOT NULL COMMENT '被调用方，类名（全名或简单类名）',
  PRIMARY KEY (id),
  INDEX idx_mc_caller_method_hash(caller_method_hash),
  INDEX idx_mc_callee_method_hash(callee_method_hash, caller_method_hash),
  INDEX idx_mc_caller_simple_name(caller_class_name),
  INDEX idx_mc_callee_simple_name(callee_class_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='方法调用关系表';