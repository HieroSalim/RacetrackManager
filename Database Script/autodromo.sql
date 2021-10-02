/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.11-MariaDB : Database - autodromo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`autodromo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `autodromo`;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `idCliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `tipoCnh` varchar(4) NOT NULL,
  `fkConta` int(10) unsigned NOT NULL,
  `idade` int(11) NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fkConta` (`fkConta`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Table structure for table `contas` */

DROP TABLE IF EXISTS `contas`;

CREATE TABLE `contas` (
  `idConta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `login` varchar(35) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`idConta`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Table structure for table `empresas_terceiras` */

DROP TABLE IF EXISTS `empresas_terceiras`;

CREATE TABLE `empresas_terceiras` (
  `idEmpresa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tipoServico` varchar(100) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `fkConta` int(10) unsigned NOT NULL,
  `nomeResponsavel` varchar(50) NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  KEY `fkConta` (`fkConta`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `espacocomercial` */

DROP TABLE IF EXISTS `espacocomercial`;

CREATE TABLE `espacocomercial` (
  `idEspaco` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomeLocal` varchar(50) NOT NULL,
  `tamanhoArea` varchar(20) NOT NULL,
  `tempoContrato` int(11) NOT NULL,
  `valorDiaria` varchar(10) DEFAULT NULL,
  `cpfResponsavel` varchar(14) NOT NULL,
  `nomeResponsavel` varchar(50) NOT NULL,
  PRIMARY KEY (`idEspaco`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `funcionarios` */

DROP TABLE IF EXISTS `funcionarios`;

CREATE TABLE `funcionarios` (
  `idFuncionario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `fkConta` int(10) unsigned NOT NULL,
  `Cargo` varchar(30) NOT NULL,
  `DataContrato` varchar(10) NOT NULL,
  `DataFim` varchar(10) NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  KEY `fkConta` (`fkConta`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Table structure for table `servico` */

DROP TABLE IF EXISTS `servico`;

CREATE TABLE `servico` (
  `idServico` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `circuito` varchar(20) NOT NULL,
  `DataInicio` varchar(10) NOT NULL,
  `DataTermino` varchar(10) NOT NULL,
  `HorarioInicio` varchar(5) NOT NULL,
  `HorarioTermino` varchar(5) NOT NULL,
  `fkCliente` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idServico`),
  KEY `fkCliente` (`fkCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `veiculos` */

DROP TABLE IF EXISTS `veiculos`;

CREATE TABLE `veiculos` (
  `idVeiculo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modelo` varchar(50) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `categoria` varchar(35) NOT NULL,
  `potencia` varchar(50) DEFAULT NULL,
  `numeroPlaca` varchar(8) NOT NULL,
  `imagem` longblob DEFAULT NULL,
  PRIMARY KEY (`idVeiculo`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO contas VALUES(NULL, 'admin@admin.com', 'Administrador', 'admin', 'admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
