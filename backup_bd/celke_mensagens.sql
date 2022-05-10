-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: celke
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensagens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mensagem` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaId` int NOT NULL,
  `usuarioId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `salaId` (`salaId`),
  KEY `usuarioId` (`usuarioId`),
  CONSTRAINT `mensagens_ibfk_1` FOREIGN KEY (`salaId`) REFERENCES `salas` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `mensagens_ibfk_2` FOREIGN KEY (`usuarioId`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,'Olá 1 Node.js',1,1,'2021-09-28 14:27:05','2021-09-28 14:27:05'),(2,'Olá 2 Node.js',1,1,'2021-09-28 14:33:00','2021-09-28 14:33:00'),(3,'Olá 3',1,3,'2021-09-28 15:16:08','2021-09-28 15:16:08'),(4,'Olá 4',1,2,'2021-09-28 15:16:33','2021-09-28 15:16:33'),(5,'Como criar chat?',1,2,'2021-09-28 15:18:14','2021-09-28 15:18:14'),(6,'Também é minha dúvida',1,3,'2021-09-28 15:18:27','2021-09-28 15:18:27'),(7,'Semana de imersão 12.0',1,1,'2021-09-28 15:18:46','2021-09-28 15:18:46'),(8,'Qual tecnologia é utilizada?',1,3,'2021-09-28 15:19:04','2021-09-28 15:19:04'),(9,'Será utilizado Node.js, React e Socket.io',1,1,'2021-09-28 15:19:44','2021-09-28 15:19:44'),(10,'O que é Socket.io?',1,2,'2021-09-28 15:31:32','2021-09-28 15:31:32'),(11,'Olá',2,2,'2021-09-28 16:02:32','2021-09-28 16:02:32'),(12,'Olá a todos',2,3,'2021-09-28 16:02:48','2021-09-28 16:02:48'),(13,'Sejam bem vindos.',2,1,'2021-09-28 16:03:00','2021-09-28 16:03:00'),(14,'O Socket.io ...',1,1,'2021-09-28 16:13:01','2021-09-28 16:13:01');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-29  9:33:07
