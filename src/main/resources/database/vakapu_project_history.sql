-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vakapu
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `project_history`
--

DROP TABLE IF EXISTS `project_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project_history` (
  `idproject_history` int(11) NOT NULL AUTO_INCREMENT,
  `activity` varchar(45) DEFAULT NULL,
  `teamproject` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `user` varchar(60) DEFAULT NULL,
  `last` varchar(45) DEFAULT NULL,
  `id_last` int(11) DEFAULT NULL,
  `id_user` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`idproject_history`),
  KEY `fk_project_history_1_idx` (`teamproject`),
  CONSTRAINT `fk_project_history_1` FOREIGN KEY (`teamproject`) REFERENCES `teamproject` (`idteamproject`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_history`
--

LOCK TABLES `project_history` WRITE;
/*!40000 ALTER TABLE `project_history` DISABLE KEYS */;
INSERT INTO `project_history` VALUES (4,'create project',27,NULL,'hoangvanvietanh@gmail.com','Project 8',27,'hoangvanvietanh@gmail.com'),(5,'create project',28,NULL,'Hoang Van Viet Anh','',28,'hoangvanvietanh@gmail.com'),(6,'quit the project',28,NULL,'Hoang Van Viet Anh','Project 9',28,'hoangvanvietanh@gmail.com'),(7,'quit the project',27,NULL,'Hoang Van Viet Anh','Project 8',27,'hoangvanvietanh@gmail.com'),(8,'create project',29,NULL,'Hoang Van Viet Anh','ahihi',29,'hoangvanvietanh@gmail.com'),(9,'create project',30,NULL,'Hoang Van Viet Anh','asd123',30,'hoangvanvietanh@gmail.com'),(10,'create project',31,NULL,'Hoang Van Viet Anh','pro 1',31,'hoangvanvietanh@gmail.com'),(11,'create project',32,NULL,'Hoang Van Viet Anh','pro 2',32,'hoangvanvietanh@gmail.com'),(12,'added the task',32,NULL,'Hoang Van Viet Anh','task 1',29,'hoangvanvietanh@gmail.com'),(13,'added the task',32,NULL,'Hoang Van Viet Anh','task 2',30,'hoangvanvietanh@gmail.com'),(14,'create project',33,NULL,'Khanh','pro khanh',33,'khanh@gmail.com'),(15,'added the task',33,NULL,'Khanh','1',31,'khanh@gmail.com'),(16,'create project',34,NULL,'Hoang Van Viet Anh','pro 1',34,'hoangvanvietanh@gmail.com'),(17,'added the task',34,NULL,'Hoang Van Viet Anh','task 1',32,'hoangvanvietanh@gmail.com');
/*!40000 ALTER TABLE `project_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28  9:36:11
