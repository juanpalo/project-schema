CREATE DATABASE  IF NOT EXISTS `project_schema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_schema`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_schema
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  `course_id_id` int NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`),
  UNIQUE KEY `course_id_id_UNIQUE` (`course_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Science 1',1),(2,'Technology 2',2),(3,'Engineering 3',3),(4,'Math',4),(5,'Chemistry',5);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_course_name` varchar(45) NOT NULL,
  `grades_course_id` int NOT NULL,
  `grades_student_name` varchar(45) NOT NULL,
  `grades_student_id` int NOT NULL,
  `grades_actual` decimal(10,0) NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_idx` (`grades_course_id`),
  KEY `grades_idx1` (`grades_student_id`),
  CONSTRAINT `grades` FOREIGN KEY (`grades_course_id`) REFERENCES `course` (`course_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (65,'Science 1',1,'James Fields',81,90),(66,'Science 1',1,'James Fields',81,85),(67,'Technology 2',2,'James Fields',81,88),(68,'Technology 2',2,'James Fields',81,99),(69,'Engineering 3',3,'James Fields',81,40),(70,'Engineering 3',3,'James Fields',81,100),(71,'Math 4',4,'James Fields',81,60),(72,'Math 4',4,'James Fields',81,78),(73,'Science 1',1,'Harry Hendrix',82,80),(74,'Science 1',1,'Harry Hendrix',82,96),(75,'Technology 2',2,'Harry Hendrix',82,94),(76,'Technology 2',2,'Harry Hendrix',82,100),(77,'Engineering 3',3,'Harry Hendrix',82,70),(78,'Engineering 3',3,'Harry Hendrix',82,80),(79,'Math 4',4,'Harry Hendrix',82,95),(80,'Math 4',4,'Harry Hendrix',82,65),(81,'Science 1',1,'Tony Alfred',83,76),(82,'Science 1',1,'Tony Alfred',83,94),(83,'Technology 2',2,'Tony Alfred',83,45),(84,'Technology 2',2,'Tony Alfred',83,120),(85,'Engineering 3',3,'Tony Alfred',83,80),(86,'Engineering 3',3,'Tony Alfred',83,90),(87,'Math 4',4,'Tony Alfred',83,80),(88,'Math 4',4,'Tony Alfred',83,76),(89,'Science 1',1,'Roxanne Annie',84,76),(90,'Science 1',1,'Roxanne Annie',84,65),(91,'Technology 2',2,'Roxanne Annie',84,90),(92,'Technology 2',2,'Roxanne Annie',84,100),(93,'Engineering 3',3,'Roxanne Annie',84,70),(94,'Engineering 3',3,'Roxanne Annie',84,96),(95,'Math 4',4,'Roxanne Annie',84,94),(96,'Math 4',4,'Roxanne Annie',84,78);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `professors_id` int NOT NULL AUTO_INCREMENT,
  `professors_name` varchar(45) NOT NULL,
  `professors_course_id` int NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professors_id`),
  KEY `professors_idx` (`professors_course_id`),
  CONSTRAINT `professors` FOREIGN KEY (`professors_course_id`) REFERENCES `course` (`course_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO `professors` VALUES (1,'Galileo Galilei',1),(2,'Ada Lovelace',2),(3,'Sir Mokshagundam Visvesaraya',3),(4,'Sophie Germain',4),(5,'Galileo Galilei',5);
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) NOT NULL,
  `students_course_id` int NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (81,'James Fields',1),(82,'Harry Hendrix',1),(83,'Tony Alfred',1),(84,'Roxanne Annie',1),(85,'James Fields',2),(86,'James Fields',3),(87,'James Fields',4),(88,'Harry Hendrix',2),(89,'Harry Hendrix',3),(90,'Harry Hendrix',4),(91,'Tony Alfred',2),(92,'Tony Alfred',3),(93,'Tony Alfred',4),(94,'Roxanne Annie',2),(95,'Roxanne Annie',3),(96,'Roxanne Annie',4),(97,'James Fields',5);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project_schema'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-03 16:44:10
