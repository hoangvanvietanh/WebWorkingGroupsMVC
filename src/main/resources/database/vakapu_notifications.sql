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
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notifications` (
  `idnotification` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `messages` varchar(555) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `toUser` varchar(255) DEFAULT NULL,
  `fromUser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idnotification`),
  KEY `FK4voqsqxg6a7ewoh03xaimcba7` (`toUser`),
  KEY `FKqmg3753q120ne96i29r7dikk` (`fromUser`),
  CONSTRAINT `FK4voqsqxg6a7ewoh03xaimcba7` FOREIGN KEY (`toUser`) REFERENCES `user` (`email`),
  CONSTRAINT `FKqmg3753q120ne96i29r7dikk` FOREIGN KEY (`fromUser`) REFERENCES `user` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,'2018-10-29 16:58:31','Hello Phuong,You have invitation to join the team from Hoang Van Viet Anh\nThis is your link: http://localhost:8080/time-is-gold/team/joinTeam?idTeam=26<a class=\"btn btn-primary btn-sm\" href=\"team/joinTeam?idTeam=\"26>Agree</a>\nAnd your message: hello',0,'phuong@gmail.com','hoangvanvietanh@gmail.com'),(3,'2018-10-29 17:19:51','<a class=\"btn btn-primary btn-sm\" href=\"team/joinTeam?idTeam=26\">Agree</a>\nAnd your message: hihi',0,'phuong@gmail.com','hoangvanvietanh@gmail.com'),(8,'2018-10-29 17:52:48','Hello Khanh,You have invitation to add friend form Khanh<br>Do you agree?<br><a class=\"btn btn-primary btn-sm\" href=\"profile-cv/agress?emailFriend=phuong@gmail.com&emailUser=khanh@gmail.com\">Agree</a>',0,'phuong@gmail.com','khanh@gmail.com'),(10,'2018-10-29 18:12:44','Hello Giang,You have invitation to add friend form Giang<br>Do you agree?<br><a class=\"btn btn-primary btn-sm\" href=\"profile-cv/agree?emailFriend=phuong@gmail.com&emailUser=giang@gmail.com\">Agree</a>',0,'phuong@gmail.com','giang@gmail.com'),(11,'2018-10-29 18:26:26','Hello Phuong,You have invitation to add friend form Phuong<br>Do you agree?<br><a class=\"btn btn-primary btn-sm\" href=\"profile-cv/agree?emailFriend=duyhieu@gmail.com&emailUser=phuong@gmail.com\">Agree</a>',0,'duyhieu@gmail.com','phuong@gmail.com'),(15,'2018-10-29 20:56:09','You already agree join to team <a href=\"team?idTeam=7\">Test Team 123</a>',1,'giang@gmail.com','hoangvanvietanh@gmail.com'),(16,'2018-10-29 21:11:49','You and <a>Khoa</a> make a friend',0,'khoa@gmail.com','giang@gmail.com'),(17,'2018-10-29 21:22:56','You and <a>Hoang Van Viet Anh</a> become a friend',1,'hoangvanvietanh@gmail.com','khoa@gmail.com'),(18,'2018-10-29 21:23:20','Khoa already invited friend',0,'khoa@gmail.com',NULL),(19,'2018-10-29 21:24:54','You and <a>Khoa</a> become a friend',0,'phuong@gmail.com','khoa@gmail.com'),(20,'2018-10-29 21:25:16','Phuong already invited friend',0,'khoa@gmail.com',NULL),(21,'2018-10-30 10:11:24','You already agree join to team <a href=\"team?idTeam=30\">test send email</a>',0,'duyhieu@gmail.com','khuuhieu@gmail.com'),(25,'2018-10-30 10:44:43','You already agree join to team <a href=\"team?idTeam=12\">Test team ne</a>',0,'duyhieu789159@gmail.com','duyhieu@gmail.com'),(26,'2018-10-30 10:49:12','You and <a>Nguyen Duy Hieu</a> become a friend',1,'hoangvanvietanh@gmail.com','duyhieu789159@gmail.com'),(27,'2018-10-30 10:49:39','Hoang Van Viet Anh already invited friend',0,'duyhieu789159@gmail.com',NULL),(28,'2018-10-31 16:16:37','You already agree join to team <a href=\"team?idTeam=31\">test</a>',0,'hoang@gmail.com','hoangvanvietanh@gmail.com'),(29,'2018-10-31 18:34:01','You and <a>Khanh</a> become a friend',0,'duyhieu@gmail.com','khanh@gmail.com'),(30,'2018-10-31 18:34:27','Duy Hieu already invited friend',0,'khanh@gmail.com',NULL),(31,'2018-10-31 18:36:19','You already agree join to team <a href=\"team?idTeam=32\">test</a>',1,'hoangvanvietanh@gmail.com','duyhieu@gmail.com'),(32,'2018-10-31 18:48:56','You already agree join to team <a href=\"team?idTeam=31\">test</a>',0,'trantoquephuong@gmail.com','hoangvanvietanh@gmail.com'),(35,'2018-11-04 13:18:25','You and <a>Hoang Van Viet Anh</a> become a friend',1,'k11giadinh@gmail.com','hoangvanvietanh@gmail.com'),(36,'2018-11-04 13:19:31','Hoang van Dat already invited friend',1,'hoangvanvietanh@gmail.com',NULL),(37,'2018-11-04 14:22:22','Hello Hoang van Dat,You have invite to add friend form Giang<br>Do you agree?<br><a class=\"btn btn-primary btn-sm\" href=\"profile-cv/agree?emailFriend=k11giadinh@gmail.com&emailUser=giang@gmail.com&idNotifications=37\">Agree</a><a class=\"btn btn-primary btn-sm\" href=\"profile-cv/disagree?emailFriend=k11giadinh@gmail.com&emailUser=giang@gmail.com&idNotifications=37\">DisAgree</a>',0,'k11giadinh@gmail.com','giang@gmail.com'),(38,'2018-11-04 17:52:13','You already agree join to team <a href=\"team?idTeam=31\">test</a>',1,'k11giadinh@gmail.com','hoangvanvietanh@gmail.com'),(39,'2018-11-04 17:53:01','Hoang van Dat agree join to team test',1,'hoangvanvietanh@gmail.com',NULL),(40,'2018-11-04 22:58:55','Hello null,You have invitation to join the team from Hoang Van Viet Anh<br>Do you agree?<br><a class=\"btn btn-primary btn-sm\" href=\"team/joinTeam?idTeam=31&idNotifications=40\">Agree</a><a class=\"btn btn-primary btn-sm\" href=\"team/disJoinTeam?idTeam=31&idNotifications=40\">DisAgree</a><br>Your message: hello',0,'hoangvanvietanhh@gmail.com','hoangvanvietanh@gmail.com');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
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
