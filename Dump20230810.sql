-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: studydb
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
-- Table structure for table `audition`
--

DROP TABLE IF EXISTS `audition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audition` (
  `id` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `text` varchar(500) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  KEY `audition_enter_user_FK` (`id`),
  CONSTRAINT `audition_enter_user_FK` FOREIGN KEY (`id`) REFERENCES `enter_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='오디션파일';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audition`
--

LOCK TABLES `audition` WRITE;
/*!40000 ALTER TABLE `audition` DISABLE KEYS */;
/*!40000 ALTER TABLE `audition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `seq` int NOT NULL,
  `cnt` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `regDate` date DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (3,0,'12','312','3123','2023-07-05'),(4,0,'a','312','									  3123\r\n									','2023-07-05'),(7,0,'21312','313','1312313','2023-07-05'),(8,0,'55','55','55','2023-07-05'),(9,0,'55','55','55','2023-07-05'),(13,0,'asdasdasdad','fa','									  sdfasfasdf\r\n									','2023-07-06'),(14,0,'dd','d','ddd','2023-07-06'),(15,0,'qweqw','ewqeqw','eqweqwe','2023-07-06');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

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
  PRIMARY KEY (`Board_Number`),
  KEY `Board_User_Id` (`Board_User_Id`),
  CONSTRAINT `enter_board_ibfk_1` FOREIGN KEY (`Board_User_Id`) REFERENCES `enter_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_board`
--

LOCK TABLES `enter_board` WRITE;
/*!40000 ALTER TABLE `enter_board` DISABLE KEYS */;
INSERT INTO `enter_board` VALUES (1,'1','안녕하세요','ㅁㅇㄴㄹㅇㄹ','2023-08-08 08:26:05'),(2,'5','오예오','이건뭐죠?','2023-08-09 03:07:13'),(3,'admin','ㅁㅇ','ㅁㅇㅇ','2023-08-09 08:48:31'),(5,'admin','kkk','kk','2023-08-10 00:33:19');
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
  PRIMARY KEY (`Comment_Number`),
  KEY `Board_Number` (`Board_Number`),
  KEY `Comment_User_Id` (`Comment_User_Id`),
  CONSTRAINT `enter_comment_ibfk_1` FOREIGN KEY (`Board_Number`) REFERENCES `enter_board` (`Board_Number`) ON DELETE CASCADE,
  CONSTRAINT `enter_comment_ibfk_2` FOREIGN KEY (`Comment_User_Id`) REFERENCES `enter_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_comment`
--

LOCK TABLES `enter_comment` WRITE;
/*!40000 ALTER TABLE `enter_comment` DISABLE KEYS */;
INSERT INTO `enter_comment` VALUES (1,5,'admin','이건뭐죠?','2023-08-10 02:47:22'),(2,2,'admin','이건뭐죠?','2023-08-10 07:13:44'),(3,2,'admin','이건뭐죠?','2023-08-10 08:03:37'),(6,5,'admin','kl;kl;kl;','2023-08-10 08:08:46'),(7,5,'admin','jjj','2023-08-10 08:15:25'),(8,5,'admin','kkkkk','2023-08-10 08:17:03'),(9,5,'admin','sdsd','2023-08-10 08:18:52'),(10,5,'admin','adad','2023-08-10 08:25:10');
/*!40000 ALTER TABLE `enter_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_user`
--

DROP TABLE IF EXISTS `enter_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enter_user` (
  `id` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `password2` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='회원정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_user`
--

LOCK TABLES `enter_user` WRITE;
/*!40000 ALTER TABLE `enter_user` DISABLE KEYS */;
INSERT INTO `enter_user` VALUES ('1','1','1','1','1','1',NULL),('1555','1','1','1','1','1',NULL),('22','22','22','22','22','22',NULL),('2223','1234','1234','박종권','jongkwong@naver.com','01096210310',NULL),('5','5','5','5','5','5','5.jpg'),('55','55','55','55','55','55',NULL),('555','5555','555','555','555','555',NULL),('admin','1234','1234','박종권','jongkwong@naver.com','010-9621-0310',NULL),('dad','55','55','dad','adad','1',NULL),('구','rn','rn','rn','rn','1',NULL),('기기','rl','rl','rl','rl','1',NULL),('박','1','1','1','1','1',NULL);
/*!40000 ALTER TABLE `enter_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (16);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `mno` int NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL COMMENT '이메일',
  `pwd` varchar(10) NOT NULL COMMENT '암호',
  `mname` varchar(50) NOT NULL COMMENT '이름',
  `cre_date` datetime NOT NULL COMMENT '가입일',
  `mod_date` datetime NOT NULL COMMENT '마지막 변경일',
  PRIMARY KEY (`mno`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='회원정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'admin@test.com','1234','관리자','2023-05-26 10:08:47','2023-05-26 10:08:47'),(2,'jongkwon5@test.com','1234','박종권','2023-05-26 10:09:42','2023-05-26 10:09:42'),(3,'suzy@test.com','1234','배수지11333','2023-05-26 10:09:43','2023-06-02 10:06:26'),(9,'1@11','1','11','2023-06-02 10:19:55','2023-06-02 10:19:55'),(10,'jongkwong@naver.comD','D','qwe','2023-06-07 14:32:03','2023-06-07 14:32:03'),(12,'qeqe@qqq','qeq','qe','2023-06-08 11:17:09','2023-06-08 11:17:09'),(13,'qeqqeeqqeqe@qqdse','eqeq','eqeddd','2023-06-08 11:17:20','2023-06-30 10:05:14');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `pno` int NOT NULL,
  `pname` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `sta_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `state` int NOT NULL,
  `cre_date` datetime NOT NULL,
  `tags` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` varchar(8) NOT NULL COMMENT '아이디',
  `password` varchar(8) DEFAULT NULL COMMENT '비밀번호',
  `name` varchar(20) DEFAULT NULL COMMENT '이름',
  `role` varchar(5) DEFAULT NULL COMMENT '업무',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('test','1234','박종권','tt');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-10 17:26:10
