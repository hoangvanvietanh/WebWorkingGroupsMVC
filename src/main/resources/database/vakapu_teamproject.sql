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
-- Table structure for table `teamproject`
--

DROP TABLE IF EXISTS `teamproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teamproject` (
  `idteamproject` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `description` varchar(450) DEFAULT NULL,
  `visibility` varchar(45) DEFAULT NULL,
  `action` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_task` int(4) DEFAULT NULL,
  `task_done` int(4) DEFAULT NULL,
  `due` int(4) DEFAULT NULL,
  PRIMARY KEY (`idteamproject`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teamproject`
--

LOCK TABLES `teamproject` WRITE;
/*!40000 ALTER TABLE `teamproject` DISABLE KEYS */;
INSERT INTO `teamproject` VALUES (1,'Test Project Team','2018-07-30','2018-11-30',NULL,'nothing','Team',NULL,NULL,2,2,40),(2,'Test 2','2018-10-30','2018-12-30',NULL,'nothing','Team',NULL,NULL,5,2,70),(3,'test','2018-10-19','2018-10-27',NULL,'s','Member',NULL,NULL,0,0,6),(4,'test3','2018-10-20','2018-10-31',NULL,'hihi','Member',NULL,NULL,0,0,10),(5,'hihihihi','2018-10-20','2018-10-27',NULL,'ghj',NULL,NULL,NULL,0,0,6),(6,'hagu','2018-10-20','2018-10-27',NULL,'hihi','Everyone',NULL,NULL,0,0,6),(7,'nothing','2018-10-13','2018-10-25',NULL,'hihi','Member',NULL,NULL,3,2,2),(8,'test3333','2018-10-21','2018-10-25',NULL,'hihi','Member',NULL,NULL,0,0,2),(9,'HoÃ ng VÄ?n Viá»?t Anh','2018-10-21','2018-08-31',NULL,'df','Everyone',NULL,NULL,0,0,-52),(10,'testttttt','2018-10-21','2018-10-30',NULL,'1231313','Everyone',NULL,NULL,0,0,7),(11,'vietanh','2018-10-21','2018-10-31',NULL,'123','Everyone',NULL,NULL,0,0,8),(12,'test','2018-10-23','2018-10-31',NULL,'hihi','Member',NULL,NULL,0,0,8),(13,'Hoang Van Viet Anh','2018-10-22','2018-10-25',NULL,'Hoang Van Viet Anh','Member',NULL,NULL,1,0,2),(14,'Hoang Van Viet EM','2018-10-22','2018-10-31',NULL,'Hoang Van Viet Em','Everyone',NULL,NULL,0,0,8),(15,'test CREATE','2018-10-22','2018-10-31',NULL,'HELLO VIET ANH','Member',NULL,NULL,0,0,8),(16,'test 123123','2018-10-22','2018-01-31',NULL,'123','Member',NULL,NULL,5,3,-264),(17,'project 1','2018-10-22','2018-10-31',NULL,'nothing',NULL,NULL,NULL,2,0,8),(18,'test pro 1','2018-10-22','2018-10-31',NULL,'nothing','Everyone',NULL,NULL,3,0,8),(19,'project 1','2018-10-22','2018-10-31',NULL,'hello','Member',NULL,NULL,2,2,7),(20,'project 2','2018-10-30','2018-11-03',NULL,'hello','Member',NULL,NULL,0,0,0),(21,'project 2','2018-10-23','2018-11-01',NULL,'hi','Member',NULL,NULL,2,2,8),(22,'project 3','2018-10-23','2018-10-31',NULL,'hello Viet Anh','Member',NULL,NULL,3,1,7),(23,'project 4','2018-10-22','2018-12-31',NULL,'nothing','Member',NULL,NULL,0,0,0),(24,'project 5','2018-10-23','2018-10-31',NULL,'hehe','Member',NULL,NULL,0,0,7),(25,'Project 6','2018-10-23','2018-11-02',NULL,'hihi','Member',NULL,NULL,0,0,9),(26,'Project 7','2018-10-23','2018-11-30',NULL,'hihi','Member',NULL,NULL,0,0,0),(27,'Project 8','2018-10-23','2018-12-14',NULL,'haha','Member',NULL,NULL,0,0,51),(28,'Project 9','2018-10-24','2019-01-30',NULL,'bebe','Member',NULL,NULL,0,0,98);
/*!40000 ALTER TABLE `teamproject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-24  4:40:35
