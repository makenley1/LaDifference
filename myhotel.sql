-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: myhotel
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'name','text','Name',1,1,1,1,1,1,'',2),(3,1,'email','text','Email',1,1,1,1,1,1,'',3),(4,1,'password','password','Password',1,0,0,1,1,0,'',4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),(12,2,'id','number','ID',1,0,0,0,0,0,'',1),(13,2,'name','text','Name',1,1,1,1,1,1,'',2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(16,3,'id','number','ID',1,0,0,0,0,0,'',1),(17,3,'name','text','Name',1,1,1,1,1,1,'',2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(21,1,'role_id','text','Role',1,1,1,1,1,1,'',9),(22,4,'id','number','ID',1,0,0,0,0,0,'',1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,'',4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'',6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),(29,5,'id','number','ID',1,0,0,0,0,0,'',1),(30,5,'author_id','text','Author',1,0,1,1,0,1,'',2),(31,5,'category_id','text','Category',1,0,1,1,1,0,'',3),(32,5,'title','text','Title',1,1,1,1,1,1,'',4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,'',5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,'',9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,'',10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,'',12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'',14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,'',15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',0,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',0,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',0,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',0,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(57,7,'nom','text','nom',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:21\"}}',2),(58,7,'slug','text','Slug',1,1,1,1,1,1,NULL,3),(59,7,'adresse','text','Adresse',1,1,1,1,1,1,NULL,4),(60,7,'telephone','number','Telephone',1,1,1,1,1,1,NULL,5),(61,7,'nbre_chambre','number','Nbre Chambre',1,1,1,1,1,1,NULL,6),(62,7,'ville','text','Ville',1,1,1,1,1,1,NULL,7),(63,7,'nbre_de_lit','number','Nbre De Lit',1,1,1,1,1,1,NULL,8),(64,7,'type_de_chambre','text','Type De Chambre',1,1,1,1,1,1,NULL,9),(65,7,'montant','number','Montant',1,1,1,1,1,1,NULL,10),(66,7,'description','rich_text_box','Description',1,1,1,1,1,1,NULL,11),(67,7,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,12),(68,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(69,8,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(70,8,'nom','text','Nom',1,1,1,1,1,1,NULL,2),(71,8,'slug','text','Slug',1,1,1,1,1,1,NULL,3),(72,8,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(73,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(74,9,'id','hidden','Id',1,1,1,1,1,0,NULL,1),(75,9,'product_id','number','Product Id',0,1,1,1,1,1,NULL,2),(76,9,'departement_id','number','Departement Id',0,1,1,1,1,1,NULL,3),(77,9,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,4),(78,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(79,7,'image','image','Image',0,1,1,1,1,1,NULL,12),(80,7,'star','number','Star',0,1,1,1,1,1,NULL,15),(81,7,'images','multiple_images','Images',0,1,1,1,1,1,NULL,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-04-23 14:08:28','2018-04-23 14:08:28'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-04-23 14:08:28','2018-04-23 14:08:28'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-04-23 14:08:28','2018-04-23 14:08:28'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2018-04-23 14:08:32','2018-04-23 14:08:32'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2018-04-23 14:08:33','2018-04-23 14:08:33'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 14:08:34','2018-04-23 14:54:14'),(7,'products','products','Product','Products','voyager-thumb-tack','App\\Product',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 14:23:01','2018-04-23 19:14:41'),(8,'departements','departements','Departement','Departements','voyager-group','App\\Departement',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 19:32:52','2018-04-23 19:32:52'),(9,'departement_product','departement-product','Departement Product','Departement Products','voyager-tag','App\\DepartementProduct',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null}','2018-04-23 19:53:24','2018-04-23 19:56:23');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departement_product`
--

LOCK TABLES `departement_product` WRITE;
/*!40000 ALTER TABLE `departement_product` DISABLE KEYS */;
INSERT INTO `departement_product` VALUES (1,1,8,NULL,NULL),(2,2,8,NULL,NULL),(3,3,8,NULL,NULL),(4,4,8,NULL,NULL),(5,5,8,NULL,NULL),(6,6,8,NULL,NULL),(7,7,6,NULL,NULL),(8,8,9,NULL,NULL),(9,9,9,NULL,NULL),(10,10,9,NULL,NULL),(11,11,9,NULL,NULL),(12,12,6,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-04-23 14:08:29','2018-04-23 14:08:29','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,7,'2018-04-23 14:08:29','2018-04-23 19:54:05','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,6,'2018-04-23 14:08:29','2018-04-23 19:54:05','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,5,'2018-04-23 14:08:29','2018-04-23 19:54:05','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,11,'2018-04-23 14:08:29','2018-04-23 19:53:58',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2018-04-23 14:08:29','2018-04-23 14:50:19','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2018-04-23 14:08:29','2018-04-23 14:50:19','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2018-04-23 14:08:29','2018-04-23 14:50:19','voyager.compass.index',NULL),(9,1,'Settings','','_self','voyager-settings',NULL,NULL,12,'2018-04-23 14:08:29','2018-04-23 19:53:58','voyager.settings.index',NULL),(10,1,'Categories','','_self','voyager-categories',NULL,NULL,10,'2018-04-23 14:08:32','2018-04-23 19:53:58','voyager.categories.index',NULL),(11,1,'Posts','','_self','voyager-news',NULL,NULL,8,'2018-04-23 14:08:33','2018-04-23 19:54:05','voyager.posts.index',NULL),(12,1,'Pages','','_self','voyager-file-text',NULL,NULL,9,'2018-04-23 14:08:34','2018-04-23 19:54:05','voyager.pages.index',NULL),(13,1,'Hooks','','_self','voyager-hook',NULL,5,4,'2018-04-23 14:08:36','2018-04-23 14:50:19','voyager.hooks',NULL),(14,1,'Products','','_self',NULL,NULL,NULL,2,'2018-04-23 14:23:01','2018-04-23 14:50:49','voyager.products.index',NULL),(15,1,'Departements','','_self','voyager-group',NULL,NULL,3,'2018-04-23 19:32:52','2018-04-23 19:33:42','voyager.departements.index',NULL),(16,1,'Departement Products','','_self','voyager-tag',NULL,NULL,4,'2018-04-23 19:53:24','2018-04-23 19:54:04','voyager.departement-product.index',NULL),(17,2,'Accueil','','_self',NULL,'#000000',NULL,1,'2018-04-23 20:44:15','2018-04-24 21:51:53','landing-page','null'),(18,2,'Contact','','_self',NULL,'#000000',NULL,2,'2018-04-23 20:45:48','2018-04-24 21:51:53','contact',NULL),(19,2,'Aide','','_self',NULL,'#000000',NULL,4,'2018-04-23 20:46:44','2018-04-24 21:52:40','/admin','null'),(20,2,'Business','','_self',NULL,'#000000',NULL,3,'2018-04-23 20:47:16','2018-04-24 21:53:07','/admin','null');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(17,'2017_03_06_000000_add_controller_to_data_types_table',1),(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),(19,'2017_04_21_000000_add_order_to_data_rows_table',1),(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),(21,'2017_08_05_000000_add_group_to_settings_table',1),(22,'2017_11_26_013050_add_user_role_relationship',1),(23,'2017_11_26_015000_create_user_roles_table',1),(24,'2018_03_11_000000_add_user_settings',1),(25,'2018_03_14_000000_add_details_to_data_types_table',1),(26,'2018_03_16_000000_make_settings_value_nullable',1),(27,'2018_04_08_080131_create_products_table',1),(28,'2018_04_17_091619_create_departements_table',1),(29,'2018_04_17_094808_create_departement_product_table',1),(30,'2018_04_29_040232_add_image_to_products_table',2),(32,'2018_06_19_104855_add_images_to_products_table',3);
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
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(2,'browse_bread',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(3,'browse_database',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(4,'browse_media',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(5,'browse_compass',NULL,'2018-04-23 14:08:29','2018-04-23 14:08:29'),(6,'browse_menus','menus','2018-04-23 14:08:29','2018-04-23 14:08:29'),(7,'read_menus','menus','2018-04-23 14:08:29','2018-04-23 14:08:29'),(8,'edit_menus','menus','2018-04-23 14:08:29','2018-04-23 14:08:29'),(9,'add_menus','menus','2018-04-23 14:08:30','2018-04-23 14:08:30'),(10,'delete_menus','menus','2018-04-23 14:08:30','2018-04-23 14:08:30'),(11,'browse_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(12,'read_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(13,'edit_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(14,'add_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(15,'delete_roles','roles','2018-04-23 14:08:30','2018-04-23 14:08:30'),(16,'browse_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(17,'read_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(18,'edit_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(19,'add_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(20,'delete_users','users','2018-04-23 14:08:30','2018-04-23 14:08:30'),(21,'browse_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(22,'read_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(23,'edit_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(24,'add_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(25,'delete_settings','settings','2018-04-23 14:08:30','2018-04-23 14:08:30'),(26,'browse_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(27,'read_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(28,'edit_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(29,'add_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(30,'delete_categories','categories','2018-04-23 14:08:32','2018-04-23 14:08:32'),(31,'browse_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(32,'read_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(33,'edit_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(34,'add_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(35,'delete_posts','posts','2018-04-23 14:08:33','2018-04-23 14:08:33'),(36,'browse_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(37,'read_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(38,'edit_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(39,'add_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(40,'delete_pages','pages','2018-04-23 14:08:34','2018-04-23 14:08:34'),(41,'browse_hooks',NULL,'2018-04-23 14:08:37','2018-04-23 14:08:37'),(42,'browse_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(43,'read_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(44,'edit_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(45,'add_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(46,'delete_products','products','2018-04-23 14:23:01','2018-04-23 14:23:01'),(47,'browse_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(48,'read_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(49,'edit_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(50,'add_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(51,'delete_departements','departements','2018-04-23 19:32:52','2018-04-23 19:32:52'),(52,'browse_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(53,'read_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(54,'edit_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(55,'add_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24'),(56,'delete_departement_product','departement_product','2018-04-23 19:53:24','2018-04-23 19:53:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Best Western','best-western','50 Angle Louverture  & geffrard, Pétionville, Port-au-prince, Haiti','38491285',200,'Petion-Ville',400,'Neuf','20000','<p><strong>Affichant</strong> une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville.</p>\r\n<p>Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\smt78xoVAH0udfVw6wx5.jpg','[\"products\\\\June2018\\\\gQpsy1ZsHBXyH75ElaWd.jpg\",\"products\\\\June2018\\\\WVDaeBINrh1LYMT7KkKr.jpg\",\"products\\\\June2018\\\\jjaP75R7fJ7Khd9pQKZa.jpg\",\"products\\\\June2018\\\\WgGGsAGRthpm8uLDjXo7.jpg\"]','2018-04-23 14:02:00','2018-06-19 17:09:08',NULL),(2,'Mariott','mariott','50 Angle Louverture & geffrard','325489324',200,'Petion-Ville',400,'Neuf','2000','<p>Mariott <em>nouvo</em> <strong>hotel</strong></p>','products\\June2018\\1TAeMNySNn7CWIUV5oIY.jpg','[\"products\\\\June2018\\\\cAzTOoDIiHYPvo2b4kqW.jpg\",\"products\\\\June2018\\\\ZHMvnOaNCc5KHVuM5JRE.jpg\",\"products\\\\June2018\\\\ZiH14DQcElRhc8wBU4ar.jpg\"]','2018-04-23 14:02:00','2018-06-19 21:45:23',NULL),(3,'Royal oasis','el-rancho','50 Angle Louverture & geffrard','85',200,'Petion-Ville',400,'Exposer','987','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\gu8HwSSh7f4A3M1GcLEo.jpg',NULL,'2018-04-23 14:02:47','2018-04-29 17:09:42',NULL),(4,'villa-therese','villa-therese','50 Angle Louverture & geffrard','36779098',200,'Petion-Ville',400,'Flamboyant','900','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\8pEa4fF8TfQzXm2rLuyk.jpg',NULL,'2018-04-23 14:02:47','2018-04-29 17:11:52',NULL),(5,'cap-lamandou','cap-lamandou','50 Angle Louverture & geffrard','46534212',200,'Petion-Ville',400,'Exposer','660','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\nu8NbA0RxU1jKAe1fy55.jpg',NULL,'2018-04-23 14:02:47','2018-04-29 17:13:03',NULL),(6,'Florida','florida','50 Angle Louverture & geffrard','31126764',200,'Petion-Ville',400,'Exposer','380','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\I3koMFSHlxnCUv1KQzaK.jpg',NULL,'2018-04-23 14:02:47','2018-04-29 17:14:16',NULL),(7,'Le Relais','lerelais','50 Angle Louverture & geffrard','39478521',200,'Petion-Ville',400,'Foide','477','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\fTAoAnrOqGswLiXjMIuk.jpg',NULL,'2018-04-23 14:02:47','2018-04-29 17:10:56',NULL),(8,'Auberge Villa-Cana','auberge','50 Angle Louverture & geffrard','44',200,'Petion-Ville',400,'Prope','947','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\jXle2D1MAgZmqBdJIpOS.jpg',NULL,'2018-04-23 14:02:47','2018-04-29 17:08:32',NULL),(9,'Samata','samata','50 Angle Louverture & geffrard','35',200,'Petion-Ville',400,'Basse','300','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\May2018\\Q2mi6FD9J75xc7ToKPAt.jpg',NULL,'2018-04-23 14:02:00','2018-05-19 08:54:00',NULL),(10,'Auber-Cayes','auber-cayes','50 Angle Louverture & geffrard','33457898',200,'Petion-Ville',400,'Vielle','500','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\b4vcJvO8lqFrifk9tjcy.jpg',NULL,'2018-04-23 14:02:48','2018-04-29 17:04:05',NULL),(11,'Le Mangier','lemangier','50 Angle Louverture & geffrard','22454478',200,'Petion-Ville',400,'Seine','800','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\u4OqFEyO9Z9Gga5skSpf.jpg',NULL,'2018-04-23 14:02:48','2018-04-29 17:05:10',NULL),(12,'Le Marien','lemarien','50 Angle Louverture & geffrard','87945',200,'Petion-Ville',400,'Exposer','745','<p>Affichant une d&eacute;coration moderne, l&rsquo;&eacute;tablissement BW Premier Petion-Ville, Haiti est situ&eacute; au c&oelig;ur de P&eacute;tion-Ville. Il propose une piscine ext&eacute;rieure et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Un bar &agrave; whisky est &eacute;galement disponible sur place. Dot&eacute;es de la climatisation, les chambres et les suites de luxe disposent toutes d\'une t&eacute;l&eacute;vision par c&acirc;ble &agrave; &eacute;cran plat ainsi que d\'un bureau. Elles sont &eacute;galement &eacute;quip&eacute;es d\'un r&eacute;frig&eacute;rateur, d\'un t&eacute;l&eacute;phone et d\'un coffre-fort. Vous trouverez un restaurant m&eacute;diterran&eacute;en &agrave; 500 m&egrave;tres de l\'&eacute;tablissement BW Premier Petion-Ville, Haiti ainsi qu\'une pizzeria &agrave; seulement 150 m&egrave;tres. Le BW Premier Petion-Ville, Haiti vous proposera &eacute;galement un spa, des salles de r&eacute;union, un centre de remise en forme, un service de nettoyage &agrave; sec et une navette a&eacute;roport. L\'h&ocirc;tel BW Premier Petion-Ville, Haiti se trouve &agrave; 10,5 km de l\'ambassade am&eacute;ricaine et de l\'a&eacute;roport international Toussaint Louverture ainsi qu\'&agrave; seulement 700 m&egrave;tres d\'un quartier commer&ccedil;ant. Ce quartier (P&eacute;tionville) est un choix id&eacute;al pour les voyageurs qui s\'int&eacute;ressent &agrave; ces th&egrave;mes : la relaxation, les climats ensoleill&eacute;s et l\'histoire-&gt;Departement()-&gt;attach(10). Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent emplacement &agrave; Port-au-Prince ! Les clients en sont plus satisfaits en comparaison avec d\'autres &eacute;tablissements dans cette ville. Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de 8,6 pour un s&eacute;jour &agrave; deux. Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Port-au-Prince ! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\April2018\\BdO7MbhV7OFne7hKpdZj.jpg',NULL,'2018-04-23 14:02:48','2018-04-29 17:06:08',NULL),(16,'Royal Decameron','royal-decameron','Cote des mer des caraibes','911',100,'A confirmer',380,'special','500','<p>Implant&eacute; sur une plage de la mer des Cara&iuml;bes, ce complexe tout compris situ&eacute; &agrave; Runaway Beach vous propose des sports nautiques, 2 piscines ext&eacute;rieures et 3 restaurants. Il occupe un jardin tropical de 12 hectares.</p>\r\n<p>Le Royal Decameron Club Caribbean Resort met &agrave; votre disposition 2 courts de tennis, un terrain de beach-volley et un centre de remise en forme. Vous pourrez prendre des cours de plong&eacute;e sous-marine, mais aussi faire de la plong&eacute;e avec tuba et de la planche &agrave; voile.</p>\r\n<p>Tous les cottages et les chambres du Decameron Club Royal Caribbean Resort poss&egrave;dent du carrelage et donnent sur le jardin. Ils sont &eacute;quip&eacute;s d\'une t&eacute;l&eacute;vision par c&acirc;ble.</p>\r\n<p>Le restaurant Pick a Pepper sert le petit-d&eacute;jeuner, le d&eacute;jeuner et le d&icirc;ner sous forme de buffet, tandis que les restaurants Nyaming et Jazmine Delta proposent des menus &agrave; la carte. Vous pourrez &eacute;galement profiter des bars install&eacute;s &agrave; la plage et au bord de la piscine.</p>\r\n<p>La crique des dauphins et les chutes de Dunns sont accessibles &agrave; 20 minutes de route du complexe. </p>\r\n<p class=\"hp-desc-review-highlight hp-desc-traveller-type--ph-v0\">Les couples appr&eacute;cient particuli&egrave;rement l\'emplacement de cet &eacute;tablissement. Ils lui donnent la note de <strong>8,0</strong> pour un s&eacute;jour &agrave; deux.</p>\r\n<p class=\"hp-desc-review-highlight\">Cet &eacute;tablissement a &eacute;galement &eacute;t&eacute; bien not&eacute; pour son excellent rapport qualit&eacute;/prix &agrave; Runaway Bay&nbsp;! Les clients en ont plus pour leur argent en comparaison avec d\'autres &eacute;tablissements dans cette ville.</p>','products\\May2018\\747Tv6jxEHqcYSPO5VOK.jpg',NULL,'2018-05-07 20:13:19','2018-05-07 20:13:19',NULL),(17,'newHotel','new-hotel','Centre ville','34785120',200,'Ville',25,'Foide','213','<p>Test</p>','products\\May2018\\7q65Y12HqcugBpPKjTNK.jpg',NULL,'2018-05-15 23:38:41','2018-05-15 23:38:41',NULL),(21,'welcome','welcome.','Centre ville','34213421',200,'12',32,'24','123','<p>Mak</p>','products\\May2018\\A30CDIbzWVwZJaUoy6bi.jpg','[\"products\\\\June2018\\\\22NJ87P7ynvjpXwU51Ad.jpg\",\"products\\\\June2018\\\\ZWgJ3CmONPEdzD1F6Ejs.jpg\",\"products\\\\June2018\\\\gRBUyqfVrisAA9O98s5j.jpg\"]','2018-05-16 00:22:02','2018-06-19 16:34:36',NULL),(23,'Auberge Pont Gaudin','auberge-pont-godin','Route nationale # 1 Pont-gaudin Gonaives, 4110 Gonaïves, Haïti','50941879431',10,'Gonaives',28,'Simple','2403','<p>&nbsp;Pont gaudin Hotel</p>\r\n<p>&nbsp;</p>','products\\June2018\\7PeNSfwpLXCiAkwfrCal.jpg',NULL,'2018-06-16 01:38:13','2018-06-19 21:02:18',NULL),(24,'Auberge Pont Gaudin','auberge-pont-godin','Route nationale # 1 Pont-gaudin Gonaives, 4110 Gonaïves, Haïti','50941879431',10,'Gonaives',28,'Simple','2403','<p>&nbsp;Pont gaudin Hotel</p>\r\n<p>&nbsp;</p>','products\\June2018\\2wxiA3ktckiGFPlbJlsF.jpg',NULL,'2018-06-16 01:39:47','2018-06-16 01:39:47',NULL),(25,'Auberge Pont Gaudin','auberge-pont-godin','Route nationale # 1 Pont-gaudin Gonaives, 4110 Gonaïves, Haïti','50941879431',10,'Gonaives',28,'Simple','2403','<p>&nbsp;Pont gaudin Hotel</p>\r\n<p>&nbsp;</p>','products\\June2018\\T75uUezzD373IzMEWYex.jpg',NULL,'2018-06-16 01:40:16','2018-06-18 23:42:10',2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users\\May2018\\CCaNdwo7eO7jKeY8R3tt.jpg','$2y$10$e28sa4eGY5g63hmqsGHmjuRufTkVtlWr93h4AHmAt1vL1aMfVLKn6','9kNcTq0l9K9JL93BEgqCi7LDqFPaiUxHnki7JfODdLLkFz9pST7S1W4nUuQr','{\"locale\":\"en\"}','2018-04-23 14:08:33','2018-05-03 21:45:04',NULL,NULL),(2,2,'cerome','ceromedominique80@gmail.com','default.jpg','$2y$10$JVq2TmqImEYDSURpTC3OI.CU1BiUCTBVaGe2DZSCKvMdoNOL9CCmm','B9CTFzsVCD67pnEFlhMBWXcuLq4goVvTbAvABdUP4tojtCxKdDmxlGluHyiX',NULL,'2018-05-03 21:02:12','2018-05-03 21:02:12',NULL,NULL),(3,2,'Makenley Tiophile','makenley1@gmail.com','default.jpg',NULL,'31g7NymPw9NE7xSpKKkX4w1Rrqqphdnd8nAy6R2Y6AGSe2717LoVDMZ3boDR',NULL,'2018-05-21 13:07:59','2018-05-21 13:08:00','GOOGLE','116030885690705426017'),(4,2,'Guerrier Djidson','pamerite50@gmail.com','default.jpg',NULL,'lC8LskCxp0IgWOqiMUSxGOoxYePMwTvtAtbmCq03JOeiiQJoX3C2wfVi0FWF',NULL,'2018-05-21 13:25:03','2018-05-21 13:25:04','GOOGLE','107111064007503020687'),(6,2,'Vala Junir','valajunir2@gmail.com','1528467019.jpg',NULL,'fRATuHSTC41HFEsQDQi2qkpOHEi1MtyrbJ8G1v6WcxEUrhl1vP0ZnAcvfpyg','{\"locale\":\"en\"}','2018-06-08 19:09:18','2018-06-12 20:21:06','GOOGLE','110862248229090285036');
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

-- Dump completed on 2018-06-19 11:55:51
