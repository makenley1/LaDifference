-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_logart
-- ------------------------------------------------------
-- Server version	5.1.62-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2018-04-23 14:08:32','2018-04-23 14:08:32'),(2,NULL,1,'Category 2','category-2','2018-04-23 14:08:32','2018-04-23 14:08:32');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'TIOPHILE','Makenley','male','2000-06-04','delmas 43 #21','43747773','makenley1@gmail.com','2018-06-22 09:21:02','2018-06-22 09:21:02'),(2,'TIOPHILE','Makenley','male','2000-06-04','delmas 43 #21','43747773','makenley1@gmail.com','2018-06-22 09:23:27','2018-06-22 09:23:27'),(3,'Guerrier','Djidson','male','2000-06-04','delmas 43 #21','43747773','pamerite50@gmail.com','2018-06-22 09:38:47','2018-06-22 09:38:47'),(4,'Charles','Josue','male','1990-10-09','Carrefour','4123978','joecharles@gmail.com','2018-06-23 03:43:19','2018-06-23 03:43:19'),(5,'Charles','Josue','male','1990-10-09','Carrefour','4123978','joecharles@gmail.com','2018-06-23 03:44:09','2018-06-23 03:44:09'),(6,'Coeur','Love','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 09:33:48','2018-06-25 09:33:48'),(7,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:08:59','2018-06-25 10:08:59'),(8,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:09:58','2018-06-25 10:09:58'),(9,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:11:30','2018-06-25 10:11:30'),(10,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:16:28','2018-06-25 10:16:28'),(11,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:18:22','2018-06-25 10:18:22'),(12,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:21:50','2018-06-25 10:21:50'),(13,'Co','Lov','female','2001-07-29','Delmas 18','10 stop','love@mail.com','2018-06-25 10:23:18','2018-06-25 10:23:18'),(14,'Jean','Georges','male','2018-06-07','Inconnu','Test','jgma@gmail.com','2018-06-25 10:33:13','2018-06-25 10:33:13'),(15,'Jean','Georges','male','2018-06-07','Inconnu','Test','jgma@gmail.com','2018-06-25 10:52:25','2018-06-25 10:52:25'),(16,'Jean','Georges','male','2018-06-07','Inconnu','Test','jgma@gmail.com','2018-06-25 11:35:34','2018-06-25 11:35:34'),(17,'M','CT','male','2015-06-09','a','w','makenley1@gmail.com','2018-06-25 21:31:01','2018-06-25 21:31:01'),(18,'Ca doit etre','normale','male','1990-12-31','Blow','Kyev','makenley1@gmail.com','2018-06-25 21:36:06','2018-06-25 21:36:06'),(19,'TIOPHILE','Makenley','male','2004-06-04','Delmas 43 #21','38491285','makenley1@gmail.com','2018-06-26 14:37:31','2018-06-26 14:37:31'),(20,'TIOPHILE','Makenley','male','2015-06-01','Delmas 43','38491285','makenley1@gmail.com','2018-06-26 16:17:27','2018-06-26 16:17:27'),(21,'TIOPHILE','Makenley','male','1998-06-27','Delmas','38491285','makenley1@gmail.com','2018-06-26 16:24:17','2018-06-26 16:24:17'),(22,'Dominique','CEROME','male','2000-06-05','Carradeux','38491285','ceromedominique80@gmail.com','2018-06-26 19:33:47','2018-06-26 19:33:47'),(23,'junior','vala','male','2009-06-27','Route de frere','Test','valajunior2@gmail.com','2018-06-26 19:41:35','2018-06-26 19:41:35'),(24,'TIOPHILE','Makenley','male','1992-06-09','Delmas 43 #21','38491285','makenley1@gmail.com','2018-06-28 12:59:49','2018-06-28 12:59:49'),(25,'Geo','Famille','male','1993-02-09','N/A','38491285','geofa@simple.com','2018-06-28 22:24:37','2018-06-28 22:24:37');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'name','text','Name',1,1,1,1,1,1,'',2),(3,1,'email','text','Email',1,1,1,1,1,1,'',3),(4,1,'password','password','Password',1,0,0,1,1,0,'',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),(12,2,'id','number','ID',1,0,0,0,0,0,'',1),(13,2,'name','text','Name',1,1,1,1,1,1,'',2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(16,3,'id','number','ID',1,0,0,0,0,0,'',1),(17,3,'name','text','Name',1,1,1,1,1,1,'',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(21,1,'role_id','text','Role',1,1,1,1,1,1,'',9),(22,4,'id','number','ID',1,0,0,0,0,0,'',1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,'',4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(29,5,'id','number','ID',1,0,0,0,0,0,'',1),(30,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(31,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(32,5,'title','text','Title',1,1,1,1,1,1,'',4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',0,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',0,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',0,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',0,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'id','hidden','Id',1,1,1,1,1,0,'',1),(57,7,'nom','text','nom',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:21\"}}',2),(58,7,'slug','text','Slug',1,1,1,1,1,1,'',3),(59,7,'adresse','text','Adresse',1,1,1,1,1,1,'',4),(60,7,'telephone','number','Telephone',1,1,1,1,1,1,'',5),(61,7,'nbre_chambre','number','Nbre Chambre',1,1,1,1,1,1,'',6),(62,7,'ville','text','Ville',1,1,1,1,1,1,'',7),(63,7,'nbre_de_lit','number','Nbre De Lit',1,1,1,1,1,1,'',8),(64,7,'type_de_chambre','text','Type De Chambre',1,1,1,1,1,1,'',9),(65,7,'montant','number','Montant',1,1,1,1,1,1,'',10),(66,7,'description','rich_text_box','Description',1,1,1,1,1,1,'',11),(67,7,'created_at','timestamp','Created At',0,0,0,0,0,0,'',15),(68,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',16),(69,8,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(70,8,'nom','text','Nom',1,1,1,1,1,1,NULL,2),(71,8,'slug','text','Slug',1,1,1,1,1,1,NULL,3),(72,8,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(73,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(74,9,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(75,9,'product_id','number','Product Id',0,1,1,1,1,1,NULL,2),(76,9,'departement_id','number','Departement Id',0,1,1,1,1,1,NULL,3),(77,9,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(78,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(79,7,'image','image','Image',0,1,1,1,1,1,'',13),(80,7,'star','number','Star',0,1,1,1,1,1,'',12),(81,7,'images','multiple_images','Images',0,1,1,1,1,1,'',14),(82,10,'id','number','Id',1,0,0,0,0,0,'',1),(83,10,'flag','text','Flag',1,1,1,1,1,1,'',2),(84,10,'customer_id','text','Customer Id',1,1,1,1,1,1,'',3),(85,10,'rooms','text','Rooms',1,1,1,1,1,1,'',4),(86,10,'type','text','Type',1,1,1,1,1,1,'',5),(87,10,'checkin','text','Checkin',1,1,1,1,1,1,'',6),(88,10,'checkout','text','Checkout',1,1,1,1,1,1,'',7),(89,10,'barcode','text','Barcode',1,1,1,1,1,1,'',8),(90,10,'status','number','Status',1,1,1,1,1,1,'',9),(91,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'',10),(92,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',11);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-04-23 14:08:28','2018-04-23 14:08:28'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-04-23 14:08:28','2018-04-23 14:08:28'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-04-23 14:08:28','2018-04-23 14:08:28'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-04-23 14:08:32','2018-04-23 14:08:32'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-04-23 14:08:33','2018-04-23 14:08:33'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 14:08:34','2018-04-23 14:54:14'),(7,'products','products','Product','Products','voyager-thumb-tack','App\\Product','','','',1,1,'{\"order_column\":\"\",\"order_display_column\":\"\"}','2018-04-23 14:23:01','2018-06-27 14:37:51'),(8,'departements','departements','Departement','Departements','voyager-group','App\\Departement',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 19:32:52','2018-04-23 19:32:52'),(9,'departement_product','departement-product','Departement Product','Departement Products','voyager-tag','App\\DepartementProduct',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 19:53:24','2018-04-23 19:56:23'),(10,'reservations','reservations','Reservation','Reservations','voyager-book','App\\Reservation','','','',1,1,'{\"order_column\":\"\",\"order_display_column\":\"\"}','2018-06-26 14:33:40','2018-06-26 15:24:57');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departement_product`
--

