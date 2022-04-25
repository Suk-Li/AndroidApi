/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : android_api

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 25/04/2022 16:44:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students`
(
    `stu_id`       int(11)                                                 NOT NULL AUTO_INCREMENT,
    `stu_name`     varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    `phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci  NOT NULL,
    `stu_image`    int(11)                                                 NOT NULL,
    PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Compact;

-- ----------------------------
-- Records of students
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
