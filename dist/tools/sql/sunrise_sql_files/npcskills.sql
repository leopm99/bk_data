/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : blade15x

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2021-10-24 21:36:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `custom_npcskills`
-- ----------------------------
DROP TABLE IF EXISTS `custom_npcskills`;
CREATE TABLE `custom_npcskills` (
  `npcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `skillid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`npcid`,`skillid`,`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_npcskills
-- ----------------------------
INSERT INTO `custom_npcskills` VALUES ('565', '2369', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '4045', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '4408', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '4409', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '4410', '11');
INSERT INTO `custom_npcskills` VALUES ('565', '4411', '11');
INSERT INTO `custom_npcskills` VALUES ('565', '4412', '11');
INSERT INTO `custom_npcskills` VALUES ('565', '4413', '11');
INSERT INTO `custom_npcskills` VALUES ('565', '4414', '2');
INSERT INTO `custom_npcskills` VALUES ('565', '4415', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '4416', '7');
INSERT INTO `custom_npcskills` VALUES ('565', '4494', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '5238', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '5463', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '5479', '1');
INSERT INTO `custom_npcskills` VALUES ('565', '6660', '1');