DROP TABLE IF EXISTS `departement_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departement_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned DEFAULT NULL,
  `departement_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departement_product_product_id_foreign` (`product_id`),
  KEY `departement_product_departement_id_foreign` (`departement_id`),
  CONSTRAINT `departement_product_departement_id_foreign` FOREIGN KEY (`departement_id`) REFERENCES `departements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `departement_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departement_product`
--

LOCK TABLES `departement_product` WRITE;
/*!40000 ALTER TABLE `departement_product` DISABLE KEYS */;
INSERT INTO `departement_product` VALUES (1,1,8,NULL,NULL),(2,2,8,NULL,NULL),(3,3,8,NULL,NULL),(4,4,8,NULL,NULL),(5,5,8,NULL,NULL),(6,6,8,NULL,NULL),(7,7,6,NULL,NULL),(8,8,9,NULL,NULL),(9,9,9,NULL,NULL),(10,10,9,NULL,NULL),(11,11,9,NULL,NULL),(12,12,6,NULL,NULL),(13,25,1,'2018-06-20 14:50:43','2018-06-20 14:50:43'),(14,27,1,'2018-06-20 15:04:18','2018-06-20 15:04:18'),(15,28,2,'2018-06-20 15:13:11','2018-06-20 15:13:11'),(16,29,2,'2018-06-20 15:22:34','2018-06-20 15:22:34'),(17,30,3,'2018-06-20 15:32:58','2018-06-20 15:32:58'),(18,31,4,'2018-06-20 15:56:22','2018-06-20 15:57:30'),(19,5,10,'2018-06-21 03:49:23','2018-06-21 03:49:23'),(21,6,10,'2018-06-21 04:03:03','2018-06-21 04:03:03'),(22,21,10,'2018-06-21 14:36:18','2018-06-21 14:36:18'),(23,17,10,'2018-06-21 14:45:50','2018-06-21 14:45:50'),(24,10,5,NULL,NULL);
/*!40000 ALTER TABLE `departement_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departements`
--

DROP TABLE IF EXISTS `departements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departements`
--

LOCK TABLES `departements` WRITE;
/*!40000 ALTER TABLE `departements` DISABLE KEYS */;
INSERT INTO `departements` VALUES (1,'Artibonite','artibonite','2018-04-23 14:02:47','2018-04-23 14:02:47'),(2,'Centre','centre','2018-04-23 14:02:47','2018-04-23 14:02:47'),(3,'Grand\'Anse','grand-anse','2018-04-23 14:02:47','2018-04-23 14:02:47'),(4,'Nippes','nippes','2018-04-23 14:02:47','2018-04-23 14:02:47'),(5,'Nord','nord','2018-04-23 14:02:47','2018-04-23 14:02:47'),(6,'Nord-Est','nord-est','2018-04-23 14:02:47','2018-04-23 14:02:47'),(7,'Nord-Ouest','nord-ouest','2018-04-23 14:02:47','2018-04-23 14:02:47'),(8,'Ouest','ouest','2018-04-23 14:02:47','2018-04-23 14:02:47'),(9,'Sud','sud','2018-04-23 14:02:47','2018-04-23 14:02:47'),(10,'Sud-Est','sud-est','2018-04-23 14:02:47','2018-04-23 14:02:47');
/*!40000 ALTER TABLE `departements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-04-23 14:08:29','2018-04-23 14:08:29','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,8,'2018-04-23 14:08:29','2018-06-26 15:27:41','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,7,'2018-04-23 14:08:29','2018-06-26 15:27:41','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,6,'2018-04-23 14:08:29','2018-06-26 15:27:41','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,12,'2018-04-23 14:08:29','2018-06-26 15:27:28',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-04-23 14:08:29','2018-04-23 14:50:19','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-04-23 14:08:29','2018-04-23 14:50:19','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-04-23 14:08:29','2018-04-23 14:50:19','voyager.compass.index',NULL),(9,1,'Settings','','_self','voyager-settings',NULL,NULL,13,'2018-04-23 14:08:29','2018-06-26 15:27:28','voyager.settings.index',NULL),(10,1,'Categories','','_self','voyager-categories',NULL,NULL,11,'2018-04-23 14:08:32','2018-06-26 15:27:28','voyager.categories.index',NULL),(11,1,'Posts','','_self','voyager-news',NULL,NULL,9,'2018-04-23 14:08:33','2018-06-26 15:27:41','voyager.posts.index',NULL),(12,1,'Pages','','_self','voyager-file-text',NULL,NULL,10,'2018-04-23 14:08:34','2018-06-26 15:27:28','voyager.pages.index',NULL),(13,1,'Hooks','','_self','voyager-hook',NULL,5,4,'2018-04-23 14:08:36','2018-04-23 14:50:19','voyager.hooks',NULL),(14,1,'Products','','_self',NULL,NULL,NULL,2,'2018-04-23 14:23:01','2018-04-23 14:50:49','voyager.products.index',NULL),(15,1,'Departements','','_self','voyager-group',NULL,NULL,3,'2018-04-23 19:32:52','2018-04-23 19:33:42','voyager.departements.index',NULL),(16,1,'Departement Products','','_self','voyager-tag',NULL,NULL,4,'2018-04-23 19:53:24','2018-04-23 19:54:04','voyager.departement-product.index',NULL),(17,2,'Accueil','','_self',NULL,'#000000',NULL,1,'2018-04-23 20:44:15','2018-04-24 21:51:53','landing-page','null'),(18,2,'Contact','','_self','','#000000',NULL,2,'2018-04-23 20:45:48','2018-06-27 16:06:29','contact','null'),(19,2,'Aide','','_self','','#000000',NULL,4,'2018-04-23 20:46:44','2018-06-29 14:28:02','/help',''),(20,2,'Témoignage','','_self','','#000000',NULL,3,'2018-04-23 20:47:16','2018-06-29 14:28:53','/testimony',''),(21,1,'Reservations','','_self','',NULL,NULL,5,'2018-06-26 14:33:44','2018-06-26 15:27:41','voyager.reservations.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2018-04-23 14:08:29','2018-04-23 14:08:29'),(2,'main','2018-04-23 20:40:55','2018-04-23 20:40:55');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(17,'2017_03_06_000000_add_controller_to_data_types_table',1),(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),(19,'2017_04_21_000000_add_order_to_data_rows_table',1),(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),(21,'2017_08_05_000000_add_group_to_settings_table',1),(22,'2017_11_26_013050_add_user_role_relationship',1),(23,'2017_11_26_015000_create_user_roles_table',1),(24,'2018_03_11_000000_add_user_settings',1),(25,'2018_03_14_000000_add_details_to_data_types_table',1),(26,'2018_03_16_000000_make_settings_value_nullable',1),(27,'2018_04_08_080131_create_products_table',1),(28,'2018_04_17_091619_create_departements_table',1),(29,'2018_04_17_094808_create_departement_product_table',1),(30,'2018_04_29_040232_add_image_to_products_table',2),(32,'2018_06_19_104855_add_images_to_products_table',3),(33,'2017_02_15_142508_create_rooms_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2018-04-23 14:08:34','2018-04-23 14:08:34');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('makenley1@gmail.com','$2y$10$zaUB1JjoMAgmchqG2cjHZeJLY28bPVGxj50UoMldmI0d7yw0d6vrG','2018-05-25 17:43:31'),('pamerite50@gmail.com','$2y$10$HA.cfv2X.x1BX.vtqaFGxu/bob6uX.HjSpvz0qjTSUiw1J9nqhIvy','2018-05-25 17:44:45'),('ceromedominique80@gmail.com','$2y$10$5UorDYx.l9.wvaHXWR9RaOOlyYg.u5kyHcNrjeFrI3M3NBLqI46J2','2018-05-25 18:02:43'),('makenley@gmail.com','$2y$10$8drO8nMaR1AE5HdroE4uC.lYUjLZbyXAyRo.XVtOkggJ46b6a2A7u','2018-06-08 03:50:09');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(2,'browse_bread',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(3,'browse_database',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(4,'browse_media',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(5,'browse_compass',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(6,'browse_menus','menus','2018-04-23 14:08:29','2018-04-23 14:08:29'),(7,'read_menus','menus','2018-04-23 14:08:29','2018-04-23 14:08:29'),(8,'edit_menus','menus','2018-04-23 14:08:29','2018-04-23 14:08:29'),(9,'add_menus','menus','2018-04-23 14:08:30','2018-04-23 14:08:30'),(10,'delete_menus','menus','2018-04-23 14:08:30','2018-04-23 14:08:30'),(11,'browse_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(12,'read_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(13,'edit_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(14,'add_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(15,'delete_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(16,'browse_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(17,'read_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(18,'edit_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(19,'add_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(20,'delete_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(21,'browse_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(22,'read_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(23,'edit_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(24,'add_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(25,'delete_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(26,'browse_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(27,'read_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(28,'edit_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(29,'add_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(30,'delete_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(31,'browse_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(32,'read_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(33,'edit_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(34,'add_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(35,'delete_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(36,'browse_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(37,'read_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(38,'edit_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(39,'add_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(40,'delete_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(41,'browse_hooks',NULL,'2018-04-23 14:08:37','2018-04-23 14:08:37'),(42,'browse_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(43,'read_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(44,'edit_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(45,'add_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(46,'delete_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(47,'browse_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(48,'read_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(49,'edit_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(50,'add_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(51,'delete_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(52,'browse_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(53,'read_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(54,'edit_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(55,'add_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(56,'delete_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(57,'browse_reservations','reservations','2018-06-26 14:33:43','2018-06-26 14:33:43'),(58,'read_reservations','reservations','2018-06-26 14:33:43','2018-06-26 14:33:43'),(59,'edit_reservations','reservations','2018-06-26 14:33:43','2018-06-26 14:33:43'),(60,'add_reservations','reservations','2018-06-26 14:33:43','2018-06-26 14:33:43'),(61,'delete_reservations','reservations','2018-06-26 14:33:43','2018-06-26 14:33:43');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-23 14:08:33','2018-04-23 14:08:33'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-23 14:08:33','2018-04-23 14:08:33'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-23 14:08:33','2018-04-23 14:08:33'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2018-04-23 14:08:34','2018-04-23 14:08:34');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbre_chambre` int(11) NOT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nbre_de_lit` int(11) NOT NULL,
  `type_de_chambre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `star` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Best Western','best-western','50 Angle Louverture  & geffrard, Pétionville, Port-au-prince, Haiti','38491285',20,'Petion-Ville',2,'Neuf','20000','<p><strong>Affichant</strong> une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville.</p>\r\n<p>Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\smt78xoVAH0udfVw6wx5.jpg','[\"products\\\\June2018\\\\gQpsy1ZsHBXyH75ElaWd.jpg\",\"products\\\\June2018\\\\WVDaeBINrh1LYMT7KkKr.jpg\",\"products\\\\June2018\\\\jjaP75R7fJ7Khd9pQKZa.jpg\",\"products\\\\June2018\\\\WgGGsAGRthpm8uLDjXo7.jpg\"]','2018-04-23 14:02:00','2018-06-29 12:46:15',4),(2,'Mariott','mariott','50 Angle Louverture & geffrard','325489324',200,'Petion-Ville',400,'Neuf','2000','<p>Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres.Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\June2018\\g9TmTRofM8Kq6oYvpxNL.jpg','[\"products\\\\June2018\\\\KrWzTsMIec2d6XSP8O2W.jpg\",\"products\\\\June2018\\\\r0IAGbu0z9R7hCYsezXJ.jpg\",\"products\\\\June2018\\\\8Uv4oAPanwiRJASS9SFf.jpg\",\"products\\\\June2018\\\\VZe6MZuM7otX7b9QJ0GF.jpg\",\"products\\\\June2018\\\\j5FGGldIMJcA8Gwa6aRP.jpg\",\"products\\\\June2018\\\\KYtejFluWawa9Zjxwp9y.jpg\"]','2018-04-23 14:02:00','2018-06-27 22:19:41',5),(3,'Royal oasis','royal-oasis','115, Rue Panamericaine , HT6110 Port-au-Prince','40231885',10,'Petion-Ville',2,'Double','8570','<p>Situ&eacute; au c&oelig;ur de P&eacute;tionville, le <strong>Royal Oasis</strong> by Occidental est un &eacute;tablissement au d&eacute;cor moderne. Il dispose d\'un jardin et d\'une terrasse avec vue sur la capitale, Port-au-Prince.</p>\r\n<p>&nbsp;</p>\r\n<p>Ses chambres modernes et climatis&eacute;es sont &eacute;quip&eacute;es d\'une t&eacute;l&eacute;vision par c&acirc;ble et satellite &agrave; &eacute;cran plat. En outre, elles disposent d\'un bureau, d\'un coffre-fort, d\'un minibar, ainsi que d\'une salle de bains privative avec une douche et des articles de toilette gratuits.</p>\r\n<p>&nbsp;</p>\r\n<p>Les 2 restaurants de l\'&eacute;tablissement servent une cuisine m&eacute;diterran&eacute;enne, des hors-d\'&oelig;uvre et des tapas, tandis que les 2 bars proposent des cocktails et des boissons.</p>\r\n<p>Sur place, vous trouverez une galerie d\'art, des boutiques et une banque. Le complexe se situe &agrave; 8 km du centre de Port-au-Prince et &agrave; 9 km de la gare maritime. Enfin, vous rejoindrez l\'a&eacute;roport international de Port-au-Prince en 20 minutes de route.</p>','products\\June2018\\zAxSvQhFBU1z6kPETTEw.jpg','[\"products\\\\June2018\\\\xEKoI9nUol9w7pxHCcJ3.jpg\",\"products\\\\June2018\\\\MkLQ0vArtZ1FRppKBb1s.jpg\",\"products\\\\June2018\\\\UelC60SS4DmKtKNL1N6P.jpg\",\"products\\\\June2018\\\\sQWpRJH3LA1f4iiO8LIq.jpg\",\"products\\\\June2018\\\\1xhfOVpOpJcNkIMM6d5s.jpg\",\"products\\\\June2018\\\\3eJlK6dt6u5w81GL0oRs.jpg\",\"products\\\\June2018\\\\KUz2YfTeT02Dv47oiFcd.jpg\"]','2018-04-23 14:02:47','2018-06-21 18:35:57',5),(4,'villa-therese','villa-therese','13 Rue Leon Nau Nerette','36779098',30,'Petion-ville',2,'Simple','9300','<p>Situ&eacute; &agrave; P&eacute;tionville, l\'Hotel Villa Therese poss&egrave;de une piscine ext&eacute;rieure et un jardin luxuriant. Une connexion Wi-Fi est disponible gratuitement dans l\'ensemble de l\'&eacute;tablissement.</p>\r\n<p>&nbsp;</p>\r\n<p>Les chambres climatis&eacute;es disposent d\'une t&eacute;l&eacute;vision &agrave; &eacute;cran plat. Les salles de bains privatives comprennent par ailleurs une grande douche et des articles de toilette gratuits. Chaque h&eacute;bergement comporte un balcon priv&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<p>L\'Hotel Villa Therese met &agrave; votre disposition un restaurant &agrave; la carte, une salle de r&eacute;union et une bagagerie. Il assure en outre un service de repassage. Vous b&eacute;n&eacute;ficierez par ailleurs d\'un parking gratuit sur place.</p>\r\n<p>Vous trouverez de nombreux bars et restaurants &agrave; moins de 5 minutes &agrave; pied de l\'&eacute;tablissement. Enfin, l\'a&eacute;roport international de Port-au-Prince est implant&eacute; &agrave; 7 km.</p>','products\\April2018\\8pEa4fF8TfQzXm2rLuyk.jpg','[\"products\\\\June2018\\\\ekoCFj6c1goSnkEQN2tP.jpg\",\"products\\\\June2018\\\\oUQ6sL3DNiMrVaMqhrMr.jpg\",\"products\\\\June2018\\\\coNS9mwFn6hS9lgVsNoP.jpg\",\"products\\\\June2018\\\\r7BKnZAx8Pmck3HBSPwK.jpg\",\"products\\\\June2018\\\\h1fSbfhGO3DUqWP0rvbV.jpg\",\"products\\\\June2018\\\\NRNKSCvOLOU1kEpraZzs.jpg\",\"products\\\\June2018\\\\IujSP9zKJ5kkz2rfqpvk.jpg\",\"products\\\\June2018\\\\wgYpH5sQPoEG4Z1a4U6k.jpg\"]','2018-04-23 14:02:47','2018-06-21 18:48:37',3),(5,'cap-lamandou','cap-lamandou','Route de Lamandou Rue Luce Tumier (Dos de L\'eveche de Jacmel), 9110 Jacmel','46534212',2,'Jacmel',2,'Exposer','10500','<p>Situ&eacute; &agrave; Jacmel, le <strong>Cap Lamandou Hote</strong>l propose 2 piscines ext&eacute;rieures, dont une ouverte toute l\'ann&eacute;e, et un bar sur place. Vous profiterez gratuitement d\'une connexion Wi-Fi dans l\'ensemble des locaux et d\'un parking priv&eacute; sur place.</p>\r\n<p>Certaines chambres poss&egrave;dent un coin salon, id&eacute;al pour vous d&eacute;tendre.</p>\r\n<p>L\'&eacute;tablissement comporte une r&eacute;ception ouverte 24h/24.</p>\r\n<p>Dans les environs, vous pourrez pratiquer diverses activit&eacute;s, comme la plong&eacute;e avec tuba et sous-marine. L\'a&eacute;roport international de Port-au-Prince, le plus proche, se situe &agrave; 47 km.</p>','products\\April2018\\nu8NbA0RxU1jKAe1fy55.jpg','[\"products\\\\June2018\\\\dyitWQabEx3A5V4Q1XFa.jpg\",\"products\\\\June2018\\\\Zi0LIkVyLgVtdeccK6Gg.jpg\",\"products\\\\June2018\\\\JwDwbxdC50DDn0QZuZNr.jpg\"]','2018-04-23 14:02:47','2018-06-27 22:09:54',3),(6,'Florida','florida','29 Rue Du Commerce, 9110HT Jacmel','31126764',20,'Jacmel',1,'Simple','4500','<p><strong>L\'Hotel Florita</strong>, situ&eacute; dans le centre historique de Jacmel, en Ha&iuml;ti, &agrave; une centaine de m&egrave;tres de la promenade de la plage, comprend une piscine ext&eacute;rieure, une navette a&eacute;roport et une connexion Wi-Fi. Il dispose &eacute;galement d\'un bar sur la terrasse.</p>\r\n<p>Ses chambres d&eacute;cor&eacute;es dans le style d\'une plantation arborent des meubles en bois, des moustiquaires et des lits &agrave; baldaquin. Elles comportent un bureau et un balcon priv&eacute;. Les salles de bains sont pourvues de douches.</p>\r\n<p>&nbsp;</p>\r\n<p>Le restaurant de l\'&eacute;tablissement vous servira des sp&eacute;cialit&eacute;s r&eacute;gionales. Des animations sont organis&eacute;es le week-end. De nombreuses plages vous attendent par ailleurs &agrave; proximit&eacute;, dont une plage de surf et une crique prot&eacute;g&eacute;e. Une navette pour le Bassin Bleu, c&eacute;l&egrave;bres cascades dans les montagnes, est assur&eacute;e tous les jours.</p>\r\n<p>&nbsp;</p>\r\n<p>Jacmel est le centre de l\'art, de l\'artisanat et du carnaval en Ha&iuml;ti. &Agrave; 10 minutes &agrave; pied de l\'Hotel Florita, vous trouverez diverses boutiques d\'artisanat d\'art. L\'a&eacute;roport de Jacmel est quant &agrave; lui accessible &agrave; 2,9 km.</p>\r\n<p>&nbsp;</p>\r\n<p class=\"hp-desc-review-highlight\">Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Jacmel&nbsp;! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\I3koMFSHlxnCUv1KQzaK.jpg','[\"products\\\\June2018\\\\rjr62N7SsYB3iF0ktNpO.jpg\",\"products\\\\June2018\\\\ZNGQ5V9Wfih5gDAKkRX8.jpg\",\"products\\\\June2018\\\\WkBgdXr4SEEqK9nn15le.jpg\",\"products\\\\June2018\\\\9zPEroBJVjgghPy3AKPl.jpg\",\"products\\\\June2018\\\\QFGZF0Q2BPfoRX7yY1iL.jpg\",\"products\\\\June2018\\\\OxesLcCQbqQB2KZXeyf5.jpg\",\"products\\\\June2018\\\\Vr69flyFWdh56JS5r1t6.jpg\",\"products\\\\June2018\\\\esu8YDXCjZkZ0n3OzbwY.jpg\"]','2018-04-23 14:02:47','2018-06-27 22:11:57',2),(7,'Le Relais','lerelais','Fort Liberté, Haïti','39478521',10,'Fort Liberté',2,'Simple','7983','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 264px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">Le <strong>Relais H&ocirc;tel</strong> Bar Resto &amp; Resorts est situ&eacute; &agrave; Fort Libert&eacute; et dispose d\'une piscine ext&eacute;rieure. <br />Dot&eacute; d\'un restaurant, l\'&eacute;tablissement poss&egrave;de &eacute;galement une terrasse. L\'h&eacute;bergement propose une <br />discoth&egrave;que et une connexion Wi-Fi gratuite.\r\n\r\nL\'h&ocirc;tel propose un petit-d&eacute;jeuner continental ou buffet.</span></pre>','products\\April2018\\fTAoAnrOqGswLiXjMIuk.jpg','[\"products\\\\June2018\\\\JxYxhEg8LWWv491oHB5j.jpg\",\"products\\\\June2018\\\\NpSzXWNua2BtVO9pxe0H.jpg\",\"products\\\\June2018\\\\X327oD1yAtkbvBxtmUoh.jpg\",\"products\\\\June2018\\\\n1lm211yOKqfpuAQorsG.jpg\",\"products\\\\June2018\\\\dS2dMIePDtSGU1I21wKz.jpg\",\"products\\\\June2018\\\\348wm9Nf9FlCqB7AexgL.jpg\"]','2018-04-23 14:02:47','2018-06-27 22:12:36',4),(8,'Auberge Villa-Cana','auberge','Route Nationale 1, Vaudreuil, Cap-Haitien, HT1113','40213398',20,'Cap-Haïtien',2,'Simple','1380','<p><strong>H&ocirc;tel dans les montagnes &agrave; Vaudreuil avec 2 bars et une piscine ext&eacute;rieure </strong></p>','products\\April2018\\jXle2D1MAgZmqBdJIpOS.jpg','[\"products\\\\June2018\\\\bxFIHNsxJcDbx6TNkOMX.jpg\",\"products\\\\June2018\\\\l1SNCebEWt7qtweM82KZ.jpg\",\"products\\\\June2018\\\\WCMHLPNVO94fgjoS6Lee.jpg\",\"products\\\\June2018\\\\a6c5aqGGIBRdpBkY2VvD.jpg\",\"products\\\\June2018\\\\2NKszlsJCZVXrV2raDYX.jpg\",\"products\\\\June2018\\\\PjoUa7n35SmqSLj13RVZ.jpg\",\"products\\\\June2018\\\\PKFxQ5KDzAVW8TudsITg.jpg\",\"products\\\\June2018\\\\J765biEQQ44Cb3FNFE7i.jpg\"]','2018-04-23 14:02:47','2018-06-28 13:52:26',3),(9,'Samata','samata','250, Rue 29B Prolongée, Carrenage','31749823',2,'Cap-Haïtien',1,'Simple','9646','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 552px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">Le <strong>Satama Hotel</strong> est situ&eacute; &agrave; Cap-Ha&iuml;tien. Dot&eacute; d\'une r&eacute;ception ouverte 24h / 24, cet &eacute;tablissement vous propose &eacute;galement<br />un restaurant et une piscine ext&eacute;rieure ouverte toute l\'ann&eacute;e. Une connexion Wi-Fi gratuite est &agrave; votre disposition.\r\n\r\nToutes les chambres de l\'h&ocirc;tel comprennent un coin salon et une t&eacute;l&eacute;vision &agrave; &eacute;cran plat. Les chambres sont pourvues d\'une<br />salle de bains privative &eacute;quip&eacute;e d\'une baignoire ou d\'une douche, tandis que certaines chambres du Satama Hotel poss&egrave;dent <br />&eacute;galement un balcon. Les logements de l\'&eacute;tablissement disposent de la climatisation et d\'un bureau.\r\n\r\nLe petit-d&eacute;jeuner est servi tous les jours et comprend des plats continentaux, sous forme de buffet et &agrave; la carte.</span></pre>','products\\May2018\\Q2mi6FD9J75xc7ToKPAt.jpg','[\"products\\\\June2018\\\\nkh2AFZJCMVQaItVkvg5.jpg\",\"products\\\\June2018\\\\kRhTuNaNo38fdb4P00pL.jpg\",\"products\\\\June2018\\\\Yx1lZmaEo1ambsIUGv12.jpg\",\"products\\\\June2018\\\\akgcC3m4mMehdbrFBmyd.jpg\",\"products\\\\June2018\\\\uakHiBytffYTbNGpjLZi.jpg\",\"products\\\\June2018\\\\wDc1ZoFul9n55vFc3cDh.jpg\",\"products\\\\June2018\\\\Yvu0SG5zk0KeO1J23joI.jpg\",\"products\\\\June2018\\\\pnsM83hnAOARoT6TKUYC.jpg\"]','2018-04-23 14:02:00','2018-06-27 22:11:11',3),(10,'Auber-Cayes','auber-cayes','78, Faugasse, Route National Haiti, 8110 Les Cayes','33457898',30,'Cayes',2,'Simple','3400','<p>Dot&eacute; d\'une connexion Wi-Fi offerte et d\'une salle de sport, l\'Au Ber Cayes Guest House propose des h&eacute;bergements acceptant les animaux domestiques aux Cayes. Vous profiterez d\'un bar et d\'un stationnement priv&eacute; gratuit sur place.</p>\r\n<p>Toutes les chambres de cette maison d\'h&ocirc;tes disposent de la climatisation, d\'une t&eacute;l&eacute;vision et d\'une salle de bains privative.</p>\r\n<p>Enfin, l\'Au Ber Cayes Guest House met &agrave; votre disposition un salon commun</p>\r\n<p class=\"hp-desc-review-highlight\">Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Les Cayes&nbsp;! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\b4vcJvO8lqFrifk9tjcy.jpg','[\"products\\\\June2018\\\\n0MvlmnAe2AXswSxwMQk.jpg\",\"products\\\\June2018\\\\bUFFmEIl3Vz40piMuUBT.jpg\",\"products\\\\June2018\\\\GxcVK1FdjhqKxegbxCNr.jpg\",\"products\\\\June2018\\\\TcsRaganVxi1hZXLIa4C.jpg\",\"products\\\\June2018\\\\7w1iE1ySxELokiyyG21O.jpg\",\"products\\\\June2018\\\\YUnwRwfGcefDxtXF8Jnn.jpg\",\"products\\\\June2018\\\\nNlgEDfziSpWplby7oCI.jpg\",\"products\\\\June2018\\\\IWnNaS9IpKfPr01AS8XU.jpg\"]','2018-04-23 14:02:48','2018-06-28 05:55:25',2),(11,'Le Mangier','lemangier','Route Nationales #7 Rue Antoine Lucien, Les Cayes, Haïti','22454478',5,'Cayes',2,'Simple','6653','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 360px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">Dot&eacute; d\'un bar et d\'une connexion Wi-Fi gratuite, <strong>l\'Hotel Le Manguier</strong> est situ&eacute; aux Cayes. B&eacute;n&eacute;ficiant d\'une bagagerie, <br />cet &eacute;tablissement propose &eacute;galement un restaurant. Le personnel sur place peut organiser des transferts a&eacute;roport.\r\n\r\n&Agrave; l\'h&ocirc;tel, les chambres comprennent une armoire. &Agrave; l\'H&ocirc;tel Le Manguier, toutes les chambres disposent de la climatisation <br />et d\'une t&eacute;l&eacute;vision.\r\n\r\nUn petit-d&eacute;jeuner continental est servi chaque matin dans l\'h&eacute;bergement.</span></pre>','products\\April2018\\u4OqFEyO9Z9Gga5skSpf.jpg','[\"products\\\\June2018\\\\dTQohOvOIDxxFh5DK5P5.jpg\",\"products\\\\June2018\\\\dQymuknMCdRi1fZE61ya.jpg\"]','2018-04-23 14:02:48','2018-06-27 22:08:19',3),(12,'Le Marien','lemarien','Boulevard Le Marien S/N Nord-Est Department, Fort Liberté','31287943',10,'Centre',1,'Double','9314','<p>Situ&eacute; &agrave; Fort Libert&eacute;, Le <strong>Marien Hotels</strong> &amp; Resorts propose une plage priv&eacute;e, une terrasse et un restaurant. Vous b&eacute;n&eacute;ficierez gratuitement d\'une connexion Wi-Fi et d\'un parking priv&eacute; sur place.</p>\r\n<p>&nbsp;</p>\r\n<p>De plus, Le Marien Hotels &amp; Resorts assure gratuitement un service de navette.</p>\r\n<p>Vous s&eacute;journerez dans une r&eacute;gion pris&eacute;e des amateurs d\'&eacute;quitation et de plong&eacute;e sous-marine. Sur place, vous profiterez aussi d\'un service de location de voitures. Enfin, l\'a&eacute;roport international de Cap-Ha&iuml;tien se trouve quant &agrave; lui &agrave; 40 km du Marien Hotels &amp; Resorts.</p>','products\\April2018\\BdO7MbhV7OFne7hKpdZj.jpg','[\"products\\\\June2018\\\\K1pVRcxS1nAYPgDKsbfg.jpg\",\"products\\\\June2018\\\\AgBlNAYJ5nAeGPhF6Djv.jpg\",\"products\\\\June2018\\\\sL8r3OUSX3OidcTzRhLL.jpg\",\"products\\\\June2018\\\\qcE02Da4732fcxBDia8s.jpg\",\"products\\\\June2018\\\\o9tJCevVCKevEN3cGq0I.jpg\",\"products\\\\June2018\\\\8vfET3p7JtFi3JAjFY4d.jpg\",\"products\\\\June2018\\\\WUf6HjRJ5Ptrf1Z1f5Z0.jpg\"]','2018-04-23 14:02:48','2018-06-27 22:08:50',2),(16,'Royal Decameron','royal-decameron','KM 78, RN #1, HT4311 Montrouis','31987441',30,'Cayes',2,'special','24000','<p>Situ&eacute; &agrave; Montouis, au bord de la plage, le <strong>Royal Decameron Indigo</strong> - All Inclusive propose une piscine ext&eacute;rieure, un restaurant sur place ainsi qu\'une connexion Wi-Fi gratuite uniquement dans le hall.</p>\r\n<p>Les chambres climatis&eacute;es offrent une vue sur la mer et comprennent une salle de bains privative pourvue d\'une douche.</p>\r\n<p>&nbsp;</p>\r\n<p>Des salles de r&eacute;union, un salon commun et un bureau d\'excursions sont &agrave; votre disposition. Vous pourrez pratiquer diverses activit&eacute;s sur place ou dans les environs, notamment le ping-pong et le cano&euml;-kayak. La formule tout compris inclut un petit-d&eacute;jeuner, un d&eacute;jeuner et un d&icirc;ner sous forme de buffet, des d&icirc;ners et des collations &agrave; la carte, des boissons alcoolis&eacute;es locales &agrave; volont&eacute;, un programme d\'activit&eacute;s quotidien, des sports nautiques non motoris&eacute;s, des courts et des le&ccedil;ons de tennis, ainsi que des animations nocturnes.</p>\r\n<p>Enfin, vous rejoindrez l\'a&eacute;roport international de Port-au-Prince &agrave; 75 km et le mus&eacute;e du Panth&eacute;on national ha&iuml;tien en 1 heure en voiture.</p>','products\\May2018\\747Tv6jxEHqcYSPO5VOK.jpg','[\"products\\\\June2018\\\\AUJz4MNokA1CrR1X5fEy.jpg\",\"products\\\\June2018\\\\4m1kKMRx89Tv4KjUY6qt.jpg\",\"products\\\\June2018\\\\uPZJIULbpC0g0P8LwuGi.jpg\",\"products\\\\June2018\\\\h93PZEAi0uUljI3RUHZH.jpg\",\"products\\\\June2018\\\\ePTnWnhFM4rXnPeft5cx.jpg\"]','2018-05-07 20:13:19','2018-06-21 16:31:29',4),(17,'Zion CassaRoyal','Zion-CassaRoyal','Raymond Les Bains, Jacmel','34785120',2,'Jacmel',2,'Double','4650','<p>Dot&eacute; d\'un bar et d\'un restaurant, le <strong>Zion CassaRoyale Hotel</strong> se trouve &agrave; Cayes-Jacmel, en face de la plage de Raymond-les-Bains.</p>\r\n<p>La r&eacute;ception de cet h&ocirc;tel 4 &eacute;toiles est ouverte 24h/24. Un petit-d&eacute;jeuner continental est servi tous les matins sur place.</p>','products\\June2018\\AyjmorGjOkS0ddRCfJh5.jpg','[\"products\\\\June2018\\\\13Cikecxb4zHPbcH6wYw.jpg\",\"products\\\\June2018\\\\jiVVtqpA6D0T6xGOuVvJ.jpg\",\"products\\\\June2018\\\\5RHTv1SSOHBnZPaEdCAQ.jpg\",\"products\\\\June2018\\\\vg6abYLt9I4S64k6P02d.jpg\",\"products\\\\June2018\\\\YZFyH2cEfrjJCYjKRgzm.jpg\",\"products\\\\June2018\\\\1rFYbcKQHG8nlizFF8At.jpg\",\"products\\\\June2018\\\\FLeZ4ZYVPgqxUK88jY6a.jpg\",\"products\\\\June2018\\\\4W9iT7CIARF9lwRZ33Qc.jpg\",\"products\\\\June2018\\\\qFzCLwt29yanB8dyiFsW.jpg\",\"products\\\\June2018\\\\t9gBsrieHn4c2fG7GoLk.jpg\"]','2018-05-15 23:38:41','2018-06-21 14:45:29',4),(21,'Coterelle Breeze','coterelle-breeze','509 Route Marigot, HT4510 Cotterelle, Haïti','34213421',1,'Gonaives',1,'Simple','3540','<p>Situ&eacute; &agrave; Cotterelle, au bord de la mer des Cara&iuml;bes, le <strong>Coterelle Breeze</strong> propose un restaurant, une vue imprenable sur la mer et un parking gratuit sur place.</p>\r\n<p>Lumineuses et spacieuses, les maisons comprennent un coin salon et une terrasse priv&eacute;e. Elles offrent une tr&egrave;s jolie vue sur le jardin et la mer.</p>\r\n<p>Des restaurants vous attendent &agrave; moins de 10 minutes de route. Vous rejoindrez le centre-ville de Marigot &agrave; seulement 3 km.</p>\r\n<p class=\"hp-desc-review-highlight\">Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Cotterelle&nbsp;! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\June2018\\qAf3HUDKOaIrrahuULJ5.jpg','[\"products\\\\June2018\\\\44fr7UiIKNfFUQjFUhJT.jpg\",\"products\\\\June2018\\\\1MncwS6peFPvFaUIsRLf.jpg\",\"products\\\\June2018\\\\qYrByZcZy2hxMRki5xna.jpg\",\"products\\\\June2018\\\\zfoLrCJ60WJOvZR3DUiX.jpg\",\"products\\\\June2018\\\\bMQk4Uo6LRoyvx108fvT.jpg\",\"products\\\\June2018\\\\fkyyg2DCzK9kLnZFVAGm.jpg\"]','2018-05-16 00:22:02','2018-06-26 14:30:28',2),(25,'Auberge Pont-Gaudin','auberge-pont-godin','Route nationale # 1 Pont-gaudin Gonaives, 4110 Gonaïves, Haïti','50941879431',4,'Gonaives',28,'Simple','4653','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 432px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\" style=\"color: #333333;\">L\'<strong>Auberge Pont-Gaudin</strong> est situ&eacute;e &agrave; Gona&iuml;ves et dispose d\'une piscine ext&eacute;rieure, d\'un jardin et d\'un bar. Dot&eacute; d\'une r&eacute;ception ouverte 24h / 24, cet &eacute;tablissement poss&egrave;de &eacute;galement un restaurant. Les chambres sont &eacute;quip&eacute;es d\'un balcon.\r\n\r\n&Agrave; l\'h&ocirc;tel, chaque chambre est &eacute;quip&eacute;e d\'un patio. Chaque chambre est &eacute;quip&eacute;e d\'une salle de bains privative avec des articles de toilette gratuits. &Agrave; l\'Auberge Pont-Gaudin, les chambres sont &eacute;quip&eacute;es de la climatisation et d\'une t&eacute;l&eacute;vision &agrave; &eacute;cran plat.\r\n\r\nUn petit-d&eacute;jeuner continental est servi chaque matin sur place.</span></pre>\r\n<p>&nbsp;</p>','products\\June2018\\T75uUezzD373IzMEWYex.jpg','[\"products\\\\June2018\\\\ockQe8Igeq9J3SyvBaND.jpg\",\"products\\\\June2018\\\\ybvPGSNsjaEsIYvFb4LJ.jpg\",\"products\\\\June2018\\\\pwLZcx2osHcfzNl8aRxq.jpg\",\"products\\\\June2018\\\\dLHaLnH0zfcHllcVz9i6.jpg\",\"products\\\\June2018\\\\KryDHLeVyTgWL05MePIi.jpg\",\"products\\\\June2018\\\\mgIu8JIDoJRBTACwX5bG.jpg\",\"products\\\\June2018\\\\IRPYpVeEMbL5azww5RVF.jpg\"]','2018-06-16 01:40:16','2018-06-20 14:48:44',2),(27,'Le Cosmos Apart','le-cosmos-apart','Carrefoure Joffres Gonaives','34343434',34897412,'Gonaives',10,'simple','3589','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 264px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">Situ&eacute; &agrave; Gona&iuml;ves, l\'&eacute;tablissement Le Cosmos Apart Hotel propose des h&eacute;bergements avec une connexion Wi-Fi gratuite et une t&eacute;l&eacute;vision &agrave; &eacute;cran plat.\r\n\r\nUn petit-d&eacute;jeuner am&eacute;ricain est servi chaque matin sur place.\r\n\r\nL\'appart\'h&ocirc;tel dispose d\'une piscine ext&eacute;rieure ouverte toute l\'ann&eacute;e.</span></pre>','products\\June2018\\mZSa3wZGSrseWtK9BLax.jpg','[\"products\\\\June2018\\\\B10leTA3lswI9rETM7ET.jpg\",\"products\\\\June2018\\\\utYDaGv0ohgF4ciZ9OTJ.jpg\"]','2018-06-20 15:00:36','2018-06-20 15:00:36',3),(28,'La reference Hotel','La-reference-Hotel','route nationale 3 route national #3, 5210 Mirebalais','34139578',10,'Mirebalais',2,'simple','2659','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 264px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">L\'&eacute;tablissement La <strong>r&eacute;f&eacute;rence Hotel</strong> est situ&eacute; &agrave; Mirebalais et dispose d\'un bar. L\'&eacute;tablissement propose une r&eacute;ception ouverte 24h / 24\r\n\r\nLes logements de l\'h&ocirc;tel sont &eacute;quip&eacute;s d\'une t&eacute;l&eacute;vision &agrave; &eacute;cran plat. La salle de bains privative est &eacute;quip&eacute;e d\'une douche.</span></pre>','products\\June2018\\qc5fOO8EuHu8hixAEGLw.JPG','[\"products\\\\June2018\\\\8fHlGKyS78RIafZuwy9c.JPG\"]','2018-06-20 15:11:37','2018-06-26 14:29:54',2),(29,'Comfort Plus Hotel','comfort-plus-hotel','30 carrefour ledan Hinche Haiti, Hinche','34383731',5,'Hinche',2,'simple','5317','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 408px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">Situ&eacute; &agrave; Hinche, le <strong>Comfort Plus Hotel</strong> dispose d\'un jardin et d\'un bar. Cet h&ocirc;tel 5 &eacute;toiles propose une r&eacute;ception ouverte 24h / 24 et une connexion Wi-Fi gratuite. Toutes les chambres sont &eacute;quip&eacute;es d\'une terrasse.\r\n\r\nToutes les chambres de l\'h&ocirc;tel sont &eacute;quip&eacute;es d\'un coin salon et d\'une t&eacute;l&eacute;vision &agrave; &eacute;cran plat. La salle de bains privative est &eacute;quip&eacute;e d\'articles de toilette gratuits. Les logements disposent d\'un bureau\r\n\r\nLors de votre s&eacute;jour au Comfort Plus Hotel, vous pourrez d&eacute;guster un petit-d&eacute;jeuner <em>continental ou am&eacute;ricain</em>.</span></pre>','products\\June2018\\DSnCx7XKwNfLTP2GFJmj.jpg','[\"products\\\\June2018\\\\r8cG0cOLkn8tScoCfdX8.jpg\",\"products\\\\June2018\\\\5z8OsENMXu5KkTN55ZPm.jpg\",\"products\\\\June2018\\\\gMgCYu0FGcCSJstom5Eq.jpg\",\"products\\\\June2018\\\\KYKepyHy1nKxDSEsmaht.jpg\",\"products\\\\June2018\\\\aWC0T9Iuk9pwmU8wByWm.jpg\",\"products\\\\June2018\\\\w4ACPuMyjDmveZA1sdTc.jpg\"]','2018-06-20 15:21:07','2018-06-20 15:21:07',5),(30,'Brothers and Sisters','brothers-and-sisters','Carcolie 2, Jérémie','38978410',6,'Jérémie',2,'simple','3323','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 480px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">L\'<strong>H&ocirc;tel Brothers and Sisters</strong> &agrave; J&eacute;r&eacute;mie propose un h&eacute;bergement 5 &eacute;toiles avec un jardin et une terrasse. Une connexion Wi-Fi gratuite est &agrave; votre disposition.\r\n\r\n&Agrave; l\'h&ocirc;tel, chaque chambre comprend un bureau et une t&eacute;l&eacute;vision &agrave; &eacute;cran plat. Les chambres sont &eacute;quip&eacute;es d\'une salle de bains privative avec une douche et des articles de toilette gratuits.\r\n\r\nLe petit-d&eacute;jeuner quotidien propose des options am&eacute;ricaines et v&eacute;g&eacute;tariennes.\r\n\r\nUne assistance 24h / 24 est disponible &agrave; la r&eacute;ception, o&ugrave; le personnel parle fran&ccedil;ais, anglais et espagnol</span></pre>','products\\June2018\\mEZGzLuPfTK4ZzXHprLH.jpg','[\"products\\\\June2018\\\\o81NBrUCU1DzYjXKWrBr.jpg\",\"products\\\\June2018\\\\gPhNg60wCX7SxC5CcZUd.jpg\"]','2018-06-20 15:32:09','2018-06-20 15:44:19',5),(31,'Fort Royal Hotel','fort-royal-hotel','Rue des Roulottes, La Hatte','41011223',1,'La Hatte',2,'simple','6980','<pre id=\"tw-target-text\" class=\"tw-data-text tw-ta tw-text-small\" dir=\"ltr\" style=\"text-align: left; height: 552px;\" data-placeholder=\"Traduction\" data-fulltext=\"\"><span lang=\"fr\">L\'&eacute;tablissement <strong>Fort Royal Hotel de La Hatte</strong> propose un h&eacute;bergement 3 &eacute;toiles avec une piscine ext&eacute;rieure et un jardin.<br />Dot&eacute; d\'un salon commun, cet &eacute;tablissement poss&egrave;de &eacute;galement un restaurant. Une connexion Wi-Fi gratuite est incluse.\r\n\r\nToutes les chambres de l\'h&ocirc;tel sont &eacute;quip&eacute;es d\'une t&eacute;l&eacute;vision &agrave; &eacute;cran plat. Chaque chambre est &eacute;quip&eacute;e d\'une salle <br />de bains privative, tandis que certaines offrent une vue sur la piscine. Les logements du Fort Royal Hotel comprennent<br />la climatisation et un bureau.\r\n\r\nL\'h&eacute;bergement propose un petit-d&eacute;jeuner continental ou buffet.\r\n\r\nL\'&eacute;tablissement Fort Royal Hotel poss&egrave;de une terrasse. Vous pouvez jouer au tennis de table &agrave; l\'h&ocirc;tel.</span></pre>','products\\June2018\\67EdxQai3q4Nt5vdv4JG.jpg','[\"products\\\\June2018\\\\owKpXQ97WWXnWajlnHhK.jpg\",\"products\\\\June2018\\\\RFV6v9lB72JepenbuD96.jpg\",\"products\\\\June2018\\\\GZmYGcnyTY31AWWftcsw.jpg\",\"products\\\\June2018\\\\6J3y4MzrrVuUD8MPhlzH.jpg\",\"products\\\\June2018\\\\fCJS17lkqZl18TrC5ItQ.jpg\"]','2018-06-20 15:55:37','2018-06-27 15:31:25',3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flag` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rooms` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `checkin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (21,108965067,21,1,3,'2018-06-26','2018-06-27','99320273',0,'2018-06-26 16:24:17','2018-06-26 16:24:17'),(22,101564079,22,3,1,'2018-06-28','2018-06-28','100739778',0,'2018-06-26 19:33:47','2018-06-26 19:33:47'),(23,104070794,23,2,1,'2018-06-28','2018-06-29','118489950',0,'2018-06-26 19:41:35','2018-06-26 19:41:35'),(24,117668474,24,1,2,'2018-06-28','2018-06-29','112632253',0,'2018-06-28 12:59:49','2018-06-28 12:59:49'),(25,118707447,25,1,3,'2018-06-28','2018-06-29','101330111',0,'2018-06-28 22:24:38','2018-06-28 22:24:38');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2018-04-23 14:08:29','2018-04-23 14:08:29'),(2,'user','Normal User','2018-04-23 14:08:29','2018-04-23 14:08:29');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `details` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo',NULL,'','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image',NULL,'','image',5,'Admin'),(6,'admin.title','Admin Title','My Hotel','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to the Admin','','text',2,'Admin'),(8,'admin.loader','Admin Loader',NULL,'','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image',NULL,'','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2018-04-23 14:08:34','2018-04-23 14:08:34'),(2,'data_types','display_name_singular',6,'pt','Página','2018-04-23 14:08:34','2018-04-23 14:08:34'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2018-04-23 14:08:34','2018-04-23 14:08:34'),(4,'data_types','display_name_singular',4,'pt','Categoria','2018-04-23 14:08:35','2018-04-23 14:08:35'),(5,'data_types','display_name_singular',2,'pt','Menu','2018-04-23 14:08:35','2018-04-23 14:08:35'),(6,'data_types','display_name_singular',3,'pt','Função','2018-04-23 14:08:35','2018-04-23 14:08:35'),(7,'data_types','display_name_plural',5,'pt','Posts','2018-04-23 14:08:35','2018-04-23 14:08:35'),(8,'data_types','display_name_plural',6,'pt','Páginas','2018-04-23 14:08:35','2018-04-23 14:08:35'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2018-04-23 14:08:35','2018-04-23 14:08:35'),(10,'data_types','display_name_plural',4,'pt','Categorias','2018-04-23 14:08:35','2018-04-23 14:08:35'),(11,'data_types','display_name_plural',2,'pt','Menus','2018-04-23 14:08:35','2018-04-23 14:08:35'),(12,'data_types','display_name_plural',3,'pt','Funções','2018-04-23 14:08:35','2018-04-23 14:08:35'),(13,'categories','slug',1,'pt','categoria-1','2018-04-23 14:08:35','2018-04-23 14:08:35'),(14,'categories','name',1,'pt','Categoria 1','2018-04-23 14:08:35','2018-04-23 14:08:35'),(15,'categories','slug',2,'pt','categoria-2','2018-04-23 14:08:35','2018-04-23 14:08:35'),(16,'categories','name',2,'pt','Categoria 2','2018-04-23 14:08:35','2018-04-23 14:08:35'),(17,'pages','title',1,'pt','Olá Mundo','2018-04-23 14:08:35','2018-04-23 14:08:35'),(18,'pages','slug',1,'pt','ola-mundo','2018-04-23 14:08:35','2018-04-23 14:08:35'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2018-04-23 14:08:35','2018-04-23 14:08:35'),(20,'menu_items','title',1,'pt','Painel de Controle','2018-04-23 14:08:35','2018-04-23 14:08:35'),(21,'menu_items','title',2,'pt','Media','2018-04-23 14:08:35','2018-04-23 14:08:35'),(22,'menu_items','title',11,'pt','Publicações','2018-04-23 14:08:35','2018-04-23 14:08:35'),(23,'menu_items','title',3,'pt','Utilizadores','2018-04-23 14:08:35','2018-04-23 14:08:35'),(24,'menu_items','title',10,'pt','Categorias','2018-04-23 14:08:36','2018-04-23 14:08:36'),(25,'menu_items','title',12,'pt','Páginas','2018-04-23 14:08:36','2018-04-23 14:08:36'),(26,'menu_items','title',4,'pt','Funções','2018-04-23 14:08:36','2018-04-23 14:08:36'),(27,'menu_items','title',5,'pt','Ferramentas','2018-04-23 14:08:36','2018-04-23 14:08:36'),(28,'menu_items','title',6,'pt','Menus','2018-04-23 14:08:36','2018-04-23 14:08:36'),(29,'menu_items','title',7,'pt','Base de dados','2018-04-23 14:08:36','2018-04-23 14:08:36'),(30,'menu_items','title',9,'pt','Configurações','2018-04-23 14:08:36','2018-04-23 14:08:36');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,NULL,NULL,'admin@admin.com','users\\May2018\\CCaNdwo7eO7jKeY8R3tt.jpg','$2y$10$e28sa4eGY5g63hmqsGHmjuRufTkVtlWr93h4AHmAt1vL1aMfVLKn6','w5EnsLcv1sxbEqpPG0AGpLsJeNGi45Xh64kqiwvLwV6SlDelYpiMN79hpYRG','{\"locale\":\"en\"}','2018-04-23 14:08:33','2018-05-03 21:45:04',NULL,NULL),(3,1,'LogArt',NULL,'logart@gmail.com','1530284312.png','$2y$10$FsALycbcQGhJmre6oFv7H.B5UX7oaeriGnUgWexiCAtLiL5rYR1tC','j1jkbkdp8nbI6TimdtH2PY52vns7lMLK8sSDxYGBosFGIyE4uBOl60Xkd1Wl','{\"locale\":\"fr\"}','2018-05-21 13:07:59','2018-06-29 19:58:34','GOOGLE','116030885690705426017'),(7,2,NULL,NULL,'makenley1@gmail.com','default.jpg','$2y$10$cIAjJ/Ndsn4CXrXywSKaoexcmEpL0XgF4Nwz7T.RCBL7ooYh3CKzu','g4Xxo2xeKhKmYLyVtaKTzeUe3ZcmHRIMVIHcJTzGvCOrdmc8kT0ywYts58Tm','{\"locale\":\"fr\"}','2018-06-28 05:40:54','2018-06-28 05:40:54',NULL,NULL),(8,2,NULL,NULL,'pamerite50@gmail.com','1530197303.png',NULL,'mKOjv0JUNECsXMDGykt8mdofZbcB2MT9qKyhs1uQbmFM7CEFLdPSlVabXXx8',NULL,'2018-06-28 15:10:42','2018-06-28 19:48:24',NULL,NULL),(9,2,'Josias','Philippe','josias@gmail.com','default.jpg','$2y$10$VNq3/I5I6Cjt3iTAbn4oHeNsFZ7BIl.N/Ng5U1qWG5RbPZf.SoGFi','2dqM937ivbIiv1fKBJpSSb1qWkctYXyQX7fTZd0A93RcJXnwC5RDtFzPedXc',NULL,'2018-06-29 19:40:22','2018-06-29 19:40:22',NULL,NULL);
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

-- Dump completed on 2018-06-29 11:22:56
