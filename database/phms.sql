/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80300 (8.3.0)
 Source Host           : localhost:3306
 Source Schema         : phms

 Target Server Type    : MySQL
 Target Server Version : 80300 (8.3.0)
 File Encoding         : 65001

 Date: 06/12/2025 20:01:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `doctor_id` bigint NULL DEFAULT NULL,
  `app_time` datetime NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES (1, 1, 1, 1, '2022-06-21 00:00:00', 'treat1', '2022-06-21 00:00:00', 4, '15644553256', 'Nanjing');
INSERT INTO `appointment` VALUES (2, 1, 1, 1, '2022-06-21 00:00:00', 'treat2', '2022-06-21 00:00:00', 4, '1776222', '555');
INSERT INTO `appointment` VALUES (3, 2, 1, 5, '2022-06-21 00:00:00', 'treat3', '2022-06-21 00:00:00', 4, '17788885555', '5555');
INSERT INTO `appointment` VALUES (4, 3, 6, 5, '2022-06-21 00:00:00', 'treat4', '2022-06-21 00:00:00', 2, '17768583634', '8888');
INSERT INTO `appointment` VALUES (6, 3, 6, 9, '2022-06-21 00:00:00', '5', '2022-06-21 00:00:00', 4, '18899998888', '1111');
INSERT INTO `appointment` VALUES (7, 3, 6, 9, '2022-06-21 00:00:00', '111', '2022-06-21 00:00:00', 4, '11', '11');
INSERT INTO `appointment` VALUES (10, 6, 13, 5, '2022-06-21 00:00:00', 'treat', '2022-06-21 00:00:00', 4, '18860887816', 'YIXING');
INSERT INTO `appointment` VALUES (11, 6, 13, 1, '2022-06-21 00:00:00', 'sick', '2022-06-21 00:00:00', 4, '18860887816', 'YIXING');
INSERT INTO `appointment` VALUES (12, 7, 13, 5, '2022-06-21 00:00:00', 'treat6', '2022-06-21 00:00:00', 2, '18860887816', 'Shenyang');
INSERT INTO `appointment` VALUES (13, 5, 11, 5, '2022-06-21 00:00:00', 'sick1', '2022-06-21 00:00:00', 4, '18860777777', 'Tianjin');
INSERT INTO `appointment` VALUES (14, 8, 17, 5, '2022-06-21 00:00:00', 'sick2', '2022-06-21 00:00:00', 4, '18860887816', 'YIXING');
INSERT INTO `appointment` VALUES (15, 9, 18, 5, '2022-06-21 00:00:00', 'sick3', '2022-06-21 00:00:00', 2, '18860887711', 'YIXING');
INSERT INTO `appointment` VALUES (17, 11, 18, 26, '2022-06-21 00:00:00', 'sick4', '2022-06-21 00:00:00', 3, '18860887816', 'Shenyang');
INSERT INTO `appointment` VALUES (18, 12, 20, 21, '2022-06-21 00:00:00', 'sick5', '2022-06-21 00:00:00', 4, '18860887816', 'YIXING');
INSERT INTO `appointment` VALUES (19, 12, 20, 26, '2022-06-21 00:00:00', 'sick6', '2022-06-21 00:00:00', 3, '18860887816', 'YIXING');
INSERT INTO `appointment` VALUES (20, 14, 23, 21, '2022-06-21 00:00:00', 'sick7', '2022-06-21 00:00:00', 4, '18860887711', 'YIXING');
INSERT INTO `appointment` VALUES (21, 16, 24, 21, '2022-06-21 00:00:00', 'sick8', '2022-06-21 00:00:00', 4, '18860887711', 'YIXING');
INSERT INTO `appointment` VALUES (22, 17, 24, 26, '2022-06-21 00:00:00', 'treat7', '2022-06-21 00:00:00', 3, '18899998888', '555');
INSERT INTO `appointment` VALUES (23, 19, 25, 26, '2022-06-21 00:00:00', 'sick9', '2022-06-21 00:00:00', 4, '18860887711', 'YIXING');
INSERT INTO `appointment` VALUES (24, 20, 1, 26, '2022-06-21 00:00:00', 'sick10', '2022-06-21 00:00:00', 3, '18888889998', 'NanJing');
INSERT INTO `appointment` VALUES (25, 20, 1, 1, '2022-06-21 00:00:00', 'treat8', '2022-06-21 00:00:00', 4, '1889999999', 'LiaoNing');
INSERT INTO `appointment` VALUES (26, 21, 1, 1, '2022-06-21 00:00:00', 'treat9', '2022-06-21 00:00:00', 4, '18899998888', 'YIXING');
INSERT INTO `appointment` VALUES (27, 24, 25, 26, '2022-06-21 00:00:00', 'treat10', '2022-06-21 00:00:00', 4, '18860882222', 'Suzhou');
INSERT INTO `appointment` VALUES (28, 24, 25, 26, '2022-06-21 00:00:00', 'treat11', '2022-06-21 00:00:00', 4, '18860883333', 'Suzhou');
INSERT INTO `appointment` VALUES (29, 27, 25, 26, '2022-06-21 00:00:00', 'treat12', '2022-06-21 00:00:00', 4, '18860884444', 'Suzhou');
INSERT INTO `appointment` VALUES (30, 27, 25, 26, '2022-06-21 00:00:00', 'treat13', '2022-06-21 00:00:00', 4, '18860882222', 'Suzhou');
INSERT INTO `appointment` VALUES (31, 28, 25, 26, '2022-06-21 00:00:00', 'sick14', '2022-06-21 00:00:00', 4, '18860881111', 'Suzhou');
INSERT INTO `appointment` VALUES (32, 31, 1, 26, '2022-06-21 00:00:00', 'sick16', '2022-06-21 00:00:00', 1, '18860882222', 'Suzhou');
INSERT INTO `appointment` VALUES (33, 28, 25, 26, '2022-06-21 00:00:00', 'sick16', '2022-06-21 00:00:00', 3, '18860882222', 'Hangzhou');
INSERT INTO `appointment` VALUES (34, 28, 25, 26, '2022-06-21 00:00:00', '888', '2022-06-21 00:00:00', 3, '18860882222', 'Wuhan');
INSERT INTO `appointment` VALUES (35, 28, 25, NULL, '2022-06-21 00:00:00', '777', '2022-06-21 00:00:00', 1, '18860882222', 'Wuhan');
INSERT INTO `appointment` VALUES (36, 28, 25, 26, '2022-06-21 00:00:00', '555666', '2022-06-21 00:00:00', 2, '18860882222', 'Wuhan');
INSERT INTO `appointment` VALUES (37, 30, 25, 26, '2022-06-21 00:00:00', '333', '2022-06-21 00:00:00', 4, '18860882222', 'Wuhan');
INSERT INTO `appointment` VALUES (39, 32, 42, 1, '2025-06-25 00:00:00', 'test', '2025-02-25 15:13:09', 4, '1086', 'test');
INSERT INTO `appointment` VALUES (40, 20, 1, 1, '2025-12-06 00:00:00', '666', '2025-12-04 13:25:10', 3, '666', 'Beijing');
INSERT INTO `appointment` VALUES (41, 7, 1, 1, '2025-12-05 16:53:15', 'high temperature', '2025-12-05 16:53:17', 4, '13284962961', 'Wuhan');

