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
DROP DATABASE IF EXISTS `repcom`;
CREATE DATABASE IF NOT EXISTS `repcom` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `repcom`;

-- Copiando estrutura para tabela repcom.tb_cep
DROP TABLE IF EXISTS `tb_cep`;
CREATE TABLE IF NOT EXISTS `tb_cep` (
  `id_CEP` int(11) NOT NULL AUTO_INCREMENT,
  `str_CEP` varchar(20) NOT NULL,
  `id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_CEP`),
  KEY `FK_CEP_cidade` (`id_cidade`),
  CONSTRAINT `FK_CEP_cidade` FOREIGN KEY (`id_cidade`) REFERENCES `tb_cidade` (`id_cidade`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela repcom.tb_cep: ~0 rows (aproximadamente)
DELETE FROM `tb_cep`;
/*!40000 ALTER TABLE `tb_cep` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cep` ENABLE KEYS */;

-- Copiando estrutura para tabela repcom.tb_cidade
DROP TABLE IF EXISTS `tb_cidade`;
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
DROP TABLE IF EXISTS `tb_empresa`;
CREATE TABLE IF NOT EXISTS `tb_empresa` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `str_nome_empresa` varchar(100) NOT NULL,
  `str_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela repcom.tb_empresa: ~0 rows (aproximadamente)
DELETE FROM `tb_empresa`;
/*!40000 ALTER TABLE `tb_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_empresa` ENABLE KEYS */;

-- Copiando estrutura para tabela repcom.tb_revendedores
DROP TABLE IF EXISTS `tb_revendedores`;
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
