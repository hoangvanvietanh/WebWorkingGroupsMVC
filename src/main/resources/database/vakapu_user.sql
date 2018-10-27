-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vakapu
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `email` varchar(150) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(22) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `skill` varchar(1000) DEFAULT NULL,
  `experience` varchar(3000) DEFAULT NULL,
  `education` varchar(1000) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('drigerstark@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('duyhieu@gmail.com','Duy Hieu',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','lukin-the-conversation.jpg',NULL),('giang@gmail.com','Giang',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','34843996_2088967914682201_7358940408837046272_n.jpg',NULL),('hoang@gmail.com','Khanh',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','419392.jpg',NULL),('hoangvanvietanh@gmail.com','Hoang Van Viet Anh',NULL,'1998-07-10','0903026389','Ho Chi Minh',NULL,NULL,NULL,NULL,'','251038.jpg','I am a coder'),('k11giadinh@gmail.com','Hoang van Dat',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','check.png','I am a designer'),('khanh@gmail.com','Khanh',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','Screenshot from 2018-10-17 14-29-53.png',NULL),('khoa@gmail.com','Khoa',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','images.jpeg',NULL),('khuuhieu@gmail.com','Khuu Hieu',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','download.jpeg',NULL),('phuong@gmail.com','Phuong',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','37732346_457573618040043_7939214211631022080_n.jpg',NULL),('vietem@gmail.com','Viet Em',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','sun.png',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28  0:23:54
