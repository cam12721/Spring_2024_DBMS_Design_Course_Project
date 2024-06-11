-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: automobile
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model` (
  `model_id` varchar(8) NOT NULL,
  `brand_id` varchar(8) DEFAULT NULL,
  `model_name` varchar(20) NOT NULL,
  `body_style` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `model_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES ('20000','10000','SQ8 e-tron','SUV'),('20001','10000','TT','Convertible'),('20002','10000','S1','Hatchback'),('20003','10001','V8','Sedan'),('20004','10001','PB18','Coupe'),('20005','10001','M8','Coupe'),('20006','10002','8 Series','Coupe'),('20007','10002','XM','SUV'),('20008','10002','Z3','Convertible'),('20009','10003','X4','SAC'),('20010','10003','Thunderbird','Convertible'),('20011','10003','Puma','Coupe'),('20012','10004','Explorer','SUV'),('20013','10004','Escape','SUV'),('20014','10004','Focus','Station Wagon'),('20015','10005','718','Convertible'),('20016','10005','911','Coupe'),('20017','10005','917','SUV'),('20018','10006','XC40','SUV'),('20019','10006','S90','Sedan'),('20020','10006','V60','Station Wagon'),('20021','10007','911','Coupe'),('20022','10007','917','SUV'),('20023','10007','Cayenne','SUV'),('20024','10008','Cayman','Coupe'),('20025','10008','E-Type','Convertible'),('20026','10008','S-Type','SUV'),('20027','10009','MX-5','Coupe'),('20028','10009','CX-50','SUV'),('20029','10009','CX-30','SUV');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-27 19:37:40
