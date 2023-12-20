-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 3eG_1
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oddzialy`
--

DROP TABLE IF EXISTS `oddzialy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oddzialy` (
  `NrRozlicz` int(8) DEFAULT NULL,
  `Miejscowosc` varchar(8) DEFAULT NULL,
  `Nr` int(1) DEFAULT NULL,
  `Region` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oddzialy`
--

LOCK TABLES `oddzialy` WRITE;
/*!40000 ALTER TABLE `oddzialy` DISABLE KEYS */;
INSERT INTO `oddzialy` VALUES (10000001,'Kraków',1,'Południe'),(10000002,'Kraków',2,'Południe'),(10000003,'Wrocław',1,'Południe'),(10000004,'Katowice',1,'Południe'),(10000005,'Wrocław',2,'Południe'),(10000006,'Warszawa',1,'Północ'),(10000007,'Warszawa',2,'Północ'),(10000008,'Warszawa',3,'Północ'),(10000009,'Olsztyn',1,'Północ'),(10000010,'Olsztyn',2,'Północ'),(10000011,'Katowice',2,'Południe');
/*!40000 ALTER TABLE `oddzialy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy` (
  `Nr` int(2) DEFAULT NULL,
  `Nazwisko` varchar(13) DEFAULT NULL,
  `Imie` varchar(9) DEFAULT NULL,
  `NrRozliczOddz` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Kowalski','Jan',10000001),(2,'Grzegorzewska','Anna',10000001),(3,'Kowalski','Paweł',10000002),(4,'Pawłowska','Ewa',10000002),(5,'Jankowski','Andrzej',10000002),(6,'Jakubowska','Janina',10000003),(7,'Jędrzejowski','Grzegorz',10000004),(8,'Pawłowski','Piotr',10000004),(9,'Pawłowski','Adam',10000005),(10,'Pawłowska','Sylwia',10000005),(11,'Kowalska','Joanna',10000005),(12,'Adamowski','Jerzy',10000006),(13,'Tomaszewska','Iwona',10000006),(14,'Tomaszewski','Wojciech',10000007),(15,'Janowski','Miłosz',10000007),(16,'Piotrowska','Agnieszka',10000007),(17,'Kowalska','Beata',10000008),(18,'Bartoszewski','Karol',10000009),(19,'Bogdanowicz','Wacław',10000009),(20,'Michałowski','Henryk',10000010),(21,'Kazimierski','Bogdan',10000010),(22,'Stażysta','Michał',10000009),(23,'Jakubowski','Stanisław',10000011);
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkty`
--

DROP TABLE IF EXISTS `produkty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produkty` (
  `Nazwa` varchar(17) DEFAULT NULL,
  `Punktacja` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkty`
--

LOCK TABLES `produkty` WRITE;
/*!40000 ALTER TABLE `produkty` DISABLE KEYS */;
INSERT INTO `produkty` VALUES ('Kredyt hipoteczny',8),('Lokata roczna',4),('ROR firmowy',5),('ROR osobisty',3);
/*!40000 ALTER TABLE `produkty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sprzedaz`
--

DROP TABLE IF EXISTS `sprzedaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sprzedaz` (
  `NrPracownika` int(2) DEFAULT NULL,
  `NazwaProduktu` varchar(17) DEFAULT NULL,
  `Ilosc` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sprzedaz`
--

LOCK TABLES `sprzedaz` WRITE;
/*!40000 ALTER TABLE `sprzedaz` DISABLE KEYS */;
INSERT INTO `sprzedaz` VALUES (1,'Kredyt hipoteczny',2),(1,'ROR osobisty',4),(2,'ROR firmowy',3),(2,'ROR osobisty',10),(3,'Lokata roczna',7),(4,'Kredyt hipoteczny',4),(4,'Lokata roczna',7),(4,'ROR osobisty',11),(5,'ROR firmowy',15),(6,'Lokata roczna',1),(6,'ROR firmowy',10),(7,'Kredyt hipoteczny',6),(8,'Lokata roczna',5),(8,'ROR firmowy',2),(9,'ROR firmowy',4),(9,'ROR osobisty',12),(10,'Kredyt hipoteczny',1),(10,'ROR firmowy',1),(10,'ROR osobisty',11),(11,'Lokata roczna',5),(11,'ROR osobisty',8),(12,'Kredyt hipoteczny',4),(12,'ROR firmowy',2),(12,'ROR osobisty',4),(13,'Kredyt hipoteczny',2),(13,'Lokata roczna',7),(13,'ROR firmowy',6),(13,'ROR osobisty',3),(14,'Kredyt hipoteczny',9),(15,'ROR firmowy',13),(16,'Kredyt hipoteczny',5),(16,'ROR firmowy',2),(17,'Lokata roczna',1),(17,'ROR firmowy',2),(17,'ROR osobisty',14),(18,'Kredyt hipoteczny',6),(18,'Lokata roczna',1),(18,'ROR firmowy',1),(18,'ROR osobisty',5),(19,'ROR osobisty',19),(20,'Lokata roczna',1),(20,'ROR firmowy',9),(21,'Kredyt hipoteczny',7),(21,'Lokata roczna',1),(21,'ROR firmowy',1);
/*!40000 ALTER TABLE `sprzedaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wyroznieni`
--

DROP TABLE IF EXISTS `wyroznieni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wyroznieni` (
  `NrPracownika` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wyroznieni`
--

LOCK TABLES `wyroznieni` WRITE;
/*!40000 ALTER TABLE `wyroznieni` DISABLE KEYS */;
INSERT INTO `wyroznieni` VALUES (3),(8),(11),(12),(20);
/*!40000 ALTER TABLE `wyroznieni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-04 12:58:01
