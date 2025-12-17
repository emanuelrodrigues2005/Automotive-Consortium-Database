CREATE DATABASE  IF NOT EXISTS `automotive_consortium` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `automotive_consortium`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: automotive_consortium
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `cpfAdmin` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cpfAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES ('03215630152','root@12','2025-12-17 14:58:47','2025-12-17 14:58:47'),('10203040506','dbMaster','2025-12-17 14:58:47','2025-12-17 14:58:47'),('11122233344','masterKey','2025-12-17 14:58:47','2025-12-17 14:58:47'),('12312312312','superUser','2025-12-17 14:58:47','2025-12-17 14:58:47'),('12345678910','adm2025','2025-12-17 14:58:47','2025-12-17 14:58:47'),('12378945602','hotelInn','2025-12-17 14:58:47','2025-12-17 14:58:47'),('14725836914','bossMode','2025-12-17 14:58:47','2025-12-17 14:58:47'),('15935724680','omegaSys','2025-12-17 14:58:47','2025-12-17 14:58:47'),('15975345685','cons2025','2025-12-17 14:58:47','2025-12-17 14:58:47'),('25836914725','secreta01','2025-12-17 14:58:47','2025-12-17 14:58:47'),('32132132132','devOps99','2025-12-17 14:58:47','2025-12-17 14:58:47'),('35715925845','autoAdmin','2025-12-17 14:58:47','2025-12-17 14:58:47'),('35795146802','tangoDown','2025-12-17 14:58:47','2025-12-17 14:58:47'),('36925814736','alphaUser','2025-12-17 14:58:47','2025-12-17 14:58:47'),('36985214701','golfClub','2025-12-17 14:58:47','2025-12-17 14:58:47'),('44455566677','admin@01','2025-12-17 14:58:47','2025-12-17 14:58:47'),('45612378903','indiaGo','2025-12-17 14:58:47','2025-12-17 14:58:47'),('55566677788','topSecret','2025-12-17 14:58:47','2025-12-17 14:58:47'),('60504030201','gerente1','2025-12-17 14:58:47','2025-12-17 14:58:47'),('74108529630','foxtrot','2025-12-17 14:58:47','2025-12-17 14:58:47'),('74185296300','safePass','2025-12-17 14:58:47','2025-12-17 14:58:47'),('75315946802','bravoTwo','2025-12-17 14:58:47','2025-12-17 14:58:47'),('75395145625','gestaoDB','2025-12-17 14:58:47','2025-12-17 14:58:47'),('85245615903','deltaFor','2025-12-17 14:58:47','2025-12-17 14:58:47'),('85296374100','blockChain','2025-12-17 14:58:47','2025-12-17 14:58:47'),('95135746802','charlie1','2025-12-17 14:58:47','2025-12-17 14:58:47'),('95175385265','chefia01','2025-12-17 14:58:47','2025-12-17 14:58:47'),('96385274105','echoBase','2025-12-17 14:58:47','2025-12-17 14:58:47'),('98765432100','pass1234','2025-12-17 14:58:47','2025-12-17 14:58:47'),('99988877766','sysAdmin','2025-12-17 14:58:47','2025-12-17 14:58:47');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boleto`
--

DROP TABLE IF EXISTS `boleto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boleto` (
  `idBoleto` int NOT NULL AUTO_INCREMENT,
  `dataEmissao` date NOT NULL,
  `dataPagamento` date DEFAULT NULL,
  `numeroParcela` int NOT NULL,
  `valorBoleto` decimal(15,2) NOT NULL,
  `statusBoleto` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataVencimento` date NOT NULL,
  `idContrato` int NOT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idBoleto`),
  KEY `fk_boleto_contrato` (`idContrato`),
  CONSTRAINT `fk_boleto_contrato` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleto`
--

