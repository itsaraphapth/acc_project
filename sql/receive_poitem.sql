/*
Navicat MySQL Data Transfer

Source Server         : localxampp
Source Server Version : 50505
Source Host           : 127.0.0.1:8889
Source Database       : mekascot_meka

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-26 18:40:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for receive_poitem
-- ----------------------------
-- DROP TABLE IF EXISTS `receive_poitem`;
CREATE TABLE IF NOT EXISTS `receive_poitem` (
  `poi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poi_matname` varchar(300) NOT NULL DEFAULT '',
  `poi_matcode` varchar(30) DEFAULT NULL,
  `poi_ref` varchar(30) DEFAULT NULL,
  `poi_costname` varchar(300) DEFAULT NULL,
  `poi_costcode` varchar(30) DEFAULT NULL,
  `poi_qty` int(11) DEFAULT NULL,
  `poi_unit` varchar(30) DEFAULT NULL,
  `poi_priceunit` double DEFAULT NULL,
  `poi_amount` double DEFAULT NULL,
  `poi_discountper1` int(11) DEFAULT NULL,
  `poi_discountper2` int(11) DEFAULT NULL,
  `poi_disamt` double DEFAULT NULL,
  `poi_vat` double DEFAULT NULL,
  `poi_remark` varchar(300) DEFAULT '',
  `poi_netamt` float DEFAULT NULL,
  `poi_receive` int(100) DEFAULT '0',
  `poi_receivetot` int(100) DEFAULT '0',
  `po_disex` int(11) DEFAULT '0',
  `poi_item` int(11) DEFAULT NULL,
  `ic_receive` int(11) DEFAULT '0',
  `poitem_id` int(11) DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `poi_receivedate` date DEFAULT NULL,
  `ic_warehouse` varchar(100) DEFAULT NULL,
  `ic_flag` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`poi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
