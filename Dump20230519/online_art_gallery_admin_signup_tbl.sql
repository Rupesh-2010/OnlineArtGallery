-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: online_art_gallery
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `admin_signup_tbl`
--

DROP TABLE IF EXISTS `admin_signup_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_signup_tbl` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_signup_tbl`
--

LOCK TABLES `admin_signup_tbl` WRITE;
/*!40000 ALTER TABLE `admin_signup_tbl` DISABLE KEYS */;
INSERT INTO `admin_signup_tbl` VALUES (1,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',8767359672,'Swatikumbhar172002@gmail.com','54544'),(2,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',8767359672,'Swatikumbhar172002@gmail.com','123456'),(3,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',8767359672,'Swatikumbhar172002@gmail.com','1234678'),(4,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',8767359672,'Swatikumbhar172002@gmail.com','12345678');
/*!40000 ALTER TABLE `admin_signup_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 13:07:48
