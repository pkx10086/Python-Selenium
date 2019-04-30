/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : lottery_ticket

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-04-30 17:34:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for td_double_color_ball
-- ----------------------------
DROP TABLE IF EXISTS `td_double_color_ball`;
CREATE TABLE `td_double_color_ball` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(25) NOT NULL COMMENT '期数',
  `result_red` varchar(25) NOT NULL COMMENT '开奖结果红球',
  `result_blue` varchar(2) NOT NULL COMMENT '开奖结果篮球',
  `result_date` varchar(26) NOT NULL COMMENT '开奖日期',
  `order_ball` varchar(255) DEFAULT NULL COMMENT '出球顺序',
  `create_date` varchar(22) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of td_double_color_ball
-- ----------------------------
INSERT INTO `td_double_color_ball` VALUES ('33', '19044', '06-14-16-17-23-29', '07', '2019-04-18', '1', '2019-04-30 17:29:20');
INSERT INTO `td_double_color_ball` VALUES ('34', '19043', '01-06-12-13-24-32', '13', '2019-04-16', '1', '2019-04-30 17:29:21');
INSERT INTO `td_double_color_ball` VALUES ('35', '19042', '15-17-19-22-25-26', '04', '2019-04-14', '1', '2019-04-30 17:29:21');
INSERT INTO `td_double_color_ball` VALUES ('36', '19041', '02-09-13-23-24-26', '16', '2019-04-11', '1', '2019-04-30 17:29:23');
INSERT INTO `td_double_color_ball` VALUES ('37', '19040', '05-06-09-18-23-31', '11', '2019-04-09', '1', '2019-04-30 17:29:24');
INSERT INTO `td_double_color_ball` VALUES ('38', '19039', '06-07-11-14-27-32', '08', '2019-04-07', '1', '2019-04-30 17:29:25');
INSERT INTO `td_double_color_ball` VALUES ('39', '19038', '09-12-21-27-29-30', '05', '2019-04-04', '1', '2019-04-30 17:29:25');
INSERT INTO `td_double_color_ball` VALUES ('40', '19037', '01-07-12-14-18-25', '10', '2019-04-02', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('41', '19036', '02-10-13-16-23-32', '08', '2019-03-31', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('42', '19035', '01-05-07-09-10-20', '16', '2019-03-28', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('43', '19034', '09-11-15-22-24-26', '03', '2019-03-26', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('44', '19033', '09-15-19-21-23-29', '15', '2019-03-24', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('45', '19032', '04-08-09-13-28-33', '04', '2019-03-21', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('46', '19031', '03-13-15-18-21-33', '16', '2019-03-19', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('47', '19030', '04-05-07-10-12-22', '16', '2019-03-17', '1', '2019-04-30 17:29:27');
INSERT INTO `td_double_color_ball` VALUES ('48', '19029', '08-11-17-23-32-33', '10', '2019-03-14', '1', '2019-04-30 17:29:28');
INSERT INTO `td_double_color_ball` VALUES ('49', '19028', '04-19-22-26-29-30', '11', '2019-03-12', '1', '2019-04-30 17:29:29');
INSERT INTO `td_double_color_ball` VALUES ('50', '19027', '02-06-08-10-11-17', '13', '2019-03-10', '1', '2019-04-30 17:29:30');
INSERT INTO `td_double_color_ball` VALUES ('51', '19026', '03-13-15-19-20-27', '14', '2019-03-07', '1', '2019-04-30 17:29:31');
INSERT INTO `td_double_color_ball` VALUES ('52', '19025', '15-16-21-27-30-33', '04', '2019-03-05', '1', '2019-04-30 17:29:32');
INSERT INTO `td_double_color_ball` VALUES ('53', '19024', '01-08-23-25-28-29', '10', '2019-03-03', '1', '2019-04-30 17:29:33');
INSERT INTO `td_double_color_ball` VALUES ('54', '19023', '01-10-14-15-18-31', '13', '2019-02-28', '1', '2019-04-30 17:29:33');
INSERT INTO `td_double_color_ball` VALUES ('55', '19022', '03-07-11-21-30-33', '07', '2019-02-26', '1', '2019-04-30 17:29:33');
INSERT INTO `td_double_color_ball` VALUES ('56', '19021', '02-05-07-08-20-27', '04', '2019-02-24', '1', '2019-04-30 17:29:33');
INSERT INTO `td_double_color_ball` VALUES ('57', '19020', '02-12-13-23-27-28', '12', '2019-02-21', '1', '2019-04-30 17:29:33');
INSERT INTO `td_double_color_ball` VALUES ('58', '19019', '03-11-17-18-24-25', '06', '2019-02-19', '1', '2019-04-30 17:29:33');
INSERT INTO `td_double_color_ball` VALUES ('59', '19018', '04-11-18-19-26-32', '04', '2019-02-17', '1', '2019-04-30 17:30:00');
INSERT INTO `td_double_color_ball` VALUES ('60', '19017', '04-05-24-28-30-33', '09', '2019-02-14', '1', '2019-04-30 17:30:00');
INSERT INTO `td_double_color_ball` VALUES ('61', '19016', '05-07-09-11-19-25', '05', '2019-02-12', '1', '2019-04-30 17:30:00');
INSERT INTO `td_double_color_ball` VALUES ('62', '19015', '11-15-16-20-24-31', '04', '2019-02-03', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('63', '19014', '01-02-03-14-19-33', '03', '2019-01-31', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('64', '19013', '05-07-14-16-18-21', '01', '2019-01-29', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('65', '19012', '07-10-21-23-31-33', '14', '2019-01-27', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('66', '19011', '10-13-19-21-24-30', '07', '2019-01-24', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('67', '19010', '02-04-05-08-11-30', '02', '2019-01-22', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('68', '19009', '01-07-10-22-31-32', '15', '2019-01-20', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('69', '19008', '02-06-09-13-28-32', '12', '2019-01-17', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('70', '19007', '06-10-14-15-19-23', '15', '2019-01-15', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('71', '19006', '01-05-10-19-26-28', '12', '2019-01-13', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('72', '19005', '21-22-26-28-31-32', '07', '2019-01-10', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('73', '19004', '08-12-16-19-26-32', '03', '2019-01-08', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('74', '19003', '13-17-20-21-22-27', '01', '2019-01-06', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('75', '19002', '04-05-06-08-09-18', '11', '2019-01-03', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('76', '19001', '06-10-13-15-32-33', '15', '2019-01-01', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('77', '18153', '01-07-17-23-25-31', '11', '2018-12-30', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('78', '18152', '04-14-16-23-28-29', '03', '2018-12-27', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('79', '18151', '05-15-19-25-26-29', '15', '2018-12-25', '1', '2019-04-30 17:30:01');
INSERT INTO `td_double_color_ball` VALUES ('80', '18150', '06-08-15-19-20-31', '05', '2018-12-23', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('81', '18149', '01-07-08-10-12-24', '01', '2018-12-20', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('82', '18148', '03-06-18-19-21-31', '01', '2018-12-18', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('83', '18147', '03-15-17-23-27-30', '11', '2018-12-16', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('84', '18146', '02-10-11-17-18-29', '16', '2018-12-13', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('85', '18145', '03-09-13-22-23-25', '06', '2018-12-11', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('86', '18144', '08-13-17-18-20-27', '13', '2018-12-09', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('87', '18143', '04-06-15-28-32-33', '14', '2018-12-06', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('88', '18142', '05-08-10-11-27-28', '11', '2018-12-04', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('89', '18141', '11-14-16-18-24-33', '04', '2018-12-02', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('90', '18140', '01-15-20-22-25-28', '14', '2018-11-29', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('91', '18139', '11-18-20-23-31-32', '15', '2018-11-27', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('92', '18138', '01-10-25-27-30-32', '09', '2018-11-25', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('93', '18137', '03-05-11-15-20-23', '09', '2018-11-22', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('94', '18136', '10-12-15-25-26-27', '14', '2018-11-20', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('95', '18135', '01-03-06-10-11-29', '16', '2018-11-18', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('96', '18134', '03-16-18-31-32-33', '12', '2018-11-15', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('97', '18133', '02-04-11-12-18-32', '13', '2018-11-13', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('98', '18132', '01-02-09-10-15-22', '06', '2018-11-11', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('99', '18131', '21-22-24-31-32-33', '01', '2018-11-08', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('100', '18130', '05-12-17-18-24-28', '12', '2018-11-06', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('101', '18129', '02-04-06-16-18-19', '16', '2018-11-04', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('102', '18128', '06-07-08-19-22-23', '02', '2018-11-01', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('103', '18127', '02-05-06-07-11-15', '12', '2018-10-30', '1', '2019-04-30 17:30:02');
INSERT INTO `td_double_color_ball` VALUES ('104', '18126', '01-06-08-09-14-22', '05', '2018-10-28', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('105', '18125', '03-10-11-14-15-32', '02', '2018-10-25', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('106', '18124', '09-13-14-19-22-25', '02', '2018-10-23', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('107', '18123', '13-21-24-27-31-32', '01', '2018-10-21', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('108', '18122', '05-07-20-22-30-32', '10', '2018-10-18', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('109', '18121', '06-08-14-19-23-25', '11', '2018-10-16', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('110', '18120', '03-04-18-26-27-33', '01', '2018-10-14', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('111', '18119', '03-13-14-16-25-27', '12', '2018-10-11', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('112', '18118', '08-12-21-22-27-31', '09', '2018-10-09', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('113', '18117', '08-11-15-17-23-25', '05', '2018-10-07', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('114', '18116', '05-14-17-22-23-28', '15', '2018-10-04', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('115', '18115', '01-13-19-24-26-29', '11', '2018-10-02', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('116', '18114', '01-07-15-16-20-27', '14', '2018-09-30', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('117', '18113', '01-06-09-16-25-26', '09', '2018-09-27', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('118', '18112', '05-08-18-25-26-31', '04', '2018-09-25', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('119', '18111', '01-07-14-24-25-28', '08', '2018-09-23', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('120', '18110', '11-13-16-21-22-23', '02', '2018-09-20', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('121', '18109', '10-11-18-23-31-33', '15', '2018-09-18', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('122', '18108', '05-13-18-21-26-30', '02', '2018-09-16', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('123', '18107', '01-02-05-12-20-22', '01', '2018-09-13', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('124', '18106', '04-18-19-24-25-26', '10', '2018-09-11', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('125', '18105', '04-05-13-18-19-25', '01', '2018-09-09', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('126', '18104', '02-03-06-19-25-29', '01', '2018-09-06', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('127', '18103', '02-09-15-22-23-24', '16', '2018-09-04', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('128', '18102', '02-06-11-19-21-28', '05', '2018-09-02', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('129', '18101', '01-03-14-26-29-33', '09', '2018-08-30', '1', '2019-04-30 17:30:03');
INSERT INTO `td_double_color_ball` VALUES ('130', '18100', '02-11-14-15-29-33', '02', '2018-08-28', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('131', '18099', '03-07-08-14-25-32', '06', '2018-08-26', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('132', '18098', '06-10-11-20-29-32', '13', '2018-08-23', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('133', '18097', '01-02-17-20-25-28', '13', '2018-08-21', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('134', '18096', '01-05-09-20-28-32', '12', '2018-08-19', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('135', '18095', '10-11-12-21-26-33', '09', '2018-08-16', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('136', '18094', '04-07-16-20-24-30', '05', '2018-08-14', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('137', '18093', '04-18-20-21-29-33', '07', '2018-08-12', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('138', '18092', '06-10-16-19-24-33', '16', '2018-08-09', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('139', '18091', '06-11-13-17-25-32', '07', '2018-08-07', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('140', '18090', '01-02-04-10-14-23', '07', '2018-08-05', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('141', '18089', '06-09-12-14-18-27', '14', '2018-08-02', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('142', '18088', '03-05-12-29-30-32', '14', '2018-07-31', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('143', '18087', '01-05-10-16-18-31', '03', '2018-07-29', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('144', '18086', '02-07-17-21-23-26', '16', '2018-07-26', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('145', '18085', '04-10-25-26-30-33', '06', '2018-07-24', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('146', '18084', '05-06-08-12-22-24', '03', '2018-07-22', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('147', '18083', '04-09-18-21-32-33', '03', '2018-07-19', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('148', '18082', '06-12-14-20-22-24', '09', '2018-07-17', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('149', '18081', '01-02-12-16-20-26', '03', '2018-07-15', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('150', '18080', '04-07-13-20-29-33', '03', '2018-07-12', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('151', '18079', '14-15-17-22-24-29', '13', '2018-07-10', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('152', '18078', '03-10-14-17-18-30', '12', '2018-07-08', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('153', '18077', '02-05-09-15-20-24', '10', '2018-07-05', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('154', '18076', '03-07-08-15-29-30', '13', '2018-07-03', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('155', '18075', '07-09-12-13-22-24', '11', '2018-07-01', '1', '2019-04-30 17:30:04');
INSERT INTO `td_double_color_ball` VALUES ('156', '18074', '09-11-14-20-27-30', '09', '2018-06-28', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('157', '18073', '02-09-14-15-16-23', '10', '2018-06-26', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('158', '18072', '11-16-19-22-25-30', '08', '2018-06-24', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('159', '18071', '02-05-06-13-16-19', '03', '2018-06-21', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('160', '18070', '04-09-15-16-19-27', '10', '2018-06-19', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('161', '18069', '06-13-17-19-23-31', '12', '2018-06-17', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('162', '18068', '08-10-17-20-27-30', '01', '2018-06-14', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('163', '18067', '01-04-09-12-15-18', '05', '2018-06-12', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('164', '18066', '09-16-17-19-22-26', '10', '2018-06-10', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('165', '18065', '01-04-06-14-28-33', '01', '2018-06-07', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('166', '18064', '02-05-10-11-17-21', '05', '2018-06-05', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('167', '18063', '05-06-10-16-20-25', '12', '2018-06-03', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('168', '18062', '02-18-19-24-25-33', '11', '2018-05-31', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('169', '18061', '09-10-11-12-18-23', '07', '2018-05-29', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('170', '18060', '04-08-13-25-30-31', '10', '2018-05-27', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('171', '18059', '04-06-08-13-22-32', '11', '2018-05-24', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('172', '18058', '07-12-13-16-26-31', '07', '2018-05-22', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('173', '18057', '05-15-17-19-20-30', '13', '2018-05-20', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('174', '18056', '01-03-06-20-21-26', '01', '2018-05-17', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('175', '18055', '07-09-10-12-22-26', '07', '2018-05-15', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('176', '18054', '04-06-18-22-25-33', '16', '2018-05-13', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('177', '18053', '01-04-10-11-14-27', '06', '2018-05-10', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('178', '18052', '03-05-06-09-15-32', '14', '2018-05-08', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('179', '18051', '05-07-20-23-27-31', '04', '2018-05-06', '1', '2019-04-30 17:30:05');
INSERT INTO `td_double_color_ball` VALUES ('180', '18050', '01-02-04-10-18-19', '07', '2018-05-03', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('181', '18049', '01-03-04-11-19-23', '02', '2018-05-01', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('182', '18048', '01-12-20-25-30-31', '02', '2018-04-29', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('183', '18047', '06-07-12-16-22-25', '07', '2018-04-26', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('184', '18046', '10-13-14-18-20-31', '03', '2018-04-24', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('185', '18045', '03-04-06-25-26-30', '01', '2018-04-22', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('186', '18044', '05-09-12-17-27-30', '06', '2018-04-19', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('187', '18043', '01-04-06-08-21-24', '07', '2018-04-17', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('188', '18042', '06-10-21-28-29-31', '12', '2018-04-15', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('189', '18041', '07-08-20-23-24-32', '13', '2018-04-12', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('190', '18040', '01-03-08-13-18-23', '16', '2018-04-10', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('191', '18039', '08-12-18-19-23-32', '03', '2018-04-08', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('192', '18038', '15-23-24-25-28-29', '09', '2018-04-05', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('193', '18037', '01-06-07-08-27-30', '10', '2018-04-03', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('194', '18036', '08-17-24-26-28-33', '04', '2018-04-01', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('195', '18035', '07-10-11-17-23-28', '15', '2018-03-29', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('196', '18034', '01-05-11-22-23-26', '15', '2018-03-27', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('197', '18033', '04-19-20-22-28-33', '06', '2018-03-25', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('198', '18032', '21-22-23-24-25-32', '06', '2018-03-22', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('199', '18031', '02-16-18-19-27-30', '14', '2018-03-20', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('200', '18030', '13-14-20-21-25-33', '07', '2018-03-18', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('201', '18029', '01-02-09-14-22-25', '05', '2018-03-15', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('202', '18028', '03-08-11-14-18-23', '16', '2018-03-13', '1', '2019-04-30 17:30:06');
INSERT INTO `td_double_color_ball` VALUES ('203', '18027', '02-07-09-14-18-28', '05', '2018-03-11', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('204', '18026', '04-07-12-14-26-32', '04', '2018-03-08', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('205', '18025', '04-13-16-19-21-25', '14', '2018-03-06', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('206', '18024', '11-19-22-26-31-32', '02', '2018-03-04', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('207', '18023', '12-15-16-21-26-29', '16', '2018-03-01', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('208', '18022', '07-14-19-21-22-23', '03', '2018-02-27', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('209', '18021', '03-04-06-11-23-28', '14', '2018-02-25', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('210', '18020', '06-09-10-14-28-30', '05', '2018-02-22', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('211', '18019', '03-11-12-16-21-23', '09', '2018-02-13', '1', '2019-04-30 17:30:07');
INSERT INTO `td_double_color_ball` VALUES ('212', '18018', '02-12-13-18-25-27', '07', '2018-02-11', '1', '2019-04-30 17:30:07');
