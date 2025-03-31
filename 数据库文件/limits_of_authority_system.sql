/*
 Navicat MySQL Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 80013 (8.0.13)
 Source Host           : localhost:3306
 Source Schema         : limits_of_authority_system

 Target Server Type    : MySQL
 Target Server Version : 80013 (8.0.13)
 File Encoding         : 65001

 Date: 31/03/2025 19:30:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '上级部门id',
  `tree_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT ',' COMMENT '树结构',
  `sort_value` int(11) NULL DEFAULT 1 COMMENT '排序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态（1正常 0停用）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1898736179491540994 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '组织机构' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 'Jerry有限公司', 0, ',1,', 1, '张老师', '15659090912', 1, '2025-03-09 15:23:54', '2025-03-09 15:23:54', 0);
INSERT INTO `sys_dept` VALUES (10, '北京校区', 1, ',1,10,', 1, '李老师', '18790007789', 1, '2022-05-24 16:13:15', '2022-05-24 16:13:15', 0);
INSERT INTO `sys_dept` VALUES (20, '上海校区', 1, ',1,20,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:25', '2022-05-25 14:02:25', 0);
INSERT INTO `sys_dept` VALUES (30, '深圳校区', 1, ',1,30,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:24', '2022-05-25 14:02:24', 0);
INSERT INTO `sys_dept` VALUES (1010, '教学部分', 10, ',1,10,1010,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:24', '2022-05-25 14:02:24', 0);
INSERT INTO `sys_dept` VALUES (1020, '运营部门', 10, ',1,10,1020,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:29', '2022-05-25 14:02:29', 0);
INSERT INTO `sys_dept` VALUES (1021, 'Java学科', 1010, ',1,10,1010,1021,', 1, '王老师', '15090987678', 1, '2022-05-24 16:13:31', '2022-05-24 16:13:31', 0);
INSERT INTO `sys_dept` VALUES (1022, '大数据学科', 1010, ',1,10,1010,1022,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:22', '2022-05-25 14:02:22', 0);
INSERT INTO `sys_dept` VALUES (1024, '前端学科', 1010, ',1,10,1010,1024,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:22', '2022-05-25 14:02:22', 0);
INSERT INTO `sys_dept` VALUES (1025, '客服', 1020, ',1,10,1020,1025,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:23', '2022-05-25 14:02:23', 0);
INSERT INTO `sys_dept` VALUES (1026, '网站推广', 1020, ',1,10,1020,1026,', 1, '30.607366', '15090987678', 1, '2022-05-25 14:02:26', '2022-05-25 14:02:26', 0);
INSERT INTO `sys_dept` VALUES (1027, '线下运营', 1020, ',1,10,1020,1027,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:26', '2022-05-25 14:02:26', 0);
INSERT INTO `sys_dept` VALUES (1028, '设计', 1020, ',1,10,1020,1028,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:27', '2022-05-25 14:02:27', 0);
INSERT INTO `sys_dept` VALUES (2012, '教学部门', 20, ',1,20,2012,', 1, '王老师', '18909890765', 1, '2022-05-24 16:13:51', '2022-05-24 16:13:51', 0);
INSERT INTO `sys_dept` VALUES (2013, '教学部门', 30, ',1,30,2013,', 1, '李老师', '18567867895', 1, '2022-05-24 16:13:50', '2022-05-24 16:13:50', 0);
INSERT INTO `sys_dept` VALUES (2016, 'Java学科', 2012, ',1,20,2012,2012,', 1, '张老师', '15090909909', 1, '2022-05-25 10:51:12', '2022-05-25 10:51:12', 0);
INSERT INTO `sys_dept` VALUES (2017, '大数据学科', 2012, ',1,20,2012,2012,', 1, '李老师', '15090980989', 1, '2022-05-27 09:11:54', NULL, 0);
INSERT INTO `sys_dept` VALUES (1898660003687337985, '布吉岛321', 0, ',1898660003687337985,', 1, '你是谁', '1333333366', 1, '2025-03-09 22:05:14', '2025-03-09 22:05:14', 0);
INSERT INTO `sys_dept` VALUES (1898736179491540993, '大法师', 1898660003687337985, ',,1898660003687337985', 1, '答复', '13900000000', 1, '2025-03-09 22:28:05', '2025-03-09 22:28:05', 0);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1906603459525103618 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1898591211670188033, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 12:26:33', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898602987119874050, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 13:13:21', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898608793139765249, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 13:36:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898609601658970113, 'admin', '0:0:0:0:0:0:0:1', 1, '登录成功！', NULL, '2025-03-09 13:39:38', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630371625844737, 'bngfd', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630385211195394, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630391754309634, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630393272647681, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:15', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630397395648514, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630398398087170, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630399580880898, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898630517533097985, 'bngfd', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:02:44', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898631246549270529, 'hello321', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:05:38', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898631321912524802, '杰瑞', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:05:56', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898631351373316098, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-09 15:06:03', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898898572665962497, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-10 08:47:54', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898907524904636417, 'admin', '0:0:0:0:0:0:0:1', 1, '登录成功！', NULL, '2025-03-10 09:23:28', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1898983989897617410, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-10 14:27:19', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900468100726779906, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 16:44:38', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900468436552118273, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 16:45:58', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900469781745102849, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 16:51:19', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900470229201838081, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 16:53:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900470650041524225, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 16:54:46', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900473967819874306, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:07:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900474324436361218, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:09:22', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900474917699690498, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:11:44', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900475097861824513, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:12:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900475835807670273, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:15:23', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900476078670454785, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:16:20', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900477923958693890, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:23:40', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900478284811444226, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:25:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1900478298858168322, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-14 17:25:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906286610103033857, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:05:19', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906286685256572930, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:05:37', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906293975103725569, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:34:35', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906294033983365121, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:34:49', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906294040274821122, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:34:51', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906294042317447169, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:34:51', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906294043777064961, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:34:51', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906294763737780225, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:37:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906294911406641153, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:38:18', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906296603762167809, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:45:02', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906296612394045441, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:45:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906296933216358401, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:46:20', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906297409508937730, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:48:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906298817826197506, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:53:50', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906299089336078337, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:54:54', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906299101944156162, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 18:54:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906348119445409793, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:09:44', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906349157409820674, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:13:52', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906349388440473602, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:14:47', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906349442425360385, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:15:00', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906350842282708993, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:20:33', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906352056084926465, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:25:23', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906352116814254082, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:25:37', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906352149563379714, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:25:45', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906352646122835969, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:27:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906354526437707778, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:35:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906354537825243137, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:35:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355337930674177, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:38:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355348596789250, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:38:28', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355501349146625, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355533452349441, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355544797941762, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355547452936193, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:15', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355548933525505, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:15', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355550640607233, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906355553215909890, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:39:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906357551852097538, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:47:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906357557141114881, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:47:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359491088551938, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:54:55', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359522663272450, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:03', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359524949168130, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:03', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359527054708738, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359546868600833, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359549037056002, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359550488285186, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359551989846018, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359553495601154, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359558612652034, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:11', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906359562161033218, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 22:55:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906361156533424129, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:01:32', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906361158173396994, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:01:33', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906361164863311873, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:01:34', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906361197851512834, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:01:42', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906362874159632385, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:08:22', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906364658848567298, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:15:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906374159559499777, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:53:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906374172788334594, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:53:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906375483973902337, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:58:28', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906375502915379201, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-30 23:58:33', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906376394515357698, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:02:05', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906376592838828034, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:02:53', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906377173334695938, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:05:11', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906377327903186946, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:05:48', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906377332105879553, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:05:49', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906377333620023297, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:05:49', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906377335117389826, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:05:50', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906377578131169281, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:06:48', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906378769862959106, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:11:32', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906378775122616322, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:11:33', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906378787189628930, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:11:36', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906379394449350658, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:14:01', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906379498208043010, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:14:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906380383839526914, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:17:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906380699314102274, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:19:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906381819608506370, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:23:39', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906381829318320130, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:23:41', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906381831478386689, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:23:42', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906381832577294337, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:23:42', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906381836507357185, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:23:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382001356087298, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:24:22', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382007186169858, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:24:24', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382010935877633, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:24:24', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382011976065025, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:24:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382013150470146, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:24:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382267597922306, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:25:26', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382274560466945, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:25:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382421910560770, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:26:02', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382532879261698, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:26:29', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382687443558402, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382702962483202, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382704602456065, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382707811098626, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:11', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382709203607554, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:11', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382711229456386, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:11', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382713653764097, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382717114064897, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382718305247233, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382720469508097, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382721845239810, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382724386988033, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:15', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382725498478594, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:15', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382727587241985, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:15', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382740065296386, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:18', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382741252284417, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:19', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906382757366800385, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:27:22', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906383345240449026, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:29:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906383349405392897, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:29:44', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906383425892720642, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:30:02', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906383919134482433, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 00:31:59', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906592841527087106, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:22:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594156638523393, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:27:24', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594188599119874, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:27:32', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594208048107522, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:27:36', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594229338394626, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:27:41', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594237458567170, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:27:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594245834592258, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:27:45', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594310288461825, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:28:01', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906594837244039170, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:30:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906596416693096450, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:36:23', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906596438683832322, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:36:28', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906596600760127490, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:37:07', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906597716860227585, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:41:33', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906597729191481346, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:41:36', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906599215598292994, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:47:30', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906601682075537410, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:57:18', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906601739260678145, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:57:32', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906602098335043585, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:58:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906602175472488450, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 14:59:16', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906603192872226818, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 15:03:18', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906603328557961217, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 15:03:51', NULL, 0);
INSERT INTO `sys_login_log` VALUES (1906603459525103617, 'admin', '127.0.0.1', 1, '登录成功！', NULL, '2025-03-31 15:04:22', NULL, 0);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属上级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '类型(0:目录,1:菜单,2:按钮)',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `sort_value` int(11) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1906603930478333955 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, 0, '系统管理', 0, 'system', 'Layout', NULL, 'el-icon-s-tools', 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:23:24', 0);
INSERT INTO `sys_menu` VALUES (3, 2, '用户管理', 1, 'sysUser', 'system/sysUser/list', '', 'el-icon-s-custom', 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:47', 0);
INSERT INTO `sys_menu` VALUES (4, 2, '角色管理', 1, 'sysRole', 'system/sysRole/list', '', 'el-icon-user-solid', 2, 1, '2021-05-31 18:05:37', '2022-06-09 09:37:18', 0);
INSERT INTO `sys_menu` VALUES (5, 2, '菜单管理', 1, 'sysMenu', 'system/sysMenu/list', '', 'el-icon-s-unfold', 3, 1, '2021-05-31 18:05:37', '2022-06-09 09:37:21', 0);
INSERT INTO `sys_menu` VALUES (6, 3, '查看', 2, NULL, NULL, 'bnt.sysUser.list', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (7, 3, '添加', 2, NULL, NULL, 'bnt.sysUser.add', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (8, 3, '修改', 2, NULL, NULL, 'bnt.sysUser.update', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (9, 3, '删除', 2, NULL, NULL, 'bnt.sysUser.remove', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (10, 4, '查看', 2, NULL, NULL, 'bnt.sysRole.list', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (11, 4, '添加', 2, NULL, NULL, 'bnt.sysRole.add', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (12, 4, '修改', 2, NULL, NULL, 'bnt.sysRole.update', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (13, 4, '删除', 2, NULL, NULL, 'bnt.sysRole.remove', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (14, 5, '查看', 2, NULL, NULL, 'bnt.sysMenu.list', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (15, 5, '添加', 2, NULL, NULL, 'bnt.sysMenu.add', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (16, 5, '修改', 2, NULL, NULL, 'bnt.sysMenu.update', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (17, 5, '删除', 2, NULL, NULL, 'bnt.sysMenu.remove', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (18, 3, '分配角色', 2, NULL, NULL, 'bnt.sysUser.assignRole', NULL, 1, 1, '2022-05-23 17:14:32', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (19, 4, '分配权限', 2, 'assignAuth', 'system/sysRole/assignAuth', 'bnt.sysRole.assignAuth', NULL, 1, 1, '2022-05-23 17:18:14', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (20, 2, '部门管理', 1, 'sysDept', 'system/sysDept/list', '', 'el-icon-s-operation', 4, 1, '2022-05-24 10:07:05', '2022-06-09 09:38:12', 0);
INSERT INTO `sys_menu` VALUES (21, 20, '查看', 2, NULL, NULL, 'bnt.sysDept.list', NULL, 1, 1, '2022-05-24 10:07:44', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (22, 2, '岗位管理', 1, 'sysPost', 'system/sysPost/list', '', 'el-icon-more-outline', 5, 1, '2022-05-24 10:25:30', '2022-06-09 09:38:13', 0);
INSERT INTO `sys_menu` VALUES (23, 22, '查看', 2, NULL, NULL, 'bnt.sysPost.list', NULL, 1, 1, '2022-05-24 10:25:45', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (24, 20, '添加', 2, NULL, NULL, 'bnt.sysDept.add', NULL, 1, 1, '2022-05-25 15:31:27', '2025-02-24 14:21:21', 0);
INSERT INTO `sys_menu` VALUES (25, 20, '修改', 2, NULL, NULL, 'bnt.sysDept.update', NULL, 1, 1, '2022-05-25 15:31:41', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (26, 20, '删除', 2, NULL, NULL, 'bnt.sysDept.remove', NULL, 1, 1, '2022-05-25 15:31:59', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (27, 22, '添加', 2, NULL, NULL, 'bnt.sysPost.add', NULL, 1, 1, '2022-05-25 15:32:44', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (28, 22, '修改', 2, NULL, NULL, 'bnt.sysPost.update', NULL, 1, 1, '2022-05-25 15:32:58', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (29, 22, '删除', 2, NULL, NULL, 'bnt.sysPost.remove', NULL, 1, 1, '2022-05-25 15:33:11', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (30, 34, '操作日志', 1, 'sysOperLog', 'system/sysOperLog/list', '', 'el-icon-document-remove', 7, 1, '2022-05-26 16:09:59', '2022-06-09 09:39:23', 0);
INSERT INTO `sys_menu` VALUES (31, 30, '查看', 2, NULL, NULL, 'bnt.sysOperLog.list', NULL, 1, 1, '2022-05-26 16:10:17', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (32, 34, '登录日志', 1, 'sysLoginLog', 'system/sysLoginLog/list', '', 'el-icon-s-goods', 8, 1, '2022-05-26 16:36:13', '2022-06-09 09:39:24', 0);
INSERT INTO `sys_menu` VALUES (33, 32, '查看', 2, NULL, NULL, 'bnt.sysLoginLog.list', NULL, 1, 1, '2022-05-26 16:36:31', '2022-06-09 09:36:36', 0);
INSERT INTO `sys_menu` VALUES (34, 2, '日志管理', 0, 'log', 'ParentView', '', 'el-icon-tickets', 6, 1, '2022-05-31 13:23:07', '2022-06-09 09:39:22', 0);
INSERT INTO `sys_menu` VALUES (1894001643327303681, 0, 'test', 0, 'nihaoya', 'ParentView', '', 'el-icon-phone', 1, 1, '2025-02-24 20:29:15', '2025-02-24 20:29:15', 0);
INSERT INTO `sys_menu` VALUES (1900132236074741762, 1894001643327303681, '记录看就看', 1, '', '', '', '', 1, 1, '2025-03-13 18:30:02', '2025-03-13 18:30:02', 0);
INSERT INTO `sys_menu` VALUES (1906603930478333954, 1900132236074741800, '哈哈哈', 2, '回家', '好就', '很关键', '', 3, 1, '2025-03-31 15:06:14', '2025-03-31 15:06:14', 0);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1906603999726292995 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '角色管理', '1', 'com.atguigu.auth.controller.SysRoleController.save()', 'POST', '1', 'admin', '', '/admin/auth/sysRole/save', '', '{\"param\":{},\"roleCode\":\"\",\"roleName\":\"test\",\"id\":5}', '{\"code\":200,\"message\":\"成功\"}', 0, '', NULL, '2022-05-26 15:59:44', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (2, '角色管理', 'DELETE', 'com.atguigu.auth.controller.SysRoleController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/auth/sysRole/remove/5', '', '', '{\"code\":200,\"message\":\"成功\"}', 0, '', NULL, '2022-05-26 16:05:27', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (3, '角色管理', 'DELETE', 'com.atguigu.auth.controller.SysRoleController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/auth/sysRole/remove/4', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-26 16:52:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (4, '角色管理', 'UPDATE', 'com.atguigu.auth.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1622507920000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"普通管理员\",\"description\":\"普通管理员\",\"updateTime\":1645670566000,\"id\":2}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:47:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (5, '菜单管理', 'UPDATE', 'com.atguigu.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"SysRole\",\"select\":false,\"level\":3,\"updateTime\":1653287810000,\"type\":1,\"parentId\":2,\"isDeleted\":0,\"children\":[{\"code\":\"btn.SysRole.list\",\"select\":false,\"level\":4,\"updateTime\":1622460772000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"id\":10},{\"code\":\"btn.SysRole.add\",\"select\":false,\"level\":4,\"updateTime\":1653547976000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"id\":11},{\"code\":\"btn.SysRole.update\",\"select\":false,\"level\":4,\"updateTime\":1653547981000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"id\":12},{\"code\":\"btn.SysRole.remove\",\"select\":false,\"level\":4,\"updateTime\":1622507874000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"id\":13},{\"code\":\"btn.SysRole.assignAuth\",\"select\":false,\"level\":4,\"toCode\":\"AssignAuth\",\"updateTime\":1653376735000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"id\":19}],\"createTime\":1622455537000,\"param\":{},\"name\":\"角色管理\",\"id\":4}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:48:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (6, '岗位管理', 'UPDATE', 'com.atguigu.auth.controller.SysPostController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysPost/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1653359648000,\"param\":{},\"name\":\"总经理\",\"description\":\"2\",\"postCode\":\"zjl\",\"id\":6,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:56:29', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (7, '岗位管理', 'INSERT', 'com.atguigu.auth.controller.SysPostController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/auth/sysPost/save', '127.0.0.1', '{\"param\":{},\"name\":\"网咨\",\"description\":\"\",\"postCode\":\"wz\",\"id\":7,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:56:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (8, '岗位管理', 'DELETE', 'com.atguigu.auth.controller.SysPostController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/auth/sysPost/remove/7', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:56:41', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (9, '菜单管理', 'UPDATE', 'com.atguigu.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"btn.sysDept.list\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653358064000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653358064000,\"param\":{},\"name\":\"查看\",\"id\":21}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:02:49', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (13, '部门管理', 'UPDATE', 'com.atguigu.auth.controller.SysDeptController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysDept/update', '127.0.0.1', '{\"leader\":\"张老师\",\"updateTime\":1653447072000,\"parentId\":2012,\"sortValue\":1,\"isDeleted\":0,\"createTime\":1653447072000,\"param\":{},\"phone\":\"15090909909\",\"name\":\"Java学科\",\"id\":2016,\"treePath\":\",1,20,2012,2012,\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:11:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (14, '部门管理', 'INSERT', 'com.atguigu.auth.controller.SysDeptController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/auth/sysDept/save', '127.0.0.1', '{\"leader\":\"李老师\",\"parentId\":2012,\"param\":{},\"phone\":\"15090980989\",\"name\":\"大数据学科\",\"id\":2017,\"treePath\":\",1,20,2012,2012,\"}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:11:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (15, '部门管理', 'UPDATE', 'com.atguigu.auth.controller.SysDeptController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysDept/update', '127.0.0.1', '{\"leader\":\"李老师\",\"parentId\":2012,\"sortValue\":1,\"isDeleted\":0,\"createTime\":1653613914000,\"param\":{},\"phone\":\"15090980989\",\"name\":\"大数据学科\",\"id\":2017,\"treePath\":\",1,20,2012,2012,\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:16:38', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (16, '角色管理', 'UPDATE', 'com.atguigu.auth.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1622507920000,\"param\":{},\"roleCode\":\"COMMON\",\"roleName\":\"普通管理员\",\"description\":\"普通管理员\",\"updateTime\":1645670566000,\"id\":2}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:28:15', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (17, '角色管理', 'INSERT', 'com.atguigu.auth.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/auth/sysRole/save', '127.0.0.1', '{\"param\":{},\"roleCode\":\"\",\"roleName\":\"用户管理员\",\"id\":6}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 10:42:18', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (18, '角色管理', 'UPDATE', 'com.atguigu.auth.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1653619337000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"用户管理员\",\"updateTime\":1653619337000,\"id\":6}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 10:43:59', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 'UPDATE', 'com.atguigu.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysUser\",\"select\":false,\"level\":3,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysUser/list\",\"sortValue\":1,\"component\":\"auth/sysUser/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysUser.list\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"id\":6,\"status\":1},{\"code\":\"bnt.sysUser.add\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"id\":7,\"status\":1},{\"code\":\"bnt.sysUser.update\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"id\":8,\"status\":1},{\"code\":\"bnt.sysUser.remove\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"id\":9,\"status\":1},{\"code\":\"bnt.sysUser.assignRole\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1653297272000,\"param\":{},\"name\":\"分配角色\",\"id\":18,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"用户管理\",\"perms\":\"bnt.sysUser.list\",\"id\":3,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:14:26', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 'INSERT', 'com.atguigu.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":0,\"parentId\":2,\"path\":\"log\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"日志管理\",\"perms\":\"\",\"id\":34,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 13:23:07', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (36, '岗位管理', 'INSERT', 'com.atguigu.system.controller.SysPostController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysPost/save', '127.0.0.1', '{\"param\":{},\"name\":\"运营总监\",\"description\":\"\",\"postCode\":\"yyzj\",\"id\":8,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:14:21', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (37, '角色管理', 'INSERT', 'com.atguigu.system.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysRole/save', '127.0.0.1', '{\"param\":{},\"roleCode\":\"\",\"roleName\":\"\",\"id\":8}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:39:04', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (38, '角色管理', 'UPDATE', 'com.atguigu.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1654681144000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"\",\"updateTime\":1654681144000,\"id\":8}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:39:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 'INSERT', 'com.atguigu.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":2,\"parentId\":36,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.add\",\"id\":37,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:52:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (45, '菜单管理', 'DELETE', 'com.atguigu.system.controller.SysMenuController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysMenu/remove/37', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:53:01', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (48, '菜单管理', 'UPDATE', 'com.atguigu.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-custom\",\"updateTime\":1654737767000,\"type\":1,\"parentId\":2,\"path\":\"sysUser\",\"sortValue\":1,\"component\":\"system/sysUser/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysUser.list\",\"id\":6,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysUser.add\",\"id\":7,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysUser.update\",\"id\":8,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysUser.remove\",\"id\":9,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653297272000,\"param\":{},\"name\":\"分配角色\",\"perms\":\"bnt.sysUser.assignRole\",\"id\":18,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"用户管理\",\"perms\":\"\",\"id\":3,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:01', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (56, '用户管理', 'DELETE', 'com.atguigu.system.controller.SysUserController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysUser/remove/4', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:25:21', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (57, '菜单管理', 'UPDATE', 'com.atguigu.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"path\":\"assignAuth\",\"sortValue\":1,\"component\":\"system/sysRole/assignAuth\",\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"perms\":\"bnt.sysRole.assignAuth\",\"id\":19,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:26:07', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (58, '角色管理', 'ASSGIN', 'com.atguigu.system.controller.SysMenuController.doAssign()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/doAssign', '127.0.0.1', '{\"roleId\":2,\"menuIdList\":[2,3,6,7,8,5,14,20,21]}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:26:34', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (59, '菜单管理', 'INSERT', 'com.atguigu.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-help\",\"type\":0,\"parentId\":0,\"path\":\"vod\",\"sortValue\":1,\"component\":\"Layout\",\"param\":{},\"name\":\"点播管理\",\"perms\":\"\",\"id\":35,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-10 15:26:53', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1898603040593055746, '角色管理', 'INSERT', 'org.cqie.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/role/save', '127.0.0.1', '{\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123\",\"id\":\"1898603040337203202\"}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-09 13:13:33', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899078796116938753, '用户登录', 'FORCE', 'org.cqie.controller.IndexController.logout()', 'POST', 'MANAGE', 'admin', '', '/admin/system/index/logout', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:02', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899078835832803329, '用户登录', 'SELECT', 'org.cqie.controller.IndexController.info()', 'GET', 'MANAGE', '杰瑞', '', '/admin/system/index/info', '127.0.0.1', '', '{\"code\":200,\"data\":{\"buttons\":[\"bnt.sysRole.list\",\"bnt.sysRole.add\",\"bnt.sysRole.update\",\"bnt.sysRole.assignAuth\"],\"roles\":\"[admin]\",\"name\":\"杰瑞\",\"avatar\":\"https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif\",\"routers\":[{\"alwaysShow\":true,\"children\":[{\"alwaysShow\":false,\"component\":\"system/sysRole/assignAuth\",\"hidden\":true,\"meta\":{\"title\":\"分配权限\"},\"path\":\"assignAuth\"},{\"alwaysShow\":false,\"component\":\"system/sysRole/list\",\"hidden\":false,\"meta\":{\"icon\":\"el-icon-user-solid\",\"title\":\"角色管理\"},\"path\":\"sysRole\"}],\"component\":\"Layout\",\"hidden\":false,\"meta\":{\"icon\":\"el-icon-s-tools\",\"title\":\"系统管理\"},\"path\":\"/system\"}]},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:12', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899078906133532673, '用户登录', 'SELECT', 'org.cqie.controller.IndexController.info()', 'GET', 'MANAGE', '杰瑞', '', '/admin/system/index/info', '127.0.0.1', '', '{\"code\":200,\"data\":{\"buttons\":[\"bnt.sysRole.list\",\"bnt.sysRole.add\",\"bnt.sysRole.update\",\"bnt.sysRole.assignAuth\"],\"roles\":\"[admin]\",\"name\":\"杰瑞\",\"avatar\":\"https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif\",\"routers\":[{\"alwaysShow\":true,\"children\":[{\"alwaysShow\":false,\"component\":\"system/sysRole/assignAuth\",\"hidden\":true,\"meta\":{\"title\":\"分配权限\"},\"path\":\"assignAuth\"},{\"alwaysShow\":false,\"component\":\"system/sysRole/list\",\"hidden\":false,\"meta\":{\"icon\":\"el-icon-user-solid\",\"title\":\"角色管理\"},\"path\":\"sysRole\"}],\"component\":\"Layout\",\"hidden\":false,\"meta\":{\"icon\":\"el-icon-s-tools\",\"title\":\"系统管理\"},\"path\":\"/system\"}]},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:29', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899078951742394369, '用户登录', 'SELECT', 'org.cqie.controller.IndexController.info()', 'GET', 'MANAGE', '杰瑞', '', '/admin/system/index/info', '127.0.0.1', '', '{\"code\":200,\"data\":{\"buttons\":[\"bnt.sysRole.list\",\"bnt.sysRole.add\",\"bnt.sysRole.update\",\"bnt.sysRole.assignAuth\"],\"roles\":\"[admin]\",\"name\":\"杰瑞\",\"avatar\":\"https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif\",\"routers\":[{\"alwaysShow\":true,\"children\":[{\"alwaysShow\":false,\"component\":\"system/sysRole/assignAuth\",\"hidden\":true,\"meta\":{\"title\":\"分配权限\"},\"path\":\"assignAuth\"},{\"alwaysShow\":false,\"component\":\"system/sysRole/list\",\"hidden\":false,\"meta\":{\"icon\":\"el-icon-user-solid\",\"title\":\"角色管理\"},\"path\":\"sysRole\"}],\"component\":\"Layout\",\"hidden\":false,\"meta\":{\"icon\":\"el-icon-s-tools\",\"title\":\"系统管理\"},\"path\":\"/system\"}]},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:39', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899078967349399554, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', '杰瑞', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:43', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899078976052580354, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.selectById()', 'GET', 'MANAGE', '杰瑞', '', '/admin/system/role/selectById/1898603040337203202', '127.0.0.1', '', '{\"code\":200,\"data\":{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123\",\"updateTime\":1741497213000},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:45', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899079000782196738, '角色管理', 'UPDATE', 'org.cqie.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', '杰瑞', '', '/admin/system/role/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1741497213000,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000,\"id\":\"1898603040337203202\"}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:51', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899079001696555010, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', '杰瑞', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:51', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899079026409394177, '用户登录', 'FORCE', 'org.cqie.controller.IndexController.logout()', 'POST', 'MANAGE', '杰瑞', '', '/admin/system/index/logout', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:57', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899079034609258497, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', 'admin', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 20:44:59', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899120467181531137, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-10 23:29:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899492177550503938, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-12 00:06:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899492379145531394, '用户登录', 'FORCE', 'org.cqie.controller.IndexController.logout()', 'POST', 'MANAGE', 'admin', '', '/admin/system/index/logout', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-12 00:07:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899492404537847810, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-12 00:07:34', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1899492436943040513, '用户登录', 'FORCE', 'org.cqie.controller.IndexController.logout()', 'POST', 'MANAGE', 'admin', '', '/admin/system/index/logout', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-12 00:07:42', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900129904821858305, '菜单管理', 'INSERT', 'org.cqie.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":1,\"parentId\":1894001643327303681,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"阿第三方\",\"perms\":\"\",\"id\":\"1900129904687640577\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:20:46', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900130010920972289, '菜单管理', 'UPDATE', 'org.cqie.controller.SysMenuController.update()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"updateTime\":1741861246000,\"type\":1,\"parentId\":1894001643327303700,\"path\":\"大是\",\"sortValue\":1,\"component\":\"\",\"isDeleted\":0,\"children\":[],\"createTime\":1741861246000,\"param\":{},\"name\":\"阿第三方\",\"perms\":\"\",\"id\":\"1900129904687640577\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:21:11', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900130144874459137, '菜单管理', 'INSERT', 'org.cqie.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":1,\"parentId\":1894001643327303681,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"多少啊\",\"perms\":\"\",\"id\":\"1900130144740241409\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:21:43', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900130211190599681, '菜单管理', 'UPDATE', 'org.cqie.controller.SysMenuController.update()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"updateTime\":1741861303000,\"type\":1,\"parentId\":1894001643327303700,\"path\":\"阿行啊\",\"sortValue\":1,\"component\":\"\",\"isDeleted\":0,\"children\":[],\"createTime\":1741861303000,\"param\":{},\"name\":\"多少啊\",\"perms\":\"\",\"id\":\"1900130144740241409\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:21:59', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900131199611891714, '菜单管理', 'INSERT', 'org.cqie.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":1,\"parentId\":1894001643327303681,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"大法师\",\"perms\":\"\",\"id\":\"1900131199221821442\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:25:55', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900131376380833793, '菜单管理', 'INSERT', 'org.cqie.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":1,\"parentId\":1894001643327303681,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"说得的\",\"perms\":\"\",\"id\":\"1900131375919460353\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:26:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900131786768314370, '菜单管理', 'UPDATE', 'org.cqie.controller.SysMenuController.update()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"updateTime\":1741861555000,\"type\":1,\"parentId\":1894001643327303700,\"path\":\"\",\"sortValue\":6,\"component\":\"\",\"isDeleted\":0,\"children\":[],\"createTime\":1741861555000,\"param\":{},\"name\":\"大法师\",\"perms\":\"\",\"id\":\"1900131199221821442\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:28:15', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900132108131692546, '菜单管理', 'DELETE', 'org.cqie.controller.SysMenuController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysMenu/remove/1900131375919460353', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:29:31', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1900132236137656321, '菜单管理', 'INSERT', 'org.cqie.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":1,\"parentId\":1894001643327303681,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"记录看就看\",\"perms\":\"\",\"id\":\"1900132236074741762\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-13 18:30:02', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906384200261902338, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', 'admin', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 00:33:06', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906384205047603202, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 00:33:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906384274379448322, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 00:33:24', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906384278032687106, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', 'admin', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 00:33:25', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906599299559870466, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 14:47:50', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906599323459014658, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', 'admin', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 14:47:56', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906599367323045890, '岗位管理', 'SELECT', 'org.cqie.controller.SysPostController.selectAllPost()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysPost/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":2,\"records\":[{\"createTime\":1741588684000,\"description\":\"布吉岛\",\"id\":\"1898908226754301954\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"postCode\":\"jkj\",\"status\":1,\"updateTime\":1741588684000},{\"createTime\":1741588357000,\"description\":\"动手能力强\",\"id\":\"8\",\"isDeleted\":0,\"name\":\"运营总监\",\"param\":{},\"postCode\":\"yyzj\",\"status\":1,\"updateTime\":1741588357000},{\"createTime\":1741588341000,\"description\":\"喜欢冲浪\",\"id\":\"7\",\"isDeleted\":0,\"name\":\"网咨\",\"param\":{},\"postCode\":\"wz\",\"status\":1,\"updateTime\":1741588341000}],\"searchCount\":true,\"size\":3,\"total\":5},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 14:48:06', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906599474894360577, '岗位管理', 'SELECT', 'org.cqie.controller.SysPostController.selectAllPost()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysPost/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":2,\"records\":[{\"createTime\":1741588684000,\"description\":\"布吉岛\",\"id\":\"1898908226754301954\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"postCode\":\"jkj\",\"status\":1,\"updateTime\":1741588684000},{\"createTime\":1741588357000,\"description\":\"动手能力强\",\"id\":\"8\",\"isDeleted\":0,\"name\":\"运营总监\",\"param\":{},\"postCode\":\"yyzj\",\"status\":1,\"updateTime\":1741588357000},{\"createTime\":1741588341000,\"description\":\"喜欢冲浪\",\"id\":\"7\",\"isDeleted\":0,\"name\":\"网咨\",\"param\":{},\"postCode\":\"wz\",\"status\":1,\"updateTime\":1741588341000}],\"searchCount\":true,\"size\":3,\"total\":5},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 14:48:32', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603473693462529, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:04:25', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603832683941890, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:05:51', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603842083377154, '用户管理', 'STATUS', 'org.cqie.controller.SysUserController.updateStatus()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/updateStatus/1890368319820099585/1', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:05:53', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603843471691778, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":1,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:05:53', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603846495784962, '用户管理', 'STATUS', 'org.cqie.controller.SysUserController.updateStatus()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/updateStatus/1890368319820099585/0', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:05:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603847863128065, '用户管理', 'SELECT', 'org.cqie.controller.SysUserController.selectAllUser()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysUser/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":3,\"records\":[{\"createTime\":1739534416000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890370473611980801\",\"isDeleted\":0,\"name\":\"Jerry\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"123\",\"postId\":0,\"status\":1,\"updateTime\":1741503918000,\"username\":\"杰瑞\"},{\"createTime\":1739533903000,\"deptId\":0,\"description\":\"\",\"headUrl\":\"\",\"id\":\"1890368319820099585\",\"isDeleted\":0,\"name\":\"布吉岛\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"321\",\"postId\":0,\"status\":0,\"updateTime\":1741503917000,\"username\":\"你猜\"},{\"createTime\":1732420121000,\"id\":\"1860530957535645697\",\"isDeleted\":0,\"name\":\"asdfasd\",\"param\":{},\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"phone\":\"2332431\",\"status\":1,\"updateTime\":1741503914000,\"username\":\"hello321\"}],\"searchCount\":true,\"size\":3,\"total\":8},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:05:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603861750468609, '角色管理', 'SELECT', 'org.cqie.controller.SysRoleController.findPageQueryRole()', 'GET', 'MANAGE', 'admin', '', '/admin/system/role/1/3', '127.0.0.1', '', '{\"code\":200,\"data\":{\"current\":1,\"hitCount\":false,\"optimizeCountSql\":true,\"orders\":[],\"pages\":4,\"records\":[{\"createTime\":1741497213000,\"id\":\"1898603040337203202\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"321\",\"roleName\":\"123456\",\"updateTime\":1741497213000},{\"createTime\":1732028566000,\"description\":\"测试JERRY\",\"id\":\"1858888653959831553\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"JerryRole7747\",\"roleName\":\"Jerry321\",\"updateTime\":1732111414000},{\"createTime\":1731947137000,\"id\":\"1858547117560659970\",\"isDeleted\":0,\"param\":{},\"roleCode\":\"7747\",\"roleName\":\"Blank添加角色\",\"updateTime\":1732031910000}],\"searchCount\":true,\"size\":3,\"total\":12},\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:05:58', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603930541248513, '菜单管理', 'INSERT', 'org.cqie.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":2,\"parentId\":1900132236074741762,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"哈哈哈\",\"perms\":\"\",\"id\":\"1906603930478333954\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:06:14', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603948857774082, '菜单管理', 'STATUS', 'org.cqie.controller.SysMenuController.updateStatus()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysMenu/updateStatus/1906603930478333954/0', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:06:19', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603952280326145, '菜单管理', 'STATUS', 'org.cqie.controller.SysMenuController.updateStatus()', 'GET', 'MANAGE', 'admin', '', '/admin/system/sysMenu/updateStatus/1906603930478333954/1', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:06:19', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (1906603999726292994, '菜单管理', 'UPDATE', 'org.cqie.controller.SysMenuController.update()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"updateTime\":1743404774000,\"type\":2,\"parentId\":1900132236074741800,\"path\":\"回家\",\"sortValue\":3,\"component\":\"好就\",\"isDeleted\":0,\"children\":[],\"createTime\":1743404774000,\"param\":{},\"name\":\"哈哈哈\",\"perms\":\"很关键\",\"id\":\"1906603930478333954\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2025-03-31 15:06:31', NULL, 0);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '岗位名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态（1正常 0停用）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1898908226754301955 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (5, 'dsz', '董事长', '喜好喝茶', 1, '2025-03-10 14:31:54', '2025-03-10 14:31:54', 0);
INSERT INTO `sys_post` VALUES (6, 'zjl', '总经理', '喜好8+1', 1, '2025-03-10 14:32:06', '2025-03-10 14:32:06', 0);
INSERT INTO `sys_post` VALUES (7, 'wz', '网咨', '喜欢冲浪', 1, '2025-03-10 14:32:21', '2025-03-10 14:32:21', 0);
INSERT INTO `sys_post` VALUES (8, 'yyzj', '运营总监', '动手能力强', 1, '2025-03-10 14:32:37', '2025-03-10 14:32:37', 0);
INSERT INTO `sys_post` VALUES (1898908226754301954, 'jkj', 'Jerry', '布吉岛', 1, '2025-03-10 14:38:04', '2025-03-10 14:38:04', 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1898603040337203203 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '系统管理员', 'SYSTEM', '系统管理员', '2021-05-31 18:09:18', '2024-11-11 14:44:27', 0);
INSERT INTO `sys_role` VALUES (2, '普通管理员', 'COMMON', '普通管理员', '2021-06-01 08:38:40', '2024-11-11 14:44:27', 0);
INSERT INTO `sys_role` VALUES (8, '用户管理员', 'yhgly', NULL, '2022-06-08 17:39:04', '2022-06-08 17:39:04', 0);
INSERT INTO `sys_role` VALUES (1855453402650550273, '测试1', 'testMange1', '测试角色1', '2024-11-10 11:32:18', '2024-11-10 15:04:33', 0);
INSERT INTO `sys_role` VALUES (1855453402650550274, '测试2', 'testMange2', '测试角色2', '2024-11-10 11:39:38', '2024-11-10 15:04:34', 0);
INSERT INTO `sys_role` VALUES (1855453402650550275, '测试3', 'testMange3', 'BlankMange', '2024-11-10 11:45:43', '2024-11-11 14:44:27', 0);
INSERT INTO `sys_role` VALUES (1855504664314187777, '布吉岛', 'test7747', 'Blank', '2024-11-10 14:56:00', '2024-11-11 14:44:27', 0);
INSERT INTO `sys_role` VALUES (1855858118354165761, 'Blank', 'blankRole', 'Jerry123', '2024-11-11 14:20:30', '2024-11-11 14:37:02', 0);
INSERT INTO `sys_role` VALUES (1858516218005585922, 'Blank11', 'blankRo', 'blank77', '2024-11-18 22:22:50', '2024-11-19 23:58:29', 0);
INSERT INTO `sys_role` VALUES (1858547117560659970, 'Blank添加角色', '7747', NULL, '2024-11-19 00:25:37', '2024-11-19 23:58:30', 0);
INSERT INTO `sys_role` VALUES (1858888653959831553, 'Jerry321', 'JerryRole7747', '测试JERRY', '2024-11-19 23:02:46', '2024-11-20 22:03:34', 0);
INSERT INTO `sys_role` VALUES (1889686488649003010, '测试角色4', 'testManager4', '测试角色4', '2025-02-12 22:42:22', '2025-02-14 17:10:52', 1);
INSERT INTO `sys_role` VALUES (1889956561217277954, 'TOM测试1', '测试1', 'TOM的测试角色', '2025-02-13 16:35:32', '2025-02-14 17:10:52', 1);
INSERT INTO `sys_role` VALUES (1890310531198640130, '测试5 321', '布吉岛321', NULL, '2025-02-14 16:02:05', '2025-02-14 17:10:52', 1);
INSERT INTO `sys_role` VALUES (1898603040337203202, '123456', '321', NULL, '2025-03-09 13:13:33', '2025-03-09 13:13:33', 0);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL DEFAULT 0,
  `menu_id` bigint(11) NOT NULL DEFAULT 0,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_menu_id`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1897322126034591748 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 2, 2, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (2, 2, 3, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (3, 2, 6, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (4, 2, 7, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (5, 2, 8, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (6, 2, 9, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (7, 2, 18, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (8, 2, 4, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (9, 2, 10, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (10, 2, 11, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (11, 2, 12, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (12, 2, 13, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (13, 2, 19, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (14, 2, 5, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (15, 2, 14, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (16, 2, 15, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (17, 2, 16, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (18, 2, 17, '2022-06-02 16:11:27', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (19, 2, 2, '2022-06-02 16:16:10', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (20, 2, 3, '2022-06-02 16:16:10', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (21, 2, 6, '2022-06-02 16:16:10', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (22, 2, 7, '2022-06-02 16:16:10', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (23, 2, 8, '2022-06-02 16:16:10', '2025-02-25 23:41:21', 0);
INSERT INTO `sys_role_menu` VALUES (24, 2, 2, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (25, 2, 3, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (26, 2, 6, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (27, 2, 7, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (28, 2, 8, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (29, 2, 5, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (30, 2, 14, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (31, 2, 20, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (32, 2, 21, '2022-06-09 09:26:34', '2022-06-09 09:26:34', 0);
INSERT INTO `sys_role_menu` VALUES (1894768344293699586, 1858547117560659970, 1894001643327303681, '2025-02-26 23:15:51', '2025-02-26 23:15:51', 0);
INSERT INTO `sys_role_menu` VALUES (1897321893867282433, 1858888653959831553, 2, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897321893926002690, 1858888653959831553, 4, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897321893926002691, 1858888653959831553, 10, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897321893926002692, 1858888653959831553, 11, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897321893993111554, 1858888653959831553, 12, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897321893993111555, 1858888653959831553, 13, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897321893993111556, 1858888653959831553, 19, '2025-03-06 00:22:44', '2025-03-06 00:23:39', 1);
INSERT INTO `sys_role_menu` VALUES (1897322125971677186, 1858888653959831553, 2, '2025-03-06 00:23:40', '2025-03-06 00:23:40', 0);
INSERT INTO `sys_role_menu` VALUES (1897322125971677187, 1858888653959831553, 4, '2025-03-06 00:23:40', '2025-03-06 00:23:40', 0);
INSERT INTO `sys_role_menu` VALUES (1897322125971677188, 1858888653959831553, 10, '2025-03-06 00:23:40', '2025-03-06 00:23:40', 0);
INSERT INTO `sys_role_menu` VALUES (1897322125971677189, 1858888653959831553, 11, '2025-03-06 00:23:40', '2025-03-06 00:23:40', 0);
INSERT INTO `sys_role_menu` VALUES (1897322126034591746, 1858888653959831553, 12, '2025-03-06 00:23:40', '2025-03-06 00:23:40', 0);
INSERT INTO `sys_role_menu` VALUES (1897322126034591747, 1858888653959831553, 19, '2025-03-06 00:23:40', '2025-03-06 00:23:40', 0);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `head_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像地址',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `post_id` bigint(20) NULL DEFAULT NULL COMMENT '岗位id',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(3) NULL DEFAULT 1 COMMENT '状态（1：正常 0：停用）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1890416025749921794 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', 'admin', '15099909888', 'http://r61cnlsfq.hn-bkt.clouddn.com/7daa4595-dfde-45da-8513-c5c2b81d20cc', 1021, 5, NULL, 1, '2021-05-31 18:08:43', '2022-05-25 11:34:25', 0);
INSERT INTO `sys_user` VALUES (2, 'wangqq', '96e79218965eb72c92a549dd5a330112', '王倩倩', '15010546381', 'http://r61cnlsfq.hn-bkt.clouddn.com/b09b3467-3d99-437a-bd2e-dd8c9be92bb8', 1022, 6, NULL, 1, '2022-02-08 10:35:38', '2022-05-25 15:58:31', 0);
INSERT INTO `sys_user` VALUES (3, 'wanggang', '96e79218965eb72c92a549dd5a330112', '王刚', '18909098909', NULL, 1024, 5, NULL, 1, '2022-05-24 11:05:40', '2024-11-24 11:20:38', 0);
INSERT INTO `sys_user` VALUES (1860517133420040193, 'bngfd', 'e10adc3949ba59abbe56e057f20f883e', 'fghf', '112233', NULL, NULL, NULL, NULL, 1, '2024-11-24 10:53:46', '2025-03-09 15:02:03', 0);
INSERT INTO `sys_user` VALUES (1860517306212782082, 'vcxb321', 'e10adc3949ba59abbe56e057f20f883e', 'vbx', '332211', NULL, NULL, NULL, NULL, 1, '2024-11-24 10:54:27', '2025-03-09 15:05:07', 0);
INSERT INTO `sys_user` VALUES (1860530957535645697, 'hello321', 'e10adc3949ba59abbe56e057f20f883e', 'asdfasd', '2332431', NULL, NULL, NULL, NULL, 1, '2024-11-24 11:48:41', '2025-03-09 15:05:14', 0);
INSERT INTO `sys_user` VALUES (1890368319820099585, '你猜', 'e10adc3949ba59abbe56e057f20f883e', '布吉岛', '321', '', 0, 0, '', 0, '2025-02-14 19:51:43', '2025-03-09 15:05:17', 0);
INSERT INTO `sys_user` VALUES (1890370473611980801, '杰瑞', 'e10adc3949ba59abbe56e057f20f883e', 'Jerry', '123', '', 0, 0, '', 1, '2025-02-14 20:00:16', '2025-03-09 15:05:18', 0);
INSERT INTO `sys_user` VALUES (1890416025749921793, '布吉岛321', 'e10adc3949ba59abbe56e057f20f883e', 'Guess', '911888', NULL, NULL, NULL, NULL, 1, '2025-02-14 23:01:17', '2025-03-09 15:05:21', 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '角色id',
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id` ASC) USING BTREE,
  INDEX `idx_admin_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1897321849982279683 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (2, 2, 2, '2022-01-20 20:49:37', '2022-02-24 10:43:07', 0);
INSERT INTO `sys_user_role` VALUES (3, 1, 1, '2022-05-19 10:37:27', '2022-05-24 16:55:53', 1);
INSERT INTO `sys_user_role` VALUES (4, 2, 1, '2022-05-19 10:37:27', '2022-05-24 16:55:53', 1);
INSERT INTO `sys_user_role` VALUES (5, 1, 1, '2022-05-24 16:55:53', '2022-05-24 16:55:53', 0);
INSERT INTO `sys_user_role` VALUES (6, 2, 3, '2022-05-25 16:09:31', '2022-05-25 16:09:31', 0);
INSERT INTO `sys_user_role` VALUES (7, 2, 4, '2022-06-02 11:08:14', '2022-06-02 11:15:36', 1);
INSERT INTO `sys_user_role` VALUES (8, 2, 4, '2022-06-02 11:15:36', '2022-06-02 16:10:53', 1);
INSERT INTO `sys_user_role` VALUES (9, 1, 4, '2022-06-02 11:15:36', '2022-06-02 16:10:53', 1);
INSERT INTO `sys_user_role` VALUES (10, 1, 4, '2022-06-02 16:10:53', '2022-06-02 16:10:53', 0);
INSERT INTO `sys_user_role` VALUES (1861026581410414593, 2, 1860530957535645697, '2024-11-25 20:38:07', '2024-11-25 20:38:07', 0);
INSERT INTO `sys_user_role` VALUES (1893516863976435714, 8, 1890370473611980801, '2025-02-23 12:22:54', '2025-02-23 12:23:06', 1);
INSERT INTO `sys_user_role` VALUES (1897321849982279682, 1858888653959831553, 1890370473611980801, '2025-03-06 00:22:34', '2025-03-06 00:22:34', 0);

SET FOREIGN_KEY_CHECKS = 1;
