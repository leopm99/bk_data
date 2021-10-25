/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : blade15x

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2021-10-24 21:35:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fake_pcs`
-- ----------------------------
DROP TABLE IF EXISTS `fake_pcs`;
CREATE TABLE `fake_pcs` (
  `npc_id` int(11) NOT NULL,
  `race` int(11) NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '0',
  `class` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `title_color` varchar(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `name_color` varchar(11) DEFAULT NULL,
  `hair_style` int(11) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0',
  `face` int(11) NOT NULL DEFAULT '0',
  `mount` tinyint(4) NOT NULL DEFAULT '0',
  `team` tinyint(4) NOT NULL DEFAULT '0',
  `hero` tinyint(4) NOT NULL DEFAULT '0',
  `pd_under` int(11) NOT NULL DEFAULT '0',
  `pd_under_aug` int(11) NOT NULL DEFAULT '0',
  `pd_head` int(11) NOT NULL DEFAULT '0',
  `pd_head_aug` int(11) NOT NULL DEFAULT '0',
  `pd_rhand` int(11) NOT NULL DEFAULT '0',
  `pd_rhand_aug` int(11) NOT NULL DEFAULT '0',
  `pd_lhand` int(11) NOT NULL DEFAULT '0',
  `pd_lhand_aug` int(11) NOT NULL DEFAULT '0',
  `pd_gloves` int(11) NOT NULL DEFAULT '0',
  `pd_gloves_aug` int(11) NOT NULL DEFAULT '0',
  `pd_chest` int(11) NOT NULL DEFAULT '0',
  `pd_chest_aug` int(11) NOT NULL DEFAULT '0',
  `pd_legs` int(11) NOT NULL DEFAULT '0',
  `pd_legs_aug` int(11) NOT NULL DEFAULT '0',
  `pd_feet` int(11) NOT NULL DEFAULT '0',
  `pd_feet_aug` int(11) NOT NULL DEFAULT '0',
  `pd_back` int(11) NOT NULL DEFAULT '0',
  `pd_back_aug` int(11) NOT NULL DEFAULT '0',
  `pd_lrhand` int(11) NOT NULL DEFAULT '0',
  `pd_lrhand_aug` int(11) NOT NULL DEFAULT '0',
  `pd_hair` int(11) NOT NULL DEFAULT '0',
  `pd_hair_aug` int(11) NOT NULL DEFAULT '0',
  `pd_hair2` int(11) NOT NULL DEFAULT '0',
  `pd_hair2_aug` int(11) NOT NULL DEFAULT '0',
  `pd_rbracelet` int(11) NOT NULL DEFAULT '0',
  `pd_rbracelet_aug` int(11) NOT NULL DEFAULT '0',
  `pd_lbracelet` int(11) NOT NULL DEFAULT '0',
  `pd_lbracelet_aug` int(11) NOT NULL DEFAULT '0',
  `pd_deco1` int(11) NOT NULL DEFAULT '0',
  `pd_deco1_aug` int(11) NOT NULL DEFAULT '0',
  `pd_deco2` int(11) NOT NULL DEFAULT '0',
  `pd_deco2_aug` int(11) NOT NULL DEFAULT '0',
  `pd_deco3` int(11) NOT NULL DEFAULT '0',
  `pd_deco3_aug` int(11) NOT NULL DEFAULT '0',
  `pd_deco4` int(11) NOT NULL DEFAULT '0',
  `pd_deco4_aug` int(11) NOT NULL DEFAULT '0',
  `pd_deco5` int(11) NOT NULL DEFAULT '0',
  `pd_deco5_aug` int(11) NOT NULL DEFAULT '0',
  `pd_deco6` int(11) NOT NULL DEFAULT '0',
  `pd_deco6_aug` int(11) NOT NULL DEFAULT '0',
  `enchant_effect` tinyint(4) NOT NULL DEFAULT '0',
  `pvp_flag` int(11) NOT NULL DEFAULT '0',
  `karma` int(11) NOT NULL DEFAULT '0',
  `fishing` tinyint(4) NOT NULL DEFAULT '0',
  `fishing_x` int(11) NOT NULL DEFAULT '0',
  `fishing_y` int(11) NOT NULL DEFAULT '0',
  `fishing_z` int(11) NOT NULL DEFAULT '0',
  `invisible` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`npc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fake_pcs
