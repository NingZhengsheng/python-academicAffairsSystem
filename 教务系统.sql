/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : 教务系统

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-07-22 18:58:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1001', '系统管理员', '123456', '15659684123');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `departmentid` varchar(255) NOT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_class_department_1` (`departmentid`) USING BTREE,
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('301', '2016', '16电科1', '201', '徐志杰');
INSERT INTO `class` VALUES ('302', '2016', '16电科2', '201', '程鸿');
INSERT INTO `class` VALUES ('303', '2016', '16电气工程', '202', '颜承志');
INSERT INTO `class` VALUES ('304', '2016', '16电信(两岸合作)1', '203', '谢尚钊');
INSERT INTO `class` VALUES ('305', '2016', '16电信(两岸合作)2', '203', '宋奇杰');
INSERT INTO `class` VALUES ('306', '2016', '16通信', '204', '朱港回');
INSERT INTO `class` VALUES ('307', '2016', '16法学1', '205', '朱嘉文');
INSERT INTO `class` VALUES ('308', '2016', '16法学2', '205', '蔡凯强');
INSERT INTO `class` VALUES ('309', '2016', '16法学3', '205', '唐仁节');
INSERT INTO `class` VALUES ('310', '2016', '16法学4', '205', '余潘晨');
INSERT INTO `class` VALUES ('311', '2016', '16行管', '206', '蒋招宁');
INSERT INTO `class` VALUES ('312', '2016', '16政教(师范)', '207', '许世宁');
INSERT INTO `class` VALUES ('313', '2016', '16工商(空管)', '208', '张毕宣');
INSERT INTO `class` VALUES ('314', '2016', '16工商管理(国际化)', '208', '谢俊鹏');
INSERT INTO `class` VALUES ('315', '2016', '16材料', '209', '陈晓阳');
INSERT INTO `class` VALUES ('316', '2016', '16化工', '210', '毛玮');
INSERT INTO `class` VALUES ('317', '2016', '16化学(国际化)', '211', '贲宁');
INSERT INTO `class` VALUES ('318', '2016', '16化学(师范)', '211', '徐辉');
INSERT INTO `class` VALUES ('319', '2016', '16应化', '212', '汪潇晗');
INSERT INTO `class` VALUES ('320', '2016', '16车辆工程', '213', '姜佳旗');
INSERT INTO `class` VALUES ('321', '2016', '16工业工程', '214', '陈涛');
INSERT INTO `class` VALUES ('322', '2016', '16机械工程1(卓工)', '215', '郭婷丽');
INSERT INTO `class` VALUES ('323', '2016', '16机械工程2(卓工)', '215', '舒丹');
INSERT INTO `class` VALUES ('324', '2016', '16机械工程3(国际化)', '215', '林春');
INSERT INTO `class` VALUES ('325', '2016', '16计算机1', '216', '罗中旭');
INSERT INTO `class` VALUES ('326', '2016', '16计算机2', '216', '向飞帆');
INSERT INTO `class` VALUES ('327', '2016', '16网工1', '218', '杨晨');
INSERT INTO `class` VALUES ('328', '2016', '16网工2', '218', '包舒扬');
INSERT INTO `class` VALUES ('329', '2016', '16建筑学', '219', '陈冲');
INSERT INTO `class` VALUES ('330', '2016', '16土木1', '220', '王金香');
INSERT INTO `class` VALUES ('331', '2016', '16土木2', '220', '纪慧敏');
INSERT INTO `class` VALUES ('332', '2016', '16土木3', '220', '张云');
INSERT INTO `class` VALUES ('333', '2016', '16土木4', '220', '金崇林');
INSERT INTO `class` VALUES ('334', '2016', '16教技本(师范)', '221', '许雷');
INSERT INTO `class` VALUES ('335', '2016', '16小教本(师范)1', '222', '罗碧芸');
INSERT INTO `class` VALUES ('336', '2016', '16小教本(师范)2', '222', '彭瑶');
INSERT INTO `class` VALUES ('337', '2016', '16小教本(师范)3', '222', '仇钧涵');
INSERT INTO `class` VALUES ('338', '2016', '16小教本(师范)4', '222', '王伟');
INSERT INTO `class` VALUES ('339', '2016', '16心理学(师范)', '223', '于超琪');
INSERT INTO `class` VALUES ('340', '2016', '16学前(师范)', '224', '何思慧');
INSERT INTO `class` VALUES ('341', '2016', '16创意中文', '225', '韩丽超');
INSERT INTO `class` VALUES ('342', '2016', '16翻译1', '226', '虞晨怡');
INSERT INTO `class` VALUES ('343', '2016', '16翻译2', '226', '徐嘉璟');
INSERT INTO `class` VALUES ('344', '2016', '16广告', '227', '朱蕾');
INSERT INTO `class` VALUES ('345', '2016', '16历史(师范)', '228', '徐帆锦');
INSERT INTO `class` VALUES ('346', '2016', '16英本(师范)1', '229', '李安平');
INSERT INTO `class` VALUES ('347', '2016', '16英本(师范)2', '229', '徐琳');
INSERT INTO `class` VALUES ('348', '2016', '16中文1', '231', '曹聪');
INSERT INTO `class` VALUES ('349', '2016', '16中文2', '231', '陈晓龙');
INSERT INTO `class` VALUES ('350', '2016', '16财务1', '232', '王嘉诚');
INSERT INTO `class` VALUES ('351', '2016', '16财务2', '232', '张耀文');
INSERT INTO `class` VALUES ('352', '2016', '16国贸', '233', '董锦行');
INSERT INTO `class` VALUES ('353', '2016', '16国贸(国际化)', '233', '陈超泽');
INSERT INTO `class` VALUES ('354', '2016', '16金融工程1', '234', '陈叶静');
INSERT INTO `class` VALUES ('355', '2016', '16金融工程2', '234', '陈宇滨');
INSERT INTO `class` VALUES ('356', '2016', '16市销(国际化)', '235', '陈唯昊');
INSERT INTO `class` VALUES ('357', '2016', '16市销1', '235', '郭可飘');
INSERT INTO `class` VALUES ('358', '2016', '16市销2', '235', '韩潇鹏');
INSERT INTO `class` VALUES ('359', '2016', '16环科', '236', '许王杰');
INSERT INTO `class` VALUES ('360', '2016', '16生技', '237', '陈世威');
INSERT INTO `class` VALUES ('361', '2016', '16生科', '238', '何倩雯');
INSERT INTO `class` VALUES ('362', '2016', '16统计', '240', '金智');
INSERT INTO `class` VALUES ('363', '2016', '16物理', '241', '曹佳佳');
INSERT INTO `class` VALUES ('364', '2016', '16信算', '242', '胡锦涛');
INSERT INTO `class` VALUES ('365', '2016', '16应数1', '243', '王迪');
INSERT INTO `class` VALUES ('366', '2016', '16应数2', '243', '杨陈君');
INSERT INTO `class` VALUES ('367', '2016', '16音教1', '244', '吴成');
INSERT INTO `class` VALUES ('368', '2016', '16音教2', '244', '杨曦');
INSERT INTO `class` VALUES ('369', '2016', '16音教3', '244', '应俊');
INSERT INTO `class` VALUES ('370', '2017', '17电科1', '201', '王镇涵');
INSERT INTO `class` VALUES ('371', '2017', '17电科2', '201', '干家远');
INSERT INTO `class` VALUES ('372', '2017', '17电气工程1', '202', '周美朋');
INSERT INTO `class` VALUES ('373', '2017', '17电气工程2', '202', '于建栋');
INSERT INTO `class` VALUES ('374', '2017', '17电信(两岸合作)1', '203', '张玉祥');
INSERT INTO `class` VALUES ('375', '2017', '17电信(两岸合作)2', '203', '陈凌霄');
INSERT INTO `class` VALUES ('376', '2017', '17法学1', '205', '宋守帅');
INSERT INTO `class` VALUES ('377', '2017', '17法学2', '205', '柯雨晴');
INSERT INTO `class` VALUES ('378', '2017', '17法学3', '205', '王扬');
INSERT INTO `class` VALUES ('379', '2017', '17法学4', '205', '史思扬');
INSERT INTO `class` VALUES ('380', '2017', '17行管', '206', '张卫强');
INSERT INTO `class` VALUES ('381', '2017', '17政教(师范)', '207', '张丹开');
INSERT INTO `class` VALUES ('382', '2017', '17工商(航管)', '208', '潘建辉');
INSERT INTO `class` VALUES ('383', '2017', '17材料', '209', '王博');
INSERT INTO `class` VALUES ('384', '2017', '17化学(创新班)', '211', '何妍蕾');
INSERT INTO `class` VALUES ('385', '2017', '17化学(师范)1', '211', '徐瑶瑶');
INSERT INTO `class` VALUES ('386', '2017', '17化学(师范)2', '211', '唐旖晴');
INSERT INTO `class` VALUES ('387', '2017', '17应化1', '212', '施维扬');
INSERT INTO `class` VALUES ('388', '2017', '17应化2', '212', '许欣彤');
INSERT INTO `class` VALUES ('389', '2017', '17车辆工程', '213', '王宁');
INSERT INTO `class` VALUES ('390', '2017', '17工业工程', '214', '苗琦琦');
INSERT INTO `class` VALUES ('391', '2017', '17机械工程1(卓工)', '215', '孙建林');
INSERT INTO `class` VALUES ('392', '2017', '17机械工程2(卓工)', '215', '汪珺瑶');
INSERT INTO `class` VALUES ('393', '2017', '17机械工程3(卓工)', '215', '汤佳炜');
INSERT INTO `class` VALUES ('394', '2017', '17计算机1', '216', '易明');
INSERT INTO `class` VALUES ('395', '2017', '17计算机2', '216', '章崇陶');
INSERT INTO `class` VALUES ('396', '2017', '17计算机3', '216', '方恩杰');
INSERT INTO `class` VALUES ('397', '2017', '17网工1', '218', '张恺亮');
INSERT INTO `class` VALUES ('398', '2017', '17网工2', '218', '张文杰');
INSERT INTO `class` VALUES ('399', '2017', '17建筑学', '219', '李佳怡');
INSERT INTO `class` VALUES ('400', '2017', '17土木1', '220', '梁思雨');
INSERT INTO `class` VALUES ('401', '2017', '17土木2', '220', '宋诗雅');
INSERT INTO `class` VALUES ('402', '2017', '17土木3', '220', '孙银霞');
INSERT INTO `class` VALUES ('403', '2017', '17土木4', '220', '陶祝逸');
INSERT INTO `class` VALUES ('404', '2017', '17教技本(师范)', '221', '陈琼');
INSERT INTO `class` VALUES ('405', '2017', '17小教本(师范)1', '222', '徐露');
INSERT INTO `class` VALUES ('406', '2017', '17小教本(师范)2', '222', '郑楠斌');
INSERT INTO `class` VALUES ('407', '2017', '17小教本(师范)3', '222', '盛辉');
INSERT INTO `class` VALUES ('408', '2017', '17心理学(师范)', '223', '邹建华');
INSERT INTO `class` VALUES ('409', '2017', '17学前本(师范)', '224', '董伦星');
INSERT INTO `class` VALUES ('410', '2017', '17学前专(师范)1', '224', '沈迎港');
INSERT INTO `class` VALUES ('411', '2017', '17学前专(师范)10', '224', '盛作敏');
INSERT INTO `class` VALUES ('412', '2017', '17学前专(师范)2', '224', '周晓东');
INSERT INTO `class` VALUES ('413', '2017', '17学前专(师范)3', '224', '国帅');
INSERT INTO `class` VALUES ('414', '2017', '17学前专(师范)6', '224', '邱宁辉');
INSERT INTO `class` VALUES ('415', '2017', '17学前专(师范)7', '224', '闫云');
INSERT INTO `class` VALUES ('416', '2017', '17学前专(师范)8', '224', '戴波棋');
INSERT INTO `class` VALUES ('417', '2017', '17学前专(师范)9', '224', '黄梓怡');
INSERT INTO `class` VALUES ('418', '2017', '17创意中文', '225', '陈园');
INSERT INTO `class` VALUES ('419', '2017', '17翻译1', '226', '董钰倩');
INSERT INTO `class` VALUES ('420', '2017', '17翻译2', '226', '范佳维');
INSERT INTO `class` VALUES ('421', '2017', '17广告', '227', '顾鹏菲');
INSERT INTO `class` VALUES ('422', '2017', '17历史(师范)', '228', '赖梦慧');
INSERT INTO `class` VALUES ('423', '2017', '17英语(师范)1', '230', '楼韵');
INSERT INTO `class` VALUES ('424', '2017', '17英语(师范)2', '230', '潘睿铨');
INSERT INTO `class` VALUES ('425', '2017', '17英语(师范)3', '230', '戚辉');
INSERT INTO `class` VALUES ('426', '2017', '17英语(师范)4', '230', '王诗篇');
INSERT INTO `class` VALUES ('427', '2017', '17中文1', '231', '叶杰开');
INSERT INTO `class` VALUES ('428', '2017', '17中文2', '231', '余泽');
INSERT INTO `class` VALUES ('429', '2017', '17财务1', '232', '何崇清');
INSERT INTO `class` VALUES ('430', '2017', '17财务2', '232', '倪力');
INSERT INTO `class` VALUES ('431', '2017', '17国贸', '233', '沈佳辉');
INSERT INTO `class` VALUES ('432', '2017', '17金融工程1', '234', '童欣雨');
INSERT INTO `class` VALUES ('433', '2017', '17金融工程2', '234', '王川');
INSERT INTO `class` VALUES ('434', '2017', '17市销', '235', '闻嘉琛');
INSERT INTO `class` VALUES ('435', '2017', '17环科', '236', '叶利钦');
INSERT INTO `class` VALUES ('436', '2017', '17生科', '238', '吴哲');
INSERT INTO `class` VALUES ('437', '2017', '17生物制药', '239', '沈航');
INSERT INTO `class` VALUES ('438', '2017', '17统计', '240', '赵一航');
INSERT INTO `class` VALUES ('439', '2017', '17物理', '241', '周彦汝');
INSERT INTO `class` VALUES ('440', '2017', '17信算', '242', '朱江涛');
INSERT INTO `class` VALUES ('441', '2017', '17应数1', '243', '邹雨叶');
INSERT INTO `class` VALUES ('442', '2017', '17应数2', '243', '陆金石');
INSERT INTO `class` VALUES ('443', '2017', '17音教1', '244', '占敏');
INSERT INTO `class` VALUES ('444', '2017', '17音教2', '244', '张程波');
INSERT INTO `class` VALUES ('445', '2017', '17音教3', '244', '章洛瑜');
INSERT INTO `class` VALUES ('446', '2018', '18电科1', '201', '叶凌祎');
INSERT INTO `class` VALUES ('447', '2018', '18电科2', '201', '胡俊伟');
INSERT INTO `class` VALUES ('448', '2018', '18电气工程1', '202', '倪茗佳');
INSERT INTO `class` VALUES ('449', '2018', '18电气工程2', '202', '丁宗山');
INSERT INTO `class` VALUES ('450', '2018', '18电信(两岸合作)1', '203', '应光辉');
INSERT INTO `class` VALUES ('451', '2018', '18电信(两岸合作)2', '203', '李靖');
INSERT INTO `class` VALUES ('452', '2018', '18法学1', '205', '徐卉');
INSERT INTO `class` VALUES ('453', '2018', '18法学2', '205', '林伊如');
INSERT INTO `class` VALUES ('454', '2018', '18法学3', '205', '王紫雨');
INSERT INTO `class` VALUES ('455', '2018', '18法学4', '205', '方甜');
INSERT INTO `class` VALUES ('456', '2018', '18行管', '206', '郭挺');
INSERT INTO `class` VALUES ('457', '2018', '18政教(师范)', '207', '杨进');
INSERT INTO `class` VALUES ('458', '2018', '18材料', '209', '祁唯一');
INSERT INTO `class` VALUES ('459', '2018', '18化学(创新班)', '211', '曾枭');
INSERT INTO `class` VALUES ('460', '2018', '18化学(师范)1', '211', '张登瑞');
INSERT INTO `class` VALUES ('461', '2018', '18化学(师范)2', '211', '柯子凝');
INSERT INTO `class` VALUES ('462', '2018', '18应化1', '212', '祝光翼');
INSERT INTO `class` VALUES ('463', '2018', '18应化2', '212', '郭佳欣');
INSERT INTO `class` VALUES ('464', '2018', '18机械工程1(卓工)', '215', '张昊');
INSERT INTO `class` VALUES ('465', '2018', '18机械工程2(卓工)', '215', '王汉昆');
INSERT INTO `class` VALUES ('466', '2018', '18机械工程3(卓工)', '215', '王骏铖');
INSERT INTO `class` VALUES ('467', '2018', '18机械类1', '215', '张清焜');
INSERT INTO `class` VALUES ('468', '2018', '18机械类2', '215', '黄叶鑫');
INSERT INTO `class` VALUES ('469', '2018', '18计算机1', '216', '付俊杰');
INSERT INTO `class` VALUES ('470', '2018', '18计算机2', '216', '徐环宇');
INSERT INTO `class` VALUES ('471', '2018', '18数科1', '217', '邹合权');
INSERT INTO `class` VALUES ('472', '2018', '18数科2', '217', '薜渊');
INSERT INTO `class` VALUES ('473', '2018', '18网工1', '218', '丁敏龙');
INSERT INTO `class` VALUES ('474', '2018', '18网工2', '218', '聂鹏');
INSERT INTO `class` VALUES ('475', '2018', '18建筑学', '219', '王诚铭');
INSERT INTO `class` VALUES ('476', '2018', '18土木1', '220', '王广贤');
INSERT INTO `class` VALUES ('477', '2018', '18土木2', '220', '肖志坚');
INSERT INTO `class` VALUES ('478', '2018', '18土木3', '220', '颜生辉');
INSERT INTO `class` VALUES ('479', '2018', '18土木4', '220', '赵榭橦');
INSERT INTO `class` VALUES ('480', '2018', '18教技本(师范)', '221', '李丽');
INSERT INTO `class` VALUES ('481', '2018', '18小教本(师范)1', '222', '史佳玮');
INSERT INTO `class` VALUES ('482', '2018', '18小教本(师范)2', '222', '汪明星');
INSERT INTO `class` VALUES ('483', '2018', '18小教本(师范)3', '222', '吴云辉');
INSERT INTO `class` VALUES ('484', '2018', '18小教本(师范)4', '222', '周佳炳');
INSERT INTO `class` VALUES ('485', '2018', '18心理学(师范)', '223', '李卓原');
INSERT INTO `class` VALUES ('486', '2018', '18学前本(师范)', '224', '黄智博');
INSERT INTO `class` VALUES ('487', '2018', '18学前专(师范)1', '224', '阮梓航');
INSERT INTO `class` VALUES ('488', '2018', '18学前专(师范)10', '224', '王昊博');
INSERT INTO `class` VALUES ('489', '2018', '18学前专(师范)2', '224', '甘晗阳');
INSERT INTO `class` VALUES ('490', '2018', '18学前专(师范)3', '224', '曹志彬');
INSERT INTO `class` VALUES ('491', '2018', '18学前专(师范)4', '224', '陈进');
INSERT INTO `class` VALUES ('492', '2018', '18学前专(师范)5', '224', '上官兴兴');
INSERT INTO `class` VALUES ('493', '2018', '18学前专(师范)6', '224', '马龙');
INSERT INTO `class` VALUES ('494', '2018', '18学前专(师范)7', '224', '王金鑫');
INSERT INTO `class` VALUES ('495', '2018', '18学前专(师范)8', '224', '叶钦钦');
INSERT INTO `class` VALUES ('496', '2018', '18学前专(师范)9', '224', '周祎梦');
INSERT INTO `class` VALUES ('497', '2018', '18创意中文', '225', '张静');
INSERT INTO `class` VALUES ('498', '2018', '18翻译1', '226', '李晓圆');
INSERT INTO `class` VALUES ('499', '2018', '18翻译2', '226', '钮辰翀');
INSERT INTO `class` VALUES ('500', '2018', '18广告', '227', '陈灵琪');
INSERT INTO `class` VALUES ('501', '2018', '18历史(师范)', '228', '柯丽敏');
INSERT INTO `class` VALUES ('502', '2018', '18英语(师范)1', '230', '刘国爱');
INSERT INTO `class` VALUES ('503', '2018', '18英语(师范)2', '230', '郗茜');
INSERT INTO `class` VALUES ('504', '2018', '18英语(师范)3', '230', '郑涵');
INSERT INTO `class` VALUES ('505', '2018', '18英语(师范)4', '230', '丁宇');
INSERT INTO `class` VALUES ('506', '2018', '18中文1', '231', '邹潘慧');
INSERT INTO `class` VALUES ('507', '2018', '18中文2', '231', '陈王涵');
INSERT INTO `class` VALUES ('508', '2018', '18财务1', '232', '翁学盟');
INSERT INTO `class` VALUES ('509', '2018', '18财务2', '232', '肖龙翔');
INSERT INTO `class` VALUES ('510', '2018', '18国贸', '233', '陈子健');
INSERT INTO `class` VALUES ('511', '2018', '18金融工程1', '234', '丁惠俊');
INSERT INTO `class` VALUES ('512', '2018', '18金融工程2', '234', '顾鑫达');
INSERT INTO `class` VALUES ('513', '2018', '18市销', '235', '王旭锟');
INSERT INTO `class` VALUES ('514', '2018', '18环科', '236', '吴帅');
INSERT INTO `class` VALUES ('515', '2018', '18生科1', '238', '张陈鸿');
INSERT INTO `class` VALUES ('516', '2018', '18生科2', '238', '吴金鑫');
INSERT INTO `class` VALUES ('517', '2018', '18生物制药', '239', '韩佩莎');
INSERT INTO `class` VALUES ('518', '2018', '18统计1', '240', '李启航');
INSERT INTO `class` VALUES ('519', '2018', '18统计2', '240', '蔡金媛');
INSERT INTO `class` VALUES ('520', '2018', '18物理', '241', '唐栋鼎');
INSERT INTO `class` VALUES ('521', '2018', '18应数1', '243', '王思成');
INSERT INTO `class` VALUES ('522', '2018', '18应数2', '243', '娄晟');
INSERT INTO `class` VALUES ('523', '2018', '18音教1', '244', '赵雪妙');
INSERT INTO `class` VALUES ('524', '2018', '18音教2', '244', '祝琳滢');
INSERT INTO `class` VALUES ('525', '2018', '18音教3', '244', '田续');

