-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: laravelcms
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `body` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (2,'Sobre mim','sobre-mim','<p><img src=\"http://127.0.0.1:8000/media/images/1587230524.jpeg\" alt=\"\" width=\"150\" height=\"150\" /></p>\r\n<p><span style=\"color: #2dc26b;\">Conte&uacute;do </span><span style=\"color: #f1c40f;\">sobre</span> <span style=\"color: #e03e2d;\">a <span style=\"color: #b96ad9;\">minha</span></span> <span style=\"color: #3598db;\">pessoa</span>.</p>\r\n<p>Veja mais no&nbsp; <a title=\"Um pouco mais sobre mim.\" href=\"google.com\" target=\"_blank\" rel=\"noopener\"><img style=\"color: #2dc26b;\" src=\"https://www.google.com.br/google.jpg\" alt=\"\" width=\"354\" height=\"116\" /></a>!</p>'),(4,'Teste 2','teste-2','Teste novo');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'title','Pizza Interessante'),(2,'subtitle','Site muito legal'),(3,'email','contato@site.com'),(4,'bgcolor','#1150a2'),(5,'textcolor','#ecde41');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Bonieky','suporte@b7web.com.br','$2y$10$wtaoWFrRPdcKxkCKwIjhoOqh0c5P/VmB5nUMQYhyMcX.O2WFc8.2W',NULL,1),(5,'Paulo Renasceu','paulo@renasceu.com','$2y$10$GM6fvpPZpLo3IfBJBjWFh.fEdZ7KOLo9/iFgvFnUN.OIAQ3Xfpqrq',NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) DEFAULT NULL,
  `date_access` datetime DEFAULT NULL,
  `page` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` VALUES (1,'1','2019-11-11 11:11:11','/'),(2,'1','2019-11-11 11:11:11','/'),(3,'1','2019-11-11 11:11:11','/teste'),(4,'1','2019-12-11 11:11:11','/teste'),(5,'1','2020-01-11 11:11:11','/'),(6,'1','2020-04-18 11:11:11','/'),(7,'1','2020-04-14 11:11:11','/'),(8,'1','2020-04-04 11:11:11','/'),(9,'1','2020-03-04 11:11:11','/'),(10,'1','2020-02-04 11:11:11','/'),(11,'1','2020-01-14 11:11:11','/'),(12,'1','2019-12-01 11:11:11','/teste'),(13,'1','2019-12-29 11:11:11','/teste'),(14,'1','2020-02-29 11:11:11','/teste'),(15,'1','2020-04-15 00:00:00','/teste'),(16,'1','2020-05-15 00:00:00','/teste'),(17,'1','2020-06-15 00:00:00','/teste'),(18,'1','2020-06-17 00:00:00','/teste'),(19,'1','2020-06-16 00:00:00','/teste'),(20,'1','2020-06-16 00:00:00','/teste'),(21,'1','2020-06-16 00:00:00','/teste'),(22,'1','2020-06-16 00:00:00','/teste'),(23,'1','2020-06-16 00:00:00','/teste');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-18 21:21:07
