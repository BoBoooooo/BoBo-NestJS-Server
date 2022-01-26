/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : nest

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 26/01/2022 17:14:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad_codelist
-- ----------------------------
DROP TABLE IF EXISTS `ad_codelist`;
CREATE TABLE `ad_codelist` (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `codeValue` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '字典值',
  `codeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典值描述',
  `codeType` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典类型',
  `codeOrder` decimal(8,0) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

-- ----------------------------
-- Records of ad_codelist
-- ----------------------------
BEGIN;
INSERT INTO `ad_codelist` VALUES ('0a6d30ed-8670-4f65-9b92-5a5e24b53049', 'P6', 'P6', 'ac3f1996-bcec-4604-b465-eaf5d1208e79', 2, NULL, '2020-12-20 10:58:01');
INSERT INTO `ad_codelist` VALUES ('154ba39b-4d6f-4e7e-8197-dcf7be5037da', 'P8', 'P8', 'ac3f1996-bcec-4604-b465-eaf5d1208e79', 4, NULL, '2020-12-20 10:58:23');
INSERT INTO `ad_codelist` VALUES ('212c3189-e913-4b51-8e0c-6993d9c9f9fa', 'P5', 'P5', 'ac3f1996-bcec-4604-b465-eaf5d1208e79', 1, NULL, '2020-12-20 10:57:55');
INSERT INTO `ad_codelist` VALUES ('2d09a14f-4032-4a27-9b16-946ab3950689', '8,15', '密度长度', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 4, 'passwordLength', '2020-12-20 11:46:35');
INSERT INTO `ad_codelist` VALUES ('2dcba704-af95-44b9-9ad2-72b3d1992b81', '本科', '本科', '962e3a39-928d-4470-a9f3-8efda17f2692', 5, NULL, '2020-12-20 10:57:05');
INSERT INTO `ad_codelist` VALUES ('3008950a-6246-4fbe-b0d0-538e0cdd0139', '大专及以下', '大专及以下', '962e3a39-928d-4470-a9f3-8efda17f2692', 6, NULL, '2020-12-20 10:56:59');
INSERT INTO `ad_codelist` VALUES ('58fa976e-b0f1-464d-814b-afe172a6f023', 'P9', 'P9', 'ac3f1996-bcec-4604-b465-eaf5d1208e79', 5, NULL, '2020-12-20 10:58:28');
INSERT INTO `ad_codelist` VALUES ('59778b04-2ed4-42ef-a3d4-aa330d0e3d54', '7', '密码过期时间(天)', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 2, 'passwordTime', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('63aa209d-264a-4e38-8c4c-e83172e2a5f6', '1', '开发人员模式', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 5, 'isDev', '2020-12-20 12:25:07');
INSERT INTO `ad_codelist` VALUES ('7461d8d4-45c5-4fd5-a87f-f04320a487d5', 'P7', 'P7', 'ac3f1996-bcec-4604-b465-eaf5d1208e79', 3, NULL, '2020-12-20 10:58:08');
INSERT INTO `ad_codelist` VALUES ('7f81d7b5-c6b9-4412-8b00-8c9cf2482357', '20', '客户端超时时间(分钟)', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 3, 'clientTimeOut', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('8062ca78-ce7f-402f-9623-22a185d4ff1b', '博士', '博士', '962e3a39-928d-4470-a9f3-8efda17f2692', 3, NULL, '2020-12-20 10:57:18');
INSERT INTO `ad_codelist` VALUES ('8d6dcf21-8e7b-4ec6-ae8a-cacb3912870b', 'P10', 'P10', 'ac3f1996-bcec-4604-b465-eaf5d1208e79', 6, NULL, '2020-12-20 10:58:34');
INSERT INTO `ad_codelist` VALUES ('9233c640-272a-4a4c-92c2-8952ec3dde7e', '研究生', '研究生', '962e3a39-928d-4470-a9f3-8efda17f2692', 4, NULL, '2020-12-20 10:57:13');
INSERT INTO `ad_codelist` VALUES ('a42d675f-5f5e-4770-8587-53c9c04c9e72', '博士后', '博士后', '962e3a39-928d-4470-a9f3-8efda17f2692', 2, NULL, '2020-12-20 10:57:24');
INSERT INTO `ad_codelist` VALUES ('b670bc8e-7a73-4fcc-875d-f2c9af01e329', 'BoBo Admin', '系统名称', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 1, 'systemName', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('da332909-bef0-49c3-819e-e189f996bca0', '女', '女', '01eb097e-0d94-44cf-8796-157bba54f0bb', 2, NULL, '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('dd96514d-87cb-49c7-9191-5021aeabb639', '男', '男', '01eb097e-0d94-44cf-8796-157bba54f0bb', 1, NULL, '2020-09-17 10:31:39');
COMMIT;

-- ----------------------------
-- Table structure for ad_codelist_type
-- ----------------------------
DROP TABLE IF EXISTS `ad_codelist_type`;
CREATE TABLE `ad_codelist_type` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `typeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典类型名称',
  `order` decimal(8,0) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `parentId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级ID',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='字典类型表';

-- ----------------------------
-- Records of ad_codelist_type
-- ----------------------------
BEGIN;
INSERT INTO `ad_codelist_type` VALUES ('01eb097e-0d94-44cf-8796-157bba54f0bb', '性别', 1, '', 'bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist_type` VALUES ('962e3a39-928d-4470-a9f3-8efda17f2692', '文化程度', 0, '', 'bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '2020-12-20 10:56:28');
INSERT INTO `ad_codelist_type` VALUES ('ac3f1996-bcec-4604-b465-eaf5d1208e79', '职级', 0, '', 'bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '2020-12-20 10:57:39');
INSERT INTO `ad_codelist_type` VALUES ('bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '常用', 0, '常用', 'fe980574-2552-4754-88c8-366eb5a22861', '2021-01-12 17:09:06');
INSERT INTO `ad_codelist_type` VALUES ('f844cb90-1738-4013-b9f2-b0755b63b9dc', '系统配置', 2, '系统相关', 'fe980574-2552-4754-88c8-366eb5a22861', '2021-01-12 17:09:16');
INSERT INTO `ad_codelist_type` VALUES ('fe980574-2552-4754-88c8-366eb5a22861', '数据字典', 1, '', '0', '2020-09-17 10:31:39');
COMMIT;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '部门名称',
  `rank` int DEFAULT NULL COMMENT '排序码',
  `parentId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '上级ID',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `index_id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES ('2f8447de-5732-4fa4-8286-9a71b41dd1e7', '总部', 1, '0', '2020-09-18 15:17:45');
INSERT INTO `dept` VALUES ('b987afc3-6969-4b87-85a4-f8e2029e4bee', '开发部', 1, '2f8447de-5732-4fa4-8286-9a71b41dd1e7', '2020-09-17 10:31:39');
COMMIT;

-- ----------------------------
-- Table structure for dynamictables
-- ----------------------------
DROP TABLE IF EXISTS `dynamictables`;
CREATE TABLE `dynamictables` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tableName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `formJson` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '数据',
  `position` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '使用位置',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='表格设计';

-- ----------------------------
-- Records of dynamictables
-- ----------------------------
BEGIN;
INSERT INTO `dynamictables` VALUES ('054cfb12-7db2-400b-9917-27d3105dbb09', 'dept', '{\"columns\":[{\"prop\":\"name\",\"label\":\"部门名称\",\"minWidth\":\"200\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"280\",\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', 'Dept.vue/部门设置', '2020-09-17 10:32:10');
INSERT INTO `dynamictables` VALUES ('3be21467-5c60-42eb-81ae-2e7bb81b6d64', 'person_resume', '{\"columns\":[{\"prop\":\"time\",\"label\":\"起止时间\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"workunit\",\"label\":\"工作单位\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"workduty\",\"label\":\"职务\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', '员工履历', '2020-12-20 10:37:25');
INSERT INTO `dynamictables` VALUES ('58da681b-af8f-4733-b7b0-9c037e9d0d8f', 'users', '{\"columns\":[{\"prop\":\"realName\",\"label\":\"姓名\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"userName\",\"label\":\"登录名\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"roleName\",\"label\":\"角色\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"option\":{\"width\":\"\",\"placeholder\":\"\",\"remote\":\"custom\",\"remoteFunc\":\"funcGetRole\",\"props\":{\"label\":\"label\",\"value\":\"value\"},\"type\":\"select\",\"selectBy\":\"label\"},\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"deptName\",\"label\":\"部门\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"photo\",\"label\":\"头像\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":false,\"slotName\":\"columnFormatter\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"270\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\"}],\"name\":\"users\",\"position\":\"Users.vue系统设置/角色管理\"}', 'Users.vue系统设置/角色管理', '2021-01-08 09:16:22');
INSERT INTO `dynamictables` VALUES ('72269942-3b4a-4000-b722-12c70febbab2', 'params', '{\"columns\":[{\"prop\":\"codeName\",\"label\":\"参数名称\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"remark\",\"label\":\"参数键名\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"codeValue\",\"label\":\"参数键值\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', '参数设置', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('e2d577ac-6900-432f-a45c-ec086f668825', 'person', '{\"columns\":[{\"prop\":\"jobno\",\"label\":\"工号\",\"minWidth\":\"100\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"jobno\",\"searchable\":true},{\"prop\":\"personname\",\"label\":\"姓名\",\"minWidth\":\"70\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"personname\",\"searchable\":true},{\"prop\":\"jobtime\",\"label\":\"入职时间\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"deptname\",\"label\":\"所在部门\",\"minWidth\":\"100\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"post\",\"label\":\"岗位\",\"minWidth\":\"100\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"level\",\"label\":\"职级\",\"minWidth\":\"100\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"option\":{\"remote\":\"dict\",\"remoteFunc\":\"\",\"type\":\"select\",\"props\":{\"value\":\"\",\"label\":\"\"},\"dictType\":\"ac3f1996-bcec-4604-b465-eaf5d1208e79\"}},{\"prop\":\"mobile\",\"label\":\"联系方式\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"240\",\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}],\"name\":\"person\",\"position\":\"员工管理\"}', '员工管理', '2021-01-12 17:02:22');
INSERT INTO `dynamictables` VALUES ('eb9388de-aa0c-4027-8653-b4e0c9a9cb1d', 'ad_codelist', '{\"columns\":[{\"prop\":\"codeName\",\"label\":\"字典名\",\"minWidth\":140,\"align\":\"left\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"codeValue\",\"label\":\"字典值\",\"minWidth\":140,\"align\":\"left\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"typeName\",\"label\":\"所属分类\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"option\":{\"width\":\"\",\"placeholder\":\"\",\"remote\":\"custom\",\"remoteFunc\":\"getDictType\",\"props\":{\"value\":\"value\",\"label\":\"label\"},\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"type\":\"select\",\"selectBy\":\"label\"}},{\"prop\":\"codeOrder\",\"label\":\"字典排序\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"remark\",\"label\":\"备注\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', '字典管理', '2020-12-20 11:05:38');
INSERT INTO `dynamictables` VALUES ('f2ad95ae-61d7-4bc3-94d6-dc00e867fdbe', 'dynamictables', '{\"columns\":[{\"prop\":\"tableName\",\"label\":\"表名\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"position\",\"label\":\"使用位置\",\"minWidth\":\"300\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"timestamp\",\"label\":\"更新时间\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"150\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\",\"width\":\"200\"}]}', 'TableDesigner.vue开发人员工具/表格设计', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('fb8a5d7c-2fda-4936-9da0-dc09354adfdc', 'form', '{\"columns\":[{\"prop\":\"tableName\",\"label\":\"表名\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"position\",\"label\":\"使用位置\",\"minWidth\":\"300\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"timestamp\",\"label\":\"更新时间\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"150\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\"}]}', 'FormDesigner.vue开发人员工具/表单设计', '2020-09-18 10:14:02');
INSERT INTO `dynamictables` VALUES ('fc442e2b-a7f9-4fab-8d59-2803ae2a9215', 'role', '{\"columns\":[{\"prop\":\"roleName\",\"label\":\"角色\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true},{\"prop\":\"roleAuthNameDict\",\"label\":\"菜单\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true,\"showOverflowTooltip\":true},{\"prop\":\"rank\",\"label\":\"排序\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"center\",\"headerAlign\":\"center\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"headerAlign\":\"center\",\"align\":\"center\"}]}', 'Role.vue系统设置/角色管理', '2020-09-18 10:14:50');
COMMIT;

-- ----------------------------
-- Table structure for form
-- ----------------------------
DROP TABLE IF EXISTS `form`;
CREATE TABLE `form` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tableName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `formJson` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '数据',
  `position` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '使用位置',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='表单设计';

-- ----------------------------
-- Records of form
-- ----------------------------
BEGIN;
INSERT INTO `form` VALUES ('08d0b5e4-92e4-431b-9b48-6189881335ed', 'role', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"角色\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672671000_92966\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"roleName\",\"rules\":[{\"type\":\"string\",\"message\":\"角色格式不正确\"}],\"type\":\"input\",\"key\":\"1543672671000_92966\"}],\"span\":12},{\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672693000_86312\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rank\",\"rules\":[],\"type\":\"input\",\"key\":\"1543672693000_86312\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543672665000_69434\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543672665000_69434\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543672665000_69434\"},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"input\",\"name\":\"首页\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1554347848000_34718\"},\"key\":\"1554347848000_34718\",\"model\":\"homePageDict\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1554347841000_92183\"},\"key\":\"1554347841000_92183\",\"model\":\"1554347841000_92183\",\"rules\":[]},{\"columns\":[{\"list\":[{\"name\":\"对应菜单\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672717000_46620\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"roleAuthNameDict\",\"rules\":[{\"type\":\"string\",\"message\":\"对应菜单格式不正确\"}],\"type\":\"input\",\"key\":\"1543672717000_46620\"}],\"span\":24}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543672710000_2784\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543672710000_2784\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543672710000_2784\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0,\"name\":\"role\"}}', 'Role.vue/角色设置', '2020-12-20 12:39:06');
INSERT INTO `form` VALUES ('139d4ebc-d6a1-40bb-b063-2086c31e743d', 'ad_codelist_type', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"字典类型名称\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852872000_82944\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeValue\",\"rules\":[{\"type\":\"string\",\"message\":\"字典类型名称格式不正确\"}],\"type\":\"input\",\"key\":\"1542852872000_82944\"}],\"span\":12},{\"list\":[{\"name\":\"字典类型描述\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852908000_20406\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeName\",\"rules\":[],\"type\":\"input\",\"key\":\"1542852908000_20406\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542852751000_26540\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542852751000_26540\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542852751000_26540\"},{\"columns\":[{\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852959000_72602\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeOrder\",\"rules\":[{\"type\":\"number\",\"message\":\"排序格式不正确\"}],\"type\":\"input\",\"key\":\"1542852959000_72602\"}],\"span\":12},{\"list\":[{\"name\":\"备注\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852978000_87249\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"remark\",\"rules\":[{\"type\":\"string\",\"message\":\"备注格式不正确\"}],\"type\":\"input\",\"key\":\"1542852978000_87249\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542852934000_45834\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542852934000_45834\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542852934000_45834\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"top\",\"labelWidth\":0,\"name\":\"ad_codelist_type\"}}', 'DictType.vue开发人员工具/字典类型管理/字典类型列表', '2020-12-20 12:39:08');
INSERT INTO `form` VALUES ('22727b7c-7d23-4f3f-ad5b-526eca8f8779', 'users', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"姓名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692259000_97262\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"realName\",\"rules\":[{\"type\":\"string\",\"message\":\"姓名格式不正确\"},{\"required\":true,\"message\":\"姓名必须填写\"}],\"type\":\"input\",\"key\":\"1543692259000_97262\"}],\"span\":12},{\"list\":[{\"type\":\"input\",\"name\":\"登录名\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":true,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1599720592000_96541\"},\"key\":\"1599720592000_96541\",\"model\":\"userName\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"},{\"required\":true,\"message\":\"登录名必须填写\"}]}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692232000_18760\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692232000_18760\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692232000_18760\"},{\"columns\":[{\"list\":[{\"name\":\"密码\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692382000_41790\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true,\"message\":\"\"},\"model\":\"password\",\"rules\":[{\"type\":\"string\",\"message\":\"联系方式格式不正确\"},{\"required\":true,\"message\":\"密码必须填写\"}],\"type\":\"input\",\"key\":\"1543692382000_41790\"}],\"span\":24}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692369000_62178\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692369000_62178\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692369000_62178\"},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"treeselect\",\"name\":\"部门\",\"icon\":\"tree\",\"options\":{\"remoteFunc\":\"funcGetDeptTree\",\"placeholder\":\"\",\"width\":\"\",\"maxHeight\":\"100\",\"multiple\":false,\"remote\":\"custom\",\"props\":{\"value\":\"name\",\"label\":\"id\",\"children\":\"children\"},\"clearable\":true,\"searchable\":true,\"noChildrenText\":\"暂无数据\",\"noOptionsText\":\"暂无数据\",\"noResultsText\":\"暂无数据\",\"searchNested\":true,\"required\":true,\"showValueLabelSlot\":false,\"disabled\":false,\"showCount\":false,\"disableBranchNodes\":false,\"remoteOptions\":[],\"tips\":\"选择所属部门\",\"defaultValue\":\"\"},\"key\":\"deptId\",\"model\":\"deptId\",\"rules\":[{\"required\":true,\"message\":\"部门必须填写\"}]}]},{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"角色\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":true,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"custom\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"funcGetRole\"},\"key\":\"1599722385000_17600\",\"model\":\"roleId\",\"rules\":[{\"required\":true,\"message\":\"角色必须填写\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1599722356000_92731\"},\"key\":\"1599722356000_92731\",\"model\":\"1599722356000_92731\",\"rules\":[]},{\"columns\":[{\"span\":12,\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692390000_91729\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rank\",\"rules\":[{\"type\":\"number\",\"message\":\"排序格式不正确\"}],\"type\":\"input\",\"key\":\"rank\"}]}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692434000_13772\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692434000_13772\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692434000_13772\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0,\"name\":\"users\"}}', 'Users.vue系统设置/用户管理', '2021-01-07 17:14:54');
INSERT INTO `form` VALUES ('2875cabf-19ca-46ee-abce-026dccbd9d6f', 'person_resume', '{\"list\":[{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"date\",\"name\":\"起止时间\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/calendar-alt\",\"options\":{\"defaultValue\":false,\"readonly\":false,\"disabled\":false,\"editable\":true,\"clearable\":true,\"placeholder\":\"\",\"startPlaceholder\":\"\",\"endPlaceholder\":\"\",\"type\":\"monthrange\",\"format\":\"yyyy-MM\",\"timestamp\":false,\"required\":false,\"width\":\"100%\",\"remoteFunc\":\"func_1608434790000_9491\"},\"key\":\"1608434790000_9491\",\"model\":\"time\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.7269407990573393\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"工作单位\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"workunit\",\"model\":\"workunit\",\"rules\":[]}]},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"职务\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"workduty\",\"model\":\"workduty\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.0967080797051183\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"richtext\",\"name\":\"备注\",\"icon\":\"text-width\",\"hidden\":false,\"options\":{\"defaultValue\":\"\",\"readonly\":false,\"remoteFunc\":\"func_1608431672000_50519\"},\"key\":\"1608431672000_50519\",\"model\":\"remark\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1608431652000_51550\"},\"key\":\"1608431652000_51550\",\"model\":\"1608431652000_51550\",\"rules\":[]}],\"config\":{\"labelWidth\":140,\"labelPosition\":\"right\",\"size\":\"small\",\"isTableClass\":true}}', '员工履历', '2020-12-20 11:29:37');
INSERT INTO `form` VALUES ('45a0da67-2713-42cb-bdb4-4e5cdbb8d436', 'ad_codelist', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"字典值\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542782929000_93584\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeValue\",\"rules\":[{\"type\":\"string\",\"message\":\"字典值格式不正确\"}],\"type\":\"input\",\"key\":\"1542782929000_93584\"}],\"span\":12},{\"list\":[{\"name\":\"字典名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542782931000_42300\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeName\",\"rules\":[{\"type\":\"string\",\"message\":\"字典名格式不正确\"}],\"type\":\"input\",\"key\":\"1542782931000_42300\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542782926000_16479\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542782926000_16479\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542782926000_16479\"},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"select\",\"name\":\"所属分类\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"custom\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"getDictType\"},\"key\":\"1576489740000_96446\",\"model\":\"codeType\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1576489735000_66792\"},\"key\":\"1576489735000_66792\",\"model\":\"1576489735000_66792\",\"rules\":[]},{\"columns\":[{\"list\":[{\"name\":\"字典排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542783014000_32619\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeOrder\",\"rules\":[{\"type\":\"number\",\"message\":\"字典排序格式不正确\"}],\"type\":\"input\",\"key\":\"codeorder\"}],\"span\":12},{\"list\":[{\"name\":\"备注\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542783045000_37663\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"remark\",\"rules\":[{\"type\":\"string\",\"message\":\"备注格式不正确\"}],\"type\":\"input\",\"key\":\"remark\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542782963000_76757\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542782963000_76757\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542782963000_76757\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0,\"name\":\"ad_codelist\"}}', 'Dict.vue开发人员工具/字典管理', '2020-12-20 12:39:11');
INSERT INTO `form` VALUES ('6ce2aa72-c969-43cf-8370-c669e50b300b', 'dept', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"部门名称\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542344382000_98751\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"name\",\"rules\":[{\"type\":\"string\",\"message\":\"部门名称格式不正确\"},{\"required\":true,\"message\":\"部门名称必须填写\"}],\"type\":\"input\",\"key\":\"1542344382000_98751\"}],\"span\":12},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"部门排序\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"number\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_rank\"},\"key\":\"rank\",\"model\":\"rank\",\"rules\":[{\"type\":\"number\",\"message\":\"部门排序格式不正确\"}]}]}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542344310000_82263\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"grid_1542344310000_82263\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542344310000_82263\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0,\"name\":\"dept\"}}', 'Dept.vue/系统设置/部门设置', '2020-12-20 12:39:12');
INSERT INTO `form` VALUES ('786506c7-7d3a-4bec-a9fb-f374b9eecbb7', 'dynamictables', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"表名\",\"icon\":\"regular/caret-square-down\",\"options\":{\"remoteFunc\":\"getTablesOfDB\",\"clearable\":false,\"defaultValue\":\"\",\"remoteOptions\":[],\"multiple\":false,\"remote\":\"custom\",\"required\":false,\"showLabel\":false,\"props\":{\"label\":\"label\",\"value\":\"value\"},\"allowCreate\":true,\"width\":\"100%\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"disabled\":false,\"placeholder\":\"\"},\"model\":\"tableName\",\"rules\":[],\"type\":\"select\",\"key\":\"1544270970000_6013\",\"labelWidth\":\"40\"}],\"span\":12},{\"list\":[{\"name\":\"使用位置\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1544159524000_20194\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"position\",\"rules\":[{\"type\":\"string\",\"message\":\"使用位置格式不正确\"}],\"type\":\"input\",\"key\":\"1544159524000_20194\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1544159335000_25819\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1544159335000_25819\",\"rules\":[],\"type\":\"grid\",\"key\":\"1544159335000_25819\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":80,\"name\":\"dynamictables\"}}', 'TableDesigner.vue开发人员工具/表格设计', '2020-12-20 12:39:14');
INSERT INTO `form` VALUES ('bd70c78e-7678-4c06-a466-6760f29f73ad', 'person', '{\"list\":[{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"工号\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"请输入工号\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"jobno\",\"model\":\"jobno\",\"rules\":[{\"type\":\"string\",\"message\":\"工号格式不正确\"}]}]},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"姓名\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"personname\",\"model\":\"personname\",\"rules\":[{\"type\":\"string\",\"message\":\"姓名1格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.0578278502302394\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"radio\",\"name\":\"性别\",\"icon\":\"regular/dot-circle\",\"labelWidth\":\"\",\"hidden\":false,\"options\":{\"inline\":true,\"defaultValue\":\"\",\"showLabel\":false,\"options\":[{\"value\":\"男\",\"label\":\"选项1\"},{\"value\":\"女\",\"label\":\"选项2\"}],\"required\":false,\"disabled\":false,\"width\":\"\",\"remote\":false,\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"func_1608432399000_10952\"},\"key\":\"1608432399000_10952\",\"model\":\"sex\",\"rules\":[{\"type\":\"string\",\"message\":\"性别格式不正确\"}]}]},{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"文化程度\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"100%\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"dict\",\"remoteOptions\":[{\"value\":\"本科\",\"label\":\"本科\"},{\"value\":\"大专及以下\",\"label\":\"大专及以下\"},{\"value\":\"博士\",\"label\":\"博士\"},{\"value\":\"研究生\",\"label\":\"研究生\"},{\"value\":\"博士后\",\"label\":\"博士后\"}],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"func_1608433134000_41081\",\"dictType\":\"962e3a39-928d-4470-a9f3-8efda17f2692\"},\"key\":\"1608433134000_41081\",\"model\":\"education\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.4979627182416866\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"所在部门\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"deptname\",\"model\":\"deptname\",\"rules\":[]}]},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"岗位\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"post\",\"model\":\"post\",\"rules\":[{\"type\":\"string\",\"message\":\"岗位格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.6063054944523363\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"职级\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"100%\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"dict\",\"remoteOptions\":[{\"value\":\"P6\",\"label\":\"P6\"},{\"value\":\"P8\",\"label\":\"P8\"},{\"value\":\"P5\",\"label\":\"P5\"},{\"value\":\"P9\",\"label\":\"P9\"},{\"value\":\"P7\",\"label\":\"P7\"},{\"value\":\"P10\",\"label\":\"P10\"}],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"func_1608433344000_95961\",\"dictType\":\"ac3f1996-bcec-4604-b465-eaf5d1208e79\"},\"key\":\"1608433344000_95961\",\"model\":\"level\",\"rules\":[{\"type\":\"string\",\"message\":\"岗位格式不正确\"}]}]},{\"span\":12,\"list\":[{\"type\":\"date\",\"name\":\"入职时间\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/calendar-alt\",\"options\":{\"defaultValue\":false,\"readonly\":false,\"disabled\":false,\"editable\":true,\"clearable\":true,\"placeholder\":\"\",\"startPlaceholder\":\"\",\"endPlaceholder\":\"\",\"type\":\"date\",\"format\":\"yyyy-MM-dd\",\"timestamp\":false,\"required\":false,\"width\":\"100%\",\"remoteFunc\":\"func_1608432345000_20310\"},\"key\":\"1608432345000_20310\",\"model\":\"jobtime\",\"rules\":[{\"type\":\"string\",\"message\":\"入职时间格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.9740509729876656\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"薪资\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"salary\",\"model\":\"salary\",\"rules\":[]}]},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"联系方式\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"1575516931000_0.7423405755223678\",\"model\":\"mobile\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.3680056593272678\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"专业\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1575516931000_89639\"},\"key\":\"major\",\"model\":\"major\",\"rules\":[]}]},{\"span\":12,\"list\":[{\"type\":\"date\",\"name\":\"出生年月\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/calendar-alt\",\"options\":{\"defaultValue\":false,\"readonly\":false,\"disabled\":false,\"editable\":true,\"clearable\":true,\"placeholder\":\"\",\"startPlaceholder\":\"\",\"endPlaceholder\":\"\",\"type\":\"month\",\"format\":\"yyyy-MM\",\"timestamp\":false,\"required\":false,\"width\":\"100%\",\"remoteFunc\":\"func_1608432438000_26217\"},\"key\":\"1608432438000_26217\",\"model\":\"birthdate\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1575516929000_36539\"},\"key\":\"1575516931000_0.22046952760726568\",\"model\":\"1575516929000_36539\",\"rules\":[]},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"table\",\"name\":\"工作履历\",\"icon\":\"table\",\"options\":{\"remoteFunc\":\"func_1608432102000_18779\",\"visibleList\":{\"actionColumnBtnEdit\":true,\"actionColumnBtnDetail\":false,\"btnAdd\":true,\"actionColumn\":true,\"tableTitle\":false,\"searchForm\":false,\"actionColumnBtnDel\":true,\"conditionTitle\":false,\"btnExport\":true,\"btnImport\":false},\"tableParams\":\"personid,id\",\"prefill\":\"personid,id\",\"tableTitle\":\"\",\"showPagination\":true,\"isMultiple\":false,\"tableName\":\"resume\",\"tableDesignerName\":\"person_resume\",\"dialogFormDesignerName\":\"person_resume\"},\"key\":\"1608432102000_18779\",\"model\":\"人员履历表\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1608432099000_43356\"},\"key\":\"1608432099000_43356\",\"model\":\"1608432099000_43356\",\"rules\":[]}],\"config\":{\"labelWidth\":140,\"labelPosition\":\"right\",\"size\":\"small\",\"isTableClass\":true,\"name\":\"person\"}}', '员工管理', '2020-12-20 12:39:38');
COMMIT;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
  `personname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '姓名',
  `deptname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所在部门',
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '薪资',
  `post` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '岗位',
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '职级',
  `timestamp` datetime DEFAULT NULL COMMENT '时间戳',
  `jobtime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '入职时间',
  `jobno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工号',
  `education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '文化程度',
  `major` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '专业',
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系方式',
  `birthdate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '出生年月',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '性别',
  `avatar` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of person
-- ----------------------------
BEGIN;
INSERT INTO `person` VALUES ('038aa5c4-4274-11eb-bb0a-ed55e0675fa7', '邬彦皓', '研发部', '10000', '研发岗', 'P6', '2021-01-04 23:22:17', '2018-05-23', '2019548937', '博士', '专业', '15686640133', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ac626-4274-11eb-bb0a-ed55e0675fa7', '路曼书', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-10-27', '2019614945', '本科', '专业', '17639302987', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038aeb06-4274-11eb-bb0a-ed55e0675fa7', '萧宏恩', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-12-04', '2019927916', '本科', '专业', '15620493978', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038afd1c-4274-11eb-bb0a-ed55e0675fa7', '戴会琦', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-03-02', '2019794742', '本科', '专业', '17623151335', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038b0d7a-4274-11eb-bb0a-ed55e0675fa7', '凤虎鹏', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-01-22', '2019689965', '本科', '专业', '17651279640', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038b221a-4274-11eb-bb0a-ed55e0675fa7', '乐冬若', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-10-18', '2019565599', '本科', '专业', '17646002851', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038b40ba-4274-11eb-bb0a-ed55e0675fa7', '鲁双健', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-10-17', '2019758100', '本科', '专业', '15613393016', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038b5d20-4274-11eb-bb0a-ed55e0675fa7', '石越延', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-08-02', '2019593703', '本科', '专业', '13625998336', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038b777e-4274-11eb-bb0a-ed55e0675fa7', '施心怡', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-07-20', '2019694217', '本科', '专业', '15675146795', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038b9330-4274-11eb-bb0a-ed55e0675fa7', '廉新奎', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-12-28', '2019689978', '本科', '专业', '13665657099', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ba988-4274-11eb-bb0a-ed55e0675fa7', '柳翔伯', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-04-24', '2019867237', '本科', '专业', '13686623977', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038bd44e-4274-11eb-bb0a-ed55e0675fa7', '凌帆强', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-07-30', '2019766252', '本科', '专业', '17640824681', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038bed76-4274-11eb-bb0a-ed55e0675fa7', '熊一远', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-12-18', '2019729549', '本科', '专业', '15620496363', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c03ec-4274-11eb-bb0a-ed55e0675fa7', '凌紫宗', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-01-28', '2019848988', '本科', '专业', '17637737408', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c1d0a-4274-11eb-bb0a-ed55e0675fa7', '卜航钧', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-06-29', '2019556295', '本科', '专业', '15612689300', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c2d36-4274-11eb-bb0a-ed55e0675fa7', '凌征柏', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-03-27', '2019734513', '本科', '专业', '15609813363', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c3efc-4274-11eb-bb0a-ed55e0675fa7', '卜小双', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-09-13', '2019503680', '本科', '专业', '17688696112', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c4e92-4274-11eb-bb0a-ed55e0675fa7', '强武中', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-10-17', '2019814860', '本科', '专业', '17608396635', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c5f68-4274-11eb-bb0a-ed55e0675fa7', '屈华宇', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-11-11', '2019563259', '本科', '专业', '17690528348', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c6ee0-4274-11eb-bb0a-ed55e0675fa7', '康媛征', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-12-10', '2019871719', '本科', '专业', '15614722132', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c7f52-4274-11eb-bb0a-ed55e0675fa7', '诸忠泉', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-02-13', '2019668816', '本科', '专业', '15610097887', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c8e52-4274-11eb-bb0a-ed55e0675fa7', '柯江瑜', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-10-07', '2019728923', '本科', '专业', '15616047698', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038c9eb0-4274-11eb-bb0a-ed55e0675fa7', '姚远博', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-06-22', '2019638168', '本科', '专业', '13622265870', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038caf18-4274-11eb-bb0a-ed55e0675fa7', '房良锦', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-01-25', '2019504073', '本科', '专业', '17639644735', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038cbea4-4274-11eb-bb0a-ed55e0675fa7', '麻冬圣', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-12-01', '2019605862', '本科', '专业', '17696416506', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ccd68-4274-11eb-bb0a-ed55e0675fa7', '何钧坚', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-05-19', '2019517092', '本科', '专业', '17609460950', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038cdd30-4274-11eb-bb0a-ed55e0675fa7', '霍骏斌', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-02-23', '2019767873', '本科', '专业', '17619904819', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038cec62-4274-11eb-bb0a-ed55e0675fa7', '管晋芳', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-08-05', '2019788091', '本科', '专业', '13601406042', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038cfc52-4274-11eb-bb0a-ed55e0675fa7', '管珍家', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-07-13', '2019636837', '本科', '专业', '17666242878', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d0bd4-4274-11eb-bb0a-ed55e0675fa7', '左彦琪', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-11-16', '2019819912', '本科', '专业', '15697115233', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d1ade-4274-11eb-bb0a-ed55e0675fa7', '昌萌灿', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-10-11', '2019689048', '本科', '专业', '13615195848', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d2be6-4274-11eb-bb0a-ed55e0675fa7', '王勤波', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-04-08', '2019985507', '本科', '专业', '15661602918', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d3b5e-4274-11eb-bb0a-ed55e0675fa7', '高田元', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-01-01', '2019860392', '本科', '专业', '17601798270', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d4bd0-4274-11eb-bb0a-ed55e0675fa7', '谈震方', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-03-14', '2019845437', '本科', '专业', '15632108246', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d5b2a-4274-11eb-bb0a-ed55e0675fa7', '崔伯坤', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-12-30', '2019646011', '本科', '专业', '13644736018', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d6af2-4274-11eb-bb0a-ed55e0675fa7', '章萌生', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-05-22', '2019693743', '本科', '专业', '13632922584', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d7c18-4274-11eb-bb0a-ed55e0675fa7', '诸萌夫', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-12-12', '2019530682', '本科', '专业', '17657299789', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d8d34-4274-11eb-bb0a-ed55e0675fa7', '米征智', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-07-30', '2019572182', '本科', '专业', '15694338276', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038d9e00-4274-11eb-bb0a-ed55e0675fa7', '殷广健', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-01-15', '2019768865', '本科', '专业', '13675781251', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038daf30-4274-11eb-bb0a-ed55e0675fa7', '汪洲健', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-06-23', '2019627781', '本科', '专业', '15646149452', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038dc4e8-4274-11eb-bb0a-ed55e0675fa7', '杜宏伊', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-04-04', '2019832308', '本科', '专业', '13642998592', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038de1d0-4274-11eb-bb0a-ed55e0675fa7', '范仲方', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-11-06', '2019778199', '本科', '专业', '15679605781', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038df346-4274-11eb-bb0a-ed55e0675fa7', '冯卓宝', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-06-23', '2019894071', '本科', '专业', '15628202263', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e052a-4274-11eb-bb0a-ed55e0675fa7', '包轩化', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-11-01', '2019635757', '本科', '专业', '17645453153', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e1538-4274-11eb-bb0a-ed55e0675fa7', '戴利菲', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-09-30', '2019996573', '本科', '专业', '15625999999', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e2d48-4274-11eb-bb0a-ed55e0675fa7', '施美茜', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-03-27', '2019575594', '本科', '专业', '17698265022', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e3f04-4274-11eb-bb0a-ed55e0675fa7', '郎希志', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-12-05', '2019888253', '本科', '专业', '13670147496', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e4fc6-4274-11eb-bb0a-ed55e0675fa7', '孙志民', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-12-08', '2019714483', '本科', '专业', '15656813156', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e60b0-4274-11eb-bb0a-ed55e0675fa7', '魏勤滨', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-11-22', '2019907656', '本科', '专业', '13682644748', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e7140-4274-11eb-bb0a-ed55e0675fa7', '孙日富', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-08-29', '2019894830', '本科', '专业', '15695997014', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e80a4-4274-11eb-bb0a-ed55e0675fa7', '钮孝来', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-08-14', '2019751184', '本科', '专业', '13685379554', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038e90d0-4274-11eb-bb0a-ed55e0675fa7', '王英阳', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-02-12', '2019571430', '本科', '专业', '13650381081', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ea0e8-4274-11eb-bb0a-ed55e0675fa7', '袁淇虎', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-09-24', '2019603598', '本科', '专业', '15678872714', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038eb182-4274-11eb-bb0a-ed55e0675fa7', '滕萌若', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-04-18', '2019803699', '本科', '专业', '17607361041', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ec208-4274-11eb-bb0a-ed55e0675fa7', '鲍鹏银', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-04-17', '2019707704', '本科', '专业', '13649590210', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ed23e-4274-11eb-bb0a-ed55e0675fa7', '钟一百', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-07-28', '2019627422', '本科', '专业', '17631495657', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ee328-4274-11eb-bb0a-ed55e0675fa7', '费靖豪', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-12-27', '2019514000', '本科', '专业', '15673191955', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038ef336-4274-11eb-bb0a-ed55e0675fa7', '韩大长', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-03-21', '2019687734', '本科', '专业', '15628591111', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f02f4-4274-11eb-bb0a-ed55e0675fa7', '徐坚忠', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-02-20', '2019896670', '本科', '专业', '13689192591', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f130c-4274-11eb-bb0a-ed55e0675fa7', '康宇剑', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-01-13', '2019920147', '本科', '专业', '17685125250', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f2342-4274-11eb-bb0a-ed55e0675fa7', '范真虹', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-10-04', '2019910727', '本科', '专业', '13601525109', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f3224-4274-11eb-bb0a-ed55e0675fa7', '钟洋兰', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-09-05', '2019793195', '本科', '专业', '13671341340', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f40e8-4274-11eb-bb0a-ed55e0675fa7', '梅清铁', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-02-17', '2019733794', '本科', '专业', '17643378904', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f5056-4274-11eb-bb0a-ed55e0675fa7', '鲁仪强', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-08-12', '2019789386', '本科', '专业', '15653795984', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f641a-4274-11eb-bb0a-ed55e0675fa7', '郎庆涛', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-09-01', '2019745548', '本科', '专业', '17620427825', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f7496-4274-11eb-bb0a-ed55e0675fa7', '陈蔚景', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-06-30', '2019859582', '本科', '专业', '17635922320', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f847c-4274-11eb-bb0a-ed55e0675fa7', '曹其道', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-06-27', '2019561268', '本科', '专业', '13697089553', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('038f94b2-4274-11eb-bb0a-ed55e0675fa7', '黄荣传', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-12-10', '2019727592', '本科', '专业', '15617357000', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('9842bace-c4d6-4512-8406-9db5f0bac182', '张三', '研发部', '10000', '研发岗', 'P6', '2021-01-05 14:51:24', '2015-06-07', '2019697465', '本科', '专业', '17667768265', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fc7cb664-4273-11eb-bb0a-ed55e0675fa7', '毛石媛', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2018-07-06', '2019525695', '本科', '专业', '17664489380', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fd75f2ce-4273-11eb-bb0a-ed55e0675fa7', '贺亦思', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2016-04-05', '2019536080', '本科', '专业', '17619264321', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fdd8f66c-4273-11eb-bb0a-ed55e0675fa7', '宋星岩', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-10-08', '2019603316', '本科', '专业', '17631510757', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fe22aa46-4273-11eb-bb0a-ed55e0675fa7', '金义淇', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2015-01-22', '2019908343', '本科', '专业', '17613155865', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fe66142a-4273-11eb-bb0a-ed55e0675fa7', '尹华晖', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2017-12-28', '2019731765', '本科', '专业', '17665919362', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fe9ce572-4273-11eb-bb0a-ed55e0675fa7', '雷景双', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-10-11', '2019933797', '本科', '专业', '15681317336', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('fedeea3a-4273-11eb-bb0a-ed55e0675fa7', '贾政政', '研发部', '10000', '研发岗', 'P6', '2020-12-20 11:30:42', '2019-11-29', '2019973692', '本科', '专业', '15689999903', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('ff1b847c-4273-11eb-bb0a-ed55e0675fa7', '米儿天', '研发部', '10000', '研发岗', 'P6', '2021-01-04 17:45:58', '2015-03-22', '2019567070', '本科', '专业', '13696110769', '2020-06', '男', NULL);
INSERT INTO `person` VALUES ('ff5d3a66-4273-11eb-bb0a-ed55e0675fa7', '郑士灵', '研发部', '10000', '研发岗', 'P6', '2021-01-04 17:52:28', '2016-05-17', '2019914272', '本科', '专业', '17684736967', '2020-06', '男', NULL);
COMMIT;

-- ----------------------------
-- Table structure for person_education
-- ----------------------------
DROP TABLE IF EXISTS `person_education`;
CREATE TABLE `person_education` (
  `id` char(36) NOT NULL,
  `personid` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL COMMENT '起止时间',
  `school` varchar(255) DEFAULT NULL COMMENT '学校',
  `type` varchar(255) DEFAULT NULL COMMENT '学校类型',
  `remark` text COMMENT '备注',
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of person_education
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for person_resume
-- ----------------------------
DROP TABLE IF EXISTS `person_resume`;
CREATE TABLE `person_resume` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `personid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '起止时间',
  `workunit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '工作单位',
  `workduty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '职务',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '备注',
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of person_resume
-- ----------------------------
BEGIN;
INSERT INTO `person_resume` VALUES ('4d660920-45d6-47d6-b366-5de31fdfa6da', '9842bace-c4d6-4512-8406-9db5f0bac182', '2019-01,2019-08', '江苏省xxx公司', '软件工程师', '<p><strong>相关备注</strong></p>', '2020-12-20 11:29:54');
INSERT INTO `person_resume` VALUES ('e1c2a250-2b94-45cb-a239-d7f9b690459d', '9842bace-c4d6-4512-8406-9db5f0bac182', '2019-10,2020-10', '苏州市某科技有限公司', '某技术组长', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\">\n<tbody>\n<tr>\n<td style=\"width: 14.2857%;\">123</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 14.2857%;\">123</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 14.2857%;\">123</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">345</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n</tr>\n<tr>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">567567</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n<td style=\"width: 14.2857%;\">&nbsp;</td>\n</tr>\n</tbody>\n</table>', '2020-12-20 11:30:34');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roleName` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '角色名',
  `roleAuthName` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '权限',
  `roleAuthNameDict` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '权限名称',
  `rank` int DEFAULT NULL COMMENT '排序',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of role
-- ----------------------------
BEGIN;
INSERT INTO `role` VALUES ('00000000-1000-0000-0000-000000000000', '超级管理员', 'AdminDashboardForAdmin,AdminDashboard,Users,Role,FormDesigner,TableDesigner,Dict,flowClueInfo,BusinessActClueInfo,System,DevTools', '运维桌面,用户管理,角色管理,表单设计,表格设计,字典管理,线索管理', 2, '2020-09-17 10:32:04');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `deptId` varchar(36) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `roleId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `rank` int DEFAULT '0' COMMENT '排序码',
  `photo` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '照片',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_id` (`id`) USING BTREE,
  KEY `index_username` (`userName`) USING BTREE,
  KEY `index_deptid` (`deptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('00000000-1000-0000-0000-000000000000', 'admin', '2f8447de-5732-4fa4-8286-9a71b41dd1e7', '00000000-1000-0000-0000-000000000000', '123', '超级管理员', 0, 'data:image/jpg;base64,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', '2021-01-05 15:00:15');
COMMIT;

-- ----------------------------
-- Function structure for generatePhone
-- ----------------------------
DROP FUNCTION IF EXISTS `generatePhone`;
delimiter ;;
CREATE FUNCTION `generatePhone`()
 RETURNS char(11) CHARSET utf8mb3
  DETERMINISTIC
BEGIN
    DECLARE head VARCHAR(100) DEFAULT '000,156,136,176';
    DECLARE content CHAR(10) DEFAULT '0123456789';
    DECLARE phone CHAR(11) DEFAULT substring(head, 1+(FLOOR(1 + (RAND() * 3))*4), 3);
    
    #SET phone = CONCAT(phone, substring('156,136,123,456,789', 1+(FLOOR(1 + (RAND() * 4))*4), 3));
    
    DECLARE i int DEFAULT 1;
    DECLARE len int DEFAULT LENGTH(content);
    WHILE i<9 DO
        SET i=i+1;
        SET phone = CONCAT(phone, substring(content, floor(1 + RAND() * len), 1));
    END WHILE;
    
    RETURN phone;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for generateUserName
-- ----------------------------
DROP FUNCTION IF EXISTS `generateUserName`;
delimiter ;;
CREATE FUNCTION `generateUserName`()
 RETURNS varchar(255) CHARSET utf8mb3
  DETERMINISTIC
BEGIN
    DECLARE xing varchar(2056) DEFAULT '赵钱孙李周郑王冯陈楮卫蒋沈韩杨朱秦尤许何吕施张孔曹严华金魏陶姜戚谢喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮齐康伍余元卜顾孟平黄和穆萧尹姚邵湛汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董梁杜阮蓝闽席季麻强贾路娄危江童颜郭梅盛林刁锺徐丘骆高夏蔡田樊胡凌霍虞万支柯昝管卢莫经裘缪干解应宗丁宣贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁';
 
    DECLARE ming varchar(2056) DEFAULT '嘉懿煜城懿轩烨伟苑博伟泽熠彤鸿煊博涛烨霖烨华煜祺智宸正豪昊然明杰诚立轩立辉峻熙弘文熠彤鸿煊烨霖哲瀚鑫鹏致远俊驰雨泽烨磊晟睿天佑文昊修洁黎昕远航旭尧鸿涛伟祺轩越泽浩宇瑾瑜皓轩擎苍擎宇志泽睿渊楷瑞轩弘文哲瀚雨泽鑫磊梦琪忆之桃慕青问兰尔岚元香初夏沛菡傲珊曼文乐菱痴珊恨玉惜文香寒新柔语蓉海安夜蓉涵柏水桃醉蓝春儿语琴从彤傲晴语兰又菱碧彤元霜怜梦紫寒妙彤曼易南莲紫翠雨寒易烟如萱若南寻真晓亦向珊慕灵以蕊寻雁映易雪柳孤岚笑霜海云凝天沛珊寒云冰旋宛儿绿真盼儿晓霜碧凡夏菡曼香若烟半梦雅绿冰蓝灵槐平安书翠翠风香巧代云梦曼幼翠友巧听寒梦柏醉易访旋亦玉凌萱访卉怀亦笑蓝春翠靖柏夜蕾冰夏梦松书雪乐枫念薇靖雁寻春恨山从寒忆香觅波静曼凡旋以亦念露芷蕾千兰新波代真新蕾雁玉冷卉紫山千琴恨天傲芙盼山怀蝶冰兰山柏翠萱乐丹翠柔谷山之瑶冰露尔珍谷雪乐萱涵菡海莲傲蕾青槐冬儿易梦惜雪宛海之柔夏青亦瑶妙菡春竹修杰伟诚建辉晋鹏天磊绍辉泽洋明轩健柏煊昊强伟宸博超君浩子骞明辉鹏涛炎彬鹤轩越彬风华靖琪明诚高格光华国源宇晗昱涵润翰飞翰海昊乾浩博和安弘博鸿朗华奥华灿嘉慕坚秉建明金鑫锦程瑾瑜鹏经赋景同靖琪君昊俊明季同开济凯安康成乐语力勤良哲理群茂彦敏博明达朋义彭泽鹏举濮存溥心璞瑜浦泽奇邃祥荣轩';
    
    DECLARE I_xing int DEFAULT LENGTH(xing) / 3;
    DECLARE I_ming int DEFAULT LENGTH(ming) / 3;
    DECLARE return_str varchar(2056) DEFAULT '';
    
    SET return_str = CONCAT(return_str, substring(xing, floor(1 + RAND() * I_xing), 1));
    SET return_str = CONCAT(return_str, substring(ming, floor(1 + RAND() * I_ming), 1));
    
    IF RAND() > 0.400 THEN
        SET return_str = CONCAT(return_str, substring(ming, floor(1 + RAND() * I_ming), 1));
    END IF;
    
    RETURN return_str;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
