/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 13/12/2021 23:45:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `version` int(255) NOT NULL DEFAULT 0,
  `deleted` int(255) NULL DEFAULT NULL,
  `desc_a` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1470385533648646145', 'test001', 19, 'test001@qq.com', '2021-12-13 21:30:04', '2021-12-13 21:30:04', 0, 0, NULL);
INSERT INTO `user` VALUES ('1470385652120997890', 'admin', 35, 'admin@qq.com', '2021-12-13 21:30:33', '2021-12-13 21:35:55', 2, 0, NULL);

-- ----------------------------
-- Table structure for user2
-- ----------------------------
DROP TABLE IF EXISTS `user2`;
CREATE TABLE `user2`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `version` int(255) NOT NULL DEFAULT 0,
  `deleted` int(255) NULL DEFAULT NULL,
  `desc_b` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user2
-- ----------------------------
INSERT INTO `user2` VALUES ('1470385533648646145', 'test001', 19, 'test001@qq.com', '2021-12-13 21:30:04', '2021-12-13 21:30:04', 0, 0, NULL);
INSERT INTO `user2` VALUES ('1470417291597443073', '张三', 56, 'zhangsan@qq.com', '2021-12-13 23:36:16', '2021-12-13 23:36:16', 0, 0, 'User2');

-- ----------------------------
-- Table structure for user3
-- ----------------------------
DROP TABLE IF EXISTS `user3`;
CREATE TABLE `user3`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `version` int(255) NOT NULL DEFAULT 0,
  `deleted` int(255) NULL DEFAULT NULL,
  `desc_c` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user3
-- ----------------------------
INSERT INTO `user3` VALUES ('1470385533648646145', 'test001', 19, 'test001@qq.com', '2021-12-13 21:30:04', '2021-12-13 21:30:04', 0, 0, NULL);
INSERT INTO `user3` VALUES ('1470385652120997890', 'admin', 35, 'admin@qq.com', '2021-12-13 21:30:33', '2021-12-13 21:35:55', 2, 0, NULL);

-- ----------------------------
-- Table structure for user4
-- ----------------------------
DROP TABLE IF EXISTS `user4`;
CREATE TABLE `user4`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `version` int(255) NOT NULL DEFAULT 0,
  `deleted` int(255) NULL DEFAULT NULL,
  `desc_d` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user4
-- ----------------------------
INSERT INTO `user4` VALUES ('1470385533648646145', 'test001', 19, 'test001@qq.com', '2021-12-13 21:30:04', '2021-12-13 21:30:04', 0, 0, NULL);
INSERT INTO `user4` VALUES ('1470385652120997890', 'admin', 35, 'admin@qq.com', '2021-12-13 21:30:33', '2021-12-13 21:35:55', 2, 0, NULL);
INSERT INTO `user4` VALUES ('1470418638354804738', 'lisi', 16, 'lisi@qq.com', '2021-12-13 23:41:37', '2021-12-13 23:41:37', 0, 0, 'User4');

-- ----------------------------
-- Table structure for user5
-- ----------------------------
DROP TABLE IF EXISTS `user5`;
CREATE TABLE `user5`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `version` int(255) NOT NULL DEFAULT 0,
  `deleted` int(255) NULL DEFAULT NULL,
  `desc_e` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user5
-- ----------------------------
INSERT INTO `user5` VALUES ('1470385533648646145', 'test001', 19, 'test001@qq.com', '2021-12-13 21:30:04', '2021-12-13 21:30:04', 0, 0, NULL);
INSERT INTO `user5` VALUES ('1470385652120997890', 'admin', 35, 'admin@qq.com', '2021-12-13 21:30:33', '2021-12-13 21:35:55', 2, 0, NULL);
INSERT INTO `user5` VALUES ('1470419126005538818', 'wangwu', 78, 'wangwu@qq.com', '2021-12-13 23:43:33', '2021-12-13 23:43:33', 0, 0, 'User5');

SET FOREIGN_KEY_CHECKS = 1;
