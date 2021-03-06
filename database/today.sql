-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: scotchbox
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Current Database: `scotchbox`
--

-- CREATE DATABASE /*!32312 IF NOT EXISTS*/ `scotchbox` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `siskiyourappellers`;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_references` (`reference`),
  UNIQUE KEY `unique_domains` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'Siskiyou Rappellers','src','192.168.33.10',1);
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications_domains`
--

DROP TABLE IF EXISTS `applications_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applications_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_domains` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications_domains`
--

LOCK TABLES `applications_domains` WRITE;
/*!40000 ALTER TABLE `applications_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_addons_extensions`
--

DROP TABLE IF EXISTS `src_addons_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_addons_extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_extensions` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_addons_extensions`
--

LOCK TABLES `src_addons_extensions` WRITE;
/*!40000 ALTER TABLE `src_addons_extensions` DISABLE KEYS */;
INSERT INTO `src_addons_extensions` VALUES (1,'anomaly.extension.default_authenticator',1,1),(2,'anomaly.extension.default_page_handler',1,1),(3,'anomaly.extension.local_storage_adapter',1,1),(4,'anomaly.extension.page_link_type',1,1),(5,'anomaly.extension.robots',1,1),(6,'anomaly.extension.sitemap',1,1),(7,'anomaly.extension.throttle_security_check',1,1),(8,'anomaly.extension.url_link_type',1,1),(9,'anomaly.extension.user_security_check',1,1),(10,'anomaly.extension.xml_feed_widget',1,1);
/*!40000 ALTER TABLE `src_addons_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_addons_modules`
--

DROP TABLE IF EXISTS `src_addons_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_addons_modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_modules` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_addons_modules`
--

LOCK TABLES `src_addons_modules` WRITE;
/*!40000 ALTER TABLE `src_addons_modules` DISABLE KEYS */;
INSERT INTO `src_addons_modules` VALUES (1,'anomaly.module.addons',1,1),(2,'anomaly.module.configuration',1,1),(3,'anomaly.module.dashboard',1,1),(4,'anomaly.module.files',1,1),(5,'anomaly.module.navigation',1,1),(6,'anomaly.module.pages',1,1),(7,'anomaly.module.posts',1,1),(8,'anomaly.module.preferences',1,1),(9,'anomaly.module.redirects',1,1),(10,'anomaly.module.settings',1,1),(11,'anomaly.module.users',1,1),(12,'anomaly.module.variables',1,1);
/*!40000 ALTER TABLE `src_addons_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_configuration_configuration`
--

DROP TABLE IF EXISTS `src_configuration_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_configuration_configuration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_configuration_configuration`
--

LOCK TABLES `src_configuration_configuration` WRITE;
/*!40000 ALTER TABLE `src_configuration_configuration` DISABLE KEYS */;
INSERT INTO `src_configuration_configuration` VALUES (1,1,'2016-11-22 20:16:57',NULL,NULL,NULL,'1','anomaly.extension.xml_feed_widget::url','http://www.pyrocms.com/posts/rss.xml');
/*!40000 ALTER TABLE `src_configuration_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_dashboard_dashboards`
--

DROP TABLE IF EXISTS `src_dashboard_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_dashboard_dashboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_dashboard_dashboards`
--

LOCK TABLES `src_dashboard_dashboards` WRITE;
/*!40000 ALTER TABLE `src_dashboard_dashboards` DISABLE KEYS */;
INSERT INTO `src_dashboard_dashboards` VALUES (1,1,'2016-11-22 20:16:56',NULL,NULL,NULL,'welcome','24');
/*!40000 ALTER TABLE `src_dashboard_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_dashboard_dashboards_allowed_roles`
--

DROP TABLE IF EXISTS `src_dashboard_dashboards_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_dashboard_dashboards_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_dashboard_dashboards_allowed_roles`
--

LOCK TABLES `src_dashboard_dashboards_allowed_roles` WRITE;
/*!40000 ALTER TABLE `src_dashboard_dashboards_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_dashboard_dashboards_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_dashboard_dashboards_translations`
--

DROP TABLE IF EXISTS `src_dashboard_dashboards_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_dashboard_dashboards_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `dashboard_dashboards_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_dashboard_dashboards_translations`
--

LOCK TABLES `src_dashboard_dashboards_translations` WRITE;
/*!40000 ALTER TABLE `src_dashboard_dashboards_translations` DISABLE KEYS */;
INSERT INTO `src_dashboard_dashboards_translations` VALUES (1,1,'2016-11-22 20:16:56',NULL,'2016-11-22 20:16:56',NULL,'en','Welcome','This is the default dashboard for PyroCMS.');
/*!40000 ALTER TABLE `src_dashboard_dashboards_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_dashboard_widgets`
--

DROP TABLE IF EXISTS `src_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_dashboard_widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `column` int(11) NOT NULL DEFAULT '1',
  `dashboard_id` int(11) NOT NULL,
  `pinned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_dashboard_widgets`
--

LOCK TABLES `src_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `src_dashboard_widgets` DISABLE KEYS */;
INSERT INTO `src_dashboard_widgets` VALUES (1,1,'2016-11-22 20:16:57',NULL,NULL,NULL,'anomaly.extension.xml_feed_widget',1,1,0);
/*!40000 ALTER TABLE `src_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_dashboard_widgets_allowed_roles`
--

DROP TABLE IF EXISTS `src_dashboard_widgets_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_dashboard_widgets_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_dashboard_widgets_allowed_roles`
--

LOCK TABLES `src_dashboard_widgets_allowed_roles` WRITE;
/*!40000 ALTER TABLE `src_dashboard_widgets_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_dashboard_widgets_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_dashboard_widgets_translations`
--

DROP TABLE IF EXISTS `src_dashboard_widgets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_dashboard_widgets_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `dashboard_widgets_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_dashboard_widgets_translations`
--

LOCK TABLES `src_dashboard_widgets_translations` WRITE;
/*!40000 ALTER TABLE `src_dashboard_widgets_translations` DISABLE KEYS */;
INSERT INTO `src_dashboard_widgets_translations` VALUES (1,1,'2016-11-22 20:16:57',NULL,'2016-11-22 20:16:57',NULL,'en','Recent News','Recent news from http://pyrocms.com/');
/*!40000 ALTER TABLE `src_dashboard_widgets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_failed_jobs`
--

DROP TABLE IF EXISTS `src_failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_failed_jobs`
--

LOCK TABLES `src_failed_jobs` WRITE;
/*!40000 ALTER TABLE `src_failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_disks`
--

DROP TABLE IF EXISTS `src_files_disks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_disks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adapter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_disks`
--

LOCK TABLES `src_files_disks` WRITE;
/*!40000 ALTER TABLE `src_files_disks` DISABLE KEYS */;
INSERT INTO `src_files_disks` VALUES (1,1,'2016-11-22 20:16:58',NULL,NULL,NULL,'local','anomaly.extension.local_storage_adapter');
/*!40000 ALTER TABLE `src_files_disks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_disks_translations`
--

DROP TABLE IF EXISTS `src_files_disks_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_disks_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `files_disks_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_disks_translations`
--

LOCK TABLES `src_files_disks_translations` WRITE;
/*!40000 ALTER TABLE `src_files_disks_translations` DISABLE KEYS */;
INSERT INTO `src_files_disks_translations` VALUES (1,1,'2016-11-22 20:16:58',NULL,'2016-11-22 20:16:58',NULL,'en','Local','A local (public) storage disk.');
/*!40000 ALTER TABLE `src_files_disks_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_documents`
--

DROP TABLE IF EXISTS `src_files_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_documents`
--

LOCK TABLES `src_files_documents` WRITE;
/*!40000 ALTER TABLE `src_files_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_files_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_documents_translations`
--

DROP TABLE IF EXISTS `src_files_documents_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_documents_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_documents_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_documents_translations`
--

LOCK TABLES `src_files_documents_translations` WRITE;
/*!40000 ALTER TABLE `src_files_documents_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_files_documents_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_files`
--

DROP TABLE IF EXISTS `src_files_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `disk_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `height` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_files`
--

LOCK TABLES `src_files_files` WRITE;
/*!40000 ALTER TABLE `src_files_files` DISABLE KEYS */;
INSERT INTO `src_files_files` VALUES (1,1,'2016-12-05 04:39:51',1,'2016-12-05 04:39:51',1,NULL,'banner-01.jpg',1,1,'jpg',140839,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'780','2500'),(2,2,'2016-12-05 05:34:10',1,'2016-12-05 05:34:10',1,NULL,'bg1.jpg',1,1,'jpg',790366,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'1200','2050'),(3,3,'2016-12-10 05:29:33',1,'2016-12-10 05:29:33',1,NULL,'IMG_7081.jpg',1,1,'jpg',693293,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'900','4000'),(4,4,'2017-01-21 20:22:45',1,'2017-01-21 20:22:45',1,NULL,'forest.png',1,1,'png',19251,'image/png',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'512','512'),(5,5,'2017-01-22 04:34:59',1,'2017-01-22 04:34:59',1,NULL,'20160613150205.jpg',1,1,'jpg',104622,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'750','814');
/*!40000 ALTER TABLE `src_files_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_folders`
--

DROP TABLE IF EXISTS `src_files_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_folders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `disk_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_types` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_folders`
--

LOCK TABLES `src_files_folders` WRITE;
/*!40000 ALTER TABLE `src_files_folders` DISABLE KEYS */;
INSERT INTO `src_files_folders` VALUES (1,1,'2016-11-22 20:16:58',NULL,NULL,NULL,NULL,1,'images','a:3:{i:0;s:3:\"png\";i:1;s:4:\"jpeg\";i:2;s:3:\"jpg\";}'),(2,2,'2016-11-22 20:16:58',NULL,NULL,NULL,NULL,1,'documents','a:2:{i:0;s:3:\"pdf\";i:1;s:4:\"docx\";}');
/*!40000 ALTER TABLE `src_files_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_folders_translations`
--

DROP TABLE IF EXISTS `src_files_folders_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_folders_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `files_folders_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_folders_translations`
--

LOCK TABLES `src_files_folders_translations` WRITE;
/*!40000 ALTER TABLE `src_files_folders_translations` DISABLE KEYS */;
INSERT INTO `src_files_folders_translations` VALUES (1,1,'2016-11-22 20:16:58',NULL,'2016-11-22 20:16:58',NULL,'en','Images','A folder for images.'),(2,2,'2016-11-22 20:16:59',NULL,'2016-11-22 20:16:59',NULL,'en','Documents','A folder for documents.');
/*!40000 ALTER TABLE `src_files_folders_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_images`
--

DROP TABLE IF EXISTS `src_files_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_images`
--

LOCK TABLES `src_files_images` WRITE;
/*!40000 ALTER TABLE `src_files_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_files_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_files_images_translations`
--

DROP TABLE IF EXISTS `src_files_images_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_files_images_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `files_images_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_images_translations`
--

LOCK TABLES `src_files_images_translations` WRITE;
/*!40000 ALTER TABLE `src_files_images_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_files_images_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_jobs`
--

DROP TABLE IF EXISTS `src_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_reserved_at_index` (`queue`,`reserved_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_jobs`
--

LOCK TABLES `src_jobs` WRITE;
/*!40000 ALTER TABLE `src_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_migrations`
--

DROP TABLE IF EXISTS `src_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_migrations`
--

LOCK TABLES `src_migrations` WRITE;
/*!40000 ALTER TABLE `src_migrations` DISABLE KEYS */;
INSERT INTO `src_migrations` VALUES (1,'2015_03_15_171404_create_applications_table',1),(2,'2015_03_15_171506_create_applications_domains_table',1),(3,'2015_03_15_171506_create_jobs_table',2),(4,'2015_03_15_171507_create_failed_jobs_table',2),(5,'2015_03_15_171508_create_sessions_table',2),(6,'2015_03_15_171620_create_streams_tables',2),(7,'2015_03_15_171646_create_fields_tables',2),(8,'2015_03_15_171720_create_assignments_tables',2),(9,'2015_03_15_171838_create_modules_table',2),(10,'2015_03_15_171926_create_extensions_table',2),(11,'2016_08_30_185635_create_notifications_table',2),(12,'2016_09_02_164448_add_searchable_column_to_streams',2),(13,'2015_03_25_091755_anomaly.module.configuration__create_configuration_fields',3),(14,'2015_03_25_091845_anomaly.module.configuration__create_configuration_stream',3),(15,'2015_11_01_164326_anomaly.module.dashboard__create_dashboard_fields',4),(16,'2015_11_01_170645_anomaly.module.dashboard__create_dashboards_stream',4),(17,'2015_11_01_170650_anomaly.module.dashboard__create_widgets_stream',4),(18,'2015_03_05_021725_anomaly.module.files__create_files_fields',5),(19,'2015_03_05_022227_anomaly.module.files__create_disks_stream',5),(20,'2015_06_09_031343_anomaly.module.files__create_folders_stream',5),(21,'2015_06_09_031351_anomaly.module.files__create_files_stream',5),(22,'2016_08_29_151020_anomaly.module.files__remove_required_from_entry_assignment',5),(23,'2016_09_02_175659_anomaly.module.files__make_files_searchable',5),(24,'2016_10_05_221741_anomaly.module.files__make_disks_sortable',5),(25,'2015_05_21_061832_anomaly.module.navigation__create_navigation_fields',6),(26,'2015_05_21_062115_anomaly.module.navigation__create_menus_stream',6),(27,'2015_05_21_064952_anomaly.module.navigation__create_links_stream',6),(28,'2015_03_20_171947_anomaly.module.pages__create_pages_fields',7),(29,'2015_03_20_171955_anomaly.module.pages__create_pages_stream',7),(30,'2015_04_22_150211_anomaly.module.pages__create_types_stream',7),(31,'2016_09_02_175135_anomaly.module.pages__make_pages_searchable',7),(32,'2015_03_20_184103_anomaly.module.posts__create_posts_fields',8),(33,'2015_03_20_184141_anomaly.module.posts__create_categories_stream',8),(34,'2015_03_20_184148_anomaly.module.posts__create_posts_stream',8),(35,'2015_05_16_050818_anomaly.module.posts__create_types_stream',8),(36,'2016_09_02_175531_anomaly.module.posts__make_posts_searchable',8),(37,'2015_02_27_101227_anomaly.module.preferences__create_preferences_fields',9),(38,'2015_02_27_101300_anomaly.module.preferences__create_preferences_streams',9),(39,'2016_11_16_151654_anomaly.module.preferences__update_user_related_config',9),(40,'2015_03_21_153325_anomaly.module.redirects__create_redirects_fields',10),(41,'2015_03_21_153326_anomaly.module.redirects__create_redirects_stream',10),(42,'2015_02_27_101410_anomaly.module.settings__create_settings_fields',11),(43,'2015_02_27_101510_anomaly.module.settings__create_settings_stream',11),(44,'2015_02_27_101816_anomaly.module.users__create_users_fields',12),(45,'2015_02_27_101851_anomaly.module.users__create_users_stream',12),(46,'2015_02_27_101940_anomaly.module.users__create_roles_stream',12),(47,'2016_09_02_175848_anomaly.module.users__make_users_searchable',12),(48,'2015_06_02_170526_anomaly.extension.page_link_type__create_page_link_type_fields',13),(49,'2015_06_02_170542_anomaly.extension.page_link_type__create_page_links_stream',13),(50,'2015_05_24_201105_anomaly.extension.url_link_type__create_url_link_type_fields',14),(51,'2015_05_24_201134_anomaly.extension.url_link_type__create_links_stream',14);
/*!40000 ALTER TABLE `src_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_navigation_links`
--

DROP TABLE IF EXISTS `src_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_navigation_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_navigation_links`
--

LOCK TABLES `src_navigation_links` WRITE;
/*!40000 ALTER TABLE `src_navigation_links` DISABLE KEYS */;
INSERT INTO `src_navigation_links` VALUES (1,1,'2016-11-22 20:17:01',NULL,NULL,NULL,'2016-12-10 10:45:15',1,'anomaly.extension.url_link_type',1,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(2,2,'2016-11-22 20:17:01',NULL,NULL,NULL,'2016-12-10 10:45:15',1,'anomaly.extension.url_link_type',2,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(3,1,'2016-12-07 09:22:35',1,'2016-12-09 05:41:37',1,NULL,2,'anomaly.extension.url_link_type',3,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(4,2,'2016-12-07 09:23:43',1,'2016-12-09 05:41:37',1,NULL,2,'anomaly.extension.url_link_type',4,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(5,5,'2016-12-09 07:02:18',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',5,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(6,6,'2016-12-09 07:02:50',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',6,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(7,7,'2016-12-09 07:03:29',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',7,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(8,8,'2016-12-09 07:04:12',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',8,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(9,9,'2016-12-09 07:04:40',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',9,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(10,10,'2016-12-09 07:05:08',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',10,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(11,11,'2016-12-09 07:06:06',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',11,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(12,12,'2016-12-09 07:12:37',1,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',12,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(13,13,'2016-12-09 07:12:57',1,'2017-01-12 23:29:39',4,NULL,2,'anomaly.extension.url_link_type',13,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(14,14,'2016-12-09 07:13:41',1,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',14,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(15,13,'2017-01-12 21:17:39',4,NULL,NULL,NULL,3,'anomaly.extension.url_link_type',15,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(16,14,'2017-01-12 21:19:24',4,NULL,NULL,NULL,3,'anomaly.extension.url_link_type',16,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(17,15,'2017-01-12 21:20:31',4,NULL,NULL,NULL,3,'anomaly.extension.url_link_type',17,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(18,16,'2017-01-12 21:21:20',4,NULL,NULL,NULL,3,'anomaly.extension.url_link_type',18,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(19,17,'2017-01-12 21:22:17',4,NULL,NULL,NULL,3,'anomaly.extension.url_link_type',19,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(20,18,'2017-01-12 21:23:17',4,NULL,NULL,NULL,3,'anomaly.extension.url_link_type',20,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(21,19,'2017-01-12 21:25:43',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',21,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(22,20,'2017-01-12 21:27:13',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',22,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(23,21,'2017-01-12 21:28:00',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',23,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(24,22,'2017-01-12 21:28:33',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',24,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(25,23,'2017-01-12 21:29:48',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',25,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(26,24,'2017-01-12 21:30:51',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',26,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(27,25,'2017-01-12 21:32:23',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',27,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(28,26,'2017-01-12 21:49:38',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',28,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(29,27,'2017-01-12 21:50:11',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',29,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(30,28,'2017-01-12 21:51:01',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',30,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(31,29,'2017-01-12 21:51:42',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',31,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(32,30,'2017-01-12 21:52:08',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',32,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(33,31,'2017-01-12 21:52:43',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',33,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(34,32,'2017-01-12 21:53:30',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',34,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(35,33,'2017-01-12 21:53:58',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',35,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(36,34,'2017-01-12 21:56:58',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',36,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(37,35,'2017-01-12 22:00:36',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',37,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(38,36,'2017-01-12 22:01:03',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',38,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(39,37,'2017-01-12 22:01:41',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',39,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(40,38,'2017-01-12 22:02:42',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',40,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(41,39,'2017-01-12 22:03:29',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',41,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(42,40,'2017-01-12 22:03:55',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',42,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(43,41,'2017-01-12 22:04:32',4,NULL,NULL,NULL,9,'anomaly.extension.url_link_type',43,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(44,42,'2017-01-12 22:11:33',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',44,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(45,43,'2017-01-12 22:12:23',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',45,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(46,44,'2017-01-12 22:12:50',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',46,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(47,45,'2017-01-12 22:13:25',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',47,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(48,46,'2017-01-12 22:14:38',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',48,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(49,47,'2017-01-12 22:15:08',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',49,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(50,48,'2017-01-12 22:15:43',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',50,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(51,49,'2017-01-12 22:16:49',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',51,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(52,50,'2017-01-12 22:17:35',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',52,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(53,51,'2017-01-12 22:56:27',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',53,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(54,52,'2017-01-12 22:57:11',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',54,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(55,53,'2017-01-12 22:58:39',4,NULL,NULL,NULL,8,'anomaly.extension.url_link_type',55,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(56,54,'2017-01-12 22:59:57',4,NULL,NULL,NULL,6,'anomaly.extension.url_link_type',56,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(57,55,'2017-01-12 23:00:52',4,NULL,NULL,NULL,6,'anomaly.extension.url_link_type',57,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(58,56,'2017-01-12 23:01:27',4,NULL,NULL,NULL,6,'anomaly.extension.url_link_type',58,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(59,57,'2017-01-12 23:02:14',4,NULL,NULL,NULL,6,'anomaly.extension.url_link_type',59,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(60,58,'2017-01-12 23:03:01',4,NULL,NULL,NULL,5,'anomaly.extension.url_link_type',60,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(61,59,'2017-01-12 23:03:39',4,NULL,NULL,NULL,5,'anomaly.extension.url_link_type',61,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(62,60,'2017-01-12 23:04:09',4,NULL,NULL,NULL,5,'anomaly.extension.url_link_type',62,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(63,61,'2017-01-12 23:17:34',4,NULL,NULL,NULL,10,'anomaly.extension.url_link_type',63,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(64,62,'2017-01-12 23:19:06',4,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',64,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(65,63,'2017-01-12 23:22:29',4,NULL,NULL,NULL,4,'anomaly.extension.url_link_type',65,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(66,64,'2017-01-12 23:23:03',4,NULL,NULL,NULL,4,'anomaly.extension.url_link_type',66,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(67,65,'2017-01-12 23:23:42',4,NULL,NULL,NULL,4,'anomaly.extension.url_link_type',67,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(68,66,'2017-01-12 23:24:32',4,NULL,NULL,NULL,4,'anomaly.extension.url_link_type',68,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(69,67,'2017-01-12 23:26:16',4,NULL,NULL,NULL,4,'anomaly.extension.url_link_type',69,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(70,68,'2017-01-12 23:27:21',4,NULL,NULL,NULL,4,'anomaly.extension.url_link_type',70,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(71,69,'2017-01-12 23:31:39',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',71,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(72,70,'2017-01-12 23:32:31',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',72,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(73,71,'2017-01-12 23:33:24',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',73,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(74,72,'2017-01-12 23:34:12',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',74,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(75,73,'2017-01-12 23:35:58',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',75,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(76,74,'2017-01-12 23:36:37',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',76,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(77,75,'2017-01-12 23:37:07',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',77,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(78,76,'2017-01-12 23:37:49',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',78,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(79,77,'2017-01-12 23:38:18',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',79,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(80,78,'2017-01-12 23:39:29',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',80,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(81,79,'2017-01-12 23:40:08',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',81,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(82,80,'2017-01-12 23:41:01',4,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',82,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL);
/*!40000 ALTER TABLE `src_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_navigation_links_allowed_roles`
--

DROP TABLE IF EXISTS `src_navigation_links_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_navigation_links_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_navigation_links_allowed_roles`
--

LOCK TABLES `src_navigation_links_allowed_roles` WRITE;
/*!40000 ALTER TABLE `src_navigation_links_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_navigation_links_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_navigation_menus`
--

DROP TABLE IF EXISTS `src_navigation_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_navigation_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_navigation_menus`
--

LOCK TABLES `src_navigation_menus` WRITE;
/*!40000 ALTER TABLE `src_navigation_menus` DISABLE KEYS */;
INSERT INTO `src_navigation_menus` VALUES (1,1,'2016-11-22 20:17:00',NULL,NULL,NULL,'2016-12-10 10:45:15','footer'),(2,2,'2016-12-07 09:19:26',1,'2016-12-09 06:57:11',1,NULL,'fire_intel'),(3,3,'2016-12-09 06:54:32',1,NULL,NULL,NULL,'mobile_apps_android'),(4,4,'2016-12-09 06:54:41',1,NULL,NULL,NULL,'news'),(5,5,'2016-12-09 06:54:54',1,NULL,NULL,NULL,'mapping'),(6,6,'2016-12-09 06:55:03',1,NULL,NULL,NULL,'news_and_local_info'),(7,7,'2016-12-09 06:55:18',1,NULL,NULL,NULL,'administrative'),(8,8,'2016-12-09 06:55:50',1,NULL,NULL,NULL,'national_rappel_bases'),(9,9,'2016-12-09 06:55:59',1,NULL,NULL,NULL,'training'),(10,10,'2016-12-09 06:56:08',1,NULL,NULL,NULL,'employee_assistance');
/*!40000 ALTER TABLE `src_navigation_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_navigation_menus_translations`
--

DROP TABLE IF EXISTS `src_navigation_menus_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_navigation_menus_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `navigation_menus_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_navigation_menus_translations`
--

LOCK TABLES `src_navigation_menus_translations` WRITE;
/*!40000 ALTER TABLE `src_navigation_menus_translations` DISABLE KEYS */;
INSERT INTO `src_navigation_menus_translations` VALUES (1,1,'2016-11-22 20:17:00',NULL,'2016-11-22 20:17:00',NULL,'en','Footer','This is the footer.'),(2,2,'2016-12-07 09:19:26',NULL,'2016-12-09 06:57:11',1,'en','Fire Intel','Links that appear on the Intelligence page'),(3,3,'2016-12-09 06:54:32',NULL,'2016-12-09 06:54:32',1,'en','Mobile Apps (Android)','Links to helpful Android apps in the Google Play store.'),(4,4,'2016-12-09 06:54:41',NULL,'2016-12-09 06:54:41',1,'en','News',NULL),(5,5,'2016-12-09 06:54:54',NULL,'2016-12-09 06:54:54',1,'en','Mapping',NULL),(6,6,'2016-12-09 06:55:03',NULL,'2016-12-09 06:55:30',1,'en','Hiring & Local Info',NULL),(7,7,'2016-12-09 06:55:18',NULL,'2016-12-09 06:55:18',1,'en','Administrative',NULL),(8,8,'2016-12-09 06:55:50',NULL,'2016-12-09 06:55:50',1,'en','National Rappel Bases',NULL),(9,9,'2016-12-09 06:55:59',NULL,'2016-12-09 06:55:59',1,'en','Training',NULL),(10,10,'2016-12-09 06:56:08',NULL,'2016-12-09 06:56:08',1,'en','Employee Assistance',NULL);
/*!40000 ALTER TABLE `src_navigation_menus_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_notifications`
--

DROP TABLE IF EXISTS `src_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) unsigned NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_notifications`
--

LOCK TABLES `src_notifications` WRITE;
/*!40000 ALTER TABLE `src_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_page_link_type_pages`
--

DROP TABLE IF EXISTS `src_page_link_type_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_page_link_type_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_page_link_type_pages`
--

LOCK TABLES `src_page_link_type_pages` WRITE;
/*!40000 ALTER TABLE `src_page_link_type_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_page_link_type_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_page_link_type_pages_translations`
--

DROP TABLE IF EXISTS `src_page_link_type_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_page_link_type_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `page_link_type_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_page_link_type_pages_translations`
--

LOCK TABLES `src_page_link_type_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_page_link_type_pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_page_link_type_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_blog_pages`
--

DROP TABLE IF EXISTS `src_pages_blog_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_blog_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `slogan_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_blog_pages`
--

LOCK TABLES `src_pages_blog_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_blog_pages` DISABLE KEYS */;
INSERT INTO `src_pages_blog_pages` VALUES (1,1,'2016-11-23 03:53:37',1,'2016-12-05 05:39:10',1,NULL,1,'Updates from the field');
/*!40000 ALTER TABLE `src_pages_blog_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_blog_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_blog_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_blog_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_blog_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_blog_pages_translations`
--

LOCK TABLES `src_pages_blog_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_blog_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_blog_pages_translations` VALUES (1,1,'2016-11-23 03:53:37',NULL,'2016-11-23 03:53:37',1,'en');
/*!40000 ALTER TABLE `src_pages_blog_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_default_pages`
--

DROP TABLE IF EXISTS `src_pages_default_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_default_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `slogan_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_default_pages`
--

LOCK TABLES `src_pages_default_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_default_pages` DISABLE KEYS */;
INSERT INTO `src_pages_default_pages` VALUES (1,1,'2016-11-22 20:17:03',NULL,NULL,NULL,'2016-12-04 20:49:51',NULL,NULL),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:19',1,'2016-12-10 06:04:56',2,NULL);
/*!40000 ALTER TABLE `src_pages_default_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_default_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_default_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_default_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pages_default_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_default_pages_translations`
--

LOCK TABLES `src_pages_default_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_default_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_default_pages_translations` VALUES (1,1,'2016-11-22 20:17:03',NULL,'2016-12-04 20:28:36',1,'en',NULL),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:19',1,'en','<p>Drop us a line! We\'d love to hear from you!</p>\r\n<p><br></p>\r\n<p>{{ form(\'contact\').to(\'example@domain.com\')|raw }}</p>');
/*!40000 ALTER TABLE `src_pages_default_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_gallery_pages`
--

DROP TABLE IF EXISTS `src_pages_gallery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_gallery_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slogan_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_gallery_pages`
--

LOCK TABLES `src_pages_gallery_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_gallery_pages` DISABLE KEYS */;
INSERT INTO `src_pages_gallery_pages` VALUES (1,1,'2017-01-22 01:26:30',1,'2017-01-22 18:13:11',1,NULL,'Sweet, sweet memories.',NULL);
/*!40000 ALTER TABLE `src_pages_gallery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_gallery_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_gallery_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_gallery_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_gallery_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_gallery_pages_translations`
--

LOCK TABLES `src_pages_gallery_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_gallery_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_gallery_pages_translations` VALUES (1,1,'2017-01-22 01:26:30',NULL,'2017-01-22 01:26:30',1,'en');
/*!40000 ALTER TABLE `src_pages_gallery_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_home_pages`
--

DROP TABLE IF EXISTS `src_pages_home_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_home_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `about_us_left_column` text COLLATE utf8_unicode_ci,
  `about_us_center_column` text COLLATE utf8_unicode_ci,
  `about_us_right_column` text COLLATE utf8_unicode_ci,
  `slogan_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slogan_line_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_left_column` text COLLATE utf8_unicode_ci,
  `content_middle_column` text COLLATE utf8_unicode_ci,
  `content_right_column` text COLLATE utf8_unicode_ci,
  `services_1` text COLLATE utf8_unicode_ci,
  `services_2` text COLLATE utf8_unicode_ci,
  `services_3` text COLLATE utf8_unicode_ci,
  `services_4` text COLLATE utf8_unicode_ci,
  `services_1_title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services_2_title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services_3_title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services_4_title` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_home_pages`
--

LOCK TABLES `src_pages_home_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_home_pages` DISABLE KEYS */;
INSERT INTO `src_pages_home_pages` VALUES (1,1,'2016-12-04 20:51:12',1,'2017-01-21 19:41:17',1,NULL,'Our crew consists of 21 firefighters, including our Base Manager, Assistant Foreman, Squad Leaders, Senior Firefighters, detailers, apprentices and temporary seasonal employees. We are an exclusive use crew designated for Initial Attack, so we maintain our IA readiness at all times. Adaptability is key with missions ranging from wilderness rappel fires to Search & Rescue recon.','The Siskiyou Rappel Crew is highly trained in the tactical and logistical use of aviation assets for fire suppression and can be rapidly deployed to incidents both Regionally and Nationally.','We also have the ability to assist with extended attack and logistical support missions throughout the lower 48 and Alaska as the need arises.\r\nOur helicopter is carded for rappelling, cargo letdown, longline, bucket work, PSD, personnel transport and low-level recon.','Like Amazon Prime...','only faster','<p><strong>The Crew:</strong></p>\r\n<p>The Siskiyou Rappel Crew is a 21-person USFS initial attack crew based out of Grants Pass, OR. We have one national rappel aircraft and one national large fire support Type 1 aircraft,&nbsp;but routinely host additional helicopters on site as the season dictates that can be staffed as needed with the support of boosters and qualified district personnel. The crew consists of a Base Manager, Assistant Foreman, Squad Leaders, Senior Firefighters and temporary seasonal employees. We also have the ability to retain positions for detailers and Wildland Firefighter Apprentices to support the needs of the local units.&nbsp;<br><br><strong>The Job:</strong></p>\r\n<p><strong></strong>The crew\'s primary duty is to respond to incidents within Region 6 which encompasses Oregon and Washington. Initial Attack, logistical support, mapping, LEO flights, SAR missions, Medevac and prescribed fire duties are commonplace in addition to off-forest assignments for qualified personnel. The crew is very busy from late June to mid September while the helicopter is on contract, and personnel can supplement adjoining districts assisting in fire suppression and fuels projects to extend their duties later in the year.&nbsp;<br><br><strong>Physical Fitness</strong><strong>:</strong></p>\r\n<p><strong></strong>A great deal of emphasis is placed on physical fitness. It should go without saying that the work we perform is extremely physically demanding and requires a high level of physical conditioning. Applicants must pass the Work Capacity Test (WCT) at the arduous level consisting of a three mile pack carrying 45 pounds in 45 minutes or less. Failure to pass the WCT in the specified time will lead to dismissal.&nbsp; <br></p>','<p>&nbsp;The desired physical fitness goals for the crew are as follows:\r\n</p>\r\n<ul><li>1.5 mile run -- 10:35&nbsp;or less</li><li>Push-ups -- 25 in one minute</li><li>Sit-ups -- 40&nbsp;in one minute</li><li>Pull-ups -- 7</li><li>Pack 110 pounds on level terrain for 3 miles in 90 minutes or less</li></ul>\r\n<p><br></p>\r\n<p>Physical training during the course of the season will include running, hiking and cross training to increase cardiovascular endurance; strength and muscle conditioning through weightlifting, circuit training and core exercises. We cannot stress enough the need to engage in a physical fitness program throughout the off season, and to show up to work in good shape to reduce the risk of injury and increase your chances of successfully completing the training phase of the program.&nbsp;</p>\r\n<p><br><strong>Training:</strong></p>\r\n<p>The first five weeks of the season, starting in early May, will be dedicated to extensive physical fitness, classroom, field training and the National Rappel Academy. This training will include mandatory annual training and refreshers, S-271 and Interagency Helicopter Training as well as becoming certified as a rookie rappeller. There is no down time during the training and trainees must demonstrate competency and proficiency in all aspects of the training or they will be removed from the program. During the course of the season, other training courses may be offered to further the qualifications and career development of each individual which will be outlined on an Individual Development Plan (IDP).<br></p>\r\n<p>Only a small group of people are selected each year to become rappellers. It is a credit to those individuals to have been chosen for this position in terms of their abilities, character and proven performance. It is an opportunity that very few people get.<br></p>','<p>The rookie training program is designed to train you to be a confident,&nbsp;safe and effective rappeller. Rookie training is designed to prepare rookie rappeller candidates with the necessary mental fortitude, logic and reasoning skills, and physical capacity to succeed in highly dynamic and arduous work environments. The Forest Service spends a lot of time, effort, and money to train rookie rappellers. Success will require you to put forth your best effort.&nbsp;<br></p>\r\n<p><strong>Housing:</strong><br>Government housing may be&nbsp;available for crewmembers at the rate of $108.00 a pay period, and is on a first come first served basis.&nbsp;The average local rent is $400.00 to $500.00 per month in the Grants Pass area and options are plenty. Temporary crewmembers have also gone in together to rent a house for the season which can offset individual costs and facilitate carpooling.&nbsp;<br><br><strong>Work Dates:</strong><br>Work usually starts in early May and ends in late September or early October. Crewmembers are hired on a Not-to-Exceed (NTE) 1039 hours in 1 year basis as a GS-0462-4 or 5. Students (STEP\'s) are under a NTE 1 Year appointment. Wildland Firefighter Apprentice/Detail employees do not have imposed limitations which allows the base&nbsp;manager to coordinate time frames with their host unit.&nbsp;<br><br><strong>The Mission:</strong><br>To be effective, efficient and safe aerial-delivered firefighters, highly trained and motivated to be self-sufficient in our efforts to manage wildland fires and care for the land.&nbsp;<br><br><strong>The Vision:</strong><br>We will strive to be a preferred and highly trusted resource, known for our excellence and professionalism in the workplace, the field and the community. Together we will be humble, while taking pride in our ability to provide leadership and technical expertise to those around us.&nbsp;</p>','We\'ll get there fast, manage our own logistics, and let you know when you can take this fire off your board.','Personnel transport, recon flights, cargo delivery, helispot installation, and helibase management.','When resources are scarce, our spotters can provide real-time visual intel during multiple-start scenarios to help you make informed decisions in compressed-time environments.','Our firefighters know that wilderness areas have unique requirements and they understand the philosophy and implementation of MIST tactics.','REMOTE INITIAL ATTACK','HELITACK & LOGISTICS','RECON & PRIORITIZATION','RESOURCE VALUES');
/*!40000 ALTER TABLE `src_pages_home_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_home_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_home_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_home_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_home_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_home_pages_translations`
--

LOCK TABLES `src_pages_home_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_home_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_home_pages_translations` VALUES (1,1,'2016-12-04 20:51:12',NULL,'2016-12-04 20:51:12',1,'en');
/*!40000 ALTER TABLE `src_pages_home_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_jobs_pages`
--

DROP TABLE IF EXISTS `src_pages_jobs_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_jobs_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `slogan_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temp_seasonal_job_vacancies` text COLLATE utf8_unicode_ci,
  `permanent_job_vacancies` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_jobs_pages`
--

LOCK TABLES `src_pages_jobs_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_jobs_pages` DISABLE KEYS */;
INSERT INTO `src_pages_jobs_pages` VALUES (1,1,'2016-12-10 05:33:37',1,'2017-01-12 23:49:24',4,NULL,3,'Earn your coin','<p><strong>Temporary Seasonal 1039:</strong></p>\r\n<p><strong></strong>The regional temporary hiring event to be held in Springfield, OR February 6-17, looks to go off without a hitch.</p>','<p><strong>Permanent GS-4/5 Senior Firefighters:</strong></p>\r\n<p><strong></strong>We currently have one vacancy at this grade level and are looking to fill at our regional fire hire event in Olympia, WA January 21-February 4.</p>\r\n<p><a href=\"https://www.usajobs.gov/GetJob/ViewDetails/455046300/\">https://www.usajobs.gov/GetJob/ViewDetails/455046300/</a></p>\r\n<p><strong><br></strong></p>\r\n<p><strong>Permanent GS-6/7 Squad Leaders:</strong><br><br></p><p>There are currently no vacancies at this time.</p>\r\n<p><strong><br></strong></p>\r\n<p><strong>Perm Fire Hire Timelines:</strong><br><strong>&nbsp;</strong>October 1st-October 31st Regional outreach for all fire positions in R-6<br><strong></strong>&nbsp;November 1st-November 15th vacancies open in USA JOBS<br><strong>&nbsp;</strong>January 21st-January 30th Subject Matter Expert (SME) application review<br><strong></strong>&nbsp;January 30th- February 4th Recommendation / Selection weeks</p>','<h2>The Selection Process:</h2>\r\n<p>Each season, the Siskiyou Rappel Crew seeks quality employees to fill crew member positions for duty as aerial delivered wildland firefighters. Before being considered for a position, applicants must meet these basic minimum requirements: be 18 years of age at time of hire, provide proof of U.S. Citizenship, have at least one season (3 months or more) of experience where their primary duty was as a wildland firefighter, and complete the Work Capacity Test (WCT) within the specified time for arduous duty. Qualifications beyond basic wildland firefighter, such as FFT1, ICT5, FAL1, EMT, etc., are not required but are highly&nbsp;desirable. Previous recreational rappel experience is not required nor is it advantageous.<br>Occasionally, one or more of the permanent positions on the crew become&nbsp;available. These positions are targeted for experienced helicopter crewmembers with a strong&nbsp;background in fire management and aviation.</p>\r\n<h2>Pay Scale:</h2>\r\n<p>Most crew members qualify as a GS-462-4 with an hourly wage of approximately $13.68. Overtime is paid for duty over 8 hours in a day at a rate of 1.5 times the base wage. For hazardous duty (which includes fire suppression activities, low level recon, and a variety of other helicopter related operations) employees are compensated an additional 25% of their base wage for all hours worked during that day. The Siskiyou Rappel Crew averages approximately 600 hours of overtime each fire season.</p>\r\n<h2>How To Apply:</h2>\r\n<p>All hiring is processed through the Federal Government\'s Official Job Website:<br></p>\r\n<ul><li><a href=\"http://www.usajobs.gov/\">www.usajobs.gov</a>\r\nYou must have a&nbsp;<a href=\"https://my.usajobs.gov/Account/Account\">user account</a>&nbsp;with USA Jobs in order to apply, but you can browse job listings without one.</li>\r\n<li><a href=\"http://www.siskiyourappellers.com/assets/HowtoApplyforaJob.pdf\">How To Apply For A Job On The USAJobs Website</a>\r\nThis document will walk you through the general application process on USAJobs. Take a peek.</li></ul>\r\n<p>Job offers for temporary, detail and apprentice positions are typically made in January or February. Offers for permanent positions could occur at any time - check the \'Current Vacancies\' section below.<br><br>If you have any questions regarding the job description, application process or web site, please feel free to&nbsp;<a href=\"http://www.siskiyourappellers.com/contact.php\">contact us</a>.<br>Due to the volume of applications you are also highly encouraged to stop by the base (<a href=\"http://www.siskiyourappellers.com/contact.php\">map</a>).&nbsp;</p>');
/*!40000 ALTER TABLE `src_pages_jobs_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_jobs_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_jobs_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_jobs_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_jobs_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_jobs_pages_translations`
--

LOCK TABLES `src_pages_jobs_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_jobs_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_jobs_pages_translations` VALUES (1,1,'2016-12-10 05:33:37',NULL,'2016-12-10 05:33:37',1,'en');
/*!40000 ALTER TABLE `src_pages_jobs_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_link_list_pages`
--

DROP TABLE IF EXISTS `src_pages_link_list_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_link_list_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `slogan_line_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_link_list_pages`
--

LOCK TABLES `src_pages_link_list_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_link_list_pages` DISABLE KEYS */;
INSERT INTO `src_pages_link_list_pages` VALUES (1,1,'2016-12-07 09:30:15',1,'2016-12-07 09:39:56',1,NULL,1,'Get some intel.'),(2,2,'2016-12-09 07:00:19',1,NULL,NULL,NULL,2,'We use these links every day');
/*!40000 ALTER TABLE `src_pages_link_list_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_link_list_pages_menus`
--

DROP TABLE IF EXISTS `src_pages_link_list_pages_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_link_list_pages_menus` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_link_list_pages_menus`
--

LOCK TABLES `src_pages_link_list_pages_menus` WRITE;
/*!40000 ALTER TABLE `src_pages_link_list_pages_menus` DISABLE KEYS */;
INSERT INTO `src_pages_link_list_pages_menus` VALUES (1,2,0),(2,3,4),(2,4,6),(2,5,3),(2,6,2),(2,7,0),(2,8,5),(2,9,7),(2,10,1);
/*!40000 ALTER TABLE `src_pages_link_list_pages_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_link_list_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_link_list_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_link_list_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_link_list_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_link_list_pages_translations`
--

LOCK TABLES `src_pages_link_list_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_link_list_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_link_list_pages_translations` VALUES (1,1,'2016-12-07 09:30:15',NULL,'2016-12-07 09:30:15',1,'en'),(2,2,'2016-12-09 07:00:19',NULL,'2016-12-09 07:00:19',1,'en');
/*!40000 ALTER TABLE `src_pages_link_list_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_pages`
--

DROP TABLE IF EXISTS `src_pages_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `entry_id` int(11) DEFAULT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1',
  `exact` tinyint(1) DEFAULT '1',
  `home` tinyint(1) DEFAULT '0',
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'theme::layouts/default.twig',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_pages`
--

LOCK TABLES `src_pages_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_pages` DISABLE KEYS */;
INSERT INTO `src_pages_pages` VALUES (1,1,'2016-11-22 20:17:03',NULL,'2016-12-04 20:47:46',1,'2016-12-04 20:49:51','nWaI9CeYYlMo1gCHyRALemDn','home','/',1,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,0,1,1,1,'theme::layouts.home'),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:20',1,'2016-12-10 06:04:56','mBrGJWrJXEHj54vNeSSwQIlj','contact','/contact',1,2,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,0,NULL),(3,2,'2016-11-23 03:53:37',1,'2016-12-10 06:06:39',1,NULL,'VX30kmUmabrSTpHP1otHquXi','current','/current',2,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesBlogPagesEntryModel',NULL,1,1,1,0,'theme::layouts.blog'),(4,1,'2016-12-04 20:51:12',1,'2017-01-21 19:41:18',1,NULL,'H7fFKg67zAeQ4JyWViIK6zmf','home','/',3,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesHomePagesEntryModel',NULL,1,1,1,1,'theme::layouts.home'),(5,3,'2016-12-07 09:30:15',1,'2016-12-10 06:06:39',1,NULL,'1zGTNbEVG4Dw73DVceJ6fUig','intelligence','/intelligence',4,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesLinkListPagesEntryModel',NULL,1,1,1,0,'theme::layouts.default'),(6,4,'2016-12-09 07:00:19',1,'2016-12-10 06:06:39',1,NULL,'OTf8jn17W3PkVvkuIH12hpkj','links','/links',4,2,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesLinkListPagesEntryModel',NULL,1,1,1,0,'theme::layouts.default'),(7,5,'2016-12-10 05:33:37',1,'2017-01-12 23:49:24',4,NULL,'jtkoBtRqUzAUUEKPNTvc4Dzk','jobs','/jobs',5,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesJobsPagesEntryModel',NULL,1,1,1,0,'theme::layouts.default'),(8,6,'2017-01-22 01:26:31',1,'2017-01-22 18:13:11',1,NULL,'WeQHBVticZRVDrNOqbTDxgGs','photos','/photos',6,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesGalleryPagesEntryModel',NULL,1,1,1,0,'theme::layouts.gallery');
/*!40000 ALTER TABLE `src_pages_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_pages_allowed_roles`
--

DROP TABLE IF EXISTS `src_pages_pages_allowed_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_pages_allowed_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_pages_allowed_roles`
--

LOCK TABLES `src_pages_pages_allowed_roles` WRITE;
/*!40000 ALTER TABLE `src_pages_pages_allowed_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_pages_pages_allowed_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_pages_translations`
--

DROP TABLE IF EXISTS `src_pages_pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_pages_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pages_pages_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_pages_translations`
--

LOCK TABLES `src_pages_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_pages_translations` VALUES (1,1,'2016-11-22 20:17:03',NULL,'2016-12-04 20:28:37',1,'en','Home',NULL,NULL,'a:0:{}'),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:20',1,'en','Contact',NULL,NULL,'a:0:{}'),(3,3,'2016-11-23 03:53:37',NULL,'2016-11-23 03:53:37',1,'en','Current',NULL,NULL,'a:0:{}'),(4,4,'2016-12-04 20:51:12',NULL,'2016-12-04 20:51:12',1,'en','Home',NULL,NULL,'a:0:{}'),(5,5,'2016-12-07 09:30:15',NULL,'2016-12-07 09:30:15',1,'en','Intelligence',NULL,NULL,'a:0:{}'),(6,6,'2016-12-09 07:00:20',NULL,'2016-12-09 07:00:20',1,'en','Links',NULL,NULL,'a:0:{}'),(7,7,'2016-12-10 05:33:37',NULL,'2016-12-10 06:06:51',1,'en','Jobs',NULL,NULL,'a:0:{}'),(8,8,'2017-01-22 01:26:31',NULL,'2017-01-22 01:26:31',1,'en','Photos',NULL,NULL,'a:0:{}');
/*!40000 ALTER TABLE `src_pages_pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_types`
--

DROP TABLE IF EXISTS `src_pages_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'theme::layouts/default.twig',
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `handler` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'anomaly.extension.default_page_handler',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_types`
--

LOCK TABLES `src_pages_types` WRITE;
/*!40000 ALTER TABLE `src_pages_types` DISABLE KEYS */;
INSERT INTO `src_pages_types` VALUES (1,1,'2016-11-22 20:17:02',NULL,'2016-12-05 05:41:30',1,NULL,'default','theme::layouts.default','<h1>{{ page.title }}</h1>\r\n\r\n{{ page.content.render|raw }}','anomaly.extension.default_page_handler'),(2,2,'2016-11-23 03:52:53',1,'2016-12-04 21:24:36',1,NULL,'blog','theme::layouts.blog','<!-- -->','anomaly.extension.default_page_handler'),(3,3,'2016-12-04 20:45:33',1,'2017-01-21 20:07:41',1,NULL,'home','theme::layouts.home','<section id=\"intro\" class=\"intro\">\r\n    <video playsinline autoplay muted loop class=\"fullscreen bgvideo\">\r\n        <source src=\"{{ asset_url(\'theme::videos/siskiyou-bg-vid.mp4\') }}\" type=\"video/mp4\">\r\n    </video>\r\n    <svg id=\"bgvideo-opacity-mask\" class=\"fullscreen bgvideo-opacity-mask\">\r\n        <rect width=100% height=100%>\r\n    </svg>\r\n    <div class=\"slogan\">\r\n        <h4>{{ page.slogan_line_1 }}</h4>\r\n        <h2>{{ page.slogan_line_2 }}</h2>\r\n    </div>\r\n    <div class=\"page-scroll\">\r\n        <a href=\"#service\" class=\"btn btn-circle\">\r\n            <i class=\"fa fa-angle-double-down animated\"></i>\r\n        </a>\r\n    </div>\r\n</section>\r\n<!-- /Section: intro -->\r\n\r\n<!-- Section: about -->\r\n<section id=\"about\" class=\"home-section text-center\">\r\n    <div class=\"heading-about\">\r\n        <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-8 col-lg-offset-2\">\r\n                <div class=\"wow bounceInDown animated\" data-wow-delay=\"0.4s\" style=\"visibility: visible;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;\">\r\n                <div class=\"section-heading\">\r\n                <h2>About us</h2>\r\n                <i class=\"fa fa-2x fa-angle-down\"></i>\r\n\r\n                </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"container\">\r\n\r\n   <div class=\"row\" style=\"font-size: 2em; text-align:justify;\">\r\n        <div class=\"col-xs-12 col-sm-4 col-sm-push-4\" style=\"font-weight: bold\">\r\n            <div class=\"wow bounceInUp\" data-wow-delay=\"0.2s\" style=\"visibility: hidden; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n                {{ page.about_us_center_column | raw }}\r\n            </div>\r\n        </div>\r\n        <div class=\"col-xs-12 col-sm-4 col-sm-pull-4\">\r\n            <div class=\"wow bounceInUp animated\" data-wow-delay=\"0.2s\" style=\"visibility: hidden;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n                {{ page.about_us_left_column | raw }}\r\n            </div>\r\n        </div>\r\n        <div class=\"col-xs-12 col-sm-4\">\r\n            <div class=\"wow bounceInUp\" data-wow-delay=\"0.2s\" style=\"visibility: hidden; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n                {{ page.about_us_right_column | raw }}\r\n            </div>\r\n        </div>\r\n    </div>\r\n    </div>\r\n</section>\r\n<!-- /Section: about -->\r\n\r\n\r\n<!-- Section: services -->\r\n<section id=\"service\" class=\"home-section text-center bg-gray\">\r\n\r\n    <div class=\"heading-about\">\r\n        <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-8 col-lg-offset-2\">\r\n                <div class=\"wow bounceInDown\" data-wow-delay=\"0.4s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;\">\r\n                <div class=\"section-heading\">\r\n                <h2>Our Services</h2>\r\n                <i class=\"fa fa-2x fa-angle-down\"></i>\r\n\r\n                </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"container\">\r\n    <div class=\"row\">\r\n        <div class=\"col-lg-2 col-lg-offset-5\">\r\n            <hr class=\"marginbot-50\">\r\n        </div>\r\n    </div>\r\n    <div class=\"row\">\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInLeft\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"{{ asset_url(\'theme::img/icons/flame.png\') }}\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>{{ page.services_1_title }}</h5>\r\n                    <p>{{ page.services_1 | raw }}</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInUp\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"{{ asset_url(\'theme::img/icons/service-icon-2.png\') }}\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>{{ page.services_2_title }}</h5>\r\n                    <p>{{ page.services_2 | raw }}</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInUp\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"{{ asset_url(\'theme::img/icons/service-icon-3.png\') }}\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>{{ page.services_3_title }}</h5>\r\n                    <p>{{ page.services_3 | raw }}</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInRight\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"{{ asset_url(\'theme::img/icons/forest.png\') }}\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>{{ page.services_4_title }}</h5>\r\n                    <p>{{ page.services_4 | raw }}</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    </div>\r\n</section>\r\n<!-- /Section: services -->\r\n\r\n\r\n\r\n\r\n<!-- Section: contact -->\r\n<section id=\"contact\" class=\"home-section text-center\">\r\n    <div class=\"heading-contact\">\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col-sm-9 col-sm-offset-2\">\r\n                    <div class=\"wow bounceInDown\" data-wow-delay=\"0.4s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;\">\r\n                        <div class=\"section-heading\">\r\n                            <h2>Here\'s the deal</h2>\r\n                            <i class=\"fa fa-2x fa-angle-down\"></i>\r\n\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"container-fluid\">\r\n        <div class=\"row\" style=\"text-align:justify;\">\r\n            <div class=\"col-sm-3 col-sm-offset-2\">\r\n                {{ page.content_left_column | raw }}\r\n            </div>\r\n            <div class=\"col-sm-3\">\r\n                {{ page.content_middle_column | raw }}\r\n            </div>\r\n            <div class=\"col-sm-3\">\r\n                {{ page.content_right_column | raw }}\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<!-- /Section: contact -->','anomaly.extension.default_page_handler'),(4,4,'2016-12-07 09:10:09',1,'2016-12-10 06:02:38',1,NULL,'link_list','theme::layouts.default','{% for menu in page.menus %}\r\n    <section class=\"linklist\">\r\n    \r\n        <h1>{{ menu.name }}</h1>\r\n        <ul>\r\n        {% for link in links(menu).get() %}\r\n            <li>\r\n                <a href=\"{{ link.url }}\"><strong>{{ link.title }}</strong> - {{ link.entry.description }}</a>\r\n            </li>\r\n        {% endfor %}\r\n        </ul>\r\n\r\n    </section>\r\n{% endfor %}','anomaly.extension.default_page_handler'),(5,5,'2016-12-10 05:18:32',1,'2017-01-21 17:43:51',1,NULL,'jobs','theme::layouts.default','<h1 class=\"page-title\">{{ page.title }}</h1>\r\n\r\n<section class=\"job-list\" id=\"temp-seasonal-job-vacancies\">\r\n    <h1>Temporary Seasonal Job Vacancies (1039)</h1>\r\n    <div>{{ page.temp_seasonal_job_vacancies | raw }}</div>\r\n</section>\r\n\r\n<section class=\"job-list\" id=\"permanent_job_vacancies\">\r\n    <h1>Permanent Seasonal Job Vacancies (PSE)</h1>\r\n    <div>{{ page.permanent_job_vacancies | raw }}</div>\r\n</section>\r\n\r\n<section id=\"hiring-process\">\r\n    <div>{{ page.content | raw }}</div>\r\n</section>','anomaly.extension.default_page_handler'),(6,6,'2017-01-21 20:25:48',1,'2017-01-22 18:07:10',1,NULL,'gallery','theme::layouts.default','<div id=\"gallery\" class=\"container\">\r\n    {% set posts = entries(\'posts\').type(\'photo\').where(\'enabled\',1).orderBy(\'publish_at\', \'desc\').paginate(15) %}\r\n\r\n    {# include \"anomaly.module.posts::posts/partials/posts\" with {\"posts\": posts} #}\r\n\r\n    {% for post in posts %}\r\n    	<div class=\"photo-wrapper\">\r\n    		<a href=\"{{ url_to(post.path) }}\">\r\n	    		<img src=\"{{ post.photo.make.url }}\" class=\"img-thumbnail\" />\r\n	    		<div class=\"photo-thumbnail-title\">{{ post.title }}</div>\r\n    		</a>\r\n		</div> \r\n    {% endfor %}\r\n</div>\r\n\r\n<div class=\"pagination-wrapper\">\r\n	{{ posts.links|raw }}\r\n</div>\r\n','anomaly.extension.default_page_handler');
/*!40000 ALTER TABLE `src_pages_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_pages_types_translations`
--

DROP TABLE IF EXISTS `src_pages_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_pages_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `pages_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_types_translations`
--

LOCK TABLES `src_pages_types_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_types_translations` DISABLE KEYS */;
INSERT INTO `src_pages_types_translations` VALUES (1,1,'2016-11-22 20:17:02',NULL,'2016-11-22 20:17:02',NULL,'en','Default','A simple page type.'),(2,2,'2016-11-23 03:52:54',NULL,'2016-11-23 03:52:54',1,'en','Blog',NULL),(3,3,'2016-12-04 20:45:35',NULL,'2016-12-04 20:45:35',1,'en','Home',NULL),(4,4,'2016-12-07 09:10:09',NULL,'2016-12-07 09:10:09',1,'en','Link List',NULL),(5,5,'2016-12-10 05:18:33',NULL,'2016-12-10 05:18:33',1,'en','Jobs',NULL),(6,6,'2017-01-21 20:25:49',NULL,'2017-01-21 20:25:49',1,'en','Gallery',NULL);
/*!40000 ALTER TABLE `src_pages_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_categories`
--

DROP TABLE IF EXISTS `src_posts_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_categories`
--

LOCK TABLES `src_posts_categories` WRITE;
/*!40000 ALTER TABLE `src_posts_categories` DISABLE KEYS */;
INSERT INTO `src_posts_categories` VALUES (1,1,'2016-11-22 20:17:06',NULL,NULL,NULL,NULL,'news'),(2,2,'2017-01-21 20:19:00',1,NULL,NULL,NULL,'photo-gallery');
/*!40000 ALTER TABLE `src_posts_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_categories_translations`
--

DROP TABLE IF EXISTS `src_posts_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_categories_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `posts_categories_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_categories_translations`
--

LOCK TABLES `src_posts_categories_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_categories_translations` DISABLE KEYS */;
INSERT INTO `src_posts_categories_translations` VALUES (1,1,'2016-11-22 20:17:06',NULL,'2016-11-22 20:17:06',NULL,'en','News','Company news and updates.'),(2,2,'2017-01-21 20:19:00',NULL,'2017-01-21 20:19:00',1,'en','Photo Gallery',NULL);
/*!40000 ALTER TABLE `src_posts_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_default_posts`
--

DROP TABLE IF EXISTS `src_posts_default_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_default_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_default_posts`
--

LOCK TABLES `src_posts_default_posts` WRITE;
/*!40000 ALTER TABLE `src_posts_default_posts` DISABLE KEYS */;
INSERT INTO `src_posts_default_posts` VALUES (1,1,'2016-11-22 20:17:06',NULL,NULL,NULL,NULL,'<p>Welcome to PyroCMS!</p>'),(2,2,'2016-12-03 17:26:43',1,'2016-12-10 10:35:05',1,NULL,'<p>Just an update on upcoming hiring.&nbsp;</p><p>Fire Hire Timelines:</p><ul><li>October 1st-October 31st Regional outreach for all fire positions in R-6</li><li>November 1st-November 15th vacancies open in USA JOBS</li><li>January 21st-January 30th Subject Matter Expert (SME) application review</li><li>January 30th- February 9th Recommendation / Selection weeks</li></ul>'),(3,3,'2016-12-05 06:14:37',1,'2016-12-05 06:15:30',1,NULL,'<p>We\'ll be taking a break for the winter - stay tuned for more news in <strong>January.</strong></p>\r\n<ol><li>List item 1</li><li>List item 2</li></ol>\r\n<p><img src=\"/files/images/banner-01.jpg\" style=\"width: 378px; height: 118px;\" width=\"378\" height=\"118\"><br></p>');
/*!40000 ALTER TABLE `src_posts_default_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_default_posts_translations`
--

DROP TABLE IF EXISTS `src_posts_default_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_default_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_default_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_default_posts_translations`
--

LOCK TABLES `src_posts_default_posts_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_default_posts_translations` DISABLE KEYS */;
INSERT INTO `src_posts_default_posts_translations` VALUES (1,1,'2016-11-22 20:17:06',NULL,'2016-11-22 20:17:06',NULL,'en'),(2,2,'2016-12-03 17:26:44',NULL,'2016-12-03 17:26:44',1,'en'),(3,3,'2016-12-05 06:14:37',NULL,'2016-12-05 06:14:37',1,'en');
/*!40000 ALTER TABLE `src_posts_default_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_link_posts`
--

DROP TABLE IF EXISTS `src_posts_link_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_link_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `link_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_link_posts`
--

LOCK TABLES `src_posts_link_posts` WRITE;
/*!40000 ALTER TABLE `src_posts_link_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_posts_link_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_link_posts_translations`
--

DROP TABLE IF EXISTS `src_posts_link_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_link_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_link_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_link_posts_translations`
--

LOCK TABLES `src_posts_link_posts_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_link_posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_posts_link_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_photo_posts`
--

DROP TABLE IF EXISTS `src_posts_photo_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_photo_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_photo_posts`
--

LOCK TABLES `src_posts_photo_posts` WRITE;
/*!40000 ALTER TABLE `src_posts_photo_posts` DISABLE KEYS */;
INSERT INTO `src_posts_photo_posts` VALUES (1,1,'2017-01-21 20:23:16',1,NULL,NULL,NULL,4),(2,2,'2017-01-22 04:35:21',1,NULL,NULL,NULL,5);
/*!40000 ALTER TABLE `src_posts_photo_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_photo_posts_translations`
--

DROP TABLE IF EXISTS `src_posts_photo_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_photo_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_photo_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_photo_posts_translations`
--

LOCK TABLES `src_posts_photo_posts_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_photo_posts_translations` DISABLE KEYS */;
INSERT INTO `src_posts_photo_posts_translations` VALUES (1,1,'2017-01-21 20:23:16',NULL,'2017-01-21 20:23:16',1,'en'),(2,2,'2017-01-22 04:35:21',NULL,'2017-01-22 04:35:21',1,'en');
/*!40000 ALTER TABLE `src_posts_photo_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_posts`
--

DROP TABLE IF EXISTS `src_posts_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `str_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `publish_at` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `entry_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `tags` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `3205137b58c7608b77cb961242373242` (`str_id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_posts`
--

LOCK TABLES `src_posts_posts` WRITE;
/*!40000 ALTER TABLE `src_posts_posts` DISABLE KEYS */;
INSERT INTO `src_posts_posts` VALUES (1,1,'2016-11-22 20:17:06',NULL,NULL,NULL,'2016-12-10 10:33:11','C4A5NQiI8KSMM0yJ','welcome-to-pyrocms',1,'2016-11-22 20:17:06',1,1,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',1,0,1,NULL),(2,2,'2016-12-03 17:26:44',1,'2016-12-10 10:35:05',1,NULL,'DXo0S7ovyfRE2d4U','hiring-update',1,'2016-10-31 16:25:00',1,2,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',0,0,1,'a:0:{}'),(3,3,'2016-12-05 06:14:37',1,'2016-12-05 06:15:30',1,'2016-12-10 10:33:11','SzyPgLzjVCaXu44Y','winter-break',1,'2016-12-05 06:13:00',1,3,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',0,0,1,'a:0:{}'),(4,2,'2017-01-21 20:23:16',1,'2017-01-21 20:23:47',1,NULL,'LqdcEhioQdoOVWTv','the-forest',3,'2017-01-21 20:21:00',1,1,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPhotoPostsEntryModel',2,0,1,'a:0:{}'),(5,3,'2017-01-22 04:35:21',1,'2017-01-22 16:57:04',1,NULL,'B3MzEsJh1496p583','trevellyan-s-heaviest-pack-face',3,'2017-01-22 04:33:00',1,2,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsPhotoPostsEntryModel',0,0,1,'a:0:{}');
/*!40000 ALTER TABLE `src_posts_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_posts_translations`
--

DROP TABLE IF EXISTS `src_posts_posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_posts_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `posts_posts_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_posts_translations`
--

LOCK TABLES `src_posts_posts_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_posts_translations` DISABLE KEYS */;
INSERT INTO `src_posts_posts_translations` VALUES (1,1,'2016-11-22 20:17:06',NULL,'2016-11-22 20:17:06',NULL,'en','Welcome to PyroCMS!','This is an example post to demonstrate the posts module.',NULL,NULL,NULL),(2,2,'2016-12-03 17:26:44',NULL,'2016-12-10 10:35:05',1,'en','Hiring update','Just an update on upcoming hiring. Fire Hire Timelines: \r\nOctober 1st-October 31st Regional outreach for all fire positions in R-6  November 1st-November 15th vacancies open in USA JOBS  January 21st-January 30th Subject Matter Expert (SME) application review  January 30th- February 9th Recommendation / Selection weeks',NULL,NULL,'a:0:{}'),(3,3,'2016-12-05 06:14:37',NULL,'2016-12-05 06:14:37',1,'en','Winter break',NULL,NULL,NULL,'a:0:{}'),(4,4,'2017-01-21 20:23:17',NULL,'2017-01-21 20:23:17',1,'en','The forest',NULL,NULL,NULL,'a:0:{}'),(5,5,'2017-01-22 04:35:21',NULL,'2017-01-22 04:35:21',1,'en','Trevellyan\'s heaviest pack face',NULL,NULL,NULL,'a:0:{}');
/*!40000 ALTER TABLE `src_posts_posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_types`
--

DROP TABLE IF EXISTS `src_posts_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` text COLLATE utf8_unicode_ci NOT NULL,
  `theme_layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_types`
--

LOCK TABLES `src_posts_types` WRITE;
/*!40000 ALTER TABLE `src_posts_types` DISABLE KEYS */;
INSERT INTO `src_posts_types` VALUES (1,1,'2016-11-22 20:17:05',NULL,NULL,NULL,NULL,'default','{{ post.content.render|raw }}','theme::layouts/default.twig'),(2,2,'2016-12-07 08:53:01',1,NULL,NULL,'2017-01-13 00:21:48','link','{{ post.content|raw }}','theme::layouts.blog'),(3,2,'2017-01-21 20:17:36',1,'2017-01-22 02:24:01',1,NULL,'photo','<div id=\"photo-single\" class=\"container\">\r\n    <img class=\"img-responsive\" src=\"{{ post.photo.make.url }}\" />\r\n</div>\r\n','theme::layouts.default');
/*!40000 ALTER TABLE `src_posts_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_posts_types_translations`
--

DROP TABLE IF EXISTS `src_posts_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_posts_types_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `posts_types_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_types_translations`
--

LOCK TABLES `src_posts_types_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_types_translations` DISABLE KEYS */;
INSERT INTO `src_posts_types_translations` VALUES (1,1,'2016-11-22 20:17:05',NULL,'2016-11-22 20:17:05',NULL,'en','Default','A simple post type.'),(2,2,'2016-12-07 08:53:02',NULL,'2016-12-07 08:53:02',1,'en','Link',NULL),(3,3,'2017-01-21 20:17:37',NULL,'2017-01-21 20:18:18',1,'en','Photo','A photo for the gallery.');
/*!40000 ALTER TABLE `src_posts_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_preferences_preferences`
--

DROP TABLE IF EXISTS `src_preferences_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_preferences_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_preferences_preferences`
--

LOCK TABLES `src_preferences_preferences` WRITE;
/*!40000 ALTER TABLE `src_preferences_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_preferences_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_redirects_redirects`
--

DROP TABLE IF EXISTS `src_redirects_redirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_redirects_redirects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '301',
  `secure` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `a0622c0146c143edaf2eef1cc1aa7286` (`from`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_redirects_redirects`
--

LOCK TABLES `src_redirects_redirects` WRITE;
/*!40000 ALTER TABLE `src_redirects_redirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_redirects_redirects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_sessions`
--

DROP TABLE IF EXISTS `src_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8_unicode_ci,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_sessions`
--

LOCK TABLES `src_sessions` WRITE;
/*!40000 ALTER TABLE `src_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `src_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_settings_settings`
--

DROP TABLE IF EXISTS `src_settings_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_settings_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `0ebe1a6e88a95d473b0d03f8ba344523` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_settings_settings`
--

LOCK TABLES `src_settings_settings` WRITE;
/*!40000 ALTER TABLE `src_settings_settings` DISABLE KEYS */;
INSERT INTO `src_settings_settings` VALUES (1,1,'2016-11-22 20:17:09',NULL,'2016-12-04 20:23:44',1,'streams::timezone','America/Los_Angeles'),(2,2,'2016-11-22 20:17:09',NULL,'2016-12-04 20:23:44',1,'streams::default_locale','en'),(3,3,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::name','Siskiyou Rappellers'),(4,4,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::description','The Siskiyou Rappel Crew'),(5,5,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::business','Siskiyou Rappellers'),(6,6,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::phone','541-471-6891'),(7,7,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::address','657 Flaming Rd.'),(8,8,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::address2',NULL),(9,9,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::city','Grants Pass'),(10,10,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::state','OR'),(11,11,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::postal_code','97526'),(12,12,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::country','US'),(13,13,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::date_format','l, j F, Y'),(14,14,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::time_format','H:i'),(15,15,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::unit_system','imperial'),(16,16,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::currency','USD'),(17,17,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::standard_theme','smirk.theme.siskiyourappellers'),(18,18,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::admin_theme','pyrocms.theme.pyrocms'),(19,19,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::per_page','15'),(20,20,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::enabled_locales','a:1:{i:0;s:2:\"en\";}'),(21,21,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::debug','0'),(22,22,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::maintenance','0'),(23,23,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::basic_auth','0'),(24,24,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::ip_whitelist','a:0:{}'),(25,25,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::email','noreply@siskiyourappellers.com'),(26,26,'2016-11-23 03:50:54',1,'2016-12-04 20:23:44',1,'streams::sender','Siskiyou Rappellers');
/*!40000 ALTER TABLE `src_settings_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_streams_assignments`
--

DROP TABLE IF EXISTS `src_streams_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_streams_assignments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_assignments` (`stream_id`,`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_assignments`
--

LOCK TABLES `src_streams_assignments` WRITE;
/*!40000 ALTER TABLE `src_streams_assignments` DISABLE KEYS */;
INSERT INTO `src_streams_assignments` VALUES (1,1,1,1,'a:0:{}',0,1,0),(2,2,1,2,'a:0:{}',0,1,0),(3,3,1,3,'a:0:{}',0,0,0),(4,4,2,4,'a:0:{}',0,1,1),(5,5,2,5,'a:0:{}',1,1,0),(6,6,2,6,'a:0:{}',0,0,1),(7,7,2,7,'a:0:{}',0,1,0),(8,8,2,13,'a:0:{}',0,0,0),(9,9,3,8,'a:0:{}',0,1,1),(10,10,3,6,'a:0:{}',0,0,1),(11,11,3,9,'a:0:{}',0,1,0),(12,12,3,10,'a:0:{}',0,1,0),(13,13,3,12,'a:0:{}',0,1,0),(14,14,3,13,'a:0:{}',0,0,0),(15,15,3,11,'a:0:{}',0,0,0),(16,16,4,14,'a:0:{}',1,1,1),(17,17,4,15,'a:0:{}',1,1,0),(18,18,4,16,'a:0:{}',0,1,0),(19,19,4,20,'a:0:{}',0,0,1),(20,20,5,18,'a:0:{}',0,1,0),(21,21,5,14,'a:1:{s:3:\"max\";i:50;}',0,1,1),(22,22,5,15,'a:1:{s:3:\"max\";i:50;}',1,1,0),(23,23,5,20,'a:0:{}',0,0,1),(24,24,5,21,'a:0:{}',0,0,0),(25,25,6,14,'a:0:{}',0,1,0),(26,26,6,18,'a:0:{}',0,1,0),(27,27,6,17,'a:0:{}',0,1,0),(28,28,6,23,'a:0:{}',0,1,0),(29,29,6,27,'a:0:{}',0,1,0),(30,30,6,26,'a:0:{}',0,1,0),(31,31,6,19,'a:0:{}',0,0,0),(32,32,6,22,'a:0:{}',0,0,0),(33,33,6,25,'a:0:{}',0,0,0),(34,34,6,24,'a:0:{}',0,0,0),(35,35,7,28,'a:0:{}',1,1,1),(36,36,7,32,'a:0:{}',1,1,0),(37,37,7,30,'a:0:{}',0,0,1),(38,38,8,33,'a:0:{}',0,1,0),(39,39,8,36,'a:0:{}',0,1,0),(40,40,8,31,'a:0:{}',0,1,0),(41,41,8,37,'a:0:{}',0,1,0),(42,42,8,29,'a:0:{}',0,0,0),(43,43,8,34,'a:0:{}',0,0,0),(44,44,8,35,'a:0:{}',0,0,0),(45,45,9,38,'a:0:{}',0,1,0),(46,46,9,39,'a:0:{}',0,1,1),(47,47,9,40,'a:0:{}',0,1,0),(48,48,9,42,'a:0:{}',0,1,0),(49,49,9,52,'a:0:{}',0,1,0),(50,50,9,56,'a:0:{}',0,0,0),(51,51,9,50,'a:0:{}',0,0,0),(52,52,9,54,'a:0:{}',0,0,0),(53,53,9,43,'a:0:{}',0,0,0),(54,54,9,55,'a:0:{}',0,0,0),(55,55,9,44,'a:0:{}',0,0,0),(56,56,9,45,'a:0:{}',0,0,1),(57,57,9,46,'a:0:{}',0,0,1),(58,58,9,47,'a:0:{}',0,0,1),(59,59,9,51,'a:0:{}',0,0,0),(60,60,9,49,'a:0:{}',0,0,0),(61,61,10,57,'a:1:{s:3:\"max\";i:50;}',1,1,1),(62,62,10,40,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0),(63,63,10,58,'a:0:{}',0,0,1),(64,64,10,51,'a:0:{}',0,1,0),(65,65,10,48,'a:0:{}',0,1,0),(66,66,10,53,'a:0:{}',0,1,0),(67,67,11,60,'a:0:{}',1,1,1),(68,68,11,62,'a:1:{s:7:\"slugify\";s:4:\"name\";}',1,1,0),(69,69,11,67,'a:0:{}',0,0,1),(70,70,12,59,'a:0:{}',1,1,0),(71,71,12,61,'a:0:{}',0,1,1),(72,72,12,66,'a:0:{}',0,0,1),(73,73,12,62,'a:0:{}',1,1,0),(74,74,12,64,'a:0:{}',0,1,0),(75,75,12,68,'a:0:{}',0,1,0),(76,76,12,70,'a:0:{}',0,1,0),(77,77,12,69,'a:0:{}',0,1,0),(78,78,12,75,'a:0:{}',0,0,1),(79,79,12,76,'a:0:{}',0,0,1),(80,80,12,77,'a:0:{}',0,0,1),(81,81,12,72,'a:0:{}',0,0,0),(82,82,12,74,'a:0:{}',0,0,0),(83,83,12,73,'a:0:{}',0,0,0),(84,84,12,65,'a:0:{}',0,0,0),(85,85,13,60,'a:1:{s:3:\"max\";i:50;}',1,1,1),(86,86,13,62,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0),(87,87,13,71,'a:0:{}',0,1,0),(88,88,13,79,'a:0:{}',0,1,0),(89,89,13,67,'a:0:{}',0,0,1),(90,90,14,80,'a:0:{}',0,1,0),(91,91,14,81,'a:0:{}',0,1,0),(92,92,14,82,'a:0:{}',0,0,0),(93,93,15,83,'a:0:{}',1,1,0),(94,94,15,84,'a:0:{}',0,1,0),(95,95,15,85,'a:0:{}',0,1,0),(96,96,15,86,'a:0:{}',0,0,0),(97,97,16,87,'a:0:{}',1,1,0),(98,98,16,88,'a:0:{}',0,0,0),(99,99,17,89,'a:0:{}',1,1,0),(100,100,17,90,'a:0:{}',1,1,0),(101,101,17,91,'a:0:{}',0,1,0),(102,102,17,109,'a:0:{}',0,1,0),(103,103,17,97,'a:0:{}',0,1,0),(104,104,17,98,'a:0:{}',0,0,0),(105,105,17,99,'a:0:{}',0,0,0),(106,106,17,106,'a:0:{}',0,0,0),(107,107,17,107,'a:0:{}',0,0,0),(108,108,17,96,'a:0:{}',0,0,0),(109,109,17,94,'a:0:{}',0,0,0),(110,110,17,92,'a:0:{}',0,0,0),(111,111,17,104,'a:0:{}',0,0,0),(112,112,17,102,'a:0:{}',0,0,0),(113,113,17,95,'a:0:{}',0,0,0),(114,114,17,93,'a:0:{}',0,0,0),(115,115,18,100,'a:0:{}',0,1,1),(116,116,18,108,'a:0:{}',1,1,0),(117,117,18,101,'a:0:{}',0,0,1),(118,118,18,96,'a:0:{}',0,0,0),(119,119,19,110,'a:0:{}',0,0,1),(120,120,19,111,'a:0:{}',0,1,0),(121,121,19,112,'a:0:{}',0,0,1),(122,122,20,113,'a:0:{}',0,1,1),(123,123,20,114,'a:0:{}',0,1,0),(124,124,20,115,'a:0:{}',0,0,1),(125,125,23,41,'a:0:{}',0,0,1),(126,126,24,63,'a:0:{}',0,0,0),(127,3,26,118,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(128,4,26,119,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(129,5,26,120,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(130,1,26,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(131,2,26,117,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(132,132,25,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(133,133,23,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(134,134,25,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(135,135,23,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(136,136,27,123,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(137,137,27,122,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(140,138,28,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(141,139,28,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(143,141,28,127,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(144,141,29,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(145,142,29,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(146,143,29,128,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(147,144,29,129,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(148,145,29,41,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(150,14,26,130,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(151,15,26,131,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(152,16,26,132,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(153,149,30,133,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(154,150,30,134,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(155,151,30,135,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(156,152,30,136,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(157,153,30,137,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(158,154,30,138,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(159,155,30,139,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(160,156,30,140,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(161,7,26,141,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(162,9,26,142,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(163,11,26,143,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(164,13,26,144,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(165,6,26,145,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(166,8,26,146,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(167,10,26,147,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(168,12,26,148,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(169,165,31,149,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(170,166,32,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(171,167,32,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(172,168,33,150,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(173,169,33,151,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0);
/*!40000 ALTER TABLE `src_streams_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_streams_assignments_translations`
--

DROP TABLE IF EXISTS `src_streams_assignments_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_streams_assignments_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `assignment_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `streams_assignments_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_assignments_translations`
--

LOCK TABLES `src_streams_assignments_translations` WRITE;
/*!40000 ALTER TABLE `src_streams_assignments_translations` DISABLE KEYS */;
INSERT INTO `src_streams_assignments_translations` VALUES (1,1,'en','anomaly.module.configuration::field.scope.label.configuration','anomaly.module.configuration::field.scope.warning.configuration','anomaly.module.configuration::field.scope.placeholder.configuration','anomaly.module.configuration::field.scope.instructions.configuration'),(2,2,'en','anomaly.module.configuration::field.key.label.configuration','anomaly.module.configuration::field.key.warning.configuration','anomaly.module.configuration::field.key.placeholder.configuration','anomaly.module.configuration::field.key.instructions.configuration'),(3,3,'en','anomaly.module.configuration::field.value.label.configuration','anomaly.module.configuration::field.value.warning.configuration','anomaly.module.configuration::field.value.placeholder.configuration','anomaly.module.configuration::field.value.instructions.configuration'),(4,4,'en','anomaly.module.dashboard::field.name.label.dashboards','anomaly.module.dashboard::field.name.warning.dashboards','anomaly.module.dashboard::field.name.placeholder.dashboards','anomaly.module.dashboard::field.name.instructions.dashboards'),(5,5,'en','anomaly.module.dashboard::field.slug.label.dashboards','anomaly.module.dashboard::field.slug.warning.dashboards','anomaly.module.dashboard::field.slug.placeholder.dashboards','anomaly.module.dashboard::field.slug.instructions.dashboards'),(6,6,'en','anomaly.module.dashboard::field.description.label.dashboards','anomaly.module.dashboard::field.description.warning.dashboards','anomaly.module.dashboard::field.description.placeholder.dashboards','anomaly.module.dashboard::field.description.instructions.dashboards'),(7,7,'en','anomaly.module.dashboard::field.layout.label.dashboards','anomaly.module.dashboard::field.layout.warning.dashboards','anomaly.module.dashboard::field.layout.placeholder.dashboards','anomaly.module.dashboard::field.layout.instructions.dashboards'),(8,8,'en','anomaly.module.dashboard::field.allowed_roles.label.dashboards','anomaly.module.dashboard::field.allowed_roles.warning.dashboards','anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards','anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),(9,9,'en','anomaly.module.dashboard::field.title.label.widgets','anomaly.module.dashboard::field.title.warning.widgets','anomaly.module.dashboard::field.title.placeholder.widgets','anomaly.module.dashboard::field.title.instructions.widgets'),(10,10,'en','anomaly.module.dashboard::field.description.label.widgets','anomaly.module.dashboard::field.description.warning.widgets','anomaly.module.dashboard::field.description.placeholder.widgets','anomaly.module.dashboard::field.description.instructions.widgets'),(11,11,'en','anomaly.module.dashboard::field.extension.label.widgets','anomaly.module.dashboard::field.extension.warning.widgets','anomaly.module.dashboard::field.extension.placeholder.widgets','anomaly.module.dashboard::field.extension.instructions.widgets'),(12,12,'en','anomaly.module.dashboard::field.column.label.widgets','anomaly.module.dashboard::field.column.warning.widgets','anomaly.module.dashboard::field.column.placeholder.widgets','anomaly.module.dashboard::field.column.instructions.widgets'),(13,13,'en','anomaly.module.dashboard::field.dashboard.label.widgets','anomaly.module.dashboard::field.dashboard.warning.widgets','anomaly.module.dashboard::field.dashboard.placeholder.widgets','anomaly.module.dashboard::field.dashboard.instructions.widgets'),(14,14,'en','anomaly.module.dashboard::field.allowed_roles.label.widgets','anomaly.module.dashboard::field.allowed_roles.warning.widgets','anomaly.module.dashboard::field.allowed_roles.placeholder.widgets','anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),(15,15,'en','anomaly.module.dashboard::field.pinned.label.widgets','anomaly.module.dashboard::field.pinned.warning.widgets','anomaly.module.dashboard::field.pinned.placeholder.widgets','anomaly.module.dashboard::field.pinned.instructions.widgets'),(16,16,'en','anomaly.module.files::field.name.label.disks','anomaly.module.files::field.name.warning.disks','anomaly.module.files::field.name.placeholder.disks','anomaly.module.files::field.name.instructions.disks'),(17,17,'en','anomaly.module.files::field.slug.label.disks','anomaly.module.files::field.slug.warning.disks','anomaly.module.files::field.slug.placeholder.disks','anomaly.module.files::field.slug.instructions.disks'),(18,18,'en','anomaly.module.files::field.adapter.label.disks','anomaly.module.files::field.adapter.warning.disks','anomaly.module.files::field.adapter.placeholder.disks','anomaly.module.files::field.adapter.instructions.disks'),(19,19,'en','anomaly.module.files::field.description.label.disks','anomaly.module.files::field.description.warning.disks','anomaly.module.files::field.description.placeholder.disks','anomaly.module.files::field.description.instructions.disks'),(20,20,'en','anomaly.module.files::field.disk.label.folders','anomaly.module.files::field.disk.warning.folders','anomaly.module.files::field.disk.placeholder.folders','anomaly.module.files::field.disk.instructions.folders'),(21,21,'en','anomaly.module.files::field.name.label.folders','anomaly.module.files::field.name.warning.folders','anomaly.module.files::field.name.placeholder.folders','anomaly.module.files::field.name.instructions.folders'),(22,22,'en','anomaly.module.files::field.slug.label.folders','anomaly.module.files::field.slug.warning.folders','anomaly.module.files::field.slug.placeholder.folders','anomaly.module.files::field.slug.instructions.folders'),(23,23,'en','anomaly.module.files::field.description.label.folders','anomaly.module.files::field.description.warning.folders','anomaly.module.files::field.description.placeholder.folders','anomaly.module.files::field.description.instructions.folders'),(24,24,'en','anomaly.module.files::field.allowed_types.label.folders','anomaly.module.files::field.allowed_types.warning.folders','anomaly.module.files::field.allowed_types.placeholder.folders','anomaly.module.files::field.allowed_types.instructions.folders'),(25,25,'en','anomaly.module.files::field.name.label.files','anomaly.module.files::field.name.warning.files','anomaly.module.files::field.name.placeholder.files','anomaly.module.files::field.name.instructions.files'),(26,26,'en','anomaly.module.files::field.disk.label.files','anomaly.module.files::field.disk.warning.files','anomaly.module.files::field.disk.placeholder.files','anomaly.module.files::field.disk.instructions.files'),(27,27,'en','anomaly.module.files::field.folder.label.files','anomaly.module.files::field.folder.warning.files','anomaly.module.files::field.folder.placeholder.files','anomaly.module.files::field.folder.instructions.files'),(28,28,'en','anomaly.module.files::field.extension.label.files','anomaly.module.files::field.extension.warning.files','anomaly.module.files::field.extension.placeholder.files','anomaly.module.files::field.extension.instructions.files'),(29,29,'en','anomaly.module.files::field.size.label.files','anomaly.module.files::field.size.warning.files','anomaly.module.files::field.size.placeholder.files','anomaly.module.files::field.size.instructions.files'),(30,30,'en','anomaly.module.files::field.mime_type.label.files','anomaly.module.files::field.mime_type.warning.files','anomaly.module.files::field.mime_type.placeholder.files','anomaly.module.files::field.mime_type.instructions.files'),(31,31,'en','anomaly.module.files::field.entry.label.files','anomaly.module.files::field.entry.warning.files','anomaly.module.files::field.entry.placeholder.files','anomaly.module.files::field.entry.instructions.files'),(32,32,'en','anomaly.module.files::field.keywords.label.files','anomaly.module.files::field.keywords.warning.files','anomaly.module.files::field.keywords.placeholder.files','anomaly.module.files::field.keywords.instructions.files'),(33,33,'en','anomaly.module.files::field.height.label.files','anomaly.module.files::field.height.warning.files','anomaly.module.files::field.height.placeholder.files','anomaly.module.files::field.height.instructions.files'),(34,34,'en','anomaly.module.files::field.width.label.files','anomaly.module.files::field.width.warning.files','anomaly.module.files::field.width.placeholder.files','anomaly.module.files::field.width.instructions.files'),(35,35,'en','anomaly.module.navigation::field.name.label.menus','anomaly.module.navigation::field.name.warning.menus','anomaly.module.navigation::field.name.placeholder.menus','anomaly.module.navigation::field.name.instructions.menus'),(36,36,'en','anomaly.module.navigation::field.slug.label.menus','anomaly.module.navigation::field.slug.warning.menus','anomaly.module.navigation::field.slug.placeholder.menus','anomaly.module.navigation::field.slug.instructions.menus'),(37,37,'en','anomaly.module.navigation::field.description.label.menus','anomaly.module.navigation::field.description.warning.menus','anomaly.module.navigation::field.description.placeholder.menus','anomaly.module.navigation::field.description.instructions.menus'),(38,38,'en','anomaly.module.navigation::field.menu.label.links','anomaly.module.navigation::field.menu.warning.links','anomaly.module.navigation::field.menu.placeholder.links','anomaly.module.navigation::field.menu.instructions.links'),(39,39,'en','anomaly.module.navigation::field.type.label.links','anomaly.module.navigation::field.type.warning.links','anomaly.module.navigation::field.type.placeholder.links','anomaly.module.navigation::field.type.instructions.links'),(40,40,'en','anomaly.module.navigation::field.entry.label.links','anomaly.module.navigation::field.entry.warning.links','anomaly.module.navigation::field.entry.placeholder.links','anomaly.module.navigation::field.entry.instructions.links'),(41,41,'en','anomaly.module.navigation::field.target.label.links','anomaly.module.navigation::field.target.warning.links','anomaly.module.navigation::field.target.placeholder.links','anomaly.module.navigation::field.target.instructions.links'),(42,42,'en','anomaly.module.navigation::field.class.label.links','anomaly.module.navigation::field.class.warning.links','anomaly.module.navigation::field.class.placeholder.links','anomaly.module.navigation::field.class.instructions.links'),(43,43,'en','anomaly.module.navigation::field.parent.label.links','anomaly.module.navigation::field.parent.warning.links','anomaly.module.navigation::field.parent.placeholder.links','anomaly.module.navigation::field.parent.instructions.links'),(44,44,'en','anomaly.module.navigation::field.allowed_roles.label.links','anomaly.module.navigation::field.allowed_roles.warning.links','anomaly.module.navigation::field.allowed_roles.placeholder.links','anomaly.module.navigation::field.allowed_roles.instructions.links'),(45,45,'en','anomaly.module.pages::field.str_id.label.pages','anomaly.module.pages::field.str_id.warning.pages','anomaly.module.pages::field.str_id.placeholder.pages','anomaly.module.pages::field.str_id.instructions.pages'),(46,46,'en','anomaly.module.pages::field.title.label.pages','anomaly.module.pages::field.title.warning.pages','anomaly.module.pages::field.title.placeholder.pages','anomaly.module.pages::field.title.instructions.pages'),(47,47,'en','anomaly.module.pages::field.slug.label.pages','anomaly.module.pages::field.slug.warning.pages','anomaly.module.pages::field.slug.placeholder.pages','anomaly.module.pages::field.slug.instructions.pages'),(48,48,'en','anomaly.module.pages::field.path.label.pages','anomaly.module.pages::field.path.warning.pages','anomaly.module.pages::field.path.placeholder.pages','anomaly.module.pages::field.path.instructions.pages'),(49,49,'en','anomaly.module.pages::field.type.label.pages','anomaly.module.pages::field.type.warning.pages','anomaly.module.pages::field.type.placeholder.pages','anomaly.module.pages::field.type.instructions.pages'),(50,50,'en','anomaly.module.pages::field.entry.label.pages','anomaly.module.pages::field.entry.warning.pages','anomaly.module.pages::field.entry.placeholder.pages','anomaly.module.pages::field.entry.instructions.pages'),(51,51,'en','anomaly.module.pages::field.parent.label.pages','anomaly.module.pages::field.parent.warning.pages','anomaly.module.pages::field.parent.placeholder.pages','anomaly.module.pages::field.parent.instructions.pages'),(52,52,'en','anomaly.module.pages::field.visible.label.pages','anomaly.module.pages::field.visible.warning.pages','anomaly.module.pages::field.visible.placeholder.pages','anomaly.module.pages::field.visible.instructions.pages'),(53,53,'en','anomaly.module.pages::field.enabled.label.pages','anomaly.module.pages::field.enabled.warning.pages','anomaly.module.pages::field.enabled.placeholder.pages','anomaly.module.pages::field.enabled.instructions.pages'),(54,54,'en','anomaly.module.pages::field.exact.label.pages','anomaly.module.pages::field.exact.warning.pages','anomaly.module.pages::field.exact.placeholder.pages','anomaly.module.pages::field.exact.instructions.pages'),(55,55,'en','anomaly.module.pages::field.home.label.pages','anomaly.module.pages::field.home.warning.pages','anomaly.module.pages::field.home.placeholder.pages','anomaly.module.pages::field.home.instructions.pages'),(56,56,'en','anomaly.module.pages::field.meta_title.label.pages','anomaly.module.pages::field.meta_title.warning.pages','anomaly.module.pages::field.meta_title.placeholder.pages','anomaly.module.pages::field.meta_title.instructions.pages'),(57,57,'en','anomaly.module.pages::field.meta_description.label.pages','anomaly.module.pages::field.meta_description.warning.pages','anomaly.module.pages::field.meta_description.placeholder.pages','anomaly.module.pages::field.meta_description.instructions.pages'),(58,58,'en','anomaly.module.pages::field.meta_keywords.label.pages','anomaly.module.pages::field.meta_keywords.warning.pages','anomaly.module.pages::field.meta_keywords.placeholder.pages','anomaly.module.pages::field.meta_keywords.instructions.pages'),(59,59,'en','anomaly.module.pages::field.theme_layout.label.pages','anomaly.module.pages::field.theme_layout.warning.pages','anomaly.module.pages::field.theme_layout.placeholder.pages','anomaly.module.pages::field.theme_layout.instructions.pages'),(60,60,'en','anomaly.module.pages::field.allowed_roles.label.pages','anomaly.module.pages::field.allowed_roles.warning.pages','anomaly.module.pages::field.allowed_roles.placeholder.pages','anomaly.module.pages::field.allowed_roles.instructions.pages'),(61,61,'en','anomaly.module.pages::field.name.label.types','anomaly.module.pages::field.name.warning.types','anomaly.module.pages::field.name.placeholder.types','anomaly.module.pages::field.name.instructions.types'),(62,62,'en','anomaly.module.pages::field.slug.label.types','anomaly.module.pages::field.slug.warning.types','anomaly.module.pages::field.slug.placeholder.types','anomaly.module.pages::field.slug.instructions.types'),(63,63,'en','anomaly.module.pages::field.description.label.types','anomaly.module.pages::field.description.warning.types','anomaly.module.pages::field.description.placeholder.types','anomaly.module.pages::field.description.instructions.types'),(64,64,'en','anomaly.module.pages::field.theme_layout.label.types','anomaly.module.pages::field.theme_layout.warning.types','anomaly.module.pages::field.theme_layout.placeholder.types','anomaly.module.pages::field.theme_layout.instructions.types'),(65,65,'en','anomaly.module.pages::field.layout.label.types','anomaly.module.pages::field.layout.warning.types','anomaly.module.pages::field.layout.placeholder.types','anomaly.module.pages::field.layout.instructions.types'),(66,66,'en','anomaly.module.pages::field.handler.label.types','anomaly.module.pages::field.handler.warning.types','anomaly.module.pages::field.handler.placeholder.types','anomaly.module.pages::field.handler.instructions.types'),(67,67,'en','anomaly.module.posts::field.name.label.categories','anomaly.module.posts::field.name.warning.categories','anomaly.module.posts::field.name.placeholder.categories','anomaly.module.posts::field.name.instructions.categories'),(68,68,'en','anomaly.module.posts::field.slug.label.categories','anomaly.module.posts::field.slug.warning.categories','anomaly.module.posts::field.slug.placeholder.categories','anomaly.module.posts::field.slug.instructions.categories'),(69,69,'en','anomaly.module.posts::field.description.label.categories','anomaly.module.posts::field.description.warning.categories','anomaly.module.posts::field.description.placeholder.categories','anomaly.module.posts::field.description.instructions.categories'),(70,70,'en','anomaly.module.posts::field.str_id.label.posts','anomaly.module.posts::field.str_id.warning.posts','anomaly.module.posts::field.str_id.placeholder.posts','anomaly.module.posts::field.str_id.instructions.posts'),(71,71,'en','anomaly.module.posts::field.title.label.posts','anomaly.module.posts::field.title.warning.posts','anomaly.module.posts::field.title.placeholder.posts','anomaly.module.posts::field.title.instructions.posts'),(72,72,'en','anomaly.module.posts::field.summary.label.posts','anomaly.module.posts::field.summary.warning.posts','anomaly.module.posts::field.summary.placeholder.posts','anomaly.module.posts::field.summary.instructions.posts'),(73,73,'en','anomaly.module.posts::field.slug.label.posts','anomaly.module.posts::field.slug.warning.posts','anomaly.module.posts::field.slug.placeholder.posts','anomaly.module.posts::field.slug.instructions.posts'),(74,74,'en','anomaly.module.posts::field.type.label.posts','anomaly.module.posts::field.type.warning.posts','anomaly.module.posts::field.type.placeholder.posts','anomaly.module.posts::field.type.instructions.posts'),(75,75,'en','anomaly.module.posts::field.publish_at.label.posts','anomaly.module.posts::field.publish_at.warning.posts','anomaly.module.posts::field.publish_at.placeholder.posts','anomaly.module.posts::field.publish_at.instructions.posts'),(76,76,'en','anomaly.module.posts::field.author.label.posts','anomaly.module.posts::field.author.warning.posts','anomaly.module.posts::field.author.placeholder.posts','anomaly.module.posts::field.author.instructions.posts'),(77,77,'en','anomaly.module.posts::field.entry.label.posts','anomaly.module.posts::field.entry.warning.posts','anomaly.module.posts::field.entry.placeholder.posts','anomaly.module.posts::field.entry.instructions.posts'),(78,78,'en','anomaly.module.posts::field.meta_title.label.posts','anomaly.module.posts::field.meta_title.warning.posts','anomaly.module.posts::field.meta_title.placeholder.posts','anomaly.module.posts::field.meta_title.instructions.posts'),(79,79,'en','anomaly.module.posts::field.meta_description.label.posts','anomaly.module.posts::field.meta_description.warning.posts','anomaly.module.posts::field.meta_description.placeholder.posts','anomaly.module.posts::field.meta_description.instructions.posts'),(80,80,'en','anomaly.module.posts::field.meta_keywords.label.posts','anomaly.module.posts::field.meta_keywords.warning.posts','anomaly.module.posts::field.meta_keywords.placeholder.posts','anomaly.module.posts::field.meta_keywords.instructions.posts'),(81,81,'en','anomaly.module.posts::field.category.label.posts','anomaly.module.posts::field.category.warning.posts','anomaly.module.posts::field.category.placeholder.posts','anomaly.module.posts::field.category.instructions.posts'),(82,82,'en','anomaly.module.posts::field.featured.label.posts','anomaly.module.posts::field.featured.warning.posts','anomaly.module.posts::field.featured.placeholder.posts','anomaly.module.posts::field.featured.instructions.posts'),(83,83,'en','anomaly.module.posts::field.enabled.label.posts','anomaly.module.posts::field.enabled.warning.posts','anomaly.module.posts::field.enabled.placeholder.posts','anomaly.module.posts::field.enabled.instructions.posts'),(84,84,'en','anomaly.module.posts::field.tags.label.posts','anomaly.module.posts::field.tags.warning.posts','anomaly.module.posts::field.tags.placeholder.posts','anomaly.module.posts::field.tags.instructions.posts'),(85,85,'en','anomaly.module.posts::field.name.label.types','anomaly.module.posts::field.name.warning.types','anomaly.module.posts::field.name.placeholder.types','anomaly.module.posts::field.name.instructions.types'),(86,86,'en','anomaly.module.posts::field.slug.label.types','anomaly.module.posts::field.slug.warning.types','anomaly.module.posts::field.slug.placeholder.types','anomaly.module.posts::field.slug.instructions.types'),(87,87,'en','anomaly.module.posts::field.layout.label.types','anomaly.module.posts::field.layout.warning.types','anomaly.module.posts::field.layout.placeholder.types','anomaly.module.posts::field.layout.instructions.types'),(88,88,'en','anomaly.module.posts::field.theme_layout.label.types','anomaly.module.posts::field.theme_layout.warning.types','anomaly.module.posts::field.theme_layout.placeholder.types','anomaly.module.posts::field.theme_layout.instructions.types'),(89,89,'en','anomaly.module.posts::field.description.label.types','anomaly.module.posts::field.description.warning.types','anomaly.module.posts::field.description.placeholder.types','anomaly.module.posts::field.description.instructions.types'),(90,90,'en','anomaly.module.preferences::field.user.label.preferences','anomaly.module.preferences::field.user.warning.preferences','anomaly.module.preferences::field.user.placeholder.preferences','anomaly.module.preferences::field.user.instructions.preferences'),(91,91,'en','anomaly.module.preferences::field.key.label.preferences','anomaly.module.preferences::field.key.warning.preferences','anomaly.module.preferences::field.key.placeholder.preferences','anomaly.module.preferences::field.key.instructions.preferences'),(92,92,'en','anomaly.module.preferences::field.value.label.preferences','anomaly.module.preferences::field.value.warning.preferences','anomaly.module.preferences::field.value.placeholder.preferences','anomaly.module.preferences::field.value.instructions.preferences'),(93,93,'en','anomaly.module.redirects::field.from.label.redirects','anomaly.module.redirects::field.from.warning.redirects','anomaly.module.redirects::field.from.placeholder.redirects','anomaly.module.redirects::field.from.instructions.redirects'),(94,94,'en','anomaly.module.redirects::field.to.label.redirects','anomaly.module.redirects::field.to.warning.redirects','anomaly.module.redirects::field.to.placeholder.redirects','anomaly.module.redirects::field.to.instructions.redirects'),(95,95,'en','anomaly.module.redirects::field.status.label.redirects','anomaly.module.redirects::field.status.warning.redirects','anomaly.module.redirects::field.status.placeholder.redirects','anomaly.module.redirects::field.status.instructions.redirects'),(96,96,'en','anomaly.module.redirects::field.secure.label.redirects','anomaly.module.redirects::field.secure.warning.redirects','anomaly.module.redirects::field.secure.placeholder.redirects','anomaly.module.redirects::field.secure.instructions.redirects'),(97,97,'en','anomaly.module.settings::field.key.label.settings','anomaly.module.settings::field.key.warning.settings','anomaly.module.settings::field.key.placeholder.settings','anomaly.module.settings::field.key.instructions.settings'),(98,98,'en','anomaly.module.settings::field.value.label.settings','anomaly.module.settings::field.value.warning.settings','anomaly.module.settings::field.value.placeholder.settings','anomaly.module.settings::field.value.instructions.settings'),(99,99,'en','anomaly.module.users::field.email.label.users','anomaly.module.users::field.email.warning.users','anomaly.module.users::field.email.placeholder.users','anomaly.module.users::field.email.instructions.users'),(100,100,'en','anomaly.module.users::field.username.label.users','anomaly.module.users::field.username.warning.users','anomaly.module.users::field.username.placeholder.users','anomaly.module.users::field.username.instructions.users'),(101,101,'en','anomaly.module.users::field.password.label.users','anomaly.module.users::field.password.warning.users','anomaly.module.users::field.password.placeholder.users','anomaly.module.users::field.password.instructions.users'),(102,102,'en','anomaly.module.users::field.roles.label.users','anomaly.module.users::field.roles.warning.users','anomaly.module.users::field.roles.placeholder.users','anomaly.module.users::field.roles.instructions.users'),(103,103,'en','anomaly.module.users::field.display_name.label.users','anomaly.module.users::field.display_name.warning.users','anomaly.module.users::field.display_name.placeholder.users','anomaly.module.users::field.display_name.instructions.users'),(104,104,'en','anomaly.module.users::field.first_name.label.users','anomaly.module.users::field.first_name.warning.users','anomaly.module.users::field.first_name.placeholder.users','anomaly.module.users::field.first_name.instructions.users'),(105,105,'en','anomaly.module.users::field.last_name.label.users','anomaly.module.users::field.last_name.warning.users','anomaly.module.users::field.last_name.placeholder.users','anomaly.module.users::field.last_name.instructions.users'),(106,106,'en','anomaly.module.users::field.activated.label.users','anomaly.module.users::field.activated.warning.users','anomaly.module.users::field.activated.placeholder.users','anomaly.module.users::field.activated.instructions.users'),(107,107,'en','anomaly.module.users::field.enabled.label.users','anomaly.module.users::field.enabled.warning.users','anomaly.module.users::field.enabled.placeholder.users','anomaly.module.users::field.enabled.instructions.users'),(108,108,'en','anomaly.module.users::field.permissions.label.users','anomaly.module.users::field.permissions.warning.users','anomaly.module.users::field.permissions.placeholder.users','anomaly.module.users::field.permissions.instructions.users'),(109,109,'en','anomaly.module.users::field.last_login_at.label.users','anomaly.module.users::field.last_login_at.warning.users','anomaly.module.users::field.last_login_at.placeholder.users','anomaly.module.users::field.last_login_at.instructions.users'),(110,110,'en','anomaly.module.users::field.remember_token.label.users','anomaly.module.users::field.remember_token.warning.users','anomaly.module.users::field.remember_token.placeholder.users','anomaly.module.users::field.remember_token.instructions.users'),(111,111,'en','anomaly.module.users::field.activation_code.label.users','anomaly.module.users::field.activation_code.warning.users','anomaly.module.users::field.activation_code.placeholder.users','anomaly.module.users::field.activation_code.instructions.users'),(112,112,'en','anomaly.module.users::field.reset_code.label.users','anomaly.module.users::field.reset_code.warning.users','anomaly.module.users::field.reset_code.placeholder.users','anomaly.module.users::field.reset_code.instructions.users'),(113,113,'en','anomaly.module.users::field.last_activity_at.label.users','anomaly.module.users::field.last_activity_at.warning.users','anomaly.module.users::field.last_activity_at.placeholder.users','anomaly.module.users::field.last_activity_at.instructions.users'),(114,114,'en','anomaly.module.users::field.ip_address.label.users','anomaly.module.users::field.ip_address.warning.users','anomaly.module.users::field.ip_address.placeholder.users','anomaly.module.users::field.ip_address.instructions.users'),(115,115,'en','anomaly.module.users::field.name.label.roles','anomaly.module.users::field.name.warning.roles','anomaly.module.users::field.name.placeholder.roles','anomaly.module.users::field.name.instructions.roles'),(116,116,'en','anomaly.module.users::field.slug.label.roles','anomaly.module.users::field.slug.warning.roles','anomaly.module.users::field.slug.placeholder.roles','anomaly.module.users::field.slug.instructions.roles'),(117,117,'en','anomaly.module.users::field.description.label.roles','anomaly.module.users::field.description.warning.roles','anomaly.module.users::field.description.placeholder.roles','anomaly.module.users::field.description.instructions.roles'),(118,118,'en','anomaly.module.users::field.permissions.label.roles','anomaly.module.users::field.permissions.warning.roles','anomaly.module.users::field.permissions.placeholder.roles','anomaly.module.users::field.permissions.instructions.roles'),(119,119,'en','anomaly.extension.page_link_type::field.title.label.pages','anomaly.extension.page_link_type::field.title.warning.pages','anomaly.extension.page_link_type::field.title.placeholder.pages','anomaly.extension.page_link_type::field.title.instructions.pages'),(120,120,'en','anomaly.extension.page_link_type::field.page.label.pages','anomaly.extension.page_link_type::field.page.warning.pages','anomaly.extension.page_link_type::field.page.placeholder.pages','anomaly.extension.page_link_type::field.page.instructions.pages'),(121,121,'en','anomaly.extension.page_link_type::field.description.label.pages','anomaly.extension.page_link_type::field.description.warning.pages','anomaly.extension.page_link_type::field.description.placeholder.pages','anomaly.extension.page_link_type::field.description.instructions.pages'),(122,122,'en','anomaly.extension.url_link_type::field.title.label.urls','anomaly.extension.url_link_type::field.title.warning.urls','anomaly.extension.url_link_type::field.title.placeholder.urls','anomaly.extension.url_link_type::field.title.instructions.urls'),(123,123,'en','anomaly.extension.url_link_type::field.url.label.urls','anomaly.extension.url_link_type::field.url.warning.urls','anomaly.extension.url_link_type::field.url.placeholder.urls','anomaly.extension.url_link_type::field.url.instructions.urls'),(124,124,'en','anomaly.extension.url_link_type::field.description.label.urls','anomaly.extension.url_link_type::field.description.warning.urls','anomaly.extension.url_link_type::field.description.placeholder.urls','anomaly.extension.url_link_type::field.description.instructions.urls'),(125,125,'en',NULL,NULL,NULL,NULL),(126,126,'en',NULL,NULL,NULL,NULL),(127,127,'en',NULL,NULL,NULL,NULL),(128,128,'en',NULL,NULL,NULL,NULL),(129,129,'en',NULL,NULL,NULL,NULL),(130,130,'en',NULL,NULL,NULL,NULL),(131,131,'en',NULL,NULL,NULL,NULL),(132,132,'en',NULL,NULL,NULL,NULL),(133,133,'en',NULL,NULL,NULL,NULL),(134,134,'en','Slogan',NULL,NULL,'This text will be overlayed on top of the banner image'),(135,135,'en',NULL,NULL,NULL,NULL),(136,136,'en',NULL,NULL,NULL,NULL),(137,137,'en',NULL,NULL,NULL,NULL),(140,140,'en',NULL,NULL,NULL,NULL),(141,141,'en',NULL,NULL,NULL,NULL),(143,143,'en',NULL,NULL,NULL,NULL),(144,144,'en',NULL,NULL,NULL,NULL),(145,145,'en',NULL,NULL,NULL,NULL),(146,146,'en',NULL,NULL,NULL,NULL),(147,147,'en',NULL,NULL,NULL,NULL),(148,148,'en',NULL,NULL,NULL,NULL),(150,150,'en',NULL,NULL,NULL,NULL),(151,151,'en',NULL,NULL,NULL,NULL),(152,152,'en',NULL,NULL,NULL,NULL),(153,153,'en',NULL,NULL,NULL,NULL),(154,154,'en',NULL,NULL,NULL,NULL),(155,155,'en',NULL,NULL,NULL,NULL),(156,156,'en',NULL,NULL,NULL,NULL),(157,157,'en',NULL,NULL,NULL,NULL),(158,158,'en',NULL,NULL,NULL,NULL),(159,159,'en',NULL,NULL,NULL,NULL),(160,160,'en',NULL,NULL,NULL,NULL),(161,161,'en',NULL,NULL,NULL,NULL),(162,162,'en',NULL,NULL,NULL,NULL),(163,163,'en',NULL,NULL,NULL,NULL),(164,164,'en',NULL,NULL,NULL,NULL),(165,165,'en',NULL,NULL,NULL,NULL),(166,166,'en',NULL,NULL,NULL,NULL),(167,167,'en',NULL,NULL,NULL,NULL),(168,168,'en',NULL,NULL,NULL,NULL),(169,169,'en',NULL,NULL,NULL,NULL),(170,170,'en',NULL,NULL,NULL,NULL),(171,171,'en',NULL,NULL,NULL,NULL),(172,172,'en',NULL,NULL,NULL,NULL),(173,173,'en',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `src_streams_assignments_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_streams_fields`
--

DROP TABLE IF EXISTS `src_streams_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_streams_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_streams` (`namespace`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_fields`
--

LOCK TABLES `src_streams_fields` WRITE;
/*!40000 ALTER TABLE `src_streams_fields` DISABLE KEYS */;
INSERT INTO `src_streams_fields` VALUES (1,'configuration','scope','anomaly.field_type.text','a:0:{}',1),(2,'configuration','key','anomaly.field_type.text','a:0:{}',1),(3,'configuration','value','anomaly.field_type.textarea','a:0:{}',1),(4,'dashboard','name','anomaly.field_type.text','a:0:{}',1),(5,'dashboard','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(6,'dashboard','description','anomaly.field_type.textarea','a:0:{}',1),(7,'dashboard','layout','anomaly.field_type.select','a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}',1),(8,'dashboard','title','anomaly.field_type.text','a:0:{}',1),(9,'dashboard','extension','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}',1),(10,'dashboard','column','anomaly.field_type.integer','a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}',1),(11,'dashboard','pinned','anomaly.field_type.boolean','a:0:{}',1),(12,'dashboard','dashboard','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}',1),(13,'dashboard','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(14,'files','name','anomaly.field_type.text','a:0:{}',1),(15,'files','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(16,'files','adapter','anomaly.field_type.addon','a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}',1),(17,'files','folder','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}',1),(18,'files','disk','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}',1),(19,'files','entry','anomaly.field_type.polymorphic','a:0:{}',1),(20,'files','description','anomaly.field_type.textarea','a:0:{}',1),(21,'files','allowed_types','anomaly.field_type.tags','a:0:{}',1),(22,'files','keywords','anomaly.field_type.tags','a:0:{}',1),(23,'files','extension','anomaly.field_type.text','a:0:{}',1),(24,'files','width','anomaly.field_type.text','a:0:{}',1),(25,'files','height','anomaly.field_type.text','a:0:{}',1),(26,'files','mime_type','anomaly.field_type.text','a:0:{}',1),(27,'files','size','anomaly.field_type.integer','a:0:{}',1),(28,'navigation','name','anomaly.field_type.text','a:0:{}',1),(29,'navigation','class','anomaly.field_type.text','a:0:{}',1),(30,'navigation','description','anomaly.field_type.textarea','a:0:{}',1),(31,'navigation','entry','anomaly.field_type.polymorphic','a:0:{}',1),(32,'navigation','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(33,'navigation','menu','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}',1),(34,'navigation','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}',1),(35,'navigation','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(36,'navigation','type','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}',1),(37,'navigation','target','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}',1),(38,'pages','str_id','anomaly.field_type.text','a:0:{}',1),(39,'pages','title','anomaly.field_type.text','a:0:{}',1),(40,'pages','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(41,'pages','content','anomaly.field_type.wysiwyg','a:0:{}',0),(42,'pages','path','anomaly.field_type.text','a:0:{}',1),(43,'pages','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(44,'pages','home','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(45,'pages','meta_title','anomaly.field_type.text','a:0:{}',1),(46,'pages','meta_description','anomaly.field_type.textarea','a:0:{}',1),(47,'pages','meta_keywords','anomaly.field_type.tags','a:0:{}',1),(48,'pages','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}',1),(49,'pages','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(50,'pages','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(51,'pages','theme_layout','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}',1),(52,'pages','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}',1),(53,'pages','handler','anomaly.field_type.addon','a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}',1),(54,'pages','visible','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(55,'pages','exact','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(56,'pages','entry','anomaly.field_type.polymorphic','a:0:{}',1),(57,'pages','name','anomaly.field_type.text','a:0:{}',1),(58,'pages','description','anomaly.field_type.textarea','a:0:{}',1),(59,'posts','str_id','anomaly.field_type.text','a:0:{}',1),(60,'posts','name','anomaly.field_type.text','a:0:{}',1),(61,'posts','title','anomaly.field_type.text','a:0:{}',1),(62,'posts','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(63,'posts','content','anomaly.field_type.wysiwyg','a:0:{}',0),(64,'posts','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}',1),(65,'posts','tags','anomaly.field_type.tags','a:0:{}',1),(66,'posts','summary','anomaly.field_type.textarea','a:0:{}',1),(67,'posts','description','anomaly.field_type.textarea','a:0:{}',1),(68,'posts','publish_at','anomaly.field_type.datetime','a:0:{}',1),(69,'posts','entry','anomaly.field_type.polymorphic','a:0:{}',1),(70,'posts','author','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(71,'posts','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}',1),(72,'posts','category','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}',1),(73,'posts','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(74,'posts','featured','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(75,'posts','meta_title','anomaly.field_type.text','a:0:{}',1),(76,'posts','meta_description','anomaly.field_type.textarea','a:0:{}',1),(77,'posts','meta_keywords','anomaly.field_type.tags','a:0:{}',1),(78,'posts','ttl','anomaly.field_type.integer','a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}',1),(79,'posts','theme_layout','anomaly.field_type.select','a:1:{s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}',1),(80,'preferences','user','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(81,'preferences','key','anomaly.field_type.text','a:0:{}',1),(82,'preferences','value','anomaly.field_type.textarea','a:0:{}',1),(83,'redirects','from','anomaly.field_type.text','a:0:{}',1),(84,'redirects','to','anomaly.field_type.text','a:0:{}',1),(85,'redirects','status','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}',1),(86,'redirects','secure','anomaly.field_type.boolean','a:0:{}',1),(87,'settings','key','anomaly.field_type.text','a:0:{}',1),(88,'settings','value','anomaly.field_type.textarea','a:0:{}',1),(89,'users','email','anomaly.field_type.email','a:0:{}',1),(90,'users','username','anomaly.field_type.slug','a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}',1),(91,'users','password','anomaly.field_type.text','a:1:{s:4:\"type\";s:8:\"password\";}',1),(92,'users','remember_token','anomaly.field_type.text','a:0:{}',1),(93,'users','ip_address','anomaly.field_type.text','a:0:{}',1),(94,'users','last_login_at','anomaly.field_type.datetime','a:0:{}',1),(95,'users','last_activity_at','anomaly.field_type.datetime','a:0:{}',1),(96,'users','permissions','anomaly.field_type.checkboxes','a:0:{}',1),(97,'users','display_name','anomaly.field_type.text','a:0:{}',1),(98,'users','first_name','anomaly.field_type.text','a:0:{}',1),(99,'users','last_name','anomaly.field_type.text','a:0:{}',1),(100,'users','name','anomaly.field_type.text','a:0:{}',1),(101,'users','description','anomaly.field_type.textarea','a:0:{}',1),(102,'users','reset_code','anomaly.field_type.text','a:0:{}',1),(103,'users','reset_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(104,'users','activation_code','anomaly.field_type.text','a:0:{}',1),(105,'users','activation_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(106,'users','activated','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(107,'users','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(108,'users','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(109,'users','roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(110,'page_link_type','title','anomaly.field_type.text','a:0:{}',1),(111,'page_link_type','page','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(112,'page_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(113,'url_link_type','title','anomaly.field_type.text','a:0:{}',1),(114,'url_link_type','url','anomaly.field_type.text','a:0:{}',1),(115,'url_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(116,'pages','slogan_line_1','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";s:2:\"25\";s:13:\"default_value\";N;}',0),(117,'pages','slogan_line_2','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";s:2:\"15\";s:13:\"default_value\";N;}',0),(118,'pages','about_us_left_column','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(119,'pages','about_us_center_column','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(120,'pages','about_us_right_column','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(121,'pages','banner_image','anomaly.field_type.file','a:2:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";s:3:\"7.0\";}',0),(122,'posts','url','anomaly.field_type.url','a:1:{s:13:\"default_value\";N;}',0),(123,'posts','link_description','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(126,'pages','menu','anomaly.field_type.relationship','a:2:{s:7:\"related\";s:67:\"Anomaly\\Streams\\Platform\\Model\\Navigation\\NavigationMenusEntryModel\";s:4:\"mode\";s:8:\"dropdown\";}',0),(127,'pages','menus','anomaly.field_type.multiple','a:4:{s:7:\"related\";s:67:\"Anomaly\\Streams\\Platform\\Model\\Navigation\\NavigationMenusEntryModel\";s:4:\"mode\";s:4:\"tags\";s:3:\"min\";N;s:3:\"max\";N;}',0),(128,'pages','temp_seasonal_job_vacancies','anomaly.field_type.wysiwyg','a:4:{s:7:\"buttons\";a:8:{i:0;s:6:\"format\";i:1;s:4:\"bold\";i:2;s:6:\"italic\";i:3;s:7:\"deleted\";i:4;s:5:\"lists\";i:5;s:4:\"link\";i:6;s:14:\"horizontalrule\";i:7;s:9:\"underline\";}s:7:\"plugins\";a:8:{i:0;s:9:\"alignment\";i:1;s:11:\"inlinestyle\";i:2;s:5:\"table\";i:3;s:5:\"video\";i:4;s:11:\"filemanager\";i:5;s:12:\"imagemanager\";i:6;s:6:\"source\";i:7;s:10:\"fullscreen\";}s:6:\"height\";s:3:\"500\";s:11:\"line_breaks\";b:0;}',0),(129,'pages','permanent_job_vacancies','anomaly.field_type.wysiwyg','a:4:{s:7:\"buttons\";a:8:{i:0;s:6:\"format\";i:1;s:4:\"bold\";i:2;s:6:\"italic\";i:3;s:7:\"deleted\";i:4;s:5:\"lists\";i:5;s:4:\"link\";i:6;s:14:\"horizontalrule\";i:7;s:9:\"underline\";}s:7:\"plugins\";a:8:{i:0;s:9:\"alignment\";i:1;s:11:\"inlinestyle\";i:2;s:5:\"table\";i:3;s:5:\"video\";i:4;s:11:\"filemanager\";i:5;s:12:\"imagemanager\";i:6;s:6:\"source\";i:7;s:10:\"fullscreen\";}s:6:\"height\";s:3:\"500\";s:11:\"line_breaks\";b:0;}',0),(130,'pages','content_left_column','anomaly.field_type.wysiwyg','a:4:{s:7:\"buttons\";a:8:{i:0;s:6:\"format\";i:1;s:4:\"bold\";i:2;s:6:\"italic\";i:3;s:7:\"deleted\";i:4;s:5:\"lists\";i:5;s:4:\"link\";i:6;s:14:\"horizontalrule\";i:7;s:9:\"underline\";}s:7:\"plugins\";a:8:{i:0;s:9:\"alignment\";i:1;s:11:\"inlinestyle\";i:2;s:5:\"table\";i:3;s:5:\"video\";i:4;s:11:\"filemanager\";i:5;s:12:\"imagemanager\";i:6;s:6:\"source\";i:7;s:10:\"fullscreen\";}s:6:\"height\";s:3:\"200\";s:11:\"line_breaks\";b:0;}',0),(131,'pages','content_middle_column','anomaly.field_type.wysiwyg','a:4:{s:7:\"buttons\";a:8:{i:0;s:6:\"format\";i:1;s:4:\"bold\";i:2;s:6:\"italic\";i:3;s:7:\"deleted\";i:4;s:5:\"lists\";i:5;s:4:\"link\";i:6;s:14:\"horizontalrule\";i:7;s:9:\"underline\";}s:7:\"plugins\";a:8:{i:0;s:9:\"alignment\";i:1;s:11:\"inlinestyle\";i:2;s:5:\"table\";i:3;s:5:\"video\";i:4;s:11:\"filemanager\";i:5;s:12:\"imagemanager\";i:6;s:6:\"source\";i:7;s:10:\"fullscreen\";}s:6:\"height\";s:3:\"200\";s:11:\"line_breaks\";b:0;}',0),(132,'pages','content_right_column','anomaly.field_type.wysiwyg','a:4:{s:7:\"buttons\";a:8:{i:0;s:6:\"format\";i:1;s:4:\"bold\";i:2;s:6:\"italic\";i:3;s:7:\"deleted\";i:4;s:5:\"lists\";i:5;s:4:\"link\";i:6;s:14:\"horizontalrule\";i:7;s:9:\"underline\";}s:7:\"plugins\";a:8:{i:0;s:9:\"alignment\";i:1;s:11:\"inlinestyle\";i:2;s:5:\"table\";i:3;s:5:\"video\";i:4;s:11:\"filemanager\";i:5;s:12:\"imagemanager\";i:6;s:6:\"source\";i:7;s:10:\"fullscreen\";}s:6:\"height\";s:3:\"200\";s:11:\"line_breaks\";b:0;}',0),(133,'variables','street_address','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"3\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(134,'variables','phone','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(135,'variables','fax','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(136,'variables','email','anomaly.field_type.email','a:1:{s:13:\"default_value\";N;}',0),(137,'variables','facebook_page_url','anomaly.field_type.url','a:1:{s:13:\"default_value\";N;}',0),(138,'variables','google_maps_iframe','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(139,'variables','latitude','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(140,'variables','longitude','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(141,'pages','services_1','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"4\";s:3:\"min\";N;s:3:\"max\";s:3:\"225\";s:13:\"default_value\";N;}',0),(142,'pages','services_2','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"4\";s:3:\"min\";N;s:3:\"max\";s:3:\"225\";s:13:\"default_value\";N;}',0),(143,'pages','services_3','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"4\";s:3:\"min\";N;s:3:\"max\";s:3:\"225\";s:13:\"default_value\";N;}',0),(144,'pages','services_4','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"4\";s:3:\"min\";N;s:3:\"max\";s:3:\"225\";s:13:\"default_value\";N;}',0),(145,'pages','services_1_title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";s:2:\"25\";s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(146,'pages','services_2_title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";s:2:\"25\";s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(147,'pages','services_3_title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";s:2:\"25\";s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(148,'pages','services_4_title','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";s:2:\"25\";s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(149,'posts','photo','anomaly.field_type.file','a:2:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";s:3:\"8.0\";}',0),(150,'variables','banner_image','anomaly.field_type.file','a:2:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";s:3:\"8.0\";}',0),(151,'variables','slogan','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";s:2:\"40\";s:12:\"show_counter\";b:1;s:9:\"suggested\";N;s:13:\"default_value\";s:19:\"Siskiyou Rappellers\";}',0);
/*!40000 ALTER TABLE `src_streams_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_streams_fields_translations`
--

DROP TABLE IF EXISTS `src_streams_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_streams_fields_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `streams_fields_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_fields_translations`
--

LOCK TABLES `src_streams_fields_translations` WRITE;
/*!40000 ALTER TABLE `src_streams_fields_translations` DISABLE KEYS */;
INSERT INTO `src_streams_fields_translations` VALUES (1,1,'en','anomaly.module.configuration::field.scope.name','anomaly.module.configuration::field.scope.placeholder','anomaly.module.configuration::field.scope.warning','anomaly.module.configuration::field.scope.instructions'),(2,2,'en','anomaly.module.configuration::field.key.name','anomaly.module.configuration::field.key.placeholder','anomaly.module.configuration::field.key.warning','anomaly.module.configuration::field.key.instructions'),(3,3,'en','anomaly.module.configuration::field.value.name','anomaly.module.configuration::field.value.placeholder','anomaly.module.configuration::field.value.warning','anomaly.module.configuration::field.value.instructions'),(4,4,'en','anomaly.module.dashboard::field.name.name','anomaly.module.dashboard::field.name.placeholder','anomaly.module.dashboard::field.name.warning','anomaly.module.dashboard::field.name.instructions'),(5,5,'en','anomaly.module.dashboard::field.slug.name','anomaly.module.dashboard::field.slug.placeholder','anomaly.module.dashboard::field.slug.warning','anomaly.module.dashboard::field.slug.instructions'),(6,6,'en','anomaly.module.dashboard::field.description.name','anomaly.module.dashboard::field.description.placeholder','anomaly.module.dashboard::field.description.warning','anomaly.module.dashboard::field.description.instructions'),(7,7,'en','anomaly.module.dashboard::field.layout.name','anomaly.module.dashboard::field.layout.placeholder','anomaly.module.dashboard::field.layout.warning','anomaly.module.dashboard::field.layout.instructions'),(8,8,'en','anomaly.module.dashboard::field.title.name','anomaly.module.dashboard::field.title.placeholder','anomaly.module.dashboard::field.title.warning','anomaly.module.dashboard::field.title.instructions'),(9,9,'en','anomaly.module.dashboard::field.extension.name','anomaly.module.dashboard::field.extension.placeholder','anomaly.module.dashboard::field.extension.warning','anomaly.module.dashboard::field.extension.instructions'),(10,10,'en','anomaly.module.dashboard::field.column.name','anomaly.module.dashboard::field.column.placeholder','anomaly.module.dashboard::field.column.warning','anomaly.module.dashboard::field.column.instructions'),(11,11,'en','anomaly.module.dashboard::field.pinned.name','anomaly.module.dashboard::field.pinned.placeholder','anomaly.module.dashboard::field.pinned.warning','anomaly.module.dashboard::field.pinned.instructions'),(12,12,'en','anomaly.module.dashboard::field.dashboard.name','anomaly.module.dashboard::field.dashboard.placeholder','anomaly.module.dashboard::field.dashboard.warning','anomaly.module.dashboard::field.dashboard.instructions'),(13,13,'en','anomaly.module.dashboard::field.allowed_roles.name','anomaly.module.dashboard::field.allowed_roles.placeholder','anomaly.module.dashboard::field.allowed_roles.warning','anomaly.module.dashboard::field.allowed_roles.instructions'),(14,14,'en','anomaly.module.files::field.name.name','anomaly.module.files::field.name.placeholder','anomaly.module.files::field.name.warning','anomaly.module.files::field.name.instructions'),(15,15,'en','anomaly.module.files::field.slug.name','anomaly.module.files::field.slug.placeholder','anomaly.module.files::field.slug.warning','anomaly.module.files::field.slug.instructions'),(16,16,'en','anomaly.module.files::field.adapter.name','anomaly.module.files::field.adapter.placeholder','anomaly.module.files::field.adapter.warning','anomaly.module.files::field.adapter.instructions'),(17,17,'en','anomaly.module.files::field.folder.name','anomaly.module.files::field.folder.placeholder','anomaly.module.files::field.folder.warning','anomaly.module.files::field.folder.instructions'),(18,18,'en','anomaly.module.files::field.disk.name','anomaly.module.files::field.disk.placeholder','anomaly.module.files::field.disk.warning','anomaly.module.files::field.disk.instructions'),(19,19,'en','anomaly.module.files::field.entry.name','anomaly.module.files::field.entry.placeholder','anomaly.module.files::field.entry.warning','anomaly.module.files::field.entry.instructions'),(20,20,'en','anomaly.module.files::field.description.name','anomaly.module.files::field.description.placeholder','anomaly.module.files::field.description.warning','anomaly.module.files::field.description.instructions'),(21,21,'en','anomaly.module.files::field.allowed_types.name','anomaly.module.files::field.allowed_types.placeholder','anomaly.module.files::field.allowed_types.warning','anomaly.module.files::field.allowed_types.instructions'),(22,22,'en','anomaly.module.files::field.keywords.name','anomaly.module.files::field.keywords.placeholder','anomaly.module.files::field.keywords.warning','anomaly.module.files::field.keywords.instructions'),(23,23,'en','anomaly.module.files::field.extension.name','anomaly.module.files::field.extension.placeholder','anomaly.module.files::field.extension.warning','anomaly.module.files::field.extension.instructions'),(24,24,'en','anomaly.module.files::field.width.name','anomaly.module.files::field.width.placeholder','anomaly.module.files::field.width.warning','anomaly.module.files::field.width.instructions'),(25,25,'en','anomaly.module.files::field.height.name','anomaly.module.files::field.height.placeholder','anomaly.module.files::field.height.warning','anomaly.module.files::field.height.instructions'),(26,26,'en','anomaly.module.files::field.mime_type.name','anomaly.module.files::field.mime_type.placeholder','anomaly.module.files::field.mime_type.warning','anomaly.module.files::field.mime_type.instructions'),(27,27,'en','anomaly.module.files::field.size.name','anomaly.module.files::field.size.placeholder','anomaly.module.files::field.size.warning','anomaly.module.files::field.size.instructions'),(28,28,'en','anomaly.module.navigation::field.name.name','anomaly.module.navigation::field.name.placeholder','anomaly.module.navigation::field.name.warning','anomaly.module.navigation::field.name.instructions'),(29,29,'en','anomaly.module.navigation::field.class.name','anomaly.module.navigation::field.class.placeholder','anomaly.module.navigation::field.class.warning','anomaly.module.navigation::field.class.instructions'),(30,30,'en','anomaly.module.navigation::field.description.name','anomaly.module.navigation::field.description.placeholder','anomaly.module.navigation::field.description.warning','anomaly.module.navigation::field.description.instructions'),(31,31,'en','anomaly.module.navigation::field.entry.name','anomaly.module.navigation::field.entry.placeholder','anomaly.module.navigation::field.entry.warning','anomaly.module.navigation::field.entry.instructions'),(32,32,'en','anomaly.module.navigation::field.slug.name','anomaly.module.navigation::field.slug.placeholder','anomaly.module.navigation::field.slug.warning','anomaly.module.navigation::field.slug.instructions'),(33,33,'en','anomaly.module.navigation::field.menu.name','anomaly.module.navigation::field.menu.placeholder','anomaly.module.navigation::field.menu.warning','anomaly.module.navigation::field.menu.instructions'),(34,34,'en','anomaly.module.navigation::field.parent.name','anomaly.module.navigation::field.parent.placeholder','anomaly.module.navigation::field.parent.warning','anomaly.module.navigation::field.parent.instructions'),(35,35,'en','anomaly.module.navigation::field.allowed_roles.name','anomaly.module.navigation::field.allowed_roles.placeholder','anomaly.module.navigation::field.allowed_roles.warning','anomaly.module.navigation::field.allowed_roles.instructions'),(36,36,'en','anomaly.module.navigation::field.type.name','anomaly.module.navigation::field.type.placeholder','anomaly.module.navigation::field.type.warning','anomaly.module.navigation::field.type.instructions'),(37,37,'en','anomaly.module.navigation::field.target.name','anomaly.module.navigation::field.target.placeholder','anomaly.module.navigation::field.target.warning','anomaly.module.navigation::field.target.instructions'),(38,38,'en','anomaly.module.pages::field.str_id.name','anomaly.module.pages::field.str_id.placeholder','anomaly.module.pages::field.str_id.warning','anomaly.module.pages::field.str_id.instructions'),(39,39,'en','anomaly.module.pages::field.title.name','anomaly.module.pages::field.title.placeholder','anomaly.module.pages::field.title.warning','anomaly.module.pages::field.title.instructions'),(40,40,'en','anomaly.module.pages::field.slug.name','anomaly.module.pages::field.slug.placeholder','anomaly.module.pages::field.slug.warning','anomaly.module.pages::field.slug.instructions'),(41,41,'en','anomaly.module.pages::field.content.name','anomaly.module.pages::field.content.placeholder','anomaly.module.pages::field.content.warning','anomaly.module.pages::field.content.instructions'),(42,42,'en','anomaly.module.pages::field.path.name','anomaly.module.pages::field.path.placeholder','anomaly.module.pages::field.path.warning','anomaly.module.pages::field.path.instructions'),(43,43,'en','anomaly.module.pages::field.enabled.name','anomaly.module.pages::field.enabled.placeholder','anomaly.module.pages::field.enabled.warning','anomaly.module.pages::field.enabled.instructions'),(44,44,'en','anomaly.module.pages::field.home.name','anomaly.module.pages::field.home.placeholder','anomaly.module.pages::field.home.warning','anomaly.module.pages::field.home.instructions'),(45,45,'en','anomaly.module.pages::field.meta_title.name','anomaly.module.pages::field.meta_title.placeholder','anomaly.module.pages::field.meta_title.warning','anomaly.module.pages::field.meta_title.instructions'),(46,46,'en','anomaly.module.pages::field.meta_description.name','anomaly.module.pages::field.meta_description.placeholder','anomaly.module.pages::field.meta_description.warning','anomaly.module.pages::field.meta_description.instructions'),(47,47,'en','anomaly.module.pages::field.meta_keywords.name','anomaly.module.pages::field.meta_keywords.placeholder','anomaly.module.pages::field.meta_keywords.warning','anomaly.module.pages::field.meta_keywords.instructions'),(48,48,'en','anomaly.module.pages::field.layout.name','anomaly.module.pages::field.layout.placeholder','anomaly.module.pages::field.layout.warning','anomaly.module.pages::field.layout.instructions'),(49,49,'en','anomaly.module.pages::field.allowed_roles.name','anomaly.module.pages::field.allowed_roles.placeholder','anomaly.module.pages::field.allowed_roles.warning','anomaly.module.pages::field.allowed_roles.instructions'),(50,50,'en','anomaly.module.pages::field.parent.name','anomaly.module.pages::field.parent.placeholder','anomaly.module.pages::field.parent.warning','anomaly.module.pages::field.parent.instructions'),(51,51,'en','anomaly.module.pages::field.theme_layout.name','anomaly.module.pages::field.theme_layout.placeholder','anomaly.module.pages::field.theme_layout.warning','anomaly.module.pages::field.theme_layout.instructions'),(52,52,'en','anomaly.module.pages::field.type.name','anomaly.module.pages::field.type.placeholder','anomaly.module.pages::field.type.warning','anomaly.module.pages::field.type.instructions'),(53,53,'en','anomaly.module.pages::field.handler.name','anomaly.module.pages::field.handler.placeholder','anomaly.module.pages::field.handler.warning','anomaly.module.pages::field.handler.instructions'),(54,54,'en','anomaly.module.pages::field.visible.name','anomaly.module.pages::field.visible.placeholder','anomaly.module.pages::field.visible.warning','anomaly.module.pages::field.visible.instructions'),(55,55,'en','anomaly.module.pages::field.exact.name','anomaly.module.pages::field.exact.placeholder','anomaly.module.pages::field.exact.warning','anomaly.module.pages::field.exact.instructions'),(56,56,'en','anomaly.module.pages::field.entry.name','anomaly.module.pages::field.entry.placeholder','anomaly.module.pages::field.entry.warning','anomaly.module.pages::field.entry.instructions'),(57,57,'en','anomaly.module.pages::field.name.name','anomaly.module.pages::field.name.placeholder','anomaly.module.pages::field.name.warning','anomaly.module.pages::field.name.instructions'),(58,58,'en','anomaly.module.pages::field.description.name','anomaly.module.pages::field.description.placeholder','anomaly.module.pages::field.description.warning','anomaly.module.pages::field.description.instructions'),(59,59,'en','anomaly.module.posts::field.str_id.name','anomaly.module.posts::field.str_id.placeholder','anomaly.module.posts::field.str_id.warning','anomaly.module.posts::field.str_id.instructions'),(60,60,'en','anomaly.module.posts::field.name.name','anomaly.module.posts::field.name.placeholder','anomaly.module.posts::field.name.warning','anomaly.module.posts::field.name.instructions'),(61,61,'en','anomaly.module.posts::field.title.name','anomaly.module.posts::field.title.placeholder','anomaly.module.posts::field.title.warning','anomaly.module.posts::field.title.instructions'),(62,62,'en','anomaly.module.posts::field.slug.name','anomaly.module.posts::field.slug.placeholder','anomaly.module.posts::field.slug.warning','anomaly.module.posts::field.slug.instructions'),(63,63,'en','anomaly.module.posts::field.content.name','anomaly.module.posts::field.content.placeholder','anomaly.module.posts::field.content.warning','anomaly.module.posts::field.content.instructions'),(64,64,'en','anomaly.module.posts::field.type.name','anomaly.module.posts::field.type.placeholder','anomaly.module.posts::field.type.warning','anomaly.module.posts::field.type.instructions'),(65,65,'en','anomaly.module.posts::field.tags.name','anomaly.module.posts::field.tags.placeholder','anomaly.module.posts::field.tags.warning','anomaly.module.posts::field.tags.instructions'),(66,66,'en','anomaly.module.posts::field.summary.name','anomaly.module.posts::field.summary.placeholder','anomaly.module.posts::field.summary.warning','anomaly.module.posts::field.summary.instructions'),(67,67,'en','anomaly.module.posts::field.description.name','anomaly.module.posts::field.description.placeholder','anomaly.module.posts::field.description.warning','anomaly.module.posts::field.description.instructions'),(68,68,'en','anomaly.module.posts::field.publish_at.name','anomaly.module.posts::field.publish_at.placeholder','anomaly.module.posts::field.publish_at.warning','anomaly.module.posts::field.publish_at.instructions'),(69,69,'en','anomaly.module.posts::field.entry.name','anomaly.module.posts::field.entry.placeholder','anomaly.module.posts::field.entry.warning','anomaly.module.posts::field.entry.instructions'),(70,70,'en','anomaly.module.posts::field.author.name','anomaly.module.posts::field.author.placeholder','anomaly.module.posts::field.author.warning','anomaly.module.posts::field.author.instructions'),(71,71,'en','anomaly.module.posts::field.layout.name','anomaly.module.posts::field.layout.placeholder','anomaly.module.posts::field.layout.warning','anomaly.module.posts::field.layout.instructions'),(72,72,'en','anomaly.module.posts::field.category.name','anomaly.module.posts::field.category.placeholder','anomaly.module.posts::field.category.warning','anomaly.module.posts::field.category.instructions'),(73,73,'en','anomaly.module.posts::field.enabled.name','anomaly.module.posts::field.enabled.placeholder','anomaly.module.posts::field.enabled.warning','anomaly.module.posts::field.enabled.instructions'),(74,74,'en','anomaly.module.posts::field.featured.name','anomaly.module.posts::field.featured.placeholder','anomaly.module.posts::field.featured.warning','anomaly.module.posts::field.featured.instructions'),(75,75,'en','anomaly.module.posts::field.meta_title.name','anomaly.module.posts::field.meta_title.placeholder','anomaly.module.posts::field.meta_title.warning','anomaly.module.posts::field.meta_title.instructions'),(76,76,'en','anomaly.module.posts::field.meta_description.name','anomaly.module.posts::field.meta_description.placeholder','anomaly.module.posts::field.meta_description.warning','anomaly.module.posts::field.meta_description.instructions'),(77,77,'en','anomaly.module.posts::field.meta_keywords.name','anomaly.module.posts::field.meta_keywords.placeholder','anomaly.module.posts::field.meta_keywords.warning','anomaly.module.posts::field.meta_keywords.instructions'),(78,78,'en','anomaly.module.posts::field.ttl.name','anomaly.module.posts::field.ttl.placeholder','anomaly.module.posts::field.ttl.warning','anomaly.module.posts::field.ttl.instructions'),(79,79,'en','anomaly.module.posts::field.theme_layout.name','anomaly.module.posts::field.theme_layout.placeholder','anomaly.module.posts::field.theme_layout.warning','anomaly.module.posts::field.theme_layout.instructions'),(80,80,'en','anomaly.module.preferences::field.user.name','anomaly.module.preferences::field.user.placeholder','anomaly.module.preferences::field.user.warning','anomaly.module.preferences::field.user.instructions'),(81,81,'en','anomaly.module.preferences::field.key.name','anomaly.module.preferences::field.key.placeholder','anomaly.module.preferences::field.key.warning','anomaly.module.preferences::field.key.instructions'),(82,82,'en','anomaly.module.preferences::field.value.name','anomaly.module.preferences::field.value.placeholder','anomaly.module.preferences::field.value.warning','anomaly.module.preferences::field.value.instructions'),(83,83,'en','anomaly.module.redirects::field.from.name','anomaly.module.redirects::field.from.placeholder','anomaly.module.redirects::field.from.warning','anomaly.module.redirects::field.from.instructions'),(84,84,'en','anomaly.module.redirects::field.to.name','anomaly.module.redirects::field.to.placeholder','anomaly.module.redirects::field.to.warning','anomaly.module.redirects::field.to.instructions'),(85,85,'en','anomaly.module.redirects::field.status.name','anomaly.module.redirects::field.status.placeholder','anomaly.module.redirects::field.status.warning','anomaly.module.redirects::field.status.instructions'),(86,86,'en','anomaly.module.redirects::field.secure.name','anomaly.module.redirects::field.secure.placeholder','anomaly.module.redirects::field.secure.warning','anomaly.module.redirects::field.secure.instructions'),(87,87,'en','anomaly.module.settings::field.key.name','anomaly.module.settings::field.key.placeholder','anomaly.module.settings::field.key.warning','anomaly.module.settings::field.key.instructions'),(88,88,'en','anomaly.module.settings::field.value.name','anomaly.module.settings::field.value.placeholder','anomaly.module.settings::field.value.warning','anomaly.module.settings::field.value.instructions'),(89,89,'en','anomaly.module.users::field.email.name','anomaly.module.users::field.email.placeholder','anomaly.module.users::field.email.warning','anomaly.module.users::field.email.instructions'),(90,90,'en','anomaly.module.users::field.username.name','anomaly.module.users::field.username.placeholder','anomaly.module.users::field.username.warning','anomaly.module.users::field.username.instructions'),(91,91,'en','anomaly.module.users::field.password.name','anomaly.module.users::field.password.placeholder','anomaly.module.users::field.password.warning','anomaly.module.users::field.password.instructions'),(92,92,'en','anomaly.module.users::field.remember_token.name','anomaly.module.users::field.remember_token.placeholder','anomaly.module.users::field.remember_token.warning','anomaly.module.users::field.remember_token.instructions'),(93,93,'en','anomaly.module.users::field.ip_address.name','anomaly.module.users::field.ip_address.placeholder','anomaly.module.users::field.ip_address.warning','anomaly.module.users::field.ip_address.instructions'),(94,94,'en','anomaly.module.users::field.last_login_at.name','anomaly.module.users::field.last_login_at.placeholder','anomaly.module.users::field.last_login_at.warning','anomaly.module.users::field.last_login_at.instructions'),(95,95,'en','anomaly.module.users::field.last_activity_at.name','anomaly.module.users::field.last_activity_at.placeholder','anomaly.module.users::field.last_activity_at.warning','anomaly.module.users::field.last_activity_at.instructions'),(96,96,'en','anomaly.module.users::field.permissions.name','anomaly.module.users::field.permissions.placeholder','anomaly.module.users::field.permissions.warning','anomaly.module.users::field.permissions.instructions'),(97,97,'en','anomaly.module.users::field.display_name.name','anomaly.module.users::field.display_name.placeholder','anomaly.module.users::field.display_name.warning','anomaly.module.users::field.display_name.instructions'),(98,98,'en','anomaly.module.users::field.first_name.name','anomaly.module.users::field.first_name.placeholder','anomaly.module.users::field.first_name.warning','anomaly.module.users::field.first_name.instructions'),(99,99,'en','anomaly.module.users::field.last_name.name','anomaly.module.users::field.last_name.placeholder','anomaly.module.users::field.last_name.warning','anomaly.module.users::field.last_name.instructions'),(100,100,'en','anomaly.module.users::field.name.name','anomaly.module.users::field.name.placeholder','anomaly.module.users::field.name.warning','anomaly.module.users::field.name.instructions'),(101,101,'en','anomaly.module.users::field.description.name','anomaly.module.users::field.description.placeholder','anomaly.module.users::field.description.warning','anomaly.module.users::field.description.instructions'),(102,102,'en','anomaly.module.users::field.reset_code.name','anomaly.module.users::field.reset_code.placeholder','anomaly.module.users::field.reset_code.warning','anomaly.module.users::field.reset_code.instructions'),(103,103,'en','anomaly.module.users::field.reset_code_expires_at.name','anomaly.module.users::field.reset_code_expires_at.placeholder','anomaly.module.users::field.reset_code_expires_at.warning','anomaly.module.users::field.reset_code_expires_at.instructions'),(104,104,'en','anomaly.module.users::field.activation_code.name','anomaly.module.users::field.activation_code.placeholder','anomaly.module.users::field.activation_code.warning','anomaly.module.users::field.activation_code.instructions'),(105,105,'en','anomaly.module.users::field.activation_code_expires_at.name','anomaly.module.users::field.activation_code_expires_at.placeholder','anomaly.module.users::field.activation_code_expires_at.warning','anomaly.module.users::field.activation_code_expires_at.instructions'),(106,106,'en','anomaly.module.users::field.activated.name','anomaly.module.users::field.activated.placeholder','anomaly.module.users::field.activated.warning','anomaly.module.users::field.activated.instructions'),(107,107,'en','anomaly.module.users::field.enabled.name','anomaly.module.users::field.enabled.placeholder','anomaly.module.users::field.enabled.warning','anomaly.module.users::field.enabled.instructions'),(108,108,'en','anomaly.module.users::field.slug.name','anomaly.module.users::field.slug.placeholder','anomaly.module.users::field.slug.warning','anomaly.module.users::field.slug.instructions'),(109,109,'en','anomaly.module.users::field.roles.name','anomaly.module.users::field.roles.placeholder','anomaly.module.users::field.roles.warning','anomaly.module.users::field.roles.instructions'),(110,110,'en','anomaly.extension.page_link_type::field.title.name','anomaly.extension.page_link_type::field.title.placeholder','anomaly.extension.page_link_type::field.title.warning','anomaly.extension.page_link_type::field.title.instructions'),(111,111,'en','anomaly.extension.page_link_type::field.page.name','anomaly.extension.page_link_type::field.page.placeholder','anomaly.extension.page_link_type::field.page.warning','anomaly.extension.page_link_type::field.page.instructions'),(112,112,'en','anomaly.extension.page_link_type::field.description.name','anomaly.extension.page_link_type::field.description.placeholder','anomaly.extension.page_link_type::field.description.warning','anomaly.extension.page_link_type::field.description.instructions'),(113,113,'en','anomaly.extension.url_link_type::field.title.name','anomaly.extension.url_link_type::field.title.placeholder','anomaly.extension.url_link_type::field.title.warning','anomaly.extension.url_link_type::field.title.instructions'),(114,114,'en','anomaly.extension.url_link_type::field.url.name','anomaly.extension.url_link_type::field.url.placeholder','anomaly.extension.url_link_type::field.url.warning','anomaly.extension.url_link_type::field.url.instructions'),(115,115,'en','anomaly.extension.url_link_type::field.description.name','anomaly.extension.url_link_type::field.description.placeholder','anomaly.extension.url_link_type::field.description.warning','anomaly.extension.url_link_type::field.description.instructions'),(116,116,'en','Slogan (Line 1)',NULL,NULL,'This will be displayed in a smaller, italic heading font on the home page.'),(117,117,'en','Slogan (Line 2)',NULL,NULL,NULL),(118,118,'en','About Us (Left Column)',NULL,NULL,NULL),(119,119,'en','About Us (Center Column)',NULL,NULL,NULL),(120,120,'en','About Us (Right Column)',NULL,NULL,NULL),(121,121,'en','Banner Image',NULL,NULL,NULL),(122,122,'en','URL',NULL,NULL,NULL),(123,123,'en','Link Description',NULL,NULL,NULL),(126,126,'en','Menu',NULL,NULL,'Choose which list of links to display (edit the links in the Navigation section)'),(127,127,'en','Menus',NULL,NULL,NULL),(128,128,'en','Temp/Seasonal (1039) Job Vacancies',NULL,NULL,NULL),(129,129,'en','Permanent (PSE) Job Vacancies',NULL,NULL,NULL),(130,130,'en','Content Left Column',NULL,NULL,NULL),(131,131,'en','Content Middle Column',NULL,NULL,NULL),(132,132,'en','Content Right Column',NULL,NULL,NULL),(133,133,'en','Street Address',NULL,NULL,NULL),(134,134,'en','Phone',NULL,NULL,NULL),(135,135,'en','Fax',NULL,NULL,NULL),(136,136,'en','Email',NULL,NULL,NULL),(137,137,'en','Facebook Page URL',NULL,NULL,NULL),(138,138,'en','Google Maps iframe',NULL,NULL,'Paste the link provided by Google Maps, beginning with `iframe src=http...` and ending with `/iframe`.'),(139,139,'en','Latitude','N 43° 38.2580\'',NULL,NULL),(140,140,'en','Longitude','W 121° 53.2254\'',NULL,NULL),(141,141,'en','Services 1',NULL,NULL,NULL),(142,142,'en','Services 2',NULL,NULL,NULL),(143,143,'en','Services 3',NULL,NULL,NULL),(144,144,'en','Services 4',NULL,NULL,NULL),(145,145,'en','Service 1 Title',NULL,NULL,NULL),(146,146,'en','Service 2 Title',NULL,NULL,NULL),(147,147,'en','Service 3 Title',NULL,NULL,NULL),(148,148,'en','Service 4 Title',NULL,NULL,NULL),(149,149,'en','Photo',NULL,NULL,NULL),(150,150,'en','Banner Image',NULL,NULL,'This banner image will be used on pages that do not have any other banner image selected.'),(151,151,'en','Slogan',NULL,NULL,'This default slogan will appear in the banner at the top of a page, unless the page specifies its own slogan.');
/*!40000 ALTER TABLE `src_streams_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_streams_streams`
--

DROP TABLE IF EXISTS `src_streams_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_streams_streams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `order_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'id',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sortable` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `trashable` tinyint(1) NOT NULL DEFAULT '0',
  `translatable` tinyint(1) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_streams` (`namespace`,`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_streams`
--

LOCK TABLES `src_streams_streams` WRITE;
/*!40000 ALTER TABLE `src_streams_streams` DISABLE KEYS */;
INSERT INTO `src_streams_streams` VALUES (1,'configuration','configuration','configuration_','id','id',1,0,0,0,0,0,'a:0:{}'),(2,'dashboard','dashboards','dashboard_','name','id',0,0,1,0,0,1,'a:0:{}'),(3,'dashboard','widgets','dashboard_','title','id',0,0,1,0,0,1,'a:0:{}'),(4,'files','disks','files_','name','id',0,0,1,0,0,1,'a:0:{}'),(5,'files','folders','files_','name','id',0,0,1,0,1,1,'a:0:{}'),(6,'files','files','files_','name','id',0,0,0,1,1,0,'a:0:{}'),(7,'navigation','menus','navigation_','name','id',0,0,0,0,1,1,'a:0:{}'),(8,'navigation','links','navigation_','id','id',0,0,1,0,1,0,'a:0:{}'),(9,'pages','pages','pages_','title','id',0,0,1,1,1,1,'a:0:{}'),(10,'pages','types','pages_','name','id',0,0,1,0,1,1,'a:0:{}'),(11,'posts','categories','posts_','name','id',0,0,1,0,1,1,'a:0:{}'),(12,'posts','posts','posts_','title','id',0,0,0,1,1,1,'a:0:{}'),(13,'posts','types','posts_','name','id',0,0,1,0,1,1,'a:0:{}'),(14,'preferences','preferences','preferences_','id','id',0,0,0,0,0,0,'a:0:{}'),(15,'redirects','redirects','redirects_','from','id',0,0,1,0,1,0,'a:0:{}'),(16,'settings','settings','settings_','id','id',0,0,0,0,0,0,'a:0:{}'),(17,'users','users','users_','display_name','id',0,0,0,1,1,0,'a:0:{}'),(18,'users','roles','users_','name','id',0,0,0,0,1,1,'a:0:{}'),(19,'page_link_type','pages','page_link_type_','title','id',0,0,0,0,0,1,'a:0:{}'),(20,'url_link_type','urls','url_link_type_','title','id',0,0,0,0,0,1,'a:0:{}'),(21,'files','images','files_','id','id',0,0,0,0,1,1,'a:0:{}'),(22,'files','documents','files_','id','id',0,0,0,0,1,1,'a:0:{}'),(23,'pages','default_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(24,'posts','default_posts','posts_','id','id',0,1,0,0,1,1,'a:0:{}'),(25,'pages','blog_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(26,'pages','home_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(27,'posts','link_posts','posts_','id','id',0,1,0,0,1,1,'a:0:{}'),(28,'pages','link_list_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(29,'pages','jobs_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(30,'variables','contact','variables_','id','id',0,0,0,0,0,0,''),(31,'posts','photo_posts','posts_','id','id',0,1,0,0,1,1,'a:0:{}'),(32,'pages','gallery_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(33,'variables','defaults','variables_','id','id',0,0,0,0,0,0,'');
/*!40000 ALTER TABLE `src_streams_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_streams_streams_translations`
--

DROP TABLE IF EXISTS `src_streams_streams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_streams_streams_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streams_streams_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_streams_translations`
--

LOCK TABLES `src_streams_streams_translations` WRITE;
/*!40000 ALTER TABLE `src_streams_streams_translations` DISABLE KEYS */;
INSERT INTO `src_streams_streams_translations` VALUES (1,1,'en','anomaly.module.configuration::stream.configuration.name','anomaly.module.configuration::stream.configuration.description'),(2,2,'en','anomaly.module.dashboard::stream.dashboards.name','anomaly.module.dashboard::stream.dashboards.description'),(3,3,'en','anomaly.module.dashboard::stream.widgets.name','anomaly.module.dashboard::stream.widgets.description'),(4,4,'en','anomaly.module.files::stream.disks.name','anomaly.module.files::stream.disks.description'),(5,5,'en','anomaly.module.files::stream.folders.name','anomaly.module.files::stream.folders.description'),(6,6,'en','anomaly.module.files::stream.files.name','anomaly.module.files::stream.files.description'),(7,7,'en','anomaly.module.navigation::stream.menus.name','anomaly.module.navigation::stream.menus.description'),(8,8,'en','anomaly.module.navigation::stream.links.name','anomaly.module.navigation::stream.links.description'),(9,9,'en','anomaly.module.pages::stream.pages.name','anomaly.module.pages::stream.pages.description'),(10,10,'en','anomaly.module.pages::stream.types.name','anomaly.module.pages::stream.types.description'),(11,11,'en','anomaly.module.posts::stream.categories.name','anomaly.module.posts::stream.categories.description'),(12,12,'en','anomaly.module.posts::stream.posts.name','anomaly.module.posts::stream.posts.description'),(13,13,'en','anomaly.module.posts::stream.types.name','anomaly.module.posts::stream.types.description'),(14,14,'en','anomaly.module.preferences::stream.preferences.name','anomaly.module.preferences::stream.preferences.description'),(15,15,'en','anomaly.module.redirects::stream.redirects.name','anomaly.module.redirects::stream.redirects.description'),(16,16,'en','anomaly.module.settings::stream.settings.name','anomaly.module.settings::stream.settings.description'),(17,17,'en','anomaly.module.users::stream.users.name','anomaly.module.users::stream.users.description'),(18,18,'en','anomaly.module.users::stream.roles.name','anomaly.module.users::stream.roles.description'),(19,19,'en','anomaly.extension.page_link_type::stream.pages.name','anomaly.extension.page_link_type::stream.pages.description'),(20,20,'en','anomaly.extension.url_link_type::stream.urls.name','anomaly.extension.url_link_type::stream.urls.description'),(21,21,'en','Images','A folder for images.'),(22,22,'en','Documents','A folder for documents.'),(23,23,'en','Default','A simple page type.'),(24,24,'en','Default',NULL),(25,25,'en','Blog',NULL),(26,26,'en','Home',NULL),(27,27,'en','Link',NULL),(28,28,'en','Link List',NULL),(29,29,'en','Jobs',NULL),(30,30,'en','Contact',NULL),(31,31,'en','Photo',NULL),(32,32,'en','Gallery',NULL),(33,33,'en','Defaults','These defaults apply to each page unless an individual page overrides it.');
/*!40000 ALTER TABLE `src_streams_streams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_url_link_type_urls`
--

DROP TABLE IF EXISTS `src_url_link_type_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_url_link_type_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_url_link_type_urls`
--

LOCK TABLES `src_url_link_type_urls` WRITE;
/*!40000 ALTER TABLE `src_url_link_type_urls` DISABLE KEYS */;
INSERT INTO `src_url_link_type_urls` VALUES (1,1,'2016-11-22 20:17:00',NULL,NULL,NULL,'http://pyrocms.com/'),(2,2,'2016-11-22 20:17:00',NULL,NULL,NULL,'http://pyrocms.com/documentation'),(3,3,'2016-12-07 09:22:35',1,NULL,NULL,'http://staffing.natrap.com'),(4,4,'2016-12-07 09:23:43',1,NULL,NULL,'http://www.nifc.gov/nicc/sitreprt.pdf'),(5,5,'2016-12-09 07:02:18',1,NULL,NULL,'www.siskiyourappellers.com/raprec'),(6,6,'2016-12-09 07:02:50',1,NULL,NULL,'https://apps.fs.usda.gov/cfo/ibs/aviation'),(7,7,'2016-12-09 07:03:29',1,NULL,NULL,'https://access.usbank.com/cpsApp1/index.jsp'),(8,8,'2016-12-09 07:04:12',1,NULL,NULL,'https://cod.nfc.usda.gov/Documents/docs/boc.pdf'),(9,9,'2016-12-09 07:04:40',1,NULL,NULL,'http://amd.nbc.gov/'),(10,10,'2016-12-09 07:05:08',1,NULL,NULL,'http://ross.nwcg.gov/'),(11,11,'2016-12-09 07:06:06',1,NULL,NULL,'http://www.fs.fed.us/fire/management/ifpm/'),(12,12,'2016-12-09 07:12:37',1,NULL,NULL,'http://www.siskiyourappellers.com/max_weather.php'),(13,13,'2016-12-09 07:12:57',1,NULL,NULL,'http://gacc.nifc.gov/nwcc/content/products/fwx/guidance/DL.pdf'),(14,14,'2016-12-09 07:13:41',1,NULL,NULL,'http://orrvc.org/intel/intelreport.shtml'),(15,15,'2017-01-12 21:17:39',4,NULL,NULL,'https://play.google.com/store/apps/details?id=gov.gsa.android.perdiem'),(16,16,'2017-01-12 21:19:24',4,NULL,NULL,'https://play.google.com/store/apps/details?id=com.intsig.camscanner'),(17,17,'2017-01-12 21:20:31',4,NULL,NULL,'https://play.google.com/store/apps/details?id=com.ds.avare'),(18,18,'2017-01-12 21:21:20',4,NULL,NULL,'https://play.google.com/store/apps/details?id=com.Avenza'),(19,19,'2017-01-12 21:22:17',4,NULL,NULL,'https://play.google.com/store/apps/details?id=com.jefftharris.passwdsafe'),(20,20,'2017-01-12 21:23:17',4,NULL,NULL,'https://play.google.com/store/apps/details?id=com.esri.arcgis.collector'),(21,21,'2017-01-12 21:25:43',4,NULL,NULL,'https://www.fs.fed.us/t-d/programs/fire/rappel/index.htm'),(22,22,'2017-01-12 21:27:13',4,NULL,NULL,'http://www.airnav.com/'),(23,23,'2017-01-12 21:28:00',4,NULL,NULL,'https://www.nifc.gov/'),(24,24,'2017-01-12 21:28:33',4,NULL,NULL,'https://www.fs.fed.us/fire/aviation/av_library/index.html'),(25,25,'2017-01-12 21:29:48',4,NULL,NULL,'http://www.orrvc.org/index.html'),(26,26,'2017-01-12 21:30:51',4,NULL,NULL,'https://www.fs.fed.us/about-agency/contact-us/employee-search'),(27,27,'2017-01-12 21:32:23',4,NULL,NULL,'https://www.aviationweather.gov/adds/'),(28,28,'2017-01-12 21:49:38',4,NULL,NULL,'https://usdafs.connecthr.com/Login.aspx'),(29,29,'2017-01-12 21:50:11',4,NULL,NULL,'https://nfc.usda.gov/epps/eplogin.aspx'),(30,30,'2017-01-12 21:51:01',4,NULL,NULL,'https://www.gsa.gov/portal/content/104877'),(31,31,'2017-01-12 21:51:42',4,NULL,NULL,'http://fsweb.asc.fs.fed.us/'),(32,32,'2017-01-12 21:52:08',4,NULL,NULL,'https://www.tsp.gov/index.html'),(33,33,'2017-01-12 21:52:43',4,NULL,NULL,'http://www.tspallocation.com/'),(34,34,'2017-01-12 21:53:30',4,NULL,NULL,'https://www.opm.gov/healthcare-insurance/healthcare/'),(35,35,'2017-01-12 21:53:58',4,NULL,NULL,'https://www.nfc.usda.gov/'),(36,36,'2017-01-12 21:56:58',4,NULL,NULL,'https://www.nwcg.gov/'),(37,37,'2017-01-12 22:00:36',4,NULL,NULL,'https://www.aglearn.usda.gov/'),(38,38,'2017-01-12 22:01:03',4,NULL,NULL,'https://www.iat.gov/'),(39,39,'2017-01-12 22:01:41',4,NULL,NULL,'https://www.fai.gov/drupal/training/find-and-register-for-courses'),(40,40,'2017-01-12 22:02:42',4,NULL,NULL,'https://nationalfiretraining.nwcg.gov/'),(41,41,'2017-01-12 22:03:29',4,NULL,NULL,'https://www.fireleadership.gov/'),(42,42,'2017-01-12 22:03:55',4,NULL,NULL,'https://www.nifc.gov/wfstar/'),(43,43,'2017-01-12 22:04:32',4,NULL,NULL,'http://www.aviastar.org/'),(44,44,'2017-01-12 22:11:33',4,NULL,NULL,'http://www.granderonderappellers.com/'),(45,45,'2017-01-12 22:12:23',4,NULL,NULL,'http://www.centraloregonhelitack.com/'),(46,46,'2017-01-12 22:12:50',4,NULL,NULL,'http://www.malheurrappelcrew.com/'),(47,47,'2017-01-12 22:13:25',4,NULL,NULL,'http://www.siskiyourappellers.com/'),(48,48,'2017-01-12 22:14:38',4,NULL,NULL,'https://www.fs.usda.gov/detail/okawen/landmanagement/resourcemanagement/?cid=fsbdev3_053629'),(49,49,'2017-01-12 22:15:08',4,NULL,NULL,'http://www.salmonheli-rappellers.com/'),(50,50,'2017-01-12 22:15:43',4,NULL,NULL,'http://www.gallatinrappelcrew.com/'),(51,51,'2017-01-12 22:16:49',4,NULL,NULL,'https://www.fs.usda.gov/detail/payette/landmanagement/resourcemanagement/?cid=fsm9_030948'),(52,52,'2017-01-12 22:17:35',4,NULL,NULL,'https://www.fs.usda.gov/detail/boise/about-forest/jobs/?cid=stelprdb5035724'),(53,53,'2017-01-12 22:56:27',4,NULL,NULL,'https://www.fs.fed.us/fire/people/helitack/index.html'),(54,54,'2017-01-12 22:57:11',4,NULL,NULL,'https://sierrahelitack.com/'),(55,55,'2017-01-12 22:58:39',4,NULL,NULL,'https://www.fs.usda.gov/kootenai/'),(56,56,'2017-01-12 22:59:57',4,NULL,NULL,'https://www.usajobs.gov/'),(57,57,'2017-01-12 23:00:52',4,NULL,NULL,'http://medford.craigslist.org/'),(58,58,'2017-01-12 23:01:27',4,NULL,NULL,'http://www.grantspassoregon.gov/'),(59,59,'2017-01-12 23:02:14',4,NULL,NULL,'http://www.southernoregon.com/'),(60,60,'2017-01-12 23:03:01',4,NULL,NULL,'http://www.topozone.com/'),(61,61,'2017-01-12 23:03:39',4,NULL,NULL,'https://gisonline.odf.state.or.us/LocatOR/'),(62,62,'2017-01-12 23:04:09',4,NULL,NULL,'http://www.wildcad.net/WildCADWeb.asp'),(63,63,'2017-01-12 23:17:34',4,NULL,NULL,'https://www.fs.fed.us/fire/ibp/personnel/Updated%20Guidebook02.08.pdf'),(64,64,'2017-01-12 23:19:06',4,NULL,NULL,'https://gacc.nifc.gov/'),(65,65,'2017-01-12 23:22:29',4,NULL,NULL,'http://staffing.natrap.com/'),(66,66,'2017-01-12 23:23:03',4,NULL,NULL,'http://wildfiretoday.com/'),(67,67,'2017-01-12 23:23:42',4,NULL,NULL,'http://www.wildlandfire.com/they-said/'),(68,68,'2017-01-12 23:24:32',4,NULL,NULL,'https://www.fs.fed.us/fire/av_safety/index.html'),(69,69,'2017-01-12 23:26:16',4,NULL,NULL,'https://inciweb.nwcg.gov/'),(70,70,'2017-01-12 23:27:21',4,NULL,NULL,'https://www.safecom.gov/'),(71,71,'2017-01-12 23:31:39',4,NULL,NULL,'https://gacc.nifc.gov/nwcc/content/products/intelligence/crews.pdf'),(72,72,'2017-01-12 23:32:31',4,NULL,NULL,'https://gacc.nifc.gov/nwcc/content/products/intelligence/Aviation.pdf'),(73,73,'2017-01-12 23:33:24',4,NULL,NULL,'https://gacc.nifc.gov/'),(74,74,'2017-01-12 23:34:12',4,NULL,NULL,'http://ftp.nifc.gov/incident_specific_data/'),(75,75,'2017-01-12 23:35:58',4,NULL,NULL,'https://www.geomac.gov/'),(76,76,'2017-01-12 23:36:37',4,NULL,NULL,'https://inciweb.nwcg.gov/'),(77,77,'2017-01-12 23:37:07',4,NULL,NULL,'https://www.aff.gov/'),(78,78,'2017-01-12 23:37:49',4,NULL,NULL,'https://lightning.nifc.gov/Account/Login'),(79,79,'2017-01-12 23:38:18',4,NULL,NULL,'https://egp.nwcg.gov/egp/default.aspx'),(80,80,'2017-01-12 23:39:29',4,NULL,NULL,'http://www.wrcc.dri.edu/cgi-bin/raws1_pl'),(81,81,'2017-01-12 23:40:08',4,NULL,NULL,'http://www.weather.gov/'),(82,82,'2017-01-12 23:41:01',4,NULL,NULL,'http://www.weather.gov/spot/?site=mfr');
/*!40000 ALTER TABLE `src_url_link_type_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_url_link_type_urls_translations`
--

DROP TABLE IF EXISTS `src_url_link_type_urls_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_url_link_type_urls_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `url_link_type_urls_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_url_link_type_urls_translations`
--

LOCK TABLES `src_url_link_type_urls_translations` WRITE;
/*!40000 ALTER TABLE `src_url_link_type_urls_translations` DISABLE KEYS */;
INSERT INTO `src_url_link_type_urls_translations` VALUES (1,1,'2016-11-22 20:17:00',NULL,'2016-11-22 20:17:00',NULL,'en','PyroCMS.com',NULL),(2,2,'2016-11-22 20:17:00',NULL,'2016-11-22 20:17:00',NULL,'en','Documentation',NULL),(3,3,'2016-12-07 09:22:35',NULL,'2016-12-07 09:22:35',1,'en','Rappel Staffing Report','View & update the status of national rappel resources.'),(4,4,'2016-12-07 09:23:43',NULL,'2016-12-07 09:23:43',1,'en','SIT Report','The daily situation report.'),(5,5,'2016-12-09 07:02:18',NULL,'2016-12-09 07:02:18',1,'en','RapRec Central','Rappel experience and equipment-use records.'),(6,6,'2016-12-09 07:02:50',NULL,'2016-12-09 07:02:50',1,'en','ABS','Aviation Business System'),(7,7,'2016-12-09 07:03:29',NULL,'2016-12-09 07:03:29',1,'en','US Bank Government Accounts','Online banking for your federal purchase card'),(8,8,'2016-12-09 07:04:12',NULL,'2016-12-09 07:04:12',1,'en','BOC Codes','Budget Object Classification Codes.  Reconcile your purchases correctly for once!'),(9,9,'2016-12-09 07:04:40',NULL,'2016-12-09 07:04:40',1,'en','AMD','Aviation Management Directorate'),(10,10,'2016-12-09 07:05:08',NULL,'2016-12-09 07:05:08',1,'en','ROSS','Resource Ordering and Status System'),(11,11,'2016-12-09 07:06:06',NULL,'2016-12-09 07:06:06',1,'en','FS-FPM/IFPM Requirements','Minimum qualifications for fire program management positions.'),(12,12,'2016-12-09 07:12:37',NULL,'2016-12-09 07:12:37',1,'en','Weather','Consolidated NOAA weather forecast for zones 609, 610, 611, 630, 631'),(13,13,'2016-12-09 07:12:57',NULL,'2017-01-12 23:29:39',4,'en','7-Day Significant Fire Potential','NWCC predictive services product'),(14,14,'2016-12-09 07:13:41',NULL,'2016-12-09 07:13:41',1,'en','Local Resources','Current staffing levels on the Rogue River - Siskiyou National Forest'),(15,15,'2017-01-12 21:17:39',NULL,'2017-01-12 21:17:39',4,'en','Per Diem Rates','Find the Federal per diem rate quickly on your phone'),(16,16,'2017-01-12 21:19:24',NULL,'2017-01-12 21:19:24',4,'en','CamScanner','Create PDFs with your phone - great for your travel vouchers, receipts, manifests, rappel reports, etc.'),(17,17,'2017-01-12 21:20:31',NULL,'2017-01-12 21:20:31',4,'en','Avare','Free flight-planning, moving-map sectional charts, and airport facilities directory.'),(18,18,'2017-01-12 21:21:20',NULL,'2017-01-12 21:21:20',4,'en','Avenza PDF Maps','Use geo-referenced PDF maps on your mobile device.'),(19,19,'2017-01-12 21:22:17',NULL,'2017-01-12 21:22:17',4,'en','Password Safe','A secure place to store all of your passwords.'),(20,20,'2017-01-12 21:23:17',NULL,'2017-01-12 21:23:17',4,'en','Collector for arcGIS','GIS mapping with real-time data sharing'),(21,21,'2017-01-12 21:25:43',NULL,'2017-01-12 21:25:43',4,'en','MTDC Rappeller Homepage','Wildland Fire Helicopter Rappel Website'),(22,22,'2017-01-12 21:27:13',NULL,'2017-01-12 21:27:13',4,'en','AirNav','Detailed aeronautical information for flight planning'),(23,23,'2017-01-12 21:28:00',NULL,'2017-01-12 21:28:00',4,'en','NIFC','National Interagency Fire Center'),(24,24,'2017-01-12 21:28:33',NULL,'2017-01-12 21:28:33',4,'en','Aviation Library','Manuals, Guides & Handbooks'),(25,25,'2017-01-12 21:29:48',NULL,'2017-01-12 21:29:48',4,'en','RVICC','Rogue Valley Interagency Communications Center'),(26,26,'2017-01-12 21:30:51',NULL,'2017-01-12 21:30:51',4,'en','Employee Lookup (USFS)','Search for an employee of the U.S. Forest Service'),(27,27,'2017-01-12 21:32:23',NULL,'2017-01-12 21:32:23',4,'en','ADDS','Weather from the National Weather Service'),(28,28,'2017-01-12 21:49:38',NULL,'2017-01-12 21:49:38',4,'en','ConnectHR','Employee Dashboard'),(29,29,'2017-01-12 21:50:11',NULL,'2017-01-12 21:50:11',4,'en','EPP',' Employee Personal Page'),(30,30,'2017-01-12 21:51:01',NULL,'2017-01-12 21:51:01',4,'en','Per Diem Rates','Info for completing your travel vouchers'),(31,31,'2017-01-12 21:51:42',NULL,'2017-01-12 21:51:42',4,'en','ASC','Albuquerque Service Center'),(32,32,'2017-01-12 21:52:08',NULL,'2017-01-12 21:52:08',4,'en','TSP','Thrift Savings Plan'),(33,33,'2017-01-12 21:52:43',NULL,'2017-01-12 21:52:43',4,'en','TSP Allocation Guide','Advice & Explanation for TSP investing'),(34,34,'2017-01-12 21:53:30',NULL,'2017-01-12 21:53:30',4,'en','Federal Health Benefits','All the info you need to research and enroll in a Federal Employee Health Benefits plan'),(35,35,'2017-01-12 21:53:58',NULL,'2017-01-12 21:53:58',4,'en','NFC','National Finance Center'),(36,36,'2017-01-12 21:56:58',NULL,'2017-01-12 21:56:58',4,'en','NWCG Publications','Blank Taskbooks, FSFAQG, PMS 310-1, and other Interagency policy guides'),(37,37,'2017-01-12 22:00:36',NULL,'2017-01-12 22:00:36',4,'en','AgLearn','Required Government Training'),(38,38,'2017-01-12 22:01:03',NULL,'2017-01-12 22:01:03',4,'en','IAT','Interagency Aviation Training'),(39,39,'2017-01-12 22:01:41',NULL,'2017-01-12 22:01:41',4,'en','FAITAS','Online training and course registration for contracting officers (CORs)'),(40,40,'2017-01-12 22:02:42',NULL,'2017-01-12 22:02:42',4,'en','National Wildland Fire Training','Course schedules, nomination forms, etc...'),(41,41,'2017-01-12 22:03:29',NULL,'2017-01-12 22:03:29',4,'en','Wildland Fire Leadership','Courses & Training Packages'),(42,42,'2017-01-12 22:03:55',NULL,'2017-01-12 22:03:55',4,'en','WFSTAR','Wildland Fire Safety Training Annual Refresher'),(43,43,'2017-01-12 22:04:32',NULL,'2017-01-12 22:04:32',4,'en','Aviastar','A technical reference of helicopter theory & dynamics, from Estonia'),(44,44,'2017-01-12 22:11:33',NULL,'2017-01-12 22:11:33',4,'en','Grande Ronde Rappel Crew','La Grande, OR'),(45,45,'2017-01-12 22:12:23',NULL,'2017-01-12 22:12:23',4,'en','Central Oregon Rappellers','Prineville, OR'),(46,46,'2017-01-12 22:12:50',NULL,'2017-01-12 22:12:50',4,'en','Malheur Rappel Crew','John Day, OR'),(47,47,'2017-01-12 22:13:25',NULL,'2017-01-12 22:13:25',4,'en','Siskiyou Rappel Crew','Grants Pass, OR'),(48,48,'2017-01-12 22:14:38',NULL,'2017-01-12 22:14:38',4,'en','Wenatchee Valley Rappellers','Wenatchee, WA'),(49,49,'2017-01-12 22:15:08',NULL,'2017-01-12 22:15:08',4,'en','Salmon Heli-Rappellers','Salmon, ID'),(50,50,'2017-01-12 22:15:43',NULL,'2017-01-12 22:15:43',4,'en','Gallatin Rappel Crew','Gallatin Gateway, MT'),(51,51,'2017-01-12 22:16:49',NULL,'2017-01-12 22:16:49',4,'en','Price Valley Heli-Rappellers','New Meadows, ID'),(52,52,'2017-01-12 22:17:35',NULL,'2017-01-12 22:17:35',4,'en','Lucky Peak Rappel Crew','Boise, ID'),(53,53,'2017-01-12 22:56:27',NULL,'2017-01-12 22:56:27',4,'en','Scott Valley Rappel Crew','Etna, CA'),(54,54,'2017-01-12 22:57:11',NULL,'2017-01-12 22:57:11',4,'en','Sierra Helitack','Fresno, CA'),(55,55,'2017-01-12 22:58:39',NULL,'2017-01-12 22:58:39',4,'en','Kootenai Rappel Crew','Libby, MT'),(56,56,'2017-01-12 22:59:57',NULL,'2017-01-12 22:59:57',4,'en','USA Jobs','Apply for government jobs online'),(57,57,'2017-01-12 23:00:52',NULL,'2017-01-12 23:00:52',4,'en','Craigslist (Medford, Ashland, Klamath Falls)','Search for housing on Craigslist'),(58,58,'2017-01-12 23:01:27',NULL,'2017-01-12 23:01:27',4,'en','Visit Grants Pass','Info about the Grants Pass Area'),(59,59,'2017-01-12 23:02:14',NULL,'2017-01-12 23:02:14',4,'en','SouthernOregon.com','Southern Oregon info'),(60,60,'2017-01-12 23:03:01',NULL,'2017-01-12 23:03:01',4,'en','TopoZone','Topo Maps'),(61,61,'2017-01-12 23:03:39',NULL,'2017-01-12 23:03:39',4,'en','LocatOR','Oregon Lat Lon Locator'),(62,62,'2017-01-12 23:04:09',NULL,'2017-01-12 23:04:09',4,'en','WildCad Web','WildCad data access provides info on incidents logged by each dispatch center.'),(63,63,'2017-01-12 23:17:34',NULL,'2017-01-12 23:17:34',4,'en','Paycheck8 Guidebook','Detailed info on how to properly fill out a timesheet'),(64,64,'2017-01-12 23:19:06',NULL,'2017-01-12 23:19:06',4,'en','GACC','Geographic Area Coordination Centers'),(65,65,'2017-01-12 23:22:29',NULL,'2017-01-12 23:22:29',4,'en','NatRap Staffing','Check daily staffing levels'),(66,66,'2017-01-12 23:23:03',NULL,'2017-01-12 23:23:03',4,'en','Wildfire Today','Updates and fire news from around the nation.'),(67,67,'2017-01-12 23:23:42',NULL,'2017-01-12 23:23:42',4,'en','TheySaid','Latest gossip from the fire community'),(68,68,'2017-01-12 23:24:32',NULL,'2017-01-12 23:24:32',4,'en','Aviation Safety Alerts','Forest Service Aviation Safety'),(69,69,'2017-01-12 23:26:16',NULL,'2017-01-12 23:26:16',4,'en','InciWeb','Incident Information System'),(70,70,'2017-01-12 23:27:21',NULL,'2017-01-12 23:27:21',4,'en','SafeCom','Aviation tracking and trending data system'),(71,71,'2017-01-12 23:31:39',NULL,'2017-01-12 23:31:39',4,'en','R-6 Hotshot Crew Status','See what the other shared resource is doing'),(72,72,'2017-01-12 23:32:31',NULL,'2017-01-12 23:32:31',4,'en','R-6 Aircraft Status','Current status of all Region 6 aircraft\r\n'),(73,73,'2017-01-12 23:33:24',NULL,'2017-01-12 23:33:24',4,'en','GACC Intel','National GACC Portal'),(74,74,'2017-01-12 23:34:12',NULL,'2017-01-12 23:34:12',4,'en','IAP Repository','View daily IAP\'s from every large fire in the US'),(75,75,'2017-01-12 23:35:58',NULL,'2017-01-12 23:35:58',4,'en','GEOMAC','Go on...get some data'),(76,76,'2017-01-12 23:36:37',NULL,'2017-01-12 23:36:37',4,'en','InciWeb','A little more data...'),(77,77,'2017-01-12 23:37:07',NULL,'2017-01-12 23:37:07',4,'en','AFF','Automated Flight Following'),(78,78,'2017-01-12 23:37:49',NULL,'2017-01-12 23:37:49',4,'en','Lightning Tracker','It only takes one good lightning'),(79,79,'2017-01-12 23:38:18',NULL,'2017-01-12 23:38:18',4,'en','EGP','NIFC Enterprise Geospatial Portal'),(80,80,'2017-01-12 23:39:29',NULL,'2017-01-12 23:39:29',4,'en','RAWS Station Search','Remote Area Weather Station search tool'),(81,81,'2017-01-12 23:40:08',NULL,'2017-01-12 23:40:08',4,'en','National Weather Service','NOAA Weather'),(82,82,'2017-01-12 23:41:01',NULL,'2017-01-12 23:41:01',4,'en','Spot Weather Forecast Request','Know your current and predicted weather');
/*!40000 ALTER TABLE `src_url_link_type_urls_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_users_roles`
--

DROP TABLE IF EXISTS `src_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `caf6c27189763021b0adb2df06ac215a` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_users_roles`
--

LOCK TABLES `src_users_roles` WRITE;
/*!40000 ALTER TABLE `src_users_roles` DISABLE KEYS */;
INSERT INTO `src_users_roles` VALUES (1,1,'2016-11-23 03:17:10',NULL,NULL,NULL,NULL,'admin',NULL),(2,2,'2016-11-23 03:17:10',NULL,NULL,NULL,NULL,'user',NULL),(3,3,'2016-11-23 03:17:10',NULL,NULL,NULL,NULL,'guest',NULL),(4,4,'2016-12-05 04:00:50',1,'2016-12-10 10:43:02',1,NULL,'content_manager','a:21:{i:1;s:29:\"streams::control_panel.access\";i:9;s:41:\"anomaly.module.dashboard::dashboards.read\";i:10;s:38:\"anomaly.module.dashboard::widgets.read\";i:11;s:32:\"anomaly.module.files::files.read\";i:12;s:33:\"anomaly.module.files::files.write\";i:13;s:34:\"anomaly.module.files::files.delete\";i:14;s:34:\"anomaly.module.files::folders.read\";i:15;s:35:\"anomaly.module.files::folders.write\";i:16;s:36:\"anomaly.module.files::folders.delete\";i:19;s:37:\"anomaly.module.navigation::menus.read\";i:20;s:38:\"anomaly.module.navigation::menus.write\";i:21;s:39:\"anomaly.module.navigation::menus.delete\";i:22;s:37:\"anomaly.module.navigation::links.read\";i:23;s:38:\"anomaly.module.navigation::links.write\";i:24;s:39:\"anomaly.module.navigation::links.delete\";i:25;s:32:\"anomaly.module.posts::posts.read\";i:26;s:33:\"anomaly.module.posts::posts.write\";i:27;s:34:\"anomaly.module.posts::posts.delete\";i:38;s:32:\"anomaly.module.pages::pages.read\";i:39;s:33:\"anomaly.module.pages::pages.write\";i:40;s:34:\"anomaly.module.pages::pages.delete\";}');
/*!40000 ALTER TABLE `src_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_users_roles_translations`
--

DROP TABLE IF EXISTS `src_users_roles_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_users_roles_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `users_roles_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_users_roles_translations`
--

LOCK TABLES `src_users_roles_translations` WRITE;
/*!40000 ALTER TABLE `src_users_roles_translations` DISABLE KEYS */;
INSERT INTO `src_users_roles_translations` VALUES (1,1,'2016-11-23 03:17:10',NULL,'2016-11-23 03:17:10',NULL,'en','Admin','The super admin role.'),(2,2,'2016-11-23 03:17:10',NULL,'2016-11-23 03:17:10',NULL,'en','User','The default user role.'),(3,3,'2016-11-23 03:17:10',NULL,'2016-11-23 03:17:10',NULL,'en','Guest','The fallback role for non-users.'),(4,4,'2016-12-05 04:00:50',NULL,'2016-12-05 04:00:50',1,'en','Content Manager','This user can create posts and update homepage content, but cannot otherwise modify site structure.');
/*!40000 ALTER TABLE `src_users_roles_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_users_users`
--

DROP TABLE IF EXISTS `src_users_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_users_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_activity_at` datetime DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `629261acd8d03fcded8346ea75c17f69` (`email`),
  UNIQUE KEY `f2670725cfcd5865ce00c00c4ce0fe7a` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_users_users`
--

LOCK TABLES `src_users_users` WRITE;
/*!40000 ALTER TABLE `src_users_users` DISABLE KEYS */;
INSERT INTO `src_users_users` VALUES (1,1,'2016-11-23 03:17:11',NULL,'2017-01-22 16:56:38',1,NULL,'evanhsu@gmail.com','admin','$2y$10$smYCO1KLXNcAHrqIqKpH6.OW6fDfPIpq5nSfEyCYOQXpQBz5LdOzi','Administrator',NULL,NULL,1,1,NULL,'2017-01-22 16:56:38','FBD8y8jr04APfbrYNCbW5V3d4GNTuF5g0MvQPxf7kmjy4lwrzDWjAirQxcpU',NULL,NULL,'2017-01-13 00:29:45','67.61.215.90'),(2,2,'2016-11-23 03:17:11',NULL,'2016-11-23 03:17:11',NULL,'2017-01-12 19:21:02','demo@pyrocms.com','demo','$2y$10$L.IDrYuHmVdlh3sKmnascOuvTDA6QdYrt7tXNEk9Z0b/Ft4gR.mI2','Demo User',NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'2016-12-05 04:01:49',1,'2016-12-10 10:38:58',1,NULL,'tmlyda@fs.fed.us','timlyda','$2y$10$DcPCrGTtS8Hmg6VajnuvHednXWv0J79TpSoRo7QV6x0HCrbe.XJ/K','Tim Lyda','Tim','Lyda',1,1,'a:11:{i:16;s:37:\"anomaly.module.navigation::links.read\";i:17;s:38:\"anomaly.module.navigation::links.write\";i:18;s:39:\"anomaly.module.navigation::links.delete\";i:19;s:32:\"anomaly.module.posts::posts.read\";i:20;s:33:\"anomaly.module.posts::posts.write\";i:21;s:34:\"anomaly.module.posts::posts.delete\";i:25;s:32:\"anomaly.module.users::users.read\";i:26;s:33:\"anomaly.module.users::users.write\";i:27;s:34:\"anomaly.module.users::users.delete\";i:34;s:32:\"anomaly.module.pages::pages.read\";i:35;s:33:\"anomaly.module.pages::pages.write\";}','2016-12-05 04:04:21','Oos4hZfm8mc1OYb1ORLi6JoMuKoYK2QJezCzs0KB6cKDFQIhoGNVJIZFawuL',NULL,NULL,'2016-12-05 04:04:40','192.168.33.1'),(4,4,'2016-12-10 10:38:00',1,'2017-01-12 18:54:38',4,NULL,'dquinones@fs.fed.us','dquinones','$2y$10$lzhX09KZ3MpZDxae4UItWOHDQjSGoYYcKYw6SNoQwM1CNpUzPAc86','Dan Quinones','Dan','Quinones',1,1,'a:3:{i:21;s:32:\"anomaly.module.users::users.read\";i:22;s:33:\"anomaly.module.users::users.write\";i:23;s:34:\"anomaly.module.users::users.delete\";}','2017-01-12 18:54:38','UElHADYWKSCgPPnLZeUqPWKsLIJNl0nHa2bKT5xIhDgJef8Q8sQJC0SdCsN5',NULL,NULL,'2016-12-10 10:46:36','67.61.215.90'),(5,5,'2017-01-12 19:19:43',4,NULL,NULL,NULL,'richardalarrimore@fs.fed.us','alarrimore','$2y$10$mjwneOgITouTrhAWfzW5gO/WWKTfSBybrJBQYi3TgfZ5MLwKF2PJO','Andrew Larrimore','Richard','Larrimore',1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `src_users_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_users_users_roles`
--

DROP TABLE IF EXISTS `src_users_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_users_users_roles` (
  `entry_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`entry_id`,`related_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_users_users_roles`
--

LOCK TABLES `src_users_users_roles` WRITE;
/*!40000 ALTER TABLE `src_users_users_roles` DISABLE KEYS */;
INSERT INTO `src_users_users_roles` VALUES (1,1,NULL),(2,2,NULL),(3,4,0),(4,4,0),(5,1,0);
/*!40000 ALTER TABLE `src_users_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_variables_contact`
--

DROP TABLE IF EXISTS `src_variables_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_variables_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `street_address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_page_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_maps_iframe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_variables_contact`
--

LOCK TABLES `src_variables_contact` WRITE;
/*!40000 ALTER TABLE `src_variables_contact` DISABLE KEYS */;
INSERT INTO `src_variables_contact` VALUES (1,1,'2017-01-21 04:51:29',1,'2017-01-21 19:19:52',1,'657 Flaming Rd.\r\nGrants Pass, OR 97526','541-471-6891','541-471-6887','dquinones@fs.fed.us','https://www.facebook.com/Siskiyou-Rappel-Crew-116587918401126/','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1095.1777128784452!2d-123.384007896843!3d42.498581459857625!2m3!1f0!2f41.27362843638052!3f0!3m2!1i1024!2i768!4f20!3m3!1m2!1s0x0%3A0xab842e41bb1e2015!2sThe+Siskiyou+Rappel+Crew!5e1!3m2!1sen','N42.50639°','W123.38243°');
/*!40000 ALTER TABLE `src_variables_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `src_variables_defaults`
--

DROP TABLE IF EXISTS `src_variables_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `src_variables_defaults` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `slogan` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'Siskiyou Rappellers',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_variables_defaults`
--

LOCK TABLES `src_variables_defaults` WRITE;
/*!40000 ALTER TABLE `src_variables_defaults` DISABLE KEYS */;
INSERT INTO `src_variables_defaults` VALUES (1,1,'2017-01-22 18:55:09',1,'2017-01-22 18:59:15',1,4,'Siskiyou Rappellers');
/*!40000 ALTER TABLE `src_variables_defaults` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-22 19:03:24
