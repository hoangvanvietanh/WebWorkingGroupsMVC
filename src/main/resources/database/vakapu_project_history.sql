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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_history`
--

LOCK TABLES `project_history` WRITE;
/*!40000 ALTER TABLE `project_history` DISABLE KEYS */;
INSERT INTO `project_history` VALUES (4,'create project',27,NULL,'hoangvanvietanh@gmail.com','Project 8',27,'hoangvanvietanh@gmail.com'),(5,'create project',28,NULL,'Hoang Van Viet Anh','',28,'hoangvanvietanh@gmail.com'),(6,'quit the project',1,NULL,'Phuong','Test Project Team',1,'phuong@gmail.com'),(7,'quit the project',21,NULL,'Phuong','project 2',21,'phuong@gmail.com'),(8,'create project',29,NULL,'Phuong','1',29,'phuong@gmail.com'),(9,'create project',30,NULL,'Hoang Van Viet Anh','test',30,'hoangvanvietanh@gmail.com'),(10,'added the task',30,NULL,'Hoang Van Viet Anh','1',29,'hoangvanvietanh@gmail.com'),(11,'added the task',29,NULL,'Hoang Van Viet Anh','1',30,'hoangvanvietanh@gmail.com'),(12,'added the task',29,NULL,'Hoang Van Viet Anh','1',31,'hoangvanvietanh@gmail.com'),(13,'create project',31,NULL,'Hoang Van Viet Anh','test Team 1',31,'hoangvanvietanh@gmail.com'),(14,'added the task',31,NULL,'Hoang Van Viet Anh','task 1',32,'hoangvanvietanh@gmail.com'),(15,'quit the project',31,NULL,'Hoang Van Viet Anh','test Project 1',31,'hoangvanvietanh@gmail.com'),(16,'quit the project',31,NULL,'Hoang Van Viet Anh','test Project 1',31,'hoangvanvietanh@gmail.com'),(17,'create project',32,NULL,'Hoang Van Viet Anh','test project 2',32,'hoangvanvietanh@gmail.com'),(18,'create project',33,NULL,'Hoang Van Viet Anh','test project 2',33,'hoangvanvietanh@gmail.com'),(19,'added the task',33,NULL,'Hoang Van Viet Anh','task 1',33,'hoangvanvietanh@gmail.com'),(20,'added the task',33,NULL,'Hoang Van Viet Anh','task 2',34,'hoangvanvietanh@gmail.com'),(21,'create project',34,NULL,'Hoang Van Viet Anh','test project 3',34,'hoangvanvietanh@gmail.com'),(22,'quit the project',31,NULL,'Hoang Van Viet Anh','test Project 1',31,'hoangvanvietanh@gmail.com'),(23,'create project',35,NULL,'Hoang Van Viet Anh','viet anh dep trai',35,'hoangvanvietanh@gmail.com'),(24,'quit the project',35,NULL,'Hoang Van Viet Anh','viet anh dep trai',35,'hoangvanvietanh@gmail.com'),(25,'added the task',32,NULL,'Hoang Van Viet Anh','task 1',35,'hoangvanvietanh@gmail.com'),(26,'quit the project',33,NULL,'Hoang Van Viet Anh','test project 2',33,'hoangvanvietanh@gmail.com'),(27,'added the task',32,NULL,'Hoang Van Viet Anh','task 2',36,'hoangvanvietanh@gmail.com'),(28,'added the task',32,NULL,'Hoang Van Viet Anh','task 3',37,'hoangvanvietanh@gmail.com');
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

-- Dump completed on 2018-11-04 23:00:17
