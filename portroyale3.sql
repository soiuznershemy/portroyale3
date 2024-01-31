CREATE DATABASE  IF NOT EXISTS `portroyale3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portroyale3`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: portroyale3
-- ------------------------------------------------------
-- Server version	8.0.30

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add city',1,'add_city'),(2,'Can change city',1,'change_city'),(3,'Can delete city',1,'delete_city'),(4,'Can view city',1,'view_city'),(5,'Can add good',2,'add_good'),(6,'Can change good',2,'change_good'),(7,'Can delete good',2,'delete_good'),(8,'Can view good',2,'view_good'),(9,'Can add products_in_ city',3,'add_products_in_city'),(10,'Can change products_in_ city',3,'change_products_in_city'),(11,'Can delete products_in_ city',3,'delete_products_in_city'),(12,'Can view products_in_ city',3,'view_products_in_city'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add factory',10,'add_factory'),(38,'Can change factory',10,'change_factory'),(39,'Can delete factory',10,'delete_factory'),(40,'Can view factory',10,'view_factory'),(41,'Can add production',11,'add_production'),(42,'Can change production',11,'change_production'),(43,'Can delete production',11,'delete_production'),(44,'Can view production',11,'view_production'),(45,'Can add ships',12,'add_ships'),(46,'Can change ships',12,'change_ships'),(47,'Can delete ships',12,'delete_ships'),(48,'Can view ships',12,'view_ships'),(49,'Can add building',13,'add_building'),(50,'Can change building',13,'change_building'),(51,'Can delete building',13,'delete_building'),(52,'Can view building',13,'view_building'),(53,'Can add ship',14,'add_ship'),(54,'Can change ship',14,'change_ship'),(55,'Can delete ship',14,'delete_ship'),(56,'Can view ship',14,'view_ship'),(57,'Can add full production',15,'add_fullproduction'),(58,'Can change full production',15,'change_fullproduction'),(59,'Can delete full production',15,'delete_fullproduction'),(60,'Can view full production',15,'view_fullproduction');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$600000$3EjPwk6QQRq9x2F5ZvD2fa$GbWZfFbd5++hpYyrJmgSYu0wGY1lECNT7+52V07vMPE=','2024-01-31 00:07:22.494821',1,'admin','','','avadakedavra@hogwarts.com',1,1,'2023-04-21 08:11:40.275725');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (210,'2023-04-21 09:07:03.246521','36','Metal Goods',2,'[]',2,3),(211,'2023-04-21 09:09:33.063677','20','Evangelista',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Evangelista\", \"fields\": [\"Factory amount\"]}}]',1,3),(212,'2023-04-21 09:09:53.863598','20','Evangelista',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Evangelista\", \"fields\": [\"Factory amount\"]}}]',1,3),(213,'2023-04-21 09:17:23.071718','25','Florida Keys',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Florida Keys\", \"fields\": [\"Tara\"]}}]',1,3),(214,'2023-04-21 09:21:36.211652','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Barbados\", \"fields\": [\"Factory amount\"]}}]',1,3),(215,'2023-04-21 09:22:06.461580','25','Florida Keys',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Florida Keys\", \"fields\": [\"Tara\"]}}]',1,3),(216,'2023-04-21 09:24:32.602329','25','Florida Keys',2,'[]',1,3),(217,'2023-04-21 09:26:18.238345','25','Florida Keys',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Florida Keys\", \"fields\": [\"Tara\"]}}]',1,3),(218,'2023-04-21 09:26:22.013861','25','Florida Keys',2,'[]',1,3),(219,'2023-04-21 09:42:55.077436','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Tara\"]}}]',1,3),(220,'2023-04-21 09:43:02.305742','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Factory amount\", \"Tara\"]}}]',1,3),(221,'2023-04-21 09:49:16.010949','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Factory amount\"]}}]',1,3),(222,'2024-01-20 12:17:37.655020','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Factory amount\"]}}]',1,3),(223,'2024-01-20 12:18:29.667206','28','Barbados',2,'[]',1,3),(224,'2024-01-22 13:32:20.807552','28','Barbados',3,'',1,3),(225,'2024-01-22 13:32:20.817547','19','Cancun',3,'',1,3),(226,'2024-01-22 13:32:20.820580','27','Cayman',3,'',1,3),(227,'2024-01-22 13:32:20.823705','20','Evangelista',3,'',1,3),(228,'2024-01-22 13:32:20.826859','25','Florida Keys',3,'',1,3),(229,'2024-01-22 13:32:20.829693','23','Havana',3,'',1,3),(230,'2024-01-22 13:32:20.832684','24','Nombre de Dios',3,'',1,3),(231,'2024-01-22 13:32:20.835345','22','Port Royale',3,'',1,3),(232,'2024-01-22 13:32:20.838342','26','Roatan',3,'',1,3),(233,'2024-01-22 13:32:20.840492','29','Sisal',3,'',1,3),(234,'2024-01-22 13:32:29.098467','31','Adobe Brick',3,'',2,3),(235,'2024-01-22 13:32:29.102928','38','Bread',3,'',2,3),(236,'2024-01-22 13:32:29.105925','41','Cacao',3,'',2,3),(237,'2024-01-22 13:32:29.109914','33','Clothing',3,'',2,3),(238,'2024-01-22 13:32:29.112786','27','Coffee',3,'',2,3),(239,'2024-01-22 13:32:29.116010','23','Corn',3,'',2,3),(240,'2024-01-22 13:32:29.119285','29','Cotton',3,'',2,3),(241,'2024-01-22 13:32:29.121925','35','Dye',3,'',2,3),(242,'2024-01-22 13:32:29.126643','42','Fruit',3,'',2,3),(243,'2024-01-22 13:32:29.129662','40','Hemp',3,'',2,3),(244,'2024-01-22 13:32:29.133303','24','Meat',3,'',2,3),(245,'2024-01-22 13:32:29.136655','36','Metal Goods',3,'',2,3),(246,'2024-01-22 13:32:29.140648','28','Raw Metal',3,'',2,3),(247,'2024-01-22 13:32:29.145773','26','Rope',3,'',2,3),(248,'2024-01-22 13:32:29.149931','30','Rum',3,'',2,3),(249,'2024-01-22 13:32:29.153888','39','Sugar',3,'',2,3),(250,'2024-01-22 13:32:29.155753','25','Textile',3,'',2,3),(251,'2024-01-22 13:32:29.158910','32','Tobacco',3,'',2,3),(252,'2024-01-22 13:32:29.161037','37','Wheat',3,'',2,3),(253,'2024-01-22 13:32:29.163280','34','Wood',3,'',2,3),(254,'2024-01-23 10:26:45.034656','43','Brick',1,'[{\"added\": {}}]',2,3),(255,'2024-01-23 10:27:14.461331','44','Woods',1,'[{\"added\": {}}]',2,3),(256,'2024-01-23 10:27:29.072164','45','Wheat',1,'[{\"added\": {}}]',2,3),(257,'2024-01-23 10:27:41.717265','46','Fruits',1,'[{\"added\": {}}]',2,3),(258,'2024-01-23 10:27:55.715350','47','Corn',1,'[{\"added\": {}}]',2,3),(259,'2024-01-23 10:39:12.584225','43','Brick',2,'[{\"changed\": {\"fields\": [\"Goods image\"]}}]',2,3),(260,'2024-01-23 10:40:41.787152','43','Brick',2,'[{\"changed\": {\"fields\": [\"Goods image\"]}}]',2,3),(261,'2024-01-23 10:44:12.009244','43','Brick',2,'[]',2,3),(262,'2024-01-23 10:44:17.238171','47','Corn',2,'[{\"changed\": {\"fields\": [\"Goods image\"]}}]',2,3),(263,'2024-01-23 10:44:22.167503','46','Fruits',2,'[{\"changed\": {\"fields\": [\"Goods image\"]}}]',2,3),(264,'2024-01-23 10:44:27.887379','45','Wheat',2,'[{\"changed\": {\"fields\": [\"Goods image\"]}}]',2,3),(265,'2024-01-23 10:44:33.671512','44','Woods',2,'[{\"changed\": {\"fields\": [\"Goods image\"]}}]',2,3),(266,'2024-01-23 10:44:47.121303','48','sugar',1,'[{\"added\": {}}]',2,3),(267,'2024-01-23 10:44:52.084816','48','Sugar',2,'[{\"changed\": {\"fields\": [\"Goods name\"]}}]',2,3),(268,'2024-01-23 10:45:16.089398','49','Hemp',1,'[{\"added\": {}}]',2,3),(269,'2024-01-23 10:45:20.904313','48','Sugar',2,'[{\"changed\": {\"fields\": [\"Goods price\"]}}]',2,3),(270,'2024-01-23 10:45:24.943235','49','Hemp',2,'[]',2,3),(271,'2024-01-23 10:45:28.859488','46','Fruits',2,'[]',2,3),(272,'2024-01-23 10:45:32.531245','47','Corn',2,'[]',2,3),(273,'2024-01-23 10:45:52.660202','50','Textiles',1,'[{\"added\": {}}]',2,3),(274,'2024-01-23 10:46:07.200156','51','Metal',1,'[{\"added\": {}}]',2,3),(275,'2024-01-23 10:46:18.378365','52','Cotton',1,'[{\"added\": {}}]',2,3),(276,'2024-01-23 10:46:41.799498','53','Metal Goods',1,'[{\"added\": {}}]',2,3),(277,'2024-01-23 10:46:51.516245','54','Dyes',1,'[{\"added\": {}}]',2,3),(278,'2024-01-23 10:47:02.600940','55','Coffee',1,'[{\"added\": {}}]',2,3),(279,'2024-01-23 10:47:17.907290','56','Cacao',1,'[{\"added\": {}}]',2,3),(280,'2024-01-23 10:47:30.795304','57','Tobacco',1,'[{\"added\": {}}]',2,3),(281,'2024-01-23 10:47:37.537513','58','Meat',1,'[{\"added\": {}}]',2,3),(282,'2024-01-23 10:47:52.554428','59','Clothing',1,'[{\"added\": {}}]',2,3),(283,'2024-01-23 10:48:06.941317','60','Rum',1,'[{\"added\": {}}]',2,3),(284,'2024-01-23 10:48:19.441353','61','Ropes',1,'[{\"added\": {}}]',2,3),(285,'2024-01-23 10:48:27.576358','62','Bread',1,'[{\"added\": {}}]',2,3),(286,'2024-01-23 13:28:18.212976','1','Cotton Farm',1,'[{\"added\": {}}]',10,3),(287,'2024-01-23 13:40:15.425237','1','Port Royale',1,'[{\"added\": {}}]',1,3),(288,'2024-01-23 13:40:22.848507','1','Port Royale',3,'',1,3),(289,'2024-01-23 14:13:02.876378','2','Port Royale',1,'[{\"added\": {}}, {\"added\": {\"name\": \"production\", \"object\": \"Production object (1)\"}}]',1,3),(290,'2024-01-23 15:47:45.126334','2','Baker',1,'[{\"added\": {}}]',10,3),(291,'2024-01-23 15:49:41.460428','2','Baker',2,'[]',10,3),(292,'2024-01-23 15:53:27.024217','1','Cotton Farm',2,'[]',10,3),(293,'2024-01-23 15:53:31.171351','2','Baker',2,'[]',10,3),(294,'2024-01-23 15:59:24.800296','2','Port Royale',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (2)\"}}]',1,3),(295,'2024-01-23 16:08:21.172212','3','Sawmill',1,'[{\"added\": {}}]',10,3),(296,'2024-01-23 16:08:51.072327','4','Adobe',1,'[{\"added\": {}}]',10,3),(297,'2024-01-23 16:10:00.292308','5','Weaving Mill',1,'[{\"added\": {}}]',10,3),(298,'2024-01-23 16:10:56.284391','4','Adobe',2,'[]',10,3),(299,'2024-01-23 16:11:50.560135','6','Foundry',1,'[{\"added\": {}}]',10,3),(300,'2024-01-23 16:13:55.740184','7','Blacksmith',1,'[{\"added\": {}}]',10,3),(301,'2024-01-23 16:14:59.793124','8','Tailor',1,'[{\"added\": {}}]',10,3),(302,'2024-01-23 16:15:10.310425','7','Blacksmith',2,'[]',10,3),(303,'2024-01-23 16:15:56.479347','9','Rope Maker',1,'[{\"added\": {}}]',10,3),(304,'2024-01-23 16:16:44.669275','10','Distillery',1,'[{\"added\": {}}]',10,3),(305,'2024-01-23 16:17:26.755300','11','Fruit Farm',1,'[{\"added\": {}}]',10,3),(306,'2024-01-23 16:18:03.964512','12','Corn Farm',1,'[{\"added\": {}}]',10,3),(307,'2024-01-23 16:18:38.223517','13','Sugarcane Farm',1,'[{\"added\": {}}]',10,3),(308,'2024-01-23 16:19:12.496316','14','Hemp Plantation',1,'[{\"added\": {}}]',10,3),(309,'2024-01-23 16:19:50.623246','15','Wheat Farm',1,'[{\"added\": {}}]',10,3),(310,'2024-01-23 16:20:21.076275','16','Dye Farm',1,'[{\"added\": {}}]',10,3),(311,'2024-01-23 16:21:07.834266','17','Coffee Plantation',1,'[{\"added\": {}}]',10,3),(312,'2024-01-23 16:22:00.556344','18','Cocoa Plantation',1,'[{\"added\": {}}]',10,3),(313,'2024-01-23 16:22:32.834120','19','Tobacco Plantation',1,'[{\"added\": {}}]',10,3),(314,'2024-01-23 16:23:05.889280','20','Stockyard',1,'[{\"added\": {}}]',10,3),(315,'2024-01-23 23:32:44.796421','48','Sugar',2,'[]',2,3),(316,'2024-01-24 02:49:50.870162','62','Bread',2,'[]',2,3),(317,'2024-01-24 02:49:57.296809','59','Clothing',2,'[]',2,3),(318,'2024-01-24 02:49:59.772439','59','Clothing',2,'[]',2,3),(319,'2024-01-24 02:50:01.605179','59','Clothing',2,'[]',2,3),(320,'2024-01-24 02:51:11.711708','7','Blacksmith',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(321,'2024-01-24 02:51:35.468676','7','Blacksmith',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(322,'2024-01-24 02:51:51.852799','12','Corn Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(323,'2024-01-24 02:52:12.706519','1','Cotton Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(324,'2024-01-24 02:52:28.926852','2','Baker',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(325,'2024-01-24 02:52:32.230755','2','Baker',2,'[]',10,3),(326,'2024-01-24 02:52:48.840321','18','Cocoa Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(327,'2024-01-24 02:52:55.042134','17','Coffee Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(328,'2024-01-24 02:53:07.708497','10','Distillery',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(329,'2024-01-24 02:53:26.396441','16','Dye Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(330,'2024-01-24 02:53:50.363027','6','Foundry',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(331,'2024-01-24 02:54:06.090896','14','Hemp Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(332,'2024-01-24 02:55:10.017005','3','Sawmill',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(333,'2024-01-24 02:55:38.499048','13','Sugarcane Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(334,'2024-01-24 02:56:14.591228','5','Weaving Mill',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(335,'2024-01-24 02:56:18.129571','11','Fruit Farm',2,'[]',10,3),(336,'2024-01-24 02:56:26.233465','14','Hemp Plantation',2,'[]',10,3),(337,'2024-01-24 02:56:35.226738','9','Rope Maker',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(338,'2024-01-24 02:56:44.531834','20','Stockyard',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(339,'2024-01-24 02:56:55.421821','8','Tailor',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(340,'2024-01-24 02:57:18.470006','15','Wheat Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(341,'2024-01-24 02:57:23.149975','4','Adobe',2,'[]',10,3),(342,'2024-01-24 02:57:26.906200','2','Baker',2,'[]',10,3),(343,'2024-01-24 02:57:30.792008','7','Blacksmith',2,'[]',10,3),(344,'2024-01-24 02:57:33.592133','18','Cocoa Plantation',2,'[]',10,3),(345,'2024-01-24 02:57:35.763664','17','Coffee Plantation',2,'[]',10,3),(346,'2024-01-24 02:57:39.524885','12','Corn Farm',2,'[]',10,3),(347,'2024-01-24 02:57:42.454318','1','Cotton Farm',2,'[]',10,3),(348,'2024-01-24 02:57:46.488289','10','Distillery',2,'[]',10,3),(349,'2024-01-24 02:57:49.490515','16','Dye Farm',2,'[]',10,3),(350,'2024-01-24 02:57:52.621685','6','Foundry',2,'[]',10,3),(351,'2024-01-24 02:57:57.459825','14','Hemp Plantation',2,'[]',10,3),(352,'2024-01-24 02:58:00.593494','9','Rope Maker',2,'[]',10,3),(353,'2024-01-24 02:58:08.210514','3','Sawmill',2,'[]',10,3),(354,'2024-01-24 02:58:12.344402','20','Stockyard',2,'[]',10,3),(355,'2024-01-24 02:58:15.688257','13','Sugarcane Farm',2,'[]',10,3),(356,'2024-01-24 02:58:18.915492','8','Tailor',2,'[]',10,3),(357,'2024-01-24 02:58:21.711633','19','Tobacco Plantation',2,'[]',10,3),(358,'2024-01-24 02:58:26.216246','5','Weaving Mill',2,'[]',10,3),(359,'2024-01-24 02:58:28.993162','15','Wheat Farm',2,'[]',10,3),(360,'2024-01-24 03:12:29.099250','2','Baker',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(361,'2024-01-24 03:15:08.259505','1','Cotton Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(362,'2024-01-24 03:18:24.615421','1','Cotton Farm',2,'[]',10,3),(363,'2024-01-24 03:24:28.879476','3','dummy1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"production\", \"object\": \"Production object (3)\"}}]',1,3),(364,'2024-01-24 03:39:35.819003','4','dummy2',1,'[{\"added\": {}}, {\"added\": {\"name\": \"production\", \"object\": \"Production object (4)\"}}]',1,3),(365,'2024-01-24 03:41:41.946316','1','Cotton Farm',2,'[]',10,3),(366,'2024-01-24 03:44:26.051016','4','dummy2',2,'[]',1,3),(367,'2024-01-24 03:49:12.344683','3','dummy1',2,'[]',1,3),(368,'2024-01-24 03:49:14.631169','4','dummy2',2,'[]',1,3),(369,'2024-01-24 03:49:20.589556','3','dummy1',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (5)\"}}]',1,3),(370,'2024-01-24 03:49:29.655191','3','dummy1',2,'[]',1,3),(371,'2024-01-24 03:55:26.692939','3','dummy1',2,'[]',1,3),(372,'2024-01-24 03:55:29.065650','4','dummy2',2,'[]',1,3),(373,'2024-01-24 03:55:31.586036','2','Port Royale',2,'[]',1,3),(374,'2024-01-24 03:55:48.121431','4','dummy2',2,'[]',1,3),(375,'2024-01-24 03:55:56.525727','3','dummy1',2,'[]',1,3),(376,'2024-01-24 03:56:00.151623','4','dummy2',2,'[]',1,3),(377,'2024-01-24 03:56:03.705620','2','Port Royale',2,'[]',1,3),(378,'2024-01-24 04:14:25.828782','3','dummy1',2,'[]',1,3),(379,'2024-01-24 04:14:28.278467','4','dummy2',2,'[]',1,3),(380,'2024-01-24 04:14:31.092243','2','Port Royale',2,'[]',1,3),(381,'2024-01-24 04:19:36.796501','2','Port Royale',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (6)\"}}]',1,3),(382,'2024-01-24 04:28:13.118888','4','Adobe',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(383,'2024-01-24 04:29:25.968175','7','Blacksmith',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(384,'2024-01-24 04:29:57.813876','18','Cocoa Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(385,'2024-01-24 04:30:18.117316','17','Coffee Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(386,'2024-01-24 04:30:22.267617','18','Cocoa Plantation',2,'[]',10,3),(387,'2024-01-24 04:30:25.200560','17','Coffee Plantation',2,'[]',10,3),(388,'2024-01-24 04:30:38.089393','12','Corn Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(389,'2024-01-24 04:30:43.886990','1','Cotton Farm',2,'[]',10,3),(390,'2024-01-24 04:31:14.295468','10','Distillery',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(391,'2024-01-24 04:31:20.019739','10','Distillery',2,'[]',10,3),(392,'2024-01-24 04:31:32.164095','16','Dye Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(393,'2024-01-24 04:32:05.513620','6','Foundry',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(394,'2024-01-24 04:32:19.432663','11','Fruit Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(395,'2024-01-24 04:32:29.603777','14','Hemp Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(396,'2024-01-24 04:32:50.751046','9','Rope Maker',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(397,'2024-01-24 04:33:03.067917','3','Sawmill',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(398,'2024-01-24 04:33:26.836306','20','Stockyard',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(399,'2024-01-24 04:33:37.966826','13','Sugarcane Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(400,'2024-01-24 04:34:13.021653','8','Tailor',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(401,'2024-01-24 04:34:21.731634','19','Tobacco Plantation',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(402,'2024-01-24 04:34:51.948826','5','Weaving Mill',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(403,'2024-01-24 04:35:01.576692','15','Wheat Farm',2,'[{\"changed\": {\"fields\": [\"Factory consumption\"]}}]',10,3),(404,'2024-01-24 06:20:17.893241','1','FullProduction object (1)',1,'[{\"added\": {}}]',15,3),(405,'2024-01-24 06:20:44.745149','2','FullProduction object (2)',1,'[{\"added\": {}}]',15,3),(406,'2024-01-24 06:20:48.547288','3','FullProduction object (3)',1,'[{\"added\": {}}]',15,3),(407,'2024-01-24 06:20:53.149037','4','FullProduction object (4)',1,'[{\"added\": {}}]',15,3),(408,'2024-01-24 06:20:56.945816','5','FullProduction object (5)',1,'[{\"added\": {}}]',15,3),(409,'2024-01-24 06:21:00.621554','6','FullProduction object (6)',1,'[{\"added\": {}}]',15,3),(410,'2024-01-24 06:21:08.921143','7','FullProduction object (7)',1,'[{\"added\": {}}]',15,3),(411,'2024-01-24 06:21:17.984602','7','FullProduction object (7)',2,'[]',15,3),(412,'2024-01-24 06:21:20.347291','8','FullProduction object (8)',1,'[{\"added\": {}}]',15,3),(413,'2024-01-24 06:21:22.023131','9','FullProduction object (9)',1,'[{\"added\": {}}]',15,3),(414,'2024-01-24 06:21:23.851579','10','FullProduction object (10)',1,'[{\"added\": {}}]',15,3),(415,'2024-01-24 06:21:25.695776','11','FullProduction object (11)',1,'[{\"added\": {}}]',15,3),(416,'2024-01-24 06:21:28.249525','12','FullProduction object (12)',1,'[{\"added\": {}}]',15,3),(417,'2024-01-24 06:21:30.747373','13','FullProduction object (13)',1,'[{\"added\": {}}]',15,3),(418,'2024-01-24 06:21:35.804477','14','FullProduction object (14)',1,'[{\"added\": {}}]',15,3),(419,'2024-01-24 06:21:41.818982','15','FullProduction object (15)',1,'[{\"added\": {}}]',15,3),(420,'2024-01-24 06:21:46.714586','14','FullProduction object (14)',2,'[]',15,3),(421,'2024-01-24 06:21:50.006077','13','FullProduction object (13)',2,'[]',15,3),(422,'2024-01-24 06:21:55.637564','13','FullProduction object (13)',2,'[]',15,3),(423,'2024-01-24 06:21:58.554390','15','FullProduction object (15)',2,'[]',15,3),(424,'2024-01-24 06:22:01.186550','16','FullProduction object (16)',1,'[{\"added\": {}}]',15,3),(425,'2024-01-24 06:22:03.138931','17','FullProduction object (17)',1,'[{\"added\": {}}]',15,3),(426,'2024-01-24 06:22:05.413420','18','FullProduction object (18)',1,'[{\"added\": {}}]',15,3),(427,'2024-01-24 06:22:07.620893','19','FullProduction object (19)',1,'[{\"added\": {}}]',15,3),(428,'2024-01-24 06:22:10.195584','20','FullProduction object (20)',1,'[{\"added\": {}}]',15,3),(429,'2024-01-24 06:25:48.297021','4','dummy2',2,'[{\"changed\": {\"name\": \"production\", \"object\": \"Production object (4)\", \"fields\": [\"Factory amount\"]}}]',1,3),(430,'2024-01-24 06:25:51.032816','4','dummy2',2,'[]',1,3),(431,'2024-01-24 06:25:56.759335','4','dummy2',2,'[]',1,3),(432,'2024-01-24 07:17:46.869517','1','FullProduction object (1)',2,'[]',15,3),(433,'2024-01-24 07:17:51.962801','1','FullProduction object (1)',2,'[]',15,3),(434,'2024-01-24 07:46:54.327358','3','dummy1',2,'[]',1,3),(435,'2024-01-24 07:46:56.680096','4','dummy2',2,'[]',1,3),(436,'2024-01-24 07:47:00.058409','2','Port Royale',2,'[]',1,3),(437,'2024-01-24 07:55:23.914868','1','FullProduction object (1)',2,'[]',15,3),(438,'2024-01-24 07:55:29.083823','16','FullProduction object (16)',2,'[]',15,3),(439,'2024-01-24 07:55:32.640337','2','FullProduction object (2)',2,'[]',15,3),(440,'2024-01-24 07:55:35.048350','3','FullProduction object (3)',2,'[]',15,3),(441,'2024-01-24 07:55:37.727791','6','FullProduction object (6)',2,'[]',15,3),(442,'2024-01-24 07:55:57.031743','3','dummy1',2,'[]',1,3),(443,'2024-01-24 07:56:00.028659','2','Port Royale',2,'[]',1,3),(444,'2024-01-24 07:56:04.331582','7','FullProduction object (7)',2,'[]',15,3),(445,'2024-01-24 08:11:17.596138','2','Port Royale',2,'[]',1,3),(446,'2024-01-24 08:11:22.842188','3','dummy1',2,'[]',1,3),(447,'2024-01-24 10:25:49.888079','8','Tailor',2,'[]',10,3),(448,'2024-01-24 10:29:16.816934','8','Tailor',2,'[]',10,3),(449,'2024-01-24 10:30:05.392639','3','dummy1',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (7)\"}}]',1,3),(450,'2024-01-24 10:41:04.080014','8','Tailor',2,'[]',10,3),(451,'2024-01-24 10:44:28.031275','5','Weaving Mill',2,'[]',10,3),(452,'2024-01-24 10:54:54.252466','4','dummy2',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (8)\"}}]',1,3),(453,'2024-01-24 10:58:32.174918','4','dummy2',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (9)\"}}]',1,3),(454,'2024-01-24 10:58:35.220536','4','dummy2',2,'[]',1,3),(455,'2024-01-24 10:58:54.837715','3','dummy1',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (10)\"}}]',1,3),(456,'2024-01-24 10:58:58.800717','3','dummy1',2,'[{\"changed\": {\"name\": \"production\", \"object\": \"Production object (10)\", \"fields\": [\"Factory amount\"]}}]',1,3),(457,'2024-01-24 10:59:07.539826','3','dummy1',2,'[]',1,3),(458,'2024-01-24 10:59:54.646735','10','Distillery',2,'[]',10,3),(459,'2024-01-24 11:00:05.334168','4','dummy2',2,'[]',1,3),(460,'2024-01-24 11:03:28.081880','4','dummy2',3,'',1,3),(461,'2024-01-24 11:05:29.945379','5','dummy2',1,'[{\"added\": {}}, {\"added\": {\"name\": \"production\", \"object\": \"Production object (11)\"}}, {\"added\": {\"name\": \"production\", \"object\": \"Production object (12)\"}}, {\"added\": {\"name\": \"production\", \"object\": \"Production object (13)\"}}]',1,3),(462,'2024-01-24 13:37:59.143044','1','FullProduction object (1)',2,'[]',15,3),(463,'2024-01-24 13:38:14.678574','20','FullProduction object (20)',2,'[]',15,3),(464,'2024-01-24 14:23:51.432997','1','FullProduction object (1)',2,'[{\"changed\": {\"fields\": [\"Product name\"]}}]',15,3),(465,'2024-01-24 14:26:52.155514','1','FullProduction object (1)',2,'[]',15,3),(466,'2024-01-24 14:27:34.729720','1','FullProduction object (1)',2,'[]',15,3),(467,'2024-01-24 14:27:36.787596','2','FullProduction object (2)',2,'[]',15,3),(468,'2024-01-24 14:27:41.698432','7','FullProduction object (7)',2,'[]',15,3),(469,'2024-01-24 14:31:01.366001','1','FullProduction object (1)',2,'[]',15,3),(470,'2024-01-24 14:31:07.072957','7','FullProduction object (7)',2,'[]',15,3),(471,'2024-01-24 14:31:16.793479','7','FullProduction object (7)',2,'[]',15,3),(472,'2024-01-24 14:33:20.250904','1','FullProduction object (1)',2,'[]',15,3),(473,'2024-01-24 15:02:46.733704','2','Port Royale',2,'[{\"changed\": {\"name\": \"production\", \"object\": \"Production object (1)\", \"fields\": [\"Factory amount\"]}}]',1,3),(474,'2024-01-24 15:16:06.412604','5','dummy2',2,'[]',1,3),(475,'2024-01-24 15:16:16.865566','3','dummy1',2,'[]',1,3),(476,'2024-01-24 15:33:18.287682','3','dummy1',2,'[{\"changed\": {\"name\": \"production\", \"object\": \"Production object (7)\", \"fields\": [\"Factory amount\"]}}]',1,3),(477,'2024-01-24 17:13:51.812165','3','dummy1',2,'[{\"changed\": {\"name\": \"production\", \"object\": \"Production object (3)\", \"fields\": [\"Factory amount\"]}}]',1,3),(478,'2024-01-24 17:14:26.348158','3','dummy1',2,'[{\"changed\": {\"name\": \"production\", \"object\": \"Production object (3)\", \"fields\": [\"Factory amount\"]}}]',1,3),(479,'2024-01-24 17:27:26.873005','2','Port Royale',2,'[{\"added\": {\"name\": \"production\", \"object\": \"Production object (14)\"}}]',1,3),(480,'2024-01-25 07:46:54.724177','1','FullProduction object (1)',1,'[{\"added\": {}}]',15,3),(481,'2024-01-25 07:46:57.154810','2','FullProduction object (2)',1,'[{\"added\": {}}]',15,3),(482,'2024-01-25 07:47:03.261355','3','FullProduction object (3)',1,'[{\"added\": {}}]',15,3),(483,'2024-01-25 07:47:05.657402','4','FullProduction object (4)',1,'[{\"added\": {}}]',15,3),(484,'2024-01-25 07:47:07.554209','5','FullProduction object (5)',1,'[{\"added\": {}}]',15,3),(485,'2024-01-25 07:47:09.520081','6','FullProduction object (6)',1,'[{\"added\": {}}]',15,3),(486,'2024-01-25 07:47:19.548559','7','FullProduction object (7)',1,'[{\"added\": {}}]',15,3),(487,'2024-01-25 07:47:22.154744','8','FullProduction object (8)',1,'[{\"added\": {}}]',15,3),(488,'2024-01-25 07:47:25.126164','9','FullProduction object (9)',1,'[{\"added\": {}}]',15,3),(489,'2024-01-25 07:47:27.073736','10','FullProduction object (10)',1,'[{\"added\": {}}]',15,3),(490,'2024-01-25 07:47:29.572279','11','FullProduction object (11)',1,'[{\"added\": {}}]',15,3),(491,'2024-01-25 07:47:32.085711','12','FullProduction object (12)',1,'[{\"added\": {}}]',15,3),(492,'2024-01-25 07:47:34.690133','13','FullProduction object (13)',1,'[{\"added\": {}}]',15,3),(493,'2024-01-25 07:47:38.044354','14','FullProduction object (14)',1,'[{\"added\": {}}]',15,3),(494,'2024-01-25 07:47:40.779311','15','FullProduction object (15)',1,'[{\"added\": {}}]',15,3),(495,'2024-01-25 07:47:42.722388','16','FullProduction object (16)',1,'[{\"added\": {}}]',15,3),(496,'2024-01-25 07:47:45.274200','17','FullProduction object (17)',1,'[{\"added\": {}}]',15,3),(497,'2024-01-25 07:47:47.175946','18','FullProduction object (18)',1,'[{\"added\": {}}]',15,3),(498,'2024-01-25 07:47:50.760467','19','FullProduction object (19)',1,'[{\"added\": {}}]',15,3),(499,'2024-01-25 07:47:52.909682','20','FullProduction object (20)',1,'[{\"added\": {}}]',15,3),(500,'2024-01-26 07:17:01.166459','3','dummy1',3,'',1,3),(501,'2024-01-26 07:17:01.171456','5','dummy2',3,'',1,3),(502,'2024-01-26 07:17:01.174418','2','Port Royale',3,'',1,3),(503,'2024-01-26 07:21:29.310361','1','Liner',1,'[{\"added\": {}}]',14,3),(504,'2024-01-26 07:22:59.861299','1','Liner',3,'',14,3),(505,'2024-01-26 07:26:37.695199','2','Liner',1,'[{\"added\": {}}]',14,3),(506,'2024-01-26 07:32:09.016381','3','War Galleon',1,'[{\"added\": {}}]',14,3),(507,'2024-01-26 07:33:31.262462','4','Caravel',1,'[{\"added\": {}}]',14,3),(508,'2024-01-26 07:34:06.271492','2','Liner',2,'[]',14,3),(509,'2024-01-26 07:35:01.948368','5','Carrack',1,'[{\"added\": {}}]',14,3),(510,'2024-01-26 07:35:21.182334','4','Caravel',2,'[{\"changed\": {\"fields\": [\"Ship hold\"]}}]',14,3),(511,'2024-01-26 07:35:23.984434','5','Carrack',2,'[]',14,3),(512,'2024-01-26 07:35:26.567432','3','War Galleon',2,'[]',14,3),(513,'2024-01-26 07:35:29.067330','2','Liner',2,'[]',14,3),(514,'2024-01-26 07:36:28.085300','6','Galleon',1,'[{\"added\": {}}]',14,3),(515,'2024-01-26 07:37:28.304155','7','Military Frigate',1,'[{\"added\": {}}]',14,3),(516,'2024-01-26 07:38:30.465140','8','Military Corvette',1,'[{\"added\": {}}]',14,3),(517,'2024-01-26 07:38:39.850308','7','Military Frigate',2,'[]',14,3),(518,'2024-01-26 07:39:51.496338','9','Frigate',1,'[{\"added\": {}}]',14,3),(519,'2024-01-26 07:40:42.153318','10','Corvette',1,'[{\"added\": {}}]',14,3),(520,'2024-01-26 07:41:32.353637','11','Trade Fluyt',1,'[{\"added\": {}}]',14,3),(521,'2024-01-26 07:42:09.082081','12','Fluyt',1,'[{\"added\": {}}]',14,3),(522,'2024-01-26 07:42:49.259011','13','Pirate Barc',1,'[{\"added\": {}}]',14,3),(523,'2024-01-26 07:43:38.586032','14','Barc',1,'[{\"added\": {}}]',14,3),(524,'2024-01-26 07:44:39.493672','15','Brig',1,'[{\"added\": {}}]',14,3),(525,'2024-01-26 07:45:25.811326','16','Sloop',1,'[{\"added\": {}}]',14,3),(526,'2024-01-26 07:46:06.564319','17','Pinnace',1,'[{\"added\": {}}]',14,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(13,'pr3A','building'),(1,'pr3A','city'),(10,'pr3A','factory'),(15,'pr3A','fullproduction'),(2,'pr3A','good'),(11,'pr3A','production'),(3,'pr3A','products_in_city'),(14,'pr3A','ship'),(12,'pr3A','ships'),(9,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-13 10:35:41.021493'),(2,'auth','0001_initial','2023-04-13 10:35:41.481245'),(3,'admin','0001_initial','2023-04-13 10:35:41.614380'),(4,'admin','0002_logentry_remove_auto_add','2023-04-13 10:35:41.625351'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-13 10:35:41.636357'),(6,'contenttypes','0002_remove_content_type_name','2023-04-13 10:35:41.720099'),(7,'auth','0002_alter_permission_name_max_length','2023-04-13 10:35:41.798442'),(8,'auth','0003_alter_user_email_max_length','2023-04-13 10:35:41.835480'),(9,'auth','0004_alter_user_username_opts','2023-04-13 10:35:41.847447'),(10,'auth','0005_alter_user_last_login_null','2023-04-13 10:35:41.938413'),(11,'auth','0006_require_contenttypes_0002','2023-04-13 10:35:41.942402'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-13 10:35:41.955369'),(13,'auth','0008_alter_user_username_max_length','2023-04-13 10:35:42.024186'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-13 10:35:42.097385'),(15,'auth','0010_alter_group_name_max_length','2023-04-13 10:35:42.125564'),(16,'auth','0011_update_proxy_permissions','2023-04-13 10:35:42.136574'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-13 10:35:42.204503'),(18,'pr3A','0001_initial','2023-04-13 10:35:42.342516'),(19,'sessions','0001_initial','2023-04-13 10:35:42.387395'),(20,'pr3A','0002_alter_products_in_city_options','2023-04-13 23:53:45.942910'),(21,'pr3A','0003_rename_netto_products_in_city_tara','2023-04-13 23:53:45.973501'),(22,'pr3A','0004_rename_projected_gross_profit_products_in_city_netto_and_more','2023-04-14 00:10:00.306175'),(23,'pr3A','0005_city_slug','2023-04-16 00:42:16.903192'),(24,'pr3A','0006_alter_city_slug','2023-04-16 00:57:18.050082'),(25,'pr3A','0007_alter_city_slug','2023-04-16 00:59:26.692840'),(26,'pr3A','0008_alter_city_slug','2023-04-16 01:15:23.080008'),(27,'pr3A','0009_alter_products_in_city_total_amount','2023-04-21 09:23:38.539137'),(28,'pr3A','0010_alter_products_in_city_netto_and_more','2023-04-21 09:25:16.939905'),(29,'pr3A','0011_alter_products_in_city_total_amount','2023-04-21 09:35:07.638355'),(30,'pr3A','0012_alter_products_in_city_netto','2023-04-21 09:42:36.380456'),(31,'pr3A','0013_alter_products_in_city_tara','2023-04-21 09:43:58.645890'),(32,'pr3A','0014_alter_products_in_city_netto_and_more','2023-04-21 09:48:34.224880'),(33,'pr3A','0015_good_goods_image','2024-01-22 13:40:44.097245'),(34,'pr3A','0016_factory_production_ships_rename_slug_city_city_slug_and_more','2024-01-22 15:30:08.386617'),(35,'pr3A','0002_delete_ship','2024-01-23 01:46:25.548133'),(36,'pr3A','0003_ship','2024-01-23 01:46:59.697245'),(37,'pr3A','0004_remove_production_factory_delete_factory','2024-01-23 01:52:02.936167'),(38,'pr3A','0002_delete_building','2024-01-23 01:57:57.463946'),(39,'pr3A','0003_building','2024-01-23 01:58:15.146457'),(40,'pr3A','0004_factory','2024-01-23 02:01:01.819251'),(41,'pr3A','0005_delete_factory','2024-01-23 02:01:01.826470'),(42,'pr3A','0006_factory','2024-01-23 02:04:05.771978'),(43,'pr3A','0007_delete_factory','2024-01-23 02:04:05.777962'),(44,'pr3A','0008_factory','2024-01-23 02:06:19.907119'),(45,'pr3A','0009_remove_production_city_delete_factory_and_more','2024-01-23 02:08:05.318296'),(46,'pr3A','0002_factory','2024-01-23 02:19:20.341030'),(47,'pr3A','0003_production','2024-01-23 02:19:57.969106'),(48,'pr3A','0004_delete_production','2024-01-23 02:23:55.188113'),(49,'pr3A','0005_production','2024-01-23 02:24:42.232993'),(50,'pr3A','0006_alter_good_goods_image','2024-01-23 10:32:10.946179'),(51,'pr3A','0007_alter_good_goods_image','2024-01-23 10:40:15.244453'),(52,'pr3A','0008_alter_building_building_image_and_more','2024-01-23 10:43:40.100262'),(53,'pr3A','0009_remove_production_city_remove_production_factory_and_more','2024-01-23 13:38:53.901116'),(54,'pr3A','0010_city','2024-01-23 13:39:22.547155'),(55,'pr3A','0011_production','2024-01-23 14:12:22.910854'),(56,'pr3A','0012_factory_factory_consumption','2024-01-23 14:30:54.766845'),(57,'pr3A','0013_alter_factory_factory_consumption','2024-01-23 15:53:13.464362'),(58,'pr3A','0014_fullproduction','2024-01-24 06:15:41.120242'),(59,'pr3A','0015_fullproduction_product_name','2024-01-24 14:23:32.399234'),(60,'pr3A','0016_alter_fullproduction_options','2024-01-24 14:25:26.963120'),(61,'pr3A','0017_alter_fullproduction_options_and_more','2024-01-24 14:27:26.802372'),(62,'pr3A','0018_fullproduction_total_factory','2024-01-24 14:29:24.302776'),(63,'pr3A','0019_alter_building_building_image_alter_ship_ship_image','2024-01-25 07:12:28.446693'),(64,'pr3A','0020_delete_fullproduction','2024-01-25 07:44:07.783837'),(65,'pr3A','0021_fullproduction','2024-01-25 07:44:21.811630'),(66,'pr3A','0022_ship_ship_cost','2024-01-26 07:25:17.123144'),(67,'pr3A','0023_remove_ship_is_military','2024-01-26 07:33:55.305430');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('odb3wdm4refomvn9oeil6xiyimxz61vk','.eJxVjDsOwyAQBe9CHSEw5pcyvc-AdmEJTiKQjF1FuXtsyUXSvpl5bxZgW0vYOi1hTuzKFLv8bgjxSfUA6QH13nhsdV1m5IfCT9r51BK9bqf7d1Cgl73OykkF2fosNILWCkjkIY4YgaTcAdhROmeMIDEYyohOexAEjpzQ3rLPF_Z3ODI:1rUy8x:9yW_zhzKyDzOYwN6WpUuH_W_x2TtGBfX2VEEEAXksz0','2024-02-14 00:07:55.971206'),('pc3tbgkgvfdrx2glvttjd6rqeiu98adm','.eJxVjMsOwiAQRf-FtSFAebp07zeQYRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmc2sdPvlgAf1HaQ79BunWNv6zInviv8oINfe6bn5XD_DiqM-q1FsVC81V4Kj0IpJG1NChQQUPtsNLhCJltIWQkkNzmSUChMoUjri2LvD--8OHQ:1ppls1:5hNTLMjxgPI9KPMQyGZKo4eyokayY8e8Eo2pM_FtZc0','2023-05-05 08:11:53.235364'),('z6mwxawhzmndozzexurhvx7pai7ird9b','.eJxVjEEOwiAQRe_C2pApBVpcuu8ZyMAMUjWQlHZlvLtt0oVu_3vvv4XHbc1-a7z4mcRVKHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3sNCC7q0BGknhUThSFZNM4MJlruNSQEJjMaC0CktFKdUwi4ozFFBPH5AvNtOBM:1pnFsK:lIqNBtkYUFwauJAxn4gDjHPWCnmNxRwq8N4CI_LaEY0','2023-04-28 09:37:48.250496');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_building`
--

DROP TABLE IF EXISTS `pr3a_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_building` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `building_name` varchar(25) NOT NULL,
  `building_image` varchar(100) NOT NULL,
  `building_cost` int NOT NULL,
  `building_wood` int NOT NULL,
  `building_brick` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_building`
--

LOCK TABLES `pr3a_building` WRITE;
/*!40000 ALTER TABLE `pr3a_building` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr3a_building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_city`
--

DROP TABLE IF EXISTS `pr3a_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city_slug` varchar(50) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pr3A_city_city_slug_e51561c3` (`city_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_city`
--

LOCK TABLES `pr3a_city` WRITE;
/*!40000 ALTER TABLE `pr3a_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr3a_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_factory`
--

DROP TABLE IF EXISTS `pr3a_factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_factory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `factory_name` varchar(25) NOT NULL,
  `factory_image` varchar(100) NOT NULL,
  `production_amount` int NOT NULL,
  `factory_cost` int NOT NULL,
  `factory_wood` int NOT NULL,
  `factory_brick` int NOT NULL,
  `goods_produced_id` bigint NOT NULL,
  `factory_consumption` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_produced_id` (`goods_produced_id`),
  CONSTRAINT `pr3A_factory_goods_produced_id_94c91dff_fk_pr3A_good_id` FOREIGN KEY (`goods_produced_id`) REFERENCES `pr3a_good` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_factory`
--

LOCK TABLES `pr3a_factory` WRITE;
/*!40000 ALTER TABLE `pr3a_factory` DISABLE KEYS */;
INSERT INTO `pr3a_factory` VALUES (1,'Cotton Farm','images/factories/cottonfarm_5KDLBIP.png',4,8000,30,60,52,'[{\"Textiles\": 1}, {}]'),(2,'Baker','images/factories/baker_csbEgTM.png',2,10000,40,80,62,'[{}, {\"Sugar\": 0.5, \"Wheat\": 0.5}]'),(3,'Sawmill','images/factories/sawmill_YGtIBiG.png',6,8000,20,40,44,'[{\"Rum\": 0.5, \"Metal\": 0.5, \"Metal Goods\": 0.5}, {}]'),(4,'Adobe','images/factories/adobe_fSt1GUW.png',6,8000,20,40,43,'[{}, {}]'),(5,'Weaving Mill','images/factories/weavingmill_PWsdgFE.png',2,12000,40,80,50,'[{\"Clothing\": 1}, {\"Cotton\": 1}]'),(6,'Foundry','images/factories/foundry_hZHgV0p.png',3,12000,40,80,51,'[{\"Metal Goods\": 1}, {\"Woods\": 0.5}]'),(7,'Blacksmith','images/factories/blacksmith_VDQ3wZM.png',2,16000,60,120,53,'[{\"Cacao\": 0.25, \"Coffee\": 0.25}, {\"Metal\": 1, \"Woods\": 0.5}]'),(8,'Tailor','images/factories/tailor_KGRFLx5.png',1,18000,60,120,59,'[{}, {\"Dye\": 1, \"Textiles\": 1}]'),(9,'Rope Maker','images/factories/ropemaker_IuSYsLF.png',2,12000,40,80,61,'[{}, {\"Hemp\": 1}]'),(10,'Distillery','images/factories/distillery_JWj4eQM.png',1,10000,40,80,60,'[{}, {\"Sugar\": 1, \"Woods\": 0.5}]'),(11,'Fruit Farm','images/factories/fruitfarm_XBq2GqH.png',4,8000,20,40,46,'[{}, {}]'),(12,'Corn Farm','images/factories/cornfarm_Hg2W7cV.png',4,8000,20,40,47,'[{\"Meat\": 2}, {}]'),(13,'Sugarcane Farm','images/factories/sugarfarm_nfpoiMB.png',4,8000,20,40,48,'[{\"Rum\": 1, \"Bread\": 0.5}, {}]'),(14,'Hemp Plantation','images/factories/hempplant_AjknHaI.png',4,8000,20,40,49,'[{\"Rope\": 1}, {}]'),(15,'Wheat Farm','images/factories/wheatfarm_qacSZJP.png',6,8000,20,40,45,'[{\"Bread\": 0.5}, {}]'),(16,'Dye Farm','images/factories/dyefarm_GuANcUV.png',2,8000,20,40,54,'[{\"Clothing\": 1}, {}]'),(17,'Coffee Plantation','images/factories/coffeeplant_BJlBH7A.png',2,10000,40,80,55,'[{}, {\"Metal Goods\": 0.25}]'),(18,'Cocoa Plantation','images/factories/cocoaplant_ZoVUF9V.png',2,10000,40,80,56,'[{}, {\"Metal Goods\": 0.25}]'),(19,'Tobacco Plantation','images/factories/tobaccoplant_lbxXiGP.png',2,8000,20,40,57,'[{}, {}]'),(20,'Stockyard','images/factories/stockyard_UsTBxkw.png',1,12000,40,80,58,'[{}, {\"Corn\": 2}]');
/*!40000 ALTER TABLE `pr3a_factory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_fullproduction`
--

DROP TABLE IF EXISTS `pr3a_fullproduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_fullproduction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total_factory` int NOT NULL,
  `total_product` double NOT NULL,
  `total_consumed` double NOT NULL,
  `total_marketable` double NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pr3A_fullproduction_product_id_e02aef0b_fk_pr3A_factory_id` (`product_id`),
  CONSTRAINT `pr3A_fullproduction_product_id_e02aef0b_fk_pr3A_factory_id` FOREIGN KEY (`product_id`) REFERENCES `pr3a_factory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_fullproduction`
--

LOCK TABLES `pr3a_fullproduction` WRITE;
/*!40000 ALTER TABLE `pr3a_fullproduction` DISABLE KEYS */;
INSERT INTO `pr3a_fullproduction` VALUES (1,0,0,0,0,4),(2,0,0,0,0,2),(3,0,0,0,0,7),(4,0,0,0,0,18),(5,0,0,0,0,17),(6,0,0,0,0,12),(7,0,0,0,0,1),(8,0,0,0,0,10),(9,0,0,0,0,16),(10,0,0,0,0,6),(11,0,0,0,0,11),(12,0,0,0,0,14),(13,0,0,0,0,9),(14,0,0,0,0,3),(15,0,0,0,0,20),(16,0,0,0,0,13),(17,0,0,0,0,8),(18,0,0,0,0,19),(19,0,0,0,0,5),(20,0,0,0,0,15);
/*!40000 ALTER TABLE `pr3a_fullproduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_good`
--

DROP TABLE IF EXISTS `pr3a_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_good` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(25) NOT NULL,
  `goods_price` double NOT NULL,
  `goods_image` varchar(100) NOT NULL,
  `goods_slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pr3A_good_goods_slug_581d418e` (`goods_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_good`
--

LOCK TABLES `pr3a_good` WRITE;
/*!40000 ALTER TABLE `pr3a_good` DISABLE KEYS */;
INSERT INTO `pr3a_good` VALUES (43,'Brick',33,'images/goods/brick.png','brick'),(44,'Woods',33,'images/goods/woods.png','woods'),(45,'Wheat',33,'images/goods/wheat.png','wheat'),(46,'Fruits',50,'images/goods/fruit.png','fruits'),(47,'Corn',50,'images/goods/corn.png','corn'),(48,'Sugar',50,'images/goods/sugar.png','sugar'),(49,'Hemp',50,'images/goods/hemp.png','hemp'),(50,'Textiles',150,'images/goods/textile.png','textiles'),(51,'Metal',83,'images/goods/rmetal.png','metal'),(52,'Cotton',50,'images/goods/cotton.png','cotton'),(53,'Metal Goods',200,'images/goods/mgoods.png','metal-goods'),(54,'Dyes',100,'images/goods/dye.png','dyes'),(55,'Coffee',140,'images/goods/coffee.png','coffee'),(56,'Cacao',140,'images/goods/cacao.png','cacao'),(57,'Tobacco',100,'images/goods/tobacco.png','tobacco'),(58,'Meat',300,'images/goods/meat.png','meat'),(59,'Clothing',450,'images/goods/cloth.png','clothing'),(60,'Rum',267,'images/goods/rum.png','rum'),(61,'Ropes',150,'images/goods/rope.png','ropes'),(62,'Bread',142,'images/goods/bread.png','bread');
/*!40000 ALTER TABLE `pr3a_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_production`
--

DROP TABLE IF EXISTS `pr3a_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_production` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `factory_amount` int NOT NULL,
  `total_amount` double NOT NULL,
  `consumed` double NOT NULL,
  `marketable` double NOT NULL,
  `city_id` bigint NOT NULL,
  `factory_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pr3A_production_city_id_59e28c8e_fk_pr3A_city_id` (`city_id`),
  KEY `pr3A_production_factory_id_9af2195f_fk_pr3A_factory_id` (`factory_id`),
  CONSTRAINT `pr3A_production_city_id_59e28c8e_fk_pr3A_city_id` FOREIGN KEY (`city_id`) REFERENCES `pr3a_city` (`id`),
  CONSTRAINT `pr3A_production_factory_id_9af2195f_fk_pr3A_factory_id` FOREIGN KEY (`factory_id`) REFERENCES `pr3a_factory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_production`
--

LOCK TABLES `pr3a_production` WRITE;
/*!40000 ALTER TABLE `pr3a_production` DISABLE KEYS */;
/*!40000 ALTER TABLE `pr3a_production` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_ship`
--

DROP TABLE IF EXISTS `pr3a_ship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_ship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ship_name` varchar(50) NOT NULL,
  `ship_image` varchar(100) NOT NULL,
  `ship_hold` int NOT NULL,
  `ship_cannon` int NOT NULL,
  `ship_speed` int NOT NULL,
  `ship_hp` int NOT NULL,
  `ship_crew` int NOT NULL,
  `ship_turning` int NOT NULL,
  `ship_draught` int NOT NULL,
  `ship_upkeep` double NOT NULL,
  `ship_amount` int NOT NULL,
  `ship_cost` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_ship`
--

LOCK TABLES `pr3a_ship` WRITE;
/*!40000 ALTER TABLE `pr3a_ship` DISABLE KEYS */;
INSERT INTO `pr3a_ship` VALUES (2,'Liner','liner_cVh3nrj.png',400,50,14,340,350,70,2,320,0,200000),(3,'War Galleon','wargalleon.png',400,46,13,320,230,70,2,320,0,180000),(4,'Caravel','caravel.png',500,40,11,300,200,75,2,300,0,160000),(5,'Carrack','carrack.png',550,40,12,320,200,75,2,320,0,140000),(6,'Galleon','galleon.png',600,36,10,280,180,75,2,280,0,120000),(7,'Military Frigate','milfrigate.png',350,36,12,250,180,85,1,250,0,120000),(8,'Military Corvette','milcorvette.png',300,32,11,210,160,85,0,210,0,100000),(9,'Frigate','frigate.png',400,26,11,220,160,85,1,220,0,70000),(10,'Corvette','corvette.png',350,24,12,200,120,85,0,200,0,60000),(11,'Trade Fluyt','tradefluyt.png',800,8,10,300,40,80,1,240,0,50000),(12,'Fluyt','fluyt.png',500,16,10,220,80,85,1,220,0,40000),(13,'Pirate Barc','pirbarc.png',300,24,12,180,120,90,0,180,0,36000),(14,'Barc','barc.png',250,20,12,150,100,90,0,150,0,36000),(15,'Brig','brig.png',240,16,11,140,80,95,0,140,0,27000),(16,'Sloop','sloop.png',200,14,11,110,70,100,0,110,0,19000),(17,'Pinnace','pinnace.png',200,8,10,100,40,100,0,100,0,10000);
/*!40000 ALTER TABLE `pr3a_ship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-31  7:13:44
