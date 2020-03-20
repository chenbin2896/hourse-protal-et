CREATE TABLE tb_student (
  id bigint(255) NOT NULL COMMENT '编号',
  username varchar(255) NOT NULL COMMENT '用户名',
  password varchar(255) DEFAULT NULL COMMENT '密码',
  name varchar(255) DEFAULT NULL COMMENT '姓名',
  sex varchar(255) DEFAULT NULL COMMENT '性别',
  birthday varchar(255) DEFAULT NULL COMMENT '出生日期',
  idcard varchar(255) DEFAULT NULL COMMENT '身份证号',
  contact varchar(255) DEFAULT NULL COMMENT '联系方式',
  address varchar(255) DEFAULT NULL COMMENT '住址',
  location varchar(255) DEFAULT NULL COMMENT '籍贯',
  register varchar(255) DEFAULT NULL COMMENT '报名时间',
  course varchar(255) DEFAULT NULL COMMENT '培训方向',
  level varchar(255) DEFAULT NULL COMMENT '培训班期',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  job varchar(255) DEFAULT NULL COMMENT '是否就业',
  teacherid varchar(255) DEFAULT NULL COMMENT '讲师编号',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学员信息';

CREATE TABLE tb_teacher (
  id bigint(255) NOT NULL COMMENT '编号',
  username varchar(255) NOT NULL COMMENT '用户名',
  password varchar(255) DEFAULT NULL COMMENT '密码',
  name varchar(255) DEFAULT NULL COMMENT '姓名',
  sex varchar(255) DEFAULT NULL COMMENT '性别',
  birthday varchar(255) DEFAULT NULL COMMENT '出生日期',
  idcard varchar(255) DEFAULT NULL COMMENT '身份证号',
  contact varchar(255) DEFAULT NULL COMMENT '联系方式',
  address varchar(255) DEFAULT NULL COMMENT '住址',
  location varchar(255) DEFAULT NULL COMMENT '籍贯',
  register varchar(255) DEFAULT NULL COMMENT '入职时间',
  salary varchar(255) DEFAULT NULL COMMENT '薪资',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  work varchar(255) DEFAULT NULL COMMENT '是否在职',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='讲师信息';

CREATE TABLE tb_course (
  id bigint(255) NOT NULL COMMENT '编号',
  course_name varchar(255) NOT NULL COMMENT '课程名称',
  fee varchar(255) DEFAULT NULL COMMENT '学费',
  course_outline varchar(255) DEFAULT NULL COMMENT '课程大纲',
  period varchar(255) DEFAULT NULL COMMENT '学时',
  course_type varchar(255) DEFAULT NULL COMMENT '上课方式',
  add_time varchar(255) DEFAULT NULL COMMENT '添加时间',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='课程信息';

CREATE TABLE tb_studentcourse (
  id bigint(255) NOT NULL COMMENT '编号',
  student_id varchar(255) NOT NULL COMMENT '学员编号',
  course_id varchar(255) DEFAULT NULL COMMENT '课程编号',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学员课表';

CREATE TABLE tb_check (
  id bigint(255) NOT NULL COMMENT '编号',
  student_id varchar(255) NOT NULL COMMENT '学员编号',
  course_id varchar(255) DEFAULT NULL COMMENT '课程编号',
  learning varchar(255) DEFAULT NULL COMMENT '打卡时间',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='考勤信息';

CREATE TABLE tb_evaluate (
  id bigint(255) NOT NULL COMMENT '编号',
  student_id varchar(255) NOT NULL COMMENT '学员编号',
  teacher_id varchar(255) DEFAULT NULL COMMENT '讲师编号',
  course_id varchar(255) DEFAULT NULL COMMENT '课程编号',
  evaluate varchar(255) DEFAULT NULL COMMENT '评价内容',
  evaluate_time varchar(255) DEFAULT NULL COMMENT '评价时间',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='教师评价';

CREATE TABLE tb_fee (
  id bigint(255) NOT NULL COMMENT '编号',
  student_id varchar(255) NOT NULL COMMENT '学员编号',
  fee varchar(255) DEFAULT NULL COMMENT '学费',
  course_id varchar(255) DEFAULT NULL COMMENT '课程编号',
  status varchar(255) DEFAULT NULL COMMENT '缴费状态',
  pay_type varchar(255) DEFAULT NULL COMMENT '支付方式',
  pay_time varchar(255) DEFAULT NULL COMMENT '支付时间',
  payee varchar(255) DEFAULT NULL COMMENT '收款方',
  contact varchar(255) DEFAULT NULL COMMENT '联系方式',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='费用信息';

CREATE TABLE tb_teachercourse (
  id bigint(255) NOT NULL COMMENT '编号',
  course_id varchar(255) DEFAULT NULL COMMENT '课程编号',
  status varchar(255) DEFAULT NULL COMMENT '讲师编号',
  pay_type varchar(255) DEFAULT NULL COMMENT '班期',
  pay_time varchar(255) DEFAULT NULL COMMENT '开班状态',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='讲师课表';

CREATE TABLE tb_notice (
  id bigint(255) NOT NULL COMMENT '编号',
  course_id varchar(255) DEFAULT NULL COMMENT '公告内容',
  status varchar(255) DEFAULT NULL COMMENT '发布者',
  pay_type varchar(255) DEFAULT NULL COMMENT '发布时间',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统公告';

CREATE TABLE tb_fund (
  id bigint(255) NOT NULL COMMENT '编号',
  income varchar(255) DEFAULT NULL COMMENT '收入',
  expend varchar(255) DEFAULT NULL COMMENT '支出',
  create_time varchar(255) DEFAULT NULL COMMENT '创建时间',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资金流动';

CREATE TABLE tb_message (
  id bigint(255) NOT NULL COMMENT '编号',
  comment varchar(255) DEFAULT NULL COMMENT '发布内容',
  username varchar(255) DEFAULT NULL COMMENT '用户名',
  publish_time varchar(255) DEFAULT NULL COMMENT '发布时间',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生留言';

CREATE TABLE tb_adminfund (
  id bigint(255) NOT NULL COMMENT '编号',
  username varchar(255) NOT NULL COMMENT '用户名',
  password varchar(255) DEFAULT NULL COMMENT '密码',
  name varchar(255) DEFAULT NULL COMMENT '姓名',
  sex varchar(255) DEFAULT NULL COMMENT '性别',
  birthday varchar(255) DEFAULT NULL COMMENT '出生日期',
  idcard varchar(255) DEFAULT NULL COMMENT '身份证号',
  contact varchar(255) DEFAULT NULL COMMENT '联系方式',
  address varchar(255) DEFAULT NULL COMMENT '住址',
  location varchar(255) DEFAULT NULL COMMENT '籍贯',
  register varchar(255) DEFAULT NULL COMMENT '入职时间',
  salary varchar(255) DEFAULT NULL COMMENT '薪资',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  work varchar(255) DEFAULT NULL COMMENT '是否在职',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='财务管理员';

CREATE TABLE tb_adminsystem (
  id bigint(255) NOT NULL COMMENT '编号',
  username varchar(255) NOT NULL COMMENT '用户名',
  password varchar(255) DEFAULT NULL COMMENT '密码',
  name varchar(255) DEFAULT NULL COMMENT '姓名',
  sex varchar(255) DEFAULT NULL COMMENT '性别',
  birthday varchar(255) DEFAULT NULL COMMENT '出生日期',
  idcard varchar(255) DEFAULT NULL COMMENT '身份证号',
  contact varchar(255) DEFAULT NULL COMMENT '联系方式',
  address varchar(255) DEFAULT NULL COMMENT '住址',
  location varchar(255) DEFAULT NULL COMMENT '籍贯',
  register varchar(255) DEFAULT NULL COMMENT '入职时间',
  salary varchar(255) DEFAULT NULL COMMENT '薪资',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  work varchar(255) DEFAULT NULL COMMENT '是否在职',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统管理员';

CREATE TABLE tb_adminmaster (
  id bigint(255) NOT NULL COMMENT '编号',
  username varchar(255) NOT NULL COMMENT '用户名',
  password varchar(255) DEFAULT NULL COMMENT '密码',
  name varchar(255) DEFAULT NULL COMMENT '姓名',
  sex varchar(255) DEFAULT NULL COMMENT '性别',
  birthday varchar(255) DEFAULT NULL COMMENT '出生日期',
  idcard varchar(255) DEFAULT NULL COMMENT '身份证号',
  contact varchar(255) DEFAULT NULL COMMENT '联系方式',
  address varchar(255) DEFAULT NULL COMMENT '住址',
  location varchar(255) DEFAULT NULL COMMENT '籍贯',
  register varchar(255) DEFAULT NULL COMMENT '入职时间',
  salary varchar(255) DEFAULT NULL COMMENT '薪资',
  status varchar(255) DEFAULT NULL COMMENT '状态',
  work varchar(255) DEFAULT NULL COMMENT '是否在职',
  remark varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='校长信息';