-- ----------------------------
INSERT INTO `fake_pcs` VALUES ('5000', '3', '0', '114', 'Achievement Manager', '9CE8A9', 'Skank', 'FFFFFF', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15582', '0', '16169', '0', '15579', '0', '15585', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('541', '4', '0', '118', 'Castle Manager', '9CE8A9', 'Demien', 'FFFFFF', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1301', '0', '0', '0', '2453', '0', '354', '0', '381', '0', '2429', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('553', '1', '1', '124', 'Bug Reporter', '9CE8A9', 'Reporter', 'FFFFFF', '3', '2', '1', '0', '0', '0', '0', '0', '0', '0', '2500', '0', '0', '0', '5774', '0', '2383', '0', '0', '0', '5786', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('554', '0', '0', '5', 'Points Manager', '9CE8A9', 'Randon', 'FFFFFF', '4', '2', '1', '0', '0', '0', '0', '0', '0', '0', '6364', '0', '0', '0', '6375', '0', '6373', '0', '6374', '0', '6376', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('999', '5', '1', '132', 'Buffer', '9CE8A9', 'Mikaela', 'FFFFFF', '4', '2', '1', '0', '0', '0', '0', '0', '0', '0', '133', '0', '0', '0', '6380', '0', '6379', '0', '0', '0', '6381', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('559', '3', '0', '114', 'Beta Npc', '9CE8A9', 'Beta Npc', 'FFFFFF', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '15556', '0', '0', '0', '15582', '0', '16169', '0', '15579', '0', '15585', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('560', '0', '1', '2', 'Delevel Manager', '9CE8A9', 'Taury', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31004', '0', '31000', '0', '31002', '0', '31005', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('8010', '3', '0', '114', 'POLICE !', '9CE8A9', 'RoboCop', 'FFFFFF', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '15556', '0', '0', '0', '15582', '0', '16169', '0', '15579', '0', '15585', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('572', '3', '0', '114', 'General Shop', '9CE8A9', 'Miura', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31304', '0', '31300', '0', '31302', '0', '31305', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('7003', '3', '0', '114', 'L2 Turbo', '9CE8A9', 'Zorg', 'FFFFFF', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '15556', '0', '0', '0', '15582', '0', '16169', '0', '15579', '0', '15585', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('7004', '3', '0', '114', 'L2 Turbo', '9CE8A9', 'Shura', 'FFFFFF', '2', '1', '1', '0', '0', '0', '0', '0', '0', '0', '15556', '0', '0', '0', '15582', '0', '16169', '0', '15579', '0', '15585', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('576', '1', '0', '2', 'Reward Shop', '9CE8A9', 'Duron', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31204', '0', '31200', '0', '31202', '0', '31205', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('542', '0', '0', '2', 'Premium Manager', '9CE8A9', 'Ruddy', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31104', '0', '31100', '0', '31102', '0', '31105', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('577', '2', '0', '2', 'Donate Shop', '9CE8A9', 'Nuer', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31404', '0', '31400', '0', '31402', '0', '31405', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('555', '2', '1', '2', 'Support Buffer', '9CE8A9', 'Helena', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '102000', '0', '0', '0', '31316', '0', '31312', '0', '31314', '0', '31317', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('8016', '0', '1', '2', 'Bk Information', '9CE8A9', 'Google', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31310', '0', '31306', '0', '31308', '0', '31311', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('575', '1', '1', '2', 'Noblesse Manager', '9CE8A9', 'Frigg', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31116', '0', '31112', '0', '31114', '0', '31117', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('9994', '3', '0', '114', 'Enchant Manager', '9CE8A9', 'Kaus', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '102005', '0', '0', '0', '31204', '0', '31200', '0', '31202', '0', '31205', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `fake_pcs` VALUES ('539', '0', '0', '2', 'Achievement Manager', '9CE8A9', 'Shura', 'FFFFFF', '2', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '31304', '0', '31300', '0', '31302', '0', '31305', '0', '21717', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