-- ----------------------------
-- Table structure for diagnosis
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE `diagnosis`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `doctor_id` bigint NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of diagnosis
-- ----------------------------
INSERT INTO `diagnosis` VALUES (17, 20, 1, 26, 'treat', 1, 1, '2022-06-21 00:00:00');
INSERT INTO `diagnosis` VALUES (21, 4, 1, 30, 'treat', 1, 1, '2025-12-05 15:39:53');
INSERT INTO `diagnosis` VALUES (22, 42, 52, 31, 'treat', 1, 1, '2025-12-05 15:53:59');
INSERT INTO `diagnosis` VALUES (23, 41, 51, 53, 'treat', 1, 1, '2025-12-05 15:54:11');
INSERT INTO `diagnosis` VALUES (24, 40, 50, 26, 'vaccinate', 2, 2, '2025-12-05 15:54:14');
INSERT INTO `diagnosis` VALUES (25, 39, 49, 30, 'vaccinate', 2, 2, '2025-12-05 15:54:18');
INSERT INTO `diagnosis` VALUES (26, 38, 48, 31, 'treat', 1, 1, '2025-12-05 15:54:22');
INSERT INTO `diagnosis` VALUES (27, 37, 47, 53, 'vaccinate', 2, 2, '2025-12-05 15:54:25');
INSERT INTO `diagnosis` VALUES (28, 36, 46, 26, 'treat', 1, 1, '2025-12-05 15:54:29');
INSERT INTO `diagnosis` VALUES (29, 35, 45, 31, 'treat', 1, 1, '2025-12-05 15:54:36');
INSERT INTO `diagnosis` VALUES (30, 34, 43, 30, 'vaccinate', 2, 2, '2025-12-05 15:54:32');
INSERT INTO `diagnosis` VALUES (31, 32, 1, 26, 'tre', 1, 1, '2025-12-05 16:08:48');
INSERT INTO `diagnosis` VALUES (32, 7, 1, 1, 'use drug on time', 2, 1, '2025-12-05 16:54:10');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '内容',
  `view_count` bigint NULL DEFAULT NULL COMMENT '浏览次数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (9, NULL, 8, '2025-12-04 15:12:26', 'Epidemic prevention');