LOCK TABLES `boleto` WRITE;
/*!40000 ALTER TABLE `boleto` DISABLE KEYS */;
INSERT INTO `boleto` VALUES (1,'2024-01-15','2024-02-10',1,1500.00,'PAGO','2024-02-15',1,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(2,'2024-02-15','2024-03-12',2,1500.00,'PAGO','2024-03-15',1,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(3,'2024-03-15','2024-04-14',3,1500.00,'PAGO','2024-04-15',1,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(4,'2024-04-15','2024-05-15',4,1500.00,'PAGO','2024-05-15',1,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(5,'2024-05-15','2024-06-14',5,1500.00,'PAGO','2024-06-15',1,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(6,'2024-06-15',NULL,6,1500.00,'PENDENTE','2025-12-20',1,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(7,'2024-11-20',NULL,13,850.50,'PENDENTE','2025-12-23',2,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(8,'2023-12-10','2024-01-08',24,1200.00,'PAGO','2024-01-10',3,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(9,'2024-11-05','2024-12-01',2,2100.00,'PAGO','2024-12-05',4,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(10,'2024-12-05',NULL,3,2100.00,'PENDENTE','2025-12-30',4,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(11,'2024-10-25',NULL,7,900.00,'VENCIDO','2024-11-25',7,'2025-12-17 14:59:25','2025-12-17 14:59:25'),(12,'2024-11-01',NULL,19,1100.00,'PENDENTE','2025-12-19',8,'2025-12-17 14:59:25','2025-12-17 14:59:25');
/*!40000 ALTER TABLE `boleto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cpf` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataNascimento` date NOT NULL,
  `endereco` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('01234567890','João Victor Barros','1999-02-17','Rua do Futuro, 15','81990123456','joao.barros@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('10101010101','Ursula Barcellos Tavares','1992-08-31','Rua do Espinheiro, 410','81991230876','ursula.tavares@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('10293847561','Karen Lima Freitas','1991-06-11','Rua das Acácias, 80','81991239876','karen.freitas@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('11111111111','Débora Vasconcelos Rios','1994-02-26','Rua do Lima, 55','81990121987','debora.rios@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('11223344556','Lucas Pereira Oliveira','1986-10-29','Av. Caxangá, 1234','81992348765','lucas.oliveira@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('12345678901','Ana Paula Silva','1995-03-12','Rua das Flores, 120','81991234567','ana.silva@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('20202020202','Victor Hugo Lins','1985-06-27','Av. João de Barros, 930','81992349765','victor.lins@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('22334455667','Mariana Farias Gomes','1997-01-08','Rua do Rosário, 44','81993457654','mariana.gomes@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('23456789012','Bruno Henrique Costa','1988-07-22','Av. Boa Viagem, 450','81992345678','bruno.costa@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('30303030303','Wesley Andrade Melo','1999-01-04','Rua da União, 66','81993458654','wesley.melo@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('33445566778','Natan Rodrigues Pinto','1989-09-16','Av. Domingos Ferreira, 300','81994566543','natan.pinto@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('34567890123','Carla Mendes Rocha','1992-11-05','Rua do Sol, 89','81993456789','carla.rocha@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('40404040404','Xênia Rocha Peixoto','1993-10-20','Rua do Príncipe, 510','81994567543','xenia.peixoto@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('44556677889','Olívia Teixeira Moura','1994-12-27','Rua Benfica, 200','81995675432','olivia.moura@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('45678901234','Daniel Ferreira Lima','1985-01-30','Av. Recife, 1020','81994567890','daniel.lima@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('50505050505','Yago Cunha Bezerra','1988-04-09','Av. Sul, 120','81995676432','yago.bezerra@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('55667788990','Pedro Henrique Azevedo','1984-03-19','Rua Imperial, 670','81996784321','pedro.azevedo@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('56789012345','Eduarda Nogueira Alves','1998-09-18','Rua das Palmeiras, 340','81995678901','eduarda.alves@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('60606060606','Zilda Correia Nunes','1984-12-01','Rua da Paz, 305','81996785321','zilda.nunes@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('66778899001','Queila Santana Lopes','1996-07-02','Av. Rosa e Silva, 880','81997893210','queila.lopes@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('67890123456','Felipe Araújo Santos','1990-05-14','Rua Sete de Setembro, 77','81996789012','felipe.santos@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('70707070707','Arthur Melo Torres','1997-07-15','Rua da Alegria, 75','81997894210','arthur.torres@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('77889900112','Rafael Batista Moreira','1990-11-23','Rua Amélia, 510','81998902109','rafael.moreira@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('78901234567','Gabriela Torres Pacheco','1996-12-03','Av. Norte, 210','81997890123','gabriela.pacheco@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('80808080808','Bianca Pimentel Araujo','1991-09-28','Av. Central, 980','81998903109','bianca.araujo@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('88990011223','Sabrina Monteiro Duarte','1998-05-06','Av. Agamenon Magalhães, 1500','81999011098','sabrina.duarte@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('89012345678','Henrique Souza Martins','1987-08-09','Rua da Aurora, 560','81998901234','henrique.martins@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('90123456789','Isabela Cunha Ribeiro','1993-04-25','Av. Conselheiro Aguiar, 910','81999012345','isabela.ribeiro@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('90909090909','Caio Freire Antunes','1986-05-03','Rua São Salvador, 140','81999012098','caio.antunes@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07'),('99001122334','Thiago Ramos Fonseca','1987-02-14','Rua da Harmonia, 98','81990120987','thiago.fonseca@email.com','2025-12-17 14:59:07','2025-12-17 14:59:07');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consorcio`
--

DROP TABLE IF EXISTS `consorcio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consorcio` (
  `idConsorcio` int NOT NULL AUTO_INCREMENT,
  `idVeiculo` int NOT NULL,
  `idAdministrador` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT '1',
  `duracaoConsorcio` int NOT NULL,
  `maxParticipantes` int NOT NULL,
  `taxAdmin` decimal(3,2) DEFAULT NULL,
  `nomeConsorcio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valorTotal` decimal(15,2) NOT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idConsorcio`),
  KEY `fk_consorcio_administrador` (`idAdministrador`),
  CONSTRAINT `fk_consorcio_administrador` FOREIGN KEY (`idAdministrador`) REFERENCES `administrador` (`cpfAdmin`),
  CONSTRAINT `ck_tax_admin` CHECK (((`taxAdmin` >= 0) and (`taxAdmin` <= 1)))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consorcio`
--

LOCK TABLES `consorcio` WRITE;
/*!40000 ALTER TABLE `consorcio` DISABLE KEYS */;
INSERT INTO `consorcio` VALUES (1,1,'12345678910',1,60,50,0.15,'Consórcio Mobi 2024',82788.50,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(2,2,'03215630152',1,48,40,0.12,'Consórcio Kwid Econômico',81356.80,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(3,3,'98765432100',1,72,60,0.10,'Consórcio Onix Premium',97900.00,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(4,4,'11122233344',1,36,30,0.15,'Consórcio HB20 Rápido',98325.00,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(5,5,'55566677788',1,60,50,0.14,'Consórcio Polo VW',100308.60,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(6,8,'44455566677',1,60,50,0.15,'Consórcio Onix Plus',132250.00,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(7,17,'99988877766',1,48,35,0.11,'Consórcio Compass SUV',221988.90,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(8,10,'10203040506',1,60,45,0.13,'Consórcio Corolla Elite',179206.70,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(9,14,'60504030201',1,24,20,0.12,'Consórcio T-Cross Express',180308.80,'2025-12-17 14:59:18','2025-12-17 14:59:18'),(10,15,'12312312312',1,36,30,0.10,'Consórcio Creta Premium',181500.00,'2025-12-17 14:59:18','2025-12-17 14:59:18');
/*!40000 ALTER TABLE `consorcio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `idContrato` int NOT NULL AUTO_INCREMENT,
  `idCliente` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idConsorcio` int NOT NULL,
  `dataInicio` date NOT NULL,
  `dataEncerramento` date DEFAULT NULL,
  `parcelasPagas` int NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idVendedor` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idContrato`),
  KEY `fk_contrato_vendedor` (`idVendedor`),
  CONSTRAINT `fk_contrato_vendedor` FOREIGN KEY (`idVendedor`) REFERENCES `vendedor` (`cpfVendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'12345678901',1,'2024-01-15',NULL,5,'ATIVO','12345678901','2025-12-17 14:59:21','2025-12-17 14:59:21'),(2,'23456789012',2,'2024-02-20',NULL,12,'ATIVO','23456789012','2025-12-17 14:59:21','2025-12-17 14:59:21'),(3,'34567890123',3,'2023-01-10','2024-01-10',24,'ENCERRADO','34567890123','2025-12-17 14:59:21','2025-12-17 14:59:21'),(4,'45678901234',1,'2024-10-05',NULL,2,'ATIVO','45678901234','2025-12-17 14:59:21','2025-12-17 14:59:21'),(5,'56789012345',4,'2024-11-20',NULL,1,'ATIVO','56789012345','2025-12-17 14:59:21','2025-12-17 14:59:21'),(6,'12345678901',5,'2024-03-12',NULL,8,'ATIVO','67890123456','2025-12-17 14:59:21','2025-12-17 14:59:21'),(7,'23456789012',3,'2024-06-25','2024-12-25',6,'SUSPENSO','78901234567','2025-12-17 14:59:21','2025-12-17 14:59:21'),(8,'56789012345',2,'2023-06-01',NULL,18,'ATIVO','89012345678','2025-12-17 14:59:21','2025-12-17 14:59:21'),(9,'67890123456',6,'2024-04-10',NULL,7,'ATIVO','90123456789','2025-12-17 14:59:21','2025-12-17 14:59:21'),(10,'78901234567',7,'2024-05-15',NULL,6,'ATIVO','01234567890','2025-12-17 14:59:21','2025-12-17 14:59:21'),(11,'89012345678',8,'2024-07-22',NULL,4,'ATIVO','11223344556','2025-12-17 14:59:21','2025-12-17 14:59:21'),(12,'90123456789',9,'2024-08-30',NULL,3,'ATIVO','22334455667','2025-12-17 14:59:21','2025-12-17 14:59:21'),(13,'01234567890',10,'2024-09-18',NULL,2,'ATIVO','33445566778','2025-12-17 14:59:21','2025-12-17 14:59:21'),(14,'10293847561',1,'2024-11-01',NULL,1,'ATIVO','44556677889','2025-12-17 14:59:21','2025-12-17 14:59:21'),(15,'11223344556',2,'2024-10-12',NULL,2,'ATIVO','55667788990','2025-12-17 14:59:21','2025-12-17 14:59:21');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `idVeiculo` int NOT NULL AUTO_INCREMENT,
  `anoVeiculo` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modeloVeiculo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marcaVeiculo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precoFipe` decimal(15,2) NOT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idVeiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'2024','Mobi Like 1.0','Fiat',71990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(2,'2024','Kwid Zen','Renault',72640.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(3,'2023','Onix Hatch LT','Chevrolet',89000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(4,'2023','HB20 Sense','Hyundai',85500.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(5,'2024','Polo Track','Volkswagen',87990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(6,'2022','Argo Drive','Fiat',78000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(7,'2023','208 Style','Peugeot',92000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(8,'2024','Onix Plus Premier','Chevrolet',115000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(9,'2023','Virtus Highline','Volkswagen',130000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(10,'2024','Corolla XEi','Toyota',158590.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(11,'2023','Civic Touring Hybrid','Honda',265900.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(12,'2024','Sentra Exclusive','Nissan',176690.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(13,'2022','Jetta GLI','Volkswagen',220000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(14,'2024','T-Cross Comfortline','Volkswagen',160990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(15,'2024','Creta Platinum','Hyundai',165000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(16,'2023','Tracker RS','Chevrolet',155000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(17,'2024','Compass Longitude','Jeep',199990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(18,'2024','Corolla Cross XRX','Toyota',210990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(19,'2024','Fastback Limited','Fiat',159990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(20,'2023','HR-V Touring','Honda',195000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(21,'2024','Strada Volcano','Fiat',119990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(22,'2023','Toro Ranch','Fiat',175000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(23,'2024','Hilux SRX','Toyota',334890.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(24,'2023','Ranger Limited','Ford',319990.00,'2025-12-17 14:59:11','2025-12-17 14:59:11'),(25,'2023','320i M Sport','BMW',355000.00,'2025-12-17 14:59:11','2025-12-17 14:59:11');
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `cpfVendedor` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` char(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `criadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `atualizadoEm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cpfVendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES ('00112233445','Tiago Araújo Pereira','tiago.araujo@email.com','21965432109','2025-12-17 14:59:14','2025-12-17 14:59:14'),('01234567890','João Pereira Araújo','joao.pereira@email.com','11976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('11223344556','Karla Souza Cardoso','karla.souza@email.com','21976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('12345678901','Ana Silva Santos','ana.silva@email.com','11987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('22334455667','Lucas Almeida Rocha','lucas.almeida@email.com','31976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('23456789012','Bruno Oliveira Costa','bruno.oliveira@email.com','21987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('33445566778','Mariana Costa Teixeira','mariana.costa@email.com','41976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('34567890123','Carla Pereira Almeida','carla.pereira@email.com','31987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('44556677889','Nelson Lima Santos','nelson.lima@email.com','51976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('45678901234','Daniel Souza Lima','daniel.souza@email.com','41987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('55667788990','Olivia Ferreira Castro','olivia.ferreira@email.com','61976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('56789012345','Eliane Martins Ferreira','eliane.martins@email.com','51987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('66778899001','Paulo Ribeiro Melo','paulo.ribeiro@email.com','71976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('67890123456','Felipe Rodrigues Gomes','felipe.rodrigues@email.com','61987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('77889900112','Quésia Gomes Nascimento','quesia.gomes@email.com','81976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('78901234567','Gabriela Alves Ribeiro','gabriela.alves@email.com','71987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('88990011223','Rafael Barbosa Oliveira','rafael.barbosa@email.com','91976543210','2025-12-17 14:59:14','2025-12-17 14:59:14'),('89012345678','Henrique Costa Barbosa','henrique.costa@email.com','81987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('90123456789','Isabela Fernandes Silva','isabela.fernandes@email.com','91987654321','2025-12-17 14:59:14','2025-12-17 14:59:14'),('99001122334','Sofia Silva Costa','sofia.silva@email.com','11965432109','2025-12-17 14:59:14','2025-12-17 14:59:14');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-17 16:17:53
