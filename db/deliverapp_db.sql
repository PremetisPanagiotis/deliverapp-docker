-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: deliverapp_db
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (5,'Administrator'),(2,'Assistant'),(1,'CEO'),(4,'Delivery Worker'),(3,'Manager');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,21),(2,1,22),(3,1,23),(4,1,24),(5,1,26),(6,1,28),(7,1,29),(8,1,30),(9,1,31),(10,1,32),(11,1,33),(12,1,34),(13,1,35),(14,1,36),(15,1,37),(16,1,38),(17,1,39),(18,1,40),(19,1,41),(20,1,42),(21,1,43),(22,1,44),(23,1,48),(24,1,52),(25,2,21),(26,2,22),(27,2,23),(28,2,24),(29,2,28),(30,2,29),(31,2,30),(32,2,31),(33,2,32),(34,2,34),(35,2,35),(36,2,36),(37,2,37),(38,2,38),(39,2,39),(40,2,40),(41,2,41),(42,2,42),(43,2,43),(44,2,44),(45,2,48),(46,2,52),(137,3,12),(76,3,22),(62,3,24),(63,3,28),(47,3,32),(48,3,33),(49,3,34),(50,3,35),(51,3,36),(52,3,37),(53,3,38),(54,3,39),(55,3,40),(56,3,41),(57,3,42),(58,3,43),(59,3,44),(60,3,48),(61,3,52),(73,4,22),(74,4,24),(75,4,28),(64,4,32),(65,4,36),(66,4,40),(67,4,44),(68,4,45),(69,4,46),(70,4,47),(71,4,48),(72,4,52),(77,5,1),(78,5,2),(79,5,3),(80,5,4),(81,5,5),(82,5,6),(83,5,7),(84,5,8),(85,5,9),(86,5,10),(87,5,11),(88,5,12),(89,5,13),(90,5,14),(91,5,15),(92,5,16),(93,5,17),(94,5,18),(95,5,19),(96,5,20),(97,5,21),(98,5,22),(99,5,23),(100,5,24),(101,5,25),(102,5,26),(103,5,27),(104,5,28),(105,5,29),(106,5,30),(107,5,31),(108,5,32),(109,5,33),(110,5,34),(111,5,35),(112,5,36),(113,5,37),(114,5,38),(115,5,39),(116,5,40),(117,5,41),(118,5,42),(119,5,43),(120,5,44),(121,5,45),(122,5,46),(123,5,47),(124,5,48),(125,5,49),(126,5,50),(127,5,51),(128,5,52),(129,5,53),(130,5,54),(131,5,55),(132,5,56),(133,5,57),(134,5,58),(135,5,59),(136,5,60);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add custom user',6,'add_customuser'),(22,'Can change custom user',6,'change_customuser'),(23,'Can delete custom user',6,'delete_customuser'),(24,'Can view custom user',6,'view_customuser'),(25,'Can add brand',7,'add_brand'),(26,'Can change brand',7,'change_brand'),(27,'Can delete brand',7,'delete_brand'),(28,'Can view brand',7,'view_brand'),(29,'Can add chain',8,'add_chain'),(30,'Can change chain',8,'change_chain'),(31,'Can delete chain',8,'delete_chain'),(32,'Can view chain',8,'view_chain'),(33,'Can add contract',9,'add_contract'),(34,'Can change contract',9,'change_contract'),(35,'Can delete contract',9,'delete_contract'),(36,'Can view contract',9,'view_contract'),(37,'Can add contract log',10,'add_contractlog'),(38,'Can change contract log',10,'change_contractlog'),(39,'Can delete contract log',10,'delete_contractlog'),(40,'Can view contract log',10,'view_contractlog'),(41,'Can add job request',11,'add_jobrequest'),(42,'Can change job request',11,'change_jobrequest'),(43,'Can delete job request',11,'delete_jobrequest'),(44,'Can view job request',11,'view_jobrequest'),(45,'Can add job application',12,'add_jobapplication'),(46,'Can change job application',12,'change_jobapplication'),(47,'Can delete job application',12,'delete_jobapplication'),(48,'Can view job application',12,'view_jobapplication'),(49,'Can add order',13,'add_order'),(50,'Can change order',13,'change_order'),(51,'Can delete order',13,'delete_order'),(52,'Can view order',13,'view_order'),(53,'Can add Blacklisted Token',14,'add_blacklistedtoken'),(54,'Can change Blacklisted Token',14,'change_blacklistedtoken'),(55,'Can delete Blacklisted Token',14,'delete_blacklistedtoken'),(56,'Can view Blacklisted Token',14,'view_blacklistedtoken'),(57,'Can add Outstanding Token',15,'add_outstandingtoken'),(58,'Can change Outstanding Token',15,'change_outstandingtoken'),(59,'Can delete Outstanding Token',15,'delete_outstandingtoken'),(60,'Can view Outstanding Token',15,'view_outstandingtoken'),(61,'Can add Password Reset Token',16,'add_resetpasswordtoken'),(62,'Can change Password Reset Token',16,'change_resetpasswordtoken'),(63,'Can delete Password Reset Token',16,'delete_resetpasswordtoken'),(64,'Can view Password Reset Token',16,'view_resetpasswordtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands_brand`
--

DROP TABLE IF EXISTS `brands_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `creation_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_brand`
--

