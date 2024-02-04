-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: noah_kise
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ClientId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `StylistId` int DEFAULT '0',
  `ImageUrl` varchar(2000) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClientId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (11,'Noah',8,'https://media.licdn.com/dms/image/D5603AQEGnHnJdO_RFQ/profile-displayphoto-shrink_400_400/0/1701378934352?e=1712793600&v=beta&t=Sn4eqLkgJiOWunN2-EpCZC--bmNW3LzLBEmSgUTAhHU','Very curly hair, needs thorough shampoo, pays cash, tips well'),(12,'Apu',9,'https://media.npr.org/assets/img/2018/04/09/simp_2609_tabf09-sc1107_hires2_sq-50e6a6e1f4c396093524f7cbfc21e158522d5c59.jpg','Runs Kwik-E-Mart, sensitive about moustache'),(13,'Ralph Wiggum',12,'https://upload.wikimedia.org/wikipedia/en/1/14/Ralph_Wiggum.png','Just happy to be here. Dad is chief of police.'),(14,'Milhouse',10,'https://i.kym-cdn.com/entries/icons/facebook/000/017/519/Milhouse_Van_Houten.jpg','Needs regular color appointments to maintain blue hair.'),(15,'Moe Szyslak',9,'https://www.gyfted.me/_next/image?url=%2Fimg%2Fcharacters%2Fmoe-szyslak.png&w=640&q=75','Free haircuts, stylist has open tab at client\'s bar.'),(16,'Clancy Wiggum',9,'https://www.giantbomb.com/a/uploads/scale_medium/0/9493/2497402-chief-wiggum.gif','Has good stories, gets free shaves while on duty because of what Bart did...');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stylists`
--

DROP TABLE IF EXISTS `stylists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stylists` (
  `StylistId` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `ImageUrl` varchar(2000) DEFAULT NULL,
  `Skills` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StylistId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stylists`
--

LOCK TABLES `stylists` WRITE;
/*!40000 ALTER TABLE `stylists` DISABLE KEYS */;
INSERT INTO `stylists` VALUES (8,'Amanda',NULL,'Cuts, Colors, Extensions, Perms'),(9,'Homer Simpson','https://pyxis.nymag.com/v1/imgs/58e/3ab/2379dcdefe01f766ded13cb9a4e07c869b-18-homer-simpson.rsquare.w330.jpg','Thinning hair, Snacks'),(10,'Bart Simpson','https://images.saatchiart.com/saatchi/984876/art/9355175/8418283-QLQLYFNM-7.jpg','Mohawks, Conversation'),(11,'Marge Simpson','https://www.sosyncd.com/wp-content/uploads/2022/03/6.png','Beehives, Up-dos, Hairspray'),(12,'Lisa Simpson','https://i.pinimg.com/originals/c8/5d/98/c85d9886bc076faa25f081634b9592ec.png','Spikes, Advice'),(13,'Maggie','https://i.pinimg.com/736x/32/7e/db/327edb9a15b304efc264668ada03f725.jpg','Facial Hair');
/*!40000 ALTER TABLE `stylists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-03 16:31:39
