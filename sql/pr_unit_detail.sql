/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test_icon

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-05-03 11:14:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pr_unit_detail
-- ----------------------------
CREATE TABLE IF NOT EXISTS `pr_unit_detail` (
  `id` int(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `prno` varchar(20) DEFAULT NULL,
  `project_code` varchar(20) DEFAULT NULL,
  `unit_code` varchar(20) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `createuser` varchar(20) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `edituser` varchar(20) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `deluser` varchar(20) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
