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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (4,1,'Не знаю',13,NULL,'2011-04-08 04:22:01','2011-04-08 04:22:01'),(5,1,'1800',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(6,2,'1890',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(7,3,'1900',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(8,4,'1980',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(9,5,'2000',14,NULL,'2011-04-08 05:10:31','2011-04-08 05:10:31'),(10,1,'Один',15,1,'2011-04-08 05:11:31','2011-04-08 05:11:31'),(11,1,'Один',15,2,'2011-04-08 05:11:31','2011-04-08 05:11:31'),(12,2,'Два',15,1,'2011-04-08 05:11:31','2011-04-08 05:11:31'),(13,2,'Два',15,2,'2011-04-08 05:11:32','2011-04-08 05:11:32'),(14,3,'Три',15,1,'2011-04-08 05:11:32','2011-04-08 05:11:32'),(15,3,'Три',15,2,'2011-04-08 05:11:32','2011-04-08 05:11:32'),(16,1,'Мур!',16,NULL,'2011-04-08 05:12:09','2011-04-08 05:12:09'),(17,0,'Гав',16,NULL,'2011-04-08 05:12:10','2011-04-08 05:12:10'),(18,0,'Му',16,NULL,'2011-04-08 05:12:10','2011-04-08 05:12:10'),(19,0,'Кря',16,NULL,'2011-04-08 05:12:10','2011-04-08 05:12:10'),(43,1,'Да!',18,NULL,'2011-05-20 09:10:48','2011-05-20 09:10:48'),(44,0,'Нет',18,NULL,'2011-05-20 09:10:48','2011-05-20 09:10:48'),(45,1,'1',17,NULL,'2011-05-20 09:11:14','2011-05-20 09:11:14'),(46,1,'одын',17,NULL,'2011-05-20 09:11:14','2011-05-20 09:11:14'),(47,1,'один',17,NULL,'2011-05-20 09:11:14','2011-05-20 09:11:14'),(52,0,'Красный',19,NULL,'2011-05-21 11:26:39','2011-05-21 11:26:39'),(53,0,'Зеленый',19,NULL,'2011-05-21 11:26:39','2011-05-21 11:26:39'),(54,0,'Синий',19,NULL,'2011-05-21 11:26:39','2011-05-21 11:26:39'),(55,1,'Нет правильного ответа',19,NULL,'2011-05-21 11:26:39','2011-05-21 11:26:39'),(56,1,'Ололо',20,NULL,'2011-05-21 12:13:38','2011-05-21 12:13:38'),(57,0,'лол',20,NULL,'2011-05-21 12:13:38','2011-05-21 12:13:38'),(58,1,'ololo',20,NULL,'2011-05-21 12:13:38','2011-05-21 12:13:38'),(59,0,'пщпщ',20,NULL,'2011-05-21 12:13:38','2011-05-21 12:13:38'),(60,1,'Хозяйственное',21,1,'2011-05-21 12:30:21','2011-05-21 12:30:21'),(61,1,'Стирка',21,2,'2011-05-21 12:30:21','2011-05-21 12:30:21'),(62,2,'Туалетное',21,1,'2011-05-21 12:30:21','2011-05-21 12:30:21'),(63,2,'Купание',21,2,'2011-05-21 12:30:21','2011-05-21 12:30:21'),(64,3,'Уборка туалета',21,2,'2011-05-21 12:30:21','2011-05-21 12:30:21'),(65,1,'@',22,NULL,'2011-05-21 12:35:44','2011-05-21 12:35:44'),(66,1,'Да ',12,NULL,'2011-06-05 14:00:20','2011-06-05 14:00:20'),(67,1,'Нет',12,NULL,'2011-06-05 14:00:20','2011-06-05 14:00:20'),(68,1,'Ололо',12,NULL,'2011-06-05 14:00:21','2011-06-05 14:00:21');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configthemerelations`
--

LOCK TABLES `configthemerelations` WRITE;
/*!40000 ALTER TABLE `configthemerelations` DISABLE KEYS */;
INSERT INTO `configthemerelations` VALUES (1,2,1,'2011-04-16 10:40:49','2011-04-16 10:40:49'),(2,2,2,'2011-04-16 10:40:49','2011-04-16 10:40:49'),(3,3,1,'2011-05-20 08:21:18','2011-05-20 08:21:18'),(4,3,2,'2011-05-20 08:21:18','2011-05-20 08:21:18'),(5,4,1,'2011-05-20 08:27:38','2011-05-20 08:27:38'),(6,4,2,'2011-05-20 08:27:38','2011-05-20 08:27:38'),(7,5,1,'2011-06-08 17:03:05','2011-06-08 17:03:05'),(8,6,1,'2011-06-08 17:17:42','2011-06-08 17:17:42'),(9,7,1,'2011-06-09 10:06:34','2011-06-09 10:06:34'),(10,8,1,'2011-06-09 10:09:41','2011-06-09 10:09:41'),(11,9,1,'2011-06-09 10:13:39','2011-06-09 10:13:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_types`
--

LOCK TABLES `configuration_types` WRITE;
/*!40000 ALTER TABLE `configuration_types` DISABLE KEYS */;
INSERT INTO `configuration_types` VALUES (1,'Тест по системе зачет/не зачет','2011-04-10 11:12:09','2011-04-10 11:12:09'),(2,'Тест на оценку','2011-04-10 11:12:26','2011-04-10 11:12:26'),(3,'Профилирующий тест','2011-04-10 11:12:38','2011-04-10 11:12:38'),(4,'Простой','2011-06-08 14:39:33','2011-06-08 14:39:33'),(5,'Расширенный','2011-06-08 14:39:55','2011-06-08 14:39:55');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Пение','2011-03-21 16:22:34','2011-03-21 16:22:34'),(2,'Лепение','2011-04-08 04:21:18','2011-04-08 04:21:18'),(3,'Мыловарение','2011-05-21 09:03:18','2011-05-21 09:03:18');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educations`
--

DROP TABLE IF EXISTS `educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educations`
--

LOCK TABLES `educations` WRITE;
/*!40000 ALTER TABLE `educations` DISABLE KEYS */;
/*!40000 ALTER TABLE `educations` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (7,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',11,'2011-04-02 11:49:44','2011-04-02 11:49:44'),(8,NULL,16,'2011-04-08 07:38:33','2011-04-08 07:38:33'),(9,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',14,'2011-04-26 15:51:56','2011-04-26 15:51:56'),(12,'__________________.png',22,'2011-05-21 12:44:30','2011-05-21 12:44:30'),(13,'____________-libreoffice_3.3.png',12,'2011-06-05 13:57:11','2011-06-05 13:57:11'),(14,'gerb.png',15,'2011-06-05 15:14:53','2011-06-05 15:14:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (12,'Как дальше жить?',1,8,1,'2011-04-08 04:20:14','2011-06-05 14:00:00'),(13,'Что такое лепение?',1,8,2,'2011-04-08 04:21:46','2011-04-08 04:21:46'),(14,'В каком году основали Москву?',1,10,1,'2011-04-08 05:10:01','2011-04-08 05:10:01'),(15,'Привет мир!',1,9,1,'2011-04-08 05:11:02','2011-04-08 05:11:02'),(16,'мур?',1,7,1,'2011-04-08 05:11:48','2011-04-08 05:11:48'),(17,'что?',1,8,1,'2011-04-08 08:01:12','2011-04-08 08:01:12'),(18,'Базу в базу!',1,6,1,'2011-04-13 07:02:36','2011-04-13 07:02:36'),(19,'Какой цвет у стоп-крана самолета?',NULL,6,1,'2011-05-21 10:02:00','2011-05-21 10:02:00'),(20,'ололо?',NULL,7,3,'2011-05-21 12:10:55','2011-05-21 12:20:51'),(21,'Соотнесите мыло и его предназначение.',NULL,9,3,'2011-05-21 12:29:24','2011-05-21 12:30:26'),(22,'Без какого символа не обходится ни одно мыло?',NULL,8,3,'2011-05-21 12:35:33','2011-05-21 12:35:33');
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
INSERT INTO `schema_migrations` VALUES ('20110227184656'),('20110228171033'),('20110302104604'),('20110321133105'),('20110321160153'),('20110331081427'),('20110402103649'),('20110408131805'),('20110408151238'),('20110410101259'),('20110410102119'),('20110414125608'),('20110415040128'),('20110416113022'),('20110426150947'),('20110520040040'),('20110520040112'),('20110520040137'),('20110520040225'),('20110520040437'),('20110529100203');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serlevels`
--

DROP TABLE IF EXISTS `serlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serlevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serlevels`
--

LOCK TABLES `serlevels` WRITE;
/*!40000 ALTER TABLE `serlevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `serlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sertypes`
--

DROP TABLE IF EXISTS `sertypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sertypes`
--

LOCK TABLES `sertypes` WRITE;
/*!40000 ALTER TABLE `sertypes` DISABLE KEYS */;
INSERT INTO `sertypes` VALUES (1,'Тип 1','2011-05-23 09:51:28','2011-05-23 09:51:28'),(2,'Тип 2','2011-05-23 09:51:56','2011-05-23 09:51:56');
/*!40000 ALTER TABLE `sertypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spheres`
--

DROP TABLE IF EXISTS `spheres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spheres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spheres`
--

LOCK TABLES `spheres` WRITE;
/*!40000 ALTER TABLE `spheres` DISABLE KEYS */;
/*!40000 ALTER TABLE `spheres` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tconfigurations`
--

LOCK TABLES `tconfigurations` WRITE;
/*!40000 ALTER TABLE `tconfigurations` DISABLE KEYS */;
INSERT INTO `tconfigurations` VALUES (2,'htrhtr',1,1,1,1,1,20,50,70,'00:30:00','2011-04-16 10:40:48','2011-04-16 10:40:48',1),(3,'kjk',1,1,1,1,1,50,70,90,'00:30:00','2011-05-20 08:21:18','2011-05-20 08:21:18',2),(4,'dwed',1,1,1,1,1,44,61,82,'00:30:00','2011-05-20 08:27:38','2011-05-20 08:27:38',3),(5,'gtgtfgt',1,1,1,1,1,45,75,85,'00:30:00','2011-06-08 17:03:05','2011-06-08 17:03:05',5),(6,'ddeftrbdtfbg',5,0,0,0,0,58,77,91,'00:30:00','2011-06-08 17:17:42','2011-06-08 17:17:42',4),(7,'fefe',1,1,1,1,1,54,76,90,'00:30:00','2011-06-09 10:06:34','2011-06-09 10:06:34',5),(8,'енгщз',5,0,0,0,0,50,70,88,'00:30:00','2011-06-09 10:09:41','2011-06-09 10:09:41',4),(9,'fastconf',2,1,2,1,1,60,80,90,'00:45:00','2011-06-09 10:13:39','2011-06-09 10:13:39',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,1,15,'1|%|%3','10 14 12,11 13 15',0,'2011-04-20 06:15:24','2011-04-26 14:31:31'),(2,1,14,'4|%1|%2|%3|%5','8 5 6 7 9',1,'2011-04-20 06:15:24','2011-04-26 14:36:37'),(3,1,18,'0','36',1,'2011-04-20 06:15:25','2011-04-26 14:38:58'),(4,1,16,'3','17 19 18 16',1,'2011-04-20 06:15:25','2011-04-26 14:39:29'),(5,1,13,'','4',0,'2011-04-20 06:15:25','2011-04-27 06:20:32'),(6,2,16,'','19 16 17 18',0,'2011-04-27 06:45:53','2011-04-27 06:45:53'),(7,2,18,'','36',0,'2011-04-27 06:45:53','2011-04-27 06:45:53'),(8,2,15,'','12 14 10,11 15 13',0,'2011-04-27 06:45:54','2011-04-27 06:45:54'),(9,2,14,'','9 8 7 5 6',0,'2011-04-27 06:45:54','2011-04-27 06:45:54'),(10,2,12,'2','1 2 3',0,'2011-04-27 06:45:54','2011-04-27 07:24:22'),(11,3,12,'','3 2 1',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(12,3,14,'','9 7 5 8 6',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(13,3,18,'','36',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(14,3,15,'','10 12 14,11 15 13',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(15,3,16,'','19 16 18 17',0,'2011-04-27 07:25:41','2011-04-27 07:25:41'),(16,4,16,'0','16 19 18 17',1,'2011-04-29 04:23:00','2011-04-29 04:26:29'),(17,4,15,'2|%3|%1','10 14 12,15 13 11',0,'2011-04-29 04:23:00','2011-04-29 04:28:34'),(18,4,18,'0','36',1,'2011-04-29 04:23:00','2011-04-29 04:28:43'),(19,4,12,'НЕ ЗНАЮ','3 1 2',1,'2011-04-29 04:23:00','2011-04-29 04:28:56'),(20,4,14,'5|%1|%4|%2|%3','9 5 8 6 7',1,'2011-04-29 04:23:00','2011-04-29 04:23:41'),(21,5,15,'','12 10 14,15 13 11',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(22,5,17,'','34 33 35',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(23,5,16,'','19 17 18 16',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(24,5,18,'','36',0,'2011-04-29 04:30:48','2011-04-29 04:30:48'),(25,5,14,'','6 8 5 9 7',0,'2011-04-29 04:30:49','2011-04-29 04:30:49'),(26,6,18,'0','36',1,'2011-04-29 04:32:41','2011-04-29 04:44:43'),(27,6,13,'','4',0,'2011-04-29 04:32:41','2011-04-29 04:32:41'),(28,6,16,'0','16 17 19 18',1,'2011-04-29 04:32:41','2011-04-29 04:44:49'),(29,6,15,'1|%2|%3','12 14 10,13 15 11',0,'2011-04-29 04:32:41','2011-04-29 04:44:57'),(30,6,14,'1|%2|%3|%4|%5','6 9 7 5 8',0,'2011-04-29 04:32:41','2011-04-29 04:45:06'),(31,7,13,'Не знаю','4',1,'2011-05-04 07:21:40','2011-05-04 07:22:10'),(32,7,15,'2|%1|%3','10 12 14,13 11 15',1,'2011-05-04 07:21:40','2011-05-04 07:22:25'),(33,7,14,'5|%2|%1|%4|%3','9 6 5 8 7',1,'2011-05-04 07:21:40','2011-05-04 07:22:50'),(34,7,18,'0','36',1,'2011-05-04 07:21:40','2011-05-04 07:22:57'),(35,7,16,'0','18 19 16 17',0,'2011-05-04 07:21:40','2011-05-04 07:23:04'),(36,8,18,'','36',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(37,8,16,'','18 17 16 19',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(38,8,14,'','9 8 6 5 7',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(39,8,15,'','10 14 12,11 13 15',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(40,8,17,'','34 35 33',0,'2011-05-07 10:23:29','2011-05-07 10:23:29'),(41,9,18,'','36',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(42,9,16,'','17 18 19 16',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(43,9,12,'','1 2 3',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(44,9,15,'','10 12 14,11 13 15',0,'2011-05-07 10:54:25','2011-05-07 10:54:25'),(45,9,14,'|%|%|%|%','9 6 8 5 7',0,'2011-05-07 10:54:25','2011-05-07 11:14:15'),(46,10,15,'','14 12 10,15 13 11',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(47,10,17,'','34 35 33',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(48,10,18,'','36',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(49,10,14,'5|%4|%2|%1|%3','8 7 9 6 5',0,'2011-05-07 11:26:51','2011-05-07 11:51:51'),(50,10,16,'','18 16 17 19',0,'2011-05-07 11:26:51','2011-05-07 11:26:51'),(51,11,14,'','5 7 6 9 8',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(52,11,12,'','2 3 1',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(53,11,18,'','36',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(54,11,16,'','19 16 18 17',0,'2011-05-07 16:30:40','2011-05-07 16:30:40'),(55,11,15,'3|%1|%2','12 14 10,11 13 15',0,'2011-05-07 16:30:40','2011-05-07 16:58:36'),(56,12,13,'Не знаю','4',1,'2011-05-07 17:04:41','2011-05-07 17:05:46'),(57,12,18,'0','36',1,'2011-05-07 17:04:41','2011-05-07 17:06:56'),(58,12,15,'3|%2|%1','10 14 12,13 15 11',0,'2011-05-07 17:04:41','2011-05-07 17:05:12'),(59,12,16,'1','17 16 19 18',1,'2011-05-07 17:04:41','2011-05-07 17:07:17'),(60,12,14,'5|%1|%3|%2|%4','6 8 7 9 5',0,'2011-05-07 17:04:41','2011-05-07 17:15:30'),(61,13,14,'3|%1|%2|%4|%5','6 7 5 8 9',1,'2011-05-07 17:21:13','2011-05-07 17:43:36'),(62,13,16,'','17 18 19 16',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(63,13,17,'','33 34 35',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(64,13,15,'','14 12 10,15 11 13',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(65,13,18,'','36',0,'2011-05-07 17:21:13','2011-05-07 17:21:13'),(66,14,14,'','6 7 8 5 9',0,'2011-05-07 17:56:53','2011-05-07 17:56:53'),(67,14,18,'','36',0,'2011-05-07 17:56:53','2011-05-07 17:56:53'),(68,14,15,'2|%1|%3','12 14 10,15 13 11',1,'2011-05-07 17:56:53','2011-05-07 17:59:43'),(69,14,12,'','1 2 3',0,'2011-05-07 17:56:54','2011-05-07 17:56:54'),(70,14,16,'','16 18 19 17',0,'2011-05-07 17:56:54','2011-05-07 17:56:54'),(71,15,13,'jkjk','4',0,'2011-05-08 16:47:16','2011-05-08 16:47:22'),(72,15,14,'1|%2|%3|%4|%5','5 8 6 9 7',0,'2011-05-08 16:47:16','2011-05-08 16:47:27'),(73,15,16,'2|%3','18 16 19 17',0,'2011-05-08 16:47:16','2011-05-08 16:47:32'),(74,15,18,'','36',1,'2011-05-08 16:47:16','2011-05-08 16:55:53'),(75,15,15,'1|%2|%','12 10 14,15 11 13',0,'2011-05-08 16:47:16','2011-05-08 16:49:22'),(76,16,13,'hygdjw','4',0,'2011-05-13 04:25:48','2011-05-13 04:25:56'),(77,16,18,'','36',1,'2011-05-13 04:25:48','2011-05-13 04:26:02'),(78,16,16,'2','17 18 16 19',1,'2011-05-13 04:25:48','2011-05-13 04:26:07'),(79,16,14,'5|%3|%2|%1|%4','8 7 6 9 5',1,'2011-05-13 04:25:48','2011-05-13 04:26:39'),(80,16,15,'3|%1|%2','10 14 12,13 11 15',1,'2011-05-13 04:25:48','2011-05-13 04:27:29'),(81,17,18,'','36',1,'2011-05-13 07:54:20','2011-05-13 07:54:25'),(82,17,14,'5|%1|%3|%2|%4','6 8 7 9 5',1,'2011-05-13 07:54:20','2011-05-13 07:54:48'),(83,17,15,'2|%3|%1','10 14 12,15 13 11',1,'2011-05-13 07:54:20','2011-05-13 07:55:23'),(84,17,16,'1|%2|%3','16 18 19 17',0,'2011-05-13 07:54:20','2011-05-13 07:55:30'),(85,17,17,'bhhjhjj','34 35 33',0,'2011-05-13 07:54:20','2011-05-13 07:55:37'),(86,18,15,'2|%3|%1','10 12 14,11 15 13',0,'2011-05-19 07:36:10','2011-05-19 07:36:36'),(87,18,12,'Хз','2 1 3',0,'2011-05-19 07:36:10','2011-05-19 07:36:46'),(88,18,14,'1|%2|%4|%3|%5','5 6 7 9 8',0,'2011-05-19 07:36:10','2011-05-19 07:37:00'),(89,18,16,'2|%3','16 19 18 17',0,'2011-05-19 07:36:10','2011-05-19 07:37:08'),(90,18,18,'','36',1,'2011-05-19 07:36:10','2011-05-19 07:37:13'),(91,19,15,'3|%1|%2','12 14 10,11 13 15',1,'2011-05-22 12:25:02','2011-05-22 12:25:34'),(92,19,14,'2|%4|%5|%1|%3','8 5 9 6 7',1,'2011-05-22 12:25:02','2011-05-22 12:25:49'),(93,19,19,'2','54 52 55 53',1,'2011-05-22 12:25:02','2011-05-22 12:25:57'),(94,19,12,'да','41 40 42',0,'2011-05-22 12:25:02','2011-05-22 12:26:06'),(95,19,16,'0','16 19 18 17',1,'2011-05-22 12:25:02','2011-05-22 12:26:10'),(96,20,19,'3','52 53 54 55',1,'2011-05-29 10:09:17','2011-05-29 10:09:54'),(97,20,16,'0','16 18 19 17',1,'2011-05-29 10:09:17','2011-05-29 10:09:57'),(98,20,14,'5|%1|%2|%3|%4','6 7 8 9 5',1,'2011-05-29 10:09:17','2011-05-29 10:10:13'),(99,20,15,'1|%3|%2','12 10 14,13 11 15',0,'2011-05-29 10:09:17','2011-05-29 10:10:23'),(100,20,17,'у4ев','47 45 46',0,'2011-05-29 10:09:17','2011-05-29 10:16:22'),(101,21,18,'1','44 43',1,'2011-06-02 11:29:50','2011-06-02 11:30:06'),(102,21,17,'где?','47 46 45',0,'2011-06-02 11:29:50','2011-06-02 11:30:13'),(103,21,14,'5|%1|%3|%4|%2','6 9 7 8 5',1,'2011-06-02 11:29:50','2011-06-02 11:30:28'),(104,21,16,'2','18 19 16 17',1,'2011-06-02 11:29:50','2011-06-02 11:30:32'),(105,21,15,'1|%3|%2','10 12 14,11 15 13',1,'2011-06-02 11:29:50','2011-06-02 11:30:52'),(106,22,19,'','55 52 53 54',0,'2011-06-02 12:12:12','2011-06-02 12:12:12'),(107,22,15,'1|%3|%2','12 10 14,13 11 15',0,'2011-06-02 12:12:12','2011-06-02 12:21:34'),(108,22,16,'','19 17 18 16',0,'2011-06-02 12:12:12','2011-06-02 12:12:12'),(109,22,17,'','45 47 46',0,'2011-06-02 12:12:12','2011-06-02 12:12:12'),(110,22,14,'4|%5|%2|%3|%1','9 7 8 5 6',1,'2011-06-02 12:12:12','2011-06-02 12:22:06'),(111,23,19,'','55 53 52 54',0,'2011-06-04 07:07:14','2011-06-04 07:07:14'),(112,23,15,'','14 10 12,13 15 11',0,'2011-06-04 07:07:14','2011-06-04 07:07:14'),(113,23,14,'','8 9 6 5 7',0,'2011-06-04 07:07:14','2011-06-04 07:07:14'),(114,23,17,'','47 46 45',0,'2011-06-04 07:07:14','2011-06-04 07:07:14'),(115,23,16,'','19 17 18 16',0,'2011-06-04 07:07:14','2011-06-04 07:07:14'),(116,24,14,'','8 6 5 7 9',0,'2011-06-04 10:22:10','2011-06-04 10:22:10'),(117,24,15,'','12 14 10,15 13 11',0,'2011-06-04 10:22:11','2011-06-04 10:22:11'),(118,24,13,'','4',0,'2011-06-04 10:22:11','2011-06-04 10:22:11'),(119,24,19,'','55 54 52 53',0,'2011-06-04 10:22:11','2011-06-04 10:22:11'),(120,24,16,'','17 18 19 16',0,'2011-06-04 10:22:11','2011-06-04 10:22:11'),(121,25,16,'1|%2|%3','19 17 18 16',0,'2011-06-04 12:27:04','2011-06-04 12:27:11'),(122,25,14,'1|%4|%2|%3|%5','5 6 9 8 7',0,'2011-06-04 12:27:04','2011-06-04 12:27:18'),(123,25,13,'хз','4',0,'2011-06-04 12:27:04','2011-06-04 12:27:44'),(124,25,19,'1','52 53 54 55',0,'2011-06-04 12:27:04','2011-06-04 12:28:09'),(125,25,15,'3|%1|%2','10 14 12,13 11 15',1,'2011-06-04 12:27:04','2011-06-04 12:28:20'),(126,26,19,'','52 53 54 55',0,'2011-06-06 05:36:34','2011-06-06 05:36:34'),(127,26,12,'','66 68 67',0,'2011-06-06 05:36:34','2011-06-06 05:36:34'),(128,26,15,'','10 14 12,11 13 15',0,'2011-06-06 05:36:34','2011-06-06 05:36:34'),(129,26,16,'0','19 16 17 18',0,'2011-06-06 05:36:34','2011-06-06 05:47:47'),(130,26,14,'3|%1|%2|%4|%5','6 7 5 9 8',0,'2011-06-06 05:36:34','2011-06-06 05:47:54'),(131,27,19,'0','53 54 52 55',0,'2011-06-09 09:13:09','2011-06-09 09:13:16'),(132,27,16,'1|%2','17 19 18 16',0,'2011-06-09 09:13:09','2011-06-09 09:13:20'),(133,27,15,'3|%1|%2','12 14 10,11 13 15',1,'2011-06-09 09:13:09','2011-06-09 09:13:57'),(134,27,14,'1|%2|%4|%3|%5','6 8 9 7 5',0,'2011-06-09 09:13:09','2011-06-09 09:14:02'),(135,27,18,'0','44 43',0,'2011-06-09 09:13:10','2011-06-09 09:14:11'),(136,28,17,'','47 46 45',0,'2011-06-09 09:23:52','2011-06-09 09:23:52'),(137,28,18,'','43 44',0,'2011-06-09 09:23:52','2011-06-09 09:23:52'),(138,28,19,'','53 55 54 52',0,'2011-06-09 09:23:52','2011-06-09 09:23:52'),(139,28,12,'','66 67 68',0,'2011-06-09 09:23:52','2011-06-09 09:23:52'),(140,28,14,'','5 9 8 6 7',0,'2011-06-09 09:23:52','2011-06-09 09:23:52'),(141,29,16,'0','16 17 18 19',1,'2011-06-09 09:24:57','2011-06-09 09:31:53'),(142,29,15,'|%2|%','14 10 12,13 15 11',0,'2011-06-09 09:24:57','2011-06-09 09:32:00'),(143,29,19,'1','55 54 53 52',0,'2011-06-09 09:24:57','2011-06-09 09:32:03'),(144,29,14,'2|%1|%3|%4|%5','8 7 9 5 6',0,'2011-06-09 09:24:57','2011-06-09 09:32:07'),(145,29,17,'','46 47 45',0,'2011-06-09 09:24:57','2011-06-09 09:24:57'),(146,30,18,'0','43 44',1,'2011-06-09 10:06:45','2011-06-09 10:06:50'),(147,30,12,'хз','66 68 67',0,'2011-06-09 10:06:45','2011-06-09 10:07:00'),(148,30,14,'2|%4|%1|%3|%5','7 5 9 6 8',0,'2011-06-09 10:06:45','2011-06-09 10:07:11'),(149,30,16,'','16 17 18 19',0,'2011-06-09 10:06:46','2011-06-09 10:06:46'),(150,30,15,'','12 14 10,15 13 11',0,'2011-06-09 10:06:46','2011-06-09 10:06:46'),(151,31,19,'','54 52 55 53',0,'2011-06-09 10:10:08','2011-06-09 10:10:08'),(152,31,16,'','17 16 19 18',0,'2011-06-09 10:10:08','2011-06-09 10:10:08'),(153,31,12,'','66 67 68',0,'2011-06-09 10:10:08','2011-06-09 10:10:08'),(154,31,17,'','47 45 46',0,'2011-06-09 10:10:08','2011-06-09 10:10:08'),(155,31,18,'','44 43',0,'2011-06-09 10:10:08','2011-06-09 10:10:08'),(156,32,18,'','43 44',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(157,32,16,'','17 16 18 19',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(158,32,19,'','52 55 53 54',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(159,32,12,'','67 66 68',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(160,32,15,'','10 14 12,11 15 13',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(161,32,17,'','46 47 45',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(162,32,14,'','9 6 5 8 7',0,'2011-06-09 10:13:40','2011-06-09 10:13:40'),(163,33,18,'','44 43',0,'2011-06-09 11:12:11','2011-06-09 11:12:11'),(164,33,17,'','46 45 47',0,'2011-06-09 11:12:11','2011-06-09 11:12:11'),(165,33,14,'','5 8 6 7 9',0,'2011-06-09 11:12:11','2011-06-09 11:12:11'),(166,33,15,'','10 14 12,13 15 11',0,'2011-06-09 11:12:11','2011-06-09 11:12:11'),(167,33,19,'','54 55 52 53',0,'2011-06-09 11:12:11','2011-06-09 11:12:11'),(168,34,18,'','43 44',0,'2011-06-09 11:43:22','2011-06-09 11:43:22'),(169,34,19,'','53 54 52 55',0,'2011-06-09 11:43:23','2011-06-09 11:43:23'),(170,34,16,'','16 19 18 17',0,'2011-06-09 11:43:23','2011-06-09 11:43:23'),(171,34,14,'','9 7 8 6 5',0,'2011-06-09 11:43:23','2011-06-09 11:43:23'),(172,34,12,'','67 68 66',0,'2011-06-09 11:43:23','2011-06-09 11:43:23'),(173,35,19,'','53 55 54 52',0,'2011-06-09 11:43:46','2011-06-09 11:43:46'),(174,35,14,'','7 9 6 5 8',0,'2011-06-09 11:43:46','2011-06-09 11:43:46'),(175,35,15,'','14 10 12,15 11 13',0,'2011-06-09 11:43:46','2011-06-09 11:43:46'),(176,35,12,'','67 68 66',0,'2011-06-09 11:43:47','2011-06-09 11:43:47'),(177,35,18,'','43 44',0,'2011-06-09 11:43:47','2011-06-09 11:43:47'),(178,35,17,'','47 45 46',0,'2011-06-09 11:43:47','2011-06-09 11:43:47'),(179,35,16,'','19 16 17 18',0,'2011-06-09 11:43:47','2011-06-09 11:43:47');
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
  `mark` int(11) DEFAULT NULL,
  `percent` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testsessions`
--

LOCK TABLES `testsessions` WRITE;
/*!40000 ALTER TABLE `testsessions` DISABLE KEYS */;
INSERT INTO `testsessions` VALUES (1,2,2,'2011-04-20 06:15:24','2011-04-30 08:14:21',1,NULL,NULL),(2,2,2,'2011-04-27 06:45:53','2011-04-27 06:45:53',0,NULL,NULL),(3,2,2,'2011-04-27 07:25:41','2011-04-27 07:25:41',0,NULL,NULL),(4,2,2,'2011-04-29 04:23:00','2011-04-29 04:23:00',0,NULL,NULL),(5,2,2,'2011-04-29 04:30:48','2011-04-29 04:30:48',0,NULL,NULL),(6,2,2,'2011-04-29 04:32:41','2011-04-29 04:45:09',1,NULL,NULL),(7,2,2,'2011-05-04 07:21:40','2011-05-04 07:23:08',1,NULL,NULL),(8,2,2,'2011-05-07 10:23:29','2011-05-07 10:54:08',1,NULL,NULL),(9,2,2,'2011-05-07 10:54:24','2011-05-07 11:26:37',1,NULL,NULL),(10,2,2,'2011-05-07 11:26:51','2011-05-07 11:56:50',1,NULL,NULL),(11,2,2,'2011-05-07 16:30:40','2011-05-07 17:03:31',1,NULL,NULL),(12,2,2,'2011-05-07 17:04:41','2011-05-08 16:44:36',1,NULL,NULL),(13,2,2,'2011-05-07 17:21:13','2011-05-07 17:51:12',1,NULL,NULL),(14,2,2,'2011-05-07 17:56:53','2011-05-07 17:56:53',0,NULL,NULL),(15,2,2,'2011-05-08 16:47:16','2011-05-08 16:49:25',1,NULL,NULL),(16,2,2,'2011-05-13 04:25:48','2011-05-13 04:56:02',1,NULL,NULL),(17,2,2,'2011-05-13 07:54:19','2011-05-13 07:56:02',1,NULL,NULL),(18,2,2,'2011-05-19 07:36:09','2011-05-19 07:37:16',1,NULL,NULL),(19,2,4,'2011-05-22 12:25:02','2011-05-22 12:26:13',1,NULL,NULL),(20,2,2,'2011-05-29 10:09:17','2011-05-29 10:16:27',1,4,60),(21,2,2,'2011-06-02 11:29:49','2011-06-02 11:31:01',1,5,80),(22,2,4,'2011-06-02 12:12:11','2011-06-02 12:12:11',0,NULL,NULL),(23,2,2,'2011-06-04 07:07:13','2011-06-04 07:08:02',1,2,0),(24,2,3,'2011-06-04 10:22:10','2011-06-04 10:22:10',0,NULL,NULL),(25,2,2,'2011-06-04 12:27:04','2011-06-04 12:28:23',1,3,20),(26,2,2,'2011-06-06 05:36:33','2011-06-06 05:47:57',1,2,0),(27,2,6,'2011-06-09 09:13:09','2011-06-09 09:14:14',1,2,20),(28,2,6,'2011-06-09 09:23:52','2011-06-09 10:10:56',1,2,0),(29,2,6,'2011-06-09 09:24:57','2011-06-09 09:32:14',1,2,20),(30,2,7,'2011-06-09 10:06:45','2011-06-09 10:07:14',1,2,20),(31,2,8,'2011-06-09 10:10:08','2011-06-09 10:10:28',1,2,0),(32,2,9,'2011-06-09 10:13:40','2011-06-09 10:13:55',1,2,0),(33,2,8,'2011-06-09 11:12:10','2011-06-09 11:42:10',1,2,0),(34,2,8,'2011-06-09 11:43:22','2011-06-09 11:43:37',1,2,0),(35,2,9,'2011-06-09 11:43:46','2011-06-09 11:43:46',0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Моцарт',1,'2011-03-21 16:22:44','2011-03-21 16:22:44'),(2,'Про лепение',2,'2011-04-08 04:21:33','2011-04-08 04:21:33'),(3,'Преобразование жира',3,'2011-05-21 12:10:02','2011-05-21 12:10:02');
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
  `F` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `I` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `O` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sex` tinyint(1) DEFAULT NULL,
  `Birth` date DEFAULT NULL,
  `workplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `proff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sertype_id` int(11) DEFAULT NULL,
  `sphere_id` int(11) DEFAULT NULL,
  `education_id` int(11) DEFAULT NULL,
  `serlevel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'inter','','o@ru','4a61878f022fd9edff36f5436fa40ce8373bb8ac','3b9a0cccdd8b5b4a7c844ab35a560ca5219375fa','2011-03-21 16:22:20','2011-03-21 16:22:20',NULL,NULL,'--- \n- admin\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'qqqqq','','o@ru','6f6c8b1073f89fcd39e9ae59f481cdeee172f21f','5114467824e861b47d900aaceb025b20b38f36ab','2011-03-31 08:22:14','2011-06-02 10:42:54',NULL,NULL,'--- \n- admin\n','Кузьмин','Михаил','Иванович',1,'1990-09-19','аущшаоущзцалщз','ауацуауау',2,NULL,NULL,NULL),(3,'xamele0n','','o@ru','c3e3f3de1da2b3de2c1ec7517ccb142f4b8ce37a','a8f6d06d7e57c28c23e1d058085177c01ca767d1','2011-04-08 04:19:19','2011-04-08 04:19:19',NULL,NULL,'--- \n- admin\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'qwert','','o@ru','28f5b9b4de5f25b082c381be25acd108cc3ef235','708608c11169df9077aa2f2419c8beb160b7c6de','2011-06-04 12:34:47','2011-06-04 12:34:47',NULL,NULL,'--- \n- user\n','Иванов','Сидор','Петрович',1,'2002-06-04','Шарашкина контора','Зам. директора',1,NULL,NULL,NULL);
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

-- Dump completed on 2011-06-09 18:21:24
