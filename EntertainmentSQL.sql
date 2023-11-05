-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: enter
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `enter_board`
--

DROP TABLE IF EXISTS `enter_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enter_board` (
  `Board_Number` int NOT NULL AUTO_INCREMENT,
  `Board_User_Id` varchar(15) NOT NULL,
  `Board_Title` varchar(100) NOT NULL,
  `Board_Text` varchar(1000) NOT NULL,
  `Board_Create_Date` timestamp NOT NULL,
  `Board_View_Count` int NOT NULL,
  PRIMARY KEY (`Board_Number`),
  KEY `Board_User_Id` (`Board_User_Id`),
  CONSTRAINT `enter_board_ibfk_1` FOREIGN KEY (`Board_User_Id`) REFERENCES `enter_user` (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_board`
--

LOCK TABLES `enter_board` WRITE;
/*!40000 ALTER TABLE `enter_board` DISABLE KEYS */;
INSERT INTO `enter_board` VALUES (2,'1','1','123','2023-08-22 13:43:46',0),(3,'1','sd','sd','2023-08-22 13:44:27',0),(4,'1','sd','sd','2023-08-22 13:44:31',0),(5,'1','sd','sd','2023-08-22 13:44:32',0),(6,'1','sd','sd','2023-08-22 13:44:32',0),(7,'1','sd','sd','2023-08-22 13:45:30',0),(8,'1','sd','sd','2023-08-22 13:45:31',0),(9,'1','sd','sd','2023-08-22 13:45:31',0),(10,'1','sd','sd','2023-08-22 13:45:31',0),(11,'1','sd','sd','2023-08-22 13:45:31',0),(12,'1','sd','sd','2023-08-22 13:45:31',0),(13,'1','sd','sd','2023-08-22 13:45:32',0),(14,'1','sd','sd','2023-08-22 13:45:32',0),(15,'1','sd','sd','2023-08-22 13:45:32',0),(16,'1','sd','sd','2023-08-22 13:45:33',0),(17,'1','sd','sd','2023-08-22 13:46:56',0),(18,'1','sd','sd','2023-08-22 13:47:52',0),(23,'1','a','a','2023-08-22 13:53:08',6),(24,'1','1','1','2023-08-22 14:02:43',65),(25,'1','d','z','2023-08-22 14:03:14',13),(30,'1','asdasadadadadad','에오','2023-10-09 17:42:41',0),(31,'1','sds','sdsd','2023-10-09 17:44:22',1),(33,'1','sd','ssd','2023-10-09 17:52:56',0),(34,'1','asdasadadadadad','에오','2023-10-10 21:32:23',0),(35,'1','asdasadadadadad','에오','2023-10-10 21:32:23',0),(36,'1','asdasadadadadad','에오','2023-10-10 21:32:23',0),(37,'1','asdasadadadadad','에오','2023-10-10 21:32:23',0),(38,'1','asdasadadadadad','에오','2023-10-10 21:32:24',0),(39,'1','asdasadadadadad','에오','2023-10-10 21:32:24',0),(40,'1','asdasadadadadad','에오','2023-10-10 21:32:24',0),(41,'1','asdasadadadadad','에오','2023-10-10 21:32:24',0),(42,'1','asdasadadadadad','에오','2023-10-10 21:32:24',0),(43,'1','asdasadadadadad','에오','2023-10-10 21:32:24',0),(44,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:24',0),(45,'1','asdasadadadada\n        \n        d','에오','2023-10-10 21:32:24',0),(46,'1','asdasadadadada\n        \n        d','에오','2023-10-10 21:32:24',0),(47,'1','asdasadadadada\n        \n        \n        d','에오','2023-10-10 21:32:24',0),(48,'1','asdasadadadada\n        \n        \n        \n        d','에오','2023-10-10 21:32:24',0),(49,'1','asdasadadadada\n        \n        \n        \n        d','에오','2023-10-10 21:32:24',0),(50,'1','asdasadadadada\n        \n        \n        \n        d','에오','2023-10-10 21:32:24',0),(51,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(52,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(53,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(54,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(55,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(56,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(57,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(58,'1','asdasadadadadad','에오','2023-10-10 21:32:27',0),(59,'1','asdasadadadadad','에오','2023-10-10 21:32:28',0),(60,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(61,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(62,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(63,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(64,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(65,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(66,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(67,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:28',0),(68,'1','asdasadadadadad','에오','2023-10-10 21:32:29',0),(69,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:29',0),(70,'1','asdasadadadadad','에오','2023-10-10 21:32:34',0),(71,'1','asdasadadadadad','에오','2023-10-10 21:32:35',0),(72,'1','asdasadadadadad','에오','2023-10-10 21:32:35',0),(73,'1','asdasadadadadad','에오','2023-10-10 21:32:35',0),(74,'1','asdasadadadadad','에오','2023-10-10 21:32:35',0),(75,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:35',0),(76,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:35',0),(77,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(78,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(79,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(80,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(81,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(82,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(83,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:36',0),(84,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(85,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(86,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(87,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(88,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(89,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(90,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(91,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:37',0),(92,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(93,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(94,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(95,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(96,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(97,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(98,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:38',0),(99,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(100,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(101,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(102,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(103,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(104,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(105,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(106,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:39',0),(107,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(108,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(109,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(110,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(111,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(112,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(113,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:40',0),(114,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:41',0),(115,'1','asdasadadadada\n        d','에오','2023-10-10 21:32:41',0),(116,'jongkwon5','테스트용 게시글입니다 1\n        d','에오','2023-10-10 21:39:15',0),(117,'jongkwon5','테스트용 게시글입니다 2','에오','2023-10-10 21:39:23',0),(118,'jongkwon5','테스트용 게시글입니다 3','에오','2023-10-10 21:39:29',0),(119,'jongkwon5','테스트용 게시글입니다 5','에오','2023-10-10 21:39:32',0),(120,'jongkwon5','테스트용 게시글입니다 6','에오','2023-10-10 21:39:33',0),(121,'jongkwon5','테스트용 게시글입니다 7','에오','2023-10-10 21:39:35',1),(122,'jongkwon5','테스트용 게시글입니다 8','에오','2023-10-10 21:39:36',1),(123,'jongkwon5','테스트용 게시글입니다 9','에오','2023-10-10 21:39:39',0),(125,'jongkwon5','테스트용 게시글입니다 11','에오','2023-10-10 21:39:47',2),(126,'jongkwon5','테스트용 게시글입니다 12','에오','2023-10-10 21:39:52',13),(127,'jongkwon5','옴메 12','에오','2023-10-10 21:45:38',81),(128,'jongkwon5','테스트용 게시글입니다 11','테스트용 게시글입니다 11','2023-10-10 22:36:10',68),(129,'1','df','d111','2023-10-12 09:13:11',3),(130,'1','dd','dd','2023-10-12 09:14:26',4),(132,'1','11','11','2023-10-12 14:42:41',4);
/*!40000 ALTER TABLE `enter_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_comment`
--

DROP TABLE IF EXISTS `enter_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enter_comment` (
  `Comment_Number` int NOT NULL AUTO_INCREMENT,
  `Board_Number` int NOT NULL,
  `Comment_User_Id` varchar(15) NOT NULL,
  `Comment_Text` varchar(500) NOT NULL,
  `Comment_Create_Date` timestamp NOT NULL,
  `Comment_Update_Count` int DEFAULT NULL,
  PRIMARY KEY (`Comment_Number`),
  KEY `Board_Number` (`Board_Number`),
  KEY `Comment_User_Id` (`Comment_User_Id`),
  CONSTRAINT `enter_comment_ibfk_1` FOREIGN KEY (`Board_Number`) REFERENCES `enter_board` (`Board_Number`) ON DELETE CASCADE,
  CONSTRAINT `enter_comment_ibfk_2` FOREIGN KEY (`Comment_User_Id`) REFERENCES `enter_user` (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_comment`
--

LOCK TABLES `enter_comment` WRITE;
/*!40000 ALTER TABLE `enter_comment` DISABLE KEYS */;
INSERT INTO `enter_comment` VALUES (5,23,'1','d','2023-08-22 13:53:14',NULL),(6,23,'1','dd','2023-08-22 13:53:20',NULL),(7,23,'1','dd','2023-08-22 13:53:22',NULL),(8,23,'1','d','2023-08-22 13:53:51',NULL),(9,23,'1','d','2023-08-22 13:53:51',NULL),(10,23,'1','d','2023-08-22 13:53:55',NULL),(11,23,'1','d','2023-08-22 13:53:55',NULL),(12,23,'1','d','2023-08-22 13:53:55',NULL),(13,23,'1','d','2023-08-22 13:53:55',NULL),(14,23,'1','d','2023-08-22 13:53:55',NULL),(15,23,'1','d','2023-08-22 13:53:56',NULL),(34,23,'1','1','2023-08-22 13:56:59',NULL),(35,23,'1','1','2023-08-22 13:57:00',NULL),(36,23,'1','1','2023-08-22 13:57:01',NULL),(37,23,'1','f','2023-08-22 14:00:33',NULL),(38,23,'1','d','2023-08-22 14:01:25',NULL),(39,23,'1','1','2023-08-22 14:02:35',NULL),(47,24,'1','13131313','2023-10-09 17:14:29',NULL),(48,24,'1','adasd','2023-10-09 17:14:48',NULL),(49,25,'1','11','2023-10-09 17:25:03',NULL),(54,126,'jongkwon5','1','2023-10-10 21:40:29',NULL),(55,126,'jongkwon5','테스트용 댓글입니다2','2023-10-10 21:40:33',NULL),(56,126,'jongkwon5','테스트용 댓글입니다3','2023-10-10 21:40:36',NULL),(57,126,'jongkwon5','테스트용 댓글입니다4','2023-10-10 21:40:39',NULL),(58,126,'jongkwon5','테스트용 댓글입니다2','2023-10-10 21:40:40',NULL),(59,126,'jongkwon5','테스트용 댓글입니다5','2023-10-10 21:40:43',NULL),(60,126,'jongkwon5','테스트용 댓글입니다2','2023-10-10 21:40:44',NULL),(69,128,'jongkwon5','테스트용 댓글입니다 1','2023-10-10 22:37:18',NULL),(70,128,'jongkwon5','테스트용 댓글입니다 2','2023-10-10 22:37:23',NULL),(71,128,'jongkwon5','테스트용 댓글입니다 3','2023-10-10 22:43:15',NULL),(72,128,'1','111','2023-10-12 09:11:39',NULL),(73,128,'1','111','2023-10-12 09:11:41',NULL),(74,128,'1','13131313','2023-10-12 09:11:46',1);
/*!40000 ALTER TABLE `enter_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_user`
--

DROP TABLE IF EXISTS `enter_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enter_user` (
  `User_Id` varchar(20) NOT NULL,
  `User_Password` varchar(20) DEFAULT NULL,
  `User_Name` varchar(20) DEFAULT NULL,
  `User_Photo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_user`
--

LOCK TABLES `enter_user` WRITE;
/*!40000 ALTER TABLE `enter_user` DISABLE KEYS */;
INSERT INTO `enter_user` VALUES ('1','1','박종권',NULL),('2','2','2',NULL),('31313','1','1',NULL),('3333','1','1',NULL),('jongkwon5','1','박종권',NULL);
/*!40000 ALTER TABLE `enter_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-13  6:58:49
