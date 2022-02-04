-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: oursupermarket
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `endereco` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `endereco` (`endereco`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`endereco`) REFERENCES `localizacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (2,'wefwe','fwewe','ewfew','2000','scsdc',26);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `endereco` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `endereco` (`endereco`),
  CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`endereco`) REFERENCES `localizacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (2,'dscsddscds','dscscsdc','dcsd',25);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localizacao`
--

DROP TABLE IF EXISTS `localizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localizacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localizacao`
--

LOCK TABLES `localizacao` WRITE;
/*!40000 ALTER TABLE `localizacao` DISABLE KEYS */;
INSERT INTO `localizacao` VALUES (2,'Antonio Ferreira','234','água verde','Guaiuba',NULL,'61890-000'),(3,'João Henrique Freitosa','765','água verde','Guaiuba','CE\r\n\r\n','61890-000'),(4,'Benvida','678','água verde','Guaiuba','CE','61890-000'),(5,'Paulo','234','agua','gtend','BA','2345'),(6,'Paulo','234','agua','gtend','BA','2345'),(7,'Paulo','234','agua','gtend','BA','2345'),(8,'Paulo','234','agua','gtend','BA','2345'),(9,'Paulo','234','agua','gtend','BA','2345'),(10,'sdfffg','234','ffddfff','ereee','AC','2345'),(11,'sdfffg','234','ffddfff','ereee','AC','2345'),(12,'sdfffg','234','ffddfff','ereee','AC','2345'),(13,'sdfffg','234','ffddfff','ereee','AC','2345'),(14,'sdfffg','234','ffddfff','ereee','AC','2345'),(15,'efew','343','fdvds','erger','AC','3424'),(16,'dss','erw','dsfsdsfs','ger','AC','fdgd'),(17,'fefew','343','fgdf','sfsf','AC','5313'),(18,'dsfsd','123','dds','afad','AC','87879'),(19,'dsfsd','123','dds','afad','AC','87879'),(20,'dadfa','97','sxslo','ijco','AC','87'),(21,'vsfv','546','sdcsc','sdcs','AC','798'),(22,'hjlghdfljh','34543','jfhsdjk','snk','AC','2534'),(23,'hjlghdfljh','34543','jfhsdjk','snk','AC','2534'),(24,'João Henrique Freitosa','34543','jfhsdjk','snk','AC','2534'),(25,'dssd','sdcsd','sdcssdcs','dcs','AC','sdcsd'),(26,'Carlos','fdvs','vfsdc','fvsf','AC','5645');
/*!40000 ALTER TABLE `localizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `fornecedor` int NOT NULL,
  `preco` float NOT NULL,
  `estoque` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fornecedor` (`fornecedor`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`fornecedor`) REFERENCES `fornecedor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (2,'Sabãp em pó',2,23.3,23);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto` int NOT NULL,
  `cliente` int NOT NULL,
  `datavenda` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto` (`produto`),
  KEY `cliente` (`cliente`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `produto` (`id`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,2,2,'2022/02/03 10:42:28'),(2,2,2,'2022/02/03 10:50:26'),(3,2,2,'2022/02/03 11:11:43'),(4,2,2,'2022/02/03 11:32:11'),(5,2,2,'2022/02/04 10:10:33'),(6,2,2,'2022/02/04 10:14:23');
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'oursupermarket'
--

--
-- Dumping routines for database 'oursupermarket'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-04 10:17:16