INSERT INTO `news` VALUES (10, NULL, 7, '2022-06-21 18:51:16', 'The relationship of the epidemic');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `view_count` bigint NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (2, '<p>Dogs can only get rabies vaccines when they are older, and they should be vaccinated once a year. </p>', 10, '2022-06-21 00:00:00', 'How often should pets receive vaccinations');
INSERT INTO `notice` VALUES (3, '<p>请填写文字内容</p>\n\n<p>如果你的小狗已经出现了一定情况的问题，那么请先从自己／现有环境的身上找原因&mdash;&mdash;毕竟养狗行为课程，其实最重要的不是小狗，而是小狗的主人。</p>\n\n<p>我们对待小狗的方式，就是我们对待小孩，或者说是童年的自己的方式。是选择恐吓训斥，让他们永远失去好奇心，对周围充满恐惧？还是选择给小孩以积极尊重，探索周边，予以互动？培养小狗的自信心和成就感，也是重要的课程内容。</p>\n\n<p>&nbsp;</p>', 8, '2022-06-21 00:00:00', 'What is the most important thing in keeping a dog?');
INSERT INTO `notice` VALUES (4, '<p>Cultivating the puppy\'s self-confidence and sense of achievement</p>', 4, '2022-06-21 00:00:00', 'How to keep a dog?');
INSERT INTO `notice` VALUES (5, '<p>怎么养宠物....</p>', 3, '2022-06-21 00:00:00', 'How to keep a cat?');
INSERT INTO `notice` VALUES (6, '<p>怎么养宠物....</p>', 17, '2022-06-21 00:00:00', 'How to keep a small dog?');
INSERT INTO `notice` VALUES (8, '<p>test</p>', 9, '2022-06-21 00:00:00', 'test');
INSERT INTO `notice` VALUES (9, '<p>ok</p>', 1, '2025-12-05 17:12:45', 'ok');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page`  (
  `page_id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `parent_id` int NULL DEFAULT NULL COMMENT '父页面id',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '页面名称',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '页面地址',
  `level_type` int NULL DEFAULT NULL COMMENT '页面层级',
  `level_index` int NULL DEFAULT NULL COMMENT '页面索引',
  `delete_flag` int(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '是否删除',
  `desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES (1, 0, 'System Settings', NULL, 0, 10, 0, 'manager');
INSERT INTO `page` VALUES (2, 1, 'User Mgt', '/admin/userPage', 1, 22, 0, 'manager');
INSERT INTO `page` VALUES (3, 1, 'Page Mgt', '/admin/page', 1, 23, 0, 'manager');
INSERT INTO `page` VALUES (4, 1, 'Role Mgt', '/admin/role', 1, 24, 0, 'manager');
INSERT INTO `page` VALUES (6, 0, 'Pet Mgt', '', 0, 1, 0, 'left_menu_shop');
INSERT INTO `page` VALUES (7, 6, 'Pet list', '/user/pet/petList', 1, 1, 0, '');
INSERT INTO `page` VALUES (8, 6, 'health history', '/user/diagnosis/diagnosisList', 1, 2, 0, '');
INSERT INTO `page` VALUES (9, 0, 'Reservation Mgt', '', 0, 2, 0, 'left_menu_data');
INSERT INTO `page` VALUES (10, 9, 'Reservation list', '/user/apply/applyList', 1, 1, 0, '');
INSERT INTO `page` VALUES (12, 0, 'Daily health', '', 0, 3, 0, 'user');
INSERT INTO `page` VALUES (13, 12, 'Health Guide', '/user/notice/list', 1, 1, 0, '');
INSERT INTO `page` VALUES (14, 12, 'Health monitor', '/health/assess', 1, 2, 0, '');
INSERT INTO `page` VALUES (19, 0, 'Pet file', '', 0, 4, 0, 'left_menu_house');
INSERT INTO `page` VALUES (20, 19, 'Reservation stat', '/health/tjApply', 1, 1, 0, '');
INSERT INTO `page` VALUES (21, 0, 'Hospital Mgt', '', 0, 5, 0, 'page');
INSERT INTO `page` VALUES (23, 21, 'Reservation stat', '/health/tjApplyDoctor', 1, 2, 0, '');
INSERT INTO `page` VALUES (24, 21, 'Release Guide', '/user/notice/publish', 1, 3, 0, '');
INSERT INTO `page` VALUES (27, 19, 'Pet Log', '/user/petDaily/petDailyList', 1, 2, 0, '');
INSERT INTO `page` VALUES (28, 19, 'Reservation stat', '/health/tjApply', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (30, 6, 'health history-', '/user/diagnosis/diagnosisListDoctor', 1, 3, 0, '');
INSERT INTO `page` VALUES (31, 9, 'Reservation list-', '/user/apply/applyListDoctor', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (32, 21, 'Std formulation', '/user/standard/standardListDoctor', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (33, 12, 'Health std', '/user/standard/standardList', 1, 3, 0, NULL);
INSERT INTO `page` VALUES (34, 19, 'Pet log-', '/user/petDaily/petDailyListDoctor', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (35, 19, 'Log chart', '/health/tjDaily', 1, 5, 0, NULL);
INSERT INTO `page` VALUES (36, 21, 'Pet log', '/health/tjDailyDoctor', 1, 5, 0, NULL);
INSERT INTO `page` VALUES (37, 9, 'Doctor time', '/health/freeTime', 1, 4, 0, NULL);
INSERT INTO `page` VALUES (38, 21, 'Guide list', '/user/notice/listDoctor', 1, 6, 0, '');
INSERT INTO `page` VALUES (39, 21, 'News', '/user/notice/listNew', 1, 7, 0, NULL);

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `weight` double(10, 2) NULL DEFAULT NULL,
  `height` double(10, 2) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `birthday` datetime NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES (3, 1, 'user pet', 11.00, 12.00, '1', '2020-04-25 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (4, 1, 'yelloo', 20.00, 30.00, '2', '2020-04-30 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (5, 1, 'white', 20.00, 40.00, '2', '2020-04-30 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (7, 1, 'road', 20.00, 30.00, '2', '2019-12-31 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (8, 1, 'red', 20.00, 40.00, '2', '2019-05-26 13:56:18', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (9, 1, 'yloow', 20.00, 10.00, '2', '2020-03-18 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (10, 1, 'pur', 20.00, 10.00, '1', '2020-02-04 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (11, 1, 'pur', 20.00, 10.00, '1', '2020-02-04 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (12, 1, 'errid', 10.00, 20.00, '2', '2025-12-05 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (14, 1, 'hatty', 30.00, 20.00, '1', '2020-01-29 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (16, 1, 'kity', 20.00, 10.00, '2', '2019-03-26 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (17, 1, 'blike', 11.00, 12.00, '1', '2020-04-26 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (18, 25, 'ride', 40.00, 20.00, '1', '2019-03-29 11:14:36', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (19, 25, 'hack', 50.00, 40.00, '2', '2018-05-29 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (20, 1, 'admin pet', 12.00, 21.00, '1', '2020-05-08 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (30, 25, 'bright', 30.00, 20.00, '2', '2018-04-30 00:00:00', NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (31, 1, 'LEI MING', 50.00, 150.00, '2', NULL, NULL, '2022-06-21 00:00:00');
INSERT INTO `pet` VALUES (32, 1, 'flower', 5.00, 20.00, '1', '2021-02-03 00:00:00', NULL, '2025-02-25 15:12:02');
INSERT INTO `pet` VALUES (33, 1, 'hey', 20.00, 40.00, '2', '2025-12-01 00:00:00', NULL, '2025-12-05 14:49:09');
INSERT INTO `pet` VALUES (34, 1, 'Max', 13.00, 25.00, '1', '2024-12-10 00:00:00', NULL, '2025-12-05 15:19:16');
INSERT INTO `pet` VALUES (35, 1, 'Luna', 14.00, 27.00, '1', '2022-09-06 00:00:00', NULL, '2025-12-05 15:19:48');
INSERT INTO `pet` VALUES (36, 1, 'Charlie', 13.00, 24.00, '1', '2022-08-30 00:00:00', NULL, '2025-12-05 15:20:30');
INSERT INTO `pet` VALUES (37, 1, 'Bella', 15.00, 30.00, '2', '2022-12-03 00:00:00', NULL, '2025-12-05 15:21:07');
INSERT INTO `pet` VALUES (38, 1, 'Simba', 14.00, 28.00, '1', '2021-12-07 00:00:00', NULL, '2025-12-05 15:22:24');
INSERT INTO `pet` VALUES (39, 1, 'Coco', 20.00, 40.00, '2', '2022-07-13 00:00:00', NULL, '2025-12-05 15:22:56');
INSERT INTO `pet` VALUES (40, 1, 'Chloe', 12.00, 24.00, '2', '2023-03-07 00:00:00', NULL, '2025-12-05 15:23:25');
INSERT INTO `pet` VALUES (41, 1, 'Rocky', 20.00, 39.00, '2', '2022-12-30 00:00:00', NULL, '2025-12-05 15:23:52');
INSERT INTO `pet` VALUES (42, 1, 'Lucy', 12.00, 25.00, '1', '2024-01-10 15:24:19', NULL, '2025-12-05 15:24:26');

-- ----------------------------
-- Table structure for pet_daily
-- ----------------------------
DROP TABLE IF EXISTS `pet_daily`;
CREATE TABLE `pet_daily`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `pet_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `temperature` double(10, 2) NULL DEFAULT NULL,
  `weight` double(10, 2) NULL DEFAULT NULL,
  `height` double(10, 2) NULL DEFAULT NULL,
  `appetite` double(10, 2) NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_daily
-- ----------------------------
INSERT INTO `pet_daily` VALUES (2, 3, 11, 12.00, 40.00, 30.00, 11.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (3, 4, 6, 12.00, 20.00, 15.00, 11.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (4, 4, 6, 12.00, 10.00, 10.00, 11.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (6, 4, 13, 12.00, 6.00, 6.00, 11.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (7, 5, 11, 20.00, 10.00, 30.00, 40.00, 2, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (8, 8, 17, 10.00, 40.00, 10.00, 10.00, 2, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (9, 9, 18, 10.00, 20.00, 10.00, 10.00, 2, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (10, 14, 23, 10.00, 10.00, 40.00, 10.00, 2, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (12, 16, 24, 10.00, 40.00, 20.00, 6.00, 3, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (13, 17, 24, 11.00, 12.00, 13.00, 15.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (16, 20, 1, 11.00, 2.00, 22.00, 1.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (22, 24, 22, 33.00, 34.00, 44.00, 22.00, 2, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (23, 19, 25, 37.00, 20.00, 20.00, 10.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (24, 19, 25, 50.00, 30.00, 30.00, 20.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (25, 19, 25, 60.00, 60.00, 60.00, 60.00, 2, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (26, 28, 25, 10.00, 40.00, 20.00, 30.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (27, 30, 25, 30.00, 20.00, 10.00, 10.00, 1, '2022-06-21 00:00:00');
INSERT INTO `pet_daily` VALUES (28, 42, 1, 22.00, 13.00, 25.00, 3.00, 1, '2025-12-05 17:19:49');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `desc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'Super Administrator', 'Super Administrator');
INSERT INTO `role` VALUES (2, 'Ordinary user', 'Ordinary user');
INSERT INTO `role` VALUES (3, 'doctor', 'doctor');

-- ----------------------------
-- Table structure for role_page
-- ----------------------------
DROP TABLE IF EXISTS `role_page`;
CREATE TABLE `role_page`  (
  `rp_id` int NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  `page_id` int NULL DEFAULT NULL COMMENT '页面id',
  PRIMARY KEY (`rp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 914 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of role_page
-- ----------------------------
INSERT INTO `role_page` VALUES (1, 1, 1);
INSERT INTO `role_page` VALUES (2, 1, 2);
INSERT INTO `role_page` VALUES (3, 1, 3);
INSERT INTO `role_page` VALUES (4, 1, 4);
INSERT INTO `role_page` VALUES (803, 2, 6);
INSERT INTO `role_page` VALUES (804, 2, 7);
INSERT INTO `role_page` VALUES (805, 2, 8);
INSERT INTO `role_page` VALUES (806, 2, 9);
INSERT INTO `role_page` VALUES (807, 2, 10);
INSERT INTO `role_page` VALUES (808, 2, 37);
INSERT INTO `role_page` VALUES (809, 2, 12);
INSERT INTO `role_page` VALUES (810, 2, 13);
INSERT INTO `role_page` VALUES (811, 2, 14);
INSERT INTO `role_page` VALUES (812, 2, 33);
INSERT INTO `role_page` VALUES (813, 2, 19);
INSERT INTO `role_page` VALUES (814, 2, 27);
INSERT INTO `role_page` VALUES (815, 2, 28);
INSERT INTO `role_page` VALUES (816, 2, 35);
INSERT INTO `role_page` VALUES (852, 3, 6);
INSERT INTO `role_page` VALUES (853, 3, 30);
INSERT INTO `role_page` VALUES (854, 3, 9);
INSERT INTO `role_page` VALUES (855, 3, 31);
INSERT INTO `role_page` VALUES (856, 3, 37);
INSERT INTO `role_page` VALUES (857, 3, 19);
INSERT INTO `role_page` VALUES (858, 3, 34);
INSERT INTO `role_page` VALUES (859, 3, 21);
INSERT INTO `role_page` VALUES (860, 3, 23);
INSERT INTO `role_page` VALUES (861, 3, 24);
INSERT INTO `role_page` VALUES (862, 3, 32);
INSERT INTO `role_page` VALUES (863, 3, 36);
INSERT INTO `role_page` VALUES (864, 3, 38);
INSERT INTO `role_page` VALUES (889, 1, 6);
INSERT INTO `role_page` VALUES (890, 1, 7);
INSERT INTO `role_page` VALUES (891, 1, 8);
INSERT INTO `role_page` VALUES (892, 1, 30);
INSERT INTO `role_page` VALUES (893, 1, 9);
INSERT INTO `role_page` VALUES (894, 1, 10);
INSERT INTO `role_page` VALUES (895, 1, 31);
INSERT INTO `role_page` VALUES (896, 1, 37);
INSERT INTO `role_page` VALUES (897, 1, 12);
INSERT INTO `role_page` VALUES (898, 1, 13);
INSERT INTO `role_page` VALUES (899, 1, 14);
INSERT INTO `role_page` VALUES (900, 1, 33);
INSERT INTO `role_page` VALUES (901, 1, 19);
INSERT INTO `role_page` VALUES (902, 1, 20);
INSERT INTO `role_page` VALUES (903, 1, 27);
INSERT INTO `role_page` VALUES (904, 1, 28);
INSERT INTO `role_page` VALUES (905, 1, 34);
INSERT INTO `role_page` VALUES (906, 1, 35);
INSERT INTO `role_page` VALUES (907, 1, 21);
INSERT INTO `role_page` VALUES (908, 1, 23);
INSERT INTO `role_page` VALUES (909, 1, 24);
INSERT INTO `role_page` VALUES (910, 1, 32);
INSERT INTO `role_page` VALUES (911, 1, 36);
INSERT INTO `role_page` VALUES (912, 1, 38);
INSERT INTO `role_page` VALUES (913, 1, 39);

-- ----------------------------
-- Table structure for standard
-- ----------------------------
DROP TABLE IF EXISTS `standard`;
CREATE TABLE `standard`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `age_min` int NULL DEFAULT NULL,
  `age_max` int NULL DEFAULT NULL,
  `temp_min` double(10, 2) NULL DEFAULT NULL,
  `temp_max` double(10, 2) NULL DEFAULT NULL,
  `weight_min` double(10, 2) NULL DEFAULT NULL,
  `weight_max` double(10, 2) NULL DEFAULT NULL,
  `height_min` double(10, 2) NULL DEFAULT NULL,
  `height_max` double(10, 2) NULL DEFAULT NULL,
  `appetite_min` double(10, 2) NULL DEFAULT NULL,
  `appetite_max` double(10, 2) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of standard
-- ----------------------------
INSERT INTO `standard` VALUES (2, 1, 10, 30.00, 50.00, 10.00, 50.00, 5.00, 70.00, 10.00, 40.00, '1', 1);
INSERT INTO `standard` VALUES (3, 5, 20, 15.00, 40.00, 10.00, 50.00, 12.00, 70.00, 10.00, 30.00, '2', 1);
INSERT INTO `standard` VALUES (4, 1, 10, 10.00, 10.00, 20.00, 30.00, 40.00, 50.00, 10.00, 10.00, '2', 1);
INSERT INTO `standard` VALUES (5, 5, 20, 30.00, 35.00, 20.00, 40.00, 20.00, 90.00, 15.00, 40.00, '1', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `age` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `id_card` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `id_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `hospital_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `hospital_address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'demo.user.001@163.com', '110101199001011234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13000001234', 'Shanghai', '2025-02-25 15:10:37');
INSERT INTO `user` VALUES (25, NULL, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'tester_alice_2023@163.com', '310105198512128765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18860881111', 'Jiang Su', '2022-06-21 00:00:00');
INSERT INTO `user` VALUES (26, NULL, 'doctor1', 'e10adc3949ba59abbe56e057f20f883e', 'virtual.john.doe@163.com', '440301200205059876', NULL, NULL, 'Pet Hospital', 'Shen Zhen', 'doctor', NULL, NULL, '18860882222', 'Guangzhou', '2022-06-21 00:00:00');
INSERT INTO `user` VALUES (30, NULL, 'doctor2', 'e10adc3949ba59abbe56e057f20f883e', 'sample_data_01@163.com', '500103199912310123', NULL, NULL, 'Pet Hospital', 'Guang zhou', 'doctor', NULL, NULL, '18860883333', 'Guangzhou', '2022-06-21 00:00:00');
INSERT INTO `user` VALUES (31, NULL, 'doctor3', 'e10adc3949ba59abbe56e057f20f883e', 'dev.project.beta@163.com', '135489654123698741', NULL, NULL, 'Pet Hospital', 'Su zhou', 'nurse', NULL, NULL, '18860883333', 'Guangzhou', '2022-06-21 00:00:00');
INSERT INTO `user` VALUES (38, NULL, 'Li Ming', 'e10adc3949ba59abbe56e057f20f883e', 'mock_address_05@163.com', '330102197802291234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13111115678', 'Chengdu', '2022-06-21 00:00:00');
INSERT INTO `user` VALUES (43, NULL, 'Mary', '4297f44b13955235245b2497399d7a93', 'placeholder_email@126.com', '210203198611114567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13222220987', 'Chengdu', '2025-05-10 09:03:58');
INSERT INTO `user` VALUES (45, NULL, 'Jack', NULL, 'fake.account.service@126.com', '350102200001016789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13312344321', 'Xiamen', NULL);
INSERT INTO `user` VALUES (46, NULL, 'Lily', NULL, 'trial_version_02@126.com', '410101199503150987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13455556789', 'Xiamen', NULL);
INSERT INTO `user` VALUES (47, NULL, 'Charlotte', NULL, 'example.zhang.san@126.com', '230102199808085432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13599999876', 'Qingdao', NULL);
INSERT INTO `user` VALUES (48, NULL, 'Ethan', NULL, 'ui.design.dummy@126.com', '130102200112129876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13666661234', 'Qingdao', NULL);
INSERT INTO `user` VALUES (49, NULL, 'Olivia', NULL, 'temp.contact.me@126.com', '320102198307207654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13777776543', 'Wuhan', NULL);
INSERT INTO `user` VALUES (50, NULL, 'Leo', NULL, 'fictional.user.demo@gmail.com', '370102199406063210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13888880987', 'Wuhan', NULL);
INSERT INTO `user` VALUES (51, NULL, 'Ava', NULL, 'qa.testing.mock@gmail.com', '450102200310100987', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13912345678', 'Wuhan', NULL);
INSERT INTO `user` VALUES (52, NULL, 'Felix', NULL, 'no.reply.dummy@gmail.com', '140102198209189876', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15000001234', 'Wuhan', NULL);
INSERT INTO `user` VALUES (53, NULL, 'doctor4', 'e10adc3949ba59abbe56e057f20f883e', '12@163.com', '220102199709227654', NULL, NULL, 'ABC hospital', 'FANLING', 'nurse', NULL, NULL, '18496296123', 'Fanling', '2025-12-05 14:58:51');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `ur_id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `user_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`ur_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, '1', 1);
INSERT INTO `user_role` VALUES (170, '25', 2);
INSERT INTO `user_role` VALUES (171, '26', 3);
INSERT INTO `user_role` VALUES (172, '30', 3);
INSERT INTO `user_role` VALUES (180, '38', 2);
INSERT INTO `user_role` VALUES (184, '42', 2);
INSERT INTO `user_role` VALUES (185, '43', 2);
INSERT INTO `user_role` VALUES (186, '44', 2);
INSERT INTO `user_role` VALUES (187, '45', 2);
INSERT INTO `user_role` VALUES (188, '53', 3);
INSERT INTO `user_role` VALUES (189, '46', 2);
INSERT INTO `user_role` VALUES (190, '47', 2);
INSERT INTO `user_role` VALUES (191, '48', 2);
INSERT INTO `user_role` VALUES (192, '49', 2);
INSERT INTO `user_role` VALUES (193, '50', 2);
INSERT INTO `user_role` VALUES (195, '52', 2);
INSERT INTO `user_role` VALUES (196, '31', 3);

SET FOREIGN_KEY_CHECKS = 1;
