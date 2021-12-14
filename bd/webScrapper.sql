-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.21-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para repcom
CREATE DATABASE IF NOT EXISTS `repcom` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `repcom`;

-- Copiando estrutura para tabela repcom.tb_cep
CREATE TABLE IF NOT EXISTS `tb_cep` (
  `id_CEP` int(11) NOT NULL AUTO_INCREMENT,
  `str_CEP` varchar(20) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_CEP`),
  KEY `FK_CEP_cidade` (`id_cidade`),
  CONSTRAINT `FK_CEP_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `tb_cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=978 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela repcom.tb_cep: ~977 rows (aproximadamente)
DELETE FROM `tb_cep`;
/*!40000 ALTER TABLE `tb_cep` DISABLE KEYS */;
INSERT INTO `tb_cep` (`id_CEP`, `str_CEP`, `id_cidade`) VALUES
	(1, '13333050', 1),
	(2, '13333055', 1),
	(3, '13333070', 1),
	(4, '13333080', 1),
	(5, '13333090', 1),
	(6, '13333100', 1),
	(7, '13333110', 1),
	(8, '13333120', 1),
	(9, '13333130', 1),
	(10, '13333140', 1),
	(11, '13333150', 1),
	(12, '13333200', 1),
	(13, '13333201', 1),
	(14, '13333210', 1),
	(15, '13333220', 1),
	(16, '13333230', 1),
	(17, '13333240', 1),
	(18, '13333245', 1),
	(19, '13333246', 1),
	(20, '13333250', 1),
	(21, '13333260', 1),
	(22, '13333270', 1),
	(23, '13333280', 1),
	(24, '13333290', 1),
	(25, '13333295', 1),
	(26, '13333296', 1),
	(27, '13333297', 1),
	(28, '13333300', 1),
	(29, '13333310', 1),
	(30, '13333320', 1),
	(31, '13333330', 1),
	(32, '13333340', 1),
	(33, '13333350', 1),
	(34, '13333360', 1),
	(35, '13333370', 1),
	(36, '13333380', 1),
	(37, '13333390', 1),
	(38, '13333395', 1),
	(39, '13333400', 1),
	(40, '13333410', 1),
	(41, '13333420', 1),
	(42, '13333430', 1),
	(43, '13335340', 1),
	(44, '13335345', 1),
	(45, '13335350', 1),
	(46, '13335360', 1),
	(47, '13335361', 1),
	(48, '13335362', 1),
	(49, '13335363', 1),
	(50, '13335364', 1),
	(51, '13335365', 1),
	(52, '13335368', 1),
	(53, '13335369', 1),
	(54, '13335370', 1),
	(55, '13335380', 1),
	(56, '13335390', 1),
	(57, '13335400', 1),
	(58, '13335410', 1),
	(59, '13335500', 1),
	(60, '13335510', 1),
	(61, '13335520', 1),
	(62, '13335530', 1),
	(63, '13335540', 1),
	(64, '13335541', 1),
	(65, '13335542', 1),
	(66, '13335543', 1),
	(67, '13335544', 1),
	(68, '13335545', 1),
	(69, '13335546', 1),
	(70, '13335547', 1),
	(71, '13335548', 1),
	(72, '13335550', 1),
	(73, '13335552', 1),
	(74, '13335555', 1),
	(75, '13335560', 1),
	(76, '13335570', 1),
	(77, '13335580', 1),
	(78, '13335590', 1),
	(79, '13335600', 1),
	(80, '13335610', 1),
	(81, '13335620', 1),
	(82, '13335630', 1),
	(83, '13335635', 1),
	(84, '13335640', 1),
	(85, '13336266', 1),
	(86, '13336267', 1),
	(87, '13336268', 1),
	(88, '13336269', 1),
	(89, '13336270', 1),
	(90, '13336271', 1),
	(91, '13336272', 1),
	(92, '13336273', 1),
	(93, '13336274', 1),
	(94, '13336275', 1),
	(95, '13336276', 1),
	(96, '13336300', 1),
	(97, '13336303', 1),
	(98, '13336306', 1),
	(99, '13336309', 1),
	(100, '13336312', 1),
	(101, '13336315', 1),
	(102, '13336318', 1),
	(103, '13336322', 1),
	(104, '13336325', 1),
	(105, '13336328', 1),
	(106, '13336331', 1),
	(107, '13336334', 1),
	(108, '13336337', 1),
	(109, '13336340', 1),
	(110, '13336345', 1),
	(111, '13336348', 1),
	(112, '13336351', 1),
	(113, '13336354', 1),
	(114, '13336357', 1),
	(115, '13336360', 1),
	(116, '13336362', 1),
	(117, '13336365', 1),
	(118, '13336400', 1),
	(119, '13336401', 1),
	(120, '13336402', 1),
	(121, '13336403', 1),
	(122, '13336404', 1),
	(123, '13336405', 1),
	(124, '13336406', 1),
	(125, '13336407', 1),
	(126, '13336408', 1),
	(127, '13336410', 1),
	(128, '13336430', 1),
	(129, '13336431', 1),
	(130, '13336432', 1),
	(131, '13336433', 1),
	(132, '13336434', 1),
	(133, '13336435', 1),
	(134, '13336436', 1),
	(135, '13336437', 1),
	(136, '13336438', 1),
	(137, '13336440', 1),
	(138, '13336500', 1),
	(139, '13336501', 1),
	(140, '13336502', 1),
	(141, '13336503', 1),
	(142, '13336504', 1),
	(143, '13336505', 1),
	(144, '13336508', 1),
	(145, '13336510', 1),
	(146, '13336511', 1),
	(147, '13336512', 1),
	(148, '13336513', 1),
	(149, '13336514', 1),
	(150, '13336520', 1),
	(151, '13336521', 1),
	(152, '13336522', 1),
	(153, '13336523', 1),
	(154, '13336524', 1),
	(155, '13336525', 1),
	(156, '13336526', 1),
	(157, '13336527', 1),
	(158, '13336528', 1),
	(159, '13336529', 1),
	(160, '13336600', 1),
	(161, '13336601', 1),
	(162, '13336602', 1),
	(163, '13336603', 1),
	(164, '13336604', 1),
	(165, '13336610', 1),
	(166, '13336650', 1),
	(167, '13337144', 1),
	(168, '13337145', 1),
	(169, '13337146', 1),
	(170, '13337147', 1),
	(171, '13337148', 1),
	(172, '13337149', 1),
	(173, '13337160', 1),
	(174, '13337161', 1),
	(175, '13337162', 1),
	(176, '13337163', 1),
	(177, '13337164', 1),
	(178, '13337165', 1),
	(179, '13337166', 1),
	(180, '13337167', 1),
	(181, '13337200', 1),
	(182, '13337210', 1),
	(183, '13337211', 1),
	(184, '13337212', 1),
	(185, '13337213', 1),
	(186, '13337214', 1),
	(187, '13337230', 1),
	(188, '13337231', 1),
	(189, '13337232', 1),
	(190, '13337235', 1),
	(191, '13337240', 1),
	(192, '13337250', 1),
	(193, '13337251', 1),
	(194, '13337252', 1),
	(195, '13337253', 1),
	(196, '13337254', 1),
	(197, '13337255', 1),
	(198, '13337256', 1),
	(199, '13337257', 1),
	(200, '13337258', 1),
	(201, '13337259', 1),
	(202, '13337260', 1),
	(203, '13337300', 1),
	(204, '13337304', 1),
	(205, '13337305', 1),
	(206, '13337315', 1),
	(207, '13337320', 1),
	(208, '13337330', 1),
	(209, '13337410', 1),
	(210, '13337411', 1),
	(211, '13337412', 1),
	(212, '13337413', 1),
	(213, '13337414', 1),
	(214, '13337415', 1),
	(215, '13337416', 1),
	(216, '13337417', 1),
	(217, '13337418', 1),
	(218, '13337419', 1),
	(219, '13337420', 1),
	(220, '13337421', 1),
	(221, '13337422', 1),
	(222, '13337423', 1),
	(223, '13337424', 1),
	(224, '13337425', 1),
	(225, '13337426', 1),
	(226, '13337427', 1),
	(227, '13337550', 1),
	(228, '13337552', 1),
	(229, '13337560', 1),
	(230, '13337561', 1),
	(231, '13337562', 1),
	(232, '13337563', 1),
	(233, '13337564', 1),
	(234, '13337565', 1),
	(235, '13337570', 1),
	(236, '13338010', 1),
	(237, '13338020', 1),
	(238, '13338041', 1),
	(239, '13338047', 1),
	(240, '13338048', 1),
	(241, '13338050', 1),
	(242, '13338100', 1),
	(243, '13338110', 1),
	(244, '13338120', 1),
	(245, '13338130', 1),
	(246, '13338140', 1),
	(247, '13338150', 1),
	(248, '13338160', 1),
	(249, '13338165', 1),
	(250, '13339020', 1),
	(251, '13339030', 1),
	(252, '13339040', 1),
	(253, '13339050', 1),
	(254, '13339060', 1),
	(255, '13339065', 1),
	(256, '13339070', 1),
	(257, '13339080', 1),
	(258, '13339090', 1),
	(259, '13339110', 1),
	(260, '13339125', 1),
	(261, '13339130', 1),
	(262, '13339140', 1),
	(263, '13339150', 1),
	(264, '13339160', 1),
	(265, '13339170', 1),
	(266, '13339180', 1),
	(267, '13339190', 1),
	(268, '13339200', 1),
	(269, '13339210', 1),
	(270, '13339220', 1),
	(271, '13339230', 1),
	(272, '13339240', 1),
	(273, '13339245', 1),
	(274, '13339250', 1),
	(275, '13339260', 1),
	(276, '13339270', 1),
	(277, '13339280', 1),
	(278, '13339290', 1),
	(279, '13339300', 1),
	(280, '13339305', 1),
	(281, '13339310', 1),
	(282, '13339315', 1),
	(283, '13339320', 1),
	(284, '13339330', 1),
	(285, '13339340', 1),
	(286, '13339345', 1),
	(287, '13339350', 1),
	(288, '13339360', 1),
	(289, '13339365', 1),
	(290, '13339370', 1),
	(291, '13339380', 1),
	(292, '13339390', 1),
	(293, '13339400', 1),
	(294, '13339410', 1),
	(295, '13339420', 1),
	(296, '13339430', 1),
	(297, '13339440', 1),
	(298, '13339450', 1),
	(299, '13339465', 1),
	(300, '13339470', 1),
	(301, '13339490', 1),
	(302, '13339500', 1),
	(303, '13339510', 1),
	(304, '13339515', 1),
	(305, '13339520', 1),
	(306, '13339530', 1),
	(307, '13339540', 1),
	(308, '13339545', 1),
	(309, '13339550', 1),
	(310, '13339555', 1),
	(311, '13339560', 1),
	(312, '13339565', 1),
	(313, '13339568', 1),
	(314, '13339572', 1),
	(315, '13339575', 1),
	(316, '13339578', 1),
	(317, '13339582', 1),
	(318, '13339585', 1),
	(319, '13339590', 1),
	(320, '13339600', 1),
	(321, '13339610', 1),
	(322, '13339611', 1),
	(323, '13339612', 1),
	(324, '13339613', 1),
	(325, '13339614', 1),
	(326, '13339615', 1),
	(327, '13339616', 1),
	(328, '13339617', 1),
	(329, '13339618', 1),
	(330, '13339619', 1),
	(331, '13339620', 1),
	(332, '13340102', 1),
	(333, '13340110', 1),
	(334, '13340372', 1),
	(335, '13340373', 1),
	(336, '13340374', 1),
	(337, '13340375', 1),
	(338, '13340376', 1),
	(339, '13340377', 1),
	(340, '13340378', 1),
	(341, '13340379', 1),
	(342, '13340380', 1),
	(343, '13340381', 1),
	(344, '13340382', 1),
	(345, '13340383', 1),
	(346, '13340384', 1),
	(347, '13340385', 1),
	(348, '13340400', 1),
	(349, '13340405', 1),
	(350, '13340450', 1),
	(351, '13340451', 1),
	(352, '13340452', 1),
	(353, '13340480', 1),
	(354, '13340481', 1),
	(355, '13340482', 1),
	(356, '13340483', 1),
	(357, '13340484', 1),
	(358, '13340485', 1),
	(359, '13340486', 1),
	(360, '13340487', 1),
	(361, '13340488', 1),
	(362, '13340500', 1),
	(363, '13340501', 1),
	(364, '13340502', 1),
	(365, '13340503', 1),
	(366, '13340504', 1),
	(367, '13340510', 1),
	(368, '13340520', 1),
	(369, '13340523', 1),
	(370, '13340526', 1),
	(371, '13340530', 1),
	(372, '13340533', 1),
	(373, '13340550', 1),
	(374, '13340555', 1),
	(375, '13340560', 1),
	(376, '13340561', 1),
	(377, '13340562', 1),
	(378, '13340563', 1),
	(379, '13340564', 1),
	(380, '13340569', 1),
	(381, '13340600', 1),
	(382, '13340610', 1),
	(383, '13340612', 1),
	(384, '13340614', 1),
	(385, '13340616', 1),
	(386, '13340618', 1),
	(387, '13340620', 1),
	(388, '13340622', 1),
	(389, '13340624', 1),
	(390, '13340626', 1),
	(391, '13340628', 1),
	(392, '13340630', 1),
	(393, '13340632', 1),
	(394, '13340634', 1),
	(395, '13340636', 1),
	(396, '13340640', 1),
	(397, '13340642', 1),
	(398, '13340645', 1),
	(399, '13340648', 1),
	(400, '13340650', 1),
	(401, '13340660', 1),
	(402, '13340661', 1),
	(403, '13340662', 1),
	(404, '13340663', 1),
	(405, '13340664', 1),
	(406, '13340700', 1),
	(407, '13340701', 1),
	(408, '13340703', 1),
	(409, '13340704', 1),
	(410, '13340705', 1),
	(411, '13340710', 1),
	(412, '13340711', 1),
	(413, '13340712', 1),
	(414, '13340829', 1),
	(415, '13340830', 1),
	(416, '13340831', 1),
	(417, '13340832', 1),
	(418, '13340833', 1),
	(419, '13340834', 1),
	(420, '13340835', 1),
	(421, '13340837', 1),
	(422, '13340850', 1),
	(423, '13340851', 1),
	(424, '13340852', 1),
	(425, '13340853', 1),
	(426, '13340854', 1),
	(427, '13340855', 1),
	(428, '13340856', 1),
	(429, '13340857', 1),
	(430, '13340858', 1),
	(431, '13340859', 1),
	(432, '13340860', 1),
	(433, '13340861', 1),
	(434, '13340862', 1),
	(435, '13340863', 1),
	(436, '13340864', 1),
	(437, '13341000', 1),
	(438, '13341010', 1),
	(439, '13341011', 1),
	(440, '13341012', 1),
	(441, '13341013', 1),
	(442, '13341014', 1),
	(443, '13341020', 1),
	(444, '13341021', 1),
	(445, '13341022', 1),
	(446, '13341030', 1),
	(447, '13341031', 1),
	(448, '13341040', 1),
	(449, '13341041', 1),
	(450, '13341042', 1),
	(451, '13341043', 1),
	(452, '13341044', 1),
	(453, '13341045', 1),
	(454, '13341050', 1),
	(455, '13341051', 1),
	(456, '13341052', 1),
	(457, '13341053', 1),
	(458, '13341100', 1),
	(459, '13341101', 1),
	(460, '13341105', 1),
	(461, '13341110', 1),
	(462, '13341111', 1),
	(463, '13341112', 1),
	(464, '13341113', 1),
	(465, '13341120', 1),
	(466, '13341121', 1),
	(467, '13341122', 1),
	(468, '13341123', 1),
	(469, '13341124', 1),
	(470, '13341126', 1),
	(471, '13341128', 1),
	(472, '13341200', 1),
	(473, '13341201', 1),
	(474, '13341210', 1),
	(475, '13341220', 1),
	(476, '13341221', 1),
	(477, '13341230', 1),
	(478, '13341231', 1),
	(479, '13341232', 1),
	(480, '13341400', 1),
	(481, '13341401', 1),
	(482, '13341450', 1),
	(483, '13341460', 1),
	(484, '13341461', 1),
	(485, '13341462', 1),
	(486, '13341470', 1),
	(487, '13341471', 1),
	(488, '13341472', 1),
	(489, '13341480', 1),
	(490, '13341490', 1),
	(491, '13341491', 1),
	(492, '13341500', 1),
	(493, '13341501', 1),
	(494, '13341502', 1),
	(495, '13341550', 1),
	(496, '13341551', 1),
	(497, '13341552', 1),
	(498, '13341553', 1),
	(499, '13341554', 1),
	(500, '13342465', 1),
	(501, '13342470', 1),
	(502, '13342475', 1),
	(503, '13342480', 1),
	(504, '13342485', 1),
	(505, '13342500', 1),
	(506, '13342505', 1),
	(507, '13342510', 1),
	(508, '13342515', 1),
	(509, '13342520', 1),
	(510, '13343000', 1),
	(511, '13343010', 1),
	(512, '13343020', 1),
	(513, '13343022', 1),
	(514, '13343030', 1),
	(515, '13343040', 1),
	(516, '13343060', 1),
	(517, '13343100', 1),
	(518, '13343150', 1),
	(519, '13343160', 1),
	(520, '13343170', 1),
	(521, '13343180', 1),
	(522, '13343200', 1),
	(523, '13343250', 1),
	(524, '13343260', 1),
	(525, '13343270', 1),
	(526, '13343280', 1),
	(527, '13343290', 1),
	(528, '13343300', 1),
	(529, '13343310', 1),
	(530, '13343320', 1),
	(531, '13343330', 1),
	(532, '13343340', 1),
	(533, '13343344', 1),
	(534, '13343346', 1),
	(535, '13343352', 1),
	(536, '13343355', 1),
	(537, '13343358', 1),
	(538, '13343362', 1),
	(539, '13343400', 1),
	(540, '13343450', 1),
	(541, '13343460', 1),
	(542, '13343470', 1),
	(543, '13343480', 1),
	(544, '13343490', 1),
	(545, '13343495', 1),
	(546, '13343500', 1),
	(547, '13343510', 1),
	(548, '13343520', 1),
	(549, '13343530', 1),
	(550, '13343540', 1),
	(551, '13343550', 1),
	(552, '13343555', 1),
	(553, '13343560', 1),
	(554, '13343570', 1),
	(555, '13343575', 1),
	(556, '13343580', 1),
	(557, '13343585', 1),
	(558, '13343600', 1),
	(559, '13343610', 1),
	(560, '13343620', 1),
	(561, '13343630', 1),
	(562, '13343640', 1),
	(563, '13343649', 1),
	(564, '13343650', 1),
	(565, '13343660', 1),
	(566, '13343670', 1),
	(567, '13343680', 1),
	(568, '13343700', 1),
	(569, '13343710', 1),
	(570, '13343720', 1),
	(571, '13343725', 1),
	(572, '13343730', 1),
	(573, '13343735', 1),
	(574, '13343740', 1),
	(575, '13343741', 1),
	(576, '13343742', 1),
	(577, '13343743', 1),
	(578, '13343744', 1),
	(579, '13343745', 1),
	(580, '13343746', 1),
	(581, '13343780', 1),
	(582, '13343782', 1),
	(583, '13343784', 1),
	(584, '13343800', 1),
	(585, '13343801', 1),
	(586, '13343802', 1),
	(587, '13343803', 1),
	(588, '13343804', 1),
	(589, '13343810', 1),
	(590, '13343811', 1),
	(591, '13343812', 1),
	(592, '13343813', 1),
	(593, '13343815', 1),
	(594, '13343820', 1),
	(595, '13343821', 1),
	(596, '13343822', 1),
	(597, '13343823', 1),
	(598, '13343824', 1),
	(599, '13343825', 1),
	(600, '13343827', 1),
	(601, '13343830', 1),
	(602, '13343835', 1),
	(603, '13343840', 1),
	(604, '13343841', 1),
	(605, '13343842', 1),
	(606, '13343843', 1),
	(607, '13343870', 1),
	(608, '13343873', 1),
	(609, '13344000', 1),
	(610, '13344010', 1),
	(611, '13344020', 1),
	(612, '13344022', 1),
	(613, '13344030', 1),
	(614, '13344040', 1),
	(615, '13344050', 1),
	(616, '13344055', 1),
	(617, '13344060', 1),
	(618, '13344070', 1),
	(619, '13344075', 1),
	(620, '13344080', 1),
	(621, '13344090', 1),
	(622, '13344095', 1),
	(623, '13344100', 1),
	(624, '13344105', 1),
	(625, '13344110', 1),
	(626, '13344115', 1),
	(627, '13344120', 1),
	(628, '13344130', 1),
	(629, '13344140', 1),
	(630, '13344150', 1),
	(631, '13344160', 1),
	(632, '13344170', 1),
	(633, '13344180', 1),
	(634, '13344182', 1),
	(635, '13344189', 1),
	(636, '13344190', 1),
	(637, '13344200', 1),
	(638, '13344210', 1),
	(639, '13344221', 1),
	(640, '13344230', 1),
	(641, '13344241', 1),
	(642, '13344250', 1),
	(643, '13344260', 1),
	(644, '13344270', 1),
	(645, '13344280', 1),
	(646, '13344290', 1),
	(647, '13344300', 1),
	(648, '13344311', 1),
	(649, '13344315', 1),
	(650, '13344321', 1),
	(651, '13344325', 1),
	(652, '13344330', 1),
	(653, '13344340', 1),
	(654, '13344350', 1),
	(655, '13344360', 1),
	(656, '13344371', 1),
	(657, '13344380', 1),
	(658, '13344390', 1),
	(659, '13344400', 1),
	(660, '13344411', 1),
	(661, '13344420', 1),
	(662, '13344425', 1),
	(663, '13344430', 1),
	(664, '13344440', 1),
	(665, '13344450', 1),
	(666, '13344460', 1),
	(667, '13344470', 1),
	(668, '13344480', 1),
	(669, '13344490', 1),
	(670, '13344500', 1),
	(671, '13344511', 1),
	(672, '13344520', 1),
	(673, '13344530', 1),
	(674, '13344540', 1),
	(675, '13344550', 1),
	(676, '13344560', 1),
	(677, '13344565', 1),
	(678, '13344571', 1),
	(679, '13344580', 1),
	(680, '13344600', 1),
	(681, '13344605', 1),
	(682, '13344610', 1),
	(683, '13344620', 1),
	(684, '13344630', 1),
	(685, '13344633', 1),
	(686, '13344635', 1),
	(687, '13344638', 1),
	(688, '13344642', 1),
	(689, '13344645', 1),
	(690, '13344648', 1),
	(691, '13344650', 1),
	(692, '13344652', 1),
	(693, '13344655', 1),
	(694, '13344658', 1),
	(695, '13344660', 1),
	(696, '13344663', 1),
	(697, '13344666', 1),
	(698, '13344675', 1),
	(699, '13345000', 1),
	(700, '13345001', 1),
	(701, '13345002', 1),
	(702, '13345004', 1),
	(703, '13345006', 1),
	(704, '13345020', 1),
	(705, '13345030', 1),
	(706, '13345040', 1),
	(707, '13345050', 1),
	(708, '13345060', 1),
	(709, '13345070', 1),
	(710, '13345080', 1),
	(711, '13345090', 1),
	(712, '13345100', 1),
	(713, '13345110', 1),
	(714, '13345115', 1),
	(715, '13345120', 1),
	(716, '13345121', 1),
	(717, '13345125', 1),
	(718, '13345130', 1),
	(719, '13345140', 1),
	(720, '13345150', 1),
	(721, '13345160', 1),
	(722, '13345170', 1),
	(723, '13345180', 1),
	(724, '13345190', 1),
	(725, '13345200', 1),
	(726, '13345210', 1),
	(727, '13345220', 1),
	(728, '13345230', 1),
	(729, '13345240', 1),
	(730, '13345250', 1),
	(731, '13345260', 1),
	(732, '13345270', 1),
	(733, '13345280', 1),
	(734, '13345290', 1),
	(735, '13345300', 1),
	(736, '13345773', 1),
	(737, '13345776', 1),
	(738, '13345780', 1),
	(739, '13345783', 1),
	(740, '13345785', 1),
	(741, '13347140', 1),
	(742, '13347150', 1),
	(743, '13347155', 1),
	(744, '13347160', 1),
	(745, '13347170', 1),
	(746, '13347180', 1),
	(747, '13347185', 1),
	(748, '13347190', 1),
	(749, '13347300', 1),
	(750, '13347310', 1),
	(751, '13347320', 1),
	(752, '13347330', 1),
	(753, '13347340', 1),
	(754, '13347350', 1),
	(755, '13347360', 1),
	(756, '13347370', 1),
	(757, '13347380', 1),
	(758, '13347390', 1),
	(759, '13347394', 1),
	(760, '13347395', 1),
	(761, '13347396', 1),
	(762, '13347397', 1),
	(763, '13347398', 1),
	(764, '13347400', 1),
	(765, '13347402', 1),
	(766, '13347404', 1),
	(767, '13347405', 1),
	(768, '13347406', 1),
	(769, '13347407', 1),
	(770, '13347408', 1),
	(771, '13347409', 1),
	(772, '13347410', 1),
	(773, '13347411', 1),
	(774, '13347412', 1),
	(775, '13347413', 1),
	(776, '13347414', 1),
	(777, '13347415', 1),
	(778, '13347416', 1),
	(779, '13347417', 1),
	(780, '13348091', 1),
	(781, '13348100', 1),
	(782, '13348110', 1),
	(783, '13348120', 1),
	(784, '13348130', 1),
	(785, '13348140', 1),
	(786, '13348150', 1),
	(787, '13348160', 1),
	(788, '13348165', 1),
	(789, '13348170', 1),
	(790, '13348180', 1),
	(791, '13348190', 1),
	(792, '13348200', 1),
	(793, '13348210', 1),
	(794, '13348213', 1),
	(795, '13348220', 1),
	(796, '13348223', 1),
	(797, '13348230', 1),
	(798, '13348233', 1),
	(799, '13348235', 1),
	(800, '13348240', 1),
	(801, '13348243', 1),
	(802, '13348250', 1),
	(803, '13348253', 1),
	(804, '13348260', 1),
	(805, '13348263', 1),
	(806, '13348270', 1),
	(807, '13348273', 1),
	(808, '13348280', 1),
	(809, '13348283', 1),
	(810, '13348290', 1),
	(811, '13348293', 1),
	(812, '13348295', 1),
	(813, '13348677', 1),
	(814, '13348678', 1),
	(815, '13348679', 1),
	(816, '13348680', 1),
	(817, '13348681', 1),
	(818, '13348682', 1),
	(819, '13348683', 1),
	(820, '13348684', 1),
	(821, '13348685', 1),
	(822, '13348686', 1),
	(823, '13348687', 1),
	(824, '13348688', 1),
	(825, '13348689', 1),
	(826, '13348690', 1),
	(827, '13348691', 1),
	(828, '13348692', 1),
	(829, '13348694', 1),
	(830, '13348695', 1),
	(831, '13348696', 1),
	(832, '13348697', 1),
	(833, '13348698', 1),
	(834, '13348700', 1),
	(835, '13348701', 1),
	(836, '13348704', 1),
	(837, '13348706', 1),
	(838, '13348707', 1),
	(839, '13348708', 1),
	(840, '13348709', 1),
	(841, '13348710', 1),
	(842, '13348711', 1),
	(843, '13348713', 1),
	(844, '13348714', 1),
	(845, '13348716', 1),
	(846, '13348717', 1),
	(847, '13348718', 1),
	(848, '13348719', 1),
	(849, '13348720', 1),
	(850, '13348722', 1),
	(851, '13348723', 1),
	(852, '13348821', 1),
	(853, '13348822', 1),
	(854, '13348823', 1),
	(855, '13348824', 1),
	(856, '13348866', 1),
	(857, '13348867', 1),
	(858, '13348868', 1),
	(859, '13348869', 1),
	(860, '13348870', 1),
	(861, '13348871', 1),
	(862, '13348872', 1),
	(863, '13348873', 1),
	(864, '13348874', 1),
	(865, '13348875', 1),
	(866, '13348876', 1),
	(867, '13348877', 1),
	(868, '13348878', 1),
	(869, '13348879', 1),
	(870, '13348880', 1),
	(871, '13348881', 1),
	(872, '13348882', 1),
	(873, '13348883', 1),
	(874, '13348884', 1),
	(875, '13348885', 1),
	(876, '13348886', 1),
	(877, '13348887', 1),
	(878, '13348891', 1),
	(879, '13348892', 1),
	(880, '13348893', 1),
	(881, '13348894', 1),
	(882, '13348895', 1),
	(883, '13348896', 1),
	(884, '13348897', 1),
	(885, '13348898', 1),
	(886, '13349001', 1),
	(887, '13349003', 1),
	(888, '13349005', 1),
	(889, '13349008', 1),
	(890, '13349010', 1),
	(891, '13349011', 1),
	(892, '13349030', 1),
	(893, '13349031', 1),
	(894, '13349032', 1),
	(895, '13349033', 1),
	(896, '13349034', 1),
	(897, '13349035', 1),
	(898, '13349037', 1),
	(899, '13349040', 1),
	(900, '13349041', 1),
	(901, '13349042', 1),
	(902, '13349043', 1),
	(903, '13349044', 1),
	(904, '13349045', 1),
	(905, '13349046', 1),
	(906, '13349047', 1),
	(907, '13349048', 1),
	(908, '13349049', 1),
	(909, '13349050', 1),
	(910, '13349051', 1),
	(911, '13349052', 1),
	(912, '13349053', 1),
	(913, '13349054', 1),
	(914, '13349055', 1),
	(915, '13349056', 1),
	(916, '13349057', 1),
	(917, '13349058', 1),
	(918, '13349059', 1),
	(919, '13349060', 1),
	(920, '13349061', 1),
	(921, '13349062', 1),
	(922, '13349063', 1),
	(923, '13349064', 1),
	(924, '13349065', 1),
	(925, '13349066', 1),
	(926, '13349067', 1),
	(927, '13349068', 1),
	(928, '13349069', 1),
	(929, '13349070', 1),
	(930, '13349071', 1),
	(931, '13349072', 1),
	(932, '13349076', 1),
	(933, '13349077', 1),
	(934, '13349718', 1),
	(935, '13349720', 1),
	(936, '13349722', 1),
	(937, '13349724', 1),
	(938, '13349726', 1),
	(939, '13349728', 1),
	(940, '13349730', 1),
	(941, '13349732', 1),
	(942, '13349750', 1),
	(943, '13349752', 1),
	(944, '13349754', 1),
	(945, '13349756', 1),
	(946, '13349758', 1),
	(947, '13349760', 1),
	(948, '13349762', 1),
	(949, '13349764', 1),
	(950, '13349766', 1),
	(951, '13349768', 1),
	(952, '13349770', 1),
	(953, '13349772', 1),
	(954, '13349790', 1),
	(955, '13349792', 1),
	(956, '13349794', 1),
	(957, '13349796', 1),
	(958, '13349798', 1),
	(959, '13349800', 1),
	(960, '13349802', 1),
	(961, '13349806', 1),
	(962, '13349808', 1),
	(963, '13349810', 1),
	(964, '13349812', 1),
	(965, '13349814', 1),
	(966, '13349816', 1),
	(967, '13349818', 1),
	(968, '13349820', 1),
	(969, '13349822', 1),
	(970, '13349824', 1),
	(971, '13349826', 1),
	(972, '13349828', 1),
	(973, '13349840', 1),
	(974, '13349842', 1),
	(975, '13349844', 1),
	(976, '13349846', 1),
	(977, '13349848', 1);
/*!40000 ALTER TABLE `tb_cep` ENABLE KEYS */;

-- Copiando estrutura para tabela repcom.tb_cidade
CREATE TABLE IF NOT EXISTS `tb_cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `str_nome_cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela repcom.tb_cidade: ~0 rows (aproximadamente)
DELETE FROM `tb_cidade`;
/*!40000 ALTER TABLE `tb_cidade` DISABLE KEYS */;
INSERT INTO `tb_cidade` (`id_cidade`, `str_nome_cidade`) VALUES
	(1, 'Indaiatuba');
/*!40000 ALTER TABLE `tb_cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela repcom.tb_empresa
CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `str_nome_empresa` varchar(100) NOT NULL,
  `str_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela repcom.tb_empresa: ~1 rows (aproximadamente)
DELETE FROM `tb_empresa`;
/*!40000 ALTER TABLE `tb_empresa` DISABLE KEYS */;
INSERT INTO `tb_empresa` (`id_empresa`, `str_nome_empresa`, `str_url`) VALUES
	(1, 'Avon', 'https://www.avon.com.br/encontre-representante-avon');
/*!40000 ALTER TABLE `tb_empresa` ENABLE KEYS */;

-- Copiando estrutura para tabela repcom.tb_revendedores
CREATE TABLE IF NOT EXISTS `tb_revendedores` (
  `id_revendedores` int(11) NOT NULL AUTO_INCREMENT,
  `str_nome_revendedores` varchar(100) NOT NULL,
  `str_bairro` varchar(100) NOT NULL,
  `str_distancia` varchar(100) NOT NULL,
  `str_email` varchar(100) NOT NULL,
  `str_telefone` varchar(100) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  PRIMARY KEY (`id_revendedores`),
  KEY `FK_revendedor_empresa` (`id_empresa`),
  CONSTRAINT `FK_revendedor_empresa` FOREIGN KEY (`id_empresa`) REFERENCES `tb_empresa` (`id_empresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela repcom.tb_revendedores: ~0 rows (aproximadamente)
DELETE FROM `tb_revendedores`;
/*!40000 ALTER TABLE `tb_revendedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_revendedores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;