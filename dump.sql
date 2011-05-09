-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: A3_development
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `right` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `question_id` int(11) DEFAULT NULL,
  `col` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Да ',12,NULL,'2011-04-08 04:20:25','2011-04-08 04:20:25'),(2,1,'Нет',12,NULL,'2011-04-08 04:20:25','2011-04-08 04:20:25'),(3,1,'Не знаю',12,NULL,'2011-04-08 04:20:25','2011-04-08 04:20:25'),(4,1,'Не знаю',13,NULL,'2011-04-08 04:22:01','2011-04-08 04:22:01'),(5,1,'1800',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(6,2,'1890',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(7,3,'1900',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(8,4,'1980',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(9,5,'2000',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(10,1,'Один',15,1,'2011-04-08 05:11:31','2011-04-08 05:11:31'),(11,1,'Один',15,2,'2011-04-08 05:11:31','2011-04-08 05:11:31'),(12,2,'Два',15,1,'2011-04-08 05:11:31','2011-04-08 05:11:31'),(13,2,'Два',15,2,'2011-04-08 05:11:32','2011-04-08 05:11:32'),(14,3,'Три',15,1,'2011-04-08 05:11:32','2011-04-08 05:11:32'),(15,3,'Три',15,2,'2011-04-08 05:11:32','2011-04-08 05:11:32'),(16,1,'Мур!',16,NULL,'2011-04-08 05:12:09','2011-04-08 05:12:09'),(17,0,'Гав',16,NULL,'2011-04-08 05:12:10','2011-04-08 05:12:10'),(18,0,'Му',16,NULL,'2011-04-08 05:12:10','2011-04-08 05:12:10'),(19,0,'Кря',16,NULL,'2011-04-08 05:12:10','2011-04-08 05:12:10'),(33,1,'олол',17,NULL,'2011-04-08 08:02:03','2011-04-08 08:02:03'),(34,1,'ыфжвлоа',17,NULL,'2011-04-08 08:02:03','2011-04-08 08:02:03'),(35,1,'ждылвоаж',17,NULL,'2011-04-08 08:02:03','2011-04-08 08:02:03'),(36,1,'Да!',18,NULL,'2011-04-13 07:02:47','2011-04-13 07:02:47');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configthemerelations`
--

DROP TABLE IF EXISTS `configthemerelations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configthemerelations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tconfiguration_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configthemerelations`
--

LOCK TABLES `configthemerelations` WRITE;
/*!40000 ALTER TABLE `configthemerelations` DISABLE KEYS */;
INSERT INTO `configthemerelations` VALUES (1,2,1,'2011-04-16 10:40:49','2011-04-16 10:40:49'),(2,2,2,'2011-04-16 10:40:49','2011-04-16 10:40:49');
/*!40000 ALTER TABLE `configthemerelations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_types`
--

DROP TABLE IF EXISTS `configuration_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_types`
--

LOCK TABLES `configuration_types` WRITE;
/*!40000 ALTER TABLE `configuration_types` DISABLE KEYS */;
INSERT INTO `configuration_types` VALUES (1,'Тест по системе зачет/не зачет','2011-04-10 11:12:09','2011-04-10 11:12:09'),(2,'Тест на оценку','2011-04-10 11:12:26','2011-04-10 11:12:26'),(3,'Профилирующий тест','2011-04-10 11:12:38','2011-04-10 11:12:38');
/*!40000 ALTER TABLE `configuration_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Пение','2011-03-21 16:22:34','2011-03-21 16:22:34'),(2,'Лепение','2011-04-08 04:21:18','2011-04-08 04:21:18');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pict` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (7,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',11,'2011-04-02 11:49:44','2011-04-02 11:49:44'),(8,NULL,16,'2011-04-08 07:38:33','2011-04-08 07:38:33'),(9,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',14,'2011-04-26 15:51:56','2011-04-26 15:51:56');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qtypes`
--

DROP TABLE IF EXISTS `qtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qtypes`
--

LOCK TABLES `qtypes` WRITE;
/*!40000 ALTER TABLE `qtypes` DISABLE KEYS */;
INSERT INTO `qtypes` VALUES (6,'На выбор с одним правильным вариантом ответа','2011-04-02 12:02:16','2011-04-02 12:02:16'),(7,'На выбор с несколькими правильными вариантами ответа','2011-04-02 12:02:45','2011-04-02 12:02:45'),(8,'Без предлагаемых вариантов ответа','2011-04-02 12:03:20','2011-04-02 12:03:20'),(9,'На соотношение','2011-04-02 12:03:39','2011-04-02 12:03:39'),(10,'На упорядочивание','2011-04-02 12:04:42','2011-04-02 12:04:42');
/*!40000 ALTER TABLE `qtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `answcount` int(11) DEFAULT NULL,
  `qtype_id` int(11) DEFAULT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (11,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:41:41','2011-03-31 13:41:41'),(12,'как дальше жить?',1,8,1,'2011-04-08 04:20:14','2011-04-08 04:20:14'),(13,'Что такое лепение?',1,8,2,'2011-04-08 04:21:46','2011-04-08 04:21:46'),(14,'В каком году основали Москву?',1,10,1,'2011-04-08 05:10:01','2011-04-08 05:10:01'),(15,'Привет мир!',1,9,1,'2011-04-08 05:11:02','2011-04-08 05:11:02'),(16,'мур?',1,7,1,'2011-04-08 05:11:48','2011-04-08 05:11:48'),(17,'что?',1,8,1,'2011-04-08 08:01:12','2011-04-08 08:01:12'),(18,'Базу в базу!',1,6,1,'2011-04-13 07:02:36','2011-04-13 07:02:36');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110227184656'),('20110228171033'),('20110302104604'),('20110321133105'),('20110321160153'),('20110331081427'),('20110402103649'),('20110408131805'),('20110408151238'),('20110410101259'),('20110410102119'),('20110414125608'),('20110415040128'),('20110416113022'),('20110426150947');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tconfigurations`
--

DROP TABLE IF EXISTS `tconfigurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tconfigurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qT1Count` int(11) DEFAULT NULL,
  `qT2Count` int(11) DEFAULT NULL,
  `qT3Count` int(11) DEFAULT NULL,
  `qT4Count` int(11) DEFAULT NULL,
  `qT5Count` int(11) DEFAULT NULL,
  `degree3` int(11) DEFAULT NULL,
  `degree4` int(11) DEFAULT NULL,
  `degree5` int(11) DEFAULT NULL,
  `TestTime` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `configuration_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tconfigurations`
--

LOCK TABLES `tconfigurations` WRITE;
/*!40000 ALTER TABLE `tconfigurations` DISABLE KEYS */;
INSERT INTO `tconfigurations` VALUES (1,'Имя',1,1,1,1,1,1,2,5,'00:30:00','2011-04-13 07:04:32','2011-04-13 07:12:26',1),(2,'htrhtr',1,1,1,1,1,20,50,70,'00:30:00','2011-04-16 10:40:48','2011-04-16 10:40:48',1);
/*!40000 ALTER TABLE `tconfigurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_configs`
--

DROP TABLE IF EXISTS `test_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TestTime` datetime DEFAULT NULL,
  `confType` int(11) DEFAULT NULL,
  `qType1Count` int(11) DEFAULT NULL,
  `qType2Count` int(11) DEFAULT NULL,
  `qType3Count` int(11) DEFAULT NULL,
  `qType4Count` int(11) DEFAULT NULL,
  `qType5Count` int(11) DEFAULT NULL,
  `degree3` int(11) DEFAULT NULL,
  `degree4` int(11) DEFAULT NULL,
  `degree5` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_configs`
--

LOCK TABLES `test_configs` WRITE;
/*!40000 ALTER TABLE `test_configs` DISABLE KEYS */;
INSERT INTO `test_configs` VALUES (1,'Test','0000-00-00 00:00:00',1,1,1,1,1,1,1,1,1,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `test_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testsession_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `useransw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answorder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ok` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,1,15,'1|%|%3','10 14 12,11 13 15',0,'2011-04-20 06:15:24','2011-04-26 14:31:31'),(2,1,14,'4|%1|%2|%3|%5','8 5 6 7 9',1,'2011-04-20 06:15:24','2011-04-26 14:36:37'),(3,1,18,'0','36',1,'2011-04-20 06:15:25','2011-04-26 14:38:58'),(4,1,16,'3','17 19 18 16',1,'2011-04-20 06:15:25','2011-04-26 14:39:29'),(5,1,13,'','4',0,'2011-04-20 06:15:25','2011-04-27 06:20:32'),(6,2,16,'','19 16 17 18',0,'2011-04-27 06:45:53','2011-04-27 06:45:53'),(7,2,18,'','36',0,'2011-04-27 06:45:53','2011-04-27 06:45:53'),(8,2,15,'','12 14 10,11 15 13',0,'2011-04-27 06:45:54','2011-04-27 06:45:54'),(9,2,14,'','9 8 7 5 6',0,'2011-04-27 06:45:54','2011-04-27 06:45:54'),(10,2,12,'2','1 2 3',0,'2011-04-27 06:45:54','2011-04-27 07:24:22'),(11,3,12,'','3 2 1',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(12,3,14,'','9 7 5 8 6',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(13,3,18,'','36',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(14,3,15,'','10 12 14,11 15 13',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(15,3,16,'','19 16 18 17',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(16,4,16,'0','16 19 18 17',1,'2011-04-29 04:23:00','2011-04-29 04:26:29'),(17,4,15,'2|%3|%1','10 14 12,15 13 11',0,'2011-04-29 04:23:00','2011-04-29 04:28:34'),(18,4,18,'0','36',1,'2011-04-29 04:23:00','2011-04-29 04:28:43'),(19,4,12,'НЕ ЗНАЮ','3 1 2',1,'2011-04-29 04:23:00','2011-04-29 04:28:56'),(20,4,14,'5|%1|%4|%2|%3','9 5 8 6 7',1,'2011-04-29 04:23:00','2011-04-29 04:23:41'),(21,5,15,'','12 10 14,15 13 11',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(22,5,17,'','34 33 35',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(23,5,16,'','19 17 18 16',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(24,5,18,'','36',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(25,5,14,'','6 8 5 9 7',0,'2011-04-29 04:30:49','2011-04-29 04:30:49'),(26,6,18,'0','36',1,'2011-04-29 04:32:41','2011-04-29 04:44:43'),(27,6,13,'','4',0,'2011-04-29 04:32:41','2011-04-29 04:32:41'),(28,6,16,'0','16 17 19 18',1,'2011-04-29 04:32:41','2011-04-29 04:44:49'),(29,6,15,'1|%2|%3','12 14 10,13 15 11',0,'2011-04-29 04:32:41','2011-04-29 04:44:57'),(30,6,14,'1|%2|%3|%4|%5','6 9 7 5 8',0,'2011-04-29 04:32:41','2011-04-29 04:45:06'),(31,7,13,'Не знаю','4',1,'2011-05-04 07:21:40','2011-05-04 07:22:10'),(32,7,15,'2|%1|%3','10 12 14,13 11 15',1,'2011-05-04 07:21:40','2011-05-04 07:22:25'),(33,7,14,'5|%2|%1|%4|%3','9 6 5 8 7',1,'2011-05-04 07:21:40','2011-05-04 07:22:50'),(34,7,18,'0','36',1,'2011-05-04 07:21:40','2011-05-04 07:22:57'),(35,7,16,'0','18 19 16 17',0,'2011-05-04 07:21:40','2011-05-04 07:23:04'),(36,8,18,'','36',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(37,8,16,'','18 17 16 19',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(38,8,14,'','9 8 6 5 7',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(39,8,15,'','10 14 12,11 13 15',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(40,8,17,'','34 35 33',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(41,9,18,'','36',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(42,9,16,'','17 18 19 16',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(43,9,12,'','1 2 3',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(44,9,15,'','10 12 14,11 13 15',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(45,9,14,'|%|%|%|%','9 6 8 5 7',0,'2011-05-07 10:54:25','2011-05-07 11:14:15'),(46,10,15,'','14 12 10,15 13 11',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(47,10,17,'','34 35 33',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(48,10,18,'','36',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(49,10,14,'5|%4|%2|%1|%3','8 7 9 6 5',0,'2011-05-07 11:26:51','2011-05-07 11:51:51'),(50,10,16,'','18 16 17 19',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(51,11,14,'','5 7 6 9 8',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(52,11,12,'','2 3 1',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(53,11,18,'','36',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(54,11,16,'','19 16 18 17',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(55,11,15,'3|%1|%2','12 14 10,11 13 15',0,'2011-05-07 16:30:40','2011-05-07 16:58:36'),(56,12,13,'Не знаю','4',1,'2011-05-07 17:04:41','2011-05-07 17:05:46'),(57,12,18,'0','36',1,'2011-05-07 17:04:41','2011-05-07 17:06:56'),(58,12,15,'3|%2|%1','10 14 12,13 15 11',0,'2011-05-07 17:04:41','2011-05-07 17:05:12'),(59,12,16,'1','17 16 19 18',1,'2011-05-07 17:04:41','2011-05-07 17:07:17'),(60,12,14,'5|%1|%3|%2|%4','6 8 7 9 5',0,'2011-05-07 17:04:41','2011-05-07 17:15:30'),(61,13,14,'3|%1|%2|%4|%5','6 7 5 8 9',1,'2011-05-07 17:21:13','2011-05-07 17:43:36'),(62,13,16,'','17 18 19 16',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(63,13,17,'','33 34 35',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(64,13,15,'','14 12 10,15 11 13',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(65,13,18,'','36',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(66,14,14,'','6 7 8 5 9',0,'2011-05-07 17:56:53','2011-05-07 17:56:53'),(67,14,18,'','36',0,'2011-05-07 17:56:53','2011-05-07 17:56:53'),(68,14,15,'2|%1|%3','12 14 10,15 13 11',1,'2011-05-07 17:56:53','2011-05-07 17:59:43'),(69,14,12,'','1 2 3',0,'2011-05-07 17:56:54','2011-05-07 17:56:54'),(70,14,16,'','16 18 19 17',0,'2011-05-07 17:56:54','2011-05-07 17:56:54'),(71,15,13,'jkjk','4',0,'2011-05-08 16:47:16','2011-05-08 16:47:22'),(72,15,14,'1|%2|%3|%4|%5','5 8 6 9 7',0,'2011-05-08 16:47:16','2011-05-08 16:47:27'),(73,15,16,'2|%3','18 16 19 17',0,'2011-05-08 16:47:16','2011-05-08 16:47:32'),(74,15,18,'','36',1,'2011-05-08 16:47:16','2011-05-08 16:55:53'),(75,15,15,'1|%2|%','12 10 14,15 11 13',0,'2011-05-08 16:47:16','2011-05-08 16:49:22');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testsessions`
--

DROP TABLE IF EXISTS `testsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testsessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tconfiguration_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testsessions`
--

LOCK TABLES `testsessions` WRITE;
/*!40000 ALTER TABLE `testsessions` DISABLE KEYS */;
INSERT INTO `testsessions` VALUES (1,2,2,'2011-04-20 06:15:24','2011-04-30 08:14:21',1),(2,2,2,'2011-04-27 06:45:53','2011-04-27 06:45:53',0),(3,2,2,'2011-04-27 07:25:41','2011-04-27 07:25:41',0),(4,2,2,'2011-04-29 04:23:00','2011-04-29 04:23:00',0),(5,2,2,'2011-04-29 04:30:48','2011-04-29 04:30:48',0),(6,2,2,'2011-04-29 04:32:41','2011-04-29 04:45:09',1),(7,2,2,'2011-05-04 07:21:40','2011-05-04 07:23:08',1),(8,2,2,'2011-05-07 10:23:29','2011-05-07 10:54:08',1),(9,2,2,'2011-05-07 10:54:24','2011-05-07 11:26:37',1),(10,2,2,'2011-05-07 11:26:51','2011-05-07 11:56:50',1),(11,2,2,'2011-05-07 16:30:40','2011-05-07 17:03:31',1),(12,2,2,'2011-05-07 17:04:41','2011-05-08 16:44:36',1),(13,2,2,'2011-05-07 17:21:13','2011-05-07 17:51:12',1),(14,2,2,'2011-05-07 17:56:53','2011-05-07 17:56:53',0),(15,2,2,'2011-05-08 16:47:16','2011-05-08 16:49:25',1);
/*!40000 ALTER TABLE `testsessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discipline_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Моцарт',1,'2011-03-21 16:22:44','2011-03-21 16:22:44'),(2,'Про лепение',2,'2011-04-08 04:21:33','2011-04-08 04:21:33');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salt` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token_expires_at` datetime DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8_unicode_ci DEFAULT '--- []',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'inter','','o@ru','4a61878f022fd9edff36f5436fa40ce8373bb8ac','3b9a0cccdd8b5b4a7c844ab35a560ca5219375fa','2011-03-21 16:22:20','2011-03-21 16:22:20',NULL,NULL,'--- \n- admin\n'),(2,'qqqqq','','o@ru','6f6c8b1073f89fcd39e9ae59f481cdeee172f21f','5114467824e861b47d900aaceb025b20b38f36ab','2011-03-31 08:22:14','2011-03-31 08:22:14',NULL,NULL,'--- \n- admin\n'),(3,'xamele0n','','o@ru','c3e3f3de1da2b3de2c1ec7517ccb142f4b8ce37a','a8f6d06d7e57c28c23e1d058085177c01ca767d1','2011-04-08 04:19:19','2011-04-08 04:19:19',NULL,NULL,'--- \n- admin\n');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-05-09 19:32:55
