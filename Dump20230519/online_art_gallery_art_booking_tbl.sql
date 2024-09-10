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
-- Table structure for table `art_booking_tbl`
--

DROP TABLE IF EXISTS `art_booking_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art_booking_tbl` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `art_name` varchar(50) DEFAULT NULL,
  `art_image` varchar(500) DEFAULT NULL,
  `quantity` int(9) DEFAULT NULL,
  `art_amount` float DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `bdate` varchar(45) DEFAULT NULL,
  `tamount` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art_booking_tbl`
--

LOCK TABLES `art_booking_tbl` WRITE;
/*!40000 ALTER TABLE `art_booking_tbl` DISABLE KEYS */;
INSERT INTO `art_booking_tbl` VALUES (1,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',8767359672,'Ganpati Bappa','ganpati bappa.jpg',2,5000,NULL,NULL,NULL,NULL),(2,'Aishawarya Ganu Patil','A/P. Teurwadi, Tal. Chandgad, Dist. Kolhapur.',9021555464,'Ganpati Bappa Sketch','IMG_20211126_155320.jpg',1,800.21,NULL,NULL,NULL,NULL),(4,'Aishawarya Ganu Patil','A/P. Teurwadi, Tal. Chandgad, Dist. Kolhapur.',7789342454,'Tree','oak-tree-7507678.jpg',1,600.56,NULL,NULL,NULL,NULL),(5,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',8767359672,'Flowers','art muicium.jpg',1,600.56,NULL,NULL,NULL,NULL),(6,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',9087654321,'paint','images/art1.jpeg',NULL,5000,'Orderd',3,NULL,NULL),(7,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',9087654321,'paint','images/art1.jpeg',NULL,5000,'Orderd',3,'2023-05-06',NULL),(8,'Malti Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',7798343454,'Boy','images/Boy.jpeg',NULL,500,'Orderd',4,'2023-05-19',NULL),(9,'Shambhavi Satturam Kumbhar','Sirasnagi Tal. Aajara, Dist. Kolhapur.',7653558890,'Boy','images/Boy.jpeg',NULL,500,'Orderd',4,'2023-05-19',NULL),(10,'Swati Ananda Kumbhar','A/P. Mahagaon, Tal. Gadhing.laj, Dist.Kolhapur',9876543212,'Sushant Singh Rajput','images/Sushant.jpeg',1,700,'Orderd',4,'2023-05-19',700),(11,'Aishawarya Ganu Patil','A/P. Teurwadi, Tal. Chandgad, Dist. Kolhapur.',9876543454,'Boy','images/Boy.jpeg',2,500,'Orderd',4,'2023-05-19',1000);
/*!40000 ALTER TABLE `art_booking_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 13:07:49
