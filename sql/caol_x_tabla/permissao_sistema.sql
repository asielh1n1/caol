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

 Date: 12/12/2018 10:43:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for permissao_sistema
-- ----------------------------
DROP TABLE IF EXISTS `permissao_sistema`;
CREATE TABLE `permissao_sistema`  (
  `co_usuario` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  `co_tipo_usuario` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `co_sistema` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `in_ativo` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'S',
  `co_usuario_atualizacao` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dt_atualizacao` datetime(0) NOT NULL,
  PRIMARY KEY (`co_usuario`, `co_tipo_usuario`, `co_sistema`) USING BTREE,
  INDEX `co_usuario`(`co_usuario`, `co_tipo_usuario`, `co_sistema`, `dt_atualizacao`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissao_sistema
-- ----------------------------
INSERT INTO `permissao_sistema` VALUES ('rodrigo.vilela', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('civio.couto', 17, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('michel.moura', 1, 1, 'N', 'carlos.arruda', '2004-07-05 19:39:43');
INSERT INTO `permissao_sistema` VALUES ('roberto.medeiros', 2, 1, 'N', 'carlos.arruda', '2004-01-14 19:25:15');
INSERT INTO `permissao_sistema` VALUES ('denis.santos', 18, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fabio.stevanelli', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('luiz.paulo', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('alessandro.yamada', 17, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('carlos.arruda', 0, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('pana.esquivel', 2, 1, 'N', 'carlos.arruda', '2004-06-21 18:13:14');
INSERT INTO `permissao_sistema` VALUES ('gustavo.alvares', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('daniel.braga', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rui.hayashi', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('leonardo.aguiar', 2, 1, 'N', 'carlos.arruda', '2003-10-01 09:08:10');
INSERT INTO `permissao_sistema` VALUES ('edo.virgolim', 9, 1, 'S', 'carlos.arruda', '2004-07-27 09:33:17');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.lopes', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('luciano.silva', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('kaleb.reis', 5, 1, 'N', 'carlos.arruda', '2004-07-05 19:38:40');
INSERT INTO `permissao_sistema` VALUES ('joe.colombo', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('gustavo.gomes', 17, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('levi.marques', 6, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('elvis.rocha', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('daniel.bispo', 2, 1, 'N', 'carlos.arruda', '2003-10-27 16:54:24');
INSERT INTO `permissao_sistema` VALUES ('patricia.bezerra', 8, 1, 'N', 'carlos.arruda', '2003-12-01 19:19:38');
INSERT INTO `permissao_sistema` VALUES ('alan.scofield', 8, 1, 'N', 'carlos.arruda', '2004-03-17 17:53:23');
INSERT INTO `permissao_sistema` VALUES ('beatriz.arruda', 0, 1, 'N', 'carlos.arruda', '2003-10-28 11:07:29');
INSERT INTO `permissao_sistema` VALUES ('marcelo.moreto', 2, 1, 'N', 'carlos.arruda', '2004-03-17 17:53:52');
INSERT INTO `permissao_sistema` VALUES ('amarildo.souza', 8, 1, 'N', 'carlos.arruda', '2004-05-03 19:02:01');
INSERT INTO `permissao_sistema` VALUES ('gesian.bender', 2, 1, 'N', 'carlos.arruda', '2004-03-17 17:54:30');
INSERT INTO `permissao_sistema` VALUES ('ricardo.martins', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jeferson.golfetto', 3, 1, 'N', 'carlos.arruda', '2004-06-15 21:54:55');
INSERT INTO `permissao_sistema` VALUES ('nixon.santos', 4, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('guilherme.marinho', 0, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('contato', 0, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('domicio.junior', 8, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('eduardo.botelho', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('amanda.mendes', 10, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('lucas.marin', 4, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('janaina.vieira', 4, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('paulo.lima', 3, 1, 'N', 'carlos.arruda', '2004-07-20 17:09:30');
INSERT INTO `permissao_sistema` VALUES ('breno.damasceno', 3, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marco.malaquias', 13, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('lidnaldo.machado', 5, 1, 'N', 'carlos.arruda', '2004-08-03 09:58:32');
INSERT INTO `permissao_sistema` VALUES ('luis.morales', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('eder.lima', 4, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.moralles', 16, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jesliel.rocha', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('frederico.zapelini', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('nivaldo.junior', 12, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('paulo.monteiro', 3, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.thome', 3, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('teste', 5, 1, 'S', 'carlos.arruda', '2004-10-04 13:33:31');
INSERT INTO `permissao_sistema` VALUES ('teste', 0, 1, 'S', 'carlos.arruda', '2004-10-04 14:00:52');
INSERT INTO `permissao_sistema` VALUES ('victor.rades', 3, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('teste1', 5, 1, 'S', 'carlos.arruda', '2004-10-04 14:44:05');
INSERT INTO `permissao_sistema` VALUES ('teste1', 3, 1, 'S', 'carlos.arruda', '2004-10-04 15:36:29');
INSERT INTO `permissao_sistema` VALUES ('teste1', 0, 1, 'S', 'carlos.arruda', '2004-10-04 16:27:29');
INSERT INTO `permissao_sistema` VALUES ('niv', 3, 1, 'S', 'carlos.arruda', '2004-10-04 17:15:59');
INSERT INTO `permissao_sistema` VALUES ('mauricio.costa', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('novoteste', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('teste.nivaldo', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('teste.usuario', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('lf.oliveira', 16, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('luciano.ribeiro', 3, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.oliveira', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('cyntia.nakamura', 6, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.sousa', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('thiago.jost', 4, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('carlos.carvalho', 1, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marcio.lamego', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('pedro.moretti', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('carlos.viana', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('cristiane.florio', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('leandro.caracciolo', 10, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('ricardo.rubini', 15, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('edy.bruno', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('teste.usu2', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('julio.santos', 4, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('francisco.ogatha', 16, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.paulino', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('glauco.sassaki', 9, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.areco', 12, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marcio.paulino', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('bruno.freitas', 1, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jonatan.perim', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('dimas.junior', 11, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.toledo', 13, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fernando.marinho', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('camila.candido', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('daniel.pires', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fabiano.pontes', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marcelo.madruga', 9, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fabricio.silveira', 13, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('liana.duenha', 1, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('alex.wassano', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('felipe.correa', 16, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('og.menezes', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('michele.freitas', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('felipe.chahad', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('paulo.moacir', 11, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('eric.shibayama', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('wagner.alves', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('abner.silva', 9, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('wilfried.schooneman', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jefferson.silva', 16, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('anapaula.chiodaro', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marcel.sobral', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('raphael.araujo', 13, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('helsen.rossi', 6, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('alessandro.gonzalez', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('alexandre.rodrigues', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('agence.ms', 1, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('tiago.stutz', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('davys.fellipe', 14, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fernando.cezar', 14, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('ricardo.silva', 14, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('saulo.coelho', 16, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.soler', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('heber.moreira', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('ricardo.burile', 9, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('moises.rovani', 15, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rafael.sierra', 13, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('leonardo.silva', 14, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marcelo.luz', 13, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('alfeu.vilela', 2, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jonas.morais', 12, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('aline.chastel', 1, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('marcio.oliveira', 10, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('renato.pereira', 2, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jesse.lucas', 13, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('gabriel.verta', 13, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('camilo.silveira', 9, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('evandro.santos', 16, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fernanda.barbosa', 13, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('gustavo.buquio', 15, 1, 'N', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('luiz.cortez', 16, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('jefter.fontes', 5, 1, 'N', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('ricardo.perez', 12, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('andre.bandera', 4, 1, 'N', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('vanessa.souza', 11, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.miranda', 15, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('regiane.domingo', 5, 1, 'N', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('fabio.martins', 6, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('caio.salim', 9, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('rodrigo.sansao', 12, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('angelina.oshiro', 11, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('andre.tinchant', 14, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('ravi.rauber', 4, 1, 'N', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('andrew.silva', 10, 1, 'S', 'carlos.arruda', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('leandro.duprat', 12, 1, 'S', 'contato', '0000-00-00 00:00:00');
INSERT INTO `permissao_sistema` VALUES ('silvio.maraes', 2, 1, 'S', 'contato', '0000-00-00 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
