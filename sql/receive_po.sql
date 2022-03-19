/*
Navicat MySQL Data Transfer

Source Server         : localxampp
Source Server Version : 50505
Source Host           : 127.0.0.1:8889
Source Database       : mekascot_meka

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-26 18:28:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for receive_po
-- ----------------------------
-- DROP TABLE IF EXISTS `receive_poee`;
CREATE TABLE IF NOT EXISTS `receive_po` (
  `po_recid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `po_reccode` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `po_recdate` date DEFAULT NULL,
  `podate` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `venderid` varchar(45) DEFAULT NULL,
  `vendername` varchar(100) DEFAULT NULL,
  `project` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `department` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `system` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `taxno` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `taxdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `docode` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `dodate` date DEFAULT NULL,
  `flag_control` varchar(5) DEFAULT NULL,
  `term` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `createuser` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `edituser` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `deluser` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ic_status` varchar(10) DEFAULT NULL,
  `po_recamttot` decimal(11,2) DEFAULT NULL,
  `apv_status` varchar(255) DEFAULT 'no',
  `compcode` varchar(45) DEFAULT NULL,
  `po_pono` varchar(15) DEFAULT NULL,
  `receive_type` varchar(10) DEFAULT NULL,
  `standdard` varchar(1) DEFAULT 'Y',
  `not_standard` varchar(1) DEFAULT 'N',
  `complete` varchar(1) DEFAULT 'Y',
  `incomplete` varchar(1) DEFAULT 'N',
  `ontime` varchar(1) DEFAULT 'Y',
  `late` varchar(1) DEFAULT 'N',
  `good` varchar(1) DEFAULT 'Y',
  `fail` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`po_recid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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

CREATE TABLE IF NOT EXISTS `receive_po_return` (
  `po_recid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `po_reccode` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `po_recdate` date DEFAULT NULL,
  `podate` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `venderid` varchar(45) DEFAULT NULL,
  `vendername` varchar(100) DEFAULT NULL,
  `project` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `department` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `system` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `taxno` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `taxdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `docode` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `dodate` date DEFAULT NULL,
  `flag_control` varchar(5) DEFAULT NULL,
  `term` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `createuser` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `edituser` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `deluser` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ic_status` varchar(10) DEFAULT NULL,
  `po_recamttot` decimal(11,2) DEFAULT NULL,
  `apv_status` varchar(255) DEFAULT 'no',
  `compcode` varchar(45) DEFAULT NULL,
  `po_pono` varchar(15) DEFAULT NULL,
  `receive_type` varchar(10) DEFAULT NULL,
  `standdard` varchar(1) DEFAULT 'Y',
  `not_standard` varchar(1) DEFAULT 'N',
  `complete` varchar(1) DEFAULT 'Y',
  `incomplete` varchar(1) DEFAULT 'N',
  `ontime` varchar(1) DEFAULT 'Y',
  `late` varchar(1) DEFAULT 'N',
  `good` varchar(1) DEFAULT 'Y',
  `fail` varchar(1) DEFAULT 'N',
  `reccode` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`po_recid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `receive_poitem_return` (
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
  `return_qty` DOUBLE(15,4) DEFAULT 0,
  PRIMARY KEY (`poi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_cheque_detail` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `api_code` varchar(100) DEFAULT NULL,
  `api_no` varchar(100) DEFAULT NULL,
  `api_duedate` datetime DEFAULT NULL,
  `api_less` varchar(255) DEFAULT NULL,
  `api_amt` decimal(20,2) DEFAULT NULL,
  `api_adv` decimal(20,2) DEFAULT NULL,
  `api_vat` decimal(20,2) DEFAULT NULL,
  `api_wt` decimal(20,2) DEFAULT NULL,
  `api_netamt` decimal(20,2) DEFAULT NULL,
  `api_inv` varchar(255) DEFAULT NULL,
  `api_pono` varchar(255) DEFAULT NULL,
  `api_type` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `ap_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_cheque_header` (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_code` varchar(100) DEFAULT NULL,
  `ap_vender` varchar(255) DEFAULT NULL,
  `ap_refno` varchar(255) DEFAULT NULL,
  `ap_refdate` datetime DEFAULT NULL,
  `ap_bank_id` varchar(255) DEFAULT NULL,
  `ap_typecheq` int(11) DEFAULT NULL,
  `ap_trac` varchar(255) DEFAULT NULL,
  `ap_chno` varchar(255) DEFAULT NULL,
  `ap_chnodate` datetime DEFAULT NULL,
  `ap_remark` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `ap_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_cheque_gl` (
  `ac_id` int(3) NOT NULL AUTO_INCREMENT,
  `ac_code` varchar(100) DEFAULT NULL,
  `ac_apcode` varchar(100) DEFAULT NULL,
  `ac_no` varchar(100) DEFAULT NULL,
  `ac_syscode` varchar(10) DEFAULT NULL,
  `ac_dr` decimal(20,2) DEFAULT NULL,
  `ac_cr` decimal(20,2) DEFAULT NULL,
  `ac_project` varchar(255) DEFAULT NULL,
  `ac_system` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `boq_item` (
  `boq_id` int(10) NOT NULL AUTO_INCREMENT,
  `boq_bd` varchar(255) DEFAULT NULL,
  `boq_job` varchar(255) DEFAULT NULL,
  `subcostcode` varchar(255) DEFAULT NULL,
  `subcostcodename` varchar(255) DEFAULT NULL,
  `newmatnamee` varchar(255) DEFAULT NULL,
  `newmatcode` varchar(255) DEFAULT NULL,
  `boqcode` varchar(255) DEFAULT NULL,
  `matboq` varchar(255) DEFAULT NULL,
  `unitcode` varchar(255) DEFAULT NULL,
  `unitname` varchar(255) DEFAULT NULL,
  `qty_bg` varchar(255) DEFAULT NULL,
  `qtyboq` varchar(255) DEFAULT NULL,
  `matpricebg` varchar(255) DEFAULT NULL,
  `matamtbg` varchar(255) DEFAULT NULL,
  `labpricebg` varchar(255) DEFAULT NULL,
  `labamtbg` varchar(255) DEFAULT NULL,
  `totalamt` varchar(255) DEFAULT NULL,
  `matpriceboq` varchar(255) DEFAULT NULL,
  `matamtboq` varchar(255) DEFAULT NULL,
  `labpriceboq` varchar(255) DEFAULT NULL,
  `labamtboq` varchar(255) DEFAULT NULL,
  `totalamtboq` varchar(255) DEFAULT NULL,
  `status` varchar(10)  DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `edituser` varchar(255) DEFAULT NULL,
  `editdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`boq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `boq_item_revise` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `boq_id` varchar(10) DEFAULT NULL,
  `boq_bd` varchar(255) DEFAULT NULL,
  `boq_job` varchar(255) DEFAULT NULL,
  `subcostcode` varchar(255) DEFAULT NULL,
  `subcostcodename` varchar(255) DEFAULT NULL,
  `newmatnamee` varchar(255) DEFAULT NULL,
  `newmatcode` varchar(255) DEFAULT NULL,
  `boqcode` varchar(255) DEFAULT NULL,
  `matboq` varchar(255) DEFAULT NULL,
  `unitcode` varchar(255) DEFAULT NULL,
  `unitname` varchar(255) DEFAULT NULL,
  `qty_bg` varchar(255) DEFAULT NULL,
  `qtyboq` varchar(255) DEFAULT NULL,
  `matpricebg` varchar(255) DEFAULT NULL,
  `matamtbg` varchar(255) DEFAULT NULL,
  `labpricebg` varchar(255) DEFAULT NULL,
  `labamtbg` varchar(255) DEFAULT NULL,
  `totalamt` varchar(255) DEFAULT NULL,
  `matpriceboq` varchar(255) DEFAULT NULL,
  `matamtboq` varchar(255) DEFAULT NULL,
  `labpriceboq` varchar(255) DEFAULT NULL,
  `labamtboq` varchar(255) DEFAULT NULL,
  `totalamtboq` varchar(255) DEFAULT NULL,
  `status` varchar(10)  DEFAULT NULL,
  `revise` varchar(10)  DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `edituser` varchar(255) DEFAULT NULL,
  `editdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `cnv_detail` (
  `cnvi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cnvi_system` varchar(10) DEFAULT NULL,
  `cnvi_ref` varchar(30) DEFAULT NULL,
  `cnvi_costname` varchar(300) DEFAULT NULL,
  `cnvi_costcode` varchar(30) DEFAULT NULL,
  `cnvi_remark` varchar(300) DEFAULT '',
  `compcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnvi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `cnv_header` (
  `cnv_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cnv_item` int(11) DEFAULT NULL,
  `cnv_code` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `cnv_pono` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `cnv_vender` text,
  `cnv_type` varchar(20) DEFAULT NULL,
  `cnv_do` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `cnv_inv` varchar(15) DEFAULT NULL,
  `cnv_duedate` date DEFAULT NULL,
  `cnv_crterm` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `cnv_project` varchar(100) DEFAULT NULL,
  `cnv_system` varchar(30) DEFAULT NULL,
  `cnv_department` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cnv_netamt` float(15,0) DEFAULT NULL,
  `cnv_vat` int(10) DEFAULT NULL,
  `cnv_totamt` float(15,0) DEFAULT NULL,
  `cnv_useradd` varchar(100) DEFAULT NULL,
  `cnv_useredit` varchar(100) DEFAULT NULL,
  `cnv_userdel` varchar(100) DEFAULT NULL,
  `cnv_timeupdate` datetime DEFAULT NULL,
  `cnv_status` varchar(100) DEFAULT 'wait',
  `cnv_dateapprove` date DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `cnv_gldate` date DEFAULT NULL,
  `cnv_glyear` varchar(5) DEFAULT NULL,
  `cnv_glperiod` varchar(2) DEFAULT NULL,
  `cnv_date` date DEFAULT NULL,
  PRIMARY KEY (`cnv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_down_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apdi_ref` varchar(20) DEFAULT NULL,
  `apdi_amtax` varchar(20) DEFAULT NULL,
  `apdi_vendor` varchar(255) DEFAULT NULL,
  `apdi_tax` varchar(255) DEFAULT NULL,
  `apdi_amount` int(25) DEFAULT NULL,
  `apdi_vat` int(5) DEFAULT NULL,
  `apdi_vatt` int(20) DEFAULT NULL,
  `apdi_cn` varchar(255) DEFAULT NULL,
  `apdi_taxdate` datetime(6) DEFAULT NULL,
  `apdi_tiv` varchar(255) DEFAULT NULL,
  `apdi_costcode` varchar(100) DEFAULT NULL,
  `apdi_taxid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_down_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apd_item` varchar(20) DEFAULT NULL,
  `apd_code` varchar(20) DEFAULT NULL,
  `apd_vender` varchar(20) DEFAULT NULL,
  `apd_tax_no` int(20) DEFAULT NULL,
  `apd_term` varchar(20) DEFAULT NULL,
  `apd_duedate` date DEFAULT NULL,
  `apd_descrip` varchar(255) DEFAULT NULL,
  `apd_job` varchar(255) DEFAULT NULL,
  `apd_dep` varchar(20) DEFAULT NULL,
  `apd_project` int(20) DEFAULT NULL,
  `apd_amount` decimal(10,2) DEFAULT NULL,
  `apd_vat` decimal(10,2) DEFAULT NULL,
  `apd_totalvat` decimal(10,2) DEFAULT NULL,
  `apd_net_amt` decimal(15,2) DEFAULT NULL,
  `apd_date` date DEFAULT NULL,
  `apd_period` varchar(5) DEFAULT NULL,
  `apd_year` varchar(5) DEFAULT NULL,
  `apd_datatype` varchar(50) DEFAULT NULL,
  `apd_status` varchar(10) DEFAULT NULL,
  `apd_type` varchar(10) DEFAULT NULL,
  `apo_tax` varchar(255) DEFAULT NULL,
  `apd_system` varchar(100) DEFAULT NULL,
  `apd_lessadv` decimal(12,4) DEFAULT NULL,
  `apd_lessret` decimal(12,4) DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `cnv_amt` varchar(100) DEFAULT NULL,
  `cnv_vat` varchar(100) DEFAULT NULL,
  `cnv_tovat` varchar(100) DEFAULT NULL,
  `cnv_namt` varchar(100) DEFAULT NULL,
  `apd_totalnetamt` varchar(100) DEFAULT NULL,
  `apd_wt` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_ret_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apri_ref` varchar(20) DEFAULT NULL,
  `apri_amtax` varchar(20) DEFAULT NULL,
  `apri_vendor` varchar(255) NOT NULL,
  `apri_tax` varchar(255) DEFAULT NULL,
  `apri_amount` int(25) DEFAULT NULL,
  `apri_vat` int(5) DEFAULT NULL,
  `apri_vatt` int(20) DEFAULT NULL,
  `apri_cn` varchar(255) DEFAULT NULL,
  `apri_taxdate` date DEFAULT NULL,
  `apri_tiv` varchar(255) DEFAULT NULL,
  `apri_taxid` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_ret_header` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apr_item` varchar(20) DEFAULT NULL,
  `apr_code` varchar(20) DEFAULT NULL,
  `apr_vender` varchar(20) DEFAULT NULL,
  `apr_tax_no` int(20) DEFAULT NULL,
  `apr_term` varchar(20) DEFAULT NULL,
  `apr_duedate` date DEFAULT NULL,
  `apr_descrip` varchar(255) DEFAULT NULL,
  `apr_job` varchar(255) DEFAULT NULL,
  `apr_dep` varchar(20) DEFAULT NULL,
  `apr_project` int(20) DEFAULT NULL,
  `apr_amount` decimal(10,2) DEFAULT NULL,
  `apr_vat` decimal(10,2) DEFAULT NULL,
  `apr_totalvat` decimal(10,2) DEFAULT NULL,
  `apr_net_amt` decimal(15,2) DEFAULT NULL,
  `apr_date` date DEFAULT NULL,
  `apr_period` varchar(5) DEFAULT NULL,
  `apr_year` varchar(5) DEFAULT NULL,
  `apr_datatype` varchar(50) DEFAULT NULL,
  `apr_status` varchar(10) DEFAULT NULL,
  `apr_type` varchar(10) DEFAULT NULL,
  `apr_tax` varchar(255) DEFAULT NULL,
  `apr_system` varchar(100) DEFAULT NULL,
  `apr_lessret` decimal(12,4) DEFAULT NULL,
  `apr_lessadv` decimal(12,4) DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `cnv_amt` varchar(100) DEFAULT NULL,
  `cnv_vat` varchar(100) DEFAULT NULL,
  `cnv_tovat` varchar(100) DEFAULT NULL,
  `cnv_namt` varchar(100) DEFAULT NULL,
  `apr_totalnetamt` varchar(100) DEFAULT NULL,
  `apr_wt` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS  `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `email_from` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `useradd` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(255) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(255) DEFAULT NULL,
  `daldate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cno_header` (
  `cno_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cno_item` int(11) DEFAULT NULL,
  `cno_code` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `cno_pono` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `cno_vender` text,
  `cno_type` varchar(20) DEFAULT NULL,
  `cno_do` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `cno_inv` varchar(15) DEFAULT NULL,
  `cno_duedate` date DEFAULT NULL,
  `cno_crterm` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `cno_project` varchar(100) DEFAULT NULL,
  `cno_system` varchar(30) DEFAULT NULL,
  `cno_department` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cno_netamt` float(15,0) DEFAULT NULL,
  `cno_vat` int(10) DEFAULT NULL,
  `cno_totamt` float(15,0) DEFAULT NULL,
  `cno_useradd` varchar(100) DEFAULT NULL,
  `cno_useredit` varchar(100) DEFAULT NULL,
  `cno_userdel` varchar(100) DEFAULT NULL,
  `cno_timeupdate` datetime DEFAULT NULL,
  `cno_status` varchar(100) DEFAULT 'wait',
  `cno_dateapprove` date DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `cno_gldate` date DEFAULT NULL,
  `cno_glyear` varchar(5) DEFAULT NULL,
  `cno_glperiod` varchar(2) DEFAULT NULL,
  `cno_date` date DEFAULT NULL,
  PRIMARY KEY (`cno_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cno_detail` (
  `cnoi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cnoi_matname` varchar(300) NOT NULL DEFAULT '',
  `cnoi_matcode` varchar(30) DEFAULT NULL,
  `cnoi_system` varchar(10) DEFAULT NULL,
  `cnoi_ref` varchar(30) DEFAULT NULL,
  `cnoi_costname` varchar(300) DEFAULT NULL,
  `cnoi_costcode` varchar(30) DEFAULT NULL,
  `cnoi_qty` decimal(11,2) DEFAULT NULL,
  `cnoi_unit` varchar(30) DEFAULT NULL,
  `cnoi_priceunit` decimal(10,2) DEFAULT NULL,
  `cnoi_amount` decimal(10,2) DEFAULT NULL,
  `coni_discountper1` int(11) DEFAULT NULL,
  `cnoi_discountper2` int(11) DEFAULT NULL,
  `cnoi_disamt` decimal(10,2) DEFAULT NULL,
  `cnoi_vatper` decimal(10,2) DEFAULT NULL,
  `cnoi_vat` decimal(10,2) DEFAULT NULL,
  `cnoi_remark` varchar(300) DEFAULT '',
  `cnoi_netamt` decimal(10,2) DEFAULT NULL,
  `cnoi_receive` int(100) NOT NULL DEFAULT '0',
  `cnoi_receivetot` int(100) DEFAULT '0',
  `po_disex` decimal(11,2) DEFAULT '0.00',
  `cnoi_item` int(11) DEFAULT NULL,
  `ic_receive` int(11) DEFAULT '0',
  `compcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cnoi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cns_header` (
  `cns_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cns_item` int(10) DEFAULT NULL,
  `cns_period` int(10) DEFAULT NULL,
  `cns_code` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cns_duedate` date DEFAULT NULL,
  `ap_code` varchar(100) DEFAULT NULL,
  `cns_project` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cns_department` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cns_system` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cns_invno` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cns_amount` decimal(10,2) DEFAULT NULL,
  `cns_vat` int(11) DEFAULT NULL,
  `cns_vattot` decimal(10,2) DEFAULT NULL,
  `cns_retention` decimal(10,2) DEFAULT NULL,
  `adduser` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `deluser` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `cns_status` varchar(100) DEFAULT 'wait',
  `cns_billno` varchar(100) DEFAULT NULL,
  `cns_payto` text,
  `cns_datatype` varchar(100) DEFAULT NULL,
  `cns_deduct` varchar(255) DEFAULT NULL,
  `cns_lessre` varchar(255) DEFAULT NULL,
  `cns_gldate` datetime DEFAULT NULL,
  `cns_glyear` varchar(255) DEFAULT NULL,
  `cns_glperiod` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cns_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cns_detail` (
  `cnsi_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cnsi_ref` varchar(100) DEFAULT NULL,
  `cnsi_matcode` varchar(100) DEFAULT NULL,
  `cnsi_matname` varchar(100) DEFAULT NULL,
  `cnsi_costcode` varchar(100) DEFAULT NULL,
  `cnsi_costname` varchar(100) DEFAULT NULL,
  `cnsi_qty` int(11) DEFAULT NULL,
  `cnsi_amount` decimal(10,2) DEFAULT NULL,
  `cnsi_unit` varchar(100) DEFAULT NULL,
  `adduser` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `edituser` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `deluser` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cnsi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `master_business` (
  `business_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `business_code` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `useradd` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(255) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `compcode` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `gl_post_system` (
  `gl_id` int(10) NOT NULL AUTO_INCREMENT,
  `gl_type` varchar(10) DEFAULT NULL,
  `gl_refcode` varchar(20) DEFAULT NULL,
  `gl_actcode` varchar(20) DEFAULT NULL,
  `gl_project` varchar(20) DEFAULT NULL,
  `gl_job` varchar(20) DEFAULT NULL,
  `gl_dr` decimal(20,2) DEFAULT NULL,
  `gl_cr` decimal(20,2) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`gl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_tax` (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_code` varchar(20) DEFAULT NULL,
  `ap_taxno` varchar(100) DEFAULT NULL,
  `ap_taxdate` date DEFAULT NULL,
  `project_id` varchar(100) DEFAULT NULL,
  `vender_id` varchar(100) DEFAULT NULL,
  `ap_period` varchar(20) DEFAULT NULL,
  `ap_year` varchar(20) DEFAULT NULL,
  `ap_type` varchar(20) DEFAULT NULL,
  `ap_amount` decimal(20,2) DEFAULT NULL,
  `ap_amtvat` decimal(20,2) DEFAULT NULL,
  `ap_netamt` decimal(20,2) DEFAULT NULL,
  `ap_taxid` varchar(100) DEFAULT NULL,
  `ap_vatper` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `less_other` (
  `id_lessother` int(11) NOT NULL AUTO_INCREMENT,
  `less_name` varchar(100) DEFAULT NULL,
  `less_ac` varchar(100) DEFAULT NULL,
  `less_costcode` varchar(100) DEFAULT NULL,
  `less_tax` varchar(100) DEFAULT NULL,
  `less_taxtype` varchar(100) DEFAULT NULL,
  `addby` varchar(100) DEFAULT NULL,
  `adddate` varchar(100) DEFAULT NULL,
  `editby` varchar(100) DEFAULT NULL,
  `editdate` varchar(100) DEFAULT NULL,
  `delby` varchar(100) DEFAULT NULL,
  `deldate` varchar(100) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_lessother`)
  )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

  CREATE TABLE IF NOT EXISTS `bill_lessother` (
  `id_lobill` int(10) NOT NULL,
  `id_bill` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `less_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `less_amount` double(30,4) DEFAULT NULL,
  `less_remark` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `less_refitem` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `add_by` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `add_date` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `compcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_lobill`)
   )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `lessother` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `pj` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `advanced` varchar(255) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `retention` varchar(255) DEFAULT NULL,
  `wt` varchar(255) DEFAULT NULL,
  `netex` varchar(255) DEFAULT NULL,
  `netin` varchar(255) DEFAULT NULL,
  `useradd` varchar(255) DEFAULT NULL,
  `addate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `bankforward` (
  `id_bank` int(5) NOT NULL AUTO_INCREMENT,
  `bank_no` varchar(50) DEFAULT NULL,
  `pj_bk` varchar(50) DEFAULT NULL,
  `dm_bk` varchar(50) DEFAULT NULL,
  `pjdm_bank` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `amt_bank` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `creatuser` varchar(50) DEFAULT NULL,
  `creatudate` datetime DEFAULT NULL,
  `compcode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `progress_submit` (
  `id_submit` int(5) NOT NULL AUTO_INCREMENT,
  `submit_no` varchar(50) NOT NULL,
  `refferent` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `year` varchar(4) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL,
  `payment_type` date DEFAULT NULL,
  `site_no` varchar(100) DEFAULT NULL,
  `after_site_no` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `after_customer` varchar(100) DEFAULT NULL,
  `subject_remark` varchar(100) DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `amount_submit` varchar(100) DEFAULT NULL,
  `amount_certificate` varchar(100) DEFAULT NULL,
  `avance` varchar(100) DEFAULT NULL,
  `after_avance` varchar(100) DEFAULT NULL,
  `vat` varchar(100) DEFAULT NULL,
  `after_vat` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `exchang` varchar(100) DEFAULT NULL,
  `retention` varchar(100) DEFAULT NULL,
  `after_retention` varchar(100) DEFAULT NULL,
  `wt` varchar(100) DEFAULT NULL,
  `after_wt` varchar(100) DEFAULT NULL,
  `net_amount` varchar(100) DEFAULT NULL,
  `printletter` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_submit`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `progress_submit_detail` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `submit_ref` varchar(50) NOT NULL,
  `project_id` int(5) DEFAULT NULL,
  `projectd_job` varchar(100) DEFAULT NULL,
  `job_amount` varchar(100) DEFAULT NULL,
  `amount_cer` varchar(100) DEFAULT NULL,
  `import` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for module_header
-- ----------------------------
DROP TABLE IF EXISTS `module_header`;
CREATE TABLE `module_header` (
  `module_id` int(11) DEFAULT NULL,
  `module_name` varchar(50) DEFAULT NULL,
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_header
-- ----------------------------
INSERT INTO `module_header` VALUES ('1', 'Purchase Requisition System');
INSERT INTO `module_header` VALUES ('2', 'Purchase Order System');
INSERT INTO `module_header` VALUES ('3', 'Fix Asset Management');
INSERT INTO `module_header` VALUES ('4', 'Inventory Control');
INSERT INTO `module_header` VALUES ('5', 'Budget Control System');
INSERT INTO `module_header` VALUES ('6', 'Project Report');
INSERT INTO `module_header` VALUES ('7', 'General Ledger System');
INSERT INTO `module_header` VALUES ('8', 'Setup Option');
INSERT INTO `module_header` VALUES ('9', 'Setup Master');
INSERT INTO `module_header` VALUES ('10', 'Account Payable System');
INSERT INTO `module_header` VALUES ('11', 'Account Receivable');


-- ----------------------------
-- Table structure for module_detail
-- ----------------------------
DROP TABLE IF EXISTS `module_detail`;
CREATE TABLE `module_detail` (
  `sub_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_module` int(11) NOT NULL,
  `sub_module_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sub_module_id`),
  KEY `ref_module` (`ref_module`),
  CONSTRAINT `module_detail_ibfk_1` FOREIGN KEY (`ref_module`) REFERENCES `module_header` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_detail
-- ----------------------------
INSERT INTO `module_detail` VALUES ('1', '1', 'New PR');
INSERT INTO `module_detail` VALUES ('2', '1', 'Report');
INSERT INTO `module_detail` VALUES ('3', '1', 'PR Archive');
INSERT INTO `module_detail` VALUES ('4', '1', 'Approve');
INSERT INTO `module_detail` VALUES ('5', '1', 'New Petty Cash');
INSERT INTO `module_detail` VALUES ('6', '2', 'New PO');
INSERT INTO `module_detail` VALUES ('7', '2', 'Report');
INSERT INTO `module_detail` VALUES ('8', '2', 'PO Archive');
INSERT INTO `module_detail` VALUES ('9', '2', 'Approve');
INSERT INTO `module_detail` VALUES ('10', '2', 'PO Receipe And Return');
INSERT INTO `module_detail` VALUES ('15', '2', 'New Work Order');
INSERT INTO `module_detail` VALUES ('17', '2', 'Report Work Order');
INSERT INTO `module_detail` VALUES ('18', '2', 'Work Order Archive');
INSERT INTO `module_detail` VALUES ('19', '1', 'Petty Cash Archive');
INSERT INTO `module_detail` VALUES ('21', '3', 'Add Asset');
INSERT INTO `module_detail` VALUES ('22', '3', 'Maintenance Asset');
INSERT INTO `module_detail` VALUES ('23', '3', 'Transfer Asset');
INSERT INTO `module_detail` VALUES ('24', '3', 'Depreciation');
INSERT INTO `module_detail` VALUES ('25', '3', 'Write Off Asset');
INSERT INTO `module_detail` VALUES ('26', '3', 'Count Asset');
INSERT INTO `module_detail` VALUES ('27', '3', 'Report');
INSERT INTO `module_detail` VALUES ('28', '4', 'Goods Receive Note');
INSERT INTO `module_detail` VALUES ('29', '4', 'Inventory Receive Note');
INSERT INTO `module_detail` VALUES ('30', '4', 'Reservation Documents');
INSERT INTO `module_detail` VALUES ('31', '4', 'Material Withdrawal');
INSERT INTO `module_detail` VALUES ('32', '4', 'Return Reservation Documents');
INSERT INTO `module_detail` VALUES ('33', '4', 'History Process Goods Receive Note ');
INSERT INTO `module_detail` VALUES ('34', '4', 'History Process Inventory Receive Note');
INSERT INTO `module_detail` VALUES ('35', '4', 'History Process Materials Transfer ');
INSERT INTO `module_detail` VALUES ('36', '4', 'Materials Transfer ');
INSERT INTO `module_detail` VALUES ('37', '4', 'Receive Materials Transfer ');
INSERT INTO `module_detail` VALUES ('38', '4', 'History Process Receive Materials Transfer');
INSERT INTO `module_detail` VALUES ('39', '4', 'View Stock Card');
INSERT INTO `module_detail` VALUES ('40', '4', 'History Process Material Withdrawal');
INSERT INTO `module_detail` VALUES ('41', '4', 'Store');
INSERT INTO `module_detail` VALUES ('42', '4', 'Report');
INSERT INTO `module_detail` VALUES ('45', '5', 'Bill of Quatity(BQQ)');
INSERT INTO `module_detail` VALUES ('46', '5', 'Setup Bid Project Tender');
INSERT INTO `module_detail` VALUES ('47', '5', 'Archive Tender');
INSERT INTO `module_detail` VALUES ('48', '6', 'Project Status Overview');
INSERT INTO `module_detail` VALUES ('50', '6', 'Project Cashflow By account');
INSERT INTO `module_detail` VALUES ('51', '6', 'Project Cashflow by cash');
INSERT INTO `module_detail` VALUES ('52', '6', 'Project Inventory');
INSERT INTO `module_detail` VALUES ('53', '6', 'Project Billing');
INSERT INTO `module_detail` VALUES ('54', '6', 'Back account management');
INSERT INTO `module_detail` VALUES ('55', '6', 'Office expense management');
INSERT INTO `module_detail` VALUES ('56', '6', 'Real estate management');
INSERT INTO `module_detail` VALUES ('57', '6', 'Material Price');
INSERT INTO `module_detail` VALUES ('58', '7', 'Journal Vocher');
INSERT INTO `module_detail` VALUES ('59', '7', 'General Ledger Posting');
-- INSERT INTO `module_detail` VALUES ('60', '7', 'Journal Vocher NEW');
-- INSERT INTO `module_detail` VALUES ('61', '7', 'Print Journal Vocher');
INSERT INTO `module_detail` VALUES ('62', '7', 'Report');
-- INSERT INTO `module_detail` VALUES ('63', '7', 'Setup Department');
-- INSERT INTO `module_detail` VALUES ('64', '7', 'Account_Period_Setup');
-- INSERT INTO `module_detail` VALUES ('65', '7', 'book ac');
INSERT INTO `module_detail` VALUES ('66', '8', 'Setup Master');
INSERT INTO `module_detail` VALUES ('67', '9', 'Setup Company');
INSERT INTO `module_detail` VALUES ('68', '9', 'SETUP System Default');
INSERT INTO `module_detail` VALUES ('69', '9', 'Setup Project');
INSERT INTO `module_detail` VALUES ('70', '9', 'Setup Department');
INSERT INTO `module_detail` VALUES ('71', '9', 'Setup Material');
INSERT INTO `module_detail` VALUES ('72', '9', 'Setup Vender');
INSERT INTO `module_detail` VALUES ('74', '9', 'Setup Unit');
INSERT INTO `module_detail` VALUES ('75', '9', 'Setup CostCode');
INSERT INTO `module_detail` VALUES ('76', '9', 'Setup Employee');
INSERT INTO `module_detail` VALUES ('77', '9', 'Setup Permission');
INSERT INTO `module_detail` VALUES ('80', '9', 'Setup Debtor');
INSERT INTO `module_detail` VALUES ('81', '9', 'Setup Bank');
INSERT INTO `module_detail` VALUES ('82', '9', 'Setup Account Chart');
INSERT INTO `module_detail` VALUES ('83', '9', 'Setup Expense');
INSERT INTO `module_detail` VALUES ('84', '9', 'Setup Option');
INSERT INTO `module_detail` VALUES ('85', '9', 'Setup Book');
INSERT INTO `module_detail` VALUES ('86', '9', 'Account Period Setup');
INSERT INTO `module_detail` VALUES ('87', '9', 'Setup Cost Type');
INSERT INTO `module_detail` VALUES ('88', '9', 'Setup Type');
INSERT INTO `module_detail` VALUES ('89', '9', 'Setup WareHouse');
INSERT INTO `module_detail` VALUES ('90', '9', 'Setup Area');
INSERT INTO `module_detail` VALUES ('91', '9', 'Setup Less Other');
INSERT INTO `module_detail` VALUES ('92', '9', 'Setup Depreciation Method');
INSERT INTO `module_detail` VALUES ('93', '9', 'Setup Asset Type');
INSERT INTO `module_detail` VALUES ('94', '9', 'Setup Asset Expense Type');
INSERT INTO `module_detail` VALUES ('95', '9', 'Setup Asset Location');
INSERT INTO `module_detail` VALUES ('96', '9', 'Setup Bid Project Tender');
INSERT INTO `module_detail` VALUES ('97', '9', 'Setup Owner');
INSERT INTO `module_detail` VALUES ('98', '9', 'Bill of Meterial(BOM)');
INSERT INTO `module_detail` VALUES ('99', '10', 'Account Normal Vender');
INSERT INTO `module_detail` VALUES ('100', '10', 'Account Down Vender');
INSERT INTO `module_detail` VALUES ('101', '10', 'Account Rentention Vender');
INSERT INTO `module_detail` VALUES ('102', '10', 'Account Payment');
INSERT INTO `module_detail` VALUES ('103', '10', 'Account Subcontractor');
INSERT INTO `module_detail` VALUES ('104', '10', 'Change Infomation');
INSERT INTO `module_detail` VALUES ('105', '10', 'Account Petty Cash');
INSERT INTO `module_detail` VALUES ('107', '10', 'Credit Note (APV)');
INSERT INTO `module_detail` VALUES ('108', '10', 'Credit Note (APS)');
INSERT INTO `module_detail` VALUES ('109', '10', 'Credit Note (APO)');
INSERT INTO `module_detail` VALUES ('110', '10', 'Open Cheque (PV)');
-- INSERT INTO `module_detail` VALUES ('111', '10', 'แบบสรุป');
INSERT INTO `module_detail` VALUES ('112', '10', 'Clear AP');
INSERT INTO `module_detail` VALUES ('113', '10', 'Print Withholding Tax');
INSERT INTO `module_detail` VALUES ('114', '10', 'Cheque Paid');
INSERT INTO `module_detail` VALUES ('115', '10', 'Recive Docment Tax');
INSERT INTO `module_detail` VALUES ('116', '10', 'Report AP');
-- INSERT INTO `module_detail` VALUES ('117', '10', 'รายงานทะเบียนเช็ค');
-- INSERT INTO `module_detail` VALUES ('118', '10', 'รายงานสถานะเช็ค');
-- INSERT INTO `module_detail` VALUES ('119', '10', 'รายงานการตัดเจ้าหนี้');
-- INSERT INTO `module_detail` VALUES ('120', '10', 'รายงานภาษี');
-- INSERT INTO `module_detail` VALUES ('121', '10', 'รายงานภาษีหัก ณ ที่จ่าย');
-- INSERT INTO `module_detail` VALUES ('122', '10', 'รายงานละเอียดเจ้าหนี้');
-- INSERT INTO `module_detail` VALUES ('123', '10', 'รายงานเจ้าหนี้รายตัว');
-- INSERT INTO `module_detail` VALUES ('124', '10', 'รายงานแบบสรุป');
-- INSERT INTO `module_detail` VALUES ('125', '10', 'รายงานเจ้าหนี้คงเหลือ จำแนกตามอายุหนี้');
-- INSERT INTO `module_detail` VALUES ('126', '10', 'รายงานเจ้าหนี้คงเหลือ');
-- INSERT INTO `module_detail` VALUES ('127', '10', 'บัญชีแยกประเภท');
-- INSERT INTO `module_detail` VALUES ('131', '10', 'รายการตั้งหนี้รับวางบิลตามใบสั่งจ้าง');
INSERT INTO `module_detail` VALUES ('133', '11', 'Invoice Dowm');
INSERT INTO `module_detail` VALUES ('134', '11', 'Invoice Progress');
INSERT INTO `module_detail` VALUES ('135', '11', 'Invoice Retention');
INSERT INTO `module_detail` VALUES ('136', '11', 'INVOICE');
INSERT INTO `module_detail` VALUES ('137', '11', 'Report AR');
INSERT INTO `module_detail` VALUES ('138', '11', 'Account Receivable');
INSERT INTO `module_detail` VALUES ('139', '11', 'Receipt Construction');
INSERT INTO `module_detail` VALUES ('140', '11', 'Paid Receipt');
INSERT INTO `module_detail` VALUES ('141', '11', 'Clear AR');
-- INSERT INTO `module_detail` VALUES ('142', '11', 'Post To GL System');
-- INSERT INTO `module_detail` VALUES ('143', '11', 'รายงานลูกหนี้');
INSERT INTO `module_detail` VALUES ('145', '6', 'Transaction');
INSERT INTO `module_detail` VALUES ('146', '6', 'Inquiry');
INSERT INTO `module_detail` VALUES ('147', '6', 'Report');
INSERT INTO `module_detail` VALUES ('148', '9', 'Job Description');
INSERT INTO `module_detail` VALUES ('149', '9', 'Job Type');
INSERT INTO `module_detail` VALUES ('150', '9', 'Setup system');
INSERT INTO `module_detail` VALUES ('151', '9', 'Report Permssion Module');
INSERT INTO `module_detail` VALUES ('152', '9', 'Report Permssion Projects');
INSERT INTO `module_detail` VALUES ('153', '4', 'Adjust Cost');
-- INSERT INTO `module_detail` VALUES ('154', '10', 'Credit Note (APV) Total');
-- INSERT INTO `module_detail` VALUES ('155', '10', 'Credit Note (APS) Total');
-- INSERT INTO `module_detail` VALUES ('156', '10', 'Credit Note (APO) Total');
INSERT INTO `module_detail` VALUES ('157', '4', 'Report  amount permission');
INSERT INTO `module_detail` VALUES ('158', '4', 'Approve Receipt Other');
INSERT INTO `module_detail` VALUES ('159', '4', 'New Receipt Other');
INSERT INTO `module_detail` VALUES ('160', '4', 'Archive Receipt Other');
INSERT INTO `module_detail` VALUES ('161', '4', 'Return IC');
INSERT INTO `module_detail` VALUES ('163', '4', 'Approve Reservation Documents');
INSERT INTO `module_detail` VALUES ('162', '11', 'Paid Receipt Other');
CREATE TABLE IF NOT EXISTS `member_permission` (
  `ref_username` varchar(100) DEFAULT NULL,
  `ref_module_id` int(11) DEFAULT NULL,
  `ref_sub_module` int(11) DEFAULT NULL,
  `read` varchar(10) DEFAULT '1' COMMENT 'สิทธิการเห็นข้อมูล',
  `write` varchar(10) DEFAULT '0' COMMENT 'สิทธิการเขียนข้อมูล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `bom_header` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`),
  `bom_code` varchar(20) NOT NULL COMMENT 'รหัส bom',
  `bom_descrip` varchar(35) DEFAULT NULL COMMENT 'รายระเอียด bom'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `bom_detail` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ref_bom_code` varchar(20) DEFAULT NULL,
  `mat_code` varchar(20) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `desc` varchar(35) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `unit_code` varchar(5) DEFAULT NULL,
  `price` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `approve` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `approve_project` varchar(255) DEFAULT NULL,
  `approve_sequence` varchar(255) DEFAULT NULL,
  `approve_mid` varchar(255) DEFAULT NULL,
  `approve_mname` varchar(255) DEFAULT NULL,
  `approve_position` varchar(255) DEFAULT NULL,
  `approve_cost` varchar(255) DEFAULT NULL,
  `approve_lock` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `approve_pr` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `approve_td` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `approve_revise` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `approve_bk` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `decrement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pr_item_id` varchar(100) DEFAULT NULL,
  `ref_pr` varchar(100) DEFAULT NULL,
  `qty` varchar(10) DEFAULT NULL,
  `decrement` varchar(10) DEFAULT NULL,
  `balance` varchar(10) DEFAULT NULL,
  `decrement_no` varchar(10) DEFAULT NULL,
  `user_decrement` varchar(100) DEFAULT NULL,
  `remark` text,
  `date_decrement` date DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `decrement_status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `gl_batch_details` (
  `vchid` int(10) NOT NULL AUTO_INCREMENT,
  `vchno` varchar(100) DEFAULT NULL,
  `ac_code` varchar(20) DEFAULT NULL,
  `ac_name` varchar(100) DEFAULT NULL,
  `amtdr` decimal(20,2) DEFAULT NULL,
  `amtcr` decimal(20,2) DEFAULT NULL,
  `varchar` varchar(100) DEFAULT NULL,
  `namevendor` varchar(100) DEFAULT NULL,
  `jobcode` varchar(20) DEFAULT NULL,
  `systemname` varchar(100) DEFAULT NULL,
  `gldesc` varchar(250) DEFAULT NULL,
  `dpt_title` varchar(200) DEFAULT NULL,
  `dpt_code` varchar(100) DEFAULT NULL,
  `namecus` varchar(200) DEFAULT NULL,
  `cust_code` varchar(100) DEFAULT NULL,
  `project_id` int(20) DEFAULT NULL,
  `project_name` varchar(200) DEFAULT NULL,
  `costcode` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `refdocdate` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `taxper` varchar(10) DEFAULT NULL,
  `taxamount` decimal(20,2) DEFAULT NULL,
  `taxtype` varchar(255) DEFAULT NULL,
  `taxno` int(20) DEFAULT NULL,
  `taxdate` date DEFAULT NULL,
  `taxdes` varchar(250) DEFAULT NULL,
  `taxid` int(100) DEFAULT NULL,
  `wtno` int(100) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `maincode` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `refno` varchar(100) DEFAULT NULL,
  `paid` varchar(100) DEFAULT NULL,
  `tax` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vchid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_credit_header` (
  `inv_id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `inv_no` varchar(20) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `inv_dateref` date DEFAULT NULL,
  `inv_duedate` date DEFAULT NULL,
  `inv_type` varchar(20) DEFAULT NULL,
  `inv_project` varchar(100) DEFAULT NULL,
  `inv_owner` varchar(100) DEFAULT NULL,
  `inv_receipt` varchar(100) DEFAULT NULL,
  `inv_arnetamt` decimal(20,2) DEFAULT NULL,
  `inv_receiptamt` decimal(20,2) DEFAULT NULL,
  `inv_contactamount` decimal(20,2) DEFAULT NULL,
  `inv_period` int(10) DEFAULT NULL,
  `inv_credit` varchar(100) DEFAULT NULL,
  `inv_vat` varchar(20) DEFAULT NULL,
  `inv_tax` varchar(20) DEFAULT NULL,
  `inv_wt` varchar(20) DEFAULT NULL,
  `inv_status` varchar(100) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `inv_remark` text,
  `inv_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

CREATE TABLE  IF NOT EXISTS `ar_credit_detail` (
  `invi_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `inv_ref` varchar(100) DEFAULT NULL,
  `inv_period` varchar(200) DEFAULT NULL,
  `inv_system` varchar(10) DEFAULT NULL,
  `inv_downamt` decimal(20,2) DEFAULT NULL,
  `inv_todown` decimal(20,2) DEFAULT NULL,
  `inv_vatper` varchar(20) DEFAULT NULL,
  `inv_vatamt` decimal(20,2) DEFAULT NULL,
  `inv_beforewt` decimal(20,2) DEFAULT NULL,
  `inv_wtper` varchar(20) DEFAULT NULL,
  `inv_lesswt` decimal(20,2) DEFAULT NULL,
  `inv_netamt` decimal(20,2) DEFAULT NULL,
  `inv_payref` varchar(20) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `inv_ret` decimal(12,4) DEFAULT NULL,
  `inv_adv` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`invi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `approve_po` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `approve_wo` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `approve_pc` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `approve_prcost` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `boq_balance` (
  `id_pr` int(5) NOT NULL AUTO_INCREMENT,
  `pr` varchar(100) DEFAULT NULL,
  `boq` varchar(100) DEFAULT NULL,
  `balance` varchar(100) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_pr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ic_return_d` (
  `isi_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `is_coderef` varchar(15) DEFAULT NULL,
  `isi_doccode` varchar(15) DEFAULT NULL,
  `isi_matcode` varchar(100) DEFAULT NULL,
  `isi_matname` varchar(100) DEFAULT NULL,
  `isi_costcode` varchar(100) DEFAULT NULL,
  `isi_costname` varchar(100) DEFAULT NULL,
  `isi_xqty` int(15) DEFAULT NULL,
  `isi_unit` varchar(50) DEFAULT NULL,
  `isi_remark` varchar(300) DEFAULT NULL,
  `isi_area` varchar(200) DEFAULT NULL,
  `isi_wherehouse` varchar(200) DEFAULT NULL,
  `isi_user` varchar(100) DEFAULT NULL,
  `isi_edituser` varchar(100) DEFAULT NULL,
  `isi_deluser` varchar(100) DEFAULT NULL,
  `isi_credate` datetime DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`isi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ic_return_h` (
  `is_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `is_doccode` varchar(15) DEFAULT NULL,
  `is_coderef` varchar(15) DEFAULT NULL,
  `is_department` varchar(11) DEFAULT NULL,
  `is_project` varchar(100) DEFAULT NULL,
  `is_system` varchar(11) DEFAULT NULL,
  `is_docdate` date DEFAULT NULL,
  `is_reqname` varchar(100) DEFAULT NULL,
  `is_remark` varchar(300) DEFAULT NULL,
  `is_user` varchar(100) DEFAULT NULL,
  `is_credate` datetime DEFAULT NULL,
  `is_useredit` varchar(100) DEFAULT NULL,
  `is_userdel` varchar(100) DEFAULT NULL,
  `is_place` varchar(255) DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`is_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `master_jobdesc` (
  `job_id` int(5) NOT NULL AUTO_INCREMENT,
  `job_code` varchar(10) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `job_active` varchar(10) DEFAULT NULL,
  `useradd` varchar(200) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(200) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(200) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `master_jobtype` (
  `type_id` int(10) NOT NULL AUTO_INCREMENT,
  `type_code` varchar(10) DEFAULT NULL,
  `type_name` varchar(200) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `type_active` varchar(10) DEFAULT NULL,
  `useradd` varchar(200) DEFAULT NULL,
  `createdate` date DEFAULT NULL,
  `useredit` varchar(200) DEFAULT NULL,
  `editdate` date DEFAULT NULL,
  `userdel` varchar(200) DEFAULT NULL,
  `deldate` date DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `decrement_po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `po_item_id` varchar(100) DEFAULT NULL,
  `ref_po` varchar(100) DEFAULT NULL,
  `qty` varchar(10) DEFAULT NULL,
  `decrement` varchar(10) DEFAULT NULL,
  `balance` varchar(10) DEFAULT NULL,
  `decrement_no` varchar(10) DEFAULT NULL,
  `user_decrement` varchar(100) DEFAULT NULL,
  `remark` text,
  `date_decrement` date DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `decrement_status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `decrement_wo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wo_item_id` varchar(100) DEFAULT NULL,
  `ref_wo` varchar(100) DEFAULT NULL,
  `money_decre` varchar(10) DEFAULT NULL,
  `decrement` varchar(10) DEFAULT NULL,
  `balance` varchar(10) DEFAULT NULL,
  `decrement_no` varchar(10) DEFAULT NULL,
  `user_decrement` varchar(100) DEFAULT NULL,
  `remark` text,
  `date_decrement` date DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `decrement_status` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `sign_table` (
   `sign_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(0) DEFAULT NULL COMMENT 'ประเภทของ module',
  `ref_m_id` varchar(10) DEFAULT NULL,
  `ref_project_code` varchar(100) DEFAULT NULL,
  `status_sign` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `detail_boq` (
  `id_boq` int(11) NOT NULL AUTO_INCREMENT,
  `sub_boq` varchar(100) DEFAULT NULL,
  `sub_code` varchar(100) DEFAULT NULL,
  `sub_name` varchar(100) DEFAULT NULL,
  `cost_no` varchar(10) DEFAULT NULL,
  
  PRIMARY KEY (`id_boq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `select_file_pr` (
  `id_sl` int(11) NOT NULL AUTO_INCREMENT,
  `pr_ref` varchar(100) DEFAULT NULL,
  `name_file` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  
  PRIMARY KEY (`id_sl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `select_file_calender` (
  `id_sl` int(11) NOT NULL AUTO_INCREMENT,
  `calender_ref` varchar(100) DEFAULT NULL,
  `name_file` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,

  
  PRIMARY KEY (`id_sl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `setupwt` (
  `id_wt` int(11) NOT NULL AUTO_INCREMENT,
  `name_wt` varchar(100) DEFAULT NULL,
  `per_wt` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,

  
  PRIMARY KEY (`id_wt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `master_cf_head` (
  `id_df` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_df`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `master_cf_detail` (
  `id_cf_d` int(11) NOT NULL AUTO_INCREMENT,
  `cf_head_ref` varchar(20) NOT NULL,
  `project_code` varchar(100) NOT NULL,
  `project_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_cf_d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `detail_boq_revise` (
  `id_boq` int(11) NOT NULL,
  `sub_boq` varchar(100) DEFAULT NULL,
  `sub_code` varchar(100) DEFAULT NULL,
  `sub_name` varchar(100) DEFAULT NULL,
  `cost_no` varchar(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `cost` varchar(100) DEFAULT NULL,
  `typecost` varchar(100) DEFAULT NULL,
  `group_word` varchar(5) DEFAULT NULL,
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `revise` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `non_boq_costcode` (
  `id_boq` int(11) NOT NULL AUTO_INCREMENT,
  `tender` varchar(100) DEFAULT NULL,
  `costcode` varchar(100) DEFAULT NULL,
  `costname` varchar(100) DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_boq`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `vender_rate` (
  `ven_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` varchar(10) DEFAULT NULL,
  `po_code` varchar(20) DEFAULT NULL,
  `pr_code` varchar(20) DEFAULT NULL,
  `ic_code` varchar(20) DEFAULT NULL,
  `vender_id` varchar(20) DEFAULT NULL,
  `vender_name` varchar(200) DEFAULT NULL,
  `createuser` varchar(200) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `cost_code` varchar(100) DEFAULT NULL,
  `cost_name` varchar(255) DEFAULT NULL,
  `mat_code` varchar(100) DEFAULT NULL,
  `mat_name` varchar(255) DEFAULT NULL,
  `qty` int(20) DEFAULT NULL,
  `price_unit` decimal(20,2) DEFAULT NULL,
  `unit` varchar(200) DEFAULT NULL,
  `price_total` decimal(20,2) DEFAULT NULL,
  `dis1` decimal(20,2) DEFAULT NULL,
  `dis2` decimal(20,2) DEFAULT NULL,
  `dis3` decimal(20,2) DEFAULT NULL,
  `dis4` decimal(20,2) DEFAULT NULL,
  `vatamt` decimal(20,2) DEFAULT NULL,
  `netamt` decimal(20,2) DEFAULT NULL,
  `cr` varchar(200) DEFAULT NULL,
  `standdard` varchar(1) DEFAULT NULL,
  `not_standard` varchar(1) DEFAULT NULL,
  `complete` varchar(1) DEFAULT NULL,
  `incomplete` varchar(1) DEFAULT NULL,
  `ontime` varchar(1) DEFAULT NULL,
  `late` varchar(1) DEFAULT NULL,
  `good` varchar(1) DEFAULT NULL,
  `fail` varchar(1) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `podate` date DEFAULT NULL,
  `wh` varchar(255) DEFAULT NULL,
  `icreceive_date` date DEFAULT NULL,
  PRIMARY KEY (`ven_id`)

) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `remark_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remark` text,
  `code` varchar(20) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user` varchar(55) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `forecast_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `costcode` varchar(255) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `month_year` varchar(255) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_batch_header` (
  `id_vocher` int(11) DEFAULT NULL,
  `compcode` varchar(4) DEFAULT NULL,
  `vchno` varchar(13) NOT NULL,
  `vchdate` date DEFAULT NULL,
  `module` varchar(2) DEFAULT NULL,
  `bookcode` varchar(2) CHARACTER SET utf8mb4 DEFAULT NULL,
  `doctype` varchar(2) DEFAULT NULL,
  `docno` varchar(11) DEFAULT NULL,
  `docdate` date DEFAULT NULL,
  `remark` varchar(80) DEFAULT NULL,
  `totamtdr` decimal(18,6) DEFAULT NULL,
  `totamtcr` decimal(18,6) DEFAULT NULL,
  `postgl` varchar(1) DEFAULT NULL,
  `adduser` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `adddate` date DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `edituser` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `editdate` date DEFAULT NULL,
  `edittime` datetime DEFAULT NULL,
  `deluser` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `deldate` date DEFAULT NULL,
  `deltime` datetime DEFAULT NULL,
  `glyear` int(11) DEFAULT NULL,
  `glperiod` int(11) DEFAULT NULL,
  `prnvch` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `active` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `remark2` text CHARACTER SET latin1,
  `hrvchno` varchar(13) CHARACTER SET latin1 DEFAULT NULL,
  `depno` varchar(14) CHARACTER SET latin1 DEFAULT NULL,
  `data_ty` int(11) DEFAULT NULL,
  `pucost` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `accost` varchar(1) CHARACTER SET latin1 DEFAULT NULL,
  `totftno` int(11) DEFAULT NULL,
  `desc` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `refno` int(100) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `sffumdr` decimal(12,4) DEFAULT NULL,
  `sffumcr` decimal(12,4) DEFAULT NULL,
  `datatype` varchar(100) DEFAULT NULL,
  `printform` varchar(100) DEFAULT NULL,
  `dpt_code` varchar(100) DEFAULT NULL,
  `auto` varchar(100) DEFAULT NULL,
  `pre_event` varchar(100) DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `project_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`vchno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_batch_detail` (
  `vchid` int(10) NOT NULL AUTO_INCREMENT,
  `vchno` varchar(100) DEFAULT NULL,
  `ac_code` varchar(20) DEFAULT NULL,
  `ac_name` varchar(100) DEFAULT NULL,
  `amtdr` decimal(20,2) DEFAULT NULL,
  `amtcr` decimal(20,2) DEFAULT NULL,
  `varchar` varchar(100) DEFAULT NULL,
  `namevendor` varchar(100) DEFAULT NULL,
  `jobcode` varchar(20) DEFAULT NULL,
  `systemname` varchar(100) DEFAULT NULL,
  `gldesc` varchar(250) DEFAULT NULL,
  `dpt_title` varchar(200) DEFAULT NULL,
  `dpt_code` varchar(100) DEFAULT NULL,
  `namecus` varchar(200) DEFAULT NULL,
  `cust_code` varchar(100) DEFAULT NULL,
  `project_id` int(20) DEFAULT NULL,
  `project_name` varchar(200) DEFAULT NULL,
  `costcode` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `refdocdate` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `taxper` varchar(10) DEFAULT NULL,
  `taxamount` decimal(20,2) DEFAULT NULL,
  `taxtype` varchar(255) DEFAULT NULL,
  `taxno` int(20) DEFAULT NULL,
  `taxdate` date DEFAULT NULL,
  `taxdes` varchar(250) DEFAULT NULL,
  `taxid` int(100) DEFAULT NULL,
  `wtno` int(100) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `maincode` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL,
  `refno` varchar(100) DEFAULT NULL,
  `paid` varchar(100) DEFAULT NULL,
  `tax` varchar(10) DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  `po_boq` varchar(100) DEFAULT NULL,
  `boq_id` varchar(20) DEFAULT NULL,
  `bd_tender` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vchid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vender_id` varchar(255) DEFAULT NULL,
  `vender_name` varchar(255) DEFAULT NULL,
  `code_usernotify` varchar(255) DEFAULT NULL,
  `user_notify` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `date_doc` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user_add` varchar(255) DEFAULT NULL,
  `user_edit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `repair_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fa_code` varchar(255) DEFAULT NULL,
  `ref_reair` varchar(255) DEFAULT NULL,
  `fa_name` varchar(255) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `status_repair` char(1) DEFAULT NULL,
  `another` varchar(255) DEFAULT NULL,
  `date_succ` date DEFAULT NULL,
  `date_succ_rel` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `approve_fa` (
  `app_id` int(5) NOT NULL AUTO_INCREMENT,
  `app_pr` varchar(255) DEFAULT NULL,
  `app_project` varchar(255) DEFAULT NULL,
  `app_midid` varchar(255) DEFAULT NULL,
  `app_midname` varchar(255) DEFAULT NULL,
  `lock` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cost` varchar(255) DEFAULT NULL,
  `app_sequence` varchar(255) DEFAULT NULL,
  `creatuser` varchar(30) DEFAULT NULL,
  `creatudate` varchar(30) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pr_vender` (
  `pr_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pri_code` varchar(20) DEFAULT NULL,
  `pr_venderid` varchar(20) DEFAULT NULL,
  `pr_vendername` varchar(100) DEFAULT NULL,
  `pr_project` varchar(10) DEFAULT NULL,
  `pr_prno` varchar(20) DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pr_compare_detail` (
  `pri_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pri_ref` varchar(20) DEFAULT NULL,
  `pri_project` varchar(10) DEFAULT NULL,
  `pri_prno` varchar(20) DEFAULT NULL,
  `pri_matcode` varchar(20) DEFAULT NULL,
  `pri_matname` varchar(255) DEFAULT NULL,
  `pri_qty` int(20) DEFAULT NULL,
  `pri_unit` varchar(200) DEFAULT NULL,
  `pri_remark` varchar(255) DEFAULT NULL,
  `pri_priceunit` decimal(20,4) DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`pri_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pr_compare_header` (
  `pr_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pr_code` varchar(20) DEFAULT NULL,
  `pr_project` varchar(10) DEFAULT NULL,
  `pr_prno` varchar(20) DEFAULT NULL,
  `pr_place` varchar(255) DEFAULT NULL,
  `pr_ownername` varchar(255) DEFAULT NULL,
  `pr_ownerid` varchar(20) DEFAULT NULL,
  `pr_prdate` date DEFAULT NULL,
  `pr_date` date DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`pr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `calibration_head` (
  
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cb_code` varchar(20) DEFAULT NULL,
  `prepareby_name` varchar(255) DEFAULT NULL,
  `prepareby_code` varchar(20) DEFAULT NULL,
  `checkby_name` varchar(255) DEFAULT NULL,
  `checkby_code` varchar(20) DEFAULT NULL,
  `approve` varchar(20) DEFAULT NULL,
  `status_active` varchar(20) DEFAULT NULL,
  `user_add` varchar(255) DEFAULT NULL,
  `time_add` datetime DEFAULT NULL,
  `user_edit` varchar(255) DEFAULT NULL,
  `time_edit` datetime DEFAULT NULL,
  `user_del` varchar(255) DEFAULT NULL,
  `time_del` datetime DEFAULT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `calibration_detail` (

  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `asset_id` varchar(255) DEFAULT NULL,
  `asset_name` varchar(255) DEFAULT NULL,
  `band_name` varchar(255) DEFAULT NULL,
  `serail_number` varchar(255) DEFAULT NULL,
  `cali_period` date DEFAULT NULL,
  `cali_date` date DEFAULT NULL,
  `next_cali_date` date DEFAULT NULL,
  `cali_check` date DEFAULT NULL,
  `mana_asset` varchar(255) DEFAULT NULL,
  `user_check` varchar(255) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `user_add` varchar(255) DEFAULT NULL,
  `time_add` datetime DEFAULT NULL,
  `user_edit` varchar(255) DEFAULT NULL,
  `time_edit` datetime DEFAULT NULL,
  `user_del` varchar(255) DEFAULT NULL,
  `time_del` datetime DEFAULT NULL,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `forecast_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `month_year` varchar(255) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `po_item_revise` (
  `poi_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `poi_matname` varchar(300) NOT NULL DEFAULT '',
  `poi_matname_revise` varchar(300) NOT NULL DEFAULT '',
  `poi_matcode` varchar(30) DEFAULT NULL,
  `poi_matcode_revise` varchar(30) DEFAULT NULL,
  `poi_ref` varchar(30) DEFAULT NULL,
  `poi_ref_revise` varchar(30) DEFAULT NULL,
  `poi_costname` varchar(300) DEFAULT NULL,
  `poi_costname_revise` varchar(300) DEFAULT NULL,
  `poi_costcode` varchar(30) DEFAULT NULL,
  `poi_costcode_revise` varchar(30) DEFAULT NULL,
  `poi_qty` decimal(11,4) DEFAULT NULL,
  `poi_qty_revise` decimal(11,4) DEFAULT NULL,
  `poi_qtyic` varchar(15) DEFAULT NULL,
  `poi_qtyic_revise` varchar(15) DEFAULT NULL,
  `poi_totqtyic` varchar(15) DEFAULT NULL,
  `poi_totqtyic_revise` varchar(15) DEFAULT NULL,
  `poi_unitic` varchar(255) DEFAULT NULL,
  `poi_unitic_revise` varchar(255) DEFAULT NULL,
  `poi_unit` varchar(30) DEFAULT NULL,
  `poi_unit_revise` varchar(30) DEFAULT NULL,
  `poi_priceunit` decimal(15,4) DEFAULT NULL,
  `poi_priceunit_revise` decimal(15,4) DEFAULT NULL,
  `poi_amount` decimal(15,4) DEFAULT NULL,
  `poi_amount_revise` decimal(15,4) DEFAULT NULL,
  `poi_discountper1` decimal(11,4) DEFAULT NULL,
  `poi_discountper1_revise` decimal(11,4) DEFAULT NULL,
  `poi_discountper2` decimal(11,4) DEFAULT NULL,
  `poi_discountper2_revise` decimal(11,4) DEFAULT NULL,
  `poi_discountper3` decimal(11,4) DEFAULT NULL,
  `poi_discountper3_revise` decimal(11,4) DEFAULT NULL,
  `poi_discountper4` decimal(11,4) DEFAULT NULL,
  `poi_discountper4_revise` decimal(11,4) DEFAULT NULL,
  `poi_disamt` decimal(15,4) DEFAULT NULL,
  `poi_disamt_revise` decimal(15,4) DEFAULT NULL,
  `poi_vat` decimal(11,4) DEFAULT NULL,
  `poi_vat_revise` decimal(11,4) DEFAULT NULL,
  `poi_remark` varchar(300) DEFAULT '',
  `poi_remark_revise` varchar(300) DEFAULT '',
  `poi_netamt` decimal(15,4) DEFAULT NULL,
  `poi_netamt_revise` decimal(15,4) DEFAULT NULL,
  `poi_receive` int(100) NOT NULL DEFAULT '0',
  `poi_receive_revise` int(100) NOT NULL DEFAULT '0',
  `poi_receivetot` int(100) DEFAULT '0',
  `poi_receivetot_revise` int(100) DEFAULT '0',
  `po_disex` double(15,4) DEFAULT '0.0000',
  `po_disex_revise` double(15,4) DEFAULT '0.0000',
  `poi_item` int(11) DEFAULT NULL,
  `poi_item_revise` int(11) DEFAULT NULL,
  `ic_receive` int(11) DEFAULT '0',
  `ic_receive_revise` int(11) DEFAULT '0',
  `compcode` varchar(45) DEFAULT NULL,
  `compcode_revise` varchar(45) DEFAULT NULL,
  `pri_id` int(10) DEFAULT NULL,
  `pri_id_revise` int(10) DEFAULT NULL,
  `poi_chk` varchar(2) DEFAULT NULL,
  `poi_chk_revise` varchar(2) DEFAULT NULL,
  `poi_disce` decimal(11,4) DEFAULT NULL,
  `poi_disce_revise` decimal(11,4) DEFAULT NULL,
  `po_asset` varchar(20) DEFAULT NULL,
  `po_asset_revise` varchar(20) DEFAULT NULL,
  `po_assetid` varchar(20) DEFAULT NULL,
  `po_assetid_revise` varchar(20) DEFAULT NULL,
  `po_assetname` varchar(20) DEFAULT NULL,
  `po_assetname_revise` varchar(20) DEFAULT NULL,
  `pr_no` varchar(100) DEFAULT NULL,
  `pr_no_revise` varchar(100) DEFAULT NULL,
  `poi_vatper` int(10) NOT NULL,
  `poi_vatper_revise` int(10) NOT NULL,
  `po_boq` varchar(200) DEFAULT NULL,
  `po_boq_revise` varchar(200) DEFAULT NULL,
  `cost_type` varchar(100) DEFAULT NULL,
  `cost_type_revise` varchar(100) DEFAULT NULL,
  `remark_mat` varchar(100) DEFAULT NULL,
  `remark_mat_revise` varchar(100) DEFAULT NULL,
  `user_revise` varchar(100) DEFAULT NULL,
  `ddate_revise` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`poi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
 



 CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rights` varchar(50) DEFAULT NULL,
  `datestart` date DEFAULT NULL,
  `datestop` date DEFAULT NULL,
  `datestopp` date DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `remarktime` varchar(255) DEFAULT NULL,
  `useradd` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `useredit` varchar(255) DEFAULT NULL,
  `usereditdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


  CREATE TABLE IF NOT EXISTS `task_h` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_task` varchar(50) DEFAULT NULL,
  `name_task` varchar(50) DEFAULT NULL,
  `member_task` varchar(255) DEFAULT NULL,
  `useradd` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `useredit` varchar(255) DEFAULT NULL,
  `usereditdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


    CREATE TABLE IF NOT EXISTS `task_d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refd_task` varchar(50) DEFAULT NULL,
  `sub_task` varchar(50) DEFAULT NULL,
  `date_task` varchar(255) DEFAULT NULL,
  `status_task` varchar(255) DEFAULT NULL,
  `useradd` varchar(255) DEFAULT NULL,
  `adddate` varchar(255) DEFAULT NULL,
  `useredit` varchar(255) DEFAULT NULL,
  `usereditdate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

  CREATE TABLE IF NOT EXISTS `cost_subgroupcost4` (
  `csubgroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `csubgroup_name` varchar(255) DEFAULT NULL,
  `csubgroup_status` varchar(255) DEFAULT NULL,
  `ctype_code` varchar(255) DEFAULT NULL,
  `cgroup_code` varchar(255) DEFAULT NULL,
  `csubgroup_code` varchar(255) DEFAULT NULL,
  `csubgroup_costcode4` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `accno` varchar(100) DEFAULT NULL,
  `accname` varchar(100) DEFAULT NULL,
  `costcode_d` varchar(100) DEFAULT NULL,
  `cosrcode_h` varchar(100) DEFAULT NULL,
  `costhead` varchar(100) DEFAULT NULL,
  `cost_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`csubgroup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3030 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `pr_booking` (
  `prbk_id` int(11) NOT NULL AUTO_INCREMENT,
  `prbk_no` int(11) DEFAULT NULL,
  `prbk_date` datetime DEFAULT NULL,
  `prbk_member` varchar(255) DEFAULT NULL,
  `prbk_project` varchar(255) DEFAULT NULL,
  `prbk_system` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `prbk_costtype` varchar(255) DEFAULT NULL,
  `prbk_place` varchar(255) DEFAULT NULL,
  `prbk_placedate` datetime DEFAULT NULL,
  `prbk_status` varchar(255) DEFAULT NULL,
  `prbk_remark` varchar(255) DEFAULT NULL,
  `prbk_approve` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`prbk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3030 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pr_booking_item` (
  `prbki_id` int(11) NOT NULL AUTO_INCREMENT,
  `prbki_ref` varchar(255) DEFAULT NULL,
  `prbki_costcode` varchar(255) DEFAULT NULL,
  `prbki_costname` varchar(255) DEFAULT NULL,
  `prbki_qty` int(11) DEFAULT NULL,
  `prbki_unit` varchar(255) DEFAULT NULL,
  `prbki_stock` varchar(255) DEFAULT NULL,
  `prbki_matname` varchar(255) DEFAULT NULL,
  `prbki_matcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`prbki_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3030 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bi_views_department` (
  `bi_id` int(5) NOT NULL AUTO_INCREMENT,
  `bi_modal` varchar(255) DEFAULT NULL,
  `bi_year` varchar(4) DEFAULT NULL,
  `bi_month` varchar(2) DEFAULT NULL,
  `bi_department` varchar(255) DEFAULT NULL,
  `bi_approve` int(100) DEFAULT NULL,
  `bi_wait` int(100) DEFAULT NULL,
  `bi_open` int(100) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bi_views_project` (
  `bi_id` int(5) NOT NULL AUTO_INCREMENT,
  `bi_modal` varchar(255) DEFAULT NULL,
  `bi_year` varchar(4) DEFAULT NULL,
  `bi_month` varchar(2) DEFAULT NULL,
  `bi_project` varchar(255) DEFAULT NULL,
  `bi_approve` int(100) DEFAULT NULL,
  `bi_wait` int(100) DEFAULT NULL,
  `bi_open` int(100) DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `wysiwyg`(
  `w_id` int(5) NOT NULL AUTO_INCREMENT,
  `text_message` text,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wysiwyg
-- ----------------------------



CREATE TABLE IF NOT EXISTS `boq_cost` (
  `bd_cost` int(5) NOT NULL AUTO_INCREMENT,
  `boq_code` varchar(100) DEFAULT NULL,
  `system` varchar(255) DEFAULT NULL,
  `costcode` varchar(255) DEFAULT NULL,
  `costname` varchar(255) DEFAULT NULL,
  `boq` decimal(11,2) DEFAULT NULL,
  `cost` decimal(11,2) DEFAULT NULL,
  `costsub` decimal(11,2) DEFAULT NULL,
  `control` decimal(11,2) DEFAULT NULL,
  `controlper` decimal(11,2) DEFAULT NULL,
  `forecast` decimal(11,2) DEFAULT NULL,
  `pimary` decimal(11,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,

  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`bd_cost`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `project_progres_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_code` int(5) DEFAULT NULL,
  `system_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system_amount` int(15) DEFAULT NULL,
  `ref_project_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `file_uploads` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ref_project` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `gl_post_ar` (
  `gl_id` int(10) NOT NULL AUTO_INCREMENT,
  `gl_type` varchar(10) DEFAULT NULL,
  `gl_refcode` varchar(20) DEFAULT NULL,
  `gl_actcode` varchar(20) DEFAULT NULL,
  `gl_project` varchar(20) DEFAULT NULL,
  `gl_job` varchar(20) DEFAULT NULL,
  `gl_dr` decimal(20,2) DEFAULT NULL,
  `gl_cr` decimal(20,2) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `gl_date` varchar(50) DEFAULT NULL,
  `gl_year` varchar(50) DEFAULT NULL,
  `gl_period` varchar(50) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `gl_debtor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `gl_post_ap` (
  `gl_id` int(10) NOT NULL AUTO_INCREMENT,
  `gl_type` varchar(10) DEFAULT NULL,
  `gl_refcode` varchar(20) DEFAULT NULL,
  `gl_actcode` varchar(20) DEFAULT NULL,
  `gl_project` varchar(20) DEFAULT NULL,
  `gl_job` varchar(20) DEFAULT NULL,
  `gl_dr` decimal(20,2) DEFAULT NULL,
  `gl_cr` decimal(20,2) DEFAULT NULL,
  `useradd` varchar(100) DEFAULT NULL,
  `adddate` datetime DEFAULT NULL,
  `userdel` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `gl_date` varchar(50) DEFAULT NULL,
  `gl_year` varchar(50) DEFAULT NULL,
  `gl_period` varchar(50) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `gl_debtor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`gl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ganttresourceassignments` (
  `ID` int(1) NOT NULL AUTO_INCREMENT,
  `TaskID` int(11) DEFAULT NULL,
  `ResourceID` int(11) DEFAULT NULL,
  `Units` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `comfirm_ap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `vender` varchar(255) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `ap_remark` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `confirm_ap_detail` (
  `it_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_code` varchar(255) DEFAULT NULL,
  `it_apno` varchar(255) DEFAULT NULL,
  `it_amount` decimal(10,4) DEFAULT NULL,
  `it_vat` decimal(10,4) DEFAULT NULL,
  `it_reten` decimal(10,4) DEFAULT NULL,
  `it_wt` decimal(10,4) DEFAULT NULL,
  `it_netamt` decimal(10,4) DEFAULT NULL,
  `it_status` varchar(100) DEFAULT NULL,
  `it_inv` varchar(15) DEFAULT NULL,
  `it_project` varchar(10) DEFAULT NULL,
  `it_type` varchar(255) DEFAULT NULL,
  `adduser` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `GanttResources` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `pb_booking` (
  `pb_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pb_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `from_project` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `to_project` varchar(100) DEFAULT NULL,
  `pb_date` date DEFAULT NULL,
  `pb_delivery` date DEFAULT NULL,
  `pb_system` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pb_member` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `pb_remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pb_message` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pb_approve` varchar(200) CHARACTER SET utf8 DEFAULT 'wait',
  `pb_status` varchar(200) DEFAULT NULL,
  `pb_compcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `pb_useradd` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `userapprove` varchar(255) DEFAULT NULL,
  `userdisapprove` varchar(255) DEFAULT NULL,
  `approveedate` datetime DEFAULT NULL,
  `disapprovedate` datetime DEFAULT NULL,
  PRIMARY KEY (`pb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `pb_booking_item` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(20) DEFAULT NULL,
  `mat_code` varchar(20) DEFAULT NULL,
  `mat_name` varchar(255) DEFAULT NULL,
  `costcode` varchar(20) DEFAULT NULL,
  `costname` varchar(200) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `compcode` varchar(20) DEFAULT NULL,
  `wh` varchar(100) DEFAULT NULL,
  `priceunit` decimal(20,4) DEFAULT NULL,
  `qty_total` decimal(12,4) DEFAULT NULL,
  `store_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `heading_bd` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ref_bd` varchar(20) DEFAULT NULL,
  `heading` varchar(20) DEFAULT NULL,
  `file` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `useradd` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `adddate` varchar(20) DEFAULT NULL,
  `compcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `heading_bdrevise` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ref_bd` varchar(20) DEFAULT NULL,
  `heading` varchar(20) DEFAULT NULL,
  `file` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `useradd` varchar(20) DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `adddate` varchar(20) DEFAULT NULL,
  `compcode` varchar(20) DEFAULT NULL,
  `revise` varchar(2) DEFAULT NULL,
  `ref_heading` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `select_file_boq` (
  `id_sl` int(11) NOT NULL AUTO_INCREMENT,
  `pr_ref` varchar(100) DEFAULT NULL,
  `name_file` varchar(100) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  
  PRIMARY KEY (`id_sl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `trad_header` (
  `trad_id` int(10) NOT NULL AUTO_INCREMENT,
  `trad_inv` varchar(20) DEFAULT NULL,
  `inv_date` date DEFAULT NULL,
  `ref_no` varchar(20) DEFAULT NULL,
  `ref_inv` varchar(20) DEFAULT NULL,
  `date_type` varchar(20) DEFAULT NULL,
  `projectcode` int(10) DEFAULT NULL,
  `projectname` varchar(100) DEFAULT NULL,
  `job_name` varchar(20) DEFAULT NULL,
  `trad_curency` varchar(20) DEFAULT NULL,
  `trad_exchange` float(10,2) DEFAULT NULL,
  `trad_log` varchar(20) DEFAULT NULL,
  `trad_cn` varchar(10) DEFAULT NULL,
  `cus_projectcode` varchar(10) DEFAULT NULL,
  `cus_projectname` varchar(100) DEFAULT NULL,
  `cr_term` int(10) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `vat` int(1) DEFAULT NULL,
  `vatnum` int(1) DEFAULT NULL,
  `totalvat` float(10,2) DEFAULT NULL,
  `advance` float(10,2) DEFAULT NULL,
  `totaladvance` float(10,2) DEFAULT NULL,
  `retention` float(10,2) DEFAULT NULL,
  `totalretention` float(10,2) DEFAULT NULL,
  `sum_netamount` float(10,2) DEFAULT NULL,
  `ar_voucherno` varchar(20) DEFAULT NULL,
  `doc_ac` varchar(20) DEFAULT NULL,
  `remart` text,
  `receipt_amt` float(10,2) DEFAULT NULL,
  `sale` varchar(100) DEFAULT NULL,
  `martup` int(5) DEFAULT NULL,
  `vat_discount` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`trad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `trad_detail` (
  `itrad_id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_tradid` int(10) DEFAULT NULL,
  `itrad_matcode` varchar(20) DEFAULT NULL,
  `itrad_descrip` varchar(100) DEFAULT NULL,
  `itrad_serno` varchar(20) DEFAULT NULL,
  `itrad_costcode` varchar(20) DEFAULT NULL,
  `itrad_qty` int(20) DEFAULT NULL,
  `itrad_idunit` varchar(20) DEFAULT NULL,
  `itrad_nameunit` varchar(100) DEFAULT NULL,
  `itrad_priceunit` float(10,2) DEFAULT NULL,
  `itrad_pricesale` float(10,2) DEFAULT NULL,
  `itrad_amount` float(10,2) DEFAULT NULL,
  `itrad_discount` float(10,2) DEFAULT NULL,
  `itrad_netamount` float(10,2) DEFAULT NULL,
  `itrad_doccode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`itrad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `currency` (
  `currency_id` int(10) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(20) DEFAULT NULL,
  `currency_name_th` varchar(255) DEFAULT NULL,
  `currency_name_en` varchar(255) DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `user_edit` varchar(20) DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `user_del` varchar(20) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `other_header` (
  `ot_id` int(10) NOT NULL AUTO_INCREMENT,
  `ot_code` varchar(20) DEFAULT NULL,
  `ot_date` date DEFAULT NULL,
  `ot_type` varchar(255) DEFAULT NULL,
  `ot_tax` varchar(255) DEFAULT NULL,
  `ot_datatype` varchar(255) DEFAULT NULL,
  `ot_gl` varchar(255) DEFAULT NULL,
  `ot_department_id` varchar(255) DEFAULT NULL,
  `ot_depart_code` varchar(100) DEFAULT NULL,
  `ot_depart_name` varchar(255) DEFAULT NULL,
  `ot_pro_id` varchar(255) DEFAULT NULL,
  `ot_pro_code` varchar(100) DEFAULT NULL,
  `ot_pro_name` varchar(255) DEFAULT NULL,
  `ot_system_id` varchar(100) DEFAULT NULL,
  `ot_sys_name` varchar(255) DEFAULT NULL,
  `ot_cus_code` varchar(100) DEFAULT NULL,
  `ot_cus_name` varchar(255) DEFAULT NULL,
  `ot_ref_no` varchar(255) DEFAULT NULL,
  `ot_ref_date` date DEFAULT NULL,
  `ot_type_income_id` varchar(255) DEFAULT NULL,
  `ot_cus_id` varchar(100) DEFAULT NULL,
  `ot_vouno` varchar(100) DEFAULT NULL,
  `ot_crterm` varchar(100) DEFAULT NULL,
  `ot_duedate` date DEFAULT NULL,
  `ot_wt` varchar(100) DEFAULT NULL,
  `ot_vat` varchar(100) DEFAULT NULL,
  `ot_currency_id` varchar(100) DEFAULT NULL,
  `ot_exchangrate` varchar(100) DEFAULT NULL,
  `ot_receptamt` varchar(100) DEFAULT NULL,
  `ot_remark` text DEFAULT NULL,
  `ot_ac_cus` varchar(100) DEFAULT NULL,
  `ot_ac_vat` varchar(100) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `user_edit` varchar(20) DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `user_del` varchar(20) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `other_detail` (
  `otde_id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_other` varchar(20) DEFAULT NULL,
  `otde_des` varchar(20) DEFAULT NULL,
  `otde_qty` varchar(20) DEFAULT NULL,
  `otde_unit_id` varchar(255) DEFAULT NULL,
  `otde_unit_code` varchar(100) DEFAULT NULL,
  `otde_unit_name` varchar(255) DEFAULT NULL,
  `otde_priceu` varchar(255) DEFAULT NULL,
  `otde_amount` varchar(255) DEFAULT NULL,
  `otde_vat` varchar(255) DEFAULT NULL,
  `otde_atamt` varchar(255) DEFAULT NULL,
  `otde_netamount` varchar(255) DEFAULT NULL,
  `otde_recepamt` varchar(255) DEFAULT NULL,
  `otde_rentdoc` varchar(255) DEFAULT NULL,
  `otde_itemno` varchar(255) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `user_edit` varchar(20) DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `user_del` varchar(20) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`otde_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `income_type` (
  `income_id` int(10) NOT NULL AUTO_INCREMENT,
  `income_code` varchar(20) DEFAULT NULL,
  `income_name` varchar(20) DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `user_edit` varchar(20) DEFAULT NULL,
  `edit_date` datetime DEFAULT NULL,
  `user_del` varchar(20) DEFAULT NULL,
  `del_date` datetime DEFAULT NULL,
  PRIMARY KEY (`income_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `project_member` (
  `projectm_id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_project` int(10) DEFAULT NULL,
  `mpro_adid` int(10) DEFAULT NULL,
  `mpro_adname` varchar(250) DEFAULT NULL,
  `mpro_adposition` varchar(200) DEFAULT NULL,
  `mpro_adtel` varchar(50) DEFAULT NULL,
  `mpro_ademail` varchar(200) DEFAULT NULL,
  `mpro_conid` int(10) DEFAULT NULL,
  `mpro_conname` varchar(250) DEFAULT NULL,
  `mpro_conposition` varchar(200) DEFAULT NULL,
  `mpro_contel` varchar(50) DEFAULT NULL,
  `mpro_conemail` varchar(200) DEFAULT NULL,
  `mpro_consultid` int(10) DEFAULT NULL,
  `mpro_consultname` varchar(250) DEFAULT NULL,
  `mpro_consultposition` varchar(200) DEFAULT NULL,
  `mpro_consulttel` varchar(50) DEFAULT NULL,
  `mpro_consultemail` varchar(200) DEFAULT NULL,
  `mpro_subid` int(10) DEFAULT NULL,
  `mpro_subproname` varchar(250) DEFAULT NULL,
  `mpro_subproposition` varchar(200) DEFAULT NULL,
  `mpro_subprotel` varchar(50) DEFAULT NULL,
  `mpro_subproemail` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`projectm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `deduct_subcontractor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deduct_ref` varchar(100) DEFAULT NULL,
  `deduct_poi_id` varchar(100) DEFAULT NULL,
  `deduct_poi_matcode` varchar(100) DEFAULT NULL,
  `deduct_poi_qty` varchar(100) DEFAULT NULL,
  `deduct_poi_priceunit` varchar(100) DEFAULT NULL,
  `deduct_type` varchar(100) DEFAULT NULL,
  `deduct_qty` varchar(100) DEFAULT NULL,
  `deduct_pricesub` varchar(100) DEFAULT NULL,
  `deduct_remark` varchar(100) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_account_other_header` (
  `ar_id` int(100) NOT NULL AUTO_INCREMENT,
  `ar_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ref_invice` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `date_invice` date DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `tax` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `gl` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `project_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `project_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `system_id` int(100) DEFAULT NULL,
  `system_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ref_no` int(255) DEFAULT NULL,
  `ref_date` date DEFAULT NULL,
  `income_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `income_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `customer_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cr_term` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `wt` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vat` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `curency` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `exchang_rate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `compcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `pariod` int(10) DEFAULT NULL,
  `user_create` varchar(255) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `ar_date` date DEFAULT NULL,
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_accourt_othen_detail` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ref_ar_no` varchar(20) DEFAULT NULL,
  `system_id` int(20) DEFAULT NULL,
  `system_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `acc_code` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cost_code` varchar(255) DEFAULT NULL,
  `debit` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `user_create` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_cnv_tax` (
  `id` int(13) NOT NULL AUTO_INCREMENT,
  `ap_code` varchar(255) DEFAULT NULL,
  `ref_cnv_code` varchar(255) DEFAULT NULL,
  `ap_taxno` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ap_taxdate` date DEFAULT NULL,
  `project_id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `vender_id` varchar(255) DEFAULT NULL,
  `ap_year` varchar(255) DEFAULT NULL,
  `ap_period` varchar(255) DEFAULT NULL,
  `ap_type` varchar(255) DEFAULT NULL,
  `ap_amtvat` varchar(255) DEFAULT NULL,
  `ap_vatper` varchar(255) DEFAULT NULL,
  `ap_taxid` varchar(255) DEFAULT NULL,
  `user_create` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_update` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `user_del` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_del` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bill_other_header` (
  `bill_ot_id` int(10) NOT NULL AUTO_INCREMENT,
  `bill_ot_no` varchar(20) DEFAULT NULL,
  `bill_ot_project_code` varchar(20) DEFAULT NULL,
  `bill_ot_project_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bill_ot_cus_code` varchar(20) DEFAULT NULL,
  `bill_ot_cus_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bill_ot_date` date DEFAULT NULL,
  `bill_ot_tax` varchar(10) DEFAULT NULL,
  `bill_ot_remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_create` varchar(255) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `compcode` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`bill_ot_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `bill_other_detail` (
  `bill_id` int(10) NOT NULL AUTO_INCREMENT,
  `bill_ref_no` varchar(20) DEFAULT NULL,
  `invoice_no` varchar(20) DEFAULT NULL,
  `invoice_des` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `bill_amount` int(20) DEFAULT NULL,
  `bill_vat` int(2) DEFAULT NULL,
  `bill_vat_amt` int(20) DEFAULT NULL,
  `bill_wt` int(2) DEFAULT NULL,
  `bill_wt_amt` int(20) DEFAULT NULL,
  `bill_amount_receipt` int(20) DEFAULT NULL,
  `bill_qty` int(20) DEFAULT NULL,
  `bill_unit_id` int(20) DEFAULT NULL,
  `bill_unit_code` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bill_unit_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `receipt_header` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `recoipt_no` varchar(20) DEFAULT NULL,
  `project_code` varchar(20) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `cus_code` varchar(100) DEFAULT NULL,
  `cus_name` varchar(100) DEFAULT NULL,
  `rept_amt` int(15) DEFAULT NULL,
  `vat_amt` int(15) DEFAULT NULL,
  `less_other_id` varchar(10) DEFAULT NULL,
  `less_other_name` varchar(100) DEFAULT NULL,
  `less_other_price` int(15) DEFAULT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_id` varchar(10) DEFAULT NULL,
  `exchange` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `to_bank_name` varchar(100) DEFAULT NULL,
  `to_bank_branch` varchar(150) DEFAULT NULL,
  `to_bank_acno` varchar(150) DEFAULT NULL,
  `to_bank_acid` int(150) DEFAULT NULL,
  `voucher_date` date DEFAULT NULL,
  `compcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `receipt_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(15) DEFAULT NULL,
  `chq_no` varchar(15) DEFAULT NULL,
  `chq_date` date DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `voucher_header` (
  `id` int(10) NOT NULL,
  `receipt_no` varchar(15) DEFAULT NULL,
  `receipt_date` date DEFAULT NULL,
  `year` varchar(5) DEFAULT NULL,
  `period` varchar(5) DEFAULT NULL,
  `project_code` varchar(15) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `cus_code` varchar(15) DEFAULT NULL,
  `cus_name` varchar(100) DEFAULT NULL,
  `rcpt_amt` int(15) DEFAULT NULL,
  `currency` varchar(15) DEFAULT NULL,
  `exchange` varchar(15) DEFAULT NULL,
  `paid_net_amt` int(15) DEFAULT NULL,
  `less_other` int(15) DEFAULT NULL,
  `to_bank` varchar(20) DEFAULT NULL,
  `to_bank_ac` int(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `compcode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `voucher_detail` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(20) DEFAULT NULL,
  `system_id` int(20) DEFAULT NULL,
  `system_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `acc_code` varchar(20) DEFAULT NULL,
  `acc_name` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `cost_code` varchar(20) DEFAULT NULL,
  `debit` int(15) DEFAULT NULL,
  `credit` int(15) DEFAULT NULL,
  `user_create` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `type_paid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `compcode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `master_bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_th` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `compcode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ic_trading_h` (
  `trading_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `trading_doccode` varchar(15) DEFAULT NULL,
  `trading_bookcode` varchar(15) DEFAULT NULL,
  `trading_bookdate` date DEFAULT NULL,
  `trading_department` varchar(11) DEFAULT NULL,
  `trading_project` varchar(100) DEFAULT NULL,
  `trading_system` varchar(11) DEFAULT NULL,
  `trading_docdate` date DEFAULT NULL,
  `trading_type` varchar(10) DEFAULT NULL,
  `trading_reqname` varchar(100) DEFAULT NULL,
  `trading_remark` varchar(300) DEFAULT NULL,
  `trading_user` varchar(100) DEFAULT NULL,
  `trading_credate` datetime DEFAULT NULL,
  `trading_useredit` varchar(100) DEFAULT NULL,
  `trading_userdel` varchar(100) DEFAULT NULL,
  `trading_place` varchar(255) DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `vchno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`trading_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ic_trading_d` (
  `trading_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `trading_doccode` varchar(15) DEFAULT NULL,
  `trading_matcode` varchar(100) DEFAULT NULL,
  `trading_matname` varchar(100) DEFAULT NULL,
  `trading_costcode` varchar(100) DEFAULT NULL,
  `trading_costname` varchar(100) DEFAULT NULL,
  `trading_xqty` int(15) DEFAULT NULL,
  `trading_unit` varchar(50) DEFAULT NULL,
  `trading_remark` varchar(300) DEFAULT NULL,
  `trading_area` varchar(200) DEFAULT NULL,
  `trading_wherehouse` varchar(200) DEFAULT NULL,
  `trading_user` varchar(100) DEFAULT NULL,
  `trading_edituser` varchar(100) DEFAULT NULL,
  `trading_deluser` varchar(100) DEFAULT NULL,
  `trading_credate` datetime DEFAULT NULL,
  `compcode` varchar(45) DEFAULT NULL,
  `ic_asset` varchar(20) DEFAULT NULL,
  `ic_assetid` varchar(20) DEFAULT NULL,
  `ic_assetname` varchar(20) DEFAULT NULL,
  `trading_whcode` varchar(100) DEFAULT NULL,
  `trading_priceunit` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`trading_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ap_vender_pull` (
  `apvp_id` int(10) NOT NULL AUTO_INCREMENT,
  `vender_code` varchar(255) DEFAULT NULL,
  `vender_name` varchar(255) DEFAULT NULL,
  `cn` int(1) DEFAULT NULL,
  `invoice_tax` varchar(255) DEFAULT NULL,
  `tax` int(1) DEFAULT NULL,
  `inv_taxdate` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `po_no` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `voucher_no` varchar(255) DEFAULT NULL,
  `voucher_date` date DEFAULT NULL,
  `ac_vender` varchar(255) DEFAULT NULL,
  `project` varchar(100) DEFAULT NULL,
  `systemcode` varchar(10) DEFAULT NULL,
  `systemname` varchar(255) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `exchange` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `deduct_material` varchar(255) DEFAULT NULL,
  `per_avd` varchar(255) DEFAULT NULL,
  `adr_amount` varchar(255) DEFAULT NULL,
  `amt_after_adv` varchar(255) DEFAULT NULL,
  `per_vat` varchar(10) DEFAULT NULL,
  `vat_amount` varchar(255) DEFAULT NULL,
  `per_ret` varchar(10) DEFAULT NULL,
  `ret_amount` varchar(255) DEFAULT NULL,
  `wt_code` varchar(255) DEFAULT NULL,
  `per_wt` varchar(10) DEFAULT NULL,
  `wt_amount` varchar(255) DEFAULT NULL,
  `net_amount` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `doc_no` varchar(255) DEFAULT NULL,
  `ap_amt` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`apvp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `cns_tax` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ap_code` varchar(255) DEFAULT NULL,
  `ref_cns_code` varchar(255) DEFAULT NULL,
  `ap_taxno` varchar(255) DEFAULT NULL,
  `ap_taxdate` DATE DEFAULT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `vender_code` varchar(255) DEFAULT NULL,
  `ap_year` char(4) DEFAULT NULL,
  `ap_period` char(2) DEFAULT NULL,
  `ap_type` char(2) DEFAULT NULL,
  `ap_amtvat` varchar(255) DEFAULT NULL,
  `ap_vatper` varchar(255) DEFAULT NULL,
  `ap_tax_id` varchar(255) DEFAULT NULL,
  `ap_netamt` varchar(255) DEFAULT NULL,
  `user_create` varchar(255) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `user_update` varchar(255) DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_vender_pull` (
  `arvp_id` int(10) NOT NULL AUTO_INCREMENT,
  `vender_code` varchar(255) DEFAULT NULL,
  `vender_name` varchar(255) DEFAULT NULL,
  `cn` int(1) DEFAULT NULL,
  `invoice_tax` varchar(255) DEFAULT NULL,
  `tax` int(1) DEFAULT NULL,
  `inv_taxdate` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `po_no` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `voucher_no` varchar(255) DEFAULT NULL,
  `voucher_date` date DEFAULT NULL,
  `ac_vender` varchar(255) DEFAULT NULL,
  `project` varchar(100) DEFAULT NULL,
  `systemcode` varchar(10) DEFAULT NULL,
  `systemname` varchar(255) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `exchange` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `deduct_material` varchar(255) DEFAULT NULL,
  `per_avd` varchar(255) DEFAULT NULL,
  `adr_amount` varchar(255) DEFAULT NULL,
  `amt_after_adv` varchar(255) DEFAULT NULL,
  `per_vat` varchar(10) DEFAULT NULL,
  `vat_amount` varchar(255) DEFAULT NULL,
  `per_ret` varchar(10) DEFAULT NULL,
  `ret_amount` varchar(255) DEFAULT NULL,
  `wt_code` varchar(255) DEFAULT NULL,
  `per_wt` varchar(10) DEFAULT NULL,
  `wt_amount` varchar(255) DEFAULT NULL,
  `net_amount` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `doc_no` varchar(255) DEFAULT NULL,
  `ap_amt` varchar(255) DEFAULT NULL,
  `paid_amount` varchar(255) DEFAULT NULL,
  `compcode` varchar(255) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`arvp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reduce_trading_header` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `rd_no` varchar(20) DEFAULT NULL,
  `ref_inv_no` varchar(20) DEFAULT NULL,
  `ref_inv_date` date DEFAULT NULL,
  `project_code` varchar(20) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `cus_code` varchar(20) DEFAULT NULL,
  `cus_name` varchar(100) DEFAULT NULL,
  `vat` int(1) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `exchange` int(10) DEFAULT NULL,
  `cr_term` varchar(100) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `user_craet` varchar(10) DEFAULT NULL,
  `date_craet` date DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `reduce_trading_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_rd_no` varchar(30) DEFAULT NULL,
  `system` varchar(30) DEFAULT NULL,
  `mat_code` varchar(100) DEFAULT NULL,
  `mat_name` varchar(100) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `price_unit` int(10) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `discount` int(10) DEFAULT NULL,
  `net_amount` int(10) DEFAULT NULL,
  `ref_ic_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `setup_tax` (
  `id_tax` int(10) NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(250) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `setup_taxdes` (
  `id_taxdes` int(10) NOT NULL AUTO_INCREMENT,
  `tax_desname` varchar(200) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_taxdes`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `setup_taxtype` (
  `id_taxtype` int(10) NOT NULL AUTO_INCREMENT,
  `taxtype_name` varchar(200) DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_taxtype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `ar_account_trading_header` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ar_no` varchar(20) DEFAULT NULL,
  `ref_inv_no` varchar(20) DEFAULT NULL,
  `ref_inv_date` date DEFAULT NULL,
  `project_code` varchar(20) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `cus_code` varchar(20) DEFAULT NULL,
  `cus_name` varchar(100) DEFAULT NULL,
  `vat` int(1) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `exchange` int(10) DEFAULT NULL,
  `cr_term` varchar(100) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT '1',
  `user_craet` varchar(10) DEFAULT NULL,
  `date_craet` date DEFAULT NULL,
  `compcode` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `ar_accourt_trading_detail` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ref_ar_no` varchar(20) DEFAULT NULL,
  `system_id` int(20) DEFAULT NULL,
  `system_name` varchar(255) DEFAULT NULL,
  `acc_code` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `cost_code` varchar(255) DEFAULT NULL,
  `debit` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `user_create` varchar(255) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `type_paid` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `compcode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `master_bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name_th` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `name_en` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `compcode` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `ar_gl` (
  `id_argl` int(11) NOT NULL AUTO_INCREMENT,
  `vchno` varchar(20) DEFAULT NULL,
  `vchdate` date DEFAULT NULL,
  `project_id` varchar(100) DEFAULT NULL,
  `dep_id` varchar(100) DEFAULT NULL,
  `doctype` varchar(100) DEFAULT NULL,
  `docno` varchar(20) DEFAULT NULL,
  `acct_no` varchar(20) DEFAULT NULL,
  `projectid` varchar(20) DEFAULT NULL,
  `systemcode` varchar(20) DEFAULT NULL,
  `dptid` varchar(20) DEFAULT NULL,
  `amtdr` decimal(20,2) DEFAULT NULL,
  `amtcr` decimal(20,2) DEFAULT NULL,
  `vatper` decimal(20,2) DEFAULT NULL,
  `vatamt` decimal(20,2) DEFAULT NULL,
  `glyear` int(11) DEFAULT NULL,
  `glperiod` int(11) DEFAULT NULL,
  `completegl` varchar(20) DEFAULT NULL,
  `adduser` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `edituser` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `deluser` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  `compcode` varchar(100) DEFAULT NULL,
  `costcode` varchar(100) DEFAULT NULL,
  `matcode` varchar(100) DEFAULT NULL,
  `matname` varchar(300) DEFAULT NULL,
  `vendor_id` varchar(100) DEFAULT NULL,
  `datatype` varchar(100) DEFAULT NULL,
  `duedate` datetime DEFAULT NULL,
  `gltype` varchar(100) DEFAULT NULL,
  `vchno_gl` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_argl`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `payment_retention` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `inv_no` varchar(20) DEFAULT NULL,
  `ar_no` varchar(20) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `system_code` int(10) DEFAULT NULL,
  `amt_retention` int(15) DEFAULT NULL,
  `status_payment` varchar(2) DEFAULT 'N',
  `compcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS  `pm_forcash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `month_year` date DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  `forctype` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `useradd` varchar(20) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `useredit` varchar(20) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `userdel` varchar(20) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;


CREATE TABLE IF NOT EXISTS `payment_retention` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `inv_no` varchar(20) DEFAULT NULL,
  `ar_no` varchar(20) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `system_code` int(10) DEFAULT NULL,
  `amt_retention` int(15) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pucost` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cost1` varchar(20) DEFAULT NULL,
  `cost2` varchar(20) DEFAULT NULL,
  `cost3` varchar(20) DEFAULT NULL,
  `cost4` varchar(20) DEFAULT NULL,
  `cost5` varchar(20) DEFAULT NULL,
  `costcode` varchar(20) DEFAULT NULL,
  `costname` varchar(200) DEFAULT NULL,
  `cost` int(15) DEFAULT NULL,
  `order` varchar(5) DEFAULT NULL,
  `id_poitem` varchar(10) DEFAULT NULL,
  `costhead` varchar(20) DEFAULT NULL,
  `module` varchar(5) DEFAULT NULL,
  `cosrcode_h` varchar(20) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `compcode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `select_file_po` (
  `id_sl` int(11) NOT NULL AUTO_INCREMENT,
  `po_ref` varchar(100) DEFAULT NULL,
  `name_file` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_sl`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `select_file_pc` (
  `id_sl` int(11) NOT NULL AUTO_INCREMENT,
  `pc_ref` varchar(100) DEFAULT NULL,
  `name_file` varchar(500) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_sl`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `setup_default` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `background_login` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `setup_running` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `compcode` varchar(20) DEFAULT NULL,
  `module` varchar(10) DEFAULT NULL,
  `prefix` varchar(3) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `running` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `createuser` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `edituser` varchar(100) DEFAULT NULL,
  `editdate` datetime DEFAULT NULL,
  `deluser` varchar(100) DEFAULT NULL,
  `deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `pr_compare_vender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpcode` varchar(30) DEFAULT NULL,
  `pr_ref` varchar(30) DEFAULT NULL,
  `cpdate` datetime DEFAULT NULL,
  `cpvenderid` varchar(255) DEFAULT NULL,
  `cpvenderteam` varchar(20) DEFAULT NULL,
  `cpvendertel` varchar(20) DEFAULT NULL,
  `cpvenderfax` varchar(20) DEFAULT NULL,
	`compcode` varchar(50) DEFAULT NULL,
	`creatuser` varchar(50) DEFAULT NULL,
	`creatdate` datetime DEFAULT NULL,
	`edituser` varchar(50) DEFAULT NULL,
	`editdate` datetime DEFAULT NULL,
	`deluser` varchar(50) DEFAULT NULL,
	`deldate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;