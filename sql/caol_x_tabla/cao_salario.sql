/*
 Navicat Premium Data Transfer

 Source Server         : Mysql2
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : caol

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 12/12/2018 10:43:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cao_salario
-- ----------------------------
DROP TABLE IF EXISTS `cao_salario`;
CREATE TABLE `cao_salario`  (
  `co_usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `dt_alteracao` date NOT NULL,
  `brut_salario` float NOT NULL DEFAULT 0,
  `liq_salario` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`co_usuario`, `dt_alteracao`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cao_salario
-- ----------------------------
INSERT INTO `cao_salario` VALUES ('edo.virgolim', '2003-11-05', 0, 0);
INSERT INTO `cao_salario` VALUES ('carlos.arruda', '2007-09-11', 2683, 2300);
INSERT INTO `cao_salario` VALUES ('anapaula.chiodaro', '2007-09-11', 2566, 2200);
INSERT INTO `cao_salario` VALUES ('renato.pereira', '2007-09-10', 2566, 2200);
INSERT INTO `cao_salario` VALUES ('fernanda.barbosa', '2007-09-13', 1750, 1500);
INSERT INTO `cao_salario` VALUES ('carlos.carvalho', '2007-04-11', 2566, 2200);

SET FOREIGN_KEY_CHECKS = 1;
