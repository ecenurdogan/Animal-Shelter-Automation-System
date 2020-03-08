
USE `vet`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vetdatabase
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asilar`
--

DROP TABLE IF EXISTS `asilar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asilar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `hayvanId` int(11) DEFAULT NULL,
  `tarih` varchar(100) DEFAULT NULL,
  `asituru` varchar(100) DEFAULT NULL,
  `dozsayisi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asilar`
--

LOCK TABLES `asilar` WRITE;
/*!40000 ALTER TABLE `asilar` DISABLE KEYS */;
INSERT INTO `asilar` VALUES (1,16,'24.05.2018','aii türü 1','System.Windows.Forms.TextBox, Text: 2 doz'),(2,14,'29.05.2018','asi 1','doz 1'),(3,14,'23.05.2018','asi 1','doz 1');
/*!40000 ALTER TABLE `asilar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bakicilar`
--

DROP TABLE IF EXISTS `bakicilar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bakicilar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(100) DEFAULT NULL,
  `adres` varchar(45) DEFAULT NULL,
  `telefon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bakicilar`
--

LOCK TABLES `bakicilar` WRITE;
/*!40000 ALTER TABLE `bakicilar` DISABLE KEYS */;
INSERT INTO `bakicilar` VALUES (3,'bakici3','ant','545'),(2,'bakic2','ankara','555');
/*!40000 ALTER TABLE `bakicilar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hayvanlar`
--

DROP TABLE IF EXISTS `hayvanlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hayvanlar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `adi` varchar(100) DEFAULT NULL,
  `dogumtarihi` varchar(100) DEFAULT NULL,
  `cinsi` varchar(100) DEFAULT NULL,
  `kupeno` varchar(45) DEFAULT NULL,
  `turu` varchar(45) DEFAULT NULL,
  `rengi` varchar(45) DEFAULT NULL,
  `sahipkisiId` int(11) DEFAULT NULL,
  `bakiciId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hayvanlar`
--

LOCK TABLES `hayvanlar` WRITE;
/*!40000 ALTER TABLE `hayvanlar` DISABLE KEYS */;
INSERT INTO `hayvanlar` VALUES (14,'asdaasddasd','25.05.2018','asdasd','asd','asd','Red',7,2),(15,'asdaasddasd','25.05.2018','asdasd','asd','asd','Red',7,3),(16,'hayvan1','25.05.2018','cins1','kupeno1','tür1','Red',7,3);
/*!40000 ALTER TABLE `hayvanlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kisiler`
--

DROP TABLE IF EXISTS `kisiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kisiler` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `adisoyadi` varchar(100) DEFAULT NULL,
  `telefon` varchar(100) DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kisiler`
--

LOCK TABLES `kisiler` WRITE;
/*!40000 ALTER TABLE `kisiler` DISABLE KEYS */;
INSERT INTO `kisiler` VALUES (7,'sahip1','12334','ankasd'),(8,'fkrn','234','sivas');
/*!40000 ALTER TABLE `kisiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klinikler`
--

DROP TABLE IF EXISTS `klinikler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `klinikler` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `klinikAdi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klinikler`
--

LOCK TABLES `klinikler` WRITE;
/*!40000 ALTER TABLE `klinikler` DISABLE KEYS */;
/*!40000 ALTER TABLE `klinikler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kullanicilar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `kullaniciadi` varchar(45) DEFAULT NULL,
  `sifre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanicilar`
--

LOCK TABLES `kullanicilar` WRITE;
/*!40000 ALTER TABLE `kullanicilar` DISABLE KEYS */;
INSERT INTO `kullanicilar` VALUES (1,'1','1');
/*!40000 ALTER TABLE `kullanicilar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tedaviler`
--

DROP TABLE IF EXISTS `tedaviler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tedaviler` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `klinikismi` varchar(45) DEFAULT NULL,
  `ameliyathane` varchar(45) DEFAULT NULL,
  `rehabilitasyon` varchar(45) DEFAULT NULL,
  `asilama` int(11) DEFAULT NULL,
  `aciklama` varchar(45) DEFAULT NULL,
  `hayvanId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tedaviler`
--

LOCK TABLES `tedaviler` WRITE;
/*!40000 ALTER TABLE `tedaviler` DISABLE KEYS */;
INSERT INTO `tedaviler` VALUES (1,'klinik1','amelit1','reha1',0,'aciklama2',14),(2,'asd','asd','asd',1,'asdasdas',16),(4,'klinik 1','ameliathane 1','reha 1',1,'açiklama 1',16),(5,'klinik 1','ameliathane 1','reha 1',0,'açiklama 1',16),(6,'asd','asd','asd',0,'asdasd',14);
/*!40000 ALTER TABLE `tedaviler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


-- Dump completed on 2018-05-30  1:44:48