-- ----------------------------
-- Table structure for classtime
-- ----------------------------
DROP TABLE IF EXISTS `classtime`;
CREATE TABLE `classtime` (
  `week` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `courseid` varchar(255) NOT NULL,
  `place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`week`,`section`,`courseid`),
  KEY `fk_classtime_course_1` (`courseid`) USING BTREE,
  CONSTRAINT `classtime_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classtime
-- ----------------------------

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('101', '电子与电气工程学院');
INSERT INTO `college` VALUES ('102', '法政学院');
INSERT INTO `college` VALUES ('103', '国际教育学院');
INSERT INTO `college` VALUES ('104', '化学与材料工程学院');
INSERT INTO `college` VALUES ('105', '机电工程学院');
INSERT INTO `college` VALUES ('106', '计算机与人工智能学院');
INSERT INTO `college` VALUES ('107', '建筑工程学院');
INSERT INTO `college` VALUES ('108', '教师教育学院');
INSERT INTO `college` VALUES ('109', '人文学院');
INSERT INTO `college` VALUES ('110', '商学院');
INSERT INTO `college` VALUES ('111', '生命与环境科学学院');
INSERT INTO `college` VALUES ('112', '数理学院');
INSERT INTO `college` VALUES ('113', '音乐学院');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `teacherid` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `credit` float(255,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_course_teacher_1` (`teacherid`) USING BTREE,
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `collegeid` varchar(255) DEFAULT NULL,
  `leaderid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_department_college_1` (`collegeid`) USING BTREE,
  KEY `fk_department_teacher_1` (`leaderid`) USING BTREE,
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`collegeid`) REFERENCES `college` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('201', '电科', '101', '2001');
INSERT INTO `department` VALUES ('202', '电气', '101', '2003');
INSERT INTO `department` VALUES ('203', '电信', '101', '2005');
INSERT INTO `department` VALUES ('204', '通信', '101', '2001');
INSERT INTO `department` VALUES ('205', '法学', '102', '2011');
INSERT INTO `department` VALUES ('206', '行管', '102', '');
INSERT INTO `department` VALUES ('207', '政教', '102', '2010');
INSERT INTO `department` VALUES ('208', '工商', '103', '');
INSERT INTO `department` VALUES ('209', '材料', '104', '');
INSERT INTO `department` VALUES ('210', '化工', '104', '');
INSERT INTO `department` VALUES ('211', '化学', '104', '');
INSERT INTO `department` VALUES ('212', '应化', '104', '');
INSERT INTO `department` VALUES ('213', '车辆', '105', '');
INSERT INTO `department` VALUES ('214', '工业', '105', '');
INSERT INTO `department` VALUES ('215', '机械', '105', '');
INSERT INTO `department` VALUES ('216', '计算机', '106', '');
INSERT INTO `department` VALUES ('217', '数科', '106', '');
INSERT INTO `department` VALUES ('218', '网工', '106', '');
INSERT INTO `department` VALUES ('219', '建筑', '107', '');
INSERT INTO `department` VALUES ('220', '土木', '107', '');
INSERT INTO `department` VALUES ('221', '教技', '108', '');
INSERT INTO `department` VALUES ('222', '小教', '108', '');
INSERT INTO `department` VALUES ('223', '心理', '108', '');
INSERT INTO `department` VALUES ('224', '学前', '108', '');
INSERT INTO `department` VALUES ('225', '创中', '109', '');
INSERT INTO `department` VALUES ('226', '翻译', '109', '');
INSERT INTO `department` VALUES ('227', '广告', '109', '');
INSERT INTO `department` VALUES ('228', '历史', '109', '');
INSERT INTO `department` VALUES ('229', '英本', '109', '');
INSERT INTO `department` VALUES ('230', '英语', '109', '');
INSERT INTO `department` VALUES ('231', '中文', '109', '');
INSERT INTO `department` VALUES ('232', '财务', '110', '');
INSERT INTO `department` VALUES ('233', '国贸', '110', '');
INSERT INTO `department` VALUES ('234', '金融', '110', '');
INSERT INTO `department` VALUES ('235', '市销', '110', '');
INSERT INTO `department` VALUES ('236', '环科', '111', '');
INSERT INTO `department` VALUES ('237', '生技', '111', '');
INSERT INTO `department` VALUES ('238', '生科', '111', '');
INSERT INTO `department` VALUES ('239', '制药', '111', '');
INSERT INTO `department` VALUES ('240', '统计', '112', '');
INSERT INTO `department` VALUES ('241', '物理', '112', '');
INSERT INTO `department` VALUES ('242', '信算', '112', '');
INSERT INTO `department` VALUES ('243', '应数', '101', '2003');
INSERT INTO `department` VALUES ('244', '音教', '113', '');
INSERT INTO `department` VALUES ('245', '123343234', '105', '2027');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('2', '公告测试', '系统管理员', '2019-06-22 02:06:30');
INSERT INTO `notice` VALUES ('3', 'qwe', '系统管理员', '2019-06-22 02:32:14');
INSERT INTO `notice` VALUES ('4', '我是系统管理员\n我发布了一条公告\n保佑我的python高分\n谢谢！', '系统管理员', '2019-06-22 02:58:11');
INSERT INTO `notice` VALUES ('5', 'sd', '系统管理员', '2019-06-22 09:25:08');
INSERT INTO `notice` VALUES ('6', '111', '系统管理员', '2020-06-06 09:19:42');
INSERT INTO `notice` VALUES ('7', '222', '系统管理员', '2020-06-08 10:45:42');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `id` varchar(255) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `courseid` varchar(255) NOT NULL,
  `selecttime` datetime DEFAULT NULL,
  `usualmark` float(11,0) DEFAULT NULL,
  `finalmark` float(1,0) DEFAULT NULL,
  `mark` float(11,0) DEFAULT NULL,
  `marktime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sc_student_1` (`studentid`) USING BTREE,
  KEY `fk_sc_course_1` (`courseid`) USING BTREE,
  CONSTRAINT `sc_ibfk_1` FOREIGN KEY (`courseid`) REFERENCES `course` (`id`),
  CONSTRAINT `sc_ibfk_2` FOREIGN KEY (`studentid`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_student_class_1` (`classid`) USING BTREE,
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('18210120103', '陈文文', '123456', '510', '16120925259');
INSERT INTO `student` VALUES ('18210120106', '戴舒琪', '123456', '510', '19494677384');
INSERT INTO `student` VALUES ('18210120136', '王俊瑜', '123456', '510', '16711375773');
INSERT INTO `student` VALUES ('18210120141', '夏相诗', '123456', '510', '15878195914');
INSERT INTO `student` VALUES ('18210120143', '徐素佩', '123456', '510', '11597862882');
INSERT INTO `student` VALUES ('18210120147', '杨汶骏', '123456', '510', '17548741396');
INSERT INTO `student` VALUES ('18210120150', '张殊瑶', '123456', '510', '11805372300');
INSERT INTO `student` VALUES ('18210140108', '佴倬宇', '123456', '513', '14668648446');
INSERT INTO `student` VALUES ('18210140109', '甘行锰', '123456', '513', '12891557790');
INSERT INTO `student` VALUES ('18210140112', '金琦玮', '123456', '509', '12493687150');
INSERT INTO `student` VALUES ('18210140116', '李磊', '123456', '485', '15648484933');
INSERT INTO `student` VALUES ('18210140118', '刘泳鑫', '123456', '513', '11495709229');
INSERT INTO `student` VALUES ('18210140133', '王跃霏', '123456', '513', '10691668304');
INSERT INTO `student` VALUES ('18210140138', '杨婷', '123456', '513', '11223076379');
INSERT INTO `student` VALUES ('18210140140', '余杰', '123456', '513', '19400166560');
INSERT INTO `student` VALUES ('18210140141', '张浩男', '123456', '513', '18745723905');
INSERT INTO `student` VALUES ('18210160101', '艾尼瓦尔', '123456', '508', '11601274250');
INSERT INTO `student` VALUES ('18210160104', '陈嘉缘', '123456', '508', '18010073173');
INSERT INTO `student` VALUES ('18210160105', '陈梦瑶', '123456', '508', '12902898491');
INSERT INTO `student` VALUES ('18210160112', '李小玥', '123456', '508', '11275038186');
INSERT INTO `student` VALUES ('18210160123', '王段芳', '123456', '508', '17410428974');
INSERT INTO `student` VALUES ('18210160125', '王吕倩', '123456', '508', '10667971699');
INSERT INTO `student` VALUES ('18210160127', '王一帆', '123456', '508', '16556330039');
INSERT INTO `student` VALUES ('18210160130', '武瑞杰', '123456', '508', '17506235826');
INSERT INTO `student` VALUES ('18210160134', '尧佳华', '123456', '508', '12203074756');
INSERT INTO `student` VALUES ('18210160143', '郑光慧', '123456', '508', '14144845499');
INSERT INTO `student` VALUES ('18210160145', '钟艺', '123456', '508', '16898122468');
INSERT INTO `student` VALUES ('18210160209', '戴绍博', '123456', '509', '12821094985');
INSERT INTO `student` VALUES ('18210160214', '韩旭', '123456', '509', '15143680830');
INSERT INTO `student` VALUES ('18210160219', '刘淼淼', '123456', '509', '19197461566');
INSERT INTO `student` VALUES ('18210160225', '汤晓艺', '123456', '509', '13631095207');
INSERT INTO `student` VALUES ('18210160227', '田文薇', '123456', '509', '13807584760');
INSERT INTO `student` VALUES ('18210160228', '王倩', '123456', '509', '13418282571');
INSERT INTO `student` VALUES ('18210160236', '王子琦', '123456', '509', '18700713238');
INSERT INTO `student` VALUES ('18210160237', '吴佳颖', '123456', '509', '16132931554');
INSERT INTO `student` VALUES ('18210160240', '阳慧鑫', '123456', '509', '17462177484');
INSERT INTO `student` VALUES ('18210160241', '杨洁薇', '123456', '509', '15457684398');
INSERT INTO `student` VALUES ('18210160242', '叶珈贻', '123456', '509', '14454812664');
INSERT INTO `student` VALUES ('18210160245', '章佳情', '123456', '509', '17712126546');
INSERT INTO `student` VALUES ('18210160247', '赵珺怡', '123456', '509', '17789362753');
INSERT INTO `student` VALUES ('18210180104', '陈宇', '123456', '511', '16500533097');
INSERT INTO `student` VALUES ('18210180105', '成佳琪', '123456', '511', '19907057151');
INSERT INTO `student` VALUES ('18210180108', '傅佳', '123456', '511', '10250389636');
INSERT INTO `student` VALUES ('18210180117', '金囿利', '123456', '511', '13444095638');
INSERT INTO `student` VALUES ('18210180122', '罗欣悦', '123456', '511', '19585727317');
INSERT INTO `student` VALUES ('18210180123', '马迩文', '123456', '511', '10549159890');
INSERT INTO `student` VALUES ('18210180126', '任翰墨', '123456', '511', '19212090287');
INSERT INTO `student` VALUES ('18210180131', '孙玺瑜', '123456', '511', '11507872297');
INSERT INTO `student` VALUES ('18210180135', '徐鹏', '123456', '511', '17495095694');
INSERT INTO `student` VALUES ('18210180146', '张莹莹', '123456', '511', '17155503611');
INSERT INTO `student` VALUES ('18210180150', '庄家怡', '123456', '511', '15741576340');
INSERT INTO `student` VALUES ('18210180201', '包飞龙', '123456', '512', '16099732137');
INSERT INTO `student` VALUES ('18210180207', '陈玙', '123456', '512', '14943875329');
INSERT INTO `student` VALUES ('18210180214', '胡子裕', '123456', '512', '12135221149');
INSERT INTO `student` VALUES ('18210180229', '潘晓迈', '123456', '512', '1761926234324');
INSERT INTO `student` VALUES ('18210180231', '邵珏如', '123456', '512', '16666283620');
INSERT INTO `student` VALUES ('18210180237', '许德媛', '123456', '512', '19790055796');
INSERT INTO `student` VALUES ('18210938120', '娄雨倩', '123456', '509', '15567722900');
INSERT INTO `student` VALUES ('18211040145', '朱泽楠', '123456', '512', '16012283927');
INSERT INTO `student` VALUES ('18211210228', '潘一航', '123456', '508', '13375062447');
INSERT INTO `student` VALUES ('18211210232', '孙怡', '123456', '511', '16765222741');
INSERT INTO `student` VALUES ('18211457113', '李鑫荣', '123456', '508', '12371361704');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `departmentid` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teacher_department_1` (`departmentid`) USING BTREE,
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2001', '崔元赫', '123456', '201', '15088649553');
INSERT INTO `teacher` VALUES ('2002', '钟昕怡', '123456', '201', '15072171204');
INSERT INTO `teacher` VALUES ('2003', '许倩妮', '123456', '202', '14203054961');
INSERT INTO `teacher` VALUES ('2004', '杨世奕', '123456', '202', '13176510692');
INSERT INTO `teacher` VALUES ('2005', '程雪柔', '123456', '203', '14758271390');
INSERT INTO `teacher` VALUES ('2006', '郑龙', '123456', '203', '12266498801');
INSERT INTO `teacher` VALUES ('2007', '陈慧静', '123456', '204', '10243769547');
INSERT INTO `teacher` VALUES ('2008', '李嘉欢', '123456', '204', '10570015797');
INSERT INTO `teacher` VALUES ('2009', '沈源', '123456', '205', '19694344520');
INSERT INTO `teacher` VALUES ('2010', '叶云丹', '123456', '205', '10911591726');
INSERT INTO `teacher` VALUES ('2011', '楼佳玲', '123456', '206', '19122290661');
INSERT INTO `teacher` VALUES ('2012', '张素弘', '123456', '206', '17381840476');
INSERT INTO `teacher` VALUES ('2013', '龚蕾蕾', '123456', '207', '11368253905');
INSERT INTO `teacher` VALUES ('2014', '王星雅', '123456', '207', '11271907463');
INSERT INTO `teacher` VALUES ('2015', '龚阳', '123456', '208', '11139209153');
INSERT INTO `teacher` VALUES ('2016', '王宏沛', '123456', '208', '14320438334');
INSERT INTO `teacher` VALUES ('2017', '孙定杰', '123456', '209', '14464391997');
INSERT INTO `teacher` VALUES ('2018', '翁佳敏', '123456', '209', '12544757935');
INSERT INTO `teacher` VALUES ('2019', '柳丹妮', '123456', '210', '10111291751');
INSERT INTO `teacher` VALUES ('2020', '叶萍萍', '123456', '210', '18315292209');
INSERT INTO `teacher` VALUES ('2021', '金杨映', '123456', '211', '11889595054');
INSERT INTO `teacher` VALUES ('2022', '林佳瑶', '123456', '211', '15087029299');
INSERT INTO `teacher` VALUES ('2023', '刘斯澳', '123456', '212', '17180676741');
INSERT INTO `teacher` VALUES ('2024', '邱大鸿', '123456', '212', '12814818218');
INSERT INTO `teacher` VALUES ('2025', '陈紫薇', '123456', '213', '19548600077');
INSERT INTO `teacher` VALUES ('2026', '张微', '123456', '213', '17193874686');
INSERT INTO `teacher` VALUES ('2027', '张洪艳', '123456', '214', '11595609653');
INSERT INTO `teacher` VALUES ('2028', '张艺', '123456', '214', '10890513425');
INSERT INTO `teacher` VALUES ('2029', '江作富', '123456', '215', '18446431563');
INSERT INTO `teacher` VALUES ('2030', '梅杨繁', '123456', '215', '14337643169');
INSERT INTO `teacher` VALUES ('2031', '陈欣怡', '123456', '216', '19989786154');
INSERT INTO `teacher` VALUES ('2032', '吴婷琼', '123456', '216', '15594435557');
INSERT INTO `teacher` VALUES ('2033', '尹振浩', '123456', '217', '13538650036');
INSERT INTO `teacher` VALUES ('2034', '詹志翔', '123456', '217', '12930321208');
INSERT INTO `teacher` VALUES ('2035', '王磊', '123456', '218', '15205222989');
INSERT INTO `teacher` VALUES ('2036', '周润雨', '123456', '218', '10239417491');
INSERT INTO `teacher` VALUES ('2037', '王鑫慧', '123456', '219', '15125636380');
INSERT INTO `teacher` VALUES ('2038', '朱云婷', '123456', '219', '12106596979');
INSERT INTO `teacher` VALUES ('2039', '阚壮', '123456', '220', '16661526046');
INSERT INTO `teacher` VALUES ('2040', '唐安宁', '123456', '220', '17700905439');
INSERT INTO `teacher` VALUES ('2041', '康慧慧', '123456', '221', '17423321911');
INSERT INTO `teacher` VALUES ('2042', '王俊恬', '123456', '221', '11093699232');
INSERT INTO `teacher` VALUES ('2043', '钟媛媛', '123456', '222', '14551655075');
INSERT INTO `teacher` VALUES ('2044', '祝诚勇', '123456', '222', '14002627577');
INSERT INTO `teacher` VALUES ('2045', '仇奕霄', '123456', '223', '11767054568');
INSERT INTO `teacher` VALUES ('2046', '王威', '123456', '223', '14118526729');
INSERT INTO `teacher` VALUES ('2047', '代诗波', '123456', '224', '14035341455');
INSERT INTO `teacher` VALUES ('2048', '吴正健', '123456', '224', '12226171296');
INSERT INTO `teacher` VALUES ('2049', '叶晨康', '123456', '225', '12303941213');
INSERT INTO `teacher` VALUES ('2050', '周可心', '123456', '225', '19758754938');
INSERT INTO `teacher` VALUES ('2051', '钱一鸣', '123456', '226', '18146258714');
INSERT INTO `teacher` VALUES ('2052', '袁杰', '123456', '226', '17065491221');
INSERT INTO `teacher` VALUES ('2053', '李宗沄', '123456', '227', '18049257358');
INSERT INTO `teacher` VALUES ('2054', '毛艺雯', '123456', '227', '18541235472');
INSERT INTO `teacher` VALUES ('2055', '楼丽圆', '123456', '228', '18461742382');
INSERT INTO `teacher` VALUES ('2056', '倪千茜', '123456', '228', '18343327276');
INSERT INTO `teacher` VALUES ('2057', '金阿静', '123456', '229', '15493313730');
INSERT INTO `teacher` VALUES ('2058', '康佳欢', '123456', '229', '14828075155');
INSERT INTO `teacher` VALUES ('2059', '陈宇铃', '123456', '230', '16165180748');
INSERT INTO `teacher` VALUES ('2060', '高璐瑶', '123456', '230', '15631466544');
INSERT INTO `teacher` VALUES ('2061', '杜学婷', '123456', '231', '13669281783');
INSERT INTO `teacher` VALUES ('2062', '吴佩琦', '123456', '231', '17077270178');
INSERT INTO `teacher` VALUES ('2063', '陈颖俊', '123456', '232', '13306103750');
INSERT INTO `teacher` VALUES ('2064', '胡天昊', '123456', '232', '16114712885');
INSERT INTO `teacher` VALUES ('2065', '韩影', '123456', '233', '14924300284');
INSERT INTO `teacher` VALUES ('2066', '骆怡平', '123456', '233', '11537763609');
INSERT INTO `teacher` VALUES ('2067', '陈佳晨', '123456', '234', '18315875786');
INSERT INTO `teacher` VALUES ('2068', '徐放', '123456', '234', '18362858156');
INSERT INTO `teacher` VALUES ('2069', '王哲芸', '123456', '235', '11600035019');
INSERT INTO `teacher` VALUES ('2070', '张宗汾', '123456', '235', '12186407586');
INSERT INTO `teacher` VALUES ('2071', '马婷燕', '123456', '236', '18631598469');
INSERT INTO `teacher` VALUES ('2072', '田辉', '123456', '236', '13552979506');
INSERT INTO `teacher` VALUES ('2073', '陈乐翔', '123456', '237', '11709082784');
INSERT INTO `teacher` VALUES ('2074', '吴笑雨', '123456', '237', '17942644533');
INSERT INTO `teacher` VALUES ('2075', '应佳欣', '123456', '238', '11389969694');
INSERT INTO `teacher` VALUES ('2076', '周银浩', '123456', '238', '15334500049');
INSERT INTO `teacher` VALUES ('2077', '孔哲', '123456', '239', '15045012452');
INSERT INTO `teacher` VALUES ('2078', '肖琳莹', '123456', '239', '18121629512');
INSERT INTO `teacher` VALUES ('2079', '陈舒婷', '123456', '240', '12331110424');
INSERT INTO `teacher` VALUES ('2080', '吕俊杰', '123456', '240', '18231509694');
INSERT INTO `teacher` VALUES ('2081', '谢佳莉', '123456', '241', '15610283449');
INSERT INTO `teacher` VALUES ('2082', '余婷婷', '123456', '241', '12817986853');
INSERT INTO `teacher` VALUES ('2083', '陈佳龙', '123456', '241', '19395950786');
INSERT INTO `teacher` VALUES ('2084', '向洋', '123456', '242', '14016562106');
INSERT INTO `teacher` VALUES ('2085', '夏杰浩', '123456', '243', '11484337687');
INSERT INTO `teacher` VALUES ('2086', '赵梦歌', '123456', '243', '12754907139');
INSERT INTO `teacher` VALUES ('2087', '龚温雅', '123456', '244', '17332320052');
INSERT INTO `teacher` VALUES ('2088', '任阳宗', '123456', '244', '17131402849');

-- ----------------------------
-- Table structure for 公告表
-- ----------------------------
DROP TABLE IF EXISTS `公告表`;
CREATE TABLE `公告表` (
  `编号` int(11) NOT NULL AUTO_INCREMENT,
  `内容` varchar(255) DEFAULT NULL,
  `发布者` varchar(255) DEFAULT NULL,
  `发布时间` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`编号`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 公告表
-- ----------------------------
INSERT INTO `公告表` VALUES ('1', '今天是系统发行日，感谢支持！', '战胜', '2020-06-08 11:15:54');
INSERT INTO `公告表` VALUES ('2', '1111333', '宁老师', '2020-06-11 18:14:03');

-- ----------------------------
-- Table structure for 学生表
-- ----------------------------
DROP TABLE IF EXISTS `学生表`;
CREATE TABLE `学生表` (
  `学号` varchar(255) NOT NULL,
  `姓名` varchar(255) DEFAULT NULL,
  `性别` varchar(255) DEFAULT NULL,
  `密码` varchar(255) DEFAULT NULL,
  `找回密码` varchar(255) DEFAULT NULL,
  `学院` varchar(255) DEFAULT NULL,
  `班级` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`学号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 学生表
-- ----------------------------
INSERT INTO `学生表` VALUES ('18211510101', '蔡利巧', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510103', '陈晓强', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510104', '程志伟', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510105', '崔强', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510106', '杜孟豪', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510108', '冯莹', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510109', '何水林', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510110', '何泽浩', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510111', '胡佳倩', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510112', '胡奇鑫', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510113', '怀勤涛', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510114', '黄怿', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510115', '姜霖涛', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510116', '姜倩茜', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510117', '姜译天', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510118', '靳曼', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510119', '廖浩琪', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510120', '刘梦妮', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510122', '卢方庆', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510123', '穆炳韬', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510124', '宁争胜', '男', '123456', '苹果', '计算机学院', '18计本1');
INSERT INTO `学生表` VALUES ('18211510125', '钱坤林', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510126', '邵奕超', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510127', '宋庆龙', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510128', '覃湘霖', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510129', '唐杨怡', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510130', '王红', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510131', '王炯苇', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510132', '王能', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510133', '王一领', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510134', '王子龙', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510135', '卫星驰', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510136', '温馨', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510137', '吴晨', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510138', '吴昊', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510139', '吴思雨', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510140', '谢梁', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510141', '徐慧', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510142', '徐暄妍', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510143', '叶玲', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510144', '叶思洁', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510145', '俞杰铭', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510146', '张凤龙', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510147', '张盛', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510148', '张宗汾', '男', '123456', '苹果', '计算机学院', '18计本3');
INSERT INTO `学生表` VALUES ('18211510149', '章罗峰', '男', '123456', '苹果', '计算机学院', '18计本3');

-- ----------------------------
-- Table structure for 开课表
-- ----------------------------
DROP TABLE IF EXISTS `开课表`;
CREATE TABLE `开课表` (
  `课程号` int(255) NOT NULL AUTO_INCREMENT,
  `课程名` varchar(255) DEFAULT NULL,
  `任课老师` varchar(255) DEFAULT NULL,
  `学分` varchar(255) DEFAULT NULL,
  `学时` varchar(255) DEFAULT NULL,
  `星期几` varchar(255) DEFAULT NULL,
  `第几节` varchar(255) DEFAULT NULL,
  `教室` varchar(255) DEFAULT NULL,
  `平时成绩占比` varchar(255) DEFAULT NULL,
  `期末成绩占比` varchar(255) DEFAULT NULL,
  `评教等级` int(255) unsigned zerofill DEFAULT '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
  `考试时间` varchar(255) DEFAULT NULL,
  `考试地点` varchar(255) DEFAULT NULL,
  `考试形式` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`课程号`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 开课表
-- ----------------------------
INSERT INTO `开课表` VALUES ('1001', '高数', '宁老师', '3', '64', '星期二', '第三大节', '5A-201', '50.0', '50', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009', '2020-6-28', '5A-201', '开卷');
INSERT INTO `开课表` VALUES ('1003', '数据结构', '宁老师', '4', '38', '星期二', '第二大节', '5A-101', '60', '60', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021', '2020-7-1', '5B-110', '闭卷');
INSERT INTO `开课表` VALUES ('1004', '计算机组成原理', '宁老师', '4', '66', '星期一', '第一大节', '1A-109', '60', '90', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', null, null, null);

-- ----------------------------
-- Table structure for 教师表
-- ----------------------------
DROP TABLE IF EXISTS `教师表`;
CREATE TABLE `教师表` (
  `教工号` varchar(255) NOT NULL,
  `姓名` varchar(255) DEFAULT NULL,
  `性别` varchar(255) DEFAULT NULL,
  `密码` varchar(255) DEFAULT NULL,
  `找回密码` varchar(255) DEFAULT NULL,
  `联系方式` varchar(255) DEFAULT NULL,
  `学院` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`教工号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 教师表
-- ----------------------------
INSERT INTO `教师表` VALUES ('1001', '宁老师', '男', '123456', '苹果', '19858735253', '计算机学院');
INSERT INTO `教师表` VALUES ('1003', '宁争胜', '男', '123456', '苹果', '19858735253', '计算机学院');

-- ----------------------------
-- Table structure for 签到表
-- ----------------------------
DROP TABLE IF EXISTS `签到表`;
CREATE TABLE `签到表` (
  `学号` varchar(255) NOT NULL,
  `课程号` varchar(255) NOT NULL,
  `签到时间` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `签到次数` int(255) unsigned zerofill DEFAULT NULL,
  `签到日期` datetime NOT NULL,
  PRIMARY KEY (`学号`,`课程号`,`签到日期`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 签到表
-- ----------------------------
INSERT INTO `签到表` VALUES ('18211510124', '1001', '2020-06-11 18:12:03', null, '2020-06-11 00:00:00');
INSERT INTO `签到表` VALUES ('18211510124', '1001', '2020-06-12 18:03:55', null, '2020-06-12 00:00:00');
INSERT INTO `签到表` VALUES ('18211510124', '1002', '2020-06-08 18:14:00', null, '2020-06-08 00:00:00');
INSERT INTO `签到表` VALUES ('18211510124', '1002', '2020-06-09 21:01:53', null, '2020-06-09 00:00:00');
INSERT INTO `签到表` VALUES ('18211510124', '1003', '2020-06-08 18:14:08', null, '2020-06-08 00:00:00');

-- ----------------------------
-- Table structure for 选课表
-- ----------------------------
DROP TABLE IF EXISTS `选课表`;
CREATE TABLE `选课表` (
  `学号` varchar(255) NOT NULL,
  `课程号` varchar(255) NOT NULL,
  `签到次数` int(255) unsigned zerofill DEFAULT '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
  `平时成绩` float DEFAULT NULL,
  `期末成绩` float DEFAULT NULL,
  `总评` float DEFAULT NULL,
  PRIMARY KEY (`学号`,`课程号`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of 选课表
-- ----------------------------
INSERT INTO `选课表` VALUES ('18211510101', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '60', '70', '65');
INSERT INTO `选课表` VALUES ('18211510101', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '60', '70', '65');
INSERT INTO `选课表` VALUES ('18211510102', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '61', '71', '66');
INSERT INTO `选课表` VALUES ('18211510102', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '61', '71', '66');
INSERT INTO `选课表` VALUES ('18211510103', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '62', '72', '67');
INSERT INTO `选课表` VALUES ('18211510103', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '62', '72', '67');
INSERT INTO `选课表` VALUES ('18211510104', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '63', '73', '68');
INSERT INTO `选课表` VALUES ('18211510104', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '63', '73', '68');
INSERT INTO `选课表` VALUES ('18211510105', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '64', '74', '69');
INSERT INTO `选课表` VALUES ('18211510105', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '64', '74', '69');
INSERT INTO `选课表` VALUES ('18211510106', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '65', '75', '70');
INSERT INTO `选课表` VALUES ('18211510106', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '65', '75', '70');
INSERT INTO `选课表` VALUES ('18211510107', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '66', '76', '71');
INSERT INTO `选课表` VALUES ('18211510107', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '66', '76', '71');
INSERT INTO `选课表` VALUES ('18211510108', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '67', '77', '72');
INSERT INTO `选课表` VALUES ('18211510108', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '67', '77', '72');
INSERT INTO `选课表` VALUES ('18211510109', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '68', '78', '73');
INSERT INTO `选课表` VALUES ('18211510109', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '68', '78', '73');
INSERT INTO `选课表` VALUES ('18211510110', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '69', '79', '74');
INSERT INTO `选课表` VALUES ('18211510110', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '69', '79', '74');
INSERT INTO `选课表` VALUES ('18211510111', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '70', '80', '75');
INSERT INTO `选课表` VALUES ('18211510111', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '70', '80', '75');
INSERT INTO `选课表` VALUES ('18211510112', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '71', '81', '76');
INSERT INTO `选课表` VALUES ('18211510112', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '71', '81', '76');
INSERT INTO `选课表` VALUES ('18211510113', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '72', '82', '77');
INSERT INTO `选课表` VALUES ('18211510113', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '72', '82', '77');
INSERT INTO `选课表` VALUES ('18211510114', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '73', '83', '78');
INSERT INTO `选课表` VALUES ('18211510114', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '73', '83', '78');
INSERT INTO `选课表` VALUES ('18211510115', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '74', '84', '79');
INSERT INTO `选课表` VALUES ('18211510115', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '74', '84', '79');
INSERT INTO `选课表` VALUES ('18211510116', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '75', '85', '80');
INSERT INTO `选课表` VALUES ('18211510116', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '75', '85', '80');
INSERT INTO `选课表` VALUES ('18211510117', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '76', '86', '81');
INSERT INTO `选课表` VALUES ('18211510117', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '76', '86', '81');
INSERT INTO `选课表` VALUES ('18211510118', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '77', '87', '82');
INSERT INTO `选课表` VALUES ('18211510118', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '77', '87', '82');
INSERT INTO `选课表` VALUES ('18211510119', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '78', '88', '83');
INSERT INTO `选课表` VALUES ('18211510119', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '78', '88', '83');
INSERT INTO `选课表` VALUES ('18211510120', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '79', '89', '84');
INSERT INTO `选课表` VALUES ('18211510120', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '79', '89', '84');
INSERT INTO `选课表` VALUES ('18211510121', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '80', '90', '85');
INSERT INTO `选课表` VALUES ('18211510121', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '80', '90', '85');
INSERT INTO `选课表` VALUES ('18211510122', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '81', '91', '86');
INSERT INTO `选课表` VALUES ('18211510122', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '81', '91', '86');
INSERT INTO `选课表` VALUES ('18211510123', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '82', '92', '87');
INSERT INTO `选课表` VALUES ('18211510123', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '82', '92', '87');
INSERT INTO `选课表` VALUES ('18211510124', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', null, null, null);
INSERT INTO `选课表` VALUES ('18211510124', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', null, null, null);
INSERT INTO `选课表` VALUES ('18211510125', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '84', '71', '66');
INSERT INTO `选课表` VALUES ('18211510125', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '84', '71', '66');
INSERT INTO `选课表` VALUES ('18211510126', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '85', '72', '67');
INSERT INTO `选课表` VALUES ('18211510126', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '85', '72', '67');
INSERT INTO `选课表` VALUES ('18211510127', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '86', '73', '68');
INSERT INTO `选课表` VALUES ('18211510127', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '86', '73', '68');
INSERT INTO `选课表` VALUES ('18211510128', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '87', '74', '69');
INSERT INTO `选课表` VALUES ('18211510128', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '87', '74', '69');
INSERT INTO `选课表` VALUES ('18211510129', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '88', '75', '70');
INSERT INTO `选课表` VALUES ('18211510129', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '88', '75', '70');
INSERT INTO `选课表` VALUES ('18211510130', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '89', '76', '71');
INSERT INTO `选课表` VALUES ('18211510130', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '89', '76', '71');
INSERT INTO `选课表` VALUES ('18211510131', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '90', '77', '72');
INSERT INTO `选课表` VALUES ('18211510131', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '90', '77', '72');
INSERT INTO `选课表` VALUES ('18211510132', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '91', '78', '73');
INSERT INTO `选课表` VALUES ('18211510132', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '91', '78', '73');
INSERT INTO `选课表` VALUES ('18211510133', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '92', '79', '74');
INSERT INTO `选课表` VALUES ('18211510133', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '92', '79', '74');
INSERT INTO `选课表` VALUES ('18211510134', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '93', '80', '75');
INSERT INTO `选课表` VALUES ('18211510134', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '93', '80', '75');
INSERT INTO `选课表` VALUES ('18211510135', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '94', '81', '76');
INSERT INTO `选课表` VALUES ('18211510135', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '94', '81', '76');
INSERT INTO `选课表` VALUES ('18211510136', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '95', '82', '77');
INSERT INTO `选课表` VALUES ('18211510136', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '95', '82', '77');
INSERT INTO `选课表` VALUES ('18211510137', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '96', '83', '78');
INSERT INTO `选课表` VALUES ('18211510137', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '96', '83', '78');
INSERT INTO `选课表` VALUES ('18211510138', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '97', '84', '79');
INSERT INTO `选课表` VALUES ('18211510138', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '97', '84', '79');
INSERT INTO `选课表` VALUES ('18211510139', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '98', '85', '80');
INSERT INTO `选课表` VALUES ('18211510139', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '98', '85', '80');
INSERT INTO `选课表` VALUES ('18211510140', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '91', '86', '81');
INSERT INTO `选课表` VALUES ('18211510140', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '91', '86', '81');
INSERT INTO `选课表` VALUES ('18211510141', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '92', '87', '82');
INSERT INTO `选课表` VALUES ('18211510141', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '92', '87', '82');
INSERT INTO `选课表` VALUES ('18211510142', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '93', '88', '83');
INSERT INTO `选课表` VALUES ('18211510142', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '93', '88', '83');
INSERT INTO `选课表` VALUES ('18211510143', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '94', '89', '84');
INSERT INTO `选课表` VALUES ('18211510143', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '94', '89', '84');
INSERT INTO `选课表` VALUES ('18211510144', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '95', '90', '85');
INSERT INTO `选课表` VALUES ('18211510144', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '95', '90', '85');
INSERT INTO `选课表` VALUES ('18211510145', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '96', '91', '86');
INSERT INTO `选课表` VALUES ('18211510145', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '96', '91', '86');
INSERT INTO `选课表` VALUES ('18211510146', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '97', '92', '87');
INSERT INTO `选课表` VALUES ('18211510146', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '97', '92', '87');
INSERT INTO `选课表` VALUES ('18211510147', '1001', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '98', '99', '86');
INSERT INTO `选课表` VALUES ('18211510147', '1003', '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000', '98', '99', '86');
DROP TRIGGER IF EXISTS `before`;
DELIMITER ;;
CREATE TRIGGER `before` BEFORE INSERT ON `notice` FOR EACH ROW begin
  set new.time=NOW();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert`;
DELIMITER ;;
CREATE TRIGGER `insert` BEFORE INSERT ON `sc` FOR EACH ROW begin

set new.selecttime=NOW();

end
;;
DELIMITER ;
