/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : nest

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 14/08/2020 11:41:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` varchar(36) NOT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `Timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_id` (`ID`) USING BTREE,
  KEY `index_username` (`UserName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('0b1ad09f-e89d-4af5-b1f6-dd09e23ae60e', 'user', '123', b'0', '2020-03-12 15:51:17');
INSERT INTO `users` VALUES ('3fdff42b-4128-4893-9762-57a47be84320', 'zhangsan', '123', b'0', '2020-03-12 16:21:39');
INSERT INTO `users` VALUES ('5a3b212a-3127-43ad-ab9c-460b8ae6ebbc', 'bobo', '123', b'0', '2020-03-12 16:32:32');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
