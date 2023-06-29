-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `video_game`
--

DROP TABLE IF EXISTS `video_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_game` (
  `product_Id` int NOT NULL AUTO_INCREMENT,
  `product_Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `product_Type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `product_Price` int DEFAULT NULL,
  `product_Count` int DEFAULT NULL,
  `product_Photo` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`product_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_game`
--

LOCK TABLES `video_game` WRITE;
/*!40000 ALTER TABLE `video_game` DISABLE KEYS */;
INSERT INTO `video_game` VALUES (1,'Nintendo Switch','video game console',8000,1,'Nintendo_Switch.jpg'),(2,'Nintendo Switch Oled','video game console',12000,2,'Nintendo_Switch_Oled.jpg'),(3,'Sony PS4 PlayStation 4','video game console',6000,3,'Sony_PS4_PlayStation4.jpg'),(4,'Sony PS5 PlayStation 5','video game console',14000,4,'Sony_PS5_PlayStation5.jpg'),(5,'Microsoft Xbox One X','video game console',10000,5,'Microsoft_Xbox_One_X_1TB.jpg'),(6,'Xbox Elden Ring','video game',1600,5,'Microsoft_Xbox_ELDEN_RING.jpg'),(7,'NS Switch Monster Hunter Rise','video game',1200,1,'NS_Switch_monster_hunter_rise.jpg'),(8,'NS Switch 動物森友會 中文版','video game',1350,2,'NS_Switch_動物森友會_中文版.jpg'),(9,'SONY PS4 Elden Ring','video game',1600,5,'SONY_PS4_ELDEN_RING.jpg'),(10,'SONY PS5 Elden Ring','video game',1700,10,'SONY_PS5_ELDEN_RING.jpg'),(11,'NS Switch 動物森友會 中文版2','video game',10,10,'NS_Switch_動物森友會_中文版.jpg'),(21,NULL,NULL,0,0,NULL),(22,NULL,NULL,0,0,NULL),(23,NULL,NULL,0,0,NULL),(24,NULL,NULL,0,0,NULL),(35,'NS_Switch_薩爾達王國之淚','video game',2120,11,'NS_Switch_薩爾達王國之淚.jpg'),(36,'NS_Switch_薩爾達王國之淚','video game',2120,11,'NS_Switch_薩爾達王國之淚.jpg'),(37,'NS_Switch_薩爾達王國之淚','video game',2120,11,'NS_Switch_薩爾達王國之淚.jpg'),(40,'NS_Switch_薩爾達王國之淚','video game',2120,11,'NS_Switch_薩爾達王國之淚.jpg'),(41,'NS_Switch_薩爾達王國之淚','video game',2120,11,'NS_Switch_薩爾達王國之淚.jpg'),(43,'44444','video game',2120,11,'NS_Switch_薩爾達王國之淚.jpg');
/*!40000 ALTER TABLE `video_game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-12 12:10:29
