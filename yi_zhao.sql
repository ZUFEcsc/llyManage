/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : yi_zhao

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2021-04-21 19:36:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clock_in_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `clock_in_evaluate`;
CREATE TABLE `clock_in_evaluate` (
  `number` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `evaluate_time` date DEFAULT NULL,
  `clock_in_days` varchar(255) DEFAULT NULL,
  `leave_withreason_days` varchar(255) DEFAULT NULL,
  `delay_days` varchar(255) DEFAULT NULL,
  `leave_inadvance_days` varchar(255) DEFAULT NULL,
  `leave_noreason_days` varchar(255) DEFAULT NULL,
  `evaluate_people` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clock_in_evaluate
-- ----------------------------
INSERT INTO `clock_in_evaluate` VALUES ('SZ001F0001', '张琪', '普通员工', '2021-04-20', '25', '1', '1', '1', '2', '王畅畅', '');

-- ----------------------------
-- Table structure for company_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `company_basic_info`;
CREATE TABLE `company_basic_info` (
  `company_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `of_kind` varchar(50) CHARACTER SET utf8 NOT NULL,
  `establish_time` date NOT NULL,
  `quali_state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`company_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_basic_info
-- ----------------------------
INSERT INTO `company_basic_info` VALUES ('AH001F', '安徽阿里', 'IT/互联网', '2020-08-14', '已创建账号');
INSERT INTO `company_basic_info` VALUES ('BJ001F', '北京阿里', '教育', '2015-06-19', '已通过认证');
INSERT INTO `company_basic_info` VALUES ('FJ001F', '福建阿里', '保险', '2019-06-27', '未通过认证');
INSERT INTO `company_basic_info` VALUES ('GD001F', '广东阿里', '广告业', '2014-06-11', '已通过认证');
INSERT INTO `company_basic_info` VALUES ('HB001F', '河北阿里', '服装业', '2010-07-22', '未通过认证');
INSERT INTO `company_basic_info` VALUES ('HN001F', '湖南阿里', 'IT/互联网', '2006-07-27', '已创建账号');
INSERT INTO `company_basic_info` VALUES ('SC001F', '四川阿里', 'IT/互联网', '2019-07-27', '已创建账号');
INSERT INTO `company_basic_info` VALUES ('SH001F', ' 上海阿里', 'IT/互联网', '2014-06-03', '已通过认证');
INSERT INTO `company_basic_info` VALUES ('SZ001F', '深圳阿里', 'IT/教育', '2009-07-12', '已创建账号');

-- ----------------------------
-- Table structure for company_project_info
-- ----------------------------
DROP TABLE IF EXISTS `company_project_info`;
CREATE TABLE `company_project_info` (
  `project_number` varchar(255) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_member` varchar(255) DEFAULT NULL,
  `company_number` varchar(255) NOT NULL,
  `project_responser` varchar(255) DEFAULT NULL,
  `project_content` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `evaluate_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`project_number`,`company_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company_project_info
-- ----------------------------
INSERT INTO `company_project_info` VALUES ('SZ001F001', '运动app', '张琪，王光', 'SZ001F', '张雨佳', '研发一款运动app', '2020-01-01', null, '1', '待评价');
INSERT INTO `company_project_info` VALUES ('SZ001F002', '饮食app', '张琪，张培', 'SZ001F', '张雨佳', '研发一款饮食app', '2019-02-03', '2020-01-01', '2', '已评价');
INSERT INTO `company_project_info` VALUES ('SZ001F003', '学习app', '张培，王光', 'SZ001F', '张雨佳', '研发一款学习app', '2020-03-03', null, '1', '已评价');
INSERT INTO `company_project_info` VALUES ('SZ001F004', '运动系统', '张琪。王光', 'SZ001F', '张雨佳', '研发一个运动系统', '2020-01-01', null, '1', '待评价');
INSERT INTO `company_project_info` VALUES ('SZ001F005', '饮食系统', '张琪。张培', 'SZ001F', '张雨佳', '研发一个饮食系统', '2020-01-01', null, '1', '待评价');
INSERT INTO `company_project_info` VALUES ('SZ001F006', '学习系统', '张培，王光', 'SZ001F', '张雨佳', '研发一个学习系统', '2019-03-04', null, '1', '待评价');
INSERT INTO `company_project_info` VALUES ('SZ001F007', '玩耍app', '王光', 'SZ001F', '张雨佳', '研发一款玩耍app', '2020-07-06', null, '1', '待评价');

-- ----------------------------
-- Table structure for company_seek_info
-- ----------------------------
DROP TABLE IF EXISTS `company_seek_info`;
CREATE TABLE `company_seek_info` (
  `seek_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `company_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `company_position` varchar(50) CHARACTER SET utf8 NOT NULL,
  `seek_position` varchar(50) CHARACTER SET utf8 NOT NULL,
  `seek_count` int(11) NOT NULL,
  `qualification_requirement` varchar(50) CHARACTER SET utf8 NOT NULL,
  `work_experience_requirement` varchar(50) CHARACTER SET utf8 NOT NULL,
  `salary` varchar(50) NOT NULL,
  `deliver_time` date NOT NULL,
  `state` varchar(50) CHARACTER SET utf8 NOT NULL,
  `advantage` varchar(50) CHARACTER SET utf8 NOT NULL,
  `apply` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`seek_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_seek_info
-- ----------------------------
INSERT INTO `company_seek_info` VALUES ('SZ10001', 'AH001F', '上海', '项目经理', '1', '博士', '有过相关工作经验', '2w-4w', '2020-07-23', '1', '五险一金，双休', '2');
INSERT INTO `company_seek_info` VALUES ('SZ100010', 'BJ001F', '福建', '普通员工', '2', '本科以上', '不限', '3k-5.5k', '2020-12-01', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ100011', 'FJ001F', '上海', '普通员工', '2', '本科以上', '不限', '1w-2w', '2020-11-12', '1', '五险一金', '1');
INSERT INTO `company_seek_info` VALUES ('SZ100012', 'FJ001F', '北京', '普通员工', '1', '本科以上', '不限', '1w-3w', '2019-12-30', '1', '五险一金', '1');
INSERT INTO `company_seek_info` VALUES ('SZ100013', 'FJ001F', '深圳', '项目经理', '1', '博士', '担任过主管以上职位', '3w-6w', '2020-09-23', '1', '五险一金', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10002', 'AH001F', '北京', '项目经理', '1', '博士', '有过相关经验', '2w-4w', '2020-05-30', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10003', 'AH001F', '安徽', '项目经理', '1', '博士', '有过相关工作经验', '2w-4w', '2020-08-23', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10004', 'AH001F', '深圳', '部门主管', '2', '硕士以上', '有过相关工作经验', '3w-4.5w', '2020-11-24', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10005', 'AH001F', '湖南', '普通员工', '1', '本科以上', '不限', '1w-3w', '2020-06-13', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10006', 'BJ001F', '上海', '部门主管', '1', '硕士以上', '有过相关工作经验', '2k-3.5k', '2020-11-12', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10007', 'BJ001F', '北京', '项目经理', '1', '博士', '有过相关工作经验', '1w-2w', '2021-03-01', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10008', 'BJ001F', '厦门', '部门主管', '2', '硕士以上', '有过相关工作经验', '1.5w-3w', '2021-01-06', '2', '五险一金，单休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ10009', 'BJ001F', '深圳', '普通员工', '2', '本科以上', '不限', '7k-9k', '2021-03-17', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ11001', 'FJ001F', '福建', '普通员工', '3', '本科以上', '不限', '8k-2w', '2020-10-12', '1', '五险一金', '1');
INSERT INTO `company_seek_info` VALUES ('SZ11002', 'HN001F', '上海', '部门主管', '2', '硕士以上', '有过相关工作经验', '2w-4w', '2020-11-11', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ11003', 'HN001F', '北京', '部门主管', '1', '硕士以上', '有过相关工作经验', '2w-4w', '2020-11-13', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ11004', 'HN001F', '深圳', '办公室主任', '1', '硕士以上', '有过相关工作经验', '2w-4w', '2020-04-21', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ12001', 'HN001F', '湖北', '办公室主任', '2', '硕士以上', '有过相关工作经验', '2w-3w', '2019-02-21', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ12002', 'HN001F', '湖南', '办公室主任', '1', '硕士以上', '有过相关工作经验', '2w-4w', '2020-03-21', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ12003', 'SC001F', '上海', '普通员工', '1', '本科以上', '不限', '2w-3w', '2020-01-01', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ12004', 'SC001F', '北京', '办公室主任', '2', '硕士以上', '有过相关工作经验', '2w-3w', '2020-02-02', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ12005', 'SC001F', '四川', '普通员工', '1', '本科以上', '不限', '2w-3w', '2020-01-01', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ12006', 'SC001F', '广州', '部门主管', '1', '硕士以上', '有过相关工作经验', '3w-4w', '2019-12-12', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ14001', 'SC001F', '深圳', '办公室主任', '2', '硕士以上', '有过相关工作经验', '2w-3w', '2020-03-04', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ14002', 'SH001F', '上海', '普通员工', '2', '本科以上', '不限', '1w-2w', '2020-08-08', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ14003', 'SH001F', '北京', '普通员工', '2', '本科以上', '不限', '2w-3w', '2020-09-09', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ17001', 'SH001F', '广州', '部门主管', '1', '硕士以上', '有过相关工作经验', '2w-3.5w', '2020-04-04', '1', '五险一金，单休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ17002', 'SH001F', '深圳', '普通员工', '1', '本科以上', '不限', '1w-2w', '2020-03-03', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ18001', 'SH001F', '湖北', '部门主管', '1', '硕士以上', '有过相关工作经验', '2w-4w', '2020-03-23', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ18002', 'SH001F', '湖南', '部门主管', '1', '硕士以上', '有过相关工作经验', '2w-4w', '2021-01-02', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ18003', 'SZ001F', '上海', '项目经理', '4', '博士', '有过相关工作经验', '2w-3w', '2020-10-11', '2', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ19001', 'SZ001F', '北京', '部门主管', '4', '硕士以上', '有过相关工作经验', '2w-3w', '2020-11-11', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ20001', 'SZ001F', '深圳', '项目经理', '5', '博士', '有过相关工作经验', '2w-3w', '2021-02-10', '1', '五险一金，双休', '1');
INSERT INTO `company_seek_info` VALUES ('SZ21001', 'SZ001F', '深圳', '部门主管', '5', '硕士以上', '有过相关工作经验', '2w-3w', '2020-12-12', '1', '五险一金，双休', '1');

-- ----------------------------
-- Table structure for company_username_info
-- ----------------------------
DROP TABLE IF EXISTS `company_username_info`;
CREATE TABLE `company_username_info` (
  `number` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `identity_card` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `position_kind` varchar(11) NOT NULL,
  `company_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`identity_card`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of company_username_info
-- ----------------------------
INSERT INTO `company_username_info` VALUES ('HN001F0001', '张小倩', '3300001', '女', '22', '20041011', '111', '2', 'HN001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0001', '王聪', '3300002', '男', '23', '20041012', '111', '1', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('SH001F0001', '叶子舒', '3300004', '女', '33', '20041013', '111', '2', 'SH001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0002', '张潇潇', '3300007', '女', '22', '20041014', '111', '2', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('FJ001F0001', '刘广', '3300008', '男', '34', '20041015', '111', '1', 'FJ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0001', '张琪', '3300009', '女', '27', '20041016', '111', '1', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0002', '张培', '3300010', '男', '29', '20041017', '111', '1', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('GD001F0001', '刘琦', '3300011', '女', '30', '20041018', '111', '2', 'GD001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0003', '王晓晓', '3300012', '女', '32', '20050221', '111', '3', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('HB001F0001', '赵亮', '3300013', '男', '34', '20050222', '111', '2', 'HB001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0004', '刘子辉', '3300014', '男', '33', '20050223', '111', '4', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0005', '赵恰', '3300016', '女', '25', '20050224', '111', '1', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0003', '王光', '3300017', '男', '34', '20050225', '111', '1', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('FJ001F0002', '王子山', '3300018', '男', '35', '20061012', '111', '3', 'FJ001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0006', '王月月', '3300020', '女', '29', '20060120', '111', '1', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('FJ001F0003', '刘云', '3300021', '女', '34', '20061030', '111', '4', 'FJ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0004', '赵子龙', '3300022', '男', '33', 'useru', '111', '1', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0005', '王畅畅', '3300023', '男', '23', 'userd', '111', '2', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0006', '王颖', '3300024', '女', '22', 'usero', '111', '4', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0007', '赵章', '3300025', '男', '22', '20070423', '111', '1', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0008', '刘雨辰', '3300026', '男', '22', '20081009', '111', '1', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0007', '张雨佳', '3300027', '女', '23', 'userp', '111', '3', 'SZ001F');
INSERT INTO `company_username_info` VALUES ('FJ001F0004', '王玉杰', '3300028', '男', '27', '20081011', '111', '1', 'FJ001F');
INSERT INTO `company_username_info` VALUES ('FJ001F0005', '王乾坤', '3300029', '男', '22', '20080618', '111', '1', 'FJ001F');
INSERT INTO `company_username_info` VALUES ('FJ001F0006', '王子', '3300030', '男', '21', '20080619', '111', '1', 'FJ001F');
INSERT INTO `company_username_info` VALUES ('BJ001F0009', '赵丽', '3300031', '女', '34', '20090115', '111', '1', 'BJ001F');
INSERT INTO `company_username_info` VALUES ('SZ001F0008', '王汪', '3300100', '男', '22', 'userh', '111', '5', 'SZ001F');

-- ----------------------------
-- Table structure for department_manager_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `department_manager_evaluate`;
CREATE TABLE `department_manager_evaluate` (
  `number` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `evaluate_time` date DEFAULT NULL,
  `work_ability` varchar(255) DEFAULT NULL,
  `work_efficiency` varchar(255) DEFAULT NULL,
  `develop_potential` varchar(255) DEFAULT NULL,
  `communicate_ability` varchar(255) DEFAULT NULL,
  `satisfy_degree` varchar(255) DEFAULT NULL,
  `evaluate_people` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_manager_evaluate
-- ----------------------------
INSERT INTO `department_manager_evaluate` VALUES ('SZ001F0001', '张琪', '普通员工', '2021-04-20', '优秀', '优秀', '优秀', '优秀', '优秀', '王颖', null);

-- ----------------------------
-- Table structure for grade-evaluate
-- ----------------------------
DROP TABLE IF EXISTS `grade-evaluate`;
CREATE TABLE `grade-evaluate` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `identity-card` varchar(50) CHARACTER SET utf8 NOT NULL,
  `company-number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `evaluate-people-name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `project-name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `project-charater` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `start-time` date DEFAULT NULL,
  `end-time` date DEFAULT NULL,
  `project-evaluate-content` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `other` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`identity-card`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of grade-evaluate
-- ----------------------------
INSERT INTO `grade-evaluate` VALUES ('王聪', '3300002', 'BJ001F', '王晓晓', '易zhao', '负责人', '2017-01-01', '2017-12-12', '领导能力强', null);
INSERT INTO `grade-evaluate` VALUES ('刘广', '3300008', 'FJ001F', '刘勇', '易说', '负责人', '2016-04-03', '2017-06-06', '领导能力强', null);
INSERT INTO `grade-evaluate` VALUES ('张琪', '3300009', 'SZ001F', '叶倩文', '易说', '成员', '2016-04-03', '2017-06-06', '认真负责', null);
INSERT INTO `grade-evaluate` VALUES ('张培', '3300010', 'SZ001F', '叶倩文', '易搬', '负责人', '2017-01-01', '2017-05-05', '领导能力强', null);
INSERT INTO `grade-evaluate` VALUES ('赵恰', '3300016', 'BJ001F', '王晓晓', '易zhao', '成员', '2017-01-01', '2017-12-12', '认真负责', null);
INSERT INTO `grade-evaluate` VALUES ('王光', '3300017', 'SZ001F', '张亮', '易搬', '技术人员', '2017-01-01', '2017-05-05', '能力强', null);
INSERT INTO `grade-evaluate` VALUES ('王月月', '3300020', 'BJ001F', '王晓晓', '易zhao', '成员', '2017-01-01', '2017-12-12', '认真负责', null);
INSERT INTO `grade-evaluate` VALUES ('赵子龙', '3300022', 'SZ001F', '张雨佳', '易搬', '销售人员', '2017-01-01', '2017-05-05', '销售状况较好', null);
INSERT INTO `grade-evaluate` VALUES ('赵章', '3300025', 'BJ001F', '王晓晓', '易zhao', '负责人', '2017-01-01', '2017-12-12', '领导能力强', null);
INSERT INTO `grade-evaluate` VALUES ('刘雨辰', '3300026', 'BJ001F', '王晓晓', '易zhao', '技术人员', '2017-01-01', '2017-12-12', '能力强', null);
INSERT INTO `grade-evaluate` VALUES ('王玉杰', '3300028', 'FJ001F', '刘勇', '易说', '技术人员', '2016-04-03', '2017-06-06', '能力强', null);
INSERT INTO `grade-evaluate` VALUES ('王乾坤', '3300029', 'FJ001F', '刘勇', '易说', '销售人员', '2016-04-03', '2017-06-06', '销售状况较好', null);
INSERT INTO `grade-evaluate` VALUES ('王子', '3300030', 'FJ001F', '王子山', '易说', '销售人员', '2016-04-03', '2017-06-06', '销售状况较好', null);
INSERT INTO `grade-evaluate` VALUES ('赵丽', '3300031', 'BJ001F', '王晓晓', '易zhao', '销售人员', '2017-01-01', '2017-12-12', '销售状况较好', null);

-- ----------------------------
-- Table structure for hr-evaluate
-- ----------------------------
DROP TABLE IF EXISTS `hr-evaluate`;
CREATE TABLE `hr-evaluate` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `identity-card` varchar(50) CHARACTER SET utf8 NOT NULL,
  `company-number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `evaluate-time` date DEFAULT NULL,
  `evaluate-people` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `evaluate-content` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`identity-card`,`company-number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hr-evaluate
-- ----------------------------
INSERT INTO `hr-evaluate` VALUES ('张小倩', '3300001', 'HN001F', '2021-02-02', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王聪', '3300002', 'BJ001F', '2020-08-09', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('赵华光', '3300003', 'AH001F', '2021-03-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('叶子舒', '3300004', 'SH001F', '2020-06-13', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('刘勇', '3300005', 'FJ001F', '2021-03-21', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('叶倩文', '3300006', 'SZ001F', '2021-03-04', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('张潇潇', '3300007', 'BJ001F', '2020-02-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('刘广', '3300008', 'FJ001F', '2020-07-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('张琪', '3300009', 'SZ001F', '2020-05-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('张培', '3300010', 'SZ001F', '2020-07-17', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('刘琦', '3300011', 'GD001F', '2020-06-11', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王晓晓', '3300012', 'BJ001F', '2020-05-14', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('赵亮', '3300013', 'HB001F', '2020-07-18', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('刘子辉', '3300014', 'BJ001F', '2020-10-09', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('张亮', '3300015', 'SZ001F', '2021-01-07', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('赵恰', '3300016', 'BJ001F', '2020-10-23', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王光', '3300017', 'SZ001F', '2019-07-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王子山', '3300018', 'FJ001F', '2018-07-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王光磊', '3300019', 'FJ001F', '2021-03-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王月月', '3300020', 'BJ001F', '2020-07-16', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('刘云', '3300021', 'FJ001F', '2019-11-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('赵子龙', '3300022', 'SZ001F', '2020-06-26', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王畅畅', '3300023', 'SZ001F', '2019-06-28', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王颖', '3300024', 'SZ001F', '2013-10-26', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('赵章', '3300025', 'BJ001F', '2020-06-11', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('刘雨辰', '3300026', 'BJ001F', '2021-03-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('张雨佳', '3300027', 'SZ001F', '2021-02-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王玉杰', '3300028', 'FJ001F', '2019-11-23', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王乾坤', '3300029', 'FJ001F', '2019-07-21', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('王子', '3300030', 'FJ001F', '2020-06-22', null, '较好');
INSERT INTO `hr-evaluate` VALUES ('赵丽', '3300031', 'BJ001F', '2019-11-13', null, '较好');

-- ----------------------------
-- Table structure for important_mistake_evaluate
-- ----------------------------
DROP TABLE IF EXISTS `important_mistake_evaluate`;
CREATE TABLE `important_mistake_evaluate` (
  `number` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `evaluate_time` date DEFAULT NULL,
  `evaluate_people` varchar(255) DEFAULT NULL,
  `mistake_kind` varchar(255) DEFAULT NULL,
  `mistake_description` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of important_mistake_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for job_seeking
-- ----------------------------
DROP TABLE IF EXISTS `job_seeking`;
CREATE TABLE `job_seeking` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `identity_card` varchar(50) CHARACTER SET utf8 NOT NULL,
  `seek_time` date DEFAULT NULL,
  `company_number` varchar(50) CHARACTER SET utf8 NOT NULL,
  `state` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `position_kind` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `main_achievement` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `company_position` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`identity_card`,`company_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of job_seeking
-- ----------------------------
INSERT INTO `job_seeking` VALUES ('王磊', '2300001', '2020-12-29', 'BJ001F', '1000', '部门主管', '', '上海');
INSERT INTO `job_seeking` VALUES ('张大倩', '2300002', '2020-12-12', 'BJ001F', '1000', '部门主管', '', '上海');
INSERT INTO `job_seeking` VALUES ('赵子树', '2300003', '2020-11-11', 'SZ001F', '1100', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('刘研', '2300004', '2020-10-10', 'FJ001F', '1100', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('叶恒', '2300005', '2020-11-11', 'FJ001F', '1110', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('张文文', '2300006', '2020-10-10', 'BJ001F', '1100', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('张大大', '2300007', '2019-12-12', 'HN001F', '1000', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('刘里', '2300008', '2020-02-03', 'FJ001F', '1111', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('张子', '2300009', '2020-01-03', 'AH001F', '1111', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('张紫', '2300010', '2020-08-09', 'HN001F', '1000', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王撤', '2300011', '2020-07-07', 'SZ001F', '1000', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('王婷', '2300012', '2020-09-09', 'BJ001F', '1110', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('赵婷', '2300013', '2020-04-04', 'SZ001F', '1100', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('刘辉', '2300014', '2019-03-04', 'HN001F', '1000', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王宇', '2300015', '2020-03-03', 'AH001F', '1000', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('赵宇', '2300016', '2020-02-02', 'BJ001F', '1110', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王田', '2300017', '2020-02-04', 'HN001F', '1100', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('刘玲玲', '2300018', '2019-03-05', 'SZ001F', '1110', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('张树素', '2300019', '2020-11-03', 'SC001F', '1100', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('陈远', '2300020', '2020-11-11', 'SC001F', '1100', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('孙紫', '2300021', '2020-03-04', 'SC001F', '1100', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('陈深', '2300022', '2020-02-02', 'HN001F', '1110', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('单子行', '2300023', '2020-07-07', 'AH001F', '1100', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('单子行', '2300023', '0202-07-08', 'HN001F', '1100', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王研', '2300024', '2020-08-08', 'AH001F', '1100', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('王妍', '2300024', '2020-08-07', 'BJ001F', '1110', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王妍', '2300024', '2020-08-06', 'HN001F', '1100', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王妍', '2300024', '2020-08-04', 'SC001F', '1000', '普通员工', null, '上海');
INSERT INTO `job_seeking` VALUES ('王妍', '2300024', '2020-08-05', 'SZ001F', '1111', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('王一', '4400001', '2020-01-01', 'SZ001F', '1000', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('王二', '4400002', '2020-01-01', 'SZ001F', '1100', '项目经理', null, '上海');
INSERT INTO `job_seeking` VALUES ('王三', '4400003', '2020-01-01', 'SZ001F', '1000', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王四', '4400004', '2020-01-01', 'SZ001F', '1000', '部门主管', null, '上海');
INSERT INTO `job_seeking` VALUES ('王五', '4400005', '2020-01-01', 'SZ001F', '1000', '部门主管', null, '上海');

-- ----------------------------
-- Table structure for login_info
-- ----------------------------
DROP TABLE IF EXISTS `login_info`;
CREATE TABLE `login_info` (
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `identity_card` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `regist_time` date DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `nation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `political_feature` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `honor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `inschool_time` date DEFAULT NULL,
  `graduate_time` date DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login_info
-- ----------------------------
INSERT INTO `login_info` VALUES ('', '', '', null, null, '2021-04-20', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041011', '111', null, '张小倩', '3300001', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041012', '111', null, '王聪', '3300002', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041013', '111', null, '叶子舒', '3300004', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041014', '111', null, '张潇潇', '3300007', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041015', '111', null, '刘广', '3300008', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041016', '111', null, '张琪', '3300009', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041017', '111', null, '张培', '3300010', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20041018', '111', null, '刘琦', '3300011', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20050221', '111', null, '王晓晓', '3300012', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20050222', '111', null, '赵亮', '3300013', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20050224', '111', null, '赵恰', '3300016', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20050225', '111', null, '王光', '3300017', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20060120', '111', null, '王月月', '3300020', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20061012', '111', null, '王子山', '3300018', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20061030', '111', null, '刘云', '3300021', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20070423', '111', null, '赵章', '3300025', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20080618', '111', null, '王乾坤', '3300029', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20080619', '111', null, '王子', '3300030', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20081009', '111', null, '刘雨辰', '3300026', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20081011', '111', null, '王玉杰', '3300028', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20090115', '111', null, '赵丽', '3300031', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100101', '111', null, '王磊', '2300001', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100303', '111', null, '张大倩', '2300002', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100404', '111', null, '赵子树', '2300003', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100505', '111', null, '刘研', '2300004', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100606', '111', null, '叶恒', '2300005', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100707', '111', null, '张文文', '2300006', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100808', '111', null, '张大大', '2300007', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20100909', '111', null, '刘里', '2300008', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20101010', '111', null, '张子', '2300009', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20101111', '111', null, '张紫', '2300010', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20101212', '111', null, '王撤', '2300011', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110101', '111', null, '王婷', '2300012', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110202', '111', null, '赵婷', '2300013', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110303', '111', null, '刘辉', '2300014', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110404', '111', null, '王宇', '2300015', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110505', '111', null, '赵宇', '2300016', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110606', '111', null, '王田', '2300017', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110707', '111', null, '刘玲玲', '2300018', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110808', '111', null, '张树素', '2300019', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20110909', '111', null, '陈远', '2300020', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20111010', '111', null, '孙紫', '2300021', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20111111', '111', null, '陈深', '2300022', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20111212', '111', null, '单子行', '2300023', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20120101', '111', null, '王研', '2300024', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20120505', '111', null, '赵华光', '3300003', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20130101', '111', null, '刘勇', '3300005', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20130202', '111', null, '叶倩文', '3300006', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20140101', '111', null, '刘子辉', '3300014', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20150101', '111', null, '张亮', '3300015', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('20160101', '111', null, '王光磊', '3300019', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('user', '111', '', '111', '1111', '2021-04-20', '女', '汉', '群众', '1111', '11111', '2021-03-29', '2021-05-02');
INSERT INTO `login_info` VALUES ('user2', '111', '111@163.com', '张三', '33000005', '2021-04-20', '男', '汉', '群众', '创新创业小学', '优秀毕业生', '2021-04-01', '2021-04-25');
INSERT INTO `login_info` VALUES ('usera', '111', null, '孙蕾', '4300007', '2000-01-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('userd', '111', null, '王畅畅', '3300023', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('userh', '111', null, '王汪', '3300100', '2020-01-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('usero', '111', null, '王颖', '3300024', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('userp', '111', null, '张雨佳', '3300027', '2010-02-01', null, null, null, null, null, null, null);
INSERT INTO `login_info` VALUES ('useru', '111', null, '赵子龙', '3300022', '2010-02-01', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for staff_file
-- ----------------------------
DROP TABLE IF EXISTS `staff_file`;
CREATE TABLE `staff_file` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `identity_card` varchar(50) CHARACTER SET utf8 NOT NULL,
  `company_number` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `in_time` date DEFAULT NULL,
  `out_time` date DEFAULT NULL,
  `department_manager` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `main_achievement` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`identity_card`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of staff_file
-- ----------------------------
INSERT INTO `staff_file` VALUES ('王磊', '2300001', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张大倩', '2300002', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('赵子树', '2300003', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('刘研', '2300004', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('叶恒', '2300005', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张文文', '2300006', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张大大', '2300007', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('刘里', '2300008', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张子', '2300009', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张紫', '2300010', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('王撤', '2300011', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('王婷', '2300012', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('赵婷', '2300013', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('刘辉', '2300014', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('王宇', '2300015', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('赵宇', '2300016', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('王田', '2300017', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('刘玲玲', '2300018', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张树素', '2300019', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('陈远', '2300020', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('孙紫', '2300021', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('陈深', '2300022', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('单子行', '2300023', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('王研', '2300024', null, null, null, null, null, null, null);
INSERT INTO `staff_file` VALUES ('张小倩', '3300001', 'HN001F', '2', '2021-02-01', null, null, '0', null);
INSERT INTO `staff_file` VALUES ('王聪', '3300002', 'BJ001F', '1', '2020-08-08', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('赵华光', '3300003', 'AH001F', '2', '2020-11-21', '2021-03-21', null, '1', null);
INSERT INTO `staff_file` VALUES ('叶子舒', '3300004', 'SH001F', '2', '2020-06-12', null, null, '0', null);
INSERT INTO `staff_file` VALUES ('刘勇', '3300005', 'FJ001F', '3', '2020-06-18', '2021-03-20', '王光磊', '1', null);
INSERT INTO `staff_file` VALUES ('叶倩文', '3300006', 'SZ001F', '3', '2020-02-21', '2021-03-03', '王畅畅', '1', null);
INSERT INTO `staff_file` VALUES ('张潇潇', '3300007', 'BJ001F', '2', '2020-02-21', null, '', '0', null);
INSERT INTO `staff_file` VALUES ('刘广', '3300008', 'FJ001F', '1', '2020-07-21', null, '王光磊', '0', null);
INSERT INTO `staff_file` VALUES ('张琪', '3300009', 'SZ001F', '1', '2020-05-21', null, '王畅畅', '0', null);
INSERT INTO `staff_file` VALUES ('张培', '3300010', 'SZ001F', '1', '2020-07-16', null, '王畅畅', '0', null);
INSERT INTO `staff_file` VALUES ('刘琦', '3300011', 'GD001F', '2', '2020-06-10', null, null, '0', null);
INSERT INTO `staff_file` VALUES ('王晓晓', '3300012', 'BJ001F', '3', '2020-05-13', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('赵亮', '3300013', 'HB001F', '2', '2020-07-17', null, null, '0', null);
INSERT INTO `staff_file` VALUES ('刘子辉', '3300014', 'BJ001F', '4', '2020-10-08', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('张亮', '3300015', 'SZ001F', '3', '2020-06-26', '2021-01-06', '王畅畅', '1', null);
INSERT INTO `staff_file` VALUES ('赵恰', '3300016', 'BJ001F', '1', '2020-10-22', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('王光', '3300017', 'SZ001F', '1', '2019-07-21', null, '王畅畅', '0', null);
INSERT INTO `staff_file` VALUES ('王子山', '3300018', 'FJ001F', '3', '2018-07-21', null, '王光磊', '0', null);
INSERT INTO `staff_file` VALUES ('王光磊', '3300019', 'FJ001F', '2', '2020-07-16', '2021-03-21', null, '1', null);
INSERT INTO `staff_file` VALUES ('王月月', '3300020', 'BJ001F', '1', '2020-07-15', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('刘云', '3300021', 'FJ001F', '4', '2019-11-21', null, '王光磊', '0', null);
INSERT INTO `staff_file` VALUES ('赵子龙', '3300022', 'SZ001F', '1', '2020-06-25', null, '王畅畅', '0', null);
INSERT INTO `staff_file` VALUES ('王畅畅', '3300023', 'SZ001F', '2', '2019-06-27', null, null, '0', null);
INSERT INTO `staff_file` VALUES ('王颖', '3300024', 'SZ001F', '4', '2013-10-25', null, '王畅畅', '0', null);
INSERT INTO `staff_file` VALUES ('赵章', '3300025', 'BJ001F', '1', '2020-06-10', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('刘雨辰', '3300026', 'BJ001F', '1', '2017-06-15', null, '张潇潇', '1', null);
INSERT INTO `staff_file` VALUES ('张雨佳', '3300027', 'SZ001F', '3', '2021-02-21', null, '王畅畅', '0', null);
INSERT INTO `staff_file` VALUES ('王玉杰', '3300028', 'FJ001F', '1', '2019-11-22', null, '王光磊', '0', null);
INSERT INTO `staff_file` VALUES ('王乾坤', '3300029', 'FJ001F', '1', '2019-07-20', null, '王光磊', '0', null);
INSERT INTO `staff_file` VALUES ('王子', '3300030', 'FJ001F', '1', '2020-06-21', null, '王光磊', '0', null);
INSERT INTO `staff_file` VALUES ('赵丽', '3300031', 'BJ001F', '1', '2019-11-12', null, '张潇潇', '0', null);
INSERT INTO `staff_file` VALUES ('王汪', '3300100', 'SZ001F', '1', '2019-01-01', null, '王畅畅', '0', null);

-- ----------------------------
-- Table structure for system-manager-info
-- ----------------------------
DROP TABLE IF EXISTS `system-manager-info`;
CREATE TABLE `system-manager-info` (
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of system-manager-info
-- ----------------------------
INSERT INTO `system-manager-info` VALUES ('ls001', '111', null);
INSERT INTO `system-manager-info` VALUES ('wz001', '111', null);
INSERT INTO `system-manager-info` VALUES ('xy', '111', null);
INSERT INTO `system-manager-info` VALUES ('zk', '111', null);
INSERT INTO `system-manager-info` VALUES ('zs001', '111', null);

-- ----------------------------
-- Table structure for user_basic_info
-- ----------------------------
DROP TABLE IF EXISTS `user_basic_info`;
CREATE TABLE `user_basic_info` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `identity_card` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nation` varchar(50) CHARACTER SET utf8 NOT NULL,
  `political_feature` varchar(50) CHARACTER SET utf8 NOT NULL,
  `learn_experience` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`identity_card`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_basic_info
-- ----------------------------
INSERT INTO `user_basic_info` VALUES ('王磊', '2300001', '男', '汉', '群众', '硕士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('张大倩', '2300002', '女', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('赵子树', '2300003', '男', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('刘研', '2300004', '女', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('叶恒', '2300005', '男', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('张文文', '2300006', '女', '汉', '群众', '硕士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('张大大', '2300007', '男', '汉', '群众', '硕士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('刘里', '2300008', '男', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('张子', '2300009', '男', '汉', '群众', '博士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('张紫', '2300010', '女', '汉', '群众', '博士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王撤', '2300011', '男', '汉', '中共党员', '博士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王婷', '2300012', '女', '汉', '中共党员', '博士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('赵婷', '2300013', '女', '汉', '中共党员', '博士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('刘辉', '2300014', '男', '汉', '中共党员', '博士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王宇', '2300015', '男', '汉', '中共党员', '博士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('赵宇', '2300016', '男', '汉', '中共党员', '博士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('王田', '2300017', '男', '汉', '中共党员', '博士', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('刘玲玲', '2300018', '女', '汉', '中共党员', '博士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('张树素', '2300019', '男', '汉', '中共党员', '博士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('陈远', '2300020', '男', '汉', '中共党员', '博士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('孙紫', '2300021', '女', '汉', '中共党员', '博士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('陈深', '2300022', '男', '汉', '中共党员', '博士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('单子行', '2300023', '男', '汉', '中共党员', '博士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王研', '2300024', '女', '汉', '中共党员', '博士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('张小倩', '3300001', '女', '汉', '中共党员', '本科', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('王聪', '3300002', '男', '汉', '中共党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('赵华光', '3300003', '男', '汉', '中共党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('叶子舒', '3300004', '女', '汉', '中共党员', '本科', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('刘勇', '3300005', '男', '汉', '中共党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('叶倩文', '3300006', '女', '汉', '中共党员', '本科', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('张潇潇', '3300007', '女', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('刘广', '3300008', '男', '汉', '中共党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('张琪', '3300009', '女', '汉', '中共党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('张培', '3300010', '男', '汉', '中共预备党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('刘琦', '3300011', '女', '汉', '中共预备党员', '本科', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('王晓晓', '3300012', '女', '汉', '中共预备党员', '本科', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('赵亮', '3300013', '男', '汉', '中共预备党员', '本科', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('刘子辉', '3300014', '男', '汉', '中共预备党员', '本科', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('张亮', '3300015', '男', '汉', '中共预备党员', '本科', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('赵恰', '3300016', '女', '汉', '中共预备党员', '本科', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王光', '3300017', '男', '汉', '中共预备党员', '本科', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王子山', '3300018', '男', '汉', '中共预备党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王光磊', '3300019', '男', '汉', '中共预备党员', '本科', '30', '已创建账号');
INSERT INTO `user_basic_info` VALUES ('王月月', '3300020', '女', '汉', '中共预备党员', '本科', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('刘云', '3300021', '女', '汉', '中共预备党员', '本科', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('赵子龙', '3300022', '男', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王畅畅', '3300023', '男', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王颖', '3300024', '女', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('赵章', '3300025', '男', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('刘雨辰', '3300026', '男', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('张雨佳', '3300027', '女', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王玉杰', '3300028', '男', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王乾坤', '3300029', '男', '汉', '群众', '硕士', '30', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王子', '3300030', '男', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('赵丽', '3300031', '女', '汉', '群众', '硕士', '30', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王汪', '3300100', '男', '汉', '群众', '博士', '29', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王一', '4400001', '女', '汉', '群众', '博士', '24', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王二', '4400002', '女', '汉', '群众', '硕士', '32', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王三', '4400003', '男', '汉', '群众', '硕士', '33', '未通过认证');
INSERT INTO `user_basic_info` VALUES ('王四', '4400004', '男', '汉', '群众', '本科', '22', '已通过认证');
INSERT INTO `user_basic_info` VALUES ('王五', '4400005', '女', '汉', '群众', '本科', '34', '已创建账号');

-- ----------------------------
-- Table structure for worklogin
-- ----------------------------
DROP TABLE IF EXISTS `worklogin`;
CREATE TABLE `worklogin` (
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worklogin
-- ----------------------------
INSERT INTO `worklogin` VALUES ('赵子龙');
