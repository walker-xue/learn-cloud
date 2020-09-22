/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : course_wechat

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-06-10 00:14:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acl_app_log
-- ----------------------------
DROP TABLE IF EXISTS `acl_app_log`;
CREATE TABLE `acl_app_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `resource_type` varchar(255) DEFAULT NULL COMMENT '资源类型',
  `resource_ids` varchar(255) DEFAULT NULL COMMENT '资源Id',
  `operate_user_id` varchar(20) DEFAULT NULL COMMENT '操作用户',
  `operate_type` varchar(20) DEFAULT NULL COMMENT '操作类型',
  `operate_sub_type` varchar(11) DEFAULT NULL,
  `param` varchar(4000) DEFAULT NULL COMMENT '参数',
  `operate_time` datetime NOT NULL COMMENT '操作时间',
  `operate_user_name` varchar(20) DEFAULT NULL COMMENT '操作用户',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_app_log
-- ----------------------------
INSERT INTO `acl_app_log` VALUES ('4', 'function', '7', '67', '1', null, '{\"functId\":0,\"title\":\"发送\",\"icon\":\"md-cog\",\"code\":\"send\"}', '2019-04-02 17:14:17', null);
INSERT INTO `acl_app_log` VALUES ('5', 'function', '8', '67', '1', null, '{\"functId\":0,\"title\":\"同步\",\"icon\":\"md-cog\",\"code\":\"sync\"}', '2019-04-02 17:19:49', null);
INSERT INTO `acl_app_log` VALUES ('6', 'function', '9', '67', '1', null, '{\"functId\":0,\"title\":\"启动\",\"icon\":\"md-cog\",\"code\":\"startup\"}', '2019-04-02 17:37:28', 'xueyanjun');
INSERT INTO `acl_app_log` VALUES ('7', 'course', '2', '67', 'add', null, '{\"title\":\"测试\",\"buildTime\":\"2019-05-11T15:44:04.130Z\",\"description\":\"234234\",\"classHour\":\"234234\",\"lecturer\":\"234\",\"liveUrl\":\"24234\",\"commentaryUser\":\"234234\",\"commentaryUrl\":\"234234\"}', '2019-05-11 16:18:52', '南风');
INSERT INTO `acl_app_log` VALUES ('8', 'course', '3', '67', 'add', null, '{\"title\":\"测试\",\"buildTime\":\"2019-05-12T03:25:09.729Z\",\"description\":\"23423\",\"classHour\":\"234234\",\"lecturer\":\"23423\",\"liveUrl\":\"23423\",\"commentaryUser\":\"234234\",\"commentaryUrl\":\"234234\"}', '2019-05-12 03:25:49', '南风');
INSERT INTO `acl_app_log` VALUES ('9', 'goods', '17', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-08T16:42:59.083Z\",\"2019-06-25T16:42:59.083Z\"],\"originalPrice\":22,\"promotePrice\":22,\"description\":\"22\",\"upTime\":\"2019-05-08T16:42:59.083Z\",\"offTime\":\"2019-06-25T16:42:59.083Z\"}', '2019-05-17 16:45:10', '南风');
INSERT INTO `acl_app_log` VALUES ('10', 'goods', '18', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程223\",\"buildTime\":[\"2019-05-08T16:42:59.083Z\",\"2019-06-25T16:42:59.083Z\"],\"originalPrice\":22,\"promotePrice\":22,\"description\":\"22\",\"upTime\":\"2019-05-08T16:42:59.083Z\",\"offTime\":\"2019-06-25T16:42:59.083Z\"}', '2019-05-17 16:45:23', '南风');
INSERT INTO `acl_app_log` VALUES ('11', 'goods', '19', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程223\",\"buildTime\":[\"2019-05-08T16:42:59.083Z\",\"2019-06-25T16:42:59.083Z\"],\"originalPrice\":22,\"promotePrice\":22,\"description\":\"2223423423\",\"upTime\":\"2019-05-08T16:42:59.083Z\",\"offTime\":\"2019-06-25T16:42:59.083Z\"}', '2019-05-17 16:45:25', '南风');
INSERT INTO `acl_app_log` VALUES ('12', 'goods', '23', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223\",\"buildTime\":[\"2019-05-08T16:42:59.083Z\",\"2019-06-25T16:42:59.083Z\"],\"originalPrice\":22,\"promotePrice\":22,\"description\":\"快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223\",\"upTime\":\"2019-05-08T16:42:59.083Z\",\"offTime\":\"2019-06-25T16:42:59.083Z\"}', '2019-05-17 16:47:19', '南风');
INSERT INTO `acl_app_log` VALUES ('13', 'goods', '24', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-23T16:48:58.824Z\",\"2019-06-19T16:48:58.824Z\"],\"originalPrice\":23,\"promotePrice\":100,\"description\":\"23423423\",\"upTime\":\"2019-05-23T16:48:58.824Z\",\"offTime\":\"2019-06-19T16:48:58.824Z\"}', '2019-05-17 16:49:11', '南风');
INSERT INTO `acl_app_log` VALUES ('14', 'goods', '25', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-13T16:50:14.896Z\",\"2019-06-17T16:50:14.896Z\"],\"originalPrice\":100,\"promotePrice\":100,\"description\":\"234234\",\"upTime\":\"2019-05-13T16:50:14.896Z\",\"offTime\":\"2019-06-17T16:50:14.896Z\"}', '2019-05-17 16:50:27', '南风');
INSERT INTO `acl_app_log` VALUES ('15', 'goods', '26', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-23T16:53:17.507Z\",\"2019-06-20T16:53:17.507Z\"],\"originalPrice\":23,\"promotePrice\":23,\"description\":\"2323\",\"upTime\":\"2019-05-23T16:53:17.507Z\",\"offTime\":\"2019-06-20T16:53:17.507Z\"}', '2019-05-17 16:53:35', '南风');
INSERT INTO `acl_app_log` VALUES ('16', 'goods', '27', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-19T02:54:58.464Z\",\"2019-06-14T02:54:58.464Z\"],\"originalPrice\":100,\"promotePrice\":100,\"description\":\"234234234\",\"upTime\":\"2019-05-19T02:54:58.464Z\",\"offTime\":\"2019-06-14T02:54:58.464Z\"}', '2019-05-18 02:55:14', '南风');
INSERT INTO `acl_app_log` VALUES ('17', 'goods', '28', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:01:46', '南风');
INSERT INTO `acl_app_log` VALUES ('18', 'goods', '29', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"33322222222222\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:02:13', '南风');
INSERT INTO `acl_app_log` VALUES ('19', 'goods', '30', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333222222222224444444444444444\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:03:00', '南风');
INSERT INTO `acl_app_log` VALUES ('20', 'goods', '31', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333222222222224444444444444444\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:03:11', '南风');
INSERT INTO `acl_app_log` VALUES ('21', 'goods', '32', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333222222222224444444444444444\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:03:20', '南风');
INSERT INTO `acl_app_log` VALUES ('22', 'goods', '33', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2eeeeeeeeeeeeeeeeeee\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333222222222224444444444444444\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:03:31', '南风');
INSERT INTO `acl_app_log` VALUES ('24', 'goods', '35', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2eeeeeeeeeeeeeeeeeeeeee\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333222222222224444444444444444\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:03:50', '南风');
INSERT INTO `acl_app_log` VALUES ('25', 'goods', '36', '67', 'add', null, '{\"goodsType\":\"courseeeeeeeeeee\",\"title\":\"快乐课程2eeeeeeeeeeeeeeeeeeeeee\",\"buildTime\":[\"2019-05-17T03:01:30.479Z\",\"2019-06-15T03:01:30.479Z\"],\"originalPrice\":33,\"promotePrice\":33,\"description\":\"333222222222224444444444444444\",\"upTime\":\"2019-05-17T03:01:30.479Z\",\"offTime\":\"2019-06-15T03:01:30.479Z\"}', '2019-05-18 03:04:02', '南风');
INSERT INTO `acl_app_log` VALUES ('27', 'goods', '38', '67', 'add', null, '{\"goodsType\":\"course\",\"title\":\"快乐课程2\",\"buildTime\":[\"2019-05-17T03:34:52.520Z\",\"2019-06-20T03:34:52.520Z\"],\"originalPrice\":22,\"promotePrice\":100,\"description\":\"222222222222222\",\"upTime\":\"2019-05-17T03:34:52.520Z\",\"offTime\":\"2019-06-20T03:34:52.520Z\"}', '2019-05-18 03:35:07', '南风');
INSERT INTO `acl_app_log` VALUES ('28', 'navbar', '67', '67', 'deletes', null, '67', '2019-05-28 13:13:27', '南风');
INSERT INTO `acl_app_log` VALUES ('29', 'navbar', '67', '67', 'deletes', null, '67', '2019-05-28 13:14:38', '南风');
INSERT INTO `acl_app_log` VALUES ('30', 'navbar', '67', '67', 'deletes', null, '67', '2019-05-28 13:20:55', '南风');
INSERT INTO `acl_app_log` VALUES ('31', 'navbar', '67', '67', 'deletes', null, '67', '2019-05-28 13:30:37', '南风');
INSERT INTO `acl_app_log` VALUES ('32', 'navbar', '67', '67', 'deletes', null, '67', '2019-05-28 13:31:30', '南风');
INSERT INTO `acl_app_log` VALUES ('33', 'navbar', '67', '67', 'deletes', null, '67', '2019-05-28 13:34:45', '南风');
INSERT INTO `acl_app_log` VALUES ('34', 'navbar', '[\"184\"]', '67', 'deletes', null, '[\"184\"]', '2019-05-28 14:22:21', '南风');
INSERT INTO `acl_app_log` VALUES ('35', 'navbar', '[\"187\"]', '67', 'deletes', null, '[\"187\"]', '2019-05-28 14:23:49', '南风');
INSERT INTO `acl_app_log` VALUES ('36', 'navbar', '[\"188\"]', '67', 'deletes', null, '[\"188\"]', '2019-05-28 14:26:12', '南风');
INSERT INTO `acl_app_log` VALUES ('37', 'navbar', '[\"188\"]', '67', 'deletes', null, '[\"188\"]', '2019-05-28 14:27:11', '南风');
INSERT INTO `acl_app_log` VALUES ('38', 'navbar', '[\"188\"]', '67', 'deletes', null, '[\"188\"]', '2019-05-28 14:28:09', '南风');
INSERT INTO `acl_app_log` VALUES ('39', 'navbar', '[\"187\"]', '67', 'deletes', null, '[\"187\"]', '2019-05-28 14:35:16', '南风');
INSERT INTO `acl_app_log` VALUES ('40', 'navbar', '[\"186\"]', '67', 'deletes', null, '[\"186\"]', '2019-05-28 14:39:49', '南风');
INSERT INTO `acl_app_log` VALUES ('41', 'navbar', 'null', '67', 'modify', null, '{\"title\":\"系统管理\",\"path\":\"/system\",\"navbarCode\":\"system\",\"effStatus\":\"A\",\"seqNo\":700,\"remarks\":\"22222\"}', '2019-05-28 15:01:34', '南风');
INSERT INTO `acl_app_log` VALUES ('42', 'navbar', '189', '67', 'modify', null, '{\"title\":\"代码生成\",\"path\":\"/dev/code\",\"navbarCode\":\"dev_code2\",\"effStatus\":\"A\",\"seqNo\":10,\"remarks\":\"22222222222222222222\",\"navbarId\":\"189\"}', '2019-05-28 15:03:54', '南风');
INSERT INTO `acl_app_log` VALUES ('43', 'navbar', '[\"194\"]', '67', 'deletes', null, '[\"194\"]', '2019-05-28 16:16:51', '南风');
INSERT INTO `acl_app_log` VALUES ('44', 'navbar', '189', '67', 'modify', null, '{\"title\":\"代码生成\",\"path\":\"/dev/code\",\"navbarCode\":\"dev_code2\",\"effStatus\":false,\"seqNo\":10,\"remarks\":\"22222222222222222222\",\"navbarId\":\"189\"}', '2019-05-28 16:17:04', '南风');
INSERT INTO `acl_app_log` VALUES ('45', 'navbar', '[\"154\"]', '67', 'deletes', null, '[\"154\"]', '2019-05-28 17:20:14', '南风');
INSERT INTO `acl_app_log` VALUES ('46', 'navbar', '141', '67', 'modify', null, '{\"title\":\"通知管理\",\"path\":\"/system/notice\",\"navbarCode\":\"system_notice\",\"effStatus\":false,\"seqNo\":100,\"remarks\":\"\",\"navbarId\":\"141\"}', '2019-06-02 09:03:11', '南风');
INSERT INTO `acl_app_log` VALUES ('47', 'navbar', '141', '67', 'modify', null, '{\"title\":\"通知管理\",\"path\":\"/system/notice\",\"navbarCode\":\"system_notice\",\"effStatus\":false,\"seqNo\":100,\"remarks\":\"\",\"navbarId\":\"141\"}', '2019-06-02 09:09:37', '南风');
INSERT INTO `acl_app_log` VALUES ('48', 'role', 'null', '67', 'modify', null, '{\"roleName\":\"系统管理员2\",\"remarks\":\"系统超级管理员\",\"navbarId\":\"1\"}', '2019-06-02 10:29:44', '南风');
INSERT INTO `acl_app_log` VALUES ('49', 'role', 'null', '67', 'modify', null, '{\"roleName\":\"系统管理员2\",\"remarks\":\"系统超级管理员\",\"navbarId\":\"1\"}', '2019-06-02 10:30:34', '南风');
INSERT INTO `acl_app_log` VALUES ('50', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员\",\"remarks\":\"系统超级管理员\",\"roleId\":\"1\"}', '2019-06-02 10:42:21', '南风');
INSERT INTO `acl_app_log` VALUES ('51', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员2\",\"remarks\":\"系统超级管理员\",\"roleId\":\"1\"}', '2019-06-02 10:42:29', '南风');
INSERT INTO `acl_app_log` VALUES ('52', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员25\",\"remarks\":\"系统超级管理员\",\"roleId\":\"1\"}', '2019-06-02 10:43:19', '南风');
INSERT INTO `acl_app_log` VALUES ('53', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员\",\"remarks\":\"系统超级管理员\",\"roleId\":\"1\"}', '2019-06-02 10:46:04', '南风');
INSERT INTO `acl_app_log` VALUES ('54', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员2\",\"remarks\":\"系统超级管理员\",\"roleId\":\"1\"}', '2019-06-02 10:47:59', '南风');
INSERT INTO `acl_app_log` VALUES ('55', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员25\",\"remarks\":\"系统超级管理员\",\"roleId\":\"1\"}', '2019-06-02 10:50:06', '南风');
INSERT INTO `acl_app_log` VALUES ('56', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员25\",\"remarks\":\"系统超级管理员2\",\"roleId\":\"1\"}', '2019-06-02 10:50:31', '南风');
INSERT INTO `acl_app_log` VALUES ('57', 'role', '8', '67', 'modify', null, '{\"roleName\":\"业务管理员\",\"remarks\":\"2222\",\"roleId\":\"8\"}', '2019-06-02 10:50:39', '南风');
INSERT INTO `acl_app_log` VALUES ('58', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员25\",\"remarks\":\"系统超级管理员2\",\"roleId\":\"1\"}', '2019-06-02 10:51:11', '南风');
INSERT INTO `acl_app_log` VALUES ('59', 'role', '9', '67', 'add', null, '{\"roleName\":\"Gradle 学习总结\",\"remarks\":\"是是是\"}', '2019-06-02 10:52:09', '南风');
INSERT INTO `acl_app_log` VALUES ('60', 'role', '10', '67', 'add', null, '{\"roleName\":\"业务管理员\",\"remarks\":\"搜索\"}', '2019-06-02 10:52:26', '南风');
INSERT INTO `acl_app_log` VALUES ('61', 'role', '11', '67', 'add', null, '{\"roleName\":\"通知管理\",\"remarks\":\"2222222222222222222222222222\"}', '2019-06-02 10:54:17', '南风');
INSERT INTO `acl_app_log` VALUES ('62', 'role', '12', '67', 'add', null, '{\"roleName\":\"Gradle 学习总结2\",\"remarks\":\"22\"}', '2019-06-02 10:54:33', '南风');
INSERT INTO `acl_app_log` VALUES ('63', 'role', '[12]', '67', 'deletes', null, '[\"12\"]', '2019-06-02 10:54:47', '南风');
INSERT INTO `acl_app_log` VALUES ('64', 'role', '1', '67', 'modify', null, '{\"roleName\":\"系统管理员25\",\"effStatus\":\"A\",\"remarks\":\"系统超级管理员2\",\"roleId\":\"1\"}', '2019-06-02 11:04:05', '南风');
INSERT INTO `acl_app_log` VALUES ('65', 'role', '9', '67', 'modify', null, '{\"roleName\":\"Gradle 学习总结\",\"effStatus\":\"I\",\"remarks\":\"是是是\",\"roleId\":\"9\"}', '2019-06-02 11:04:12', '南风');
INSERT INTO `acl_app_log` VALUES ('66', 'role', '10', '67', 'modify', null, '{\"roleName\":\"业务管理员\",\"effStatus\":\"I\",\"remarks\":\"搜索\",\"roleId\":\"10\"}', '2019-06-02 11:04:58', '南风');
INSERT INTO `acl_app_log` VALUES ('67', 'role', '10', '67', 'modify', null, '{\"roleName\":\"业务管理员\",\"effStatus\":\"I\",\"remarks\":\"搜索2\",\"roleId\":\"10\"}', '2019-06-02 11:05:18', '南风');
INSERT INTO `acl_app_log` VALUES ('68', 'role', '13', '67', 'add', null, '{\"roleName\":\"222\",\"remarks\":\"22\"}', '2019-06-02 11:13:21', '南风');
INSERT INTO `acl_app_log` VALUES ('69', 'role', '14', '67', 'add', null, '{\"roleName\":\"系统管理员\",\"effStatus\":true,\"remarks\":\"222222222222222222222\"}', '2019-06-02 11:14:36', '南风');
INSERT INTO `acl_app_log` VALUES ('70', 'role', '15', '67', 'add', null, '{\"roleName\":\"2222222222222222222222222\",\"remarks\":\"2222222222222\"}', '2019-06-02 11:15:33', '南风');
INSERT INTO `acl_app_log` VALUES ('71', 'role', '16', '67', 'add', null, '{\"roleName\":\"项目经理\",\"remarks\":\"项目经理\"}', '2019-06-06 02:02:58', '南风');
INSERT INTO `acl_app_log` VALUES ('72', 'role', '[15]', '67', 'deletes', null, '[\"15\"]', '2019-06-06 02:40:39', '南风');
INSERT INTO `acl_app_log` VALUES ('73', 'role', '[14]', '67', 'deletes', null, '[\"14\"]', '2019-06-06 02:40:48', '南风');
INSERT INTO `acl_app_log` VALUES ('74', 'role', '[13]', '67', 'deletes', null, '[\"13\"]', '2019-06-06 02:41:41', '南风');
INSERT INTO `acl_app_log` VALUES ('75', 'role', '[16]', '67', 'deletes', null, '[\"16\"]', '2019-06-06 02:42:03', '南风');
INSERT INTO `acl_app_log` VALUES ('77', 'role', '11', '67', 'modify', null, '{\"roleName\":\"通知管理\",\"effStatus\":\"I\",\"remarks\":\"2222222222222222222222222222\",\"roleId\":\"11\"}', '2019-06-06 06:11:15', '南风');
INSERT INTO `acl_app_log` VALUES ('78', 'role', '1', '67', 'modify', null, '{\"roleName\":\"超级管理员\",\"effStatus\":\"A\",\"remarks\":\"系统超级管理员2\",\"roleId\":\"1\"}', '2019-06-06 06:11:36', '南风');
INSERT INTO `acl_app_log` VALUES ('79', 'navbar', '179', '67', 'modify', null, '{\"icon\":\"robot\",\"title\":\"用户中心\",\"path\":\"/system/users\",\"navbarCode\":\"system_user\",\"effStatus\":\"A\",\"seqNo\":10,\"remarks\":\"\",\"navbarId\":\"179\"}', '2019-06-07 10:54:54', '南风');
INSERT INTO `acl_app_log` VALUES ('80', 'navbar', '182', '67', 'modify', null, '{\"icon\":\"trademark\",\"title\":\"角色配置\",\"path\":\"/system/roles\",\"navbarCode\":\"system_role\",\"effStatus\":\"A\",\"seqNo\":20,\"remarks\":\"\",\"navbarId\":\"182\"}', '2019-06-07 11:02:06', '南风');
INSERT INTO `acl_app_log` VALUES ('81', 'navbar', '183', '67', 'modify', null, '{\"icon\":\"profile\",\"title\":\"导航配置\",\"path\":\"/system/navbars\",\"navbarCode\":\"system_navbar\",\"effStatus\":\"A\",\"seqNo\":40,\"remarks\":\"\",\"navbarId\":\"183\"}', '2019-06-07 11:02:29', '南风');
INSERT INTO `acl_app_log` VALUES ('82', 'navbar', '173', '67', 'modify', null, '{\"icon\":\"bar-chart\",\"title\":\"监控分析\",\"path\":\"/dashboard/analysis\",\"navbarCode\":\"dashboard_analysis\",\"effStatus\":\"A\",\"seqNo\":5,\"remarks\":\"\",\"navbarId\":\"173\"}', '2019-06-07 11:03:09', '南风');
INSERT INTO `acl_app_log` VALUES ('83', 'navbar', '179', '67', 'modify', null, '{\"icon\":\"user\",\"title\":\"用户中心\",\"path\":\"/system/users\",\"navbarCode\":\"system_user\",\"effStatus\":\"A\",\"seqNo\":10,\"remarks\":\"\",\"navbarId\":\"179\"}', '2019-06-08 08:16:21', '南风');
INSERT INTO `acl_app_log` VALUES ('84', 'navbar', '142', '67', 'modify', null, '{\"icon\":\"layout\",\"title\":\"公开课程\",\"path\":\"/course/openclass\",\"navbarCode\":\"openclass\",\"effStatus\":\"A\",\"seqNo\":1,\"remarks\":\"\",\"navbarId\":\"142\"}', '2019-06-08 08:17:27', '南风');
INSERT INTO `acl_app_log` VALUES ('85', 'navbar', '184', '67', 'modify', null, '{\"icon\":\"file\",\"title\":\"操作日志\",\"path\":\"/system/applogs\",\"navbarCode\":\"system_applog\",\"effStatus\":\"A\",\"seqNo\":100,\"remarks\":\"\",\"navbarId\":\"184\"}', '2019-06-08 08:35:45', '南风');
INSERT INTO `acl_app_log` VALUES ('91', 'operateLog', '[\"23\"]', '67', 'deletes', null, '[\"23\"]', '2019-06-09 14:17:50', '南风');
INSERT INTO `acl_app_log` VALUES ('93', 'user', '67', '67', 'modify', null, '{\"createTime\":1540559313000,\"createUserId\":1,\"lastUpdateTime\":1558704376000,\"lastUpdateUserId\":0,\"userId\":67,\"username\":\"薛彦军\",\"nickname\":\"南风\",\"avatorUrl\":\"http://static.vilson.xyz/20171226162245_7d894600f17b942b8d3a08972b9504d3\",\"telephone\":\"18610000000\",\"activated\":true,\"email\":\"xueyj163@163.com\",\"lastLoginTime\":1558704374000,\"version\":1}', '2019-06-09 15:27:43', '南风');
INSERT INTO `acl_app_log` VALUES ('94', 'user', '67', '67', 'modify', null, '{\"version\":2,\"userId\":67,\"username\":\"薛彦军\",\"nickname\":\"南风\",\"telephone\":\"18610000000\",\"email\":\"xueyj163@163.com\"}', '2019-06-09 15:29:56', '南风');
INSERT INTO `acl_app_log` VALUES ('95', 'user', '71', '67', 'add', null, '{\"username\":\"root\",\"nickname\":\"南风\",\"telephone\":\"18610000000\",\"email\":\"xueyj163@163.com\"}', '2019-06-09 15:39:21', '南风');
INSERT INTO `acl_app_log` VALUES ('96', 'operateLog', '[\"92\"]', '67', 'deletes', null, '[\"92\"]', '2019-06-09 16:01:09', '南风');
INSERT INTO `acl_app_log` VALUES ('97', 'operateLog', '[\"90\"]', '67', 'deletes', null, '[\"90\"]', '2019-06-09 16:01:13', '南风');
INSERT INTO `acl_app_log` VALUES ('98', 'goods', '[\"29\"]', '67', 'deletes', null, '[\"29\"]', '2019-06-09 16:10:26', '南风');

-- ----------------------------
-- Table structure for acl_dept
-- ----------------------------
DROP TABLE IF EXISTS `acl_dept`;
CREATE TABLE `acl_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(255) DEFAULT NULL,
  `eff_status` varchar(4) NOT NULL COMMENT '0',
  `version` bigint(11) DEFAULT NULL,
  `seq_no` bigint(11) DEFAULT NULL COMMENT '序号',
  `dept_path` varchar(255) DEFAULT NULL COMMENT '部门路径',
  `dept_name_path` varchar(255) NOT NULL COMMENT '部门路径',
  `dept_pid` bigint(20) DEFAULT NULL,
  `pic_user_id` bigint(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10172 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_dept
-- ----------------------------
INSERT INTO `acl_dept` VALUES ('10000', '苏宁易购集团', 'A', '1', '1', '1', '苏宁易购集团', '1', null, '2018-11-09 22:49:03', '0', '2019-04-04 16:33:01', '0');
INSERT INTO `acl_dept` VALUES ('10001', '网络编辑中心', '', '1', '1', '1,10000', '苏宁易购集团\\网络编辑中心', '10000', '68', '2018-11-09 22:49:00', '0', '2019-04-04 16:30:11', '0');
INSERT INTO `acl_dept` VALUES ('10002', '市场拓展中心', '', '1', '1', '1,10000', '苏宁易购集团\\市场拓展中心', '10000', '68', '2018-11-09 22:49:00', '0', '2019-04-04 16:31:05', '0');
INSERT INTO `acl_dept` VALUES ('10003', '公司行政中心', '', '1', '1', '1,10000', '苏宁易购集团\\公司行政中心', '10000', '68', '2018-11-09 22:49:00', '0', '2019-04-04 16:31:06', '0');
INSERT INTO `acl_dept` VALUES ('10004', '公司财务中心', '', '1', '1', '1,10000', '苏宁易购集团\\公司财务中心', '10000', '68', '2018-11-09 22:49:00', '0', '2019-04-04 16:31:07', '0');
INSERT INTO `acl_dept` VALUES ('10005', '后端组', '', '1', '1', '1,10000,10001', '苏宁易购集团\\网络编辑中心\\后端组', '10001', '68', '2018-11-09 22:49:00', '0', '2019-04-04 16:31:10', '0');
INSERT INTO `acl_dept` VALUES ('10006', '前端租', '', '1', '1', '1,10000,10001', '', '10001', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:09:58', '0');
INSERT INTO `acl_dept` VALUES ('10007', '移动端', '', '1', '1', '1,10000,10001', '', '10001', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:10:02', '0');
INSERT INTO `acl_dept` VALUES ('10008', '产品部门', '', '1', '1', '1,10000,10001', '', '10001', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:10:06', '0');
INSERT INTO `acl_dept` VALUES ('10009', '后端组', '', '1', '1', '1,10000,10004', '', '10004', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:10:10', '0');
INSERT INTO `acl_dept` VALUES ('10010', '前端租', '', '1', '1', '1,10000,10004', '', '10004', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:10:14', '0');
INSERT INTO `acl_dept` VALUES ('10011', '移动端', '', '1', '1', '1,10000,10004', '', '10004', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:10:18', '0');
INSERT INTO `acl_dept` VALUES ('10012', '产品组', '', '1', '1', '1,10000,10002', '', '10004', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:10:23', '0');
INSERT INTO `acl_dept` VALUES ('10013', '工程实施中心', '', '1', '1', '1,10000', '', '10000', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:11:30', '0');
INSERT INTO `acl_dept` VALUES ('10171', '客户渠道开发', '', '1', '1', '1,10000,10002', '', '10004', null, '2018-11-09 22:49:00', '0', '2019-03-21 16:11:42', '0');

-- ----------------------------
-- Table structure for acl_dict
-- ----------------------------
DROP TABLE IF EXISTS `acl_dict`;
CREATE TABLE `acl_dict` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dict_code` varchar(128) NOT NULL,
  `short_name` varchar(128) NOT NULL,
  `group_code` varchar(128) NOT NULL,
  `seq_no` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_dict
-- ----------------------------
INSERT INTO `acl_dict` VALUES ('39', 'M', '男', 'sex', '0');
INSERT INTO `acl_dict` VALUES ('40', 'F', '女', 'sex', '0');

-- ----------------------------
-- Table structure for acl_function
-- ----------------------------
DROP TABLE IF EXISTS `acl_function`;
CREATE TABLE `acl_function` (
  `funct_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色主键编号',
  `action_code` varchar(512) NOT NULL COMMENT '按钮权限',
  `display_name` varchar(128) NOT NULL,
  `resource_code` varchar(255) DEFAULT NULL,
  `eff_status` varchar(10) NOT NULL DEFAULT '1' COMMENT '是否启动',
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL DEFAULT '0',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`funct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_function
-- ----------------------------
INSERT INTO `acl_function` VALUES ('1', 'query', '查询', 'home', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('5', 'query', '查询', 'action', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('6', 'query', '查询', 'perm', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('7', 'query', '列表查询', 'system_role', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('8', 'search', '列表查询', 'webapp', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('9', 'detail', '查看详情', 'system_navbar', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('10', 'update', '编辑导航', 'system_navbar', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('11', 'list', '列表查询', 'system_navbar', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('12', 'list', '列表查询', 'webapp', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('13', 'analysis', '查看监控', 'dashboard_analysis', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('14', 'list', '列表', 'table', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('15', 'code', 'Code生成', 'dev_code', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('16', 'list', '列表', 'profile', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('17', 'list', '列表查询', 'examines', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('18', 'list', '列表', 'exception', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('19', 'list', '列表查询', 'system_user', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('20', 'list', '列表查询', 'openclass', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('21', 'list', '列表查询', 'goods', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('22', 'list', '列表查询', 'oss_material', 'A', '2019-06-08 00:42:54', '0', '2019-06-09 21:57:47', '67');
INSERT INTO `acl_function` VALUES ('23', 'list', '列表查询', 'wechat_material', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('24', 'detail', '查询详情', 'system_role', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('25', 'update', '编辑角色', 'system_role', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('26', 'detail', '查询详情', 'system_user', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('27', 'update', '编辑用户', 'system_user', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('28', 'update', '编辑商品', 'goods', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('29', 'detail', '商品详情', 'goods', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('30', 'view', '查看任务', 'dashboard_task', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('31', 'upload', '上传文件', 'oss_material', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('32', 'upload', '上传文件', 'wechat_material', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('33', 'detail', '查询详情', 'system_notice', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('34', 'list', '列表查询', 'system_notice', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('35', 'update', '编辑通知', 'system_notice', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');
INSERT INTO `acl_function` VALUES ('36', 'list', '日志查询', 'system_applog', 'A', '2019-06-08 00:42:54', '0', '2019-06-08 00:42:54', '0');

-- ----------------------------
-- Table structure for acl_job
-- ----------------------------
DROP TABLE IF EXISTS `acl_job`;
CREATE TABLE `acl_job` (
  `job_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '职位ID',
  `job_code` varchar(255) NOT NULL COMMENT '职位code',
  `job_name` varchar(255) NOT NULL COMMENT '职位名称',
  `remarks` varchar(255) DEFAULT NULL COMMENT '描述',
  `eff_status` varchar(64) NOT NULL COMMENT '生效状态',
  `version` bigint(10) NOT NULL DEFAULT '0' COMMENT '版本',
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_job
-- ----------------------------

-- ----------------------------
-- Table structure for acl_message
-- ----------------------------
DROP TABLE IF EXISTS `acl_message`;
CREATE TABLE `acl_message` (
  `message_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '序列',
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(2000) DEFAULT NULL COMMENT '内容',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `send_user_id` int(11) NOT NULL COMMENT '创建人',
  `receive_user_id` int(11) NOT NULL,
  `is_read` varchar(10) NOT NULL COMMENT 'Y :已读 N:未读',
  `href` varchar(255) DEFAULT NULL,
  `priority_level` int(2) NOT NULL DEFAULT '1' COMMENT '优先级',
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_message
-- ----------------------------
INSERT INTO `acl_message` VALUES ('1', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('2', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('3', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('4', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('5', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('6', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('7', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('8', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'Y', null, '1');
INSERT INTO `acl_message` VALUES ('9', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('10', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('11', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('12', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('13', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('14', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('15', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('16', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('17', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('18', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('19', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('20', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'Y', null, '1');
INSERT INTO `acl_message` VALUES ('21', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('22', '我是个大坏蛋', '我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('23', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'N', null, '1');
INSERT INTO `acl_message` VALUES ('24', '交易提醒', '我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋我是个大坏蛋', '2019-03-19 16:08:09', '68', '67', 'Y', null, '1');

-- ----------------------------
-- Table structure for acl_navbar
-- ----------------------------
DROP TABLE IF EXISTS `acl_navbar`;
CREATE TABLE `acl_navbar` (
  `navbar_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_code` varchar(255) DEFAULT NULL,
  `navbar_code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `navbar_pid` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `title` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `path` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `seq_no` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `eff_status` varchar(12) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `navbar_path` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`navbar_id`),
  UNIQUE KEY `menu_code` (`navbar_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_navbar
-- ----------------------------
INSERT INTO `acl_navbar` VALUES ('100', 'donkey_acl', 'dashboard', '1', '控制台', 'windows', '/dashboard', '50', '', 'A', '1', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('105', 'donkey_acl', 'system', '1', '系统管理', 'setting', '/system', '700', '', 'A', '1', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('106', 'donkey_acl', 'goods', '118', '商品管理', 'user', '/product/goods', '1', '', 'A', '1,118', '2019-06-07 00:00:00');
INSERT INTO `acl_navbar` VALUES ('110', 'donkey_acl', 'course', '1', '快乐课程', 'appstore', '/course', '100', '', 'A', '1', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('118', 'donkey_acl', 'product', '1', '商品中心', 'key', '/product', '200', '', 'A', '1', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('141', 'donkey_acl', 'system_notice', '105', '通知管理', 'message', '/system/notice', '100', '', 'false', '1,110', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('142', 'donkey_acl', 'openclass', '110', '公开课程', 'layout', '/course/openclass', '1', '', 'A', '1,110', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('143', 'donkey_acl', 'examines', '110', '问卷试题', 'bars', '/course/examines', '2', '', 'A', '1,110', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('148', 'donkey_acl', 'dev_code', '170', '代码生成', 'tool', '/dev/code', '10', '', 'A', '1,170', '2019-04-04 00:00:00');
INSERT INTO `acl_navbar` VALUES ('170', 'donkey_acl', 'dev_doc', '1', '开发说明', 'deployment-unit', '/dev', '1000', '', 'A', '1', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('172', 'donkey_acl', 'dashboard_task', '100', '任务中心', 'dot-chart', '/dashboard/workplace', '2', '', 'A', '1,100', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('173', 'donkey_acl', 'dashboard_analysis', '100', '监控分析', 'bar-chart', '/dashboard/analysis', '5', '', 'A', '1,100', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('176', 'donkey_acl', 'material', '1', '素材管理', 'picture', '/material', '60', '', 'A', '1', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('177', 'donkey_acl', 'oss_material', '176', 'OSS 存储', 'picture', '/material/ossfiles', '2', '', 'A', '1,176', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('178', 'donkey_acl', 'wechat_material', '176', 'Wechat 素材', 'picture', '/material/wechat', '10', '', 'A', '1,176', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('179', 'donkey_acl', 'system_user', '105', '用户中心', 'user', '/system/users', '10', '', 'A', '1,105', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('182', 'donkey_acl', 'system_role', '105', '角色配置', 'trademark', '/system/roles', '20', '', 'A', '1,105', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('183', 'donkey_acl', 'system_navbar', '105', '导航配置', 'profile', '/system/navbars', '40', '', 'A', '1,105', '2019-04-01 00:00:00');
INSERT INTO `acl_navbar` VALUES ('184', 'donkey_acl', 'system_applog', '105', '操作日志', 'file', '/system/applogs', '100', '', 'A', '1,105', '2019-04-01 00:00:00');

-- ----------------------------
-- Table structure for acl_notice
-- ----------------------------
DROP TABLE IF EXISTS `acl_notice`;
CREATE TABLE `acl_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_notice
-- ----------------------------

-- ----------------------------
-- Table structure for acl_post
-- ----------------------------
DROP TABLE IF EXISTS `acl_post`;
CREATE TABLE `acl_post` (
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `role_pid` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `version` bigint(11) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_post
-- ----------------------------

-- ----------------------------
-- Table structure for acl_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_role`;
CREATE TABLE `acl_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL DEFAULT '',
  `role_code` varchar(255) NOT NULL DEFAULT '',
  `remarks` varchar(255) DEFAULT NULL COMMENT '描述',
  `eff_status` varchar(5) NOT NULL DEFAULT '0',
  `version` bigint(11) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_role
-- ----------------------------
INSERT INTO `acl_role` VALUES ('1', '超级管理员', 'admin', '系统超级管理员2', 'A', '1', '2018-10-26 13:11:10', '0', '2019-06-06 06:11:36', '67');
INSERT INTO `acl_role` VALUES ('8', '业务管理员', 'bizAdmin', '2222', 'A', '1', '2019-05-26 20:35:36', '0', '2019-06-02 19:20:39', '67');
INSERT INTO `acl_role` VALUES ('10', '业务管理员', '', '搜索2', 'I', '0', '2019-06-02 10:52:26', '67', '2019-06-02 19:20:44', '67');
INSERT INTO `acl_role` VALUES ('11', '通知管理', '', '2222222222222222222222222222', 'I', '0', '2019-06-02 10:54:17', '67', '2019-06-06 06:11:15', '67');

-- ----------------------------
-- Table structure for acl_role_perm
-- ----------------------------
DROP TABLE IF EXISTS `acl_role_perm`;
CREATE TABLE `acl_role_perm` (
  `perm_id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL COMMENT '角色主键编号',
  `resource_code` varchar(128) NOT NULL,
  `funct_id` bigint(20) NOT NULL COMMENT '功能ID',
  PRIMARY KEY (`perm_id`),
  KEY `role_index` (`role_id`) USING BTREE,
  KEY `perm_index` (`funct_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='角色按钮权限表';

-- ----------------------------
-- Records of acl_role_perm
-- ----------------------------
INSERT INTO `acl_role_perm` VALUES ('1', '1', 'home', '1');
INSERT INTO `acl_role_perm` VALUES ('2', '1', 'action', '5');
INSERT INTO `acl_role_perm` VALUES ('3', '1', 'webapp', '8');
INSERT INTO `acl_role_perm` VALUES ('4', '1', 'navbar', '9');
INSERT INTO `acl_role_perm` VALUES ('5', '1', 'navbar', '10');
INSERT INTO `acl_role_perm` VALUES ('6', '1', 'openclass', '20');
INSERT INTO `acl_role_perm` VALUES ('7', '1', 'dashboard_task', '30');
INSERT INTO `acl_role_perm` VALUES ('8', '1', 'oss_material', '22');
INSERT INTO `acl_role_perm` VALUES ('9', '1', 'form', '15');
INSERT INTO `acl_role_perm` VALUES ('10', '1', 'profile', '16');
INSERT INTO `acl_role_perm` VALUES ('11', '1', 'result', '17');
INSERT INTO `acl_role_perm` VALUES ('12', '1', 'system_user', '26');
INSERT INTO `acl_role_perm` VALUES ('13', '1', 'system_user', '19');
INSERT INTO `acl_role_perm` VALUES ('14', '1', 'system_navbar', '11');
INSERT INTO `acl_role_perm` VALUES ('15', '1', 'goods', '21');
INSERT INTO `acl_role_perm` VALUES ('16', '1', 'material', '22');
INSERT INTO `acl_role_perm` VALUES ('17', '1', 'dashboard_analysis', '13');
INSERT INTO `acl_role_perm` VALUES ('18', '1', 'system_applog', '36');

-- ----------------------------
-- Table structure for acl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `acl_user_role`;
CREATE TABLE `acl_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '角色主键编号',
  `role_id` bigint(20) NOT NULL COMMENT '按钮权限',
  KEY `use_index` (`user_id`),
  KEY `role_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_user_role
-- ----------------------------
INSERT INTO `acl_user_role` VALUES ('67', '1');
INSERT INTO `acl_user_role` VALUES ('67', '8');

-- ----------------------------
-- Table structure for acl_web_app
-- ----------------------------
DROP TABLE IF EXISTS `acl_web_app`;
CREATE TABLE `acl_web_app` (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '职位ID',
  `app_code` varchar(255) DEFAULT NULL COMMENT '职位code',
  `app_title` varchar(255) DEFAULT NULL COMMENT '职位名称',
  `address` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL COMMENT '描述',
  `seq_no` bigint(11) DEFAULT NULL,
  `eff_status` varchar(64) DEFAULT NULL COMMENT '生效状态',
  `version` bigint(11) DEFAULT NULL COMMENT '版本',
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acl_web_app
-- ----------------------------
INSERT INTO `acl_web_app` VALUES ('1', 'donkey_acl', '权限统一控制中心', null, null, '1', 'A', '1', '2018-10-28 22:51:36', '0', '2019-03-22 18:37:54', '0');
INSERT INTO `acl_web_app` VALUES ('2', 'donkey_wechat', '微信后台管理中心', '', '', '1', 'A', '1', '2018-10-28 22:51:36', '1', '2019-03-22 18:38:02', '1');
INSERT INTO `acl_web_app` VALUES ('3', 'donkey_control', '多维度监控中心', '', '', '1', 'A', '1', '2018-10-28 22:51:36', '1', '2019-03-22 18:38:11', '1');

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `class_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `class_name` varchar(64) NOT NULL COMMENT '名称',
  `class_level` varchar(64) NOT NULL COMMENT '等级',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `charge_user` varchar(64) DEFAULT NULL COMMENT '负责人',
  `charge_user_id` int(11) DEFAULT NULL COMMENT '负责人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='班级';

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('1', '快乐班', '01', '快乐的小班级', '王五', '1', '2019-05-11 18:39:08');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `title` varchar(128) NOT NULL COMMENT '标题',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `cover_img_url` varchar(255) DEFAULT NULL COMMENT '封面',
  `class_hour` varchar(64) DEFAULT NULL COMMENT '课时',
  `lecturer` varchar(128) DEFAULT NULL COMMENT '讲师',
  `live_url` varchar(255) DEFAULT NULL COMMENT '直播地址',
  `commentary_url` varchar(255) DEFAULT NULL COMMENT '解说地址',
  `commentary_user` varchar(64) DEFAULT NULL COMMENT '讲解人',
  `readaloud_user` varchar(64) DEFAULT NULL COMMENT '朗读人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程信息';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '测试', '234234', null, null, null, null, null, null, null, '2019-05-11 16:06:30');
INSERT INTO `course` VALUES ('2', '测试', '234234', null, null, null, null, null, null, null, '2019-05-11 16:18:52');
INSERT INTO `course` VALUES ('3', '测试', '23423', null, '234234', '23423', '23423', '234234', '234234', null, '2019-05-12 03:25:49');

-- ----------------------------
-- Table structure for coustomer
-- ----------------------------
DROP TABLE IF EXISTS `coustomer`;
CREATE TABLE `coustomer` (
  `coustomer_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '客户id',
  `nickname` varchar(64) NOT NULL COMMENT '昵称',
  `real_name` varchar(64) DEFAULT NULL COMMENT '真实姓名',
  `gender` varchar(10) NOT NULL COMMENT '性别',
  `avatar_url` varchar(128) NOT NULL COMMENT '头像',
  `join_date` datetime NOT NULL COMMENT '加入日期',
  `mobile_phone` varchar(64) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`coustomer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客户信息';

-- ----------------------------
-- Records of coustomer
-- ----------------------------

-- ----------------------------
-- Table structure for examination
-- ----------------------------
DROP TABLE IF EXISTS `examination`;
CREATE TABLE `examination` (
  `exam_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '问卷id',
  `title` varchar(128) NOT NULL COMMENT '标题',
  `welcome_speech` varchar(255) NOT NULL COMMENT '欢迎词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `total_score` int(10) NOT NULL DEFAULT '0' COMMENT '总分',
  `limit_time` int(10) NOT NULL DEFAULT '0' COMMENT '限时',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷信息';

-- ----------------------------
-- Records of examination
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_no` varchar(32) DEFAULT NULL COMMENT '编号',
  `goods_type` varchar(32) DEFAULT NULL COMMENT '类型',
  `title` varchar(128) NOT NULL COMMENT '标题',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `cover_img_url` varchar(255) DEFAULT NULL COMMENT '封面',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '促销价',
  `original_price` decimal(10,2) NOT NULL COMMENT '原价',
  `up_time` datetime NOT NULL COMMENT '上架时间',
  `off_time` datetime NOT NULL COMMENT '下架时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='商品信息';

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('2', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('3', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('4', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('5', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('6', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('7', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('8', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('9', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('10', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('11', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('12', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('13', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('14', '23423NO', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('15', '2342', 'course', '快乐课程', '快乐课程', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558117252715&di=edb9758a248fe3bcca2afb53f91914fc&imgtype=0&src=http%3A%2F%2Fwww.xiaoma.net%2Fuploads%2Fallimg%2F150125%2F11-1501251016112M.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('16', '23423NO', 'course', '快乐课程', '快乐课程', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=952482084,735328736&fm=11&gp=0.jpg', '98.00', '100.00', '2019-05-18 23:33:16', '2019-06-08 23:33:21', '2019-05-17 23:33:25');
INSERT INTO `goods` VALUES ('17', null, 'course', '快乐课程2', '22', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:45:10');
INSERT INTO `goods` VALUES ('18', null, 'course', '快乐课程223', '22', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:45:23');
INSERT INTO `goods` VALUES ('19', null, 'course', '快乐课程223', '2223423423', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:45:25');
INSERT INTO `goods` VALUES ('20', null, 'course', '快乐课程223', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:45:33');
INSERT INTO `goods` VALUES ('21', null, 'course', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:45:37');
INSERT INTO `goods` VALUES ('22', null, 'course', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:46:00');
INSERT INTO `goods` VALUES ('23', null, 'course', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', '快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223快乐课程223', null, '22.00', '22.00', '2019-05-08 16:42:59', '2019-06-25 16:42:59', '2019-05-17 16:47:19');
INSERT INTO `goods` VALUES ('24', null, 'course', '快乐课程2', '23423423', null, '100.00', '23.00', '2019-05-23 16:48:59', '2019-06-19 16:48:59', '2019-05-17 16:49:11');
INSERT INTO `goods` VALUES ('25', null, 'course', '快乐课程2', '234234', null, '100.00', '100.00', '2019-05-13 16:50:15', '2019-06-17 16:50:15', '2019-05-17 16:50:27');
INSERT INTO `goods` VALUES ('26', null, 'course', '快乐课程2', '2323', null, '23.00', '23.00', '2019-05-23 16:53:18', '2019-06-20 16:53:18', '2019-05-17 16:53:35');
INSERT INTO `goods` VALUES ('27', 'G2', 'course', '快乐课程2', '234234234', null, '100.00', '100.00', '2019-05-19 02:54:58', '2019-06-14 02:54:58', '2019-05-18 02:55:14');
INSERT INTO `goods` VALUES ('28', 'G0000000102', 'course', '快乐课程2', '333', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:01:46');
INSERT INTO `goods` VALUES ('30', 'G0000000104', 'course', '快乐课程2', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:03:00');
INSERT INTO `goods` VALUES ('31', 'G0000000105', 'course', '快乐课程2', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:03:11');
INSERT INTO `goods` VALUES ('32', 'G0000000106', 'course', '快乐课程2', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:03:20');
INSERT INTO `goods` VALUES ('33', 'G0000000107', 'course', '快乐课程2eeeeeeeeeeeeeeeeeee', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:03:31');
INSERT INTO `goods` VALUES ('34', 'G0000000108', 'course', '快乐课程2eeeeeeeeeeeeeeeeeee', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:03:37');
INSERT INTO `goods` VALUES ('35', 'G0000000109', 'course', '快乐课程2eeeeeeeeeeeeeeeeeeeeee', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:03:50');
INSERT INTO `goods` VALUES ('36', 'G0000000110', 'courseeeeeeeeeee', '快乐课程2eeeeeeeeeeeeeeeeeeeeee', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:04:02');
INSERT INTO `goods` VALUES ('37', 'G0000000111', 'courseeeeeeeeeeeeeeeeee', '快乐课程2eeeeeeeeeeeeeeeeeeeeee', '333222222222224444444444444444', null, '33.00', '33.00', '2019-05-17 03:01:30', '2019-06-15 03:01:30', '2019-05-18 03:04:12');
INSERT INTO `goods` VALUES ('38', 'G0000000202', 'course', '快乐课程2', '222222222222222', null, '100.00', '22.00', '2019-05-17 03:34:53', '2019-06-20 03:34:53', '2019-05-18 03:35:07');

-- ----------------------------
-- Table structure for hr_staff
-- ----------------------------
DROP TABLE IF EXISTS `hr_staff`;
CREATE TABLE `hr_staff` (
  `staff_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) DEFAULT NULL,
  `staff_code` varchar(64) DEFAULT NULL,
  `staff_avator_url` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nick_name` varchar(32) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) NOT NULL,
  `version` bigint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_staff
-- ----------------------------
INSERT INTO `hr_staff` VALUES ('68', '王五', '448335', 'http://static.vilson.xyz/20171226162245_7d894600f17b942b8d3a08972b9504d3', 'xueyj163@163.com', '呼呼南风', '2019-04-04 17:28:19', '68', '2019-04-04 17:31:57', '0', '1');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `alias_name` varchar(128) NOT NULL COMMENT '别名',
  `original_name` varchar(128) NOT NULL,
  `material_type` varchar(32) DEFAULT NULL COMMENT '资源类型',
  `material_size` int(32) NOT NULL DEFAULT '0' COMMENT '资源大小',
  `url` varchar(128) DEFAULT NULL COMMENT '资源地址',
  `tags_id` varchar(64) DEFAULT NULL,
  `tags_name` varchar(255) DEFAULT NULL,
  `storage_type` varchar(12) DEFAULT 'WECHAT',
  `create_user_id` int(20) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for oss_file
-- ----------------------------
DROP TABLE IF EXISTS `oss_file`;
CREATE TABLE `oss_file` (
  `file_id` varchar(64) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `oss_key` varchar(128) DEFAULT NULL,
  `file_type` varchar(10) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `file_md5` varchar(128) DEFAULT ' ',
  `file_size` int(10) DEFAULT '1',
  `local_path` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_file
-- ----------------------------
INSERT INTO `oss_file` VALUES ('0371db33c2a34bb08db4b61ddabfd6aa', '我家宝宝1.mp4', 'ossfile/video/7fa54f3550b2479cb5bcdf1cdd640a61.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\7fa54f3550b2479cb5bcdf1cdd640a61.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('068cfd79e9934a0792192c3ba0f0809c', '我家宝宝闺女.mp4', 'ossfile/video/49ee94ffa04a4f998036ec2b936ae492.mp4', 'video', 'image', 'uploaded', '623ca46e1c1cd3189f414a88ee7de75a', '655162', 'D:\\Users\\Temp\\ossfile\\49ee94ffa04a4f998036ec2b936ae492.mp4', '2019-05-23 00:00:00');
INSERT INTO `oss_file` VALUES ('07d4dfe2431b41069832080218f32088', '我家宝宝1.mp4', 'ossfile/video/90fb14dab42e4f95b34397af348f589d.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\90fb14dab42e4f95b34397af348f589d.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('08084b1078464d19835de62b5bedfe0a', '我家宝宝1.mp4', 'ossfile/video/b984bb32a42144d7b50ff8867c2389dd.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\b984bb32a42144d7b50ff8867c2389dd.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('0e8275bdb26a487f94bcf7ce1799f6d1', '微信图片_20190518212516.jpg_1080X1920', 'ossfile/image/078ff3e927094e6dab953bf460481e8e.jpg', 'image', 'image', 'uploaded', 'e162cefd111ae5d2e964cdb1e402cfad', '368473', 'D:\\Users\\Temp\\ossfile\\078ff3e927094e6dab953bf460481e8e.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('1d05bbb715fd46eabe270833ab96dfa9', 'meinv.jpg_2400X1602', 'ossfile/image/69fcf752311842e5999e9f793712213a.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\69fcf752311842e5999e9f793712213a.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('2200f2d1dca84950bb6d7d0acb0fbda2', 'adfasdf', '/adfasdf/', 'image', '{}', 'failed', 'adasdfsafasdfsdfasdf', '1000', 'asdfasdfasdfasdfasdfsadf', '2019-05-23 00:00:00');
INSERT INTO `oss_file` VALUES ('25fb4641201f47c1a90f3d5f5f9c69f9', '微信图片_20190518212539.jpg_1080X1920', 'ossfile/image/8fc92a045dbb418aab1b2ddff5cd29a0.jpg', 'image', 'image', 'uploaded', '33ffc348009e3680d932ef8825fe0071', '297943', 'D:\\Users\\Temp\\ossfile\\8fc92a045dbb418aab1b2ddff5cd29a0.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('27ad2a13bc6f43c3ac183707a9f70dcf', '新建文本文档.txt', 'ossfile/docs/72c9293f4b8e4f21abec3178a12c4022.txt', 'docs', 'image', 'uploaded', '16207d9b51837c43e332a2d787b11cc7', '302', 'D:\\Users\\Temp\\ossfile\\72c9293f4b8e4f21abec3178a12c4022.txt', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('33e4e040b5d24fcba2106ef961218f3a', 'meinv.jpg_2400X1602', 'ossfile/image/cf5ef91da3f4431bba4de341c245a633.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\cf5ef91da3f4431bba4de341c245a633.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('34079489c6804cdb9084c6042af63f15', '我家宝宝1.mp4', 'ossfile/video/70c6c25c38c64da89b00cf43fb8f6843.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\70c6c25c38c64da89b00cf43fb8f6843.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('372ddc3cd1314ee497ebefc88ca40c32', '微信图片_20190518212527.jpg_1080X1920', 'ossfile/image/636c20ade734479a990ac968baa2bd3e.jpg', 'image', 'image', 'uploaded', '96b097226a24e1d349db50a083d8c481', '262097', 'D:\\Users\\Temp\\ossfile\\636c20ade734479a990ac968baa2bd3e.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('3832726a39c3471397cbfd8579458282', '微信图片_20190518212516.jpg_1080X1920', 'ossfile/image/42ee2e1469754492bf96250a0565cc18.jpg', 'image', 'image', 'uploaded', 'e162cefd111ae5d2e964cdb1e402cfad', '368473', 'D:\\Users\\Temp\\ossfile\\42ee2e1469754492bf96250a0565cc18.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('43f2648b838e453da94a4cabee05e114', '微信图片_20190518212521.jpg_1080X1920', 'ossfile/image/f1046c3340c4427a9d824b8246afd2f6.jpg', 'image', 'image', 'uploaded', 'ce82ba0a3fcdd7ecf5271a73652da912', '344549', 'D:\\Users\\Temp\\ossfile\\f1046c3340c4427a9d824b8246afd2f6.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('441f64e0a0554d4aab18a6d5895251af', 'meinv.jpg_2400X1602', 'ossfile/image/d0e96a91f2bc4e41accbdfea0bd13191.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\d0e96a91f2bc4e41accbdfea0bd13191.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('44c29a49453a4449a6402160386dcbd3', '我家宝宝1.mp4', 'ossfile/video/0527fe12b8c54ffa9ab4ef8dcbc876d9.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\0527fe12b8c54ffa9ab4ef8dcbc876d9.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('469004f341be4ac6a1d3d2cd2f6f4541', '我家宝宝1.mp4', 'ossfile/video/d99733b9257247f585e6da669b55f92b.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\d99733b9257247f585e6da669b55f92b.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('4c57011067f8476ba51259b7e569ce14', '我家宝宝1.mp4', 'ossfile/video/f682282196a74df2a76c74afbf4114f9.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\f682282196a74df2a76c74afbf4114f9.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('4e7bf02a15d44d278e26078c85fc58d8', 'meinv.jpg_2400X1602', 'ossfile/image/04daa0f8dcba47f1a07ed215b3ca1a92.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\04daa0f8dcba47f1a07ed215b3ca1a92.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('6a6881709ab44aa3a44c09322235ff24', 'meinv.jpg_2400X1602', 'ossfile/image/5a5349a92acc4d13997a9428165a8c9e.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\5a5349a92acc4d13997a9428165a8c9e.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('6d43cdb339a34f30967dc3c93999f0ad', '我家宝宝1.mp4', 'ossfile/video/0d32d21e9dca4c40acb65056dd2681df.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\0d32d21e9dca4c40acb65056dd2681df.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('6f0144c1abc7458fbbe74a8d199a1d38', '我家宝宝1.mp4', 'ossfile/video/6592fe77b7264235aec2548f5dedd9c1.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\6592fe77b7264235aec2548f5dedd9c1.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('73096154de394256b5f6be8b179b5921', '微信图片_20190518212516.jpg_1080X1920', 'ossfile/image/de26c08ecf06448b9bcd5fa1faeb42ad.jpg', 'image', 'image', 'uploaded', 'e162cefd111ae5d2e964cdb1e402cfad', '368473', 'D:\\Users\\Temp\\ossfile\\de26c08ecf06448b9bcd5fa1faeb42ad.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('77d89002bebb4e51b189ca1ade486fd5', 'meinv.jpg_2400X1602', 'ossfile/image/6f17d7adbb0d445bae71c53e7b350150.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\6f17d7adbb0d445bae71c53e7b350150.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('83c2c2ca97e342ce8c42e1ab905bcab9', '我家宝宝1.mp4', 'ossfile/video/c823c677c7f64291a9e71db5fc8acd69.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\c823c677c7f64291a9e71db5fc8acd69.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('871c98c5fb504e26a7a01b4e0a22b2ed', '我家宝宝1.mp4', 'ossfile/video/9343317675664121b5ed33a4f47dc6d6.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\9343317675664121b5ed33a4f47dc6d6.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('89629dc575ee4f638753b7a2efceedab', 'admin.png_1064X581', 'ossfile/image/d4f669f33cb542498dc2bfb69073d73e.png', 'image', 'image', 'uploaded', '522b75ccb6269d63797cff4b58af979a', '211188', 'D:\\Users\\Temp\\ossfile\\d4f669f33cb542498dc2bfb69073d73e.png', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('97926987b01e4deb85ee90e3ac210588', 'meinv.jpg_2400X1602', 'ossfile/image/c6cfbb3d6bdc47739939a8f366ec42b7.jpg', 'image', 'image', 'upload', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\c6cfbb3d6bdc47739939a8f366ec42b7.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('9c86b86899be4fcba6074bb08ff9b884', 'meinv.jpg_2400X1602', 'ossfile/image/fd5ae85c4d644883935ea3b7b36927ba.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\fd5ae85c4d644883935ea3b7b36927ba.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('a6e35400109944079cc7e0d249263005', '我家宝宝1.mp4', 'ossfile/video/70986de98d0a40eabc61f60bb67c6488.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\70986de98d0a40eabc61f60bb67c6488.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('a8c509a3059346c79ab2de509a68a328', 'meinv.jpg_2400X1602', 'ossfile/image/55f9dc83553a4ce6969634a9222ec3f2.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\55f9dc83553a4ce6969634a9222ec3f2.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('b61c0546bb9f4afc87b619d1e91f0e44', '我家宝宝1.mp4', 'ossfile/video/000d56022e68412da377d608be93b369.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\000d56022e68412da377d608be93b369.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('c6aee859821e477db5fe4c4a7e441da7', '我家宝宝1.mp4', 'ossfile/video/e2f923d1f5f3446b9c25303dddc20533.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\e2f923d1f5f3446b9c25303dddc20533.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('c92f1f3634fb4ce6bfb862e139366549', '我家宝宝1.mp4', 'ossfile/video/ae2148968a4a4bceb3976d14c68aeaae.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\ae2148968a4a4bceb3976d14c68aeaae.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('cb556e33c2ce48eeadaa75a908d863bd', '我家宝宝1.mp4', 'ossfile/video/96cb6493dec5474cbeb9c5001abd3a7c.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\96cb6493dec5474cbeb9c5001abd3a7c.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('d0ac4f8dbc874e68bbb80abb3e018325', 'meinv.jpg_2400X1602', 'ossfile/image/a6026e7fefec460f88a738de4870afa5.jpg', 'image', 'image', 'uploaded', '75e9a0882cd5f056de6553d9aa89cca7', '257467', 'D:\\Users\\Temp\\ossfile\\a6026e7fefec460f88a738de4870afa5.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('dd14dbed37cc4bdebac678fe304755d7', '微信图片_20190518212532.jpg_1080X1920', 'ossfile/image/6ab8782fd70e43b8bcdb301420ed458b.jpg', 'image', 'image', 'uploaded', 'c85453138a6bf1b927e9395e30120d33', '375773', 'D:\\Users\\Temp\\ossfile\\6ab8782fd70e43b8bcdb301420ed458b.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('dd69629c1550452b8a57617b81042a41', '微信图片_20190518212516.jpg_1080X1920', 'ossfile/image/cc93a566da1546beba42bd2b491d01e0.jpg', 'image', 'image', 'uploaded', 'e162cefd111ae5d2e964cdb1e402cfad', '368473', 'D:\\Users\\Temp\\ossfile\\cc93a566da1546beba42bd2b491d01e0.jpg', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('f779f35301184fbc959e2bb865069e5a', '我家宝宝1.mp4', 'ossfile/video/11b2415f94e140d3a6fbc8475f2499f3.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\11b2415f94e140d3a6fbc8475f2499f3.mp4', '2019-05-18 00:00:00');
INSERT INTO `oss_file` VALUES ('fa8053c18003422b94c6d2c9a4e36daf', '我家宝宝1.mp4', 'ossfile/video/fe9c9129716c40019590900db8810245.mp4', 'video', 'image', 'uploaded', 'ac978eb415ae528e450cf8cda4c68846', '1106802', 'D:\\Users\\Temp\\ossfile\\fe9c9129716c40019590900db8810245.mp4', '2019-05-18 00:00:00');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '试题id',
  `question_type` varchar(10) NOT NULL COMMENT '试题类型',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `max_score` double(10,2) DEFAULT NULL COMMENT '最高得分',
  `exam_id` int(10) DEFAULT NULL COMMENT '试卷id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`question_id`),
  KEY `question_exam_id` (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷试题定义';

-- ----------------------------
-- Records of question
-- ----------------------------

-- ----------------------------
-- Table structure for question_option
-- ----------------------------
DROP TABLE IF EXISTS `question_option`;
CREATE TABLE `question_option` (
  `option_id` int(20) NOT NULL AUTO_INCREMENT COMMENT '选项id',
  `question_id` int(20) DEFAULT NULL COMMENT '试题id',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `score` varchar(255) DEFAULT NULL COMMENT '分值',
  PRIMARY KEY (`option_id`),
  KEY `option_question_id` (`question_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷试题选项定义';

-- ----------------------------
-- Records of question_option
-- ----------------------------

-- ----------------------------
-- Table structure for super_user
-- ----------------------------
DROP TABLE IF EXISTS `super_user`;
CREATE TABLE `super_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `avator_url` varchar(255) DEFAULT NULL,
  `telephone` varchar(128) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `activated` tinyint(4) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` bigint(20) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `version` bigint(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of super_user
-- ----------------------------
INSERT INTO `super_user` VALUES ('67', '薛彦军', '南风', 'http://static.vilson.xyz/20171226162245_7d894600f17b942b8d3a08972b9504d3', '18610000000', '123456', '1', 'xueyj163@163.com', '2019-05-24 13:26:14', '2018-10-26 13:08:33', '1', '2019-06-09 23:29:56', '0', '3');
INSERT INTO `super_user` VALUES ('68', '薛彦军23', 'wb-xyj2743879', '头像', null, '123456', '1', 'xueyj1633@163.com', '2019-05-24 13:26:16', '2018-10-26 13:08:33', '1', '2019-05-24 13:26:18', '0', '1');
INSERT INTO `super_user` VALUES ('69', '薛彦军2', 'wb-xyj2743875', '头像', null, '123456', '1', 'xueyj163@163.com', '2019-05-24 13:26:19', '2018-10-26 13:08:33', '1', '2019-05-24 13:26:21', '0', '1');
INSERT INTO `super_user` VALUES ('70', '天野', '天野远子', 'http://static.vilson.xyz/20171226162245_7d894600f17b942b8d3a08972b9504d3', '18610978963', '123456', '1', 'xueyj1633@163.com', '2019-05-24 13:26:22', '2018-10-26 13:08:33', '1', '2019-05-24 13:26:24', '0', '1');
INSERT INTO `super_user` VALUES ('71', 'root', '南风', null, '18610000000', null, null, 'xueyj163@163.com', null, '2019-06-09 15:39:21', '67', '2019-06-09 23:39:21', null, '1');

-- ----------------------------
-- Table structure for t_areainfo
-- ----------------------------
DROP TABLE IF EXISTS `t_areainfo`;
CREATE TABLE `t_areainfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT '0',
  `parentId` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_areainfo
-- ----------------------------
INSERT INTO `t_areainfo` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `t_areainfo` VALUES ('2', '0', '华北区', '1', '0');
INSERT INTO `t_areainfo` VALUES ('3', '0', '华南区', '1', '0');
INSERT INTO `t_areainfo` VALUES ('4', '0', '北京', '2', '0');
INSERT INTO `t_areainfo` VALUES ('5', '0', '海淀区', '4', '0');
INSERT INTO `t_areainfo` VALUES ('6', '0', '丰台区', '4', '0');
INSERT INTO `t_areainfo` VALUES ('7', '0', '朝阳区', '4', '0');
INSERT INTO `t_areainfo` VALUES ('8', '0', '北京XX区1', '4', '0');
INSERT INTO `t_areainfo` VALUES ('9', '0', '北京XX区2', '4', '0');
INSERT INTO `t_areainfo` VALUES ('10', '0', '北京XX区3', '4', '0');
INSERT INTO `t_areainfo` VALUES ('11', '0', '北京XX区4', '4', '0');
INSERT INTO `t_areainfo` VALUES ('12', '0', '北京XX区5', '4', '0');
INSERT INTO `t_areainfo` VALUES ('13', '0', '北京XX区6', '4', '0');
INSERT INTO `t_areainfo` VALUES ('14', '0', '北京XX区7', '4', '0');
INSERT INTO `t_areainfo` VALUES ('15', '0', '北京XX区8', '4', '0');
INSERT INTO `t_areainfo` VALUES ('16', '0', '北京XX区9', '4', '0');
INSERT INTO `t_areainfo` VALUES ('17', '0', '北京XX区10', '4', '0');
INSERT INTO `t_areainfo` VALUES ('18', '0', '北京XX区11', '4', '0');
INSERT INTO `t_areainfo` VALUES ('19', '0', '北京XX区12', '4', '0');
INSERT INTO `t_areainfo` VALUES ('20', '0', '北京XX区13', '4', '0');
INSERT INTO `t_areainfo` VALUES ('21', '0', '北京XX区14', '4', '0');
INSERT INTO `t_areainfo` VALUES ('22', '0', '北京XX区15', '4', '0');
INSERT INTO `t_areainfo` VALUES ('23', '0', '北京XX区16', '4', '0');
INSERT INTO `t_areainfo` VALUES ('24', '0', '北京XX区17', '4', '0');
INSERT INTO `t_areainfo` VALUES ('25', '0', '北京XX区18', '4', '0');
INSERT INTO `t_areainfo` VALUES ('26', '0', '北京XX区19', '4', '0');
INSERT INTO `t_areainfo` VALUES ('27', '0', '北京XX区1', '4', '0');
INSERT INTO `t_areainfo` VALUES ('28', '0', '北京XX区2', '4', '0');
INSERT INTO `t_areainfo` VALUES ('29', '0', '北京XX区3', '4', '0');
INSERT INTO `t_areainfo` VALUES ('30', '0', '北京XX区4', '4', '0');
INSERT INTO `t_areainfo` VALUES ('31', '0', '北京XX区5', '4', '0');
INSERT INTO `t_areainfo` VALUES ('32', '0', '北京XX区6', '4', '0');
INSERT INTO `t_areainfo` VALUES ('33', '0', '北京XX区7', '4', '0');
INSERT INTO `t_areainfo` VALUES ('34', '0', '北京XX区8', '4', '0');
INSERT INTO `t_areainfo` VALUES ('35', '0', '北京XX区9', '4', '0');
INSERT INTO `t_areainfo` VALUES ('36', '0', '北京XX区10', '4', '0');
INSERT INTO `t_areainfo` VALUES ('37', '0', '北京XX区11', '4', '0');
INSERT INTO `t_areainfo` VALUES ('38', '0', '北京XX区12', '4', '0');
INSERT INTO `t_areainfo` VALUES ('39', '0', '北京XX区13', '4', '0');
INSERT INTO `t_areainfo` VALUES ('40', '0', '北京XX区14', '4', '0');
INSERT INTO `t_areainfo` VALUES ('41', '0', '北京XX区15', '4', '0');
INSERT INTO `t_areainfo` VALUES ('42', '0', '北京XX区16', '4', '0');
INSERT INTO `t_areainfo` VALUES ('43', '0', '北京XX区17', '4', '0');
INSERT INTO `t_areainfo` VALUES ('44', '0', '北京XX区18', '4', '0');
INSERT INTO `t_areainfo` VALUES ('45', '0', '北京XX区19', '4', '0');
INSERT INTO `t_areainfo` VALUES ('46', '0', 'xx省1', '1', '0');
INSERT INTO `t_areainfo` VALUES ('47', '0', 'xx省2', '1', '0');
INSERT INTO `t_areainfo` VALUES ('48', '0', 'xx省3', '1', '0');
INSERT INTO `t_areainfo` VALUES ('49', '0', 'xx省4', '1', '0');
INSERT INTO `t_areainfo` VALUES ('50', '0', 'xx省5', '1', '0');
INSERT INTO `t_areainfo` VALUES ('51', '0', 'xx省6', '1', '0');
INSERT INTO `t_areainfo` VALUES ('52', '0', 'xx省7', '1', '0');
INSERT INTO `t_areainfo` VALUES ('53', '0', 'xx省8', '1', '0');
INSERT INTO `t_areainfo` VALUES ('54', '0', 'xx省9', '1', '0');
INSERT INTO `t_areainfo` VALUES ('55', '0', 'xx省10', '1', '0');
INSERT INTO `t_areainfo` VALUES ('56', '0', 'xx省11', '1', '0');
INSERT INTO `t_areainfo` VALUES ('57', '0', 'xx省12', '1', '0');
INSERT INTO `t_areainfo` VALUES ('58', '0', 'xx省13', '1', '0');
INSERT INTO `t_areainfo` VALUES ('59', '0', 'xx省14', '1', '0');
INSERT INTO `t_areainfo` VALUES ('60', '0', 'xx省15', '1', '0');
INSERT INTO `t_areainfo` VALUES ('61', '0', 'xx省16', '1', '0');
INSERT INTO `t_areainfo` VALUES ('62', '0', 'xx省17', '1', '0');
INSERT INTO `t_areainfo` VALUES ('63', '0', 'xx省18', '1', '0');
INSERT INTO `t_areainfo` VALUES ('64', '0', 'xx省19', '1', '0');

-- ----------------------------
-- Table structure for wc_article
-- ----------------------------
DROP TABLE IF EXISTS `wc_article`;
CREATE TABLE `wc_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `contents` text,
  `enable_status` tinyint(4) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_update_user_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wc_article
-- ----------------------------
INSERT INTO `wc_article` VALUES ('12', '党十九大', '党十九大', '1', '2017-07-08 21:03:50', '0', '2018-03-27 16:06:31', '2');
INSERT INTO `wc_article` VALUES ('23', '党十八大', '党十八大', '0', '2017-07-08 21:03:53', '0', '2018-03-27 16:06:44', '0');
INSERT INTO `wc_article` VALUES ('30', '党十七大', '党十七大', '1', '2017-07-08 21:03:55', '0', '2018-03-27 16:06:38', '0');

-- ----------------------------
-- Table structure for x_sequence_sequence
-- ----------------------------
DROP TABLE IF EXISTS `x_sequence_sequence`;
CREATE TABLE `x_sequence_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `value` bigint(20) NOT NULL,
  `name` varchar(32) NOT NULL,
  `gmt_create` datetime NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of x_sequence_sequence
-- ----------------------------
INSERT INTO `x_sequence_sequence` VALUES ('1', '301', 'G', '2019-05-18 02:55:14', '2019-05-18 03:35:07');
INSERT INTO `x_sequence_sequence` VALUES ('2', '101', 'RE', '2019-06-06 02:02:58', '2019-06-06 02:02:58');
