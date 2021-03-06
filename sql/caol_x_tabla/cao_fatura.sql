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

 Date: 12/12/2018 10:44:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cao_fatura
-- ----------------------------
DROP TABLE IF EXISTS `cao_fatura`;
CREATE TABLE `cao_fatura`  (
  `co_fatura` int(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `co_cliente` int(8) NOT NULL DEFAULT 0,
  `co_sistema` int(8) NOT NULL DEFAULT 0,
  `co_os` int(8) NOT NULL DEFAULT 0,
  `num_nf` int(10) NOT NULL DEFAULT 0,
  `total` float NOT NULL DEFAULT 0,
  `valor` float NOT NULL DEFAULT 0,
  `data_emissao` date NOT NULL,
  `corpo_nf` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `comissao_cn` float NOT NULL DEFAULT 0,
  `total_imp_inc` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`co_fatura`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cao_fatura
-- ----------------------------
INSERT INTO `cao_fatura` VALUES (1, 6947, 181, 394, 433, 7160.36, 6720, '2007-01-25', 'Parcela mensal referente à prestação de serviço de consultoria em processos e integração de sistemas. conforme OS-SF-029', 6, 21);
INSERT INTO `cao_fatura` VALUES (2, 3, 175, 291, 436, 10560.5, 9911, '2007-02-01', 'Referente a 187 horas do mês de janeiro/2007 de alocação de\r\nrecurso java para o desenvolvimento de sistemas para a área de Vendas.', 10, 16);
INSERT INTO `cao_fatura` VALUES (3, 3, 175, 291, 437, 10334.6, 9699, '2007-02-01', 'Referente a 183 horas do mês de janeiro/2007 de alocação do\r\nrecurso Francisco Ogatha em análise/desenvolvimento de sistemas java.', 10, 16);
INSERT INTO `cao_fatura` VALUES (4, 46, 113, 1013, 0, 816, 803.76, '2007-02-05', 'Orbe Investimentos - OS008 – Upgrade – Versão para Investidores Estrangeiros', 10, 0);
INSERT INTO `cao_fatura` VALUES (5, 7028, 240, 994, 432, 7366.65, 6913.6, '2007-01-19', 'parcela 1 de 05 referente OS 01 q contempla o desenvolvimento e implantação do sistema SAAP ', 12, 16);
INSERT INTO `cao_fatura` VALUES (6, 3, 175, 291, 420, 8613.75, 8084, '2007-01-02', 'Referente a 188 horas do mês de dezembro/2006 de alocação de\r\nrecurso java para o desenvolvimento de sistemas para a área de Vendas.', 10, 16);
INSERT INTO `cao_fatura` VALUES (7, 3, 175, 291, 421, 8842.83, 8299, '2007-01-02', 'Referente a 193 horas do mês de dezembro/2006 de alocação do\r\nrecurso Francisco Ogatha em análise/desenvolvimento de sistemas java.', 10, 16);
INSERT INTO `cao_fatura` VALUES (8, 3, 152, 979, 435, 2972.83, 2790, '2007-01-31', 'Referente a 45 horas do mês de janeiro/2007 de treinamento.\r\nacompanhamento. consultoria e Adequações do sistema. In loco.', 10, 16);
INSERT INTO `cao_fatura` VALUES (9, 7007, 207, 735, 438, 2850.76, 2808, '2007-02-07', 'Parcela 3 de 4 referente a OS 001 do desenvolvimento e implantação do Okube Sales e Chamados', 10, 21);
INSERT INTO `cao_fatura` VALUES (10, 7031, 247, 1028, 446, 1700, 1674.5, '2007-02-14', 'manutencao siscon dj', 0, 16);
INSERT INTO `cao_fatura` VALUES (11, 2, 149, 425, 445, 1700, 1674.5, '2007-02-14', 'manutencao siscon dj', 0, 16);
INSERT INTO `cao_fatura` VALUES (12, 3, 175, 291, 449, 8132.13, 7632, '2007-03-05', 'Referente a 144 horas do mês de janeiro/2007 de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas', 10, 16);
INSERT INTO `cao_fatura` VALUES (13, 3, 175, 291, 450, 9826.32, 9222, '2007-03-05', 'Referente a 174 horas do mês de janeiro/2007 de alocação do recurso Francisco Ogatha em análise/desenvolvimento de sistemas java', 10, 16);
INSERT INTO `cao_fatura` VALUES (14, 7007, 207, 735, 451, 2850.76, 2808, '2007-03-08', 'Parcela 4 de 4 referente a OS 001 do desenvolvimento e implantação do Okube Sales e Chamados', 10, 21);
INSERT INTO `cao_fatura` VALUES (15, 7028, 240, 994, 447, 7366.65, 6913.6, '2007-02-16', 'Parcela 02 de 05. referente a OS 001 que contempla o desenvolvimento e a implantação do sistema SAPP - Sistema de Acompanhamento de Projeto Pedagógico', 12, 16);
INSERT INTO `cao_fatura` VALUES (16, 6947, 181, 394, 452, 7227.51, 6783.02, '2007-03-14', 'Elaboração de programas (software). Conforme OS-SF-001. OS-SF-002. OS-SF-005 e OS-SF-028.', 6, 21);
INSERT INTO `cao_fatura` VALUES (17, 6947, 181, 394, 457, 6142.67, 5764.9, '2007-03-14', 'Elaboração de programas (software). Conforme OS-SF-001. OS-SF-002. OS-SF-005 e OS-SF-028 e SF-1024.', 6, 21);
INSERT INTO `cao_fatura` VALUES (18, 7035, 249, 1049, 458, 3476.14, 3424, '2007-03-14', 'Parcela 01 de 02. referente a OS 001 que contempla o desenvolvimento e a implantação do sistema SPO - Sistema de Pedidos OnLine', 15, 16);
INSERT INTO `cao_fatura` VALUES (20, 2, 149, 425, 460, 1700, 1674.5, '2007-03-15', 'Parcela referente a manutenção do mês de fevereiro/2007 das funcionalidades\r\nexistentes no SisconDJ instalado no TJMT', 0, 16);
INSERT INTO `cao_fatura` VALUES (21, 7031, 247, 1028, 461, 1700, 1674.5, '2007-03-15', 'Parcela referente a manutenção do mês de fevereiro/2007 das funcionalidades existentes no SisconDJ instalado no TJAM\r\n', 0, 16);
INSERT INTO `cao_fatura` VALUES (22, 6941, 219, 882, 462, 2800, 2758, '2007-03-15', 'Referente ao mês de dezembro/2006 do recurso Marco Malaquias. código:4500212031. do projeto Outsourcing VIVO', 0, 21);
INSERT INTO `cao_fatura` VALUES (23, 6941, 219, 882, 463, 2940, 2628.99, '2007-03-15', 'Referente ao mês de janeiro/2007 do recurso Marco Malaquias. código:4500212031. do projeto Outsourcing VIVO', 0, 21);
INSERT INTO `cao_fatura` VALUES (24, 3, 166, 1055, 465, 5600, 5255.6, '2007-03-15', 'Parcela 1 de 4 referente a OS 001 de desenvolvimento de upgrade\r\nno sistema. contemplando novas funcionalidades. novos relatórios e ajustes\r\nem relatórios existentes.\r\n', 10, 16);
INSERT INTO `cao_fatura` VALUES (25, 46, 113, 1063, 0, 652.8, 652.8, '2007-03-21', 'Adaptação da estrutura das páginas listadas abaixo. de forma a permitir a perfeita leitura / navegação do seu conteúdo pelo software Mozilla Firefox.', 10, 0);
INSERT INTO `cao_fatura` VALUES (26, 3, 175, 291, 466, 7906.23, 7420, '2007-03-23', 'Referente a 140 horas do mês parcial de março/2007 de alocação\r\ndo recurso Francisco Ogatha em análise/desenvolvimento de sistemas java.', 10, 16);
INSERT INTO `cao_fatura` VALUES (27, 3, 175, 291, 467, 7123.07, 6685, '2007-03-23', 'Referente a 125 horas do mês parcial de março de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas. Incluso também despesas de deslocamento para reunião no CENU (R$ 60.00).', 10, 16);
INSERT INTO `cao_fatura` VALUES (28, 7028, 240, 994, 468, 7366.65, 6913.6, '2007-03-27', 'SAPP - Sistema de Acompanhamento de Projeto Pedagógico.', 12, 16);
INSERT INTO `cao_fatura` VALUES (29, 7030, 243, 1005, 0, 3146.4, 3146.4, '2007-03-29', 'parcela 2 do Website Departida', 15, 0);
INSERT INTO `cao_fatura` VALUES (30, 6991, 126, 989, 0, 759.36, 759.36, '2007-03-29', 'upgrade website riscali- coluna de utilidades', 10, 0);
INSERT INTO `cao_fatura` VALUES (31, 6936, 246, 1027, 470, 2800, 2758, '2007-04-03', 'Sistema de pesquisa e segmentação mercadológica. a ser usada pela Digital Group. junto aos seus clientes.', 10, 16);
INSERT INTO `cao_fatura` VALUES (32, 7039, 251, 1072, 0, 2000, 2000, '2007-04-04', 'concepçao de logomarca e fundo de reserva para website', 15, 0);
INSERT INTO `cao_fatura` VALUES (33, 7007, 207, 735, 471, 2412.18, 2376, '2007-04-09', 'Parcela 1 de 2 referente a OS 002 de desenvolvimento e\r\nimplantação de adequações nos módulos KChamados e KSales do sistema Okube.', 10, 21);
INSERT INTO `cao_fatura` VALUES (34, 7026, 237, 987, 472, 16334.6, 15330, '2007-04-09', 'Parcela única referente a OS de desenvolvimento e implantação do SGV Compact\r\n(Emplacamentos) conforme OS 001', 14, 16);
INSERT INTO `cao_fatura` VALUES (35, 6947, 181, 394, 473, 7358.3, 6905.76, '2007-04-10', 'Elaboracao de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005. OS-SF-028 e SF-1024.', 6, 21);
INSERT INTO `cao_fatura` VALUES (36, 6947, 181, 342, 478, 5488.76, 5151.2, '2007-04-10', 'Elaboracao de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005. OS-SF-028 e SF-1024.', 6, 21);
INSERT INTO `cao_fatura` VALUES (37, 7007, 207, 986, 479, 2412.18, 2376, '2007-04-10', 'Parcela 2 de 2 referente a OS 002 de desenvolvimento e implantação de adequações nos módulos KChamados e KSales do sistema Okube.', 10, 21);
INSERT INTO `cao_fatura` VALUES (38, 7007, 207, 1036, 480, 997.34, 936, '2007-04-16', 'Parcela única referente a OS 004 de desenvolvimento e implantação de adequações no módulo KChamados do sistema Okube.\r\n', 10, 21);
INSERT INTO `cao_fatura` VALUES (39, 2, 102, 676, 481, 1700, 1674.5, '2007-04-16', 'Parcela referente a manutenção do mês de março/2007 das funcionalidades\r\nexistentes no SisconDJ instalado no TJMT', 0, 16);
INSERT INTO `cao_fatura` VALUES (40, 7031, 247, 1028, 481, 1700, 1674.5, '2007-04-16', 'Parcela referente a manutenção do mês de março/2007 das funcionalidades\r\nexistentes no SisconDJ instalado no TJAM', 0, 16);
INSERT INTO `cao_fatura` VALUES (41, 3, 152, 979, 483, 2203.05, 2170, '2007-04-16', 'Referente a 35 horas do mês de março até 16/abril de 2007 de treinamento. acompanhamento. consultoria e Adequações do sistema. In loco', 10, 16);
INSERT INTO `cao_fatura` VALUES (42, 7022, 254, 1085, 483, 2785.79, 2744, '2007-04-17', 'Parcela 01 de 02. referente a OS 001 que contempla o desenvolvimento e a implantação do Website My Fair Lady', 15, 21);
INSERT INTO `cao_fatura` VALUES (43, 7028, 240, 994, 485, 7366.65, 6913.6, '2007-04-23', 'SAPP - Sistema de Acompanhamento de Projeto Pedagógico', 12, 16);
INSERT INTO `cao_fatura` VALUES (44, 6947, 181, 342, 486, 7160.36, 6720, '2007-04-24', 'Parcela mensal referente à prestação de serviço de consultoria em processos e integração de sistemas. conforme OS-SF-029', 6, 21);
INSERT INTO `cao_fatura` VALUES (45, 3, 166, 1055, 487, 10407, 9766.97, '2007-04-25', 'Parcela 2 de 4 referente a OS 001 de desenvolvimento de upgrade no sistema. contemplando novas funcionalidades. novos relatórios e ajustes em relatórios existentes.\r\n', 10, 16);
INSERT INTO `cao_fatura` VALUES (46, 7038, 256, 1094, 488, 2833.33, 2790.83, '2007-04-27', 'consultoria de processos. análise de sistemas e elaboração de documentos', 15, 16);
INSERT INTO `cao_fatura` VALUES (47, 6936, 253, 1082, 489, 2000, 1970, '2007-05-02', 'Projeto “O Melhor Lugar do Mundo\"', 10, 16);
INSERT INTO `cao_fatura` VALUES (48, 3, 175, 291, 490, 11859.3, 11130, '2007-05-02', 'Referente a 210 horas do mês de março (23/3/2007. 26/3/2007. 27/3/2007. 28/3/2007. 29/3/2007 e 30/3/2007) e de abril de 2007 de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas.', 9, 16);
INSERT INTO `cao_fatura` VALUES (49, 3, 175, 291, 491, 12028.8, 11289, '2007-05-02', 'Referente a 213 horas do mês de março (23/3/2007. 26/3/2007. 27/3/2007. 28/3/2007. 29/3/2007 e 30/3/2007) e abril/2007 de alocação do recurso Francisco Ogatha em análise/desenvolvimento de sistemas java.', 9, 16);
INSERT INTO `cao_fatura` VALUES (50, 6936, 246, 1027, 492, 2800, 2758, '2007-05-02', 'Referente à segunda parcela do projeto Sistema Digital Pesquisa', 10, 16);
INSERT INTO `cao_fatura` VALUES (51, 2, 149, 1090, 493, 2976, 2931.36, '2007-05-02', 'Parcela única referente a OS 15 de desenvolvimento e implantação de upgrade na versão 2.0 do sisconDJ.\r\n', 10, 16);
INSERT INTO `cao_fatura` VALUES (52, 7043, 258, 1102, 494, 7989.34, 7498, '2007-05-07', 'Parcela 1 de 2 referente a OS 001 de desenvolvimento e implantação do portal colaborativo da Assurant. UFI (Universo Finance & Insurance).\r\n', 14, 16);
INSERT INTO `cao_fatura` VALUES (53, 7039, 251, 1073, 0, 2000, 2000, '2007-05-08', 'segunda parcela de desenvolvimento do website search RH', 15, 0);
INSERT INTO `cao_fatura` VALUES (54, 6947, 181, 394, 495, 7255.57, 6809.35, '2007-05-08', 'Elaboracao de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005. OS-SF-028 e SF-1024', 6, 21);
INSERT INTO `cao_fatura` VALUES (55, 6947, 181, 394, 500, 6002.4, 5633.25, '2007-05-08', 'Elaboração de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005. OS-SF-028 e SF-1024', 6, 21);
INSERT INTO `cao_fatura` VALUES (56, 7044, 259, 1108, 0, 685.44, 685.44, '2007-05-10', 'desenvolvimento de sistema de monitoramento de BC', 15, 0);
INSERT INTO `cao_fatura` VALUES (57, 3, 166, 1055, 501, 7991.48, 7500, '2007-05-15', 'Parcela 3 de 4 referente a OS 001 de desenvolvimento de upgrade no sistema. contemplando novas funcionalidades. novos relatórios e ajustes em relatórios existentes.\r\n', 10, 16);
INSERT INTO `cao_fatura` VALUES (58, 2, 149, 425, 502, 1700, 1674.5, '2007-05-17', 'Parcela referente a manutenção do mês de abril-maio/2007 das funcionalidades existentes no SisconDJ instalado no TJMT', 0, 16);
INSERT INTO `cao_fatura` VALUES (59, 7031, 247, 1028, 503, 1700, 1674.5, '2007-05-17', 'Parcela referente a manutenção do mês de abril-maio/2007 das funcionalidades existentes no SisconDJ instalado no TJAM\r\n', 0, 16);
INSERT INTO `cao_fatura` VALUES (60, 7028, 240, 994, 505, 7366.65, 6913.6, '2007-05-21', 'SAPP - Sistema de Acompanhamento de Projeto Pedagógico', 12, 16);
INSERT INTO `cao_fatura` VALUES (61, 7022, 254, 1085, 506, 2785.79, 2744, '2007-05-21', 'Parcela 02 de 02. referente a OS 001 que contempla o desenvolvimento e a implantação do Website My Fair Lady', 15, 21);
INSERT INTO `cao_fatura` VALUES (62, 7038, 256, 1094, 508, 2833.33, 2790.83, '2007-05-29', 'Consultoria de processos. análise de sistemas e elaboração de documentos', 15, 16);
INSERT INTO `cao_fatura` VALUES (63, 992, 260, 1112, 509, 25577, 24004, '2007-05-30', 'Desenvolvimento e Implantação do Hotsite Sadia Club', 8, 21);
INSERT INTO `cao_fatura` VALUES (64, 6936, 246, 1027, 510, 2800, 2758, '2007-06-01', 'Referente à terceira parcela do projeto Sistema Digital Pesquisa', 10, 16);
INSERT INTO `cao_fatura` VALUES (65, 6936, 253, 1082, 511, 2000, 1970, '2007-06-01', 'Projeto “O Melhor Lugar do Mundo\"', 10, 16);
INSERT INTO `cao_fatura` VALUES (66, 7040, 252, 1079, 512, 2968.02, 2923.5, '2007-06-01', 'Parcela 01 de 04. referente a OS 001 que contempla o desenvolvimento e a implantação do SPO - Sistema de Pedidos Online da Compactor.', 14, 16);
INSERT INTO `cao_fatura` VALUES (67, 3, 175, 291, 513, 10729.9, 10070, '2007-06-01', 'Referente a 190 horas do mês de maio/2007 de alocação do recurso Francisco Ogatha em análise/desenvolvimento de sistemas java', 10, 16);
INSERT INTO `cao_fatura` VALUES (68, 3, 175, 291, 514, 11633.5, 10918, '2007-06-01', 'Referente a 206 horas do mês de maio de 2007 de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas', 10, 16);
INSERT INTO `cao_fatura` VALUES (69, 46, 113, 1128, 0, 488, 488, '2007-06-11', 'OS 010 - Upgrade -> Inclusão de Novo Fundo de Investimento', 10, 0);
INSERT INTO `cao_fatura` VALUES (70, 7031, 247, 999, 515, 6425, 6029.86, '2007-06-11', 'Parcela 1 de 2 referente consultoria e desenvolvimento de adequações SisconDJ 2.0 para a Lei Federal 10.819/2003.', 10, 16);
INSERT INTO `cao_fatura` VALUES (71, 6947, 181, 394, 516, 6249.89, 5865.52, '2007-06-12', 'Elaboracao de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005 e OS-SF-028.', 6, 21);
INSERT INTO `cao_fatura` VALUES (73, 7047, 264, 1150, 523, 2880.73, 2837.52, '2007-06-14', 'Parcela 01 de 05. referente a OS 001 que contempla Refactoring e Redesign do Website Chevrolet Nova e dos cinco Hotsites de frotistas mantidos pelo grupo (Citiclub. CIMEB. Central do Hoteleiro. Novartis e Unilever).', 14, 21);
INSERT INTO `cao_fatura` VALUES (74, 2, 149, 425, 524, 1700, 1674.5, '2007-06-18', 'Parcela referente a manutenção do mês de maio-junho/2007 das funcionalidades existentes no SisconDJ instalado no TJMT', 0, 16);
INSERT INTO `cao_fatura` VALUES (75, 7043, 258, 1102, 526, 7989.34, 7498, '2007-06-18', 'Parcela 2 de 2 referente a OS 001 de desenvolvimento e implantação do portal colaborativo da Assurant. UFI (Universo Finance & Insurance).\r\n', 14, 16);
INSERT INTO `cao_fatura` VALUES (76, 6991, 126, 1156, 0, 350, 350, '2007-06-25', 'upgrade CMS.', 10, 0);
INSERT INTO `cao_fatura` VALUES (77, 7046, 263, 1147, 528, 3650, 3595.25, '2007-06-27', 'Parcela 1 de 4 referente a OS 001 de transposição do fonte java do site atual Zion para o novo site desenvolvido pela Click', 14, 21);
INSERT INTO `cao_fatura` VALUES (78, 7048, 270, 1157, 0, 2640, 2640, '2007-06-28', 'Parcela 1/10 de Sistemas Web Doup.', 13, 0);
INSERT INTO `cao_fatura` VALUES (79, 7049, 271, 1167, 0, 802.37, 802.37, '2007-06-28', 'OS001 Plataforma Moodle -> Upgrade', 15, 0);
INSERT INTO `cao_fatura` VALUES (80, 7042, 272, 1169, 0, 640, 640, '2007-06-29', 'desenvolvimento do website Tecnutri - parcela 1/5', 10, 0);
INSERT INTO `cao_fatura` VALUES (81, 6983, 205, 1170, 0, 400, 400, '2007-06-29', 'implementações do website Fitoguard', 5, 0);
INSERT INTO `cao_fatura` VALUES (82, 7040, 252, 1079, 529, 2968.02, 2923.5, '2007-07-02', 'Parcela 02 de 04. referente a OS 001 que contempla o desenvolvimento e a implantação do SPO - Sistema de Pedidos Online da Compactor.', 14, 16);
INSERT INTO `cao_fatura` VALUES (83, 7038, 256, 1094, 530, 2833.33, 2790.83, '2007-07-02', 'consultoria de processos. análise de sistemas e geração de documentos', 15, 16);
INSERT INTO `cao_fatura` VALUES (84, 3, 152, 1135, 531, 1258.88, 1240, '2007-07-04', 'Referente a 20 horas de desenvolvimento de upgrade no sistema Fleet Control de MANUTENÇÃO DE DADOS DE ENTRADA / SAÍDA.', 10, 16);
INSERT INTO `cao_fatura` VALUES (85, 3, 175, 291, 532, 10278.1, 9646, '2007-07-04', 'Referente a 182 horas do mês de junho de 2007 de alocação do recurso Francisco Ogatha em análise/desenvolvimento de sistemas java.', 10, 16);
INSERT INTO `cao_fatura` VALUES (86, 3, 175, 859, 533, 9035.7, 8480, '2007-07-04', 'Referente a 160 horas do mês de junho de 2007 de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas.\r\n', 10, 16);
INSERT INTO `cao_fatura` VALUES (87, 4343, 200, 1174, 534, 3045.69, 3000, '2007-07-05', 'Parcela única referente ao desenvolvimento de nova área para sistema SGPF. OS 005 do sistema.', 10, 21);
INSERT INTO `cao_fatura` VALUES (88, 7035, 249, 1049, 535, 3476.14, 3424, '2007-07-06', 'Parcela 02 de 02. referente a OS 001 que contempla o desenvolvimento e a implantação do sistema SPO - Sistema de Pedidos OnLine.\r\n', 15, 16);
INSERT INTO `cao_fatura` VALUES (89, 7043, 258, 1177, 536, 2199.66, 2166.67, '2007-07-09', 'Parcela 1 de 12 referente a OS 002 de hospedagem. manutenção preventiva. corretiva e evolutiva (500 hrs) do Portal UFI.', 8, 16);
INSERT INTO `cao_fatura` VALUES (90, 6945, 173, 1004, 537, 150, 147.75, '2007-07-09', 'adaptacao do menu', 10, 16);
INSERT INTO `cao_fatura` VALUES (92, 7040, 252, 1190, 539, 2883.34, 2568, '2007-07-10', 'Referente a OS 002 que contempla um upgrade no desenvolvimento e a implantação do SPO - Sistema de Pedidos Online da Compactor.', 10, 16);
INSERT INTO `cao_fatura` VALUES (93, 7031, 247, 999, 540, 6425, 6029.86, '2007-07-12', 'Parcela 2 de 2 referente consultoria e desenvolvimento de adequações SisconDJ 2.0 para a Lei Federal 10.819/2003.', 10, 16);
INSERT INTO `cao_fatura` VALUES (94, 3, 175, 1194, 541, 3090.04, 2900, '2007-07-12', 'Parcela 1 de 12 referente a OS 001 de suporte. manutenção preventiva. corretiva e evolutiva dos sistemas Toyota (600 hrs). Sistemas sobre a gestão de Vanderlei Caetano.\r\n', 7, 16);
INSERT INTO `cao_fatura` VALUES (95, 46, 113, 1175, 0, 3056, 3056, '2007-07-12', 'OS011 – Refactoring / Redesign do Website e Administração', 10, 0);
INSERT INTO `cao_fatura` VALUES (96, 2, 102, 1202, 542, 2912, 2868.32, '2007-07-16', 'Parcela 1 de 2 referente a OS 16 de desenvolvimento e implantação de upgrade na versão 2.0 do sisconDJ MT.', 10, 16);
INSERT INTO `cao_fatura` VALUES (97, 2, 102, 1202, 543, 1700, 1674.5, '2007-07-16', 'Parcela referente a manutenção do mês de junho-julho/2007 das funcionalidades existentes no SisconDJ instalado no TJMT.\r\n', 0, 16);
INSERT INTO `cao_fatura` VALUES (98, 7031, 149, 425, 544, 1700, 1296.69, '2007-07-16', 'Parcela referente a manutenção do mês de junho-julho/2007 das funcionalidades existentes no SisconDJ instalado no TJAM.', 0, 16);
INSERT INTO `cao_fatura` VALUES (99, 7046, 263, 1147, 551, 3650, 3595.25, '2007-07-17', 'Parcela 2 de 4 referente a OS 001 de transposição do fonte java do site atual Zion para o novo site desenvolvido pela Click.', 14, 21);
INSERT INTO `cao_fatura` VALUES (100, 7047, 264, 1150, 552, 2880.73, 2837.52, '2007-07-23', 'Parcela 02 de 05. referente a OS 001 que contempla Refactoring e Redesign do Website Chevrolet Nova e dos cinco Hotsites de frotistas mantidos pelo grupo (Citiclub. CIMEB. Central do Hoteleiro. Novartis e Unilever).', 14, 21);
INSERT INTO `cao_fatura` VALUES (101, 7050, 275, 1195, 0, 630, 630, '2007-07-25', 'Banco de 150 horas para a empresa Sina Enxovais. Parcela 1/10', 15, 0);
INSERT INTO `cao_fatura` VALUES (102, 6949, 262, 1143, 554, 58200, 54620.7, '2007-07-30', 'Desenvolvimento e implantação das seguintes tarefas/funcionalidades:\r\n\r\n- Ferramenta PEX - sistema de automação (15.000.00)\r\n- Manutenção corretiva (12 meses) (13.200.00)\r\n- Manutenção evolutiva (500 horas) (30.000.00)\r\n\r\ncódigo do fornecedor: 3024729\r\nNº do pedido: 4500331026\r\ndata de emissão do pedido: 15/06/2007', 5, 16);
INSERT INTO `cao_fatura` VALUES (103, 3, 175, 291, 555, 10069.3, 9450, '2007-08-01', 'Referente a 180 horas do mês de julho de 2007 de alocação do recurso Francisco Ogatha em análise/desenvolvimento de sistemas java.\r\n', 10, 16);
INSERT INTO `cao_fatura` VALUES (104, 3, 175, 859, 556, 9882.79, 9275, '2007-08-01', 'Referente a 175 horas do mês de julho de 2007 de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas.', 10, 16);
INSERT INTO `cao_fatura` VALUES (105, 7043, 258, 1177, 557, 2199.66, 2166.67, '2007-08-06', 'Parcela 2 de 12 referente a OS 002 de hospedagem. manutenção preventiva. corretiva e evolutiva (500 hrs) do Portal UFI.', 8, 16);
INSERT INTO `cao_fatura` VALUES (106, 7039, 251, 1236, 0, 336, 336, '2007-08-06', 'Publicação do Clipping Julho/07', 10, 0);
INSERT INTO `cao_fatura` VALUES (107, 7048, 270, 1157, 0, 2640, 2640, '2007-08-02', 'Parcela 2/10 de Sistemas Web Doup', 13, 0);
INSERT INTO `cao_fatura` VALUES (108, 7040, 252, 1079, 558, 2968.02, 2923.5, '2007-08-07', 'Parcela 03 de 04. referente a OS 001 que contempla o desenvolvimento e a implantação do SPO - Sistema de Pedidos Online da Compactor.', 14, 16);
INSERT INTO `cao_fatura` VALUES (109, 7035, 273, 1173, 560, 7160.36, 6720, '2007-08-07', 'Referente a OS 002 que contempla o desenvolvimento e a implantação de sistemas.', 6, 21);
INSERT INTO `cao_fatura` VALUES (110, 46, 113, 1175, 0, 3056, 3056, '2007-08-13', 'OS011 – Refactoring / Redesign do Website e Administração - parcela 2/3', 10, 0);
INSERT INTO `cao_fatura` VALUES (111, 2, 102, 1202, 567, 2912, 2868.32, '2007-08-16', 'Parcela 2 de 2 referente a OS 16 de desenvolvimento e implantação de upgrade na versão 2.0 do sisconDJ MT', 10, 16);
INSERT INTO `cao_fatura` VALUES (112, 2, 102, 1202, 568, 1700, 1674.5, '2007-08-16', 'Parcela referente a manutenção do mês de julho-agosto/2007 das funcionalidades existentes no SisconDJ instalado no TJMT', 0, 16);
INSERT INTO `cao_fatura` VALUES (113, 7031, 149, 425, 569, 1700, 1674.5, '2007-08-16', 'Parcela referente a manutenção do mês de julho-agosto/2007 das funcionalidades existentes no SisconDJ instalado no TJAM.', 0, 16);
INSERT INTO `cao_fatura` VALUES (114, 7046, 263, 1147, 570, 3650, 3595.25, '2007-08-16', 'Parcela 3 de 4 referente a OS 001 de transposição do fonte java do site atual Zion para o novo site desenvolvido pela Click.', 14, 21);
INSERT INTO `cao_fatura` VALUES (115, 3, 175, 1194, 571, 3090.04, 2900, '2007-08-16', 'Parcela 2 de 12 referente a OS 001 de suporte. manutenção preventiva. corretiva e evolutiva dos sistemas Toyota (600 hrs). Sistemas sobre a gestão de Vanderlei Caetano.\r\n', 7, 16);
INSERT INTO `cao_fatura` VALUES (116, 7055, 281, 1243, 0, 1380, 1380, '2007-08-20', 'Qualitec Consultoria Imobiliária Ltda. – Projeto – Redesing do Web Site www.qualitecimoveis.com.br. parcela 1/4', 15, 0);
INSERT INTO `cao_fatura` VALUES (117, 7054, 280, 1242, 572, 2097.65, 2066.19, '2007-08-20', 'Parcela 1 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa', 15, 21);
INSERT INTO `cao_fatura` VALUES (118, 7054, 280, 1242, 573, 524.42, 516.55, '2007-08-20', 'Parcela 1 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.\r\n', 15, 21);
INSERT INTO `cao_fatura` VALUES (119, 7054, 280, 1242, 574, 524.42, 516.55, '2007-08-20', 'Parcela 1 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 15, 21);
INSERT INTO `cao_fatura` VALUES (120, 7054, 280, 1242, 575, 524.42, 516.55, '2007-08-20', 'Parcela 1 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.\r\n', 15, 21);
INSERT INTO `cao_fatura` VALUES (121, 7054, 280, 1242, 576, 1573.25, 1305.8, '2007-08-20', 'Parcela 1 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 15, 21);
INSERT INTO `cao_fatura` VALUES (122, 7048, 270, 1157, 0, 2640, 2640, '2007-08-23', 'Parcela 3/10 de Sistemas Web Doup.', 13, 0);
INSERT INTO `cao_fatura` VALUES (123, 7050, 275, 1195, 0, 630, 630, '2007-08-27', 'Banco de 150 horas para a empresa Sina Enxovais. Parcela 2/10', 15, 0);
INSERT INTO `cao_fatura` VALUES (124, 7052, 278, 1234, 0, 936.66, 936.66, '2007-08-03', 'parcela 1/6 projeto website', 15, 0);
INSERT INTO `cao_fatura` VALUES (125, 7049, 271, 1260, 0, 595.2, 595.2, '2007-08-29', 'Em 3 pagamentos iguais de R$ 595.20 sendo o primeiro a vista em 30 e 60 dias após o primeiro pagamento.', 10, 0);
INSERT INTO `cao_fatura` VALUES (126, 7047, 264, 1150, 579, 2880.73, 2837.52, '2007-08-31', 'Parcela 03 de 05. referente a OS 001 que contempla Refactoring e Redesign do Website Chevrolet Nova e dos cinco Hotsites de frotistas mantidos pelo grupo (Citiclub. CIMEB. Central do Hoteleiro. Novartis e Unilever).\r\n', 14, 21);
INSERT INTO `cao_fatura` VALUES (128, 3, 175, 291, 581, 10955.8, 10282, '2007-09-03', 'Referente a 194 horas do mês de agosto/2007 de alocação do recurso Francisco Ogatha em análise/desenvolvimento de sistemas java.', 10, 16);
INSERT INTO `cao_fatura` VALUES (129, 3, 175, 859, 582, 10391, 9752, '2007-09-03', 'Referente a 184 horas do mês de agosto de 2007 de alocação de recurso java para o desenvolvimento de sistemas para a área de Vendas.', 10, 16);
INSERT INTO `cao_fatura` VALUES (133, 6796, 282, 1247, 585, 9589.77, 9000, '2007-09-03', 'Parcela 1 de 4 referente a OS 001 de Desenvolvimento e implantação do Sistema de Acompanhamento On-Line.', 12, 21);
INSERT INTO `cao_fatura` VALUES (137, 3, 175, 1266, 588, 6073.52, 5700, '2007-09-04', 'Parcela 1 de 2 referente a OS 012 de Consultoria em pesquisa e análise dos ERPs utilizados pelas concessionárias Toyota.', 9, 16);
INSERT INTO `cao_fatura` VALUES (138, 7028, 240, 1161, 589, 2411.17, 2375, '2007-09-04', 'Referente a OS 002 que contempla manutenção do sitema web SAPP – Sistema de Acompanhamento de Projeto Pedagógico.', 10, 16);
INSERT INTO `cao_fatura` VALUES (139, 6936, 250, 1050, 590, 5320, 4992.82, '2007-09-04', 'Desenvolvimento de sistema administrativo para o website da JICA – Agência de Cooperação Internacional do Japão.', 10, 16);
INSERT INTO `cao_fatura` VALUES (140, 7053, 279, 1238, 591, 6925.95, 6500, '2007-09-05', 'Referente à 125 horas do mês de agosto/2007 de alocação do recurso André Tinchant em análise/desenvolvimento de sistemas na linguagem .Net C#.\r\n \r\n', 10, 27);
INSERT INTO `cao_fatura` VALUES (141, 7053, 279, 1238, 592, 5370.27, 5040, '2007-09-05', 'Referente à 120 horas do mês de agosto/2007 de alocação do recurso Rodrigo Caio Salim Valenzuela em diagramação. recorte e construção em HTML.', 10, 27);
INSERT INTO `cao_fatura` VALUES (142, 7040, 252, 1079, 593, 2968.02, 2923.5, '2007-09-05', 'Parcela 04 de 04. referente a OS 001 que contempla o desenvolvimento e a implantação do SPO - Sistema de Pedidos Online da Compactor.', 14, 16);
INSERT INTO `cao_fatura` VALUES (143, 7040, 252, 1079, 594, 3192.33, 2996, '2007-09-05', 'Referente a OS 003 que contempla um upgrade no desenvolvimento e a implantação do SPO - Sistema de Pedidos Online da Compactor.', 10, 16);
INSERT INTO `cao_fatura` VALUES (144, 7035, 257, 1098, 595, 7160.36, 6720, '2007-09-05', 'Referente ao mês de Agosto/07 da OS 002 que contempla o desenvolvimento e a implantação de sistemas.', 10, 21);
INSERT INTO `cao_fatura` VALUES (145, 7052, 278, 1234, 0, 936.66, 936.66, '2007-09-05', 'parcela 2/6 projeto website', 15, 0);
INSERT INTO `cao_fatura` VALUES (146, 7043, 258, 1177, 596, 2199.66, 2166.67, '2007-09-11', 'Parcela 3 de 12 referente a OS 002 de hospedagem. manutenção preventiva. corretiva e evolutiva (500 hrs) do Portal UFI.', 8, 16);
INSERT INTO `cao_fatura` VALUES (147, 3, 175, 1194, 597, 3090.04, 2900, '2007-09-11', 'Parcela 3 de 12 referente a OS 001 de suporte. manutenção preventiva. corretiva e evolutiva dos sistemas Toyota (600 hrs). Sistemas sobre a gestão de Vanderlei Caetano.', 7, 16);
INSERT INTO `cao_fatura` VALUES (148, 6947, 181, 394, 598, 6245.46, 5861.36, '2007-09-12', 'Elaboracao de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005. OS-SF-028.', 6, 21);
INSERT INTO `cao_fatura` VALUES (149, 6947, 181, 394, 603, 5085.99, 4773.2, '2007-09-12', 'Elaboracao de programas software. Conforme OS-SF-001. OS-SF-002. OS-SF-005. OS-SF-028.', 6, 21);
INSERT INTO `cao_fatura` VALUES (150, 7056, 284, 1269, 0, 2539.77, 2539.77, '2007-09-13', 'pagamento da 1ª parcela de 5 do Website Perfin', 14, 0);
INSERT INTO `cao_fatura` VALUES (151, 2, 102, 1202, 604, 1700, 1674.5, '2007-09-14', 'Parcela referente a manutenção do mês de agosto-setembro/2007 das funcionalidades existentes no SisconDJ instalado no TJMT', 0, 16);
INSERT INTO `cao_fatura` VALUES (152, 7031, 149, 425, 605, 1700, 1674.5, '2007-09-14', 'Parcela referente a manutenção do mês de agosto-setembro/2007 das funcionalidades existentes no SisconDJ instalado no TJAM.', 0, 16);
INSERT INTO `cao_fatura` VALUES (153, 3, 166, 1055, 606, 7991.48, 7500, '2007-09-14', 'Parcela 4 de 4 referente a OS 001 de desenvolvimento de upgrade no sistema. contemplando novas funcionalidades. novos relatórios e ajustes em relatórios existentes.', 8, 16);
INSERT INTO `cao_fatura` VALUES (154, 7046, 263, 1147, 607, 3650, 3595.25, '2007-09-14', 'Parcela 4 de 4 referente a OS 001 de transposição do fonte java do site atual Zion para o novo site desenvolvido pela Click.\r\n', 14, 21);
INSERT INTO `cao_fatura` VALUES (155, 7054, 280, 1242, 608, 2097.65, 2066.19, '2007-09-17', 'Parcela 2 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 13, 21);
INSERT INTO `cao_fatura` VALUES (156, 7054, 280, 1242, 609, 524.42, 516.55, '2007-09-17', 'Parcela 2 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 13, 21);
INSERT INTO `cao_fatura` VALUES (157, 7054, 280, 1242, 610, 524.42, 516.55, '2007-09-17', 'Parcela 2 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 13, 21);
INSERT INTO `cao_fatura` VALUES (158, 7054, 280, 1242, 611, 524.42, 516.55, '2007-09-17', 'Parcela 2 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 13, 21);
INSERT INTO `cao_fatura` VALUES (159, 7054, 280, 1242, 612, 1573.25, 1305.8, '2007-09-17', 'Parcela 2 de 5 referente a OS 001 de Desenvolvimento e implantação do portal da empresa.', 13, 21);
INSERT INTO `cao_fatura` VALUES (160, 7048, 270, 1157, 0, 2640, 2640, '2007-09-17', 'Parcela 4/10 de Sistemas Web Doup.', 13, 0);
INSERT INTO `cao_fatura` VALUES (161, 3, 283, 1265, 613, 9990, 9375.62, '2007-09-18', 'Parcela 1 de 6 referente a OS 001 de Desenvolvimento e implantação do Portal Toyota VD.', 5, 16);
INSERT INTO `cao_fatura` VALUES (162, 7058, 289, 1278, 614, 536, 527.96, '2007-09-18', 'Parcela 01 de 02. referente a OS 001 que contempla ajustes no site da Antares Capital.', 15, 21);
INSERT INTO `cao_fatura` VALUES (163, 7057, 286, 1272, 615, 3426.4, 3375, '2007-09-18', 'Parcela 01 de 02. referente ao Setup da OS 001 que contempla o desenvolvimento da Intranet do Grupo Brabus.', 15, 21);

SET FOREIGN_KEY_CHECKS = 1;
