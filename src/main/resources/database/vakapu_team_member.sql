-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: vakapu
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Table structure for table `team_member`
--

DROP TABLE IF EXISTS `team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_member` (
  `idteam_member` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(155) DEFAULT NULL,
  `idteam` int(11) DEFAULT NULL,
  `role` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`idteam_member`),
  KEY `FKqdapgrj46hnhyeaecik8m04b3` (`idteam`),
  KEY `fk_team_member_1_idx` (`email`),
  CONSTRAINT `FKqdapgrj46hnhyeaecik8m04b3` FOREIGN KEY (`idteam`) REFERENCES `team` (`idteam`),
  CONSTRAINT `fk_team_member_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_member`
--

LOCK TABLES `team_member` WRITE;
/*!40000 ALTER TABLE `team_member` DISABLE KEYS */;
INSERT INTO `team_member` VALUES (18,'hoangvanvietanh@gmail.com',7,'Admin'),(19,'hoangvanvietanh@gmail.com',8,'Member'),(22,'khanh@gmail.com',7,'Member'),(23,'phuong@gmail.com',7,'Member'),(24,'hoangvanvietanh@gmail.com',9,'Member'),(25,'hoangvanvietanh@gmail.com',10,'Member'),(26,'hoangvanvietanh@gmail.com',11,'Admin'),(27,'khanh@gmail.com',11,'Member'),(28,'giang@gmail.com',11,'Member'),(29,'phuong@gmail.com',11,'Member'),(30,'hoangvanvietanh@gmail.com',12,'Admin'),(31,'khanh@gmail.com',12,'Member'),(32,'giang@gmail.com',12,'Member'),(33,'phuong@gmail.com',12,'Member'),(34,'duyhieu@gmail.com',12,'Member'),(35,'khuuhieu@gmail.com',12,'Member'),(36,'vietem@gmail.com',12,'Member'),(37,'hoangvanvietanh@gmail.com',13,'Admin'),(38,'khanh@gmail.com',13,'Member'),(39,'giang@gmail.com',13,'Member'),(40,'phuong@gmail.com',13,'Member'),(41,'duyhieu@gmail.com',13,'Member'),(42,'khuuhieu@gmail.com',13,'Member'),(43,'vietem@gmail.com',13,'Member'),(44,'hoangvanvietanh@gmail.com',14,'Admin'),(45,'khanh@gmail.com',14,'Member'),(46,'duyhieu@gmail.com',14,'Member'),(47,'khuuhieu@gmail.com',14,'Member'),(48,'vietem@gmail.com',14,'Member'),(49,'hoangvanvietanh@gmail.com',15,'Admin'),(50,'khanh@gmail.com',15,'Member'),(51,'giang@gmail.com',15,'Member'),(52,'phuong@gmail.com',15,'Member'),(53,'khuuhieu@gmail.com',15,'Member');
/*!40000 ALTER TABLE `team_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-19 17:50:17
