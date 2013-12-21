drop table if exists `sm_school`;
CREATE TABLE `sm_school` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`)
)
COMMENT='学校表'
ENGINE=MyISAM;

drop table if exists `sm_student`;
CREATE TABLE `sm_student` (
	`id` INT(10) UNSIGNED NOT NULL,
	`name` INT(10) UNSIGNED NOT NULL DEFAULT '0',
	`grade` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
	`class` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0',
	`entrace_date` DATETIME NULL DEFAULT NULL,
	`graduate_date` DATETIME NULL DEFAULT NULL,
	`is_graduate` TINYINT(1) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
COMMENT='学生表'
ENGINE=MyISAM;

drop table if exists `sm_score`;
CREATE TABLE `sm_score` (
	`student_id` INT(11) NOT NULL,
	`exam_id` INT(11) NOT NULL,
	`math` TINYINT(4) NULL DEFAULT NULL,
	`chinese` TINYINT(4) NULL DEFAULT NULL,
	`english` TINYINT(4) NULL DEFAULT NULL,
	`political` TINYINT(4) NULL DEFAULT NULL,
	`physics` TINYINT(4) NULL DEFAULT NULL,
	`chemistry` TINYINT(4) NULL DEFAULT NULL,
	`history` TINYINT(4) NULL DEFAULT NULL,
	`geography` TINYINT(4) NULL DEFAULT NULL,
	`biology` TINYINT(4) NULL DEFAULT NULL,
	PRIMARY KEY (`student_id`, `exam_id`)
)
COMMENT='成绩表'
ENGINE=MyISAM;

drop table if exists `sm_exam`;
CREATE TABLE `sm_exam` (
	`id` INT(11) NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`exam_date` DATETIME NOT NULL,
	`comment` VARCHAR(200) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COMMENT='考试定义表'
COLLATE='utf8_general_ci'
ENGINE=MyISAM;

drop table if exists sm_users;
create table sm_users
(
id int unsigned not null auto_increment,
mobliephone varchar(40) not null comment '手机号',
name varchar(20) not null comment '用户自己给自己起的ID',
pwd varchar(40) not null,
QQ varchar(20),
gender tinyint(1) not null comment '性别1：男，2：女,0:未知',
birth date,
job varchar(20),
province varchar(40),
city varchar(40),
primary key (id)
)ENGINE=MYISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


