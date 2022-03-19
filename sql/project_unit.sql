/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : test_icon

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-05-17 13:49:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for project_unit
-- ----------------------------
CREATE TABLE IF NOT EXISTS `project_unit` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `project_code` varchar(20) DEFAULT NULL,
  `model_code` varchar(20) DEFAULT NULL,
  `unitcode` varchar(20) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `createuser` varchar(30) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `edituser` varchar(30) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `deluser` varchar(30) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2748 DEFAULT CHARSET=utf8;
