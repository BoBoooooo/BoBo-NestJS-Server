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

 Date: 04/09/2020 17:10:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_codelist
-- ----------------------------
DROP TABLE IF EXISTS `ad_codelist`;
CREATE TABLE `ad_codelist` (
  `ID` varchar(50) NOT NULL COMMENT 'ID',
  `CodeValue` text COMMENT '字典值',
  `CodeName` varchar(100) DEFAULT NULL COMMENT '字典值描述',
  `CodeType` varchar(50) DEFAULT NULL COMMENT '字典类型',
  `CodeTypeDict` varchar(100) DEFAULT NULL COMMENT '字典类型名称',
  `CodeOrder` decimal(8,0) DEFAULT NULL COMMENT '排序',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  `TypeID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of ad_codelist
-- ----------------------------
BEGIN;
INSERT INTO `ad_codelist` VALUES ('2d09a14f-4032-4a27-9b16-946ab3950689', '8,15', '密度长度', '系统配置', NULL, NULL, 'passwordLength', b'0', '2020-07-22 15:14:10', NULL);
INSERT INTO `ad_codelist` VALUES ('59778b04-2ed4-42ef-a3d4-aa330d0e3d54', '7', '密码过期时间(天)', '系统配置', NULL, NULL, 'passwordTime', b'0', '2020-07-22 09:51:03', NULL);
INSERT INTO `ad_codelist` VALUES ('7f81d7b5-c6b9-4412-8b00-8c9cf2482357', '20', '客户端超时时间(分钟)', '系统配置', NULL, NULL, 'clientTimeOut', b'0', '2020-07-23 09:39:04', NULL);
INSERT INTO `ad_codelist` VALUES ('b670bc8e-7a73-4fcc-875d-f2c9af01e329', 'BoBo\'s Vue Admin', '系统名称', '系统配置', NULL, 0, 'systemName', b'0', '2020-07-22 11:35:55', NULL);
INSERT INTO `ad_codelist` VALUES ('da332909-bef0-49c3-819e-e189f996bca0', '女', '女', 'xb', '性别', 2, '', b'0', '2019-12-16 17:45:43', '01eb097e-0d94-44cf-8796-157bba54f0bb');
INSERT INTO `ad_codelist` VALUES ('dd96514d-87cb-49c7-9191-5021aeabb639', '男', '男', 'xb', '性别', 1, '', b'0', '2019-12-16 17:45:47', '01eb097e-0d94-44cf-8796-157bba54f0bb');
COMMIT;

-- ----------------------------
-- Table structure for ad_codelist_type
-- ----------------------------
DROP TABLE IF EXISTS `ad_codelist_type`;
CREATE TABLE `ad_codelist_type` (
  `ID` varchar(36) NOT NULL COMMENT 'ID',
  `CodeValue` varchar(64) DEFAULT NULL COMMENT '字典类型名称',
  `CodeName` varchar(100) DEFAULT NULL COMMENT '字典类型描述',
  `CodeOrder` decimal(8,0) DEFAULT NULL COMMENT '排序',
  `Remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  `ParentID` varchar(36) DEFAULT NULL COMMENT '父级ID',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_vodevalue` (`CodeValue`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of ad_codelist_type
-- ----------------------------
BEGIN;
INSERT INTO `ad_codelist_type` VALUES ('01eb097e-0d94-44cf-8796-157bba54f0bb', '性别', '性别', 1, '', b'0', '2019-12-16 18:45:54', 'bedac4aa-41c8-4fcd-911d-d79b3b5a2392');
INSERT INTO `ad_codelist_type` VALUES ('bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '常用', '常用', 0, '常用', b'0', '2019-12-17 09:52:38', 'fe980574-2552-4754-88c8-366eb5a22861');
INSERT INTO `ad_codelist_type` VALUES ('f844cb90-1738-4013-b9f2-b0755b63b9dc', '系统配置', '系统配置', 0, '系统相关', b'0', '2019-12-17 09:51:37', 'fe980574-2552-4754-88c8-366eb5a22861');
INSERT INTO `ad_codelist_type` VALUES ('fe980574-2552-4754-88c8-366eb5a22861', '数据字典', '数据字典', 1, '', b'0', '2019-11-27 15:20:13', '0');
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `ID` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门名称',
  `Rank` int DEFAULT NULL COMMENT '排序码',
  `ParentId` varchar(36) DEFAULT NULL COMMENT '上级ID',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE KEY `index_id` (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES ('2f8447de-5732-4fa4-8286-9a71b41dd1e7', '总部', 1, '0', b'0', '2020-02-21 15:53:39');
INSERT INTO `dept` VALUES ('b987afc3-6969-4b87-85a4-f8e2029e4bee', '开发部', 1, '2f8447de-5732-4fa4-8286-9a71b41dd1e7', b'0', '2019-12-16 14:48:55');
COMMIT;

-- ----------------------------
-- Table structure for dynamictables
-- ----------------------------
DROP TABLE IF EXISTS `dynamictables`;
CREATE TABLE `dynamictables` (
  `ID` char(36) NOT NULL,
  `TableName` varchar(255) DEFAULT NULL COMMENT '表名',
  `FormJson` text COMMENT '数据',
  `Position` text COMMENT '使用位置',
  `Optime` varchar(50) DEFAULT NULL COMMENT '操作时间',
  `Remark` text COMMENT '备注',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表格设计';

-- ----------------------------
-- Records of dynamictables
-- ----------------------------
BEGIN;
INSERT INTO `dynamictables` VALUES ('054cfb12-7db2-400b-9917-27d3105dbb09', 'dept', '{\"columns\":[{\"prop\":\"name\",\"label\":\"部门名称\",\"minWidth\":\"200\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"280\",\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', 'Dept.vue/部门设置', '2019-12-12 17:48:36', NULL, b'0', '2019-12-12 17:48:37');
INSERT INTO `dynamictables` VALUES ('58da681b-af8f-4733-b7b0-9c037e9d0d8f', 'users', '{\"columns\":[{\"prop\":\"realname\",\"label\":\"姓名\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"username\",\"label\":\"登录名\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"rolename\",\"label\":\"角色\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"option\":{\"width\":\"\",\"placeholder\":\"\",\"remote\":\"custom\",\"remoteFunc\":\"funcGetRole\",\"props\":{\"label\":\"label\",\"value\":\"value\"},\"type\":\"select\",\"selectBy\":\"label\"},\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"deptname\",\"label\":\"部门\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"position\",\"label\":\"岗位\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":\"90\",\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"logincount\",\"label\":\"账号状态\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":\"110\",\"sortable\":\"custom\",\"searchable\":false,\"slotName\":\"columnFormatter\"},{\"prop\":\"avatar\",\"label\":\"头像\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":\"100\",\"sortable\":\"custom\",\"searchable\":false,\"slotName\":\"columnFormatter\"},{\"prop\":\"signature\",\"label\":\"签名\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":false,\"slotName\":\"columnFormatter\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"270\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\"}]}', 'Users.vue系统设置/角色管理', '2020-06-19 09:35:02', NULL, b'0', '2020-06-19 09:35:02');
INSERT INTO `dynamictables` VALUES ('f2ad95ae-61d7-4bc3-94d6-dc00e867fdbe', 'dynamictables', '{\"columns\":[{\"prop\":\"tableName\",\"label\":\"表名\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"position\",\"label\":\"使用位置\",\"minWidth\":\"300\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"optime\",\"label\":\"更新时间\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"150\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\",\"width\":\"200\"}]}', 'TableDesigner.vue开发人员工具/表格设计', '2019-12-25 16:31:32', NULL, b'0', '2019-12-25 16:31:33');
INSERT INTO `dynamictables` VALUES ('fb8a5d7c-2fda-4936-9da0-dc09354adfdc', 'form', '{\"columns\":[{\"prop\":\"tableName\",\"label\":\"表名\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"position\",\"label\":\"使用位置\",\"minWidth\":\"300\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"optime\",\"label\":\"更新时间\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"150\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\"}]}', 'FormDesigner.vue开发人员工具/表单设计', '2019-12-25 16:31:19', NULL, b'0', '2019-12-25 16:31:20');
INSERT INTO `dynamictables` VALUES ('fc442e2b-a7f9-4fab-8d59-2803ae2a9215', 'role', '{\"columns\":[{\"prop\":\"rolename\",\"label\":\"角色\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true},{\"prop\":\"rank\",\"label\":\"排序\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true},{\"prop\":\"roleauthnamedict\",\"label\":\"菜单\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true,\"showOverflowTooltip\":true},{\"prop\":\"homepagedict\",\"label\":\"登录后跳转到\",\"minWidth\":\"160\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"headerAlign\":\"center\",\"align\":\"center\"}]}', 'Role.vue系统设置/角色管理', '2019-04-04 10:58:49', NULL, b'0', '2019-04-04 10:58:50');
COMMIT;

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `ID` char(36) NOT NULL,
  `TableName` varchar(255) DEFAULT NULL COMMENT '表名',
  `FormJson` longtext COMMENT '数据',
  `Position` text COMMENT '使用位置',
  `Optime` varchar(50) DEFAULT NULL COMMENT '操作时间',
  `Remark` text COMMENT '备注',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单设计';

-- ----------------------------
-- Records of form
-- ----------------------------
BEGIN;
INSERT INTO `form` VALUES ('08d0b5e4-92e4-431b-9b48-6189881335ed', 'role', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"角色\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672671000_92966\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rolename\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}],\"type\":\"input\",\"key\":\"1543672671000_92966\"}],\"span\":12},{\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672693000_86312\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rank\",\"rules\":[],\"type\":\"input\",\"key\":\"1543672693000_86312\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543672665000_69434\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543672665000_69434\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543672665000_69434\"},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"input\",\"name\":\"首页\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1554347848000_34718\"},\"key\":\"1554347848000_34718\",\"model\":\"homepagedict\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1554347841000_92183\"},\"key\":\"1554347841000_92183\",\"model\":\"1554347841000_92183\",\"rules\":[]},{\"columns\":[{\"list\":[{\"name\":\"对应菜单\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672717000_46620\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"roleauthnamedict\",\"rules\":[{\"type\":\"string\",\"message\":\"对应菜单格式不正确\"}],\"type\":\"input\",\"key\":\"1543672717000_46620\"}],\"span\":24}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543672710000_2784\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543672710000_2784\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543672710000_2784\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":\"\"}}', NULL, '2019-04-04 11:19:36', NULL, b'0', '2019-04-04 11:19:36');
INSERT INTO `form` VALUES ('139d4ebc-d6a1-40bb-b063-2086c31e743d', 'ad_codelist_type', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"字典类型名称\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852872000_82944\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codevalue\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}],\"type\":\"input\",\"key\":\"1542852872000_82944\"}],\"span\":12},{\"list\":[{\"name\":\"字典类型描述\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852908000_20406\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codename\",\"rules\":[],\"type\":\"input\",\"key\":\"1542852908000_20406\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542852751000_26540\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542852751000_26540\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542852751000_26540\"},{\"columns\":[{\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852959000_72602\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeorder\",\"rules\":[{\"type\":\"number\",\"message\":\"排序格式不正确\"}],\"type\":\"input\",\"key\":\"1542852959000_72602\"}],\"span\":12},{\"list\":[{\"name\":\"备注\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852978000_87249\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"remark\",\"rules\":[],\"type\":\"input\",\"key\":\"1542852978000_87249\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542852934000_45834\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542852934000_45834\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542852934000_45834\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"top\",\"labelWidth\":\"\"}}', 'DictType.vue开发人员工具/字典类型管理/字典类型列表', '2019-11-21 09:22:13', NULL, b'0', '2019-11-21 09:22:13');
INSERT INTO `form` VALUES ('22727b7c-7d23-4f3f-ad5b-526eca8f8779', 'users', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"姓名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692259000_97262\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"realname\",\"rules\":[{\"type\":\"string\",\"message\":\"密码格式不正确\"},{\"required\":true,\"message\":\"姓名必须填写\"}],\"type\":\"input\",\"key\":\"1543692259000_97262\"}],\"span\":12},{\"list\":[{\"name\":\"登录名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692355000_82392\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"username\",\"rules\":[{\"type\":\"string\",\"message\":\"密码格式不正确\"},{\"required\":true,\"message\":\"登录名必须填写\"}],\"type\":\"input\",\"key\":\"1543692355000_82392\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692232000_18760\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692232000_18760\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692232000_18760\"},{\"columns\":[{\"list\":[{\"name\":\"密码\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692382000_41790\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true,\"message\":\"\"},\"model\":\"password\",\"rules\":[{\"type\":\"string\",\"message\":\"密码格式不正确\"},{\"required\":true,\"message\":\"密码必须填写\"}],\"type\":\"input\",\"key\":\"1543692382000_41790\"}],\"span\":12},{\"list\":[{\"type\":\"treeselect\",\"name\":\"部门\",\"icon\":\"tree\",\"options\":{\"remoteFunc\":\"funcGetDeptTree\",\"placeholder\":\"\",\"width\":\"\",\"maxHeight\":\"100\",\"multiple\":false,\"remote\":\"custom\",\"props\":{\"value\":\"name\",\"label\":\"id\",\"children\":\"children\"},\"clearable\":true,\"searchable\":true,\"noChildrenText\":\"暂无数据\",\"noOptionsText\":\"暂无数据\",\"noResultsText\":\"暂无数据\",\"searchNested\":true,\"required\":true,\"showValueLabelSlot\":false,\"disabled\":false,\"showCount\":false,\"disableBranchNodes\":false,\"remoteOptions\":[],\"tips\":\"选择所属部门\",\"defaultValue\":\"\"},\"key\":\"1581922048000_67977\",\"model\":\"deptid\",\"rules\":[{\"required\":true,\"message\":\"部门必须填写\"}]}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692369000_62178\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692369000_62178\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692369000_62178\"},{\"columns\":[{\"list\":[{\"type\":\"input\",\"name\":\"联系方式\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1572936414000_90893\"},\"key\":\"tel\",\"model\":\"tel\",\"rules\":[]}],\"span\":12},{\"span\":12,\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692390000_91729\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rank\",\"rules\":[],\"type\":\"input\",\"key\":\"rank\"}]}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692434000_13772\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692434000_13772\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692434000_13772\"},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"select\",\"name\":\"密级等级\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"秘密级\"},{\"value\":\"机密级\"},{\"value\":\"非密\"}],\"remote\":\"dict\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"func_1595402142000_90037\",\"dictType\":\"文件密级\"},\"key\":\"1595402142000_90037\",\"model\":\"secretlevel\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1595402137000_73896\"},\"key\":\"1595402137000_73896\",\"model\":\"1595402137000_73896\",\"rules\":[]}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0}}', 'Users.vue系统设置/用户管理', '2020-07-22 15:18:27', NULL, b'0', '2020-07-22 15:18:27');
INSERT INTO `form` VALUES ('45a0da67-2713-42cb-bdb4-4e5cdbb8d436', 'ad_codelist', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"字典值\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542782929000_93584\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codevalue\",\"rules\":[{\"type\":\"string\",\"message\":\"字典值格式不正确\"}],\"type\":\"input\",\"key\":\"1542782929000_93584\"}],\"span\":12},{\"list\":[{\"name\":\"字典名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542782931000_42300\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codename\",\"rules\":[{\"type\":\"string\",\"message\":\"字典名格式不正确\"}],\"type\":\"input\",\"key\":\"1542782931000_42300\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542782926000_16479\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542782926000_16479\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542782926000_16479\"},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"select\",\"name\":\"所属分类\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"custom\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"getDictType\"},\"key\":\"1576489740000_96446\",\"model\":\"codetype\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1576489735000_66792\"},\"key\":\"1576489735000_66792\",\"model\":\"1576489735000_66792\",\"rules\":[]},{\"columns\":[{\"list\":[{\"name\":\"字典排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542783014000_32619\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeorder\",\"rules\":[{\"type\":\"number\",\"message\":\"字典排序格式不正确\"}],\"type\":\"input\",\"key\":\"codeorder\"}],\"span\":12},{\"list\":[{\"name\":\"备注\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542783045000_37663\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"remark\",\"rules\":[{\"type\":\"string\",\"message\":\"备注格式不正确\"}],\"type\":\"input\",\"key\":\"remark\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542782963000_76757\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542782963000_76757\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542782963000_76757\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":\"\"}}', 'Dict.vue开发人员工具/字典管理', '2019-12-18 13:43:06', NULL, b'0', '2019-12-18 13:43:07');
INSERT INTO `form` VALUES ('6ce2aa72-c969-43cf-8370-c669e50b300b', 'dept', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"部门名称\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542344382000_98751\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"name\",\"rules\":[{\"type\":\"string\",\"message\":\"部门名称格式不正确\"},{\"required\":true,\"message\":\"部门名称必须填写\"}],\"type\":\"input\",\"key\":\"1542344382000_98751\"}],\"span\":12},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"部门排序\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"number\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_rank\"},\"key\":\"rank\",\"model\":\"rank\",\"rules\":[{\"type\":\"number\",\"message\":\"部门排序格式不正确\"}]}]}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542344310000_82263\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"grid_1542344310000_82263\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542344310000_82263\"},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"所属流程\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"默认省级,不需要设置\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"dict\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"func_1574836363000_69862\",\"dictType\":\"流程分类\"},\"key\":\"flowregion\",\"model\":\"flowregion\",\"rules\":[]}]},{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"所属单位\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":true,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"custom\",\"remoteOptions\":[],\"props\":{\"value\":\"id\",\"label\":\"name\"},\"remoteFunc\":\"funcGetCompnayList\"},\"key\":\"companyid\",\"model\":\"companyid\",\"rules\":[{\"required\":true,\"message\":\"所属单位必须填写\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1566357690000_41364\"},\"key\":\"1566357690000_41364\",\"model\":\"1566357690000_41364\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"部门类型\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"dict\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"func_1574839082000_38888\",\"dictType\":\"部门类型\"},\"key\":\"1574839082000_38888\",\"model\":\"type\",\"rules\":[]}]},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"线索编号\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":true,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1582769665000_36896\"},\"key\":\"1582769665000_36896\",\"model\":\"namesx\",\"rules\":[{\"type\":\"string\",\"message\":\"线索编号格式不正确\"},{\"required\":true,\"message\":\"线索编号必须填写\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1574836947000_68534\"},\"key\":\"1574836947000_68534\",\"model\":\"1574836947000_68534\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"table\",\"name\":\"岗位配置\",\"icon\":\"table\",\"options\":{\"remoteFunc\":\"func_1576142465000_80441\",\"visibleList\":{\"actionColumnBtnEdit\":true,\"actionColumnBtnDetail\":false,\"btnAdd\":true,\"actionColumn\":true,\"tableTitle\":false,\"searchForm\":false,\"actionColumnBtnDel\":true,\"conditionTitle\":false,\"btnExport\":false},\"tableParams\":\"deptid,id\",\"prefill\":\"deptid,id\",\"tableTitle\":\"岗位配置\",\"showPagination\":true,\"tableName\":\"dept_post\",\"tableDesignerName\":\"dept_post\",\"dialogFormDesignerName\":\"dept_post\"},\"key\":\"1576142465000_80441\",\"model\":\"dept_post\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1576142461000_22571\"},\"key\":\"1576142461000_22571\",\"model\":\"1576142461000_22571\",\"rules\":[]}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":\"\"}}', 'Dept.vue/系统设置/部门设置', '2020-03-16 09:44:42', NULL, b'0', '2020-03-16 09:44:43');
INSERT INTO `form` VALUES ('786506c7-7d3a-4bec-a9fb-f374b9eecbb7', 'dynamictables', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"表名\",\"icon\":\"regular/caret-square-down\",\"options\":{\"remoteFunc\":\"getTablesOfDB\",\"clearable\":false,\"defaultValue\":\"\",\"remoteOptions\":[],\"multiple\":false,\"remote\":\"custom\",\"required\":false,\"showLabel\":false,\"props\":{\"label\":\"label\",\"value\":\"value\"},\"allowCreate\":true,\"width\":\"100%\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"disabled\":false,\"placeholder\":\"\"},\"model\":\"tableName\",\"rules\":[],\"type\":\"select\",\"key\":\"1544270970000_6013\",\"labelWidth\":\"40\"}],\"span\":12},{\"list\":[{\"name\":\"使用位置\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1544159524000_20194\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"position\",\"rules\":[{\"type\":\"string\",\"message\":\"使用位置格式不正确\"}],\"type\":\"input\",\"key\":\"1544159524000_20194\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1544159335000_25819\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1544159335000_25819\",\"rules\":[],\"type\":\"grid\",\"key\":\"1544159335000_25819\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":80}}', 'TableDesigner.vue开发人员工具/表格设计', '2020-07-25 14:45:18', NULL, b'0', '2020-07-25 14:45:18');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `ID` char(36) NOT NULL,
  `RoleName` text COMMENT '角色名',
  `RoleAuthName` text COMMENT '权限',
  `RoleAuthNameDict` longtext COMMENT '权限名称',
  `Rank` int DEFAULT NULL COMMENT '角色范围',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  `HomePage` varchar(255) DEFAULT NULL COMMENT '角色默认首页设置',
  `HomePageDict` varchar(255) DEFAULT NULL COMMENT '角色默认首页名称设置',
  `RoleFlowKeys` text,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('00000000-1000-0000-0000-000000000000', '超级管理员', 'AdminDashboardForAdmin,AdminDashboard,Users,Role,FormDesigner,TableDesigner,Dict,flowClueInfo,BusinessActClueInfo,System,DevTools', '运维桌面,用户管理,角色管理,表单设计,表格设计,字典管理,线索管理', 1, b'0', '2020-01-16 17:59:41', 'AdminDashboard', '运维桌面', NULL);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` varchar(36) NOT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `DeptID` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `RoleID` varchar(36) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `RealName` varchar(20) DEFAULT NULL,
  `Rank` int DEFAULT '0',
  `IsDeleted` bit(1) NOT NULL COMMENT '记录删除标志 [0]-未删除;[1]-逻辑删除',
  `Timestamp` datetime DEFAULT NULL COMMENT '创建时间',
  `MD5` varchar(255) DEFAULT NULL,
  `LoginCount` varchar(255) DEFAULT NULL COMMENT '登录失败次数',
  `IsLock` varchar(255) DEFAULT NULL COMMENT '用户锁定',
  `UpdatePwdTime` varchar(255) DEFAULT NULL COMMENT '更新密码时间',
  `Tel` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `Photo` longtext COMMENT '照片',
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `index_id` (`ID`) USING BTREE,
  KEY `index_username` (`UserName`) USING BTREE,
  KEY `index_deptid` (`DeptID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('00000000-1000-0000-0000-000000000000', 'admin', '2f8447de-5732-4fa4-8286-9a71b41dd1e7', '00000000-1000-0000-0000-000000000000', 'FE08E6135740A5E9F62216D48C9CD42C', '超级管理员', 0, b'0', '2020-05-14 10:06:30', NULL, '0', '', NULL, NULL, 'data:image/jpg;base64,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');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
