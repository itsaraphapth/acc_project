/*
Navicat MySQL Data Transfer

Source Server         : Master
Source Server Version : 50505
Source Host           : 119.59.104.20:3306
Source Database       : masteri1_encon

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-09-03 12:58:56
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_detail
-- ----------------------------
-- INSERT INTO `module_detail` VALUES ('1', '2', 'New PR');
-- INSERT INTO `module_detail` VALUES ('2', '2', 'Report');
-- INSERT INTO `module_detail` VALUES ('3', '2', 'PR Archive');
-- INSERT INTO `module_detail` VALUES ('4', '2', 'Approve');
-- INSERT INTO `module_detail` VALUES ('5', '2', 'New Petty Cash');
-- INSERT INTO `module_detail` VALUES ('6', '3', 'New PO');
-- INSERT INTO `module_detail` VALUES ('7', '3', 'Report');
-- INSERT INTO `module_detail` VALUES ('8', '3', 'PO Archive');
-- INSERT INTO `module_detail` VALUES ('9', '3', 'Approve');
-- INSERT INTO `module_detail` VALUES ('10', '3', 'PO Receipe And Return');
-- INSERT INTO `module_detail` VALUES ('15', '12', 'New Work Order');
-- INSERT INTO `module_detail` VALUES ('17', '12', 'Report Work Order');
-- INSERT INTO `module_detail` VALUES ('18', '12', 'Work Order Archive');
-- INSERT INTO `module_detail` VALUES ('19', '2', 'Petty Cash Archive');
-- INSERT INTO `module_detail` VALUES ('21', '5', 'Add Asset');
-- INSERT INTO `module_detail` VALUES ('22', '5', 'Maintenance Asset');
-- INSERT INTO `module_detail` VALUES ('23', '5', 'Transfer Asset');
-- INSERT INTO `module_detail` VALUES ('24', '5', 'Depreciation');
-- INSERT INTO `module_detail` VALUES ('25', '5', 'Write Off Asset');
-- INSERT INTO `module_detail` VALUES ('26', '5', 'Count Asset');
-- INSERT INTO `module_detail` VALUES ('27', '5', 'Report');
-- INSERT INTO `module_detail` VALUES ('28', '4', 'Goods Receive Note');
-- INSERT INTO `module_detail` VALUES ('29', '4', 'Inventory Receive Note');
-- INSERT INTO `module_detail` VALUES ('30', '4', 'Reservation Documents');
-- INSERT INTO `module_detail` VALUES ('31', '4', 'Material Withdrawal');
-- INSERT INTO `module_detail` VALUES ('32', '4', 'Return Reservation Documents');
-- INSERT INTO `module_detail` VALUES ('33', '4', 'History Process Goods Receive Note ');
-- INSERT INTO `module_detail` VALUES ('34', '4', 'History Process Inventory Receive Note');
-- INSERT INTO `module_detail` VALUES ('35', '4', 'History Process Materials Transfer ');
-- INSERT INTO `module_detail` VALUES ('36', '4', 'Materials Transfer ');
-- INSERT INTO `module_detail` VALUES ('37', '4', 'Receive Materials Transfer ');
-- INSERT INTO `module_detail` VALUES ('38', '4', 'History Process Receive Materials Transfer');
-- INSERT INTO `module_detail` VALUES ('39', '4', 'View Stock Card');
-- INSERT INTO `module_detail` VALUES ('40', '4', 'History Process Material Withdrawal');
-- INSERT INTO `module_detail` VALUES ('41', '4', 'Store');
-- INSERT INTO `module_detail` VALUES ('42', '4', 'Report');
-- INSERT INTO `module_detail` VALUES ('45', '1', 'Bill of Quatity(BQQ)');
-- INSERT INTO `module_detail` VALUES ('46', '1', 'Setup Bid Project Tender');
-- INSERT INTO `module_detail` VALUES ('47', '1', 'Archive Tender');
-- INSERT INTO `module_detail` VALUES ('48', '9', 'Project Status Overview');
-- INSERT INTO `module_detail` VALUES ('50', '9', 'Project Cashflow By account');
-- INSERT INTO `module_detail` VALUES ('51', '9', 'Project Cashflow by cash');
-- INSERT INTO `module_detail` VALUES ('52', '9', 'Project Inventory');
-- INSERT INTO `module_detail` VALUES ('53', '9', 'Project Billing');
-- INSERT INTO `module_detail` VALUES ('54', '9', 'Back account management');
-- INSERT INTO `module_detail` VALUES ('55', '9', 'Office expense management');
-- INSERT INTO `module_detail` VALUES ('56', '9', 'Real estate management');
-- INSERT INTO `module_detail` VALUES ('57', '9', 'Material Price');
-- INSERT INTO `module_detail` VALUES ('58', '8', 'Journal Vocher');
-- INSERT INTO `module_detail` VALUES ('59', '8', 'General Ledger Posting');
-- INSERT INTO `module_detail` VALUES ('62', '8', 'Report');
-- INSERT INTO `module_detail` VALUES ('66', '11', 'Setup Master');
-- INSERT INTO `module_detail` VALUES ('67', '11', 'Setup Company');
-- INSERT INTO `module_detail` VALUES ('68', '11', 'SETUP System Default');
-- INSERT INTO `module_detail` VALUES ('69', '11', 'Setup Project');
-- INSERT INTO `module_detail` VALUES ('70', '11', 'Setup Department');
-- INSERT INTO `module_detail` VALUES ('71', '11', 'Setup Material');
-- INSERT INTO `module_detail` VALUES ('72', '11', 'Setup Vender');
-- INSERT INTO `module_detail` VALUES ('74', '11', 'Setup Unit');
-- INSERT INTO `module_detail` VALUES ('75', '11', 'Setup CostCode');
-- INSERT INTO `module_detail` VALUES ('76', '11', 'Setup Employee');
-- INSERT INTO `module_detail` VALUES ('77', '11', 'Setup Permission');
-- INSERT INTO `module_detail` VALUES ('80', '11', 'Setup Debtor');
-- INSERT INTO `module_detail` VALUES ('81', '11', 'Setup Bank');
-- INSERT INTO `module_detail` VALUES ('82', '11', 'Setup Account Chart');
-- INSERT INTO `module_detail` VALUES ('83', '11', 'Setup Expense');
-- INSERT INTO `module_detail` VALUES ('84', '11', 'Setup Option');
-- INSERT INTO `module_detail` VALUES ('85', '11', 'Setup Book');
-- INSERT INTO `module_detail` VALUES ('86', '11', 'Account Period Setup');
-- INSERT INTO `module_detail` VALUES ('87', '11', 'Setup Cost Type');
-- INSERT INTO `module_detail` VALUES ('88', '11', 'Setup Type');
-- INSERT INTO `module_detail` VALUES ('89', '11', 'Setup WareHouse');
-- INSERT INTO `module_detail` VALUES ('90', '11', 'Setup Area');
-- INSERT INTO `module_detail` VALUES ('91', '11', 'Setup Less Other');
-- INSERT INTO `module_detail` VALUES ('92', '11', 'Setup Depreciation Method');
-- INSERT INTO `module_detail` VALUES ('93', '11', 'Setup Asset Type');
-- INSERT INTO `module_detail` VALUES ('94', '11', 'Setup Asset Expense Type');
-- INSERT INTO `module_detail` VALUES ('95', '11', 'Setup Asset Location');
-- INSERT INTO `module_detail` VALUES ('96', '11', 'Setup Bid Project Tender');
-- INSERT INTO `module_detail` VALUES ('97', '11', 'Setup Owner');
-- INSERT INTO `module_detail` VALUES ('98', '11', 'Bill of Meterial(BOM)');
-- INSERT INTO `module_detail` VALUES ('99', '6', 'Account Normal Vender');
-- INSERT INTO `module_detail` VALUES ('100', '6', 'Account Down Vender');
-- INSERT INTO `module_detail` VALUES ('101', '6', 'Account Rentention Vender');
-- INSERT INTO `module_detail` VALUES ('102', '6', 'Account Payment');
-- INSERT INTO `module_detail` VALUES ('103', '6', 'Account Subcontractor');
-- INSERT INTO `module_detail` VALUES ('104', '6', 'Change Infomation');
-- INSERT INTO `module_detail` VALUES ('105', '6', 'Account Petty Cash');
-- INSERT INTO `module_detail` VALUES ('107', '6', 'Credit Note (APV)');
-- INSERT INTO `module_detail` VALUES ('108', '6', 'Credit Note (APS)');
-- INSERT INTO `module_detail` VALUES ('109', '6', 'Credit Note (APO)');
-- INSERT INTO `module_detail` VALUES ('110', '6', 'Open Cheque (PV)');
-- INSERT INTO `module_detail` VALUES ('112', '6', 'Clear AP');
-- INSERT INTO `module_detail` VALUES ('113', '6', 'Print Withholding Tax');
-- INSERT INTO `module_detail` VALUES ('114', '6', 'Cheque Paid');
-- INSERT INTO `module_detail` VALUES ('115', '6', 'Recive Docment Tax');
-- INSERT INTO `module_detail` VALUES ('116', '6', 'Report AP');
-- INSERT INTO `module_detail` VALUES ('133', '7', 'Invoice Dowm');
-- INSERT INTO `module_detail` VALUES ('134', '7', 'Invoice Progress');
-- INSERT INTO `module_detail` VALUES ('135', '7', 'Invoice Retention');
-- INSERT INTO `module_detail` VALUES ('136', '7', 'INVOICE');
-- INSERT INTO `module_detail` VALUES ('137', '7', 'Report AR');
-- INSERT INTO `module_detail` VALUES ('138', '7', 'Account Receivable');
-- INSERT INTO `module_detail` VALUES ('139', '7', 'Receipt Construction');
-- INSERT INTO `module_detail` VALUES ('140', '7', 'Paid Receipt');
-- INSERT INTO `module_detail` VALUES ('141', '7', 'Clear AR');
-- INSERT INTO `module_detail` VALUES ('145', '9', 'Transaction');
-- INSERT INTO `module_detail` VALUES ('146', '9', 'Inquiry');
-- INSERT INTO `module_detail` VALUES ('147', '9', 'Report');
-- INSERT INTO `module_detail` VALUES ('148', '11', 'Job Description');
-- INSERT INTO `module_detail` VALUES ('149', '11', 'Job Type');
-- INSERT INTO `module_detail` VALUES ('150', '11', 'Setup system');
-- INSERT INTO `module_detail` VALUES ('151', '11', 'Report Permssion Module');
-- INSERT INTO `module_detail` VALUES ('152', '11', 'Report Permssion Projects');
-- INSERT INTO `module_detail` VALUES ('153', '4', 'Adjust Cost');
-- INSERT INTO `module_detail` VALUES ('157', '4', 'Report  amount permission');
-- INSERT INTO `module_detail` VALUES ('158', '4', 'Approve Receipt Other');
-- INSERT INTO `module_detail` VALUES ('159', '4', 'New Receipt Other');
-- INSERT INTO `module_detail` VALUES ('160', '4', 'Archive Receipt Other');
-- INSERT INTO `module_detail` VALUES ('161', '4', 'Return IC');
-- INSERT INTO `module_detail` VALUES ('162', '7', 'Paid Receipt Other');
-- INSERT INTO `module_detail` VALUES ('163', '4', 'Approve Reservation Documents');
-- INSERT INTO `module_detail` VALUES ('164', '10', 'Progress Subcontractor');
-- INSERT INTO `module_detail` VALUES ('165', '10', 'Project Progress');




INSERT INTO `module_detail` VALUES ('1', '3', 'New PR');
INSERT INTO `module_detail` VALUES ('2', '3', 'Report');
INSERT INTO `module_detail` VALUES ('3', '3', 'PR Archive');
INSERT INTO `module_detail` VALUES ('4', '3', 'Approve');
INSERT INTO `module_detail` VALUES ('5', '7', 'New Petty Cash');
INSERT INTO `module_detail` VALUES ('6', '4', 'New PO');
INSERT INTO `module_detail` VALUES ('7', '4', 'Report');
INSERT INTO `module_detail` VALUES ('8', '4', 'PO Archive');
INSERT INTO `module_detail` VALUES ('9', '4', 'Approve');
INSERT INTO `module_detail` VALUES ('10', '4', 'PO Receipe And Return');
INSERT INTO `module_detail` VALUES ('15', '6', 'New Work Order');
INSERT INTO `module_detail` VALUES ('17', '6', 'Report Work Order');
INSERT INTO `module_detail` VALUES ('18', '6', 'Work Order Archive');
INSERT INTO `module_detail` VALUES ('19', '7', 'Petty Cash Archive');
INSERT INTO `module_detail` VALUES ('21', '10', 'Add Asset');
INSERT INTO `module_detail` VALUES ('22', '10', 'Maintenance Asset');
INSERT INTO `module_detail` VALUES ('23', '10', 'Transfer Asset');
INSERT INTO `module_detail` VALUES ('24', '10', 'Depreciation');
INSERT INTO `module_detail` VALUES ('25', '10', 'Write Off Asset');
INSERT INTO `module_detail` VALUES ('26', '10', 'Count Asset');
INSERT INTO `module_detail` VALUES ('27', '10', 'Report');
INSERT INTO `module_detail` VALUES ('28', '9', 'Goods Receive Note');
INSERT INTO `module_detail` VALUES ('29', '9', 'Inventory Receive Note');
INSERT INTO `module_detail` VALUES ('30', '9', 'Reservation Documents');
INSERT INTO `module_detail` VALUES ('31', '9', 'Material Withdrawal');
INSERT INTO `module_detail` VALUES ('32', '9', 'Return Reservation Documents');
INSERT INTO `module_detail` VALUES ('33', '9', 'History Process Goods Receive Note ');
INSERT INTO `module_detail` VALUES ('34', '9', 'History Process Inventory Receive Note');
INSERT INTO `module_detail` VALUES ('35', '9', 'History Process Materials Transfer ');
INSERT INTO `module_detail` VALUES ('36', '9', 'Materials Transfer ');
INSERT INTO `module_detail` VALUES ('37', '9', 'Receive Materials Transfer ');
INSERT INTO `module_detail` VALUES ('38', '9', 'History Process Receive Materials Transfer');
INSERT INTO `module_detail` VALUES ('39', '9', 'View Stock Card');
INSERT INTO `module_detail` VALUES ('40', '9', 'History Process Material Withdrawal');
INSERT INTO `module_detail` VALUES ('41', '9', 'Store');
INSERT INTO `module_detail` VALUES ('42', '9', 'Report');
INSERT INTO `module_detail` VALUES ('145', '9', 'Transaction');
INSERT INTO `module_detail` VALUES ('146', '9', 'Inquiry');
INSERT INTO `module_detail` VALUES ('147', '9', 'Report');
INSERT INTO `module_detail` VALUES ('153', '9', 'Adjust Cost');
INSERT INTO `module_detail` VALUES ('157', '9', 'Report  amount permission');
INSERT INTO `module_detail` VALUES ('158', '9', 'Approve Receipt Other');
INSERT INTO `module_detail` VALUES ('159', '9', 'New Receipt Other');
INSERT INTO `module_detail` VALUES ('160', '9', 'Archive Receipt Other');
INSERT INTO `module_detail` VALUES ('161', '9', 'Return IC');
INSERT INTO `module_detail` VALUES ('162', '7', 'Paid Receipt Other');
INSERT INTO `module_detail` VALUES ('163', '9', 'Approve Reservation Documents');
INSERT INTO `module_detail` VALUES ('45', '2', 'Bill of Quatity(BQQ)');
INSERT INTO `module_detail` VALUES ('46', '2', 'Setup Bid Project Tender');
INSERT INTO `module_detail` VALUES ('47', '2', 'Archive Tender');
INSERT INTO `module_detail` VALUES ('48', '15', 'Project Status Overview');
INSERT INTO `module_detail` VALUES ('50', '15', 'Project Cashflow By account');
INSERT INTO `module_detail` VALUES ('51', '15', 'Project Cashflow by cash');
INSERT INTO `module_detail` VALUES ('52', '15', 'Project Inventory');
INSERT INTO `module_detail` VALUES ('53', '15', 'Project Billing');
INSERT INTO `module_detail` VALUES ('54', '15', 'Back account management');
INSERT INTO `module_detail` VALUES ('55', '15', 'Office expense management');
INSERT INTO `module_detail` VALUES ('56', '15', 'Real estate management');
INSERT INTO `module_detail` VALUES ('57', '15', 'Material Price');
INSERT INTO `module_detail` VALUES ('58', '14', 'Journal Vocher');
INSERT INTO `module_detail` VALUES ('59', '14', 'General Ledger Posting');
INSERT INTO `module_detail` VALUES ('62', '14', 'Report');
INSERT INTO `module_detail` VALUES ('66', '1', 'Setup Master');
INSERT INTO `module_detail` VALUES ('67', '1', 'Setup Company');
INSERT INTO `module_detail` VALUES ('68', '1', 'SETUP System Default');
INSERT INTO `module_detail` VALUES ('69', '1', 'Setup Project');
INSERT INTO `module_detail` VALUES ('70', '1', 'Setup Department');
INSERT INTO `module_detail` VALUES ('71', '1', 'Setup Material');
INSERT INTO `module_detail` VALUES ('72', '1', 'Setup Vender');
INSERT INTO `module_detail` VALUES ('74', '1', 'Setup Unit');
INSERT INTO `module_detail` VALUES ('75', '1', 'Setup CostCode');
INSERT INTO `module_detail` VALUES ('76', '1', 'Setup Employee');
INSERT INTO `module_detail` VALUES ('77', '1', 'Setup Permission');
INSERT INTO `module_detail` VALUES ('80', '1', 'Setup Debtor');
INSERT INTO `module_detail` VALUES ('81', '1', 'Setup Bank');
INSERT INTO `module_detail` VALUES ('82', '1', 'Setup Account Chart');
INSERT INTO `module_detail` VALUES ('83', '1', 'Setup Expense');
INSERT INTO `module_detail` VALUES ('84', '1', 'Setup Option');
INSERT INTO `module_detail` VALUES ('85', '1', 'Setup Book');
INSERT INTO `module_detail` VALUES ('86', '1', 'Account Period Setup');
INSERT INTO `module_detail` VALUES ('87', '1', 'Setup Cost Type');
INSERT INTO `module_detail` VALUES ('88', '1', 'Setup Type');
INSERT INTO `module_detail` VALUES ('89', '1', 'Setup WareHouse');
INSERT INTO `module_detail` VALUES ('90', '1', 'Setup Area');
INSERT INTO `module_detail` VALUES ('91', '1', 'Setup Less Other');
INSERT INTO `module_detail` VALUES ('92', '1', 'Setup Depreciation Method');
INSERT INTO `module_detail` VALUES ('93', '1', 'Setup Asset Type');
INSERT INTO `module_detail` VALUES ('94', '1', 'Setup Asset Expense Type');
INSERT INTO `module_detail` VALUES ('95', '1', 'Setup Asset Location');
INSERT INTO `module_detail` VALUES ('96', '1', 'Setup Bid Project Tender');
INSERT INTO `module_detail` VALUES ('97', '1', 'Setup Owner');
INSERT INTO `module_detail` VALUES ('98', '1', 'Bill of Meterial(BOM)');
INSERT INTO `module_detail` VALUES ('99', '11', 'Account Normal Vender');
INSERT INTO `module_detail` VALUES ('100', '11', 'Account Down Vender');
INSERT INTO `module_detail` VALUES ('101', '11', 'Account Rentention Vender');
INSERT INTO `module_detail` VALUES ('102', '11', 'Account Payment');
INSERT INTO `module_detail` VALUES ('103', '11', 'Account Subcontractor');
INSERT INTO `module_detail` VALUES ('104', '11', 'Change Infomation');
INSERT INTO `module_detail` VALUES ('105', '11', 'Account Petty Cash');
INSERT INTO `module_detail` VALUES ('107', '11', 'Credit Note (APV)');
INSERT INTO `module_detail` VALUES ('108', '11', 'Credit Note (APS)');
INSERT INTO `module_detail` VALUES ('109', '11', 'Credit Note (APO)');
INSERT INTO `module_detail` VALUES ('110', '11', 'Open Cheque (PV)');
INSERT INTO `module_detail` VALUES ('112', '11', 'Clear AP');
INSERT INTO `module_detail` VALUES ('113', '11', 'Print Withholding Tax');
INSERT INTO `module_detail` VALUES ('114', '11', 'Cheque Paid');
INSERT INTO `module_detail` VALUES ('115', '11', 'Recive Docment Tax');
INSERT INTO `module_detail` VALUES ('116', '11', 'Report AP');
INSERT INTO `module_detail` VALUES ('133', '12', 'Invoice Dowm');
INSERT INTO `module_detail` VALUES ('134', '12', 'Invoice Progress');
INSERT INTO `module_detail` VALUES ('135', '12', 'Invoice Retention');
INSERT INTO `module_detail` VALUES ('136', '12', 'INVOICE');
INSERT INTO `module_detail` VALUES ('137', '12', 'Report AR');
INSERT INTO `module_detail` VALUES ('138', '12', 'Account Receivable');
INSERT INTO `module_detail` VALUES ('139', '12', 'Receipt Construction');
INSERT INTO `module_detail` VALUES ('140', '12', 'Paid Receipt');
INSERT INTO `module_detail` VALUES ('141', '12', 'Clear AR');

INSERT INTO `module_detail` VALUES ('148', '1', 'Job Description');
INSERT INTO `module_detail` VALUES ('149', '1', 'Job Type');
INSERT INTO `module_detail` VALUES ('150', '1', 'Setup system');
INSERT INTO `module_detail` VALUES ('151', '1', 'Report Permssion Module');
INSERT INTO `module_detail` VALUES ('152', '1', 'Report Permssion Projects');

INSERT INTO `module_detail` VALUES ('164', '6', 'Progress Subcontractor');
INSERT INTO `module_detail` VALUES ('165', '8', 'Project Progress');
INSERT INTO `module_detail` VALUES ('166', '13', 'Financial');


-- ----------------------------
-- Table structure for module_header
-- ----------------------------
DROP TABLE IF EXISTS `module_header`;
CREATE TABLE `module_header` (
  `module_id` int(11) DEFAULT NULL,
  `module_name` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `href_control` varchar(255) DEFAULT NULL,
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module_header
-- ----------------------------
-- INSERT INTO `module_header` VALUES ('1', 'Cost Control System');
-- INSERT INTO `module_header` VALUES ('2', 'Purchase Requisition System');
-- INSERT INTO `module_header` VALUES ('3', 'Purchase Order System');
-- INSERT INTO `module_header` VALUES ('4', 'Inventory Management');
-- INSERT INTO `module_header` VALUES ('5', 'Fix Asset Management');
-- INSERT INTO `module_header` VALUES ('6', 'Account Payable System');
-- INSERT INTO `module_header` VALUES ('7', 'Account Receivable');
-- INSERT INTO `module_header` VALUES ('8', 'General Ledger System');
-- INSERT INTO `module_header` VALUES ('9', 'Project Management');
-- INSERT INTO `module_header` VALUES ('10', 'Project Progress');
-- INSERT INTO `module_header` VALUES ('11', 'Master Configuration');
-- INSERT INTO `module_header` VALUES ('12', 'Work Order');

INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (1, 'Data Configuration', 'assets/images/module/957636.png', 'data_master/main');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (2, 'Cost Control System', 'assets/images/module/952363.png', 'bd/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (3, 'Purchase Requisition System', 'assets/images/module/891480.png', 'office/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (4, 'Purchase Order System', 'assets/images/module/995247.png', 'purchase/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (6, 'Subcontractor System', 'assets/images/module/948703.png', 'management/dash_projprogre/subproject');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (7, 'Petty Cash', 'assets/images/module/781760.png', 'office/main_index_pc');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (8, 'Project Progress', 'assets/images/module/947998.png', 'management/dash_projprogre');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (9, 'Inventory Management', 'assets/images/module/735950.png', 'inventory/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (10, 'Fix Asset Management', 'assets/images/module/821331.png', 'add_asset/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (11, 'Account Payable System', 'assets/images/module/902677.png', 'ap/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (12, 'Account Receivable', 'assets/images/module/950576.png', 'ar/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (14, 'General Ledger System', 'assets/images/module/950943.png', 'gl/main_index');
INSERT INTO `module_header`(`module_id`, `module_name`, `img`, `href_control`) VALUES (15, 'Construction Management', 'assets/images/module/944942.png', 'management/project_status_overview');



-- DROP TABLE IF EXISTS `report`;
-- CREATE TABLE `report` (
--   `id` int(20) NOT NULL AUTO_INCREMENT,
--   `module` varchar(10) DEFAULT NULL,
--   `type` varchar(10) DEFAULT NULL,
--   `report1` varchar(100) DEFAULT NULL,
--   `descreption` varchar(200) DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- -- ----------------------------
-- -- Records of report
-- -- ----------------------------
-- INSERT INTO `report` VALUES ('1', 'po', 'form', 'po.mrt', 'PO Print From');
-- INSERT INTO `report` VALUES ('2', 'pr', 'form', 'pr_form.mrt', 'PR Print From');
-- INSERT INTO `report` VALUES ('3', 'ap', 'form', 'ap_payvoucher.mrt', 'APV Print From');
-- INSERT INTO `report` VALUES ('4', 'ap', 'form', 'aps_payvoucher.mrt', 'APS Print From');
-- INSERT INTO `report` VALUES ('5', 'ap', 'form', 'apo_payvoucher.mrt', 'APO Print From');
-- INSERT INTO `report` VALUES ('6', 'company', 'report', 'company.mrt', 'Company Print Report');
-- INSERT INTO `report` VALUES ('7', 'ar', 'form', 'ar_invdown_report.mrt', 'Invoice Print From');
-- INSERT INTO `report` VALUES ('8', 'pr', 'report', 'pr_request_r3.mrt', 'Report Purchase Requisition Overviews');
-- INSERT INTO `report` VALUES ('9', 'pr', 'report', 'vender_report_pr.mrt', 'Vender List Report');
-- INSERT INTO `report` VALUES ('10', 'pr', 'report', 'pr_delete_r3.mrt', 'PR Delete Report');
-- INSERT INTO `report` VALUES ('11', 'pr', 'report_fx', 'report_pettycash_notvat.mrt', 'Report Petty Cash Non VAT');
-- INSERT INTO `report` VALUES ('12', 'pr', 'report_fx', 'report_pettycash_vat.mrt', 'Report Petty Cash Use VAT');
-- INSERT INTO `report` VALUES ('13', 'pr', 'report_fx', 'report_pettycash_notvat_allproject.mrt', 'Report Petty Cash Non VAT');
-- INSERT INTO `report` VALUES ('14', 'pr', 'report_fx', 'report_pettycash_vat_allproject.mrt', 'Report Petty Cash Use VAT');

DROP TABLE IF EXISTS `option_type`;
CREATE TABLE `option_type` (
  `op_id` int(11) NOT NULL AUTO_INCREMENT,
  `op_code` varchar(20) NOT NULL,
  `op_name` varchar(255) DEFAULT NULL,
  `status_open` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`op_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of option_type
-- ----------------------------
INSERT INTO `option_type` VALUES ('10', 'WG', 'SUB,DAILY CHARGES,SECURITY', 'open');
INSERT INTO `option_type` VALUES ('11', 'DREST', 'DEBT RESTRUCTRE PAID', 'open');
INSERT INTO `option_type` VALUES ('12', 'ASIV', 'ASSETS,INVESTMENT', 'open');
INSERT INTO `option_type` VALUES ('13', 'ALCLG', 'AVAL,LETTER OF CREDIT,BK GUA', '');
INSERT INTO `option_type` VALUES ('14', 'BF', 'BALANCE FORWARD', '');
INSERT INTO `option_type` VALUES ('15', 'CODFP', 'COMMISSION,DISCOUNT,FEE,FINE', '');
INSERT INTO `option_type` VALUES ('16', 'DIDLA', 'DIVLDEND,DONATION,LAW', '');
INSERT INTO `option_type` VALUES ('17', 'EX', 'EXPENSE', 'open');
INSERT INTO `option_type` VALUES ('18', 'IN', 'INTEREST', '');
INSERT INTO `option_type` VALUES ('19', 'OR', 'OTHER RECEIPT', '');
INSERT INTO `option_type` VALUES ('20', 'PCRS', 'PETTY CASH,RESERVE', '');
INSERT INTO `option_type` VALUES ('21', 'PN', 'PROMISSORY NOTE,LOAN', '');
INSERT INTO `option_type` VALUES ('22', 'SLWG', 'SALARY', 'open');
INSERT INTO `option_type` VALUES ('23', 'TR', 'TRANSFER', '');
INSERT INTO `option_type` VALUES ('24', 'VD', 'VENDER', 'open');
INSERT INTO `option_type` VALUES ('25', 'TPWE', 'TELOPHONE,WATER,ELECTRICITY', '');
INSERT INTO `option_type` VALUES ('26', 'TASVT', 'TAX,SOCIAL WELFARE,VAT', '');
INSERT INTO `option_type` VALUES ('27', 'IMRT', 'INSTALLMENT,RENT,HIRE PURCHASE', '');
INSERT INTO `option_type` VALUES ('28', 'SR', 'SITE RECEIPT', '');