LOCK TABLES `brands_brand` WRITE;
/*!40000 ALTER TABLE `brands_brand` DISABLE KEYS */;
INSERT INTO `brands_brand` VALUES (1,'Sample Coffee Store','brands/Sample Coffee Store/5254154_54722_5fa7TAW.jpg','2025-10-06 08:57:28.534734','2026-01-20 07:13:32.536636'),(2,'Coffee Garden','','2025-10-06 11:17:17.320403','2026-01-19 12:06:59.679628');
/*!40000 ALTER TABLE `brands_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chains_chain`
--

DROP TABLE IF EXISTS `chains_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chains_chain` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(245) NOT NULL,
  `logo` longtext,
  `creation_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `brand_id` bigint NOT NULL,
  `address` varchar(245) NOT NULL,
  `city` varchar(245) NOT NULL,
  `zip_code` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chains_chain_name_brand_id_9d60b95a_uniq` (`name`,`brand_id`),
  KEY `chains_chain_brand_id_d1300203_fk_brands_brand_id` (`brand_id`),
  CONSTRAINT `chains_chain_brand_id_d1300203_fk_brands_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands_brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chains_chain`
--

LOCK TABLES `chains_chain` WRITE;
/*!40000 ALTER TABLE `chains_chain` DISABLE KEYS */;
INSERT INTO `chains_chain` VALUES (3,'Coffee Chain 3','','2025-10-07 08:18:40.469901','2026-01-19 11:41:30.106310',1,'Idomeneos 118 & Thivon','Ilion','13123'),(4,'Coffee Garden Καματερό','','2025-10-13 10:32:37.319273','2025-12-01 11:18:03.037285',2,'Φυλής 6','Καματερό','13451'),(5,'Coffee Chain 1','','2025-11-03 08:42:46.698535','2026-01-19 11:40:47.967161',1,'Kifissos Avenue','Petrou Ralli','18233'),(6,'Coffe Chain 2','','2025-11-03 08:43:43.644080','2026-01-19 11:41:10.983282',1,'Agias Sofias 38','Thesalloniki','54622');
/*!40000 ALTER TABLE `chains_chain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_contract`
--

DROP TABLE IF EXISTS `contracts_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_contract` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `duration_type` longtext NOT NULL,
  `duration` int NOT NULL,
  `payrate` decimal(10,2) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `chain_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contracts_contract_chain_id_c82c0929_fk_chains_chain_id` (`chain_id`),
  KEY `contracts_contract_user_id_df2380cc_fk_deliverapp_customuser_id` (`user_id`),
  CONSTRAINT `contracts_contract_chain_id_c82c0929_fk_chains_chain_id` FOREIGN KEY (`chain_id`) REFERENCES `chains_chain` (`id`),
  CONSTRAINT `contracts_contract_user_id_df2380cc_fk_deliverapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `deliverapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_contract`
--

LOCK TABLES `contracts_contract` WRITE;
/*!40000 ALTER TABLE `contracts_contract` DISABLE KEYS */;
INSERT INTO `contracts_contract` VALUES (12,'2026-01-21','Months',3,23.00,'2026-01-21 10:36:51.228644','2026-01-21 10:36:51.228644',3,11),(13,'2026-01-21','Months',6,3.00,'2026-01-21 08:48:02.933243','2026-01-21 08:48:02.933260',5,19);
/*!40000 ALTER TABLE `contracts_contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_contractlog`
--

DROP TABLE IF EXISTS `contracts_contractlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_contractlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `duration_type` longtext NOT NULL,
  `duration` int NOT NULL,
  `payrate` decimal(10,2) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `contract_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contracts_contractlo_contract_id_f11b8967_fk_contracts` (`contract_id`),
  CONSTRAINT `contracts_contractlo_contract_id_f11b8967_fk_contracts` FOREIGN KEY (`contract_id`) REFERENCES `contracts_contract` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_contractlog`
--

LOCK TABLES `contracts_contractlog` WRITE;
/*!40000 ALTER TABLE `contracts_contractlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts_contractlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_jobapplication`
--

DROP TABLE IF EXISTS `contracts_jobapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_jobapplication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  `job_request_id` bigint NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contracts_jobapplication_job_request_id_user_id_d0b9f748_uniq` (`job_request_id`,`user_id`),
  KEY `contracts_jobapplica_user_id_3e7bbbaf_fk_deliverap` (`user_id`),
  CONSTRAINT `contracts_jobapplica_job_request_id_f50fb8d4_fk_contracts` FOREIGN KEY (`job_request_id`) REFERENCES `contracts_jobrequest` (`id`),
  CONSTRAINT `contracts_jobapplica_user_id_3e7bbbaf_fk_deliverap` FOREIGN KEY (`user_id`) REFERENCES `deliverapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_jobapplication`
--

LOCK TABLES `contracts_jobapplication` WRITE;
/*!40000 ALTER TABLE `contracts_jobapplication` DISABLE KEYS */;
INSERT INTO `contracts_jobapplication` VALUES (8,'APPROVED',11,7,'2025-12-09 11:58:48.211543','2025-12-09 12:11:37.943188'),(9,'APPROVED',11,4,'2026-01-21 06:57:58.031115','2026-01-21 06:57:58.031135'),(10,'APPROVED',19,2,'2026-01-21 07:08:53.945283','2026-01-21 08:48:02.905481');
/*!40000 ALTER TABLE `contracts_jobapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts_jobrequest`
--

DROP TABLE IF EXISTS `contracts_jobrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts_jobrequest` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(254) NOT NULL,
  `description` longtext,
  `payrate` decimal(10,2) NOT NULL,
  `duration_type` varchar(24) NOT NULL,
  `duration` int NOT NULL,
  `bike_license` tinyint(1) NOT NULL,
  `car_license` tinyint(1) NOT NULL,
  `availability` varchar(10) NOT NULL,
  `status` varchar(254) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `chain_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contracts_jobrequest_chain_id_title_b0604421_uniq` (`chain_id`,`title`),
  CONSTRAINT `contracts_jobrequest_chain_id_a79ef5ab_fk_chains_chain_id` FOREIGN KEY (`chain_id`) REFERENCES `chains_chain` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts_jobrequest`
--

LOCK TABLES `contracts_jobrequest` WRITE;
/*!40000 ALTER TABLE `contracts_jobrequest` DISABLE KEYS */;
INSERT INTO `contracts_jobrequest` VALUES (2,'6Month delivery','fafasfs',3.00,'Months',6,1,0,'F,Su','DRAFT','2025-10-07 10:36:51.228644','2026-01-19 11:54:16.606624',5),(3,'Looking for delivery','',2.54,'Months',2,0,1,'T,F','INACTIVE','2025-10-07 11:32:31.750707','2026-01-19 11:53:42.118945',6),(4,'Delivery with car','',2.43,'Weeks',4,0,1,'W,F,T','ACTIVE','2025-10-08 08:36:58.453034','2026-01-19 11:53:55.191290',3),(6,'Ζητείται διανομέας','What is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',4.53,'Weeks',2,1,1,'T,W,Th,F','DRAFT','2025-10-13 11:33:21.154099','2025-11-03 08:54:24.074183',4),(7,'4ωρος διανομέας','',2.50,'Months',6,1,0,'M,T,W,Th','DRAFT','2025-11-03 10:32:47.786832','2025-11-03 10:32:47.788649',4);
/*!40000 ALTER TABLE `contracts_jobrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverapp_customuser`
--

DROP TABLE IF EXISTS `deliverapp_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverapp_customuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `mobile` longtext NOT NULL,
  `address` longtext NOT NULL,
  `license_number` longtext,
  `bike_license` tinyint(1) NOT NULL,
  `car_license` tinyint(1) NOT NULL,
  `chain_id` bigint DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `deliverapp_customuser_email_1379f589_uniq` (`email`),
  KEY `deliverapp_customuser_chain_id_8ddb5dc7_fk_chains_chain_id` (`chain_id`),
  KEY `deliverapp_customuser_brand_id_1b7cfbd5_fk_brands_brand_id` (`brand_id`),
  CONSTRAINT `deliverapp_customuser_brand_id_1b7cfbd5_fk_brands_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brands_brand` (`id`),
  CONSTRAINT `deliverapp_customuser_chain_id_8ddb5dc7_fk_chains_chain_id` FOREIGN KEY (`chain_id`) REFERENCES `chains_chain` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverapp_customuser`
--

LOCK TABLES `deliverapp_customuser` WRITE;
/*!40000 ALTER TABLE `deliverapp_customuser` DISABLE KEYS */;
INSERT INTO `deliverapp_customuser` VALUES (1,'pbkdf2_sha256$1000000$ykBI0VCSDMktf6FZcXI8Uv$b2Tds7W2LKhihT96NTYy1Pe5K0DaL0C+83g51koxy6g=','2026-01-12 09:35:47.000000',1,'admin','Panagiotis','Premetis','admin@mail.com',1,1,'2025-10-06 07:29:47.000000','6986155428','Krystalli 13, Zefyri','',0,0,NULL,NULL),(2,'pbkdf2_sha256$1000000$utEKaC7TfEVxRIB7kIFN4G$oYJBshpbUnz71dFmCwqzKP9h4NWZNO/pAUS8XSoWh2E=',NULL,0,'jDoe','John','Doe','manager@mail.com',0,1,'2025-10-08 11:33:48.000000','6986155428','Κρυστάλλη 13, Ζεφύρι','',1,1,4,2),(3,'pbkdf2_sha256$1000000$tNfgnCDDgi2FurMXBks6FQ$yPDtE/b5YIi3YD9RhJznMWHoVcyiw6CuKDgPnTn8xSo=',NULL,0,'janeDoe','Jane','Doe','test@mail.com',0,1,'2025-12-05 06:32:47.000000','6948374192','Papaflesa 25, Zefyri','',0,0,NULL,1),(11,'pbkdf2_sha256$1000000$6XBwFT7mpMLRMzWqjnuHVA$hKyJxIFzGkQNWXe0UFDCKd+FXInfg2qBUNk6oVhgdLE=',NULL,0,'panos','Panos','Prem','delivery@mail.com',0,1,'2025-12-09 11:51:00.000000','647382','Kolokotroni 25, Kamatero','Hd7ebdh',1,0,NULL,NULL),(13,'pbkdf2_sha256$1000000$4C15gXQ97NYrPL2hdHZFVb$0g/V/qoEpXAIk2dHWxQeYgSFnqE6xUH4jxXcZXRUExA=',NULL,0,'ceo','Bob','Smith','ceo@mail.com',0,1,'2026-01-12 10:42:20.000000','95959892','Test 41','',0,0,NULL,1),(18,'pbkdf2_sha256$1000000$u3VgjsCE6KbHwrhCjBMrqZ$HK2CCfQBVtkmHCV7KB8yX2GRA5sYEV4wdWw9PaPYK8E=',NULL,0,'test','test','test','test12@mail.com',0,1,'2026-01-19 11:12:26.000000','32424','test','',0,0,4,2),(19,'pbkdf2_sha256$1000000$6XBwFT7mpMLRMzWqjnuHVA$hKyJxIFzGkQNWXe0UFDCKd+FXInfg2qBUNk6oVhgdLE=',NULL,0,'delivery2','Jack','Jones','deliver2@mail.com',0,1,'2026-01-21 07:07:05.000000','948498498','Athens','',1,1,NULL,NULL);
/*!40000 ALTER TABLE `deliverapp_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverapp_customuser_groups`
--

DROP TABLE IF EXISTS `deliverapp_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverapp_customuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deliverapp_customuser_gr_customuser_id_group_id_e7bc5201_uniq` (`customuser_id`,`group_id`),
  KEY `deliverapp_customuser_groups_group_id_8513698a_fk_auth_group_id` (`group_id`),
  CONSTRAINT `deliverapp_customuse_customuser_id_5d4f204f_fk_deliverap` FOREIGN KEY (`customuser_id`) REFERENCES `deliverapp_customuser` (`id`),
  CONSTRAINT `deliverapp_customuser_groups_group_id_8513698a_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverapp_customuser_groups`
--

LOCK TABLES `deliverapp_customuser_groups` WRITE;
/*!40000 ALTER TABLE `deliverapp_customuser_groups` DISABLE KEYS */;
INSERT INTO `deliverapp_customuser_groups` VALUES (3,1,5),(2,2,3),(4,3,2),(5,11,4),(6,13,1),(12,18,3),(13,19,4);
/*!40000 ALTER TABLE `deliverapp_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliverapp_customuser_user_permissions`
--

DROP TABLE IF EXISTS `deliverapp_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliverapp_customuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `deliverapp_customuser_us_customuser_id_permission_9abaf9ab_uniq` (`customuser_id`,`permission_id`),
  KEY `deliverapp_customuse_permission_id_dee17225_fk_auth_perm` (`permission_id`),
  CONSTRAINT `deliverapp_customuse_customuser_id_366d85b2_fk_deliverap` FOREIGN KEY (`customuser_id`) REFERENCES `deliverapp_customuser` (`id`),
  CONSTRAINT `deliverapp_customuse_permission_id_dee17225_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliverapp_customuser_user_permissions`
--

LOCK TABLES `deliverapp_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `deliverapp_customuser_user_permissions` DISABLE KEYS */;
INSERT INTO `deliverapp_customuser_user_permissions` VALUES (125,2,12),(104,2,22),(105,2,24),(106,2,28),(107,2,32),(108,2,33),(109,2,34),(110,2,35),(111,2,36),(112,2,37),(113,2,39),(114,2,40),(115,2,41),(116,2,42),(117,2,43),(118,2,44),(119,2,45),(120,2,46),(121,2,48),(122,2,52),(124,3,12),(81,3,21),(82,3,22),(83,3,23),(84,3,24),(85,3,28),(86,3,29),(87,3,30),(88,3,31),(89,3,32),(90,3,33),(91,3,34),(92,3,35),(93,3,36),(94,3,37),(95,3,38),(96,3,40),(97,3,41),(98,3,42),(99,3,43),(100,3,44),(101,3,46),(102,3,48),(103,3,52),(129,11,12),(136,11,24),(137,11,28),(126,11,32),(127,11,36),(128,11,40),(134,11,44),(130,11,45),(131,11,46),(132,11,47),(133,11,48),(135,11,52),(123,13,12),(56,13,21),(57,13,22),(58,13,23),(59,13,24),(60,13,26),(61,13,28),(62,13,29),(63,13,30),(64,13,31),(65,13,32),(66,13,33),(67,13,34),(68,13,35),(69,13,36),(70,13,37),(71,13,38),(72,13,39),(73,13,40),(74,13,41),(75,13,42),(76,13,43),(77,13,44),(78,13,46),(79,13,48),(80,13,52),(55,18,12),(52,18,22),(53,18,24),(37,18,28),(38,18,32),(39,18,33),(40,18,34),(41,18,35),(42,18,36),(43,18,37),(44,18,38),(45,18,39),(46,18,40),(48,18,41),(49,18,42),(50,18,43),(51,18,44),(47,18,48),(54,18,52),(141,19,12),(149,19,22),(150,19,24),(151,19,28),(138,19,32),(139,19,36),(140,19,40),(146,19,44),(142,19,45),(143,19,46),(144,19,47),(145,19,48),(147,19,50),(148,19,52);
/*!40000 ALTER TABLE `deliverapp_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_deliverapp_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_deliverapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `deliverapp_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-10-08 11:34:57.224979','2','jDoe',1,'[{\"added\": {}}]',6,1),(2,'2025-10-08 11:35:13.073337','1','JobApplication object (1)',1,'[{\"added\": {}}]',12,1),(3,'2025-10-16 07:01:58.105412','1','JobApplication object (1)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(4,'2025-10-16 11:11:58.028234','2',' (test 2)',1,'[{\"added\": {}}]',12,1),(5,'2025-10-16 11:12:42.935004','1','admin',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Mobile\", \"Address\"]}}]',6,1),(6,'2025-10-16 11:41:16.676867','3','John Doe (Yes)',1,'[{\"added\": {}}]',12,1),(7,'2025-10-16 11:52:09.576403','3','John Doe (Yes)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(8,'2025-10-16 11:54:48.966511','3','John Doe (Yes)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(9,'2025-10-16 11:56:57.725054','2','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(10,'2025-10-16 11:56:57.725105','1','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(11,'2025-10-16 11:57:02.779992','3','John Doe (Yes)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(12,'2025-10-20 05:14:09.205745','1','CEO',1,'[{\"added\": {}}]',3,1),(13,'2025-10-20 05:14:57.331344','2','Assistant',1,'[{\"added\": {}}]',3,1),(14,'2025-10-20 05:15:45.212226','3','Manager',1,'[{\"added\": {}}]',3,1),(15,'2025-10-20 05:17:16.052719','4','Delivery Worker',1,'[{\"added\": {}}]',3,1),(16,'2025-10-20 05:17:37.087999','3','Manager',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(17,'2025-10-20 06:32:23.921517','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(18,'2025-10-20 09:48:22.328597','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',6,1),(19,'2025-10-21 10:50:12.434144','7','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(20,'2025-10-21 10:50:12.434192','6','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(21,'2025-10-21 10:50:12.434212','5','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(22,'2025-10-21 10:50:12.434228','4','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(23,'2025-10-21 10:50:12.434243','3','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(24,'2025-10-21 10:52:11.020126','8','John Doe (Μπουμπουλίνας 21)',3,'',9,1),(25,'2025-11-03 07:26:30.062904','2','Coffee Garden',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',7,1),(26,'2025-11-03 08:11:07.675968','4','Coffee Garden Καματερό',2,'[{\"changed\": {\"fields\": [\"Name\", \"Address\", \"City\"]}}]',8,1),(27,'2025-11-03 08:12:27.625114','3','Goody\'s Ίλιον',2,'[{\"changed\": {\"fields\": [\"Name\", \"Address\", \"City\", \"Zip code\"]}}]',8,1),(28,'2025-11-03 08:42:46.758152','5','Goody\'s Allou fun park',1,'[{\"added\": {}}]',8,1),(29,'2025-11-03 08:43:43.647516','6','Gooddy\'s Αγία Σοφία',1,'[{\"added\": {}}]',8,1),(30,'2025-12-01 08:36:56.852144','2','jDoe',2,'[]',6,1),(31,'2025-12-01 08:42:28.374091','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(32,'2025-12-01 08:47:47.495945','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Chain\"]}}]',6,1),(33,'2025-12-01 11:18:03.043789','4','Coffee Garden Καματερό',2,'[{\"changed\": {\"fields\": [\"Manager\"]}}]',8,1),(34,'2025-12-01 11:26:12.732337','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Chain\"]}}]',6,1),(35,'2025-12-01 11:26:28.357799','1','admin',2,'[{\"changed\": {\"fields\": [\"Chain\"]}}]',6,1),(36,'2025-12-01 11:26:40.938836','1','admin',2,'[{\"changed\": {\"fields\": [\"Chain\"]}}]',6,1),(37,'2025-12-01 12:37:55.400279','1','John Doe (Διανομέας με αμάξι)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(38,'2025-12-01 12:38:57.242857','1','John Doe (Διανομέας με αμάξι)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(39,'2025-12-01 12:39:42.126092','1','John Doe (Διανομέας με αμάξι)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(40,'2025-12-01 12:53:21.137911','1','John Doe (Διανομέας με αμάξι)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(41,'2025-12-01 12:58:01.155840','1','John Doe (Διανομέας με αμάξι)',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',12,1),(42,'2025-12-02 10:17:53.539359','1','Order object (1)',1,'[{\"added\": {}}]',13,1),(43,'2025-12-02 10:20:12.571216','5','Administrator',1,'[{\"added\": {}}]',3,1),(44,'2025-12-02 10:23:03.756056','1','admin',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',6,1),(45,'2025-12-02 10:47:19.167429','2','Order object (2)',1,'[{\"added\": {}}]',13,1),(46,'2025-12-02 11:46:05.579143','3','Order object (3)',1,'[{\"added\": {}}]',13,1),(47,'2025-12-03 09:42:04.059065','6','Goody\'s Αγία Σοφία',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',8,1),(48,'2025-12-05 06:33:18.074080','3','janeDoe',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(49,'2025-12-05 06:34:20.156582','3','janeDoe',2,'[{\"changed\": {\"fields\": [\"Active\"]}}]',6,1),(50,'2025-12-09 08:51:49.418165','4','panos',3,'',6,1),(51,'2025-12-09 08:54:55.079619','5','panos',3,'',6,1),(52,'2025-12-09 09:42:16.293534','6','panos',3,'',6,1),(53,'2025-12-09 11:46:51.892677','7','panos',3,'',6,1),(54,'2025-12-09 11:48:58.030089','8','panos',3,'',6,1),(55,'2025-12-09 11:50:29.921787','9','panos',3,'',6,1),(56,'2025-12-09 11:50:57.356086','10','panos',3,'',6,1),(57,'2025-12-10 10:07:13.134735','4','Order object (4)',1,'[{\"added\": {}}]',13,1),(58,'2026-01-12 10:37:55.666838','12','ceo',3,'',6,1),(59,'2026-01-12 11:11:30.809389','1','Goody\'s',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',7,1),(60,'2026-01-12 11:12:27.544981','1','Sample Coffee Store',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(61,'2026-01-16 12:20:56.128448','1','Sample Coffee Store',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',7,1),(62,'2026-01-19 10:31:33.777919','14','test',3,'',6,1),(63,'2026-01-19 11:04:37.008932','15','test',3,'',6,1),(64,'2026-01-19 11:08:24.734060','16','test',3,'',6,1),(65,'2026-01-19 11:10:41.684038','17','test',3,'',6,1),(66,'2026-01-19 11:35:50.397395','3','Manager',2,'[{\"changed\": {\"fields\": [\"Permissions\"]}}]',3,1),(67,'2026-01-19 11:36:09.333177','18','test',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(68,'2026-01-19 12:00:30.970812','3','janeDoe',2,'[{\"changed\": {\"fields\": [\"Chain\"]}}]',6,1),(69,'2026-01-19 12:05:58.492548','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Brand\"]}}]',6,1),(70,'2026-01-19 12:06:59.734770','2','Coffee Garden',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',7,1),(71,'2026-01-21 06:21:13.032028','13','ceo',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(72,'2026-01-21 06:22:00.353830','3','janeDoe',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(73,'2026-01-21 06:22:45.407130','2','jDoe',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(74,'2026-01-21 06:23:10.960340','13','ceo',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(75,'2026-01-21 06:23:18.038685','3','janeDoe',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(76,'2026-01-21 06:23:27.519183','2','jDoe',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(77,'2026-01-21 06:24:26.368702','11','panos',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',6,1),(78,'2026-01-21 06:24:46.801792','2','jDoe',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(79,'2026-01-21 06:24:55.230472','11','panos',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(80,'2026-01-21 06:25:05.959194','1','admin',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(81,'2026-01-21 06:25:14.577384','13','ceo',2,'[{\"changed\": {\"fields\": [\"Email address\"]}}]',6,1),(82,'2026-01-21 06:25:22.460046','1','admin',2,'[{\"changed\": {\"fields\": [\"Brand\"]}}]',6,1),(83,'2026-01-21 06:54:46.966242','4','Order object (4)',3,'',13,1),(84,'2026-01-21 06:54:46.966307','2','Order object (2)',3,'',13,1),(85,'2026-01-21 06:54:46.966332','1','Order object (1)',3,'',13,1),(86,'2026-01-21 06:55:03.951931','3','Order object (3)',2,'[{\"changed\": {\"fields\": [\"User\", \"Address\"]}}]',13,1),(87,'2026-01-21 06:55:32.739784','5','Order object (5)',1,'[{\"added\": {}}]',13,1),(88,'2026-01-21 06:56:09.132426','6','Order object (6)',1,'[{\"added\": {}}]',13,1),(89,'2026-01-21 06:56:48.141691','3','John Doe (Ζητείται διανομέας)',3,'',12,1),(90,'2026-01-21 06:56:48.141725','1','John Doe (Delivery with car)',3,'',12,1),(91,'2026-01-21 06:56:56.039778','7','Panagiotis Premetis (Looking for delivery)',3,'',12,1),(92,'2026-01-21 06:56:56.039812','6','Panagiotis Premetis (6Month delivery)',3,'',12,1),(93,'2026-01-21 06:56:56.039832','5','Panagiotis Premetis (Ζητείται διανομέας)',3,'',12,1),(94,'2026-01-21 06:56:56.039851','4','Panagiotis Premetis (4ωρος διανομέας)',3,'',12,1),(95,'2026-01-21 06:56:56.039867','2','Panagiotis Premetis (Delivery with car)',3,'',12,1),(96,'2026-01-21 06:57:05.566478','10','John Doe (Coffee Chain 3)',3,'',9,1),(97,'2026-01-21 06:57:05.566510','9','John Doe (Coffee Garden Καματερό)',3,'',9,1),(98,'2026-01-21 06:57:58.032851','9','Panos Prem (Delivery with car)',1,'[{\"added\": {}}]',12,1),(99,'2026-01-21 06:58:18.428926','11','Panos Prem (Coffee Garden Καματερό)',3,'',9,1),(100,'2026-01-21 07:08:05.520042','19','delivery2',1,'[{\"added\": {}}]',6,1),(101,'2026-01-21 07:08:53.947033','10','Jack Jones (6Month delivery)',1,'[{\"added\": {}}]',12,1),(102,'2026-01-21 08:48:32.266032','7','Order object (7)',1,'[{\"added\": {}}]',13,1),(103,'2026-01-21 08:49:00.249423','8','Order object (8)',1,'[{\"added\": {}}]',13,1),(104,'2026-01-21 08:51:33.936608','9','Order object (9)',1,'[{\"added\": {}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(7,'brands','brand'),(8,'chains','chain'),(4,'contenttypes','contenttype'),(9,'contracts','contract'),(10,'contracts','contractlog'),(12,'contracts','jobapplication'),(11,'contracts','jobrequest'),(6,'deliverapp','customuser'),(16,'django_rest_passwordreset','resetpasswordtoken'),(13,'orders','order'),(5,'sessions','session'),(14,'token_blacklist','blacklistedtoken'),(15,'token_blacklist','outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-10-06 07:29:11.244918'),(2,'contenttypes','0002_remove_content_type_name','2025-10-06 07:29:11.316663'),(3,'auth','0001_initial','2025-10-06 07:29:11.505085'),(4,'auth','0002_alter_permission_name_max_length','2025-10-06 07:29:11.552515'),(5,'auth','0003_alter_user_email_max_length','2025-10-06 07:29:11.557977'),(6,'auth','0004_alter_user_username_opts','2025-10-06 07:29:11.563226'),(7,'auth','0005_alter_user_last_login_null','2025-10-06 07:29:11.568518'),(8,'auth','0006_require_contenttypes_0002','2025-10-06 07:29:11.570819'),(9,'auth','0007_alter_validators_add_error_messages','2025-10-06 07:29:11.576167'),(10,'auth','0008_alter_user_username_max_length','2025-10-06 07:29:11.581253'),(11,'auth','0009_alter_user_last_name_max_length','2025-10-06 07:29:11.586434'),(12,'auth','0010_alter_group_name_max_length','2025-10-06 07:29:11.631264'),(13,'auth','0011_update_proxy_permissions','2025-10-06 07:29:11.636860'),(14,'auth','0012_alter_user_first_name_max_length','2025-10-06 07:29:11.641756'),(15,'deliverapp','0001_initial','2025-10-06 07:29:11.871577'),(16,'admin','0001_initial','2025-10-06 07:29:11.985515'),(17,'admin','0002_logentry_remove_auto_add','2025-10-06 07:29:11.992769'),(18,'admin','0003_logentry_add_action_flag_choices','2025-10-06 07:29:12.000134'),(19,'brands','0001_initial','2025-10-06 07:29:12.019109'),(20,'chains','0001_initial','2025-10-06 07:29:12.091802'),(21,'contracts','0001_initial','2025-10-06 07:29:12.532759'),(22,'orders','0001_initial','2025-10-06 07:29:12.645983'),(23,'sessions','0001_initial','2025-10-06 07:29:12.675528'),(24,'contracts','0002_alter_jobapplication_options_and_more','2025-10-07 10:26:32.020109'),(25,'token_blacklist','0001_initial','2025-10-13 08:05:48.903450'),(26,'token_blacklist','0002_outstandingtoken_jti_hex','2025-10-13 08:05:49.008707'),(27,'token_blacklist','0003_auto_20171017_2007','2025-10-13 08:05:49.039118'),(28,'token_blacklist','0004_auto_20171017_2013','2025-10-13 08:05:49.121895'),(29,'token_blacklist','0005_remove_outstandingtoken_jti','2025-10-13 08:05:49.181262'),(30,'token_blacklist','0006_auto_20171017_2113','2025-10-13 08:05:49.209955'),(31,'token_blacklist','0007_auto_20171017_2214','2025-10-13 08:05:49.485198'),(32,'token_blacklist','0008_migrate_to_bigautofield','2025-10-13 08:05:49.709027'),(33,'token_blacklist','0010_fix_migrate_to_bigautofield','2025-10-13 08:05:49.730086'),(34,'token_blacklist','0011_linearizes_history','2025-10-13 08:05:49.733553'),(35,'token_blacklist','0012_alter_outstandingtoken_user','2025-10-13 08:05:49.745376'),(36,'token_blacklist','0013_alter_blacklistedtoken_options_and_more','2025-10-13 08:05:49.757684'),(37,'contracts','0003_alter_contractlog_options','2025-10-21 06:32:38.067903'),(38,'chains','0002_chain_address_chain_city_chain_zip_code','2025-11-03 08:10:09.884056'),(39,'contracts','0004_remove_jobapplication_user_start_date','2025-11-12 07:18:01.236611'),(40,'deliverapp','0002_customuser_chain','2025-12-01 08:36:35.194766'),(41,'deliverapp','0003_remove_customuser_chain','2025-12-01 11:17:26.223973'),(42,'chains','0003_chain_manager','2025-12-01 11:17:38.275917'),(43,'chains','0004_remove_chain_manager','2025-12-01 11:23:48.703687'),(44,'deliverapp','0004_customuser_chain','2025-12-01 11:23:55.987944'),(45,'deliverapp','0005_customuser_brand_alter_customuser_chain','2025-12-01 12:03:30.039197'),(46,'deliverapp','0006_alter_customuser_email','2025-12-05 10:50:14.388108'),(47,'django_rest_passwordreset','0001_initial','2025-12-05 10:50:14.544228'),(48,'django_rest_passwordreset','0002_pk_migration','2025-12-05 10:50:14.966918'),(49,'django_rest_passwordreset','0003_allow_blank_and_null_fields','2025-12-05 10:50:15.064232'),(50,'django_rest_passwordreset','0004_alter_resetpasswordtoken_user_agent','2025-12-05 10:50:15.089856'),(51,'orders','0002_alter_order_chain','2025-12-05 10:50:15.103829'),(52,'deliverapp','0007_alter_customuser_brand','2025-12-09 08:34:23.590002'),(53,'orders','0003_order_city_order_zip_code_alter_order_address_and_more','2025-12-11 09:14:56.087694'),(54,'orders','0004_alter_order_chain','2026-01-19 11:05:34.446970');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_rest_passwordreset_resetpasswordtoken`
--

DROP TABLE IF EXISTS `django_rest_passwordreset_resetpasswordtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_rest_passwordreset_resetpasswordtoken` (
  `created_at` datetime(6) NOT NULL,
  `key` varchar(64) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` varchar(512) NOT NULL,
  `user_id` bigint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq` (`key`),
  KEY `django_rest_password_user_id_e8015b11_fk_deliverap` (`user_id`),
  CONSTRAINT `django_rest_password_user_id_e8015b11_fk_deliverap` FOREIGN KEY (`user_id`) REFERENCES `deliverapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_rest_passwordreset_resetpasswordtoken`
--

LOCK TABLES `django_rest_passwordreset_resetpasswordtoken` WRITE;
/*!40000 ALTER TABLE `django_rest_passwordreset_resetpasswordtoken` DISABLE KEYS */;
INSERT INTO `django_rest_passwordreset_resetpasswordtoken` VALUES ('2025-12-05 10:50:59.494034','494d242cb9d2fa2ee8fe060c63dbdd2b1','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 OPR/124.0.0.0',1,1);
/*!40000 ALTER TABLE `django_rest_passwordreset_resetpasswordtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bjvux2jrtsbkur78kyhg43oi719pvzfa','.eJxVjL0OAiEQhN-F2hAgsIilvc9AFnaRUwPJ_VQX311JrtBmivm-mV1E3NYat4XnOJG4CC1Ov13C_OQ2AD2w3bvMva3zlORQ5EEXeevEr-vh_h1UXOp3nZw1ZJV3nhPlZB0hc_F0Tp4ICjIEMEWpEQEgGI2AFFgDWG20Fu8PA-s4BQ:1vAmUR:su9fn58xl8voPP51-5cbMFCvRChqwRT2xqgKkpsf6tQ','2025-11-03 09:47:43.129835'),('czekiufcfsfcn4xlfaddt5823ntx0tce','.eJxVjL0OAiEQhN-F2hAgsIilvc9AFnaRUwPJ_VQX311JrtBmivm-mV1E3NYat4XnOJG4CC1Ov13C_OQ2AD2w3bvMva3zlORQ5EEXeevEr-vh_h1UXOp3nZw1ZJV3nhPlZB0hc_F0Tp4ICjIEMEWpEQEgGI2AFFgDWG20Fu8PA-s4BQ:1vFoxC:_yUal0GsghFE4utDkMwVO35hVU3ZEqSEWwIfM9wvooA','2025-11-17 07:26:14.876105'),('dc22v6laxc3wkt9bklalnqyllc85f36z','.eJxVjL0OAiEQhN-F2hAgsIilvc9AFnaRUwPJ_VQX311JrtBmivm-mV1E3NYat4XnOJG4CC1Ov13C_OQ2AD2w3bvMva3zlORQ5EEXeevEr-vh_h1UXOp3nZw1ZJV3nhPlZB0hc_F0Tp4ICjIEMEWpEQEgGI2AFFgDWG20Fu8PA-s4BQ:1vJoft:n0jH_ZZxNeuTL_PLWzTgqoYk9afTmMjIK8uUgrfsksk','2025-11-28 07:56:53.871434'),('g3w0s8yjug34i3vvnfypj3qa30i1hl39','.eJxVjEEOwiAQRe_C2hAGhwIu3XsGMjCjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpZHVSoA6_W6bykLYBvlO7TbpMbZnHrDdF77Try8TyPO_u30GlXr-1N-zKERDDYEMAj2hskGIDghPMxCAFJBNaseQ8EgcfYSjGxStbier9AbgqN0E:1vSZB6:xNbkMRuhFjKmfhKlOZFy5GvcEnEQett3NGUgVsRelec','2025-12-22 11:13:16.858061'),('uhdq5pczrmnkkoxpfqyd49jsgozjcvtl','.eJxVjEEOwiAQRe_C2hAGhwIu3XsGMjCjVA1NSrsy3l2bdKHb_977L5VoXWpau8xpZHVSoA6_W6bykLYBvlO7TbpMbZnHrDdF77Try8TyPO_u30GlXr-1N-zKERDDYEMAj2hskGIDghPMxCAFJBNaseQ8EgcfYSjGxStbier9AbgqN0E:1vfEKx:YNGv0bAKKTtpKmcfsG7Z95P2qc9xKMRm6Mf12L042rM','2026-01-26 09:35:47.202647'),('x276m0zou9dmvun602ijojvvqdu8i41o','.eJxVjL0OAiEQhN-F2hAgsIilvc9AFnaRUwPJ_VQX311JrtBmivm-mV1E3NYat4XnOJG4CC1Ov13C_OQ2AD2w3bvMva3zlORQ5EEXeevEr-vh_h1UXOp3nZw1ZJV3nhPlZB0hc_F0Tp4ICjIEMEWpEQEgGI2AFFgDWG20Fu8PA-s4BQ:1v5ffk:E83UzlHbf8f5S2WRtY8z_OHNyMqBtAnioxUHpVsLiGU','2025-10-20 07:30:16.224395');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(245) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `status` longtext NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `update_date` datetime(6) NOT NULL,
  `chain_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `city` varchar(245) NOT NULL,
  `zip_code` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_chain_id_ec95c772_fk_chains_chain_id` (`chain_id`),
  KEY `orders_order_user_id_e9b59eb1_fk_deliverapp_customuser_id` (`user_id`),
  CONSTRAINT `orders_order_chain_id_ec95c772_fk_chains_chain_id` FOREIGN KEY (`chain_id`) REFERENCES `chains_chain` (`id`),
  CONSTRAINT `orders_order_user_id_e9b59eb1_fk_deliverapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `deliverapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (3,'Therissou 20, Zefyri',35.00,'DRAFT','2025-12-01 11:46:05.495726','2026-01-21 06:55:03.948671',3,11,'Athens','13455'),(5,'Liarou 52',27.00,'DRAFT','2026-01-23 06:55:32.736560','2026-01-21 06:55:32.736576',3,11,'Athens','13465'),(6,'Ilisou 10',43.00,'DRAFT','2026-01-21 06:56:09.130402','2026-01-21 06:56:09.130436',3,11,'Athens','19887'),(7,'Pitakkou 20',55.00,'DRAFT','2026-01-22 08:48:32.262875','2026-01-21 08:48:32.262901',5,19,'Athens','55481'),(8,'Kifissias 10',10.00,'DRAFT','2026-01-21 08:49:00.248598','2026-01-21 08:49:00.248615',5,19,'Athens','87494'),(9,'Papadopoulou 31',34.00,'DRAFT','2026-01-22 08:51:33.893837','2026-01-21 08:51:33.893857',3,11,'Athens','42871');
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_deliverap` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_deliverap` FOREIGN KEY (`user_id`) REFERENCES `deliverapp_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDQyOTE4OCwiaWF0IjoxNzYwMzQyNzg4LCJqdGkiOiJiYzA2NTg3N2MzYjg0YTc0OWNjZDYxNmZlZjgwODZkOSIsInVzZXJfaWQiOiIxIn0.92ZzAH4IW-hS0VnvgmkVttHaVEfJy0Gyhcp-NkeJwtA','2025-10-13 08:06:28.552826','2025-10-14 08:06:28.000000',1,'bc065877c3b84a749ccd616fef8086d9'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDQzNzA5MiwiaWF0IjoxNzYwMzUwNjkyLCJqdGkiOiJmMmE1ZmM4NWEyNWI0NTA5OTcwYzQzYzg3YTdmYzk5YiIsInVzZXJfaWQiOiIxIn0.x9_CjSLRKpw_zIq489MEwjVM5wbDrj3cJSXyVjec60s','2025-10-13 10:18:12.873782','2025-10-14 10:18:12.000000',1,'f2a5fc85a25b4509970c43c87a7fc99b'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDU5MjI1MSwiaWF0IjoxNzYwNTA1ODUxLCJqdGkiOiJkNWJiODY4Y2ZhMDc0OTdkOTU3Yzc0ZDhiZDFkZDM4OCIsInVzZXJfaWQiOiIxIn0.t5RlKY9mIS482MLc9aFrGHF6ZpWdOzAyGhgegeLM2uQ','2025-10-15 05:24:11.164896','2025-10-16 05:24:11.000000',1,'d5bb868cfa07497d957c74d8bd1dd388'),(4,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDYwMDAzMCwiaWF0IjoxNzYwNTEzNjMwLCJqdGkiOiJhMDNiYTNiNzVkYTI0MTJkYjhhZTVlYmFlYmZiZTJjNSIsInVzZXJfaWQiOiIxIn0.pA1WU1MdQ55xekunhvflygjNnNrQLdaVXfVDj7pz_sw','2025-10-15 07:33:50.634775','2025-10-16 07:33:50.000000',1,'a03ba3b75da2412db8ae5ebaebfbe2c5'),(5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDYwODUyMCwiaWF0IjoxNzYwNTIyMTIwLCJqdGkiOiJlMmY3YmU0YWI3ZDg0Mzk2OTI3OTY2YzUxZTdhMGY5MSIsInVzZXJfaWQiOiIxIn0.iw2Sobn6ZDabWhGPweJxppd3FypwKDszJ7SeTIl-vDA','2025-10-15 09:55:20.529085','2025-10-16 09:55:20.000000',1,'e2f7be4ab7d84396927966c51e7a0f91'),(6,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY3NjcxNywiaWF0IjoxNzYwNTkwMzE3LCJqdGkiOiJkM2I2MDgxNjQyMDQ0ZWUwYTE0ZDkwM2Y0NGViOTU0YSIsInVzZXJfaWQiOiIxIn0.2wQkscn3f4BCgUaw6X9NPT8NQefQsiZTGkxof2Pv_xg','2025-10-16 04:51:57.004119','2025-10-17 04:51:57.000000',1,'d3b6081642044ee0a14d903f44eb954a'),(7,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4NzM0OSwiaWF0IjoxNzYwNjAwOTQ5LCJqdGkiOiIxZTdkZmJkYzI1M2Y0ZmUwOWU4ZTM1NTNkMDcyOTgwZiIsInVzZXJfaWQiOiIxIn0.cnoGZfU5PcLR5PriHjOq3-Oik0c8ArPMtBZ_DRhv5hY','2025-10-16 07:49:09.450825','2025-10-17 07:49:09.000000',1,'1e7dfbdc253f4fe09e8e3553d072980f'),(8,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODM4NCwiaWF0IjoxNzYwNjAxOTg0LCJqdGkiOiJmNDIxZTJiZjQ2MmM0N2QxYTNkNzI5OTJkNmU3YThhNyIsInVzZXJfaWQiOiIxIn0.ESFXuNjW1vRnulZCzSQ54EGotpPXnbkP7VQ5HDIHMUQ','2025-10-16 08:06:24.509171','2025-10-17 08:06:24.000000',1,'f421e2bf462c47d1a3d72992d6e7a8a7'),(9,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODU1MywiaWF0IjoxNzYwNjAyMTUzLCJqdGkiOiI3OTAwNGI5NzkxNmY0ZTYzODRiYTM3YTgzMDRhMjI4ZSIsInVzZXJfaWQiOiIxIn0.5AUpVUJUpUbNrARvxZY_cSO8LujCSlx2kWw-Iyo6XWs','2025-10-16 08:09:13.289080','2025-10-17 08:09:13.000000',1,'79004b97916f4e6384ba37a8304a228e'),(10,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODU5OCwiaWF0IjoxNzYwNjAyMTk4LCJqdGkiOiI4YTMzMzM2YmY2MTA0MDE1OWFhMjcwMzdjZTZjOWVhMyIsInVzZXJfaWQiOiIxIn0.5DKN6uXphbdErZ6_-YbCpPJCL1lRbVpxH3SikjrGRho','2025-10-16 08:09:58.315585','2025-10-17 08:09:58.000000',1,'8a33336bf61040159aa27037ce6c9ea3'),(11,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODY5OSwiaWF0IjoxNzYwNjAyMjk5LCJqdGkiOiJiODFkNTczZmQ5MmI0NTZmYWNkYTRkNGFmNjI4YWQ0NCIsInVzZXJfaWQiOiIxIn0.0-TjzW0w98FoEJ1ynZBD-YGHEaFQDY-ubZmmqdU9oYI','2025-10-16 08:11:39.391797','2025-10-17 08:11:39.000000',1,'b81d573fd92b456facda4d4af628ad44'),(12,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODc1NSwiaWF0IjoxNzYwNjAyMzU1LCJqdGkiOiI5NjFlNTZlZjgxMmU0NTY0ODBlM2I1Yzk0YjA1YjY2MSIsInVzZXJfaWQiOiIxIn0.0-EG6FKaSUPM5mFFZkC1JgT-JN9nno8ufnmcyT24lk8','2025-10-16 08:12:35.274370','2025-10-17 08:12:35.000000',1,'961e56ef812e456480e3b5c94b05b661'),(13,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODgyNSwiaWF0IjoxNzYwNjAyNDI1LCJqdGkiOiI1Y2JlMmY2NmEzMWU0MzUxYTA5NDlkNjA2YzAyYmI3NiIsInVzZXJfaWQiOiIxIn0.pl3zIVMeuttqpr9r3OHCMzYE4lvxKjy1hR_Z2DnAUJs','2025-10-16 08:13:45.637913','2025-10-17 08:13:45.000000',1,'5cbe2f66a31e4351a0949d606c02bb76'),(14,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4ODk0OSwiaWF0IjoxNzYwNjAyNTQ5LCJqdGkiOiIwNmNlMzkyNmU5MTc0Mzc1OWI2OTE1NmUzMzY5ZjczZiIsInVzZXJfaWQiOiIxIn0.-NlK9JHEohkeU_AHs0oMLap6Ocst1gAkT-KmsTeSBKg','2025-10-16 08:15:49.663976','2025-10-17 08:15:49.000000',1,'06ce3926e91743759b69156e3369f73f'),(15,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4OTQ5MywiaWF0IjoxNzYwNjAzMDkzLCJqdGkiOiJlNmNiYmU4MGE3YmU0ZDBkODMxMzBhYTUxNzFhMTA4MCIsInVzZXJfaWQiOiIxIn0.2ATWh3dCZLtGxxPoeGDFt3Zf0mnBRY1xqQ-8ynn52h8','2025-10-16 08:24:53.181462','2025-10-17 08:24:53.000000',1,'e6cbbe80a7be4d0d83130aa5171a1080'),(16,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MDY4OTY0NCwiaWF0IjoxNzYwNjAzMjQ0LCJqdGkiOiIzYWM2YTA5NDMyOWY0NTZjOGUyYzFkYTI3MTRjNTEyNiIsInVzZXJfaWQiOiIxIn0.54qWJODQG9pT-LxVKHgP6mbwQMM-WgxYkv3kM4P8Cwk','2025-10-16 08:27:24.080311','2025-10-17 08:27:24.000000',1,'3ac6a094329f456c8e2c1da2714c5126'),(17,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MzUyODc2MCwiaWF0IjoxNzYwOTM2NzYwLCJqdGkiOiJmYjA2ZWE0ZmJlYzk0ZDgzODhiMDExZTNjYzc2OWRiMCIsInVzZXJfaWQiOiIxIn0.9uisMWg7lGkYDd3GfVoWB7AXVwjT8jkGpO14EpEBsHw','2025-10-20 05:06:00.309341','2025-11-19 05:06:00.000000',1,'fb06ea4fbec94d8388b011e3cc769db0'),(18,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2MzU0NTcwOCwiaWF0IjoxNzYwOTUzNzA4LCJqdGkiOiI3YzNhODkyOWQwZDM0MTBhYWJjMWFjMzA1MWQ5ODBkOSIsInVzZXJfaWQiOiIyIn0.mfJE3NK2FDofVENxmKDBvW6xxZv7c4pDcvaPx4Afuvs','2025-10-20 09:48:28.178466','2025-11-19 09:48:28.000000',2,'7c3a8929d0d3410aabc1ac3051d980d9'),(19,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTUyODczMCwiaWF0IjoxNzYyOTM2NzMwLCJqdGkiOiJmMDI5OTc5MTU2YWE0NDgxYWE4ODgzNzcwNjlmZmY2YyIsInVzZXJfaWQiOiIxIn0.y9b1VFNb3X_uEEo44Td__8BFBXiX5AgKbJJ-zmKtcu0','2025-11-12 08:38:50.298782','2025-12-12 08:38:50.000000',1,'f029979156aa4481aa888377069fff6c'),(20,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTUyODc4MCwiaWF0IjoxNzYyOTM2NzgwLCJqdGkiOiJmMjQyNWIyYjVlMTM0Y2QzYTFmZjM0OThiOTFkN2FiYiIsInVzZXJfaWQiOiIxIn0.JYernPMiLhCsU7seuo6YBZ9A9ssrG7MqDVCpIl0Cejw','2025-11-12 08:39:40.987482','2025-12-12 08:39:40.000000',1,'f2425b2b5e134cd3a1ff3498b91d7abb'),(21,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTUyOTM5NywiaWF0IjoxNzYyOTM3Mzk3LCJqdGkiOiJiYTQ4NjMwM2VmMTU0ZjQ4YTZhYTBkOTY4ODMxZTMzMSIsInVzZXJfaWQiOiIxIn0.ztth8WpNPw4X_u5alWfjhLpApMchDPIM8ORkvClZTeE','2025-11-12 08:49:57.265920','2025-12-12 08:49:57.000000',1,'ba486303ef154f48a6aa0d968831e331'),(22,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTUzNTk4NiwiaWF0IjoxNzYyOTQzOTg2LCJqdGkiOiIxN2E0YWJiZWI1ZGY0ODRiYWY0ODA5YWQ3MGQyNzk4MSIsInVzZXJfaWQiOiIxIn0.QhICmMFdy_A9VEZgAVhafkbgVbMlRkltKRSsc3IXGXA','2025-11-12 10:39:46.937736','2025-12-12 10:39:46.000000',1,'17a4abbeb5df484baf4809ad70d27981'),(23,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTU0MTQzMCwiaWF0IjoxNzYyOTQ5NDMwLCJqdGkiOiJjOGU3MjIwZDk4MjA0Njk5YTlhYTRmYjViMmQyMWQ5NyIsInVzZXJfaWQiOiIxIn0.3b_Zb5DgW7sJhuYOaEsSPS4a3WLYyGqJCTql4wiEhXo','2025-11-12 12:10:30.999616','2025-12-12 12:10:30.000000',1,'c8e7220d98204699a9aa4fb5b2d21d97'),(24,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTU0MTQ3MCwiaWF0IjoxNzYyOTQ5NDcwLCJqdGkiOiIxOGE3YTgwMTQxYzA0OTQ5YmM4Y2M3NTJlMDFhZTg5ZCIsInVzZXJfaWQiOiIxIn0.r3l2YoTu9pdKLT0DKhY1BWsyYqe9IfG2s-HMxmk0pTk','2025-11-12 12:11:10.499278','2025-12-12 12:11:10.000000',1,'18a7a80141c04949bc8cc752e01ae89d'),(25,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTU0MjQ0MCwiaWF0IjoxNzYyOTUwNDQwLCJqdGkiOiIwNjcxNDM1Mzk3MWQ0YzAzYmJiZGYzOGRkYjBhNTQ0NCIsInVzZXJfaWQiOiIxIn0.intcKjlQWsU_fxLvs0MeOL4khWPKaaRe9SPJKBPI8gw','2025-11-12 12:27:20.512549','2025-12-12 12:27:20.000000',1,'06714353971d4c03bbbdf38ddb0a5444'),(26,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTYyMjMzNywiaWF0IjoxNzYzMDMwMzM3LCJqdGkiOiIxMDc4MjU4MTkxOTI0YjQ5OGVjNmNjOTFjYmM5Zjg1MyIsInVzZXJfaWQiOiIxIn0.DitlY0XoUGxoIUtuajH014p_ILvGcnazLcVHpqg6B10','2025-11-13 10:38:57.831176','2025-12-13 10:38:57.000000',1,'1078258191924b498ec6cc91cbc9f853'),(27,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTYyMjM0NCwiaWF0IjoxNzYzMDMwMzQ0LCJqdGkiOiJhYjg1Mzc2ODBiNzU0NDQ3YWY5NGE4OTA5MDNmNzhhNCIsInVzZXJfaWQiOiIxIn0.0iralJnkADhyHDVU_qWSjyOWyBIf-UyrnQFQWaOGEHE','2025-11-13 10:39:04.524440','2025-12-13 10:39:04.000000',1,'ab8537680b754447af94a890903f78a4'),(28,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTYyMjM0NSwiaWF0IjoxNzYzMDMwMzQ1LCJqdGkiOiIwMWZkNTIwNjUxOGI0YmJhOWJlMjkzZWRjNzViZjIzMSIsInVzZXJfaWQiOiIxIn0.PBaqqFkVEXvMVbmWYw04caRu02D048FQYQGooVArS3A','2025-11-13 10:39:05.179388','2025-12-13 10:39:05.000000',1,'01fd5206518b4bba9be293edc75bf231'),(29,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTYyMjM2NSwiaWF0IjoxNzYzMDMwMzY1LCJqdGkiOiI0MzgxYTEwN2FlZWM0NzAxOGQ0YmZiZjViNjhiOGI4OCIsInVzZXJfaWQiOiIxIn0.jZd50L611GYbrqfMISS9AkiOy47BJrEoNun8pRC6KXY','2025-11-13 10:39:25.710825','2025-12-13 10:39:25.000000',1,'4381a107aeec47018d4bfbf5b68b8b88'),(30,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTYyOTU2NiwiaWF0IjoxNzYzMDM3NTY2LCJqdGkiOiIzYTgzOTI1ZWRmOTk0MzZkYTNlNjhhYTRiY2UzZWVlNyIsInVzZXJfaWQiOiIxIn0.J4b2bwdt8iJjkvka1lyN4od8lo6Wo3vJuTQh_Lex7qo','2025-11-13 12:39:26.506584','2025-12-13 12:39:26.000000',1,'3a83925edf99436da3e68aa4bce3eee7'),(31,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTYzMDMwNywiaWF0IjoxNzYzMDM4MzA3LCJqdGkiOiJjNjIyNzQ4MzIzOWM0NTJlYmIyZjAzNzk0MzdiODA3MyIsInVzZXJfaWQiOiIxIn0.NML1ilzWayZT0aYCGPQ4f54PDXV_7KhWcqJwSKGT0dM','2025-11-13 12:51:47.522302','2025-12-13 12:51:47.000000',1,'c6227483239c452ebb2f0379437b8073'),(32,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NTY5NDYyNSwiaWF0IjoxNzYzMTAyNjI1LCJqdGkiOiJiZGE4Zjk1NWEwODQ0NTk3YWM3NjY3YmQ2NzdiZTUwZiIsInVzZXJfaWQiOiIxIn0.uBsEk_-SNGlKICRwIaq3cFKlQpy7AVT8yzFmo8BlIT4','2025-11-14 06:43:45.401731','2025-12-14 06:43:45.000000',1,'bda8f955a0844597ac7667bd677be50f'),(33,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE2OTE5OSwiaWF0IjoxNzY0NTc3MTk5LCJqdGkiOiJiZTYwYjA3ZjYwOTY0ZTIxOTA3ZWQ4NWUzOWNmNmFhNyIsInVzZXJfaWQiOiIxIn0.Kn4-N8B5FXPUH03shHfTzLpef02ONdhU859XEbiaKiY','2025-12-01 08:19:59.447982','2025-12-31 08:19:59.000000',1,'be60b07f60964e21907ed85e39cf6aa7'),(34,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE3MDQ4NCwiaWF0IjoxNzY0NTc4NDg0LCJqdGkiOiI2MjJmMmRiY2VmNTE0YTJlOTQwODNjODgxMTU1ZGM2ZCIsInVzZXJfaWQiOiIyIn0.KlNrY5FhIqLkGxOgabEE7ETa1hoaiXs3PtmO1TABD2g','2025-12-01 08:41:24.549054','2025-12-31 08:41:24.000000',2,'622f2dbcef514a2e94083c881155dc6d'),(35,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE4MTA2MywiaWF0IjoxNzY0NTg5MDYzLCJqdGkiOiI1MDM2OWFhYmI5ZTY0OWEwYjQ2M2NjMTUyMmE3YjI2OCIsInVzZXJfaWQiOiIxIn0.mO_eoC1tyjRr5yBE5VfjJsW6km0AFvNQ19vvY2erWjs','2025-12-01 11:37:43.152297','2025-12-31 11:37:43.000000',1,'50369aabb9e649a0b463cc1522a7b268'),(36,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE4MTEzOSwiaWF0IjoxNzY0NTg5MTM5LCJqdGkiOiJkYzliOGUzMGJjMzE0MDA1ODI0NGY0NWYwMGM4Zjc4MyIsInVzZXJfaWQiOiIyIn0.lXeV_1N1iJF8jEY6p0YcnoShbaMz5CJ6WLwS62X4YC8','2025-12-01 11:38:59.549943','2025-12-31 11:38:59.000000',2,'dc9b8e30bc3140058244f45f00c8f783'),(37,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE4MjY0MiwiaWF0IjoxNzY0NTkwNjQyLCJqdGkiOiJjMGNhMDI4NjcyMGQ0MDNmYTcwYzQwZGJmMDEzODk3OSIsInVzZXJfaWQiOiIxIn0.z1ud1TRyenLFMBjB0iytvnRnoMkcLFGPCs39J_d3GcA','2025-12-01 12:04:02.479632','2025-12-31 12:04:02.000000',1,'c0ca0286720d403fa70c40dbf0138979'),(38,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE4NTkxNywiaWF0IjoxNzY0NTkzOTE3LCJqdGkiOiI5NDVlMjdiODdkMzQ0NDU0Yjg3NmU3MDhiM2U5ZjFhOSIsInVzZXJfaWQiOiIyIn0.QWYRtxi2j_ZT2PvUtk2pccxraXJWt6-FsSUYx8u2m1s','2025-12-01 12:58:37.426356','2025-12-31 12:58:37.000000',2,'945e27b87d344454b876e708b3e9f1a9'),(39,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzE4NTkzMCwiaWF0IjoxNzY0NTkzOTMwLCJqdGkiOiI5YmIzMjRiNmViMDU0ZWIyYTk4ZjRiYTJmMDRkMDUyOCIsInVzZXJfaWQiOiIxIn0.yAtNLd8nhSg6uCAGyCgelLTc1iQ3-BP9E8VcsMOJTLo','2025-12-01 12:58:50.599510','2025-12-31 12:58:50.000000',1,'9bb324b6eb054eb2a98f4ba2f04d0528'),(40,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzI2NTA1MywiaWF0IjoxNzY0NjczMDUzLCJqdGkiOiI2NjIwOTAzZDgyM2E0OGQxOTlhYzQ5Yzk5OTU5NjNlMCIsInVzZXJfaWQiOiIyIn0.4qUryRRGoe_WGQwB44hSALGBMXXwtmdZgTybkSUCb6Y','2025-12-02 10:57:33.201099','2026-01-01 10:57:33.000000',2,'6620903d823a48d199ac49c9995963e0'),(41,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzI2NTA2MiwiaWF0IjoxNzY0NjczMDYyLCJqdGkiOiI1MzFkMzFlNjQ2MTI0ODQxYmRhMGUxZjJmOGU3NzZkYiIsInVzZXJfaWQiOiIxIn0.nUxCXZy0eoFxdb9ddUv2O-hYK9KtzMLDa5f6CG3Csqo','2025-12-02 10:57:42.813692','2026-01-01 10:57:42.000000',1,'531d31e646124841bda0e1f2f8e776db'),(42,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzI3MTAxNCwiaWF0IjoxNzY0Njc5MDE0LCJqdGkiOiJiZmYyMTI0YTg1ZDY0MmU5OWRhYjljMGVhYTIyNzRlMSIsInVzZXJfaWQiOiIxIn0.zl7pwKKPXHJGQ30JdJAOZdtcVaBIlGchcZbkX_WuhtM','2025-12-02 12:36:54.011113','2026-01-01 12:36:54.000000',1,'bff2124a85d642e99dab9c0eaa2274e1'),(43,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzQzMTI0OSwiaWF0IjoxNzY0ODM5MjQ5LCJqdGkiOiIwMmJhMTQ4M2VjZGY0ZGNjOGE3ZWE3ZjE2ZjczMmEyNSIsInVzZXJfaWQiOiIyIn0.QLNnjOE_WLBOXKfnyIPEySGFHIrVwUs2gvHl0wfEl9Y','2025-12-04 09:07:29.573558','2026-01-03 09:07:29.000000',2,'02ba1483ecdf4dcc8a7ea7f16f732a25'),(44,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzUwODkzMSwiaWF0IjoxNzY0OTE2OTMxLCJqdGkiOiI5ZDE5Mzg2MjA0Mjg0ZjhkOGEzYzkxNDJiYmNjYWNhMiIsInVzZXJfaWQiOiIyIn0.TurvT6hVLkJezoPUhidDbrmTrL_Z3M14Gmow_zftLa0','2025-12-05 06:42:11.941815','2026-01-04 06:42:11.000000',2,'9d19386204284f8d8a3c9142bbccaca2'),(45,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzUxMzQzMSwiaWF0IjoxNzY0OTIxNDMxLCJqdGkiOiJmNzBkMjg4MGQzNGM0OTM1YTU2ZTU3OGRiNjRhNTE3NSIsInVzZXJfaWQiOiIzIn0.Dm527MTOTghc3ckDnKaFl1JBbDUJCdLh-pGsQUgaUFM','2025-12-05 07:57:11.203662','2026-01-04 07:57:11.000000',3,'f70d2880d34c4935a56e578db64a5175'),(46,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzUxMzUwMiwiaWF0IjoxNzY0OTIxNTAyLCJqdGkiOiI0MzVlMTE0MjY3MGQ0ODQyOWI2YTdkZTVkYWIxZjJlZCIsInVzZXJfaWQiOiIyIn0.7Bq-oh7MVARlQGJHmOete3ZTgYaY2QLsYaM4--LkEFw','2025-12-05 07:58:22.913710','2026-01-04 07:58:22.000000',2,'435e1142670d48429b6a7de5dab1f2ed'),(47,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzUzMDg0NiwiaWF0IjoxNzY0OTM4ODQ2LCJqdGkiOiIxZDA2ZjIxNzk3ZDA0MWFlYTc0MWNjNmRjZjQzMjNlMiIsInVzZXJfaWQiOiIxIn0.7Lq0P2EIB4Lkkzp2zOyFV-hF8PQP_QNF4QMbAVVJGpw','2025-12-05 12:47:26.806104','2026-01-04 12:47:26.000000',1,'1d06f21797d041aea741cc6dcf4323e2'),(48,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2NzUzMTA2NCwiaWF0IjoxNzY0OTM5MDY0LCJqdGkiOiJkODFmNGVhOTcwM2M0ODQ5YWJmYTkyZTUxMDBlY2I1ZiIsInVzZXJfaWQiOiIxIn0.j9e8WXNWr8ubT2EEEa7nmGGOuTuokaa4c4Z9zAasO6c','2025-12-05 12:51:04.240406','2026-01-04 12:51:04.000000',1,'d81f4ea9703c4849abfa92e5100ecb5f'),(49,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2Nzg3MzA3MiwiaWF0IjoxNzY1MjgxMDcyLCJqdGkiOiJkYmMzM2QwOWJlNDk0OTI1YWZiN2JjY2MzMmQxN2E3NSIsInVzZXJfaWQiOiIxMSJ9.i_aWgXSeYbYwdwYvTkgXLYwVtNsflqb8o2rQjLiPot8','2025-12-09 11:51:12.229031','2026-01-08 11:51:12.000000',11,'dbc33d09be494925afb7bccc32d17a75'),(50,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2Nzg3MzYyNSwiaWF0IjoxNzY1MjgxNjI1LCJqdGkiOiJjZjg3NTQ3ZWZjMzY0ZDUzYjYwZjk1ZWU5NTgzMTc4OSIsInVzZXJfaWQiOiIyIn0.5e1cY5_zLykEmXPGLnYj0_Gl5PfYnnHfOdOnr4jcbsM','2025-12-09 12:00:25.472033','2026-01-08 12:00:25.000000',2,'cf87547efc364d53b60f95ee95831789'),(51,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc2ODA0NTgwNywiaWF0IjoxNzY1NDUzODA3LCJqdGkiOiI1MDM5N2I3NjEyMzA0NTVjYTBjOTRiNzVmZDk3ODlmYSIsInVzZXJfaWQiOiIxMSJ9.UoTgqtP_H-ytq-SYeWi4wCD6JIirnMfDMZkoA24GqlM','2025-12-11 11:50:07.736410','2026-01-10 11:50:07.000000',11,'50397b761230455ca0c94b75fd9789fa'),(52,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MDQ2NjY0NiwiaWF0IjoxNzY3ODc0NjQ2LCJqdGkiOiI1NWEwOTZjNmYwM2E0NWU5OGFhZjkwODM5NGJhYzJmMyIsInVzZXJfaWQiOiIxIn0.lPhRwEEo30JBFD20XFQEoYfFwyXAoTQVUO4QrNWiiH8','2026-01-08 12:17:26.167011','2026-02-07 12:17:26.000000',1,'55a096c6f03a45e98aaf908394bac2f3'),(53,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MDQ2NjY5MCwiaWF0IjoxNzY3ODc0NjkwLCJqdGkiOiI1MzQ1YTU4Yjg4YzM0NGI5ODljZjY0ZWJkYzA4OTkzZiIsInVzZXJfaWQiOiIyIn0.JBIPapAzm0L6RBZIGE8J1T4oYXvO93LF-6JtY77Mv_c','2026-01-08 12:18:10.642904','2026-02-07 12:18:10.000000',2,'5345a58b88c344b989cf64ebdc08993f'),(54,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MDUzMTYyNywiaWF0IjoxNzY3OTM5NjI3LCJqdGkiOiIxYzRmOTc4YmVmZTQ0NmM2OGE4MzY4MmYzNmM1OGM3YyIsInVzZXJfaWQiOiIyIn0.Uc1g1Gd_0gqZtLPomV7FU8MJ_l2zBEt5pRihFGoM12Q','2026-01-09 06:20:27.883536','2026-02-08 06:20:27.000000',2,'1c4f978befe446c68a83682f36c58c7c'),(55,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MDgwMjQ5MywiaWF0IjoxNzY4MjEwNDkzLCJqdGkiOiI1Y2QyZGJlODUwMjQ0MjdmODFmMzMxY2EyZmVlOTNkNyIsInVzZXJfaWQiOiIyIn0.8ejjj3Gcu-eqW8zmY6j1SJ7MzPknfZErtbY4Js84sgk','2026-01-12 09:34:53.522991','2026-02-11 09:34:53.000000',2,'5cd2dbe85024427f81f331ca2fee93d7'),(56,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MDgwMzE5NCwiaWF0IjoxNzY4MjExMTk0LCJqdGkiOiI2OTZmZTczNTYzNzI0ZGI1YmNmYzdjMjAyMDExOGM4NCIsInVzZXJfaWQiOiIxIn0.thLvB7IG-Zpt9aIDRxzBqc0E4V49RqjhOT3vRYJC7tU','2026-01-12 09:46:34.924410','2026-02-11 09:46:34.000000',1,'696fe73563724db5bcfc7c2020118c84'),(57,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MDgwNjU1NSwiaWF0IjoxNzY4MjE0NTU1LCJqdGkiOiI1ODk3MmY3NGQwOTA0NDQzODNhZjUyMTU2OTk5NjA1OCIsInVzZXJfaWQiOiIxMyJ9.6i-L_HosaDh9v73qzxeBHbspyBd9-DSnjjqMyBoCkUo','2026-01-12 10:42:35.227964','2026-02-11 10:42:35.000000',13,'58972f74d090444383af521569996058'),(58,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTE1NDM0MywiaWF0IjoxNzY4NTYyMzQzLCJqdGkiOiJiYmJjMTY2MDFjODI0MWZkYTVjYjk3ZTBlMzRmNGU5OCIsInVzZXJfaWQiOiIyIn0.qq4GX3JDxh6aXeX3mfKJdWguGOl9DfFziog-Linn4l4','2026-01-16 11:19:03.839824','2026-02-15 11:19:03.000000',2,'bbbc16601c8241fda5cb97e0e34f4e98'),(59,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTE1NzUxMywiaWF0IjoxNzY4NTY1NTEzLCJqdGkiOiIwMzQ1YWE1MmIxN2Y0MTYwYmNiODg2YTljMDFjZjRmZSIsInVzZXJfaWQiOiIyIn0.sPtJ1zhrk2X5u_Cs53FBv-gDrfUUGk3fwLSC-a4Sf14','2026-01-16 12:11:53.702046','2026-02-15 12:11:53.000000',2,'0345aa52b17f4160bcb886a9c01cf4fe'),(60,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTE1NzU1OCwiaWF0IjoxNzY4NTY1NTU4LCJqdGkiOiI2NGE4OGNkOWU4YTQ0MGFkOTA4ZTQwZWJhNjJlZjI2YyIsInVzZXJfaWQiOiIyIn0.uqxdFKzEuf7hspDO_0bmtZFBiRHT8fZ6GBsAefuCWSM','2026-01-16 12:12:38.645194','2026-02-15 12:12:38.000000',2,'64a88cd9e8a440ad908e40eba62ef26c'),(61,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQwOTU0MywiaWF0IjoxNzY4ODE3NTQzLCJqdGkiOiIxYTg3MzEyMTJlOWI0MjM4YjE2YjVjMTAyMGYyMWIxMCIsInVzZXJfaWQiOiIxIn0.TULoB4MmrPe2ER8OPgP-TLzpSjfmEVQ6n7G9tRJQg_U','2026-01-19 10:12:23.377391','2026-02-18 10:12:23.000000',1,'1a8731212e9b4238b16b5c1020f21b10'),(62,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQwOTYyMiwiaWF0IjoxNzY4ODE3NjIyLCJqdGkiOiJmNDNlYTYyNTYyZDI0M2NkYWQ2NWZmY2VkMzIxYTk0YSIsInVzZXJfaWQiOiIyIn0.kY6PQ4oRMGonXoq0AWsGMRJezMSD_33twmvA182qG98','2026-01-19 10:13:42.338872','2026-02-18 10:13:42.000000',2,'f43ea62562d243cdad65ffced321a94a'),(63,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQxMDYwOCwiaWF0IjoxNzY4ODE4NjA4LCJqdGkiOiIzMDFkNTVlYmYzYzk0M2UzOGU3NWYyYjViMDM2ZGQ2MiIsInVzZXJfaWQiOiIxIn0.UINwIH515lin4FkW4qfpGTpOVVtOkfPq_4bc5Zd0UlE','2026-01-19 10:30:08.088919','2026-02-18 10:30:08.000000',1,'301d55ebf3c943e38e75f2b5b036dd62'),(64,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQxMzU2NywiaWF0IjoxNzY4ODIxNTY3LCJqdGkiOiJkY2JhYmIzYmFkMDQ0M2I0YjE1YWZjN2JkNDg5ZWVhNSIsInVzZXJfaWQiOiIxOCJ9.yk9A3aPcP6Li9Fp3-FTrMQITRcA43YdPkh7CbkxjPSs','2026-01-19 11:19:27.205651','2026-02-18 11:19:27.000000',18,'dcbabb3bad0443b4b15afc7bd489eea5'),(65,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQxNDc2MiwiaWF0IjoxNzY4ODIyNzYyLCJqdGkiOiJkYzQ2NWQ2ZjBjMGQ0NTdmYmVmMTdlZGNiM2U5MDBjOSIsInVzZXJfaWQiOiIzIn0.u4JGyoQI7DxQk-DZPBkbUJ2s9MNEUlHx2N0iHrCpOQQ','2026-01-19 11:39:22.772899','2026-02-18 11:39:22.000000',3,'dc465d6f0c0d457fbef17edcb3e900c9'),(66,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQxNTgzOCwiaWF0IjoxNzY4ODIzODM4LCJqdGkiOiI4ZTUwZmYzOTdiZGQ0MDM2YTM1NmZhMzI2ZDc4NjkwMCIsInVzZXJfaWQiOiIzIn0._5hpbbFzI_1sfHa34FogHjw_gvBY8ZzD-9OJoCAonoY','2026-01-19 11:57:18.559472','2026-02-18 11:57:18.000000',3,'8e50ff397bdd4036a356fa326d786900'),(67,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQxNjM2OCwiaWF0IjoxNzY4ODI0MzY4LCJqdGkiOiJjMjMxZDhjYzA1ZmQ0ZjU4OTNlZDI0NWU1MTUzMWY4MiIsInVzZXJfaWQiOiIyIn0.W30qktPTSB6lvM_9Lwr_hdY3IUJvlcaSc-dyQkRFVcQ','2026-01-19 12:06:08.167075','2026-02-18 12:06:08.000000',2,'c231d8cc05fd4f5893ed245e51531f82'),(68,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTQxNzU5OCwiaWF0IjoxNzY4ODI1NTk4LCJqdGkiOiI0YmY0MzZiZjc0MDM0NTAwYjE3YjJkNDQyZmJkMTIwYiIsInVzZXJfaWQiOiIxMyJ9.ebkOn3f3Or-d8N1H1M81rN4evNNBZv-csdcJLO4QM7o','2026-01-19 12:26:38.203949','2026-02-18 12:26:38.000000',13,'4bf436bf74034500b17b2d442fbd120b'),(69,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTU3OTA1MSwiaWF0IjoxNzY4OTg3MDUxLCJqdGkiOiI4N2ExNGVmODNjYmU0ZWMzOTNmOTA2OGUwNWUwNzM1NSIsInVzZXJfaWQiOiIxMSJ9.yNmhxu4ntTuEJpMlGm82au86uPhabHGDHtKVLlVUhrA','2026-01-21 09:17:31.724448','2026-02-20 09:17:31.000000',11,'87a14ef83cbe4ec393f9068e05e07355'),(70,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTU4Nzk5OSwiaWF0IjoxNzY4OTk1OTk5LCJqdGkiOiI4ZmVmOTE1YTkzZjU0YmQ2OGJmNjkxMDczNmNiMDNlNiIsInVzZXJfaWQiOiIxMSJ9.XszTkPXyaUor1rV74Qon7DPUT50hkHVkO9kGZh_YyOw','2026-01-21 11:46:39.594358','2026-02-20 11:46:39.000000',11,'8fef915a93f54bd68bf6910736cb03e6'),(71,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc3MTU4ODAyMSwiaWF0IjoxNzY4OTk2MDIxLCJqdGkiOiI5Y2I2NWYxZWVkM2Y0ZmYxOWUzMmUzZjYyZDFhODA2ZSIsInVzZXJfaWQiOiIxMSJ9.ruzGIFHqZKsosh4WbaReFt0ydFTgvxXlRRok3XD7i8U','2026-01-21 11:47:01.842245','2026-02-20 11:47:01.000000',11,'9cb65f1eed3f4ff19e32e3f62d1a806e');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-21 14:53:16
