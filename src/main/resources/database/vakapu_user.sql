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
  `theme` tinyint(5) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('duyhieu789159@gmail.com','Nguyen Duy Hieu','Male',NULL,'113','Gia Dinh','Nothing','Nothing','Nothing','Nothing','2001-11-11','37732346_457573618040043_7939214211631022080_n.jpg','I am someone',1),('duyhieu@gmail.com','Duy Hieu',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','lukin-the-conversation.jpg',NULL,1),('giang@gmail.com','Giang',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','34843996_2088967914682201_7358940408837046272_n.jpg',NULL,1),('hoang@gmail.com','Khanh',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','419392.jpg',NULL,1),('hoangvanvietanh@gmail.com','Hoang Van Viet Anh','Male','1998-07-10','0903026389','Ho Chi Minh','<p>Credibly embrace visionary internal or \"organic\" sources and business benefits. Collaboratively integrate efficient portals rather than customized customer service. Assertively deliver frictionless services via leveraged interfaces. Conveniently evisculate accurate sources and process-centric expertise. Energistically fabricate customized imperatives through cooperative catalysts for change.</p><p>Dramatically predominate mission-critical materials and cooperative systems. Holisticly synergize optimal results through team building \"outside the box\" thinking. Seamlessly facilitate frictionless relationships via robust imperatives. Monotonectally brand wireless products and excellent action items. Monotonectally disintermediate granular alignments via sustainable infomediaries.</p>','<p>WORKFLOW</p><ul><li>Mobile-First, Responsive Design</li><li>Cross Browser Testing &amp; Debugging</li><li>Cross Functional Teams</li><li>Agile Development &amp; Scrum</li></ul>','<p>2015 - Present<strong>HEAD OF MARKET RESEARCH</strong></p><h3>&nbsp;</h3><h4>Computer &amp; Motor Ltd.</h4><p>United Kingdom, London</p><p>2012 - 2015<strong>MEDIA ANALYST</strong></p><h3>&nbsp;</h3><h4>BizzNiss</h4><p>United Kingdom, London</p><p>2010 - 2012<strong>BUDGET ADMINISTRATOR</strong></p><h3>&nbsp;</h3><h4>Somsom LLC</h4><p>United Kingdom, London</p>','<p>2010 - 2012<strong>MA PRODUCT DESIGN</strong></p><h3>&nbsp;</h3><h4>University of California</h4><p>United Kingdom, London</p><p>2007 - 2010<strong>BUSINESS MARKETING COURSE</strong></p><h3>&nbsp;</h3><h4>Royal Academy of Business</h4><p>United Kingdom, London</p><p>2002 - 2006<strong>BA (HONS) DESIGN</strong></p><h3>&nbsp;</h3><h4>University of Michigan</h4><p>United Kingdom, London</p>','1998-07-10','hinh-anh-hinh-nen-cristiano-ronaldo-cr7-full-hd-dep-nhat-the-gioi8.jpg','<p>I am a coder</p>',2),('hoangvanvietanhh@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('k11giadinh@gmail.com','Hoang van Dat',NULL,NULL,'','','','','','','','cantona.jpg','<p>I am a designer</p>',2),('khanh@gmail.com','Khanh','Male',NULL,'0903026389','163 Bui','','','','','2018-11-04','Screenshot from 2018-10-17 14-29-53.png','<p>I am coder</p>',2),('khoa@gmail.com','Khoa',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','images.jpeg',NULL,1),('khuuhieu@gmail.com','Khuu Hieu',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','download.jpeg',NULL,1),('phuong@gmail.com','Phuong',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','37732346_457573618040043_7939214211631022080_n.jpg',NULL,1),('trantoquephuong@gmail.com','AHIHI','Female',NULL,'114','Green',NULL,NULL,NULL,NULL,'2018-10-31','37732346_457573618040043_7939214211631022080_n.jpg','ss',1),('vietem@gmail.com','Viet Em',NULL,NULL,'','',NULL,NULL,NULL,NULL,'','sun.png',NULL,1);
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

-- Dump completed on 2018-11-04 23:00:17
