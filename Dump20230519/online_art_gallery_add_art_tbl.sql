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
-- Table structure for table `add_art_tbl`
--

DROP TABLE IF EXISTS `add_art_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_art_tbl` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(50) DEFAULT NULL,
  `art_name` varchar(50) DEFAULT NULL,
  `art_image` varchar(500) DEFAULT NULL,
  `art_amount` float DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `cname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_art_tbl`
--

LOCK TABLES `add_art_tbl` WRITE;
/*!40000 ALTER TABLE `add_art_tbl` DISABLE KEYS */;
INSERT INTO `add_art_tbl` VALUES (1,'Swati Kumbhar','Ganpati Bappa','images/ganpati bappa.jpg',800,'Beautiful','Sketch'),(3,'Vaishanvi Surange','Boy','images/Boy.jpeg',500,'Handsome Boy','Sketch'),(4,'Swati Kumbhar','Sushant Singh Rajput','images/Sushant.jpeg',700,'Best Actor','Sketch'),(5,'Aishawarya Patil','Paint','images/art1.jpeg',2000,'Art','Sketch'),(6,'Swati Kumbhar','Painting','images/Paint.jpeg',3500,'Lal Bahadur Shastri','Paintings'),(7,'Swati Kumbhar','Sketch','images/Rohit.jpeg',850,'MI Team Cricket Player','Sketch'),(8,'Aishawarya Patil','Painting','images/Bird.jpg',250,'Beautiful','Paintings'),(9,'Aishawarya Patil','Painting','images/RadhaKrishn.jpg',5000,'Radha Krishna','Paintings'),(11,'Aishawarya Patil','Lotus','images/lotus.jpg',1000,'Coulurful','Poster Color Arts'),(12,'Swati Kumbhar','WallArt','images/WallArt.jpg',2500,'Attractive','WallPaintings'),(13,'Aishawarya Patil','Devi Sarsvati','images/Devi Saraswati.jpg',2800,'Nice','Kalamkari Paintings'),(15,'Swati Kumbhar','PosterColorArt','images/Shree.jpg',2100,'God Bappa','Poster Color Arts'),(16,'Swati Kumbhar','Canvas Painting','images/Girl1.jpg',1000,'Beautiful','Canvas Paintings'),(18,'Swati Kumbhar','PenDesignArt','images/PenArt.jpg',650,'Very Nice','Folk Arts'),(19,'Vaishanavi Surange','Tree with Moon','images/treeMoon.jpeg',875,'Beautiful','Canvas Paintings'),(21,'Swati Kumbhar','KrishnaRadha','images/KrishnRadha.jpeg',945,'Best','Sketch');
/*!40000 ALTER TABLE `add_art_tbl` ENABLE KEYS */;
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
