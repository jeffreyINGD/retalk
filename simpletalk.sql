/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50559
Source Host           : localhost:3306
Source Database       : simpletalk

Target Server Type    : MYSQL
Target Server Version : 50559
File Encoding         : 65001

Date: 2018-05-17 17:17:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `role_name` varchar(100) DEFAULT NULL,
  `role_note` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `role_type` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', 'admin', null, '0');

-- ----------------------------
-- Table structure for `admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('0', '1', '0', null);
INSERT INTO `admin_role_menu` VALUES ('1', '1', '1', null);

-- ----------------------------
-- Table structure for `admin_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role` (
  `id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES ('1', '1', '12');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(64) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `body` mediumtext,
  `created_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '而微软', '二个好地方', null, null, null);
INSERT INTO `article` VALUES ('2', '而', '更多', null, null, null);
INSERT INTO `article` VALUES ('3', null, null, null, null, null);
INSERT INTO `article` VALUES ('4', null, null, null, null, null);
INSERT INTO `article` VALUES ('5', null, null, null, null, null);
INSERT INTO `article` VALUES ('6', null, null, null, null, null);
INSERT INTO `article` VALUES ('7', null, null, null, null, null);
INSERT INTO `article` VALUES ('8', null, null, null, null, null);
INSERT INTO `article` VALUES ('9', null, null, null, null, null);
INSERT INTO `article` VALUES ('10', null, null, null, null, null);
INSERT INTO `article` VALUES ('11', null, null, null, null, null);
INSERT INTO `article` VALUES ('12', null, null, null, null, null);

-- ----------------------------
-- Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `article_id` bigint(64) unsigned NOT NULL,
  `tag_id` bigint(64) unsigned NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `fk_article_tag_tag_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `url` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `image` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `modifyed_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('0', null, '', null, null, '2018-05-17 16:45:13', null);
INSERT INTO `menu` VALUES ('1', '0', '', null, null, '2018-05-17 16:45:13', null);

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL DEFAULT '0',
  `author` int(11) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `content` varchar(5000) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `excerpt` varchar(1000) DEFAULT NULL,
  `post_status` varchar(20) DEFAULT NULL,
  `comment_status` varchar(20) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `post_type` int(11) DEFAULT NULL,
  `coment_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` bigint(64) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `login_name` varchar(50) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nice_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `registered` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('12', 'admin', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin', 'admin@tt.com', '34234234', '13800138000', null, '2018-05-04 10:32:25', '1');
