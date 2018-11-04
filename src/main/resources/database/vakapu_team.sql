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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `team` (
  `idteam` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  `owner` varchar(145) DEFAULT NULL,
  `member_amount` int(11) DEFAULT NULL,
  `project_amount` int(11) DEFAULT NULL,
  `date_create` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idteam`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (7,'Test Team 123','nothing','hoangvanvietanh@gmail.com',5,1,NULL),(8,'Test Team 2','nothing','hoangvanvietanh@gmail.com',1,1,NULL),(9,'next','test','hoangvanvietanh@gmail.com',1,1,NULL),(10,'test111','s','hoangvanvietanh@gmail.com',1,0,NULL),(11,'hello','nothing','hoangvanvietanh@gmail.com',3,0,NULL),(12,'Test team ne','nothing impossible','hoangvanvietanh@gmail.com',7,0,NULL),(13,'Hello Viet Anh','Meo','hoangvanvietanh@gmail.com',3,0,NULL),(14,'test','123','hoangvanvietanh@gmail.com',3,1,NULL),(15,'asd','asd','hoangvanvietanh@gmail.com',4,0,NULL),(16,'hihihihi','test','hoangvanvietanh@gmail.com',1,0,NULL),(17,'khanhs','nothing','hoangvanvietanh@gmail.com',4,0,NULL),(18,'test leave','hihi','hoangvanvietanh@gmail.com',3,0,NULL),(19,'hehe','hihihi','hoangvanvietanh@gmail.com',4,0,NULL),(20,'Hoang Van Viet Anh','Hoang Van Viet Anh','hoangvanvietanh@gmail.com',4,0,NULL),(21,'test update team','nothing','hoangvanvietanh@gmail.com',4,0,NULL),(22,'viet134','123','hoangvanvietanh@gmail.com',2,1,NULL),(23,'test create team','hihi','hoangvanvietanh@gmail.com',4,1,NULL),(24,'vietanh1113','vietanh','hoangvanvietanh@gmail.com',5,1,NULL),(25,'test Team 1','hello Viet Anh','hoangvanvietanh@gmail.com',0,0,NULL),(26,'test Team 2','haha','',0,0,NULL),(27,'','',NULL,1,0,NULL),(28,'test team','hihi','',2,1,NULL),(29,'hihihihi','asd',NULL,2,0,NULL),(30,'test send email','hihi',NULL,2,0,NULL),(31,'test222','nothing','',7,3,''),(32,'test','123','',4,0,NULL),(33,'test team 23','nothing impossible','Hoang Van Viet Anh(hoangvanvietanh@gmail.com)',1,0,'04/11/2018 16:54:57'),(34,'team 2','nothing','Hoang Van Viet Anh(hoangvanvietanh@gmail.com)',3,0,'04/11/2018 18:36:17');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
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
