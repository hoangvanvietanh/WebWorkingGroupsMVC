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
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `idtodo` int(11) NOT NULL AUTO_INCREMENT,
  `todo` varchar(245) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `task` int(11) DEFAULT NULL,
  `note` varchar(455) DEFAULT NULL,
  `titlenote` varchar(145) DEFAULT NULL,
  `taskTeamProject` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtodo`),
  KEY `FKl3kd2hun1wexy9dl36viy5vlf` (`taskTeamProject`),
  CONSTRAINT `FKl3kd2hun1wexy9dl36viy5vlf` FOREIGN KEY (`taskTeamProject`) REFERENCES `taskteamproject` (`idtaskteamproject`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (4,'null',1,NULL,NULL,NULL,11),(5,'testt2',1,NULL,NULL,NULL,11),(6,'testt3',1,NULL,NULL,NULL,11),(7,'testt',0,NULL,NULL,NULL,13),(8,'testt2',0,NULL,NULL,NULL,13),(9,'testt3',0,NULL,NULL,NULL,13),(10,'t1',1,NULL,NULL,NULL,11),(11,'2',1,NULL,NULL,NULL,11),(12,'3',0,NULL,NULL,NULL,11),(13,'hihihi',1,NULL,NULL,NULL,11),(14,'test 1',1,NULL,NULL,NULL,14),(15,'test 2',1,NULL,NULL,NULL,14),(16,'Viet Anh 1',0,NULL,NULL,NULL,16),(17,'Viet Anh 2',1,NULL,NULL,NULL,16),(18,'Viet Anh 3',0,NULL,NULL,NULL,16);
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

-- Dump completed on 2018-10-22 12:25:34
