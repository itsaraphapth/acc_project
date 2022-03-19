/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test_icon

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-05-01 18:08:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for model_unit
-- ----------------------------
CREATE TABLE IF NOT EXISTS `model_unit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `model_code` varchar(20) DEFAULT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `createuser` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `edituser` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `deluser` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
