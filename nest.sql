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

 Date: 17/09/2020 10:33:24
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of ad_codelist
-- ----------------------------
BEGIN;
INSERT INTO `ad_codelist` VALUES ('2d09a14f-4032-4a27-9b16-946ab3950689', '8,15', '密度长度', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 1, 'passwordLength', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('59778b04-2ed4-42ef-a3d4-aa330d0e3d54', '7', '密码过期时间(天)', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 2, 'passwordTime', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('7f81d7b5-c6b9-4412-8b00-8c9cf2482357', '20', '客户端超时时间(分钟)', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 3, 'clientTimeOut', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('b670bc8e-7a73-4fcc-875d-f2c9af01e329', 'BoBo\'s Vue Admin', '系统名称', 'f844cb90-1738-4013-b9f2-b0755b63b9dc', 1, 'systemName', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('da332909-bef0-49c3-819e-e189f996bca0', '女', '女', '01eb097e-0d94-44cf-8796-157bba54f0bb', 2, NULL, '2020-09-17 10:31:39');
INSERT INTO `ad_codelist` VALUES ('dd96514d-87cb-49c7-9191-5021aeabb639', '男', '男', '01eb097e-0d94-44cf-8796-157bba54f0bb', 1, NULL, '2020-09-17 10:31:39');
COMMIT;

-- ----------------------------
-- Table structure for ad_codelist_type
-- ----------------------------
DROP TABLE IF EXISTS `ad_codelist_type`;
CREATE TABLE `ad_codelist_type` (
  `id` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `codeValue` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典类型名称',
  `typeName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '字典类型描述',
  `codeOrder` decimal(8,0) DEFAULT NULL COMMENT '排序',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `parentId` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '父级ID',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_vodevalue` (`codeValue`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of ad_codelist_type
-- ----------------------------
BEGIN;
INSERT INTO `ad_codelist_type` VALUES ('01eb097e-0d94-44cf-8796-157bba54f0bb', '性别', '性别', 1, '', 'bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist_type` VALUES ('bedac4aa-41c8-4fcd-911d-d79b3b5a2392', '常用', '常用', 0, '常用', 'fe980574-2552-4754-88c8-366eb5a22861', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist_type` VALUES ('f844cb90-1738-4013-b9f2-b0755b63b9dc', '系统配置', '系统配置', 0, '系统相关', 'fe980574-2552-4754-88c8-366eb5a22861', '2020-09-17 10:31:39');
INSERT INTO `ad_codelist_type` VALUES ('fe980574-2552-4754-88c8-366eb5a22861', '数据字典', '数据字典', 1, '', '0', '2020-09-17 10:31:39');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
BEGIN;
INSERT INTO `dept` VALUES ('2f8447de-5732-4fa4-8286-9a71b41dd1e7', '总部', 1, '0', '2020-09-17 10:31:39');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表格设计';

-- ----------------------------
-- Records of dynamictables
-- ----------------------------
BEGIN;
INSERT INTO `dynamictables` VALUES ('054cfb12-7db2-400b-9917-27d3105dbb09', 'dept', '{\"columns\":[{\"prop\":\"name\",\"label\":\"部门名称\",\"minWidth\":\"200\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"280\",\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', 'Dept.vue/部门设置', '2020-09-17 10:32:10');
INSERT INTO `dynamictables` VALUES ('58da681b-af8f-4733-b7b0-9c037e9d0d8f', 'users', '{\"columns\":[{\"prop\":\"realName\",\"label\":\"姓名\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"userName\",\"label\":\"登录名\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"role_roleName\",\"label\":\"角色\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"slotName\":\"\",\"option\":{\"width\":\"\",\"placeholder\":\"\",\"remote\":\"custom\",\"remoteFunc\":\"funcGetRole\",\"props\":{\"label\":\"label\",\"value\":\"value\"},\"type\":\"select\",\"selectBy\":\"label\"},\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"dept_name\",\"label\":\"部门\",\"minWidth\":\"100\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true},{\"prop\":\"photo\",\"label\":\"头像\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":false,\"slotName\":\"columnFormatter\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"270\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\"}]}', 'Users.vue系统设置/角色管理', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('72269942-3b4a-4000-b722-12c70febbab2', 'params', '{\"columns\":[{\"prop\":\"codeName\",\"label\":\"参数名称\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"remark\",\"label\":\"参数键名\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"codeValue\",\"label\":\"参数键值\",\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', '参数设置', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('eb9388de-aa0c-4027-8653-b4e0c9a9cb1d', 'ad_codelist', '{\"columns\":[{\"prop\":\"codeValue\",\"label\":\"字典值\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"codeName\",\"label\":\"字典名\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"type_typeName\",\"label\":\"所属分类\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"option\":{\"width\":\"\",\"placeholder\":\"\",\"remote\":\"custom\",\"remoteFunc\":\"getDictType\",\"props\":{\"value\":\"value\",\"label\":\"label\"},\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"type\":\"select\",\"selectBy\":\"label\"}},{\"prop\":\"codeOrder\",\"label\":\"字典排序\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"remark\",\"label\":\"备注\",\"minWidth\":140,\"align\":\"center\",\"headerAlign\":\"center\",\"showOverflowTooltip\":true,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"align\":\"center\",\"headerAlign\":\"center\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false}]}', '字典管理', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('f2ad95ae-61d7-4bc3-94d6-dc00e867fdbe', 'dynamictables', '{\"columns\":[{\"prop\":\"tableName\",\"label\":\"表名\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"position\",\"label\":\"使用位置\",\"minWidth\":\"300\",\"sortable\":\"custom\",\"slotName\":\"\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"timestamp\",\"label\":\"更新时间\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"150\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\",\"width\":\"200\"}]}', 'TableDesigner.vue开发人员工具/表格设计', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('fb8a5d7c-2fda-4936-9da0-dc09354adfdc', 'form', '{\"columns\":[{\"prop\":\"tableName\",\"label\":\"表名\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"position\",\"label\":\"使用位置\",\"minWidth\":\"300\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"optime\",\"label\":\"更新时间\",\"minWidth\":140,\"sortable\":\"custom\",\"searchable\":true,\"align\":\"center\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":\"150\",\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"align\":\"center\",\"headerAlign\":\"center\"}]}', 'FormDesigner.vue开发人员工具/表单设计', '2020-09-17 10:15:02');
INSERT INTO `dynamictables` VALUES ('fc442e2b-a7f9-4fab-8d59-2803ae2a9215', 'role', '{\"columns\":[{\"prop\":\"roleName\",\"label\":\"角色\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true},{\"prop\":\"rank\",\"label\":\"排序\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true},{\"prop\":\"roleAuthNameDict\",\"label\":\"菜单\",\"minWidth\":140,\"sortable\":\"custom\",\"slotName\":\"\",\"align\":\"left\",\"headerAlign\":\"center\",\"searchable\":true,\"showOverflowTooltip\":true},{\"prop\":\"homePageDict\",\"label\":\"登录后跳转到\",\"minWidth\":\"160\",\"sortable\":\"custom\",\"searchable\":true,\"align\":\"left\",\"headerAlign\":\"center\"},{\"prop\":\"\",\"label\":\"操作\",\"minWidth\":180,\"slotName\":\"actionColumn\",\"fixed\":\"right\",\"sortable\":\"false\",\"searchable\":false,\"headerAlign\":\"center\",\"align\":\"center\"}]}', 'Role.vue系统设置/角色管理', '2020-09-17 10:15:02');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单设计';

-- ----------------------------
-- Records of form
-- ----------------------------
BEGIN;
INSERT INTO `form` VALUES ('08d0b5e4-92e4-431b-9b48-6189881335ed', 'role', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"角色\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672671000_92966\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"roleName\",\"rules\":[{\"type\":\"string\",\"message\":\"角色格式不正确\"}],\"type\":\"input\",\"key\":\"1543672671000_92966\"}],\"span\":12},{\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672693000_86312\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rank\",\"rules\":[],\"type\":\"input\",\"key\":\"1543672693000_86312\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543672665000_69434\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543672665000_69434\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543672665000_69434\"},{\"type\":\"grid\",\"name\":\"栅格布局\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"input\",\"name\":\"首页\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1554347848000_34718\"},\"key\":\"1554347848000_34718\",\"model\":\"homePageDict\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"}]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1554347841000_92183\"},\"key\":\"1554347841000_92183\",\"model\":\"1554347841000_92183\",\"rules\":[]},{\"columns\":[{\"list\":[{\"name\":\"对应菜单\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543672717000_46620\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"roleAuthNameDict\",\"rules\":[{\"type\":\"string\",\"message\":\"对应菜单格式不正确\"}],\"type\":\"input\",\"key\":\"1543672717000_46620\"}],\"span\":24}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543672710000_2784\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543672710000_2784\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543672710000_2784\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0}}', 'Role.vue/角色设置', '2020-09-17 10:32:04');
INSERT INTO `form` VALUES ('139d4ebc-d6a1-40bb-b063-2086c31e743d', 'ad_codelist_type', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"字典类型名称\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852872000_82944\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeValue\",\"rules\":[{\"type\":\"string\",\"message\":\"字典类型名称格式不正确\"}],\"type\":\"input\",\"key\":\"1542852872000_82944\"}],\"span\":12},{\"list\":[{\"name\":\"字典类型描述\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852908000_20406\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeName\",\"rules\":[],\"type\":\"input\",\"key\":\"1542852908000_20406\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542852751000_26540\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542852751000_26540\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542852751000_26540\"},{\"columns\":[{\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852959000_72602\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeOrder\",\"rules\":[{\"type\":\"number\",\"message\":\"排序格式不正确\"}],\"type\":\"input\",\"key\":\"1542852959000_72602\"}],\"span\":12},{\"list\":[{\"name\":\"备注\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542852978000_87249\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"remark\",\"rules\":[{\"type\":\"string\",\"message\":\"备注格式不正确\"}],\"type\":\"input\",\"key\":\"1542852978000_87249\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542852934000_45834\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542852934000_45834\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542852934000_45834\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"top\",\"labelWidth\":0}}', 'DictType.vue开发人员工具/字典类型管理/字典类型列表', '2020-09-17 10:32:04');
INSERT INTO `form` VALUES ('22727b7c-7d23-4f3f-ad5b-526eca8f8779', 'users', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"姓名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692259000_97262\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"realName\",\"rules\":[{\"type\":\"string\",\"message\":\"密码格式不正确\"},{\"required\":true,\"message\":\"姓名必须填写\"}],\"type\":\"input\",\"key\":\"1543692259000_97262\"}],\"span\":12},{\"list\":[{\"type\":\"input\",\"name\":\"登录名\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":true,\"dataType\":\"string\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_1599720592000_96541\"},\"key\":\"1599720592000_96541\",\"model\":\"userName\",\"rules\":[{\"type\":\"string\",\"message\":\"单行文本格式不正确\"},{\"required\":true,\"message\":\"登录名必须填写\"}]}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692232000_18760\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692232000_18760\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692232000_18760\"},{\"columns\":[{\"list\":[{\"name\":\"密码\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692382000_41790\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true,\"message\":\"\"},\"model\":\"password\",\"rules\":[{\"type\":\"string\",\"message\":\"联系方式格式不正确\"},{\"required\":true,\"message\":\"密码必须填写\"}],\"type\":\"input\",\"key\":\"1543692382000_41790\"}],\"span\":24}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692369000_62178\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692369000_62178\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692369000_62178\"},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":12,\"list\":[{\"type\":\"treeselect\",\"name\":\"部门\",\"icon\":\"tree\",\"options\":{\"remoteFunc\":\"funcGetDeptTree\",\"placeholder\":\"\",\"width\":\"\",\"maxHeight\":\"100\",\"multiple\":false,\"remote\":\"custom\",\"props\":{\"value\":\"name\",\"label\":\"id\",\"children\":\"children\"},\"clearable\":true,\"searchable\":true,\"noChildrenText\":\"暂无数据\",\"noOptionsText\":\"暂无数据\",\"noResultsText\":\"暂无数据\",\"searchNested\":true,\"required\":true,\"showValueLabelSlot\":false,\"disabled\":false,\"showCount\":false,\"disableBranchNodes\":false,\"remoteOptions\":[],\"tips\":\"选择所属部门\",\"defaultValue\":\"\"},\"key\":\"deptId\",\"model\":\"deptId\",\"rules\":[{\"required\":true,\"message\":\"部门必须填写\"}]}]},{\"span\":12,\"list\":[{\"type\":\"select\",\"name\":\"角色\",\"labelWidth\":\"\",\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"custom\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"funcGetRole\"},\"key\":\"1599722385000_17600\",\"model\":\"roleId\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1599722356000_92731\"},\"key\":\"1599722356000_92731\",\"model\":\"1599722356000_92731\",\"rules\":[]},{\"columns\":[{\"span\":12,\"list\":[{\"name\":\"排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1543692390000_91729\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"rank\",\"rules\":[{\"type\":\"number\",\"message\":\"排序格式不正确\"}],\"type\":\"input\",\"key\":\"rank\"}]}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1543692434000_13772\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1543692434000_13772\",\"rules\":[],\"type\":\"grid\",\"key\":\"1543692434000_13772\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0}}', 'Users.vue系统设置/用户管理', '2020-09-17 10:32:04');
INSERT INTO `form` VALUES ('45a0da67-2713-42cb-bdb4-4e5cdbb8d436', 'ad_codelist', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"字典值\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542782929000_93584\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeValue\",\"rules\":[{\"type\":\"string\",\"message\":\"字典值格式不正确\"}],\"type\":\"input\",\"key\":\"1542782929000_93584\"}],\"span\":12},{\"list\":[{\"name\":\"字典名\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542782931000_42300\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeName\",\"rules\":[{\"type\":\"string\",\"message\":\"字典名格式不正确\"}],\"type\":\"input\",\"key\":\"1542782931000_42300\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542782926000_16479\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542782926000_16479\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542782926000_16479\"},{\"type\":\"grid\",\"name\":\"栅格布局(1列)\",\"icon\":\"th\",\"columns\":[{\"span\":24,\"list\":[{\"type\":\"select\",\"name\":\"所属分类\",\"labelWidth\":0,\"hidden\":false,\"icon\":\"regular/caret-square-down\",\"options\":{\"defaultValue\":\"\",\"multiple\":false,\"disabled\":false,\"clearable\":false,\"placeholder\":\"\",\"required\":false,\"showLabel\":false,\"allowCreate\":false,\"width\":\"\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"remote\":\"custom\",\"remoteOptions\":[],\"props\":{\"value\":\"value\",\"label\":\"label\"},\"remoteFunc\":\"getDictType\"},\"key\":\"1576489740000_96446\",\"model\":\"codeType\",\"rules\":[]}]}],\"options\":{\"gutter\":0,\"justify\":\"start\",\"align\":\"top\",\"remoteFunc\":\"func_1576489735000_66792\"},\"key\":\"1576489735000_66792\",\"model\":\"1576489735000_66792\",\"rules\":[]},{\"columns\":[{\"list\":[{\"name\":\"字典排序\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542783014000_32619\",\"defaultValue\":\"\",\"dataType\":\"number\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"codeOrder\",\"rules\":[{\"type\":\"number\",\"message\":\"字典排序格式不正确\"}],\"type\":\"input\",\"key\":\"codeorder\"}],\"span\":12},{\"list\":[{\"name\":\"备注\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542783045000_37663\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"remark\",\"rules\":[{\"type\":\"string\",\"message\":\"备注格式不正确\"}],\"type\":\"input\",\"key\":\"remark\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542782963000_76757\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1542782963000_76757\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542782963000_76757\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0}}', 'Dict.vue开发人员工具/字典管理', '2020-09-17 10:32:04');
INSERT INTO `form` VALUES ('6ce2aa72-c969-43cf-8370-c669e50b300b', 'dept', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"部门名称\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1542344382000_98751\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":true},\"model\":\"name\",\"rules\":[{\"type\":\"string\",\"message\":\"部门名称格式不正确\"},{\"required\":true,\"message\":\"部门名称必须填写\"}],\"type\":\"input\",\"key\":\"1542344382000_98751\"}],\"span\":12},{\"span\":12,\"list\":[{\"type\":\"input\",\"name\":\"部门排序\",\"hidden\":false,\"icon\":\"regular/keyboard\",\"options\":{\"width\":\"100%\",\"defaultValue\":\"\",\"readonly\":false,\"disabled\":false,\"required\":false,\"dataType\":\"number\",\"pattern\":\"\",\"placeholder\":\"\",\"remoteFunc\":\"func_rank\"},\"key\":\"rank\",\"model\":\"rank\",\"rules\":[{\"type\":\"number\",\"message\":\"部门排序格式不正确\"}]}]}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1542344310000_82263\",\"gutter\":0,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"grid_1542344310000_82263\",\"rules\":[],\"type\":\"grid\",\"key\":\"1542344310000_82263\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":0}}', 'Dept.vue/系统设置/部门设置', '2020-09-17 10:32:04');
INSERT INTO `form` VALUES ('786506c7-7d3a-4bec-a9fb-f374b9eecbb7', 'dynamictables', '{\"list\":[{\"columns\":[{\"list\":[{\"name\":\"表名\",\"icon\":\"regular/caret-square-down\",\"options\":{\"remoteFunc\":\"getTablesOfDB\",\"clearable\":false,\"defaultValue\":\"\",\"remoteOptions\":[],\"multiple\":false,\"remote\":\"custom\",\"required\":false,\"showLabel\":false,\"props\":{\"label\":\"label\",\"value\":\"value\"},\"allowCreate\":true,\"width\":\"100%\",\"options\":[{\"value\":\"下拉框1\"},{\"value\":\"下拉框2\"},{\"value\":\"下拉框3\"}],\"disabled\":false,\"placeholder\":\"\"},\"model\":\"tableName\",\"rules\":[],\"type\":\"select\",\"key\":\"1544270970000_6013\",\"labelWidth\":\"40\"}],\"span\":12},{\"list\":[{\"name\":\"使用位置\",\"icon\":\"regular/keyboard\",\"options\":{\"remoteFunc\":\"func_1544159524000_20194\",\"defaultValue\":\"\",\"dataType\":\"string\",\"width\":\"100%\",\"pattern\":\"\",\"placeholder\":\"\",\"required\":false},\"model\":\"position\",\"rules\":[{\"type\":\"string\",\"message\":\"使用位置格式不正确\"}],\"type\":\"input\",\"key\":\"1544159524000_20194\"}],\"span\":12}],\"name\":\"栅格布局\",\"icon\":\"th\",\"options\":{\"remoteFunc\":\"func_1544159335000_25819\",\"gutter\":10,\"justify\":\"start\",\"align\":\"top\"},\"model\":\"1544159335000_25819\",\"rules\":[],\"type\":\"grid\",\"key\":\"1544159335000_25819\"}],\"config\":{\"size\":\"small\",\"labelPosition\":\"right\",\"labelWidth\":80}}', 'TableDesigner.vue开发人员工具/表格设计', '2020-09-17 10:32:04');
COMMIT;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` char(36) NOT NULL,
  `userId` char(36) DEFAULT NULL,
  `opttime` timestamp NULL DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `optType` varchar(50) DEFAULT NULL,
  `content` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
BEGIN;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('00000000-1000-0000-0000-000000000000', 'admin', '2f8447de-5732-4fa4-8286-9a71b41dd1e7', '00000000-1000-0000-0000-000000000000', '123', '超级管理员', 0, 'data:image/jpg;base64,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', '2020-09-17 10:32:04');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
