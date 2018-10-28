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
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `todo` (
  `idtodo` int(11) NOT NULL AUTO_INCREMENT,
  `todo` varchar(245) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `taskTeamProject` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtodo`),
  KEY `FKl3kd2hun1wexy9dl36viy5vlf` (`taskTeamProject`),
  CONSTRAINT `FKl3kd2hun1wexy9dl36viy5vlf` FOREIGN KEY (`taskTeamProject`) REFERENCES `taskteamproject` (`idtaskteamproject`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (4,'null',1,11),(5,'testt2',1,11),(6,'testt3',1,11),(7,'testt',0,13),(8,'testt2',0,13),(9,'testt3',0,13),(10,'t1',1,11),(11,'2',1,11),(12,'3',1,11),(13,'hihihi',1,11),(14,'test 1',1,14),(15,'test 2',1,14),(16,'Viet Anh 1',0,16),(17,'Viet Anh 2',1,16),(18,'Viet Anh 3',0,16),(19,'2',1,12),(20,'testt2',1,12),(21,'1',1,18),(22,'2',1,18),(23,'3',1,18),(24,'hihi',0,19),(25,'hehe',0,19),(26,'1',1,20),(27,'2',1,20),(28,'2',0,21),(29,'testt3',1,21),(30,'2',0,21),(31,'testt2',1,21),(32,'1',1,24),(33,'2',1,24),(34,'3',1,24),(35,'1',1,25),(36,'2',1,25),(37,'3',1,25),(38,'1',1,23),(39,'2',1,23),(40,'1',1,22),(41,'2',1,22),(42,'todo 1',1,26),(43,'todo 2',1,26),(44,'todo 3',1,26),(45,'1',1,27),(46,'2',1,27),(47,'1',1,29),(48,'2',1,29),(49,'3',1,29),(50,'4',1,29),(51,'2',1,30),(52,'3',1,30),(53,'3',0,31),(54,'1',1,32),(55,'2',1,32),(56,'3',0,32),(57,'4',0,32);
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-28  9:36:10
