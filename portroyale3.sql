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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add city',1,'add_city'),(2,'Can change city',1,'change_city'),(3,'Can delete city',1,'delete_city'),(4,'Can view city',1,'view_city'),(5,'Can add good',2,'add_good'),(6,'Can change good',2,'change_good'),(7,'Can delete good',2,'delete_good'),(8,'Can view good',2,'view_good'),(9,'Can add products_in_ city',3,'add_products_in_city'),(10,'Can change products_in_ city',3,'change_products_in_city'),(11,'Can delete products_in_ city',3,'delete_products_in_city'),(12,'Can view products_in_ city',3,'view_products_in_city'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session');
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
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$600000$p64c3oA6IxUeyFCDs072qE$8kpCQDSCUNaX1LjzikJLB5bISduqDno1EjrSGlYRy38=','2023-04-21 08:11:53.231697',1,'admin','','','avadakedavra@hogwarts.com',1,1,'2023-04-21 08:11:40.275725');
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
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (210,'2023-04-21 09:07:03.246521','36','Metal Goods',2,'[]',2,3),(211,'2023-04-21 09:09:33.063677','20','Evangelista',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Evangelista\", \"fields\": [\"Factory amount\"]}}]',1,3),(212,'2023-04-21 09:09:53.863598','20','Evangelista',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Evangelista\", \"fields\": [\"Factory amount\"]}}]',1,3),(213,'2023-04-21 09:17:23.071718','25','Florida Keys',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Florida Keys\", \"fields\": [\"Tara\"]}}]',1,3),(214,'2023-04-21 09:21:36.211652','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Barbados\", \"fields\": [\"Factory amount\"]}}]',1,3),(215,'2023-04-21 09:22:06.461580','25','Florida Keys',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Florida Keys\", \"fields\": [\"Tara\"]}}]',1,3),(216,'2023-04-21 09:24:32.602329','25','Florida Keys',2,'[]',1,3),(217,'2023-04-21 09:26:18.238345','25','Florida Keys',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Florida Keys\", \"fields\": [\"Tara\"]}}]',1,3),(218,'2023-04-21 09:26:22.013861','25','Florida Keys',2,'[]',1,3),(219,'2023-04-21 09:42:55.077436','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Tara\"]}}]',1,3),(220,'2023-04-21 09:43:02.305742','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Factory amount\", \"Tara\"]}}]',1,3),(221,'2023-04-21 09:49:16.010949','28','Barbados',2,'[{\"changed\": {\"name\": \"products_in_ city\", \"object\": \"Products_in_City object (24)\", \"fields\": [\"Factory amount\"]}}]',1,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(8,'contenttypes','contenttype'),(1,'pr3A','city'),(2,'pr3A','good'),(3,'pr3A','products_in_city'),(9,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-13 10:35:41.021493'),(2,'auth','0001_initial','2023-04-13 10:35:41.481245'),(3,'admin','0001_initial','2023-04-13 10:35:41.614380'),(4,'admin','0002_logentry_remove_auto_add','2023-04-13 10:35:41.625351'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-13 10:35:41.636357'),(6,'contenttypes','0002_remove_content_type_name','2023-04-13 10:35:41.720099'),(7,'auth','0002_alter_permission_name_max_length','2023-04-13 10:35:41.798442'),(8,'auth','0003_alter_user_email_max_length','2023-04-13 10:35:41.835480'),(9,'auth','0004_alter_user_username_opts','2023-04-13 10:35:41.847447'),(10,'auth','0005_alter_user_last_login_null','2023-04-13 10:35:41.938413'),(11,'auth','0006_require_contenttypes_0002','2023-04-13 10:35:41.942402'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-13 10:35:41.955369'),(13,'auth','0008_alter_user_username_max_length','2023-04-13 10:35:42.024186'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-13 10:35:42.097385'),(15,'auth','0010_alter_group_name_max_length','2023-04-13 10:35:42.125564'),(16,'auth','0011_update_proxy_permissions','2023-04-13 10:35:42.136574'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-13 10:35:42.204503'),(18,'pr3A','0001_initial','2023-04-13 10:35:42.342516'),(19,'sessions','0001_initial','2023-04-13 10:35:42.387395'),(20,'pr3A','0002_alter_products_in_city_options','2023-04-13 23:53:45.942910'),(21,'pr3A','0003_rename_netto_products_in_city_tara','2023-04-13 23:53:45.973501'),(22,'pr3A','0004_rename_projected_gross_profit_products_in_city_netto_and_more','2023-04-14 00:10:00.306175'),(23,'pr3A','0005_city_slug','2023-04-16 00:42:16.903192'),(24,'pr3A','0006_alter_city_slug','2023-04-16 00:57:18.050082'),(25,'pr3A','0007_alter_city_slug','2023-04-16 00:59:26.692840'),(26,'pr3A','0008_alter_city_slug','2023-04-16 01:15:23.080008'),(27,'pr3A','0009_alter_products_in_city_total_amount','2023-04-21 09:23:38.539137'),(28,'pr3A','0010_alter_products_in_city_netto_and_more','2023-04-21 09:25:16.939905'),(29,'pr3A','0011_alter_products_in_city_total_amount','2023-04-21 09:35:07.638355'),(30,'pr3A','0012_alter_products_in_city_netto','2023-04-21 09:42:36.380456'),(31,'pr3A','0013_alter_products_in_city_tara','2023-04-21 09:43:58.645890'),(32,'pr3A','0014_alter_products_in_city_netto_and_more','2023-04-21 09:48:34.224880');
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
INSERT INTO `django_session` VALUES ('pc3tbgkgvfdrx2glvttjd6rqeiu98adm','.eJxVjMsOwiAQRf-FtSFAebp07zeQYRikaiAp7cr479qkC93ec859sQjbWuM2aIlzZmc2sdPvlgAf1HaQ79BunWNv6zInviv8oINfe6bn5XD_DiqM-q1FsVC81V4Kj0IpJG1NChQQUPtsNLhCJltIWQkkNzmSUChMoUjri2LvD--8OHQ:1ppls1:5hNTLMjxgPI9KPMQyGZKo4eyokayY8e8Eo2pM_FtZc0','2023-05-05 08:11:53.235364'),('z6mwxawhzmndozzexurhvx7pai7ird9b','.eJxVjEEOwiAQRe_C2pApBVpcuu8ZyMAMUjWQlHZlvLtt0oVu_3vvv4XHbc1-a7z4mcRVKHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3sNCC7q0BGknhUThSFZNM4MJlruNSQEJjMaC0CktFKdUwi4ozFFBPH5AvNtOBM:1pnFsK:lIqNBtkYUFwauJAxn4gDjHPWCnmNxRwq8N4CI_LaEY0','2023-04-28 09:37:48.250496');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_city`
--

DROP TABLE IF EXISTS `pr3a_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `city_name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pr3A_city_slug_68ea2c83` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_city`
--

LOCK TABLES `pr3a_city` WRITE;
/*!40000 ALTER TABLE `pr3a_city` DISABLE KEYS */;
INSERT INTO `pr3a_city` VALUES (19,'Cancun','cancun'),(20,'Evangelista','evangelista'),(22,'Port Royale','port-royale'),(23,'Havana','havana'),(24,'Nombre de Dios','nombre-de-dios'),(25,'Florida Keys','florida-keys'),(26,'Roatan','roatan'),(27,'Cayman','cayman'),(28,'Barbados','barbados'),(29,'Sisal','sisal');
/*!40000 ALTER TABLE `pr3a_city` ENABLE KEYS */;
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
  `production_amount` int NOT NULL,
  `goods_price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_good`
--

LOCK TABLES `pr3a_good` WRITE;
/*!40000 ALTER TABLE `pr3a_good` DISABLE KEYS */;
INSERT INTO `pr3a_good` VALUES (23,'Corn',4,50),(24,'Meat',1,300),(25,'Textile',2,150),(26,'Rope',2,149),(27,'Coffee',2,138),(28,'Raw Metal',3,83),(29,'Cotton',4,50),(30,'Rum',1,267),(31,'Adobe Brick',6,33),(32,'Tobacco',2,100),(33,'Clothing',1,450),(34,'Wood',6,33),(35,'Dye',2,100),(36,'Metal Goods',2,200),(37,'Wheat',6,32),(38,'Bread',2,142),(39,'Sugar',4,50),(40,'Hemp',4,50),(41,'Cacao',2,140),(42,'Fruit',4,50);
/*!40000 ALTER TABLE `pr3a_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_good_city_name`
--

DROP TABLE IF EXISTS `pr3a_good_city_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_good_city_name` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `good_id` bigint NOT NULL,
  `city_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pr3A_good_city_name_good_id_city_id_91619228_uniq` (`good_id`,`city_id`),
  KEY `pr3A_good_city_name_city_id_020ec6f7_fk_pr3A_city_id` (`city_id`),
  CONSTRAINT `pr3A_good_city_name_city_id_020ec6f7_fk_pr3A_city_id` FOREIGN KEY (`city_id`) REFERENCES `pr3a_city` (`id`),
  CONSTRAINT `pr3A_good_city_name_good_id_adce445c_fk_pr3A_good_id` FOREIGN KEY (`good_id`) REFERENCES `pr3a_good` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_good_city_name`
--

LOCK TABLES `pr3a_good_city_name` WRITE;
/*!40000 ALTER TABLE `pr3a_good_city_name` DISABLE KEYS */;
INSERT INTO `pr3a_good_city_name` VALUES (23,23,19),(24,24,19),(25,25,20),(26,26,20),(29,29,22),(30,30,22),(31,31,23),(32,32,23),(33,33,24),(34,34,24),(35,35,25),(36,36,25),(37,37,26),(38,38,26),(39,39,27),(40,40,27),(41,41,28),(42,42,28);
/*!40000 ALTER TABLE `pr3a_good_city_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pr3a_products_in_city`
--

DROP TABLE IF EXISTS `pr3a_products_in_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pr3a_products_in_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `factory_amount` int NOT NULL,
  `total_amount` double NOT NULL,
  `tara` double NOT NULL,
  `netto` double NOT NULL,
  `city_id` bigint NOT NULL,
  `goods_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pr3A_products_in_city_city_id_76eff7ff_fk_pr3A_city_id` (`city_id`),
  KEY `pr3A_products_in_city_goods_id_a2114114_fk_pr3A_good_id` (`goods_id`),
  CONSTRAINT `pr3A_products_in_city_city_id_76eff7ff_fk_pr3A_city_id` FOREIGN KEY (`city_id`) REFERENCES `pr3a_city` (`id`),
  CONSTRAINT `pr3A_products_in_city_goods_id_a2114114_fk_pr3A_good_id` FOREIGN KEY (`goods_id`) REFERENCES `pr3a_good` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pr3a_products_in_city`
--

LOCK TABLES `pr3a_products_in_city` WRITE;
/*!40000 ALTER TABLE `pr3a_products_in_city` DISABLE KEYS */;
INSERT INTO `pr3a_products_in_city` VALUES (21,8,32,16,16,19,23),(22,8,8,0,8,19,24),(24,8,16,0,16,28,41),(25,4,16,0,16,28,42),(27,8,32,24,8,27,39),(28,4,16,8,8,27,40),(29,12,24,12,12,20,25),(30,4,8,0,8,20,26),(31,6,12,12,0,25,35),(32,4,8,8,0,25,36),(33,12,72,0,72,23,31),(34,8,16,0,16,23,32),(35,16,96,28,68,24,34),(36,12,12,0,12,24,33),(37,8,32,24,8,22,29),(38,12,12,0,12,22,30),(39,4,24,12,12,26,37),(40,12,24,0,24,26,38),(41,12,36,8,28,29,28),(42,8,16,0,16,29,27);
/*!40000 ALTER TABLE `pr3a_products_in_city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 14:25:08
