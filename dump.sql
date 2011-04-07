-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: A3_development
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,0,'1738',NULL,NULL,'2011-04-03 16:53:59','2011-04-03 16:53:59'),(2,0,'1738',NULL,NULL,'2011-04-03 16:57:09','2011-04-03 16:57:09'),(3,1,'1756',NULL,NULL,'2011-04-03 16:57:09','2011-04-03 16:57:09'),(4,0,'1738',NULL,NULL,'2011-04-03 16:57:53','2011-04-03 16:57:53'),(5,1,'1756',NULL,NULL,'2011-04-03 16:57:53','2011-04-03 16:57:53'),(26,0,'1999',11,NULL,'2011-04-04 07:05:39','2011-04-04 07:05:39'),(27,0,'1985',11,NULL,'2011-04-04 07:05:39','2011-04-04 07:05:39'),(28,0,'1986',11,NULL,'2011-04-04 07:05:39','2011-04-04 07:05:39'),(29,1,'1875',11,NULL,'2011-04-04 07:05:39','2011-04-04 07:05:39'),(38,0,'1986',12,NULL,'2011-04-04 12:56:33','2011-04-04 12:56:33'),(39,1,'1985',12,NULL,'2011-04-04 12:56:33','2011-04-04 12:56:33'),(40,0,'ццц',12,NULL,'2011-04-04 12:56:33','2011-04-04 12:56:33'),(41,1,'бас-гитара',13,NULL,'2011-04-04 13:18:36','2011-04-04 13:18:36'),(42,0,'балалайка',13,NULL,'2011-04-04 13:18:36','2011-04-04 13:18:36'),(43,0,'скрипка',13,NULL,'2011-04-04 13:18:36','2011-04-04 13:18:36'),(44,1,'барабан',13,NULL,'2011-04-04 13:18:37','2011-04-04 13:18:37'),(60,1,'Кино',16,1,'2011-04-04 15:44:41','2011-04-04 15:44:41'),(61,1,'Звезда по имени Солнце',16,2,'2011-04-04 15:44:42','2011-04-04 15:44:42'),(62,2,'Каста',16,1,'2011-04-04 15:44:42','2011-04-04 15:44:42'),(63,2,'Ревность',16,2,'2011-04-04 15:44:42','2011-04-04 15:44:42'),(64,3,'Алла Пугачева',16,1,'2011-04-04 15:44:42','2011-04-04 15:44:42'),(65,3,'Арлекино',16,2,'2011-04-04 15:44:42','2011-04-04 15:44:42'),(66,4,'Зайка моя',16,2,'2011-04-04 15:44:42','2011-04-04 15:44:42'),(71,1,'Бетховен',14,NULL,'2011-04-06 06:14:52','2011-04-06 06:14:52'),(72,1,'Людвиг Бетховен',14,NULL,'2011-04-06 06:14:52','2011-04-06 06:14:52'),(73,1,'HHH',14,NULL,'2011-04-06 06:14:53','2011-04-06 06:14:53');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'Пение','2011-03-21 16:22:34','2011-03-21 16:22:34');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (7,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',11,'2011-04-02 11:49:44','2011-04-02 11:49:44'),(8,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',12,'2011-04-04 12:58:53','2011-04-04 12:58:53'),(9,NULL,14,'2011-04-06 06:15:47','2011-04-06 06:15:47'),(12,'weemee_37025b121c6babbf5c96d7eafae8c079_for_inter-proger.jpg',15,'2011-04-06 06:17:16','2011-04-06 06:17:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'В каком году родился Моцарт?',5,1,1,'2011-03-31 13:12:51','2011-03-31 13:12:51'),(2,'В каком году родился Моцарт?',5,1,1,'2011-03-31 13:18:07','2011-03-31 13:18:07'),(3,'В каком году родился Моцарт?',5,1,1,'2011-03-31 13:21:52','2011-03-31 13:21:52'),(4,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:35:21','2011-03-31 13:35:21'),(5,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:36:14','2011-03-31 13:36:14'),(6,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:37:16','2011-03-31 13:37:16'),(7,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:37:24','2011-03-31 13:37:24'),(8,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:38:49','2011-03-31 13:38:49'),(9,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:38:56','2011-03-31 13:38:56'),(10,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:40:34','2011-03-31 13:40:34'),(11,'В каком году родился Моцарт?www',5,1,1,'2011-03-31 13:41:41','2011-03-31 13:41:41'),(12,'В каком году родился пагонини ',2,6,1,'2011-04-04 12:54:39','2011-04-04 12:54:39'),(13,'Какие из перечисленных инструментов используются в Black Metal?',3,7,1,'2011-04-04 13:00:57','2011-04-04 13:00:57'),(14,'Автор лунной сонаты?',3,8,1,'2011-04-04 13:21:00','2011-04-04 13:21:00'),(15,'Соотнесите группы и композиции',2,6,1,'2011-04-04 15:31:08','2011-04-04 15:31:08'),(16,'Соотнесите группы и композиции',2,9,1,'2011-04-04 15:32:14','2011-04-04 15:32:14');
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
INSERT INTO `schema_migrations` VALUES ('20110227184656'),('20110228171033'),('20110302104604'),('20110321133105'),('20110321160153'),('20110331081427'),('20110402103649');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Моцарт',1,'2011-03-21 16:22:44','2011-03-21 16:22:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'inter','','o@ru','4a61878f022fd9edff36f5436fa40ce8373bb8ac','3b9a0cccdd8b5b4a7c844ab35a560ca5219375fa','2011-03-21 16:22:20','2011-03-21 16:22:20',NULL,NULL,'--- \n- admin\n'),(2,'qqqqq','','o@ru','6f6c8b1073f89fcd39e9ae59f481cdeee172f21f','5114467824e861b47d900aaceb025b20b38f36ab','2011-03-31 08:22:14','2011-03-31 08:22:14',NULL,NULL,'--- \n- admin\n');
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

-- Dump completed on 2011-04-06 13:18:48
