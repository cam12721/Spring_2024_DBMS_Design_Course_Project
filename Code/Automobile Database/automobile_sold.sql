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
-- Table structure for table `sold`
--

DROP TABLE IF EXISTS `sold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sold` (
  `VIN` varchar(20) NOT NULL,
  `customer_id` varchar(8) NOT NULL,
  `sale_date` date DEFAULT NULL,
  PRIMARY KEY (`VIN`,`customer_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `sold_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `sold_ibfk_2` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold`
--

LOCK TABLES `sold` WRITE;
/*!40000 ALTER TABLE `sold` DISABLE KEYS */;
INSERT INTO `sold` VALUES ('1FAFP66L0WK258659','70557','2023-01-03'),('1FVABPAL91HH92692','98988','2023-01-03'),('1FVHCYDJ85HV14123','70557','2023-01-12'),('1FVXA7AS24LM58815','76653','2022-02-15'),('1G1ZT51806F128009','76653','2022-11-25'),('1G4CU5312N1625421','70557','2023-01-03'),('1G8AY12P84Z202013','76653','2023-01-03'),('1G8MF35X68Y131819','70557','2021-01-09'),('1G8ZG127XWZ157259','76653','2023-01-11'),('1GCCS1956Y8235348','98765','2022-01-05'),('1GCEK14K8RE106083','12345','2022-07-15'),('1GNDT13S582215117','98988','2022-03-05'),('1HD1GPM15CC339172','12345','2022-02-05'),('1P3XP48K6LN273071','19991','2022-04-02'),('2B3HD46R02H210893','12345','2022-11-05'),('3FAFP13P41R199033','54321','2023-01-03'),('5N3ZA0NE6AN906847','54321','2022-11-23'),('JH4DA1850JS005062','70557','2022-12-24'),('JH4DA3350GS005185','98988','2022-05-15'),('JH4DA9481PS021682','55739','2021-01-10'),('JH4DC2380SS000012','98988','2022-04-05'),('JH4KA4531KC033525','70557','2023-01-02'),('JH4KA4576KC031014','55739','2021-01-10'),('JH4KA4630LC007479','12345','2023-01-05'),('JH4KA4650JC000403','54321','2023-01-03'),('JTDBE30K620061417','23121','2022-04-25'),('SAJWA0ES6DPS56028','98988','2023-01-03'),('WAUYGAFC6CN174200','12345','2021-04-25'),('WBAAM3333XFP59732','45678','2022-10-11'),('WBAFR9C59BC270614','44553','2021-09-15'),('YS3AK35E4M5002999','76543','2023-01-03'),('YS3ED48E5Y3070016','55739','2021-01-01');
/*!40000 ALTER TABLE `sold` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-27 19:37:39
