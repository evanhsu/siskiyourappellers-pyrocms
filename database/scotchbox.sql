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

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `scotchbox` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `scotchbox`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_files_files`
--

LOCK TABLES `src_files_files` WRITE;
/*!40000 ALTER TABLE `src_files_files` DISABLE KEYS */;
INSERT INTO `src_files_files` VALUES (1,1,'2016-12-05 04:39:51',1,'2016-12-05 04:39:51',1,NULL,'banner-01.jpg',1,1,'jpg',140839,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'780','2500'),(2,2,'2016-12-05 05:34:10',1,'2016-12-05 05:34:10',1,NULL,'bg1.jpg',1,1,'jpg',790366,'image/jpeg',NULL,'Anomaly\\Streams\\Platform\\Model\\Files\\FilesImagesEntryModel',NULL,'1200','2050');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_navigation_links`
--

LOCK TABLES `src_navigation_links` WRITE;
/*!40000 ALTER TABLE `src_navigation_links` DISABLE KEYS */;
INSERT INTO `src_navigation_links` VALUES (1,1,'2016-11-22 20:17:01',NULL,NULL,NULL,NULL,1,'anomaly.extension.url_link_type',1,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(2,2,'2016-11-22 20:17:01',NULL,NULL,NULL,NULL,1,'anomaly.extension.url_link_type',2,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(3,1,'2016-12-07 09:22:35',1,'2016-12-09 05:41:37',1,NULL,2,'anomaly.extension.url_link_type',3,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(4,2,'2016-12-07 09:23:43',1,'2016-12-09 05:41:37',1,NULL,2,'anomaly.extension.url_link_type',4,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_blank',NULL,NULL),(5,5,'2016-12-09 07:02:18',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',5,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(6,6,'2016-12-09 07:02:50',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',6,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(7,7,'2016-12-09 07:03:29',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',7,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(8,8,'2016-12-09 07:04:12',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',8,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(9,9,'2016-12-09 07:04:40',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',9,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(10,10,'2016-12-09 07:05:08',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',10,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(11,11,'2016-12-09 07:06:06',1,NULL,NULL,NULL,7,'anomaly.extension.url_link_type',11,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(12,12,'2016-12-09 07:12:37',1,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',12,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(13,13,'2016-12-09 07:12:57',1,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',13,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL),(14,14,'2016-12-09 07:13:41',1,NULL,NULL,NULL,2,'anomaly.extension.url_link_type',14,'Anomaly\\UrlLinkTypeExtension\\UrlLinkTypeModel','_self',NULL,NULL);
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
INSERT INTO `src_navigation_menus` VALUES (1,1,'2016-11-22 20:17:00',NULL,NULL,NULL,NULL,'footer'),(2,2,'2016-12-07 09:19:26',1,'2016-12-09 06:57:11',1,NULL,'fire_intel'),(3,3,'2016-12-09 06:54:32',1,NULL,NULL,NULL,'mobile_apps_android'),(4,4,'2016-12-09 06:54:41',1,NULL,NULL,NULL,'news'),(5,5,'2016-12-09 06:54:54',1,NULL,NULL,NULL,'mapping'),(6,6,'2016-12-09 06:55:03',1,NULL,NULL,NULL,'news_and_local_info'),(7,7,'2016-12-09 06:55:18',1,NULL,NULL,NULL,'administrative'),(8,8,'2016-12-09 06:55:50',1,NULL,NULL,NULL,'national_rappel_bases'),(9,9,'2016-12-09 06:55:59',1,NULL,NULL,NULL,'training'),(10,10,'2016-12-09 06:56:08',1,NULL,NULL,NULL,'employee_assistance');
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
INSERT INTO `src_pages_default_pages` VALUES (1,1,'2016-11-22 20:17:03',NULL,NULL,NULL,'2016-12-04 20:49:51',NULL,NULL),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:19',1,NULL,2,NULL);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_home_pages`
--

LOCK TABLES `src_pages_home_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_home_pages` DISABLE KEYS */;
INSERT INTO `src_pages_home_pages` VALUES (1,1,'2016-12-04 20:51:12',1,'2016-12-04 21:11:47',1,NULL,'Our crew consists of 21 firefighters, including our Foreman, Assistant Foreman, Squad Leaders, Senior Firefighters, detailers, apprentices and temporary seasonal employees. We are an exclusive use crew designated for Initial Attack, so we maintain our IA readiness at all times. Adaptability is key with missions ranging from wilderness rappel fires to Search &amp; Rescue recon.','The Siskiyou Rappel Crew is highly trained in the tactical and logistical use of aviation assets for fire suppression and can be rapidly deployed to incidents both Regionally and Nationally.','We also have the ability to assist with extended attack and logistical support missions throughout the lower 48 and Alaska as the need arises.\r\nOur helicopter is carded for rappelling, cargo letdown, longline, bucket work, personnel transport and low-level recon.','Tech savvy firefighters','Order Us By Fax');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_pages`
--

LOCK TABLES `src_pages_pages` WRITE;
/*!40000 ALTER TABLE `src_pages_pages` DISABLE KEYS */;
INSERT INTO `src_pages_pages` VALUES (1,1,'2016-11-22 20:17:03',NULL,'2016-12-04 20:47:46',1,'2016-12-04 20:49:51','nWaI9CeYYlMo1gCHyRALemDn','home','/',1,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,0,1,1,1,'theme::layouts.home'),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:20',1,NULL,'mBrGJWrJXEHj54vNeSSwQIlj','contact','/contact',1,2,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesDefaultPagesEntryModel',NULL,1,1,1,0,NULL),(3,3,'2016-11-23 03:53:37',1,'2016-12-05 05:39:10',1,NULL,'VX30kmUmabrSTpHP1otHquXi','current','/current',2,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesBlogPagesEntryModel',NULL,1,1,1,0,'theme::layouts.blog'),(4,3,'2016-12-04 20:51:12',1,'2016-12-04 21:11:47',1,NULL,'H7fFKg67zAeQ4JyWViIK6zmf','home','/',3,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesHomePagesEntryModel',NULL,0,1,1,1,'theme::layouts.home'),(5,4,'2016-12-07 09:30:15',1,'2016-12-09 06:58:08',1,NULL,'1zGTNbEVG4Dw73DVceJ6fUig','intelligence','/intelligence',4,1,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesLinkListPagesEntryModel',NULL,1,1,1,0,'theme::layouts.default'),(6,5,'2016-12-09 07:00:19',1,NULL,NULL,NULL,'OTf8jn17W3PkVvkuIH12hpkj','links','/links',4,2,'Anomaly\\Streams\\Platform\\Model\\Pages\\PagesLinkListPagesEntryModel',NULL,1,1,1,0,'theme::layouts.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_pages_translations`
--

LOCK TABLES `src_pages_pages_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_pages_translations` DISABLE KEYS */;
INSERT INTO `src_pages_pages_translations` VALUES (1,1,'2016-11-22 20:17:03',NULL,'2016-12-04 20:28:37',1,'en','Home',NULL,NULL,'a:0:{}'),(2,2,'2016-11-22 20:17:03',NULL,'2016-12-05 05:35:20',1,'en','Contact',NULL,NULL,'a:0:{}'),(3,3,'2016-11-23 03:53:37',NULL,'2016-11-23 03:53:37',1,'en','Current',NULL,NULL,'a:0:{}'),(4,4,'2016-12-04 20:51:12',NULL,'2016-12-04 20:51:12',1,'en','Home',NULL,NULL,'a:0:{}'),(5,5,'2016-12-07 09:30:15',NULL,'2016-12-07 09:30:15',1,'en','Intelligence',NULL,NULL,'a:0:{}'),(6,6,'2016-12-09 07:00:20',NULL,'2016-12-09 07:00:20',1,'en','Links',NULL,NULL,'a:0:{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_types`
--

LOCK TABLES `src_pages_types` WRITE;
/*!40000 ALTER TABLE `src_pages_types` DISABLE KEYS */;
INSERT INTO `src_pages_types` VALUES (1,1,'2016-11-22 20:17:02',NULL,'2016-12-05 05:41:30',1,NULL,'default','theme::layouts.default','<h1>{{ page.title }}</h1>\r\n\r\n{{ page.content.render|raw }}','anomaly.extension.default_page_handler'),(2,2,'2016-11-23 03:52:53',1,'2016-12-04 21:24:36',1,NULL,'blog','theme::layouts.blog','<!-- -->','anomaly.extension.default_page_handler'),(3,3,'2016-12-04 20:45:33',1,'2016-12-04 21:21:07',1,NULL,'home','theme::layouts.home','\r\n\r\n<section id=\"intro\" class=\"intro\">\r\n    <video playsinline autoplay muted loop class=\"fullscreen bgvideo\">\r\n        <source src=\"{{ asset_url(\'theme::videos/siskiyou-bg-vid.mp4\') }}\" type=\"video/mp4\">\r\n    </video>\r\n    <svg id=\"bgvideo-opacity-mask\" class=\"fullscreen bgvideo-opacity-mask\">\r\n        <rect width=100% height=100%>\r\n    </svg>\r\n    <div class=\"slogan\">\r\n        <h4>{{ page.slogan_line_1 }}</h4>\r\n        <h2>{{ page.slogan_line_2 }}</h2>\r\n    </div>\r\n    <div class=\"page-scroll\">\r\n        <a href=\"#service\" class=\"btn btn-circle\">\r\n            <i class=\"fa fa-angle-double-down animated\"></i>\r\n        </a>\r\n    </div>\r\n</section>\r\n<!-- /Section: intro -->\r\n\r\n<!-- Section: about -->\r\n<section id=\"about\" class=\"home-section text-center\">\r\n    <div class=\"heading-about\">\r\n        <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-8 col-lg-offset-2\">\r\n                <div class=\"wow bounceInDown animated\" data-wow-delay=\"0.4s\" style=\"visibility: visible;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;\">\r\n                <div class=\"section-heading\">\r\n                <h2>About us</h2>\r\n                <i class=\"fa fa-2x fa-angle-down\"></i>\r\n\r\n                </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"container\">\r\n\r\n   <div class=\"row\" style=\"font-size: 2em; text-align:justify;\">\r\n        <div class=\"col-xs-12 col-sm-4\">\r\n            <div class=\"wow bounceInUp animated\" data-wow-delay=\"0.2s\" style=\"visibility: hidden;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n                {{ page.about_us_left_column | raw }}\r\n            </div>\r\n        </div>\r\n        <div class=\"col-xs-12 col-sm-4\" style=\"font-weight: bold\">\r\n            <div class=\"wow bounceInUp\" data-wow-delay=\"0.2s\" style=\"visibility: hidden; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n                {{ page.about_us_center_column | raw }}\r\n            </div>\r\n        </div>\r\n        <div class=\"col-xs-12 col-sm-4\">\r\n            <div class=\"wow bounceInUp\" data-wow-delay=\"0.2s\" style=\"visibility: hidden; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n                {{ page.about_us_right_column | raw }}\r\n            </div>\r\n        </div>\r\n    </div>\r\n    </div>\r\n</section>\r\n<!-- /Section: about -->\r\n\r\n\r\n<!-- Section: services -->\r\n<section id=\"service\" class=\"home-section text-center bg-gray\">\r\n\r\n    <div class=\"heading-about\">\r\n        <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-lg-8 col-lg-offset-2\">\r\n                <div class=\"wow bounceInDown\" data-wow-delay=\"0.4s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;\">\r\n                <div class=\"section-heading\">\r\n                <h2>Our Services</h2>\r\n                <i class=\"fa fa-2x fa-angle-down\"></i>\r\n\r\n                </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"container\">\r\n    <div class=\"row\">\r\n        <div class=\"col-lg-2 col-lg-offset-5\">\r\n            <hr class=\"marginbot-50\">\r\n        </div>\r\n    </div>\r\n    <div class=\"row\">\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInLeft\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"http://siskiyou.rappellers.us/themes/fabriciorabelo-squad/assets/images/icons/service-icon-1.png\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>Remote Initial Attack</h5>\r\n                    <p>We\'ll get there fast, manage our own logistics, and let you know when you can take this fire off your board.</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInUp\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"http://siskiyou.rappellers.us/themes/fabriciorabelo-squad/assets/images/icons/service-icon-2.png\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>Helitack &amp; Logistics</h5>\r\n                    <p>Personnel transport, recon flights, cargo delivery, helispot installation, and helibase management.</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInUp\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"http://siskiyou.rappellers.us/themes/fabriciorabelo-squad/assets/images/icons/service-icon-3.png\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>Recon &amp; Prioritization</h5>\r\n                    <p>When resources are scarce, our spotters can provide real-time visual intel during multiple-start scenarios to help you make informed decisions\r\n                    in compressed-time environments.</p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"col-sm-3 col-md-3\">\r\n            <div class=\"wow fadeInRight\" data-wow-delay=\"0.2s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.2s; -moz-animation-delay: 0.2s; animation-delay: 0.2s;\">\r\n            <div class=\"service-box\">\r\n                <div class=\"service-icon\">\r\n                    <img src=\"http://siskiyou.rappellers.us/themes/fabriciorabelo-squad/assets/images/icons/service-icon-4.png\" alt=\"\">\r\n                </div>\r\n                <div class=\"service-desc\">\r\n                    <h5>Resource Values</h5>\r\n                    <p>Our firefighters know that wilderness areas have unique requirements and they understand the philosophy and implementation of MIST tactics.\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    </div>\r\n</section>\r\n<!-- /Section: services -->\r\n\r\n\r\n\r\n\r\n<!-- Section: contact -->\r\n<section id=\"contact\" class=\"home-section text-center\">\r\n    <div class=\"heading-contact\">\r\n        <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-sm-8 col-sm-offset-2\">\r\n                <div class=\"wow bounceInDown\" data-wow-delay=\"0.4s\" style=\"visibility: visible; -webkit-animation-name: none; -moz-animation-name: none; animation-name: none;-webkit-animation-delay: 0.4s; -moz-animation-delay: 0.4s; animation-delay: 0.4s;\">\r\n                <div class=\"section-heading\">\r\n                <h2>Get in touch</h2>\r\n                <i class=\"fa fa-2x fa-angle-down\"></i>\r\n\r\n                </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        </div>\r\n    </div>\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n        <div class=\"col-sm-4\">\r\n        <div class=\"widget-contact\">\r\n\r\n            <address>\r\n              <strong>The Siskiyou Rappel Crew</strong><br>\r\n              657 Flaming Road<br>\r\n              Grants Pass, OR 97526\r\n            </address>\r\n\r\n            <address>\r\n              <strong>Email</strong><br>\r\n              <a href=\"mailto:dquinones@fs.fed.us\">dquinones@fs.fed.us</a>\r\n            </address>\r\n            \r\n            <address>\r\n                <abbr title=\"Phone\">P:</abbr> (541) 471-6891<br>\r\n                <abbr title=\"Fax\">F:</abbr> (541) 471-6849\r\n            </address>\r\n            \r\n            <address>\r\n              <strong>We\'re on social networks</strong><br>\r\n\r\n                    <ul class=\"company-social\">\r\n                        <li class=\"social-facebook\"><a href=\"#\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\r\n                        <li class=\"social-twitter\"><a href=\"#\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\r\n                        <li class=\"social-dribble\"><a href=\"#\" target=\"_blank\"><i class=\"fa fa-dribbble\"></i></a></li>\r\n                        <li class=\"social-google\"><a href=\"#\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a></li>\r\n                    </ul>\r\n            </address>\r\n        </div></div>\r\n\r\n        <div class=\"col-sm-4\">\r\n        <div class=\"widget-contact\">\r\n\r\n            <iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1095.1777128784452!2d-123.384007896843!3d42.498581459857625!2m3!1f0!2f41.27362843638052!3f0!3m2!1i1024!2i768!4f20!3m3!1m2!1s0x0%3A0xab842e41bb1e2015!2sThe+Siskiyou+Rappel+Crew!5e1!3m2!1sen!2sus!4v1478498235484\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen=\"\"></iframe>\r\n    \r\n\r\n        </div></div>\r\n    \r\n        <div class=\"col-sm-4\">\r\n        <div class=\"widget-contact\">\r\n\r\n            <address>\r\n              N42.50639°<br>\r\n              W123.38243°<br>\r\n            </address>\r\n            \r\n            Airport Identifier: <a href=\"http://www.airnav.com/airport/3s8\">3S8</a>\r\n        </div></div>\r\n</div>\r\n\r\n    </div>\r\n</section>\r\n<!-- /Section: contact -->','anomaly.extension.default_page_handler'),(4,4,'2016-12-07 09:10:09',1,'2016-12-09 07:10:39',1,NULL,'link_list','theme::layouts.default','{% for menu in page.menus %}\r\n    <section class=\"linklist\">\r\n    \r\n        <h3>{{ menu.name }}</h3>\r\n        <ul>\r\n        {% for link in links(menu).get() %}\r\n            <li>\r\n                <a href=\"{{ link.url }}\"><strong>{{ link.title }}</strong> - {{ link.entry.description }}</a>\r\n            </li>\r\n        {% endfor %}\r\n        </ul>\r\n\r\n    </section>\r\n{% endfor %}','anomaly.extension.default_page_handler');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_pages_types_translations`
--

LOCK TABLES `src_pages_types_translations` WRITE;
/*!40000 ALTER TABLE `src_pages_types_translations` DISABLE KEYS */;
INSERT INTO `src_pages_types_translations` VALUES (1,1,'2016-11-22 20:17:02',NULL,'2016-11-22 20:17:02',NULL,'en','Default','A simple page type.'),(2,2,'2016-11-23 03:52:54',NULL,'2016-11-23 03:52:54',1,'en','Blog',NULL),(3,3,'2016-12-04 20:45:35',NULL,'2016-12-04 20:45:35',1,'en','Home',NULL),(4,4,'2016-12-07 09:10:09',NULL,'2016-12-07 09:10:09',1,'en','Link List',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_categories`
--

LOCK TABLES `src_posts_categories` WRITE;
/*!40000 ALTER TABLE `src_posts_categories` DISABLE KEYS */;
INSERT INTO `src_posts_categories` VALUES (1,1,'2016-11-22 20:17:06',NULL,NULL,NULL,NULL,'news');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_categories_translations`
--

LOCK TABLES `src_posts_categories_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_categories_translations` DISABLE KEYS */;
INSERT INTO `src_posts_categories_translations` VALUES (1,1,'2016-11-22 20:17:06',NULL,'2016-11-22 20:17:06',NULL,'en','News','Company news and updates.');
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
INSERT INTO `src_posts_default_posts` VALUES (1,1,'2016-11-22 20:17:06',NULL,NULL,NULL,NULL,'<p>Welcome to PyroCMS!</p>'),(2,2,'2016-12-03 17:26:43',1,NULL,NULL,NULL,'<p>We\'re&nbsp;pulling the list on friday and then making selections by tuesday.</p>'),(3,3,'2016-12-05 06:14:37',1,'2016-12-05 06:15:30',1,NULL,'<p>We\'ll be taking a break for the winter - stay tuned for more news in <strong>January.</strong></p>\r\n<ol><li>List item 1</li><li>List item 2</li></ol>\r\n<p><img src=\"/files/images/banner-01.jpg\" style=\"width: 378px; height: 118px;\" width=\"378\" height=\"118\"><br></p>');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_posts`
--

LOCK TABLES `src_posts_posts` WRITE;
/*!40000 ALTER TABLE `src_posts_posts` DISABLE KEYS */;
INSERT INTO `src_posts_posts` VALUES (1,1,'2016-11-22 20:17:06',NULL,NULL,NULL,NULL,'C4A5NQiI8KSMM0yJ','welcome-to-pyrocms',1,'2016-11-22 20:17:06',1,1,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',1,0,1,NULL),(2,2,'2016-12-03 17:26:44',1,NULL,NULL,NULL,'DXo0S7ovyfRE2d4U','hiring-update',1,'2016-12-03 17:25:00',1,2,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',0,0,1,'a:0:{}'),(3,3,'2016-12-05 06:14:37',1,'2016-12-05 06:15:30',1,NULL,'SzyPgLzjVCaXu44Y','winter-break',1,'2016-12-05 06:13:00',1,3,'Anomaly\\Streams\\Platform\\Model\\Posts\\PostsDefaultPostsEntryModel',0,0,1,'a:0:{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_posts_translations`
--

LOCK TABLES `src_posts_posts_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_posts_translations` DISABLE KEYS */;
INSERT INTO `src_posts_posts_translations` VALUES (1,1,'2016-11-22 20:17:06',NULL,'2016-11-22 20:17:06',NULL,'en','Welcome to PyroCMS!','This is an example post to demonstrate the posts module.',NULL,NULL,NULL),(2,2,'2016-12-03 17:26:44',NULL,'2016-12-03 17:26:44',1,'en','Hiring update','pulling the list on friday',NULL,NULL,'a:0:{}'),(3,3,'2016-12-05 06:14:37',NULL,'2016-12-05 06:14:37',1,'en','Winter break',NULL,NULL,NULL,'a:0:{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_types`
--

LOCK TABLES `src_posts_types` WRITE;
/*!40000 ALTER TABLE `src_posts_types` DISABLE KEYS */;
INSERT INTO `src_posts_types` VALUES (1,1,'2016-11-22 20:17:05',NULL,NULL,NULL,NULL,'default','{{ post.content.render|raw }}','theme::layouts/default.twig'),(2,2,'2016-12-07 08:53:01',1,NULL,NULL,NULL,'link','{{ post.content|raw }}','theme::layouts.blog');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_posts_types_translations`
--

LOCK TABLES `src_posts_types_translations` WRITE;
/*!40000 ALTER TABLE `src_posts_types_translations` DISABLE KEYS */;
INSERT INTO `src_posts_types_translations` VALUES (1,1,'2016-11-22 20:17:05',NULL,'2016-11-22 20:17:05',NULL,'en','Default','A simple post type.'),(2,2,'2016-12-07 08:53:02',NULL,'2016-12-07 08:53:02',1,'en','Link',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_assignments`
--

LOCK TABLES `src_streams_assignments` WRITE;
/*!40000 ALTER TABLE `src_streams_assignments` DISABLE KEYS */;
INSERT INTO `src_streams_assignments` VALUES (1,1,1,1,'a:0:{}',0,1,0),(2,2,1,2,'a:0:{}',0,1,0),(3,3,1,3,'a:0:{}',0,0,0),(4,4,2,4,'a:0:{}',0,1,1),(5,5,2,5,'a:0:{}',1,1,0),(6,6,2,6,'a:0:{}',0,0,1),(7,7,2,7,'a:0:{}',0,1,0),(8,8,2,13,'a:0:{}',0,0,0),(9,9,3,8,'a:0:{}',0,1,1),(10,10,3,6,'a:0:{}',0,0,1),(11,11,3,9,'a:0:{}',0,1,0),(12,12,3,10,'a:0:{}',0,1,0),(13,13,3,12,'a:0:{}',0,1,0),(14,14,3,13,'a:0:{}',0,0,0),(15,15,3,11,'a:0:{}',0,0,0),(16,16,4,14,'a:0:{}',1,1,1),(17,17,4,15,'a:0:{}',1,1,0),(18,18,4,16,'a:0:{}',0,1,0),(19,19,4,20,'a:0:{}',0,0,1),(20,20,5,18,'a:0:{}',0,1,0),(21,21,5,14,'a:1:{s:3:\"max\";i:50;}',0,1,1),(22,22,5,15,'a:1:{s:3:\"max\";i:50;}',1,1,0),(23,23,5,20,'a:0:{}',0,0,1),(24,24,5,21,'a:0:{}',0,0,0),(25,25,6,14,'a:0:{}',0,1,0),(26,26,6,18,'a:0:{}',0,1,0),(27,27,6,17,'a:0:{}',0,1,0),(28,28,6,23,'a:0:{}',0,1,0),(29,29,6,27,'a:0:{}',0,1,0),(30,30,6,26,'a:0:{}',0,1,0),(31,31,6,19,'a:0:{}',0,0,0),(32,32,6,22,'a:0:{}',0,0,0),(33,33,6,25,'a:0:{}',0,0,0),(34,34,6,24,'a:0:{}',0,0,0),(35,35,7,28,'a:0:{}',1,1,1),(36,36,7,32,'a:0:{}',1,1,0),(37,37,7,30,'a:0:{}',0,0,1),(38,38,8,33,'a:0:{}',0,1,0),(39,39,8,36,'a:0:{}',0,1,0),(40,40,8,31,'a:0:{}',0,1,0),(41,41,8,37,'a:0:{}',0,1,0),(42,42,8,29,'a:0:{}',0,0,0),(43,43,8,34,'a:0:{}',0,0,0),(44,44,8,35,'a:0:{}',0,0,0),(45,45,9,38,'a:0:{}',0,1,0),(46,46,9,39,'a:0:{}',0,1,1),(47,47,9,40,'a:0:{}',0,1,0),(48,48,9,42,'a:0:{}',0,1,0),(49,49,9,52,'a:0:{}',0,1,0),(50,50,9,56,'a:0:{}',0,0,0),(51,51,9,50,'a:0:{}',0,0,0),(52,52,9,54,'a:0:{}',0,0,0),(53,53,9,43,'a:0:{}',0,0,0),(54,54,9,55,'a:0:{}',0,0,0),(55,55,9,44,'a:0:{}',0,0,0),(56,56,9,45,'a:0:{}',0,0,1),(57,57,9,46,'a:0:{}',0,0,1),(58,58,9,47,'a:0:{}',0,0,1),(59,59,9,51,'a:0:{}',0,0,0),(60,60,9,49,'a:0:{}',0,0,0),(61,61,10,57,'a:1:{s:3:\"max\";i:50;}',1,1,1),(62,62,10,40,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0),(63,63,10,58,'a:0:{}',0,0,1),(64,64,10,51,'a:0:{}',0,1,0),(65,65,10,48,'a:0:{}',0,1,0),(66,66,10,53,'a:0:{}',0,1,0),(67,67,11,60,'a:0:{}',1,1,1),(68,68,11,62,'a:1:{s:7:\"slugify\";s:4:\"name\";}',1,1,0),(69,69,11,67,'a:0:{}',0,0,1),(70,70,12,59,'a:0:{}',1,1,0),(71,71,12,61,'a:0:{}',0,1,1),(72,72,12,66,'a:0:{}',0,0,1),(73,73,12,62,'a:0:{}',1,1,0),(74,74,12,64,'a:0:{}',0,1,0),(75,75,12,68,'a:0:{}',0,1,0),(76,76,12,70,'a:0:{}',0,1,0),(77,77,12,69,'a:0:{}',0,1,0),(78,78,12,75,'a:0:{}',0,0,1),(79,79,12,76,'a:0:{}',0,0,1),(80,80,12,77,'a:0:{}',0,0,1),(81,81,12,72,'a:0:{}',0,0,0),(82,82,12,74,'a:0:{}',0,0,0),(83,83,12,73,'a:0:{}',0,0,0),(84,84,12,65,'a:0:{}',0,0,0),(85,85,13,60,'a:1:{s:3:\"max\";i:50;}',1,1,1),(86,86,13,62,'a:3:{s:7:\"slugify\";s:4:\"name\";s:4:\"type\";s:1:\"_\";s:3:\"max\";i:50;}',1,1,0),(87,87,13,71,'a:0:{}',0,1,0),(88,88,13,79,'a:0:{}',0,1,0),(89,89,13,67,'a:0:{}',0,0,1),(90,90,14,80,'a:0:{}',0,1,0),(91,91,14,81,'a:0:{}',0,1,0),(92,92,14,82,'a:0:{}',0,0,0),(93,93,15,83,'a:0:{}',1,1,0),(94,94,15,84,'a:0:{}',0,1,0),(95,95,15,85,'a:0:{}',0,1,0),(96,96,15,86,'a:0:{}',0,0,0),(97,97,16,87,'a:0:{}',1,1,0),(98,98,16,88,'a:0:{}',0,0,0),(99,99,17,89,'a:0:{}',1,1,0),(100,100,17,90,'a:0:{}',1,1,0),(101,101,17,91,'a:0:{}',0,1,0),(102,102,17,109,'a:0:{}',0,1,0),(103,103,17,97,'a:0:{}',0,1,0),(104,104,17,98,'a:0:{}',0,0,0),(105,105,17,99,'a:0:{}',0,0,0),(106,106,17,106,'a:0:{}',0,0,0),(107,107,17,107,'a:0:{}',0,0,0),(108,108,17,96,'a:0:{}',0,0,0),(109,109,17,94,'a:0:{}',0,0,0),(110,110,17,92,'a:0:{}',0,0,0),(111,111,17,104,'a:0:{}',0,0,0),(112,112,17,102,'a:0:{}',0,0,0),(113,113,17,95,'a:0:{}',0,0,0),(114,114,17,93,'a:0:{}',0,0,0),(115,115,18,100,'a:0:{}',0,1,1),(116,116,18,108,'a:0:{}',1,1,0),(117,117,18,101,'a:0:{}',0,0,1),(118,118,18,96,'a:0:{}',0,0,0),(119,119,19,110,'a:0:{}',0,0,1),(120,120,19,111,'a:0:{}',0,1,0),(121,121,19,112,'a:0:{}',0,0,1),(122,122,20,113,'a:0:{}',0,1,1),(123,123,20,114,'a:0:{}',0,1,0),(124,124,20,115,'a:0:{}',0,0,1),(125,125,23,41,'a:0:{}',0,0,1),(126,126,24,63,'a:0:{}',0,0,0),(127,127,26,118,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(128,128,26,119,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(129,129,26,120,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(130,130,26,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(131,131,26,117,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(132,132,25,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(133,133,23,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(134,134,25,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(135,135,23,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(136,136,27,123,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(137,137,27,122,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(140,138,28,121,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(141,139,28,116,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0),(143,141,28,127,'a:1:{i:0;s:6:\"a:0:{}\";}',0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_assignments_translations`
--

LOCK TABLES `src_streams_assignments_translations` WRITE;
/*!40000 ALTER TABLE `src_streams_assignments_translations` DISABLE KEYS */;
INSERT INTO `src_streams_assignments_translations` VALUES (1,1,'en','anomaly.module.configuration::field.scope.label.configuration','anomaly.module.configuration::field.scope.warning.configuration','anomaly.module.configuration::field.scope.placeholder.configuration','anomaly.module.configuration::field.scope.instructions.configuration'),(2,2,'en','anomaly.module.configuration::field.key.label.configuration','anomaly.module.configuration::field.key.warning.configuration','anomaly.module.configuration::field.key.placeholder.configuration','anomaly.module.configuration::field.key.instructions.configuration'),(3,3,'en','anomaly.module.configuration::field.value.label.configuration','anomaly.module.configuration::field.value.warning.configuration','anomaly.module.configuration::field.value.placeholder.configuration','anomaly.module.configuration::field.value.instructions.configuration'),(4,4,'en','anomaly.module.dashboard::field.name.label.dashboards','anomaly.module.dashboard::field.name.warning.dashboards','anomaly.module.dashboard::field.name.placeholder.dashboards','anomaly.module.dashboard::field.name.instructions.dashboards'),(5,5,'en','anomaly.module.dashboard::field.slug.label.dashboards','anomaly.module.dashboard::field.slug.warning.dashboards','anomaly.module.dashboard::field.slug.placeholder.dashboards','anomaly.module.dashboard::field.slug.instructions.dashboards'),(6,6,'en','anomaly.module.dashboard::field.description.label.dashboards','anomaly.module.dashboard::field.description.warning.dashboards','anomaly.module.dashboard::field.description.placeholder.dashboards','anomaly.module.dashboard::field.description.instructions.dashboards'),(7,7,'en','anomaly.module.dashboard::field.layout.label.dashboards','anomaly.module.dashboard::field.layout.warning.dashboards','anomaly.module.dashboard::field.layout.placeholder.dashboards','anomaly.module.dashboard::field.layout.instructions.dashboards'),(8,8,'en','anomaly.module.dashboard::field.allowed_roles.label.dashboards','anomaly.module.dashboard::field.allowed_roles.warning.dashboards','anomaly.module.dashboard::field.allowed_roles.placeholder.dashboards','anomaly.module.dashboard::field.allowed_roles.instructions.dashboards'),(9,9,'en','anomaly.module.dashboard::field.title.label.widgets','anomaly.module.dashboard::field.title.warning.widgets','anomaly.module.dashboard::field.title.placeholder.widgets','anomaly.module.dashboard::field.title.instructions.widgets'),(10,10,'en','anomaly.module.dashboard::field.description.label.widgets','anomaly.module.dashboard::field.description.warning.widgets','anomaly.module.dashboard::field.description.placeholder.widgets','anomaly.module.dashboard::field.description.instructions.widgets'),(11,11,'en','anomaly.module.dashboard::field.extension.label.widgets','anomaly.module.dashboard::field.extension.warning.widgets','anomaly.module.dashboard::field.extension.placeholder.widgets','anomaly.module.dashboard::field.extension.instructions.widgets'),(12,12,'en','anomaly.module.dashboard::field.column.label.widgets','anomaly.module.dashboard::field.column.warning.widgets','anomaly.module.dashboard::field.column.placeholder.widgets','anomaly.module.dashboard::field.column.instructions.widgets'),(13,13,'en','anomaly.module.dashboard::field.dashboard.label.widgets','anomaly.module.dashboard::field.dashboard.warning.widgets','anomaly.module.dashboard::field.dashboard.placeholder.widgets','anomaly.module.dashboard::field.dashboard.instructions.widgets'),(14,14,'en','anomaly.module.dashboard::field.allowed_roles.label.widgets','anomaly.module.dashboard::field.allowed_roles.warning.widgets','anomaly.module.dashboard::field.allowed_roles.placeholder.widgets','anomaly.module.dashboard::field.allowed_roles.instructions.widgets'),(15,15,'en','anomaly.module.dashboard::field.pinned.label.widgets','anomaly.module.dashboard::field.pinned.warning.widgets','anomaly.module.dashboard::field.pinned.placeholder.widgets','anomaly.module.dashboard::field.pinned.instructions.widgets'),(16,16,'en','anomaly.module.files::field.name.label.disks','anomaly.module.files::field.name.warning.disks','anomaly.module.files::field.name.placeholder.disks','anomaly.module.files::field.name.instructions.disks'),(17,17,'en','anomaly.module.files::field.slug.label.disks','anomaly.module.files::field.slug.warning.disks','anomaly.module.files::field.slug.placeholder.disks','anomaly.module.files::field.slug.instructions.disks'),(18,18,'en','anomaly.module.files::field.adapter.label.disks','anomaly.module.files::field.adapter.warning.disks','anomaly.module.files::field.adapter.placeholder.disks','anomaly.module.files::field.adapter.instructions.disks'),(19,19,'en','anomaly.module.files::field.description.label.disks','anomaly.module.files::field.description.warning.disks','anomaly.module.files::field.description.placeholder.disks','anomaly.module.files::field.description.instructions.disks'),(20,20,'en','anomaly.module.files::field.disk.label.folders','anomaly.module.files::field.disk.warning.folders','anomaly.module.files::field.disk.placeholder.folders','anomaly.module.files::field.disk.instructions.folders'),(21,21,'en','anomaly.module.files::field.name.label.folders','anomaly.module.files::field.name.warning.folders','anomaly.module.files::field.name.placeholder.folders','anomaly.module.files::field.name.instructions.folders'),(22,22,'en','anomaly.module.files::field.slug.label.folders','anomaly.module.files::field.slug.warning.folders','anomaly.module.files::field.slug.placeholder.folders','anomaly.module.files::field.slug.instructions.folders'),(23,23,'en','anomaly.module.files::field.description.label.folders','anomaly.module.files::field.description.warning.folders','anomaly.module.files::field.description.placeholder.folders','anomaly.module.files::field.description.instructions.folders'),(24,24,'en','anomaly.module.files::field.allowed_types.label.folders','anomaly.module.files::field.allowed_types.warning.folders','anomaly.module.files::field.allowed_types.placeholder.folders','anomaly.module.files::field.allowed_types.instructions.folders'),(25,25,'en','anomaly.module.files::field.name.label.files','anomaly.module.files::field.name.warning.files','anomaly.module.files::field.name.placeholder.files','anomaly.module.files::field.name.instructions.files'),(26,26,'en','anomaly.module.files::field.disk.label.files','anomaly.module.files::field.disk.warning.files','anomaly.module.files::field.disk.placeholder.files','anomaly.module.files::field.disk.instructions.files'),(27,27,'en','anomaly.module.files::field.folder.label.files','anomaly.module.files::field.folder.warning.files','anomaly.module.files::field.folder.placeholder.files','anomaly.module.files::field.folder.instructions.files'),(28,28,'en','anomaly.module.files::field.extension.label.files','anomaly.module.files::field.extension.warning.files','anomaly.module.files::field.extension.placeholder.files','anomaly.module.files::field.extension.instructions.files'),(29,29,'en','anomaly.module.files::field.size.label.files','anomaly.module.files::field.size.warning.files','anomaly.module.files::field.size.placeholder.files','anomaly.module.files::field.size.instructions.files'),(30,30,'en','anomaly.module.files::field.mime_type.label.files','anomaly.module.files::field.mime_type.warning.files','anomaly.module.files::field.mime_type.placeholder.files','anomaly.module.files::field.mime_type.instructions.files'),(31,31,'en','anomaly.module.files::field.entry.label.files','anomaly.module.files::field.entry.warning.files','anomaly.module.files::field.entry.placeholder.files','anomaly.module.files::field.entry.instructions.files'),(32,32,'en','anomaly.module.files::field.keywords.label.files','anomaly.module.files::field.keywords.warning.files','anomaly.module.files::field.keywords.placeholder.files','anomaly.module.files::field.keywords.instructions.files'),(33,33,'en','anomaly.module.files::field.height.label.files','anomaly.module.files::field.height.warning.files','anomaly.module.files::field.height.placeholder.files','anomaly.module.files::field.height.instructions.files'),(34,34,'en','anomaly.module.files::field.width.label.files','anomaly.module.files::field.width.warning.files','anomaly.module.files::field.width.placeholder.files','anomaly.module.files::field.width.instructions.files'),(35,35,'en','anomaly.module.navigation::field.name.label.menus','anomaly.module.navigation::field.name.warning.menus','anomaly.module.navigation::field.name.placeholder.menus','anomaly.module.navigation::field.name.instructions.menus'),(36,36,'en','anomaly.module.navigation::field.slug.label.menus','anomaly.module.navigation::field.slug.warning.menus','anomaly.module.navigation::field.slug.placeholder.menus','anomaly.module.navigation::field.slug.instructions.menus'),(37,37,'en','anomaly.module.navigation::field.description.label.menus','anomaly.module.navigation::field.description.warning.menus','anomaly.module.navigation::field.description.placeholder.menus','anomaly.module.navigation::field.description.instructions.menus'),(38,38,'en','anomaly.module.navigation::field.menu.label.links','anomaly.module.navigation::field.menu.warning.links','anomaly.module.navigation::field.menu.placeholder.links','anomaly.module.navigation::field.menu.instructions.links'),(39,39,'en','anomaly.module.navigation::field.type.label.links','anomaly.module.navigation::field.type.warning.links','anomaly.module.navigation::field.type.placeholder.links','anomaly.module.navigation::field.type.instructions.links'),(40,40,'en','anomaly.module.navigation::field.entry.label.links','anomaly.module.navigation::field.entry.warning.links','anomaly.module.navigation::field.entry.placeholder.links','anomaly.module.navigation::field.entry.instructions.links'),(41,41,'en','anomaly.module.navigation::field.target.label.links','anomaly.module.navigation::field.target.warning.links','anomaly.module.navigation::field.target.placeholder.links','anomaly.module.navigation::field.target.instructions.links'),(42,42,'en','anomaly.module.navigation::field.class.label.links','anomaly.module.navigation::field.class.warning.links','anomaly.module.navigation::field.class.placeholder.links','anomaly.module.navigation::field.class.instructions.links'),(43,43,'en','anomaly.module.navigation::field.parent.label.links','anomaly.module.navigation::field.parent.warning.links','anomaly.module.navigation::field.parent.placeholder.links','anomaly.module.navigation::field.parent.instructions.links'),(44,44,'en','anomaly.module.navigation::field.allowed_roles.label.links','anomaly.module.navigation::field.allowed_roles.warning.links','anomaly.module.navigation::field.allowed_roles.placeholder.links','anomaly.module.navigation::field.allowed_roles.instructions.links'),(45,45,'en','anomaly.module.pages::field.str_id.label.pages','anomaly.module.pages::field.str_id.warning.pages','anomaly.module.pages::field.str_id.placeholder.pages','anomaly.module.pages::field.str_id.instructions.pages'),(46,46,'en','anomaly.module.pages::field.title.label.pages','anomaly.module.pages::field.title.warning.pages','anomaly.module.pages::field.title.placeholder.pages','anomaly.module.pages::field.title.instructions.pages'),(47,47,'en','anomaly.module.pages::field.slug.label.pages','anomaly.module.pages::field.slug.warning.pages','anomaly.module.pages::field.slug.placeholder.pages','anomaly.module.pages::field.slug.instructions.pages'),(48,48,'en','anomaly.module.pages::field.path.label.pages','anomaly.module.pages::field.path.warning.pages','anomaly.module.pages::field.path.placeholder.pages','anomaly.module.pages::field.path.instructions.pages'),(49,49,'en','anomaly.module.pages::field.type.label.pages','anomaly.module.pages::field.type.warning.pages','anomaly.module.pages::field.type.placeholder.pages','anomaly.module.pages::field.type.instructions.pages'),(50,50,'en','anomaly.module.pages::field.entry.label.pages','anomaly.module.pages::field.entry.warning.pages','anomaly.module.pages::field.entry.placeholder.pages','anomaly.module.pages::field.entry.instructions.pages'),(51,51,'en','anomaly.module.pages::field.parent.label.pages','anomaly.module.pages::field.parent.warning.pages','anomaly.module.pages::field.parent.placeholder.pages','anomaly.module.pages::field.parent.instructions.pages'),(52,52,'en','anomaly.module.pages::field.visible.label.pages','anomaly.module.pages::field.visible.warning.pages','anomaly.module.pages::field.visible.placeholder.pages','anomaly.module.pages::field.visible.instructions.pages'),(53,53,'en','anomaly.module.pages::field.enabled.label.pages','anomaly.module.pages::field.enabled.warning.pages','anomaly.module.pages::field.enabled.placeholder.pages','anomaly.module.pages::field.enabled.instructions.pages'),(54,54,'en','anomaly.module.pages::field.exact.label.pages','anomaly.module.pages::field.exact.warning.pages','anomaly.module.pages::field.exact.placeholder.pages','anomaly.module.pages::field.exact.instructions.pages'),(55,55,'en','anomaly.module.pages::field.home.label.pages','anomaly.module.pages::field.home.warning.pages','anomaly.module.pages::field.home.placeholder.pages','anomaly.module.pages::field.home.instructions.pages'),(56,56,'en','anomaly.module.pages::field.meta_title.label.pages','anomaly.module.pages::field.meta_title.warning.pages','anomaly.module.pages::field.meta_title.placeholder.pages','anomaly.module.pages::field.meta_title.instructions.pages'),(57,57,'en','anomaly.module.pages::field.meta_description.label.pages','anomaly.module.pages::field.meta_description.warning.pages','anomaly.module.pages::field.meta_description.placeholder.pages','anomaly.module.pages::field.meta_description.instructions.pages'),(58,58,'en','anomaly.module.pages::field.meta_keywords.label.pages','anomaly.module.pages::field.meta_keywords.warning.pages','anomaly.module.pages::field.meta_keywords.placeholder.pages','anomaly.module.pages::field.meta_keywords.instructions.pages'),(59,59,'en','anomaly.module.pages::field.theme_layout.label.pages','anomaly.module.pages::field.theme_layout.warning.pages','anomaly.module.pages::field.theme_layout.placeholder.pages','anomaly.module.pages::field.theme_layout.instructions.pages'),(60,60,'en','anomaly.module.pages::field.allowed_roles.label.pages','anomaly.module.pages::field.allowed_roles.warning.pages','anomaly.module.pages::field.allowed_roles.placeholder.pages','anomaly.module.pages::field.allowed_roles.instructions.pages'),(61,61,'en','anomaly.module.pages::field.name.label.types','anomaly.module.pages::field.name.warning.types','anomaly.module.pages::field.name.placeholder.types','anomaly.module.pages::field.name.instructions.types'),(62,62,'en','anomaly.module.pages::field.slug.label.types','anomaly.module.pages::field.slug.warning.types','anomaly.module.pages::field.slug.placeholder.types','anomaly.module.pages::field.slug.instructions.types'),(63,63,'en','anomaly.module.pages::field.description.label.types','anomaly.module.pages::field.description.warning.types','anomaly.module.pages::field.description.placeholder.types','anomaly.module.pages::field.description.instructions.types'),(64,64,'en','anomaly.module.pages::field.theme_layout.label.types','anomaly.module.pages::field.theme_layout.warning.types','anomaly.module.pages::field.theme_layout.placeholder.types','anomaly.module.pages::field.theme_layout.instructions.types'),(65,65,'en','anomaly.module.pages::field.layout.label.types','anomaly.module.pages::field.layout.warning.types','anomaly.module.pages::field.layout.placeholder.types','anomaly.module.pages::field.layout.instructions.types'),(66,66,'en','anomaly.module.pages::field.handler.label.types','anomaly.module.pages::field.handler.warning.types','anomaly.module.pages::field.handler.placeholder.types','anomaly.module.pages::field.handler.instructions.types'),(67,67,'en','anomaly.module.posts::field.name.label.categories','anomaly.module.posts::field.name.warning.categories','anomaly.module.posts::field.name.placeholder.categories','anomaly.module.posts::field.name.instructions.categories'),(68,68,'en','anomaly.module.posts::field.slug.label.categories','anomaly.module.posts::field.slug.warning.categories','anomaly.module.posts::field.slug.placeholder.categories','anomaly.module.posts::field.slug.instructions.categories'),(69,69,'en','anomaly.module.posts::field.description.label.categories','anomaly.module.posts::field.description.warning.categories','anomaly.module.posts::field.description.placeholder.categories','anomaly.module.posts::field.description.instructions.categories'),(70,70,'en','anomaly.module.posts::field.str_id.label.posts','anomaly.module.posts::field.str_id.warning.posts','anomaly.module.posts::field.str_id.placeholder.posts','anomaly.module.posts::field.str_id.instructions.posts'),(71,71,'en','anomaly.module.posts::field.title.label.posts','anomaly.module.posts::field.title.warning.posts','anomaly.module.posts::field.title.placeholder.posts','anomaly.module.posts::field.title.instructions.posts'),(72,72,'en','anomaly.module.posts::field.summary.label.posts','anomaly.module.posts::field.summary.warning.posts','anomaly.module.posts::field.summary.placeholder.posts','anomaly.module.posts::field.summary.instructions.posts'),(73,73,'en','anomaly.module.posts::field.slug.label.posts','anomaly.module.posts::field.slug.warning.posts','anomaly.module.posts::field.slug.placeholder.posts','anomaly.module.posts::field.slug.instructions.posts'),(74,74,'en','anomaly.module.posts::field.type.label.posts','anomaly.module.posts::field.type.warning.posts','anomaly.module.posts::field.type.placeholder.posts','anomaly.module.posts::field.type.instructions.posts'),(75,75,'en','anomaly.module.posts::field.publish_at.label.posts','anomaly.module.posts::field.publish_at.warning.posts','anomaly.module.posts::field.publish_at.placeholder.posts','anomaly.module.posts::field.publish_at.instructions.posts'),(76,76,'en','anomaly.module.posts::field.author.label.posts','anomaly.module.posts::field.author.warning.posts','anomaly.module.posts::field.author.placeholder.posts','anomaly.module.posts::field.author.instructions.posts'),(77,77,'en','anomaly.module.posts::field.entry.label.posts','anomaly.module.posts::field.entry.warning.posts','anomaly.module.posts::field.entry.placeholder.posts','anomaly.module.posts::field.entry.instructions.posts'),(78,78,'en','anomaly.module.posts::field.meta_title.label.posts','anomaly.module.posts::field.meta_title.warning.posts','anomaly.module.posts::field.meta_title.placeholder.posts','anomaly.module.posts::field.meta_title.instructions.posts'),(79,79,'en','anomaly.module.posts::field.meta_description.label.posts','anomaly.module.posts::field.meta_description.warning.posts','anomaly.module.posts::field.meta_description.placeholder.posts','anomaly.module.posts::field.meta_description.instructions.posts'),(80,80,'en','anomaly.module.posts::field.meta_keywords.label.posts','anomaly.module.posts::field.meta_keywords.warning.posts','anomaly.module.posts::field.meta_keywords.placeholder.posts','anomaly.module.posts::field.meta_keywords.instructions.posts'),(81,81,'en','anomaly.module.posts::field.category.label.posts','anomaly.module.posts::field.category.warning.posts','anomaly.module.posts::field.category.placeholder.posts','anomaly.module.posts::field.category.instructions.posts'),(82,82,'en','anomaly.module.posts::field.featured.label.posts','anomaly.module.posts::field.featured.warning.posts','anomaly.module.posts::field.featured.placeholder.posts','anomaly.module.posts::field.featured.instructions.posts'),(83,83,'en','anomaly.module.posts::field.enabled.label.posts','anomaly.module.posts::field.enabled.warning.posts','anomaly.module.posts::field.enabled.placeholder.posts','anomaly.module.posts::field.enabled.instructions.posts'),(84,84,'en','anomaly.module.posts::field.tags.label.posts','anomaly.module.posts::field.tags.warning.posts','anomaly.module.posts::field.tags.placeholder.posts','anomaly.module.posts::field.tags.instructions.posts'),(85,85,'en','anomaly.module.posts::field.name.label.types','anomaly.module.posts::field.name.warning.types','anomaly.module.posts::field.name.placeholder.types','anomaly.module.posts::field.name.instructions.types'),(86,86,'en','anomaly.module.posts::field.slug.label.types','anomaly.module.posts::field.slug.warning.types','anomaly.module.posts::field.slug.placeholder.types','anomaly.module.posts::field.slug.instructions.types'),(87,87,'en','anomaly.module.posts::field.layout.label.types','anomaly.module.posts::field.layout.warning.types','anomaly.module.posts::field.layout.placeholder.types','anomaly.module.posts::field.layout.instructions.types'),(88,88,'en','anomaly.module.posts::field.theme_layout.label.types','anomaly.module.posts::field.theme_layout.warning.types','anomaly.module.posts::field.theme_layout.placeholder.types','anomaly.module.posts::field.theme_layout.instructions.types'),(89,89,'en','anomaly.module.posts::field.description.label.types','anomaly.module.posts::field.description.warning.types','anomaly.module.posts::field.description.placeholder.types','anomaly.module.posts::field.description.instructions.types'),(90,90,'en','anomaly.module.preferences::field.user.label.preferences','anomaly.module.preferences::field.user.warning.preferences','anomaly.module.preferences::field.user.placeholder.preferences','anomaly.module.preferences::field.user.instructions.preferences'),(91,91,'en','anomaly.module.preferences::field.key.label.preferences','anomaly.module.preferences::field.key.warning.preferences','anomaly.module.preferences::field.key.placeholder.preferences','anomaly.module.preferences::field.key.instructions.preferences'),(92,92,'en','anomaly.module.preferences::field.value.label.preferences','anomaly.module.preferences::field.value.warning.preferences','anomaly.module.preferences::field.value.placeholder.preferences','anomaly.module.preferences::field.value.instructions.preferences'),(93,93,'en','anomaly.module.redirects::field.from.label.redirects','anomaly.module.redirects::field.from.warning.redirects','anomaly.module.redirects::field.from.placeholder.redirects','anomaly.module.redirects::field.from.instructions.redirects'),(94,94,'en','anomaly.module.redirects::field.to.label.redirects','anomaly.module.redirects::field.to.warning.redirects','anomaly.module.redirects::field.to.placeholder.redirects','anomaly.module.redirects::field.to.instructions.redirects'),(95,95,'en','anomaly.module.redirects::field.status.label.redirects','anomaly.module.redirects::field.status.warning.redirects','anomaly.module.redirects::field.status.placeholder.redirects','anomaly.module.redirects::field.status.instructions.redirects'),(96,96,'en','anomaly.module.redirects::field.secure.label.redirects','anomaly.module.redirects::field.secure.warning.redirects','anomaly.module.redirects::field.secure.placeholder.redirects','anomaly.module.redirects::field.secure.instructions.redirects'),(97,97,'en','anomaly.module.settings::field.key.label.settings','anomaly.module.settings::field.key.warning.settings','anomaly.module.settings::field.key.placeholder.settings','anomaly.module.settings::field.key.instructions.settings'),(98,98,'en','anomaly.module.settings::field.value.label.settings','anomaly.module.settings::field.value.warning.settings','anomaly.module.settings::field.value.placeholder.settings','anomaly.module.settings::field.value.instructions.settings'),(99,99,'en','anomaly.module.users::field.email.label.users','anomaly.module.users::field.email.warning.users','anomaly.module.users::field.email.placeholder.users','anomaly.module.users::field.email.instructions.users'),(100,100,'en','anomaly.module.users::field.username.label.users','anomaly.module.users::field.username.warning.users','anomaly.module.users::field.username.placeholder.users','anomaly.module.users::field.username.instructions.users'),(101,101,'en','anomaly.module.users::field.password.label.users','anomaly.module.users::field.password.warning.users','anomaly.module.users::field.password.placeholder.users','anomaly.module.users::field.password.instructions.users'),(102,102,'en','anomaly.module.users::field.roles.label.users','anomaly.module.users::field.roles.warning.users','anomaly.module.users::field.roles.placeholder.users','anomaly.module.users::field.roles.instructions.users'),(103,103,'en','anomaly.module.users::field.display_name.label.users','anomaly.module.users::field.display_name.warning.users','anomaly.module.users::field.display_name.placeholder.users','anomaly.module.users::field.display_name.instructions.users'),(104,104,'en','anomaly.module.users::field.first_name.label.users','anomaly.module.users::field.first_name.warning.users','anomaly.module.users::field.first_name.placeholder.users','anomaly.module.users::field.first_name.instructions.users'),(105,105,'en','anomaly.module.users::field.last_name.label.users','anomaly.module.users::field.last_name.warning.users','anomaly.module.users::field.last_name.placeholder.users','anomaly.module.users::field.last_name.instructions.users'),(106,106,'en','anomaly.module.users::field.activated.label.users','anomaly.module.users::field.activated.warning.users','anomaly.module.users::field.activated.placeholder.users','anomaly.module.users::field.activated.instructions.users'),(107,107,'en','anomaly.module.users::field.enabled.label.users','anomaly.module.users::field.enabled.warning.users','anomaly.module.users::field.enabled.placeholder.users','anomaly.module.users::field.enabled.instructions.users'),(108,108,'en','anomaly.module.users::field.permissions.label.users','anomaly.module.users::field.permissions.warning.users','anomaly.module.users::field.permissions.placeholder.users','anomaly.module.users::field.permissions.instructions.users'),(109,109,'en','anomaly.module.users::field.last_login_at.label.users','anomaly.module.users::field.last_login_at.warning.users','anomaly.module.users::field.last_login_at.placeholder.users','anomaly.module.users::field.last_login_at.instructions.users'),(110,110,'en','anomaly.module.users::field.remember_token.label.users','anomaly.module.users::field.remember_token.warning.users','anomaly.module.users::field.remember_token.placeholder.users','anomaly.module.users::field.remember_token.instructions.users'),(111,111,'en','anomaly.module.users::field.activation_code.label.users','anomaly.module.users::field.activation_code.warning.users','anomaly.module.users::field.activation_code.placeholder.users','anomaly.module.users::field.activation_code.instructions.users'),(112,112,'en','anomaly.module.users::field.reset_code.label.users','anomaly.module.users::field.reset_code.warning.users','anomaly.module.users::field.reset_code.placeholder.users','anomaly.module.users::field.reset_code.instructions.users'),(113,113,'en','anomaly.module.users::field.last_activity_at.label.users','anomaly.module.users::field.last_activity_at.warning.users','anomaly.module.users::field.last_activity_at.placeholder.users','anomaly.module.users::field.last_activity_at.instructions.users'),(114,114,'en','anomaly.module.users::field.ip_address.label.users','anomaly.module.users::field.ip_address.warning.users','anomaly.module.users::field.ip_address.placeholder.users','anomaly.module.users::field.ip_address.instructions.users'),(115,115,'en','anomaly.module.users::field.name.label.roles','anomaly.module.users::field.name.warning.roles','anomaly.module.users::field.name.placeholder.roles','anomaly.module.users::field.name.instructions.roles'),(116,116,'en','anomaly.module.users::field.slug.label.roles','anomaly.module.users::field.slug.warning.roles','anomaly.module.users::field.slug.placeholder.roles','anomaly.module.users::field.slug.instructions.roles'),(117,117,'en','anomaly.module.users::field.description.label.roles','anomaly.module.users::field.description.warning.roles','anomaly.module.users::field.description.placeholder.roles','anomaly.module.users::field.description.instructions.roles'),(118,118,'en','anomaly.module.users::field.permissions.label.roles','anomaly.module.users::field.permissions.warning.roles','anomaly.module.users::field.permissions.placeholder.roles','anomaly.module.users::field.permissions.instructions.roles'),(119,119,'en','anomaly.extension.page_link_type::field.title.label.pages','anomaly.extension.page_link_type::field.title.warning.pages','anomaly.extension.page_link_type::field.title.placeholder.pages','anomaly.extension.page_link_type::field.title.instructions.pages'),(120,120,'en','anomaly.extension.page_link_type::field.page.label.pages','anomaly.extension.page_link_type::field.page.warning.pages','anomaly.extension.page_link_type::field.page.placeholder.pages','anomaly.extension.page_link_type::field.page.instructions.pages'),(121,121,'en','anomaly.extension.page_link_type::field.description.label.pages','anomaly.extension.page_link_type::field.description.warning.pages','anomaly.extension.page_link_type::field.description.placeholder.pages','anomaly.extension.page_link_type::field.description.instructions.pages'),(122,122,'en','anomaly.extension.url_link_type::field.title.label.urls','anomaly.extension.url_link_type::field.title.warning.urls','anomaly.extension.url_link_type::field.title.placeholder.urls','anomaly.extension.url_link_type::field.title.instructions.urls'),(123,123,'en','anomaly.extension.url_link_type::field.url.label.urls','anomaly.extension.url_link_type::field.url.warning.urls','anomaly.extension.url_link_type::field.url.placeholder.urls','anomaly.extension.url_link_type::field.url.instructions.urls'),(124,124,'en','anomaly.extension.url_link_type::field.description.label.urls','anomaly.extension.url_link_type::field.description.warning.urls','anomaly.extension.url_link_type::field.description.placeholder.urls','anomaly.extension.url_link_type::field.description.instructions.urls'),(125,125,'en',NULL,NULL,NULL,NULL),(126,126,'en',NULL,NULL,NULL,NULL),(127,127,'en',NULL,NULL,NULL,NULL),(128,128,'en',NULL,NULL,NULL,NULL),(129,129,'en',NULL,NULL,NULL,NULL),(130,130,'en',NULL,NULL,NULL,NULL),(131,131,'en',NULL,NULL,NULL,NULL),(132,132,'en',NULL,NULL,NULL,NULL),(133,133,'en',NULL,NULL,NULL,NULL),(134,134,'en','Slogan',NULL,NULL,'This text will be overlayed on top of the banner image'),(135,135,'en',NULL,NULL,NULL,NULL),(136,136,'en',NULL,NULL,NULL,NULL),(137,137,'en',NULL,NULL,NULL,NULL),(140,140,'en',NULL,NULL,NULL,NULL),(141,141,'en',NULL,NULL,NULL,NULL),(143,143,'en',NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_fields`
--

LOCK TABLES `src_streams_fields` WRITE;
/*!40000 ALTER TABLE `src_streams_fields` DISABLE KEYS */;
INSERT INTO `src_streams_fields` VALUES (1,'configuration','scope','anomaly.field_type.text','a:0:{}',1),(2,'configuration','key','anomaly.field_type.text','a:0:{}',1),(3,'configuration','value','anomaly.field_type.textarea','a:0:{}',1),(4,'dashboard','name','anomaly.field_type.text','a:0:{}',1),(5,'dashboard','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(6,'dashboard','description','anomaly.field_type.textarea','a:0:{}',1),(7,'dashboard','layout','anomaly.field_type.select','a:1:{s:7:\"options\";a:9:{i:24;s:48:\"anomaly.module.dashboard::field.layout.option.24\";s:5:\"12-12\";s:51:\"anomaly.module.dashboard::field.layout.option.12-12\";s:4:\"16-8\";s:50:\"anomaly.module.dashboard::field.layout.option.16-8\";s:4:\"8-16\";s:50:\"anomaly.module.dashboard::field.layout.option.8-16\";s:5:\"8-8-8\";s:51:\"anomaly.module.dashboard::field.layout.option.8-8-8\";s:6:\"6-12-6\";s:52:\"anomaly.module.dashboard::field.layout.option.6-12-6\";s:6:\"12-6-6\";s:52:\"anomaly.module.dashboard::field.layout.option.12-6-6\";s:6:\"6-6-12\";s:52:\"anomaly.module.dashboard::field.layout.option.6-6-12\";s:7:\"6-6-6-6\";s:53:\"anomaly.module.dashboard::field.layout.option.6-6-6-6\";}}',1),(8,'dashboard','title','anomaly.field_type.text','a:0:{}',1),(9,'dashboard','extension','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:34:\"anomaly.module.dashboard::widget.*\";}',1),(10,'dashboard','column','anomaly.field_type.integer','a:2:{s:3:\"min\";i:1;s:13:\"default_value\";i:1;}',1),(11,'dashboard','pinned','anomaly.field_type.boolean','a:0:{}',1),(12,'dashboard','dashboard','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:48:\"Anomaly\\DashboardModule\\Dashboard\\DashboardModel\";}',1),(13,'dashboard','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(14,'files','name','anomaly.field_type.text','a:0:{}',1),(15,'files','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(16,'files','adapter','anomaly.field_type.addon','a:2:{s:4:\"type\";s:10:\"extensions\";s:6:\"search\";s:31:\"anomaly.module.files::adapter.*\";}',1),(17,'files','folder','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:38:\"Anomaly\\FilesModule\\Folder\\FolderModel\";}',1),(18,'files','disk','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\FilesModule\\Disk\\DiskModel\";}',1),(19,'files','entry','anomaly.field_type.polymorphic','a:0:{}',1),(20,'files','description','anomaly.field_type.textarea','a:0:{}',1),(21,'files','allowed_types','anomaly.field_type.tags','a:0:{}',1),(22,'files','keywords','anomaly.field_type.tags','a:0:{}',1),(23,'files','extension','anomaly.field_type.text','a:0:{}',1),(24,'files','width','anomaly.field_type.text','a:0:{}',1),(25,'files','height','anomaly.field_type.text','a:0:{}',1),(26,'files','mime_type','anomaly.field_type.text','a:0:{}',1),(27,'files','size','anomaly.field_type.integer','a:0:{}',1),(28,'navigation','name','anomaly.field_type.text','a:0:{}',1),(29,'navigation','class','anomaly.field_type.text','a:0:{}',1),(30,'navigation','description','anomaly.field_type.textarea','a:0:{}',1),(31,'navigation','entry','anomaly.field_type.polymorphic','a:0:{}',1),(32,'navigation','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(33,'navigation','menu','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Menu\\MenuModel\";}',1),(34,'navigation','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:39:\"Anomaly\\NavigationModule\\Link\\LinkModel\";}',1),(35,'navigation','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(36,'navigation','type','anomaly.field_type.addon','a:2:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:38:\"anomaly.module.navigation::link_type.*\";}',1),(37,'navigation','target','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:5:\"_self\";s:7:\"options\";a:2:{s:5:\"_self\";s:51:\"anomaly.module.navigation::field.target.option.self\";s:6:\"_blank\";s:52:\"anomaly.module.navigation::field.target.option.blank\";}}',1),(38,'pages','str_id','anomaly.field_type.text','a:0:{}',1),(39,'pages','title','anomaly.field_type.text','a:0:{}',1),(40,'pages','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(41,'pages','content','anomaly.field_type.wysiwyg','a:0:{}',0),(42,'pages','path','anomaly.field_type.text','a:0:{}',1),(43,'pages','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(44,'pages','home','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(45,'pages','meta_title','anomaly.field_type.text','a:0:{}',1),(46,'pages','meta_description','anomaly.field_type.textarea','a:0:{}',1),(47,'pages','meta_keywords','anomaly.field_type.tags','a:0:{}',1),(48,'pages','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:25:\"<h1>{{ page.title }}</h1>\";s:4:\"mode\";s:4:\"twig\";}',1),(49,'pages','allowed_roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(50,'pages','parent','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(51,'pages','theme_layout','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:27:\"theme::layouts/default.twig\";s:7:\"handler\";s:46:\"Anomaly\\SelectFieldType\\Handler\\Layouts@handle\";}',1),(52,'pages','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Type\\TypeModel\";}',1),(53,'pages','handler','anomaly.field_type.addon','a:3:{s:4:\"type\";s:9:\"extension\";s:6:\"search\";s:31:\"anomaly.module.pages::handler.*\";s:13:\"default_value\";s:38:\"anomaly.extension.default_page_handler\";}',1),(54,'pages','visible','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(55,'pages','exact','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(56,'pages','entry','anomaly.field_type.polymorphic','a:0:{}',1),(57,'pages','name','anomaly.field_type.text','a:0:{}',1),(58,'pages','description','anomaly.field_type.textarea','a:0:{}',1),(59,'posts','str_id','anomaly.field_type.text','a:0:{}',1),(60,'posts','name','anomaly.field_type.text','a:0:{}',1),(61,'posts','title','anomaly.field_type.text','a:0:{}',1),(62,'posts','slug','anomaly.field_type.slug','a:2:{s:7:\"slugify\";s:5:\"title\";s:4:\"type\";s:1:\"-\";}',1),(63,'posts','content','anomaly.field_type.wysiwyg','a:0:{}',0),(64,'posts','type','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:34:\"Anomaly\\PostsModule\\Type\\TypeModel\";}',1),(65,'posts','tags','anomaly.field_type.tags','a:0:{}',1),(66,'posts','summary','anomaly.field_type.textarea','a:0:{}',1),(67,'posts','description','anomaly.field_type.textarea','a:0:{}',1),(68,'posts','publish_at','anomaly.field_type.datetime','a:0:{}',1),(69,'posts','entry','anomaly.field_type.polymorphic','a:0:{}',1),(70,'posts','author','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(71,'posts','layout','anomaly.field_type.editor','a:2:{s:13:\"default_value\";s:22:\"{{ post.content|raw }}\";s:4:\"mode\";s:4:\"twig\";}',1),(72,'posts','category','anomaly.field_type.relationship','a:1:{s:7:\"related\";s:42:\"Anomaly\\PostsModule\\Category\\CategoryModel\";}',1),(73,'posts','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(74,'posts','featured','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(75,'posts','meta_title','anomaly.field_type.text','a:0:{}',1),(76,'posts','meta_description','anomaly.field_type.textarea','a:0:{}',1),(77,'posts','meta_keywords','anomaly.field_type.tags','a:0:{}',1),(78,'posts','ttl','anomaly.field_type.integer','a:3:{s:3:\"min\";i:0;s:4:\"step\";i:1;s:4:\"page\";i:5;}',1),(79,'posts','theme_layout','anomaly.field_type.select','a:1:{s:7:\"handler\";s:39:\"Anomaly\\SelectFieldType\\Handler\\Layouts\";}',1),(80,'preferences','user','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\UsersModule\\User\\UserModel\";}',1),(81,'preferences','key','anomaly.field_type.text','a:0:{}',1),(82,'preferences','value','anomaly.field_type.textarea','a:0:{}',1),(83,'redirects','from','anomaly.field_type.text','a:0:{}',1),(84,'redirects','to','anomaly.field_type.text','a:0:{}',1),(85,'redirects','status','anomaly.field_type.select','a:2:{s:13:\"default_value\";s:3:\"301\";s:7:\"options\";a:2:{i:301;s:49:\"anomaly.module.redirects::field.status.option.301\";i:302;s:49:\"anomaly.module.redirects::field.status.option.302\";}}',1),(86,'redirects','secure','anomaly.field_type.boolean','a:0:{}',1),(87,'settings','key','anomaly.field_type.text','a:0:{}',1),(88,'settings','value','anomaly.field_type.textarea','a:0:{}',1),(89,'users','email','anomaly.field_type.email','a:0:{}',1),(90,'users','username','anomaly.field_type.slug','a:2:{s:4:\"type\";s:1:\"_\";s:9:\"lowercase\";b:0;}',1),(91,'users','password','anomaly.field_type.text','a:1:{s:4:\"type\";s:8:\"password\";}',1),(92,'users','remember_token','anomaly.field_type.text','a:0:{}',1),(93,'users','ip_address','anomaly.field_type.text','a:0:{}',1),(94,'users','last_login_at','anomaly.field_type.datetime','a:0:{}',1),(95,'users','last_activity_at','anomaly.field_type.datetime','a:0:{}',1),(96,'users','permissions','anomaly.field_type.checkboxes','a:0:{}',1),(97,'users','display_name','anomaly.field_type.text','a:0:{}',1),(98,'users','first_name','anomaly.field_type.text','a:0:{}',1),(99,'users','last_name','anomaly.field_type.text','a:0:{}',1),(100,'users','name','anomaly.field_type.text','a:0:{}',1),(101,'users','description','anomaly.field_type.textarea','a:0:{}',1),(102,'users','reset_code','anomaly.field_type.text','a:0:{}',1),(103,'users','reset_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(104,'users','activation_code','anomaly.field_type.text','a:0:{}',1),(105,'users','activation_code_expires_at','anomaly.field_type.datetime','a:0:{}',1),(106,'users','activated','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:0;}',1),(107,'users','enabled','anomaly.field_type.boolean','a:1:{s:13:\"default_value\";b:1;}',1),(108,'users','slug','anomaly.field_type.slug','a:1:{s:7:\"slugify\";s:4:\"name\";}',1),(109,'users','roles','anomaly.field_type.multiple','a:1:{s:7:\"related\";s:34:\"Anomaly\\UsersModule\\Role\\RoleModel\";}',1),(110,'page_link_type','title','anomaly.field_type.text','a:0:{}',1),(111,'page_link_type','page','anomaly.field_type.relationship','a:2:{s:4:\"mode\";s:6:\"lookup\";s:7:\"related\";s:34:\"Anomaly\\PagesModule\\Page\\PageModel\";}',1),(112,'page_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(113,'url_link_type','title','anomaly.field_type.text','a:0:{}',1),(114,'url_link_type','url','anomaly.field_type.text','a:0:{}',1),(115,'url_link_type','description','anomaly.field_type.textarea','a:0:{}',1),(116,'pages','slogan_line_1','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";s:2:\"25\";s:13:\"default_value\";N;}',0),(117,'pages','slogan_line_2','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";s:2:\"15\";s:13:\"default_value\";N;}',0),(118,'pages','about_us_left_column','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(119,'pages','about_us_center_column','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(120,'pages','about_us_right_column','anomaly.field_type.textarea','a:4:{s:4:\"rows\";s:1:\"6\";s:3:\"min\";N;s:3:\"max\";N;s:13:\"default_value\";N;}',0),(121,'pages','banner_image','anomaly.field_type.file','a:2:{s:7:\"folders\";a:1:{i:0;s:1:\"1\";}s:3:\"max\";s:3:\"7.0\";}',0),(122,'posts','url','anomaly.field_type.url','a:1:{s:13:\"default_value\";N;}',0),(123,'posts','link_description','anomaly.field_type.text','a:6:{s:4:\"type\";s:4:\"text\";s:3:\"min\";N;s:3:\"max\";N;s:12:\"show_counter\";b:0;s:9:\"suggested\";N;s:13:\"default_value\";N;}',0),(126,'pages','menu','anomaly.field_type.relationship','a:2:{s:7:\"related\";s:67:\"Anomaly\\Streams\\Platform\\Model\\Navigation\\NavigationMenusEntryModel\";s:4:\"mode\";s:8:\"dropdown\";}',0),(127,'pages','menus','anomaly.field_type.multiple','a:4:{s:7:\"related\";s:67:\"Anomaly\\Streams\\Platform\\Model\\Navigation\\NavigationMenusEntryModel\";s:4:\"mode\";s:4:\"tags\";s:3:\"min\";N;s:3:\"max\";N;}',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_fields_translations`
--

LOCK TABLES `src_streams_fields_translations` WRITE;
/*!40000 ALTER TABLE `src_streams_fields_translations` DISABLE KEYS */;
INSERT INTO `src_streams_fields_translations` VALUES (1,1,'en','anomaly.module.configuration::field.scope.name','anomaly.module.configuration::field.scope.placeholder','anomaly.module.configuration::field.scope.warning','anomaly.module.configuration::field.scope.instructions'),(2,2,'en','anomaly.module.configuration::field.key.name','anomaly.module.configuration::field.key.placeholder','anomaly.module.configuration::field.key.warning','anomaly.module.configuration::field.key.instructions'),(3,3,'en','anomaly.module.configuration::field.value.name','anomaly.module.configuration::field.value.placeholder','anomaly.module.configuration::field.value.warning','anomaly.module.configuration::field.value.instructions'),(4,4,'en','anomaly.module.dashboard::field.name.name','anomaly.module.dashboard::field.name.placeholder','anomaly.module.dashboard::field.name.warning','anomaly.module.dashboard::field.name.instructions'),(5,5,'en','anomaly.module.dashboard::field.slug.name','anomaly.module.dashboard::field.slug.placeholder','anomaly.module.dashboard::field.slug.warning','anomaly.module.dashboard::field.slug.instructions'),(6,6,'en','anomaly.module.dashboard::field.description.name','anomaly.module.dashboard::field.description.placeholder','anomaly.module.dashboard::field.description.warning','anomaly.module.dashboard::field.description.instructions'),(7,7,'en','anomaly.module.dashboard::field.layout.name','anomaly.module.dashboard::field.layout.placeholder','anomaly.module.dashboard::field.layout.warning','anomaly.module.dashboard::field.layout.instructions'),(8,8,'en','anomaly.module.dashboard::field.title.name','anomaly.module.dashboard::field.title.placeholder','anomaly.module.dashboard::field.title.warning','anomaly.module.dashboard::field.title.instructions'),(9,9,'en','anomaly.module.dashboard::field.extension.name','anomaly.module.dashboard::field.extension.placeholder','anomaly.module.dashboard::field.extension.warning','anomaly.module.dashboard::field.extension.instructions'),(10,10,'en','anomaly.module.dashboard::field.column.name','anomaly.module.dashboard::field.column.placeholder','anomaly.module.dashboard::field.column.warning','anomaly.module.dashboard::field.column.instructions'),(11,11,'en','anomaly.module.dashboard::field.pinned.name','anomaly.module.dashboard::field.pinned.placeholder','anomaly.module.dashboard::field.pinned.warning','anomaly.module.dashboard::field.pinned.instructions'),(12,12,'en','anomaly.module.dashboard::field.dashboard.name','anomaly.module.dashboard::field.dashboard.placeholder','anomaly.module.dashboard::field.dashboard.warning','anomaly.module.dashboard::field.dashboard.instructions'),(13,13,'en','anomaly.module.dashboard::field.allowed_roles.name','anomaly.module.dashboard::field.allowed_roles.placeholder','anomaly.module.dashboard::field.allowed_roles.warning','anomaly.module.dashboard::field.allowed_roles.instructions'),(14,14,'en','anomaly.module.files::field.name.name','anomaly.module.files::field.name.placeholder','anomaly.module.files::field.name.warning','anomaly.module.files::field.name.instructions'),(15,15,'en','anomaly.module.files::field.slug.name','anomaly.module.files::field.slug.placeholder','anomaly.module.files::field.slug.warning','anomaly.module.files::field.slug.instructions'),(16,16,'en','anomaly.module.files::field.adapter.name','anomaly.module.files::field.adapter.placeholder','anomaly.module.files::field.adapter.warning','anomaly.module.files::field.adapter.instructions'),(17,17,'en','anomaly.module.files::field.folder.name','anomaly.module.files::field.folder.placeholder','anomaly.module.files::field.folder.warning','anomaly.module.files::field.folder.instructions'),(18,18,'en','anomaly.module.files::field.disk.name','anomaly.module.files::field.disk.placeholder','anomaly.module.files::field.disk.warning','anomaly.module.files::field.disk.instructions'),(19,19,'en','anomaly.module.files::field.entry.name','anomaly.module.files::field.entry.placeholder','anomaly.module.files::field.entry.warning','anomaly.module.files::field.entry.instructions'),(20,20,'en','anomaly.module.files::field.description.name','anomaly.module.files::field.description.placeholder','anomaly.module.files::field.description.warning','anomaly.module.files::field.description.instructions'),(21,21,'en','anomaly.module.files::field.allowed_types.name','anomaly.module.files::field.allowed_types.placeholder','anomaly.module.files::field.allowed_types.warning','anomaly.module.files::field.allowed_types.instructions'),(22,22,'en','anomaly.module.files::field.keywords.name','anomaly.module.files::field.keywords.placeholder','anomaly.module.files::field.keywords.warning','anomaly.module.files::field.keywords.instructions'),(23,23,'en','anomaly.module.files::field.extension.name','anomaly.module.files::field.extension.placeholder','anomaly.module.files::field.extension.warning','anomaly.module.files::field.extension.instructions'),(24,24,'en','anomaly.module.files::field.width.name','anomaly.module.files::field.width.placeholder','anomaly.module.files::field.width.warning','anomaly.module.files::field.width.instructions'),(25,25,'en','anomaly.module.files::field.height.name','anomaly.module.files::field.height.placeholder','anomaly.module.files::field.height.warning','anomaly.module.files::field.height.instructions'),(26,26,'en','anomaly.module.files::field.mime_type.name','anomaly.module.files::field.mime_type.placeholder','anomaly.module.files::field.mime_type.warning','anomaly.module.files::field.mime_type.instructions'),(27,27,'en','anomaly.module.files::field.size.name','anomaly.module.files::field.size.placeholder','anomaly.module.files::field.size.warning','anomaly.module.files::field.size.instructions'),(28,28,'en','anomaly.module.navigation::field.name.name','anomaly.module.navigation::field.name.placeholder','anomaly.module.navigation::field.name.warning','anomaly.module.navigation::field.name.instructions'),(29,29,'en','anomaly.module.navigation::field.class.name','anomaly.module.navigation::field.class.placeholder','anomaly.module.navigation::field.class.warning','anomaly.module.navigation::field.class.instructions'),(30,30,'en','anomaly.module.navigation::field.description.name','anomaly.module.navigation::field.description.placeholder','anomaly.module.navigation::field.description.warning','anomaly.module.navigation::field.description.instructions'),(31,31,'en','anomaly.module.navigation::field.entry.name','anomaly.module.navigation::field.entry.placeholder','anomaly.module.navigation::field.entry.warning','anomaly.module.navigation::field.entry.instructions'),(32,32,'en','anomaly.module.navigation::field.slug.name','anomaly.module.navigation::field.slug.placeholder','anomaly.module.navigation::field.slug.warning','anomaly.module.navigation::field.slug.instructions'),(33,33,'en','anomaly.module.navigation::field.menu.name','anomaly.module.navigation::field.menu.placeholder','anomaly.module.navigation::field.menu.warning','anomaly.module.navigation::field.menu.instructions'),(34,34,'en','anomaly.module.navigation::field.parent.name','anomaly.module.navigation::field.parent.placeholder','anomaly.module.navigation::field.parent.warning','anomaly.module.navigation::field.parent.instructions'),(35,35,'en','anomaly.module.navigation::field.allowed_roles.name','anomaly.module.navigation::field.allowed_roles.placeholder','anomaly.module.navigation::field.allowed_roles.warning','anomaly.module.navigation::field.allowed_roles.instructions'),(36,36,'en','anomaly.module.navigation::field.type.name','anomaly.module.navigation::field.type.placeholder','anomaly.module.navigation::field.type.warning','anomaly.module.navigation::field.type.instructions'),(37,37,'en','anomaly.module.navigation::field.target.name','anomaly.module.navigation::field.target.placeholder','anomaly.module.navigation::field.target.warning','anomaly.module.navigation::field.target.instructions'),(38,38,'en','anomaly.module.pages::field.str_id.name','anomaly.module.pages::field.str_id.placeholder','anomaly.module.pages::field.str_id.warning','anomaly.module.pages::field.str_id.instructions'),(39,39,'en','anomaly.module.pages::field.title.name','anomaly.module.pages::field.title.placeholder','anomaly.module.pages::field.title.warning','anomaly.module.pages::field.title.instructions'),(40,40,'en','anomaly.module.pages::field.slug.name','anomaly.module.pages::field.slug.placeholder','anomaly.module.pages::field.slug.warning','anomaly.module.pages::field.slug.instructions'),(41,41,'en','anomaly.module.pages::field.content.name','anomaly.module.pages::field.content.placeholder','anomaly.module.pages::field.content.warning','anomaly.module.pages::field.content.instructions'),(42,42,'en','anomaly.module.pages::field.path.name','anomaly.module.pages::field.path.placeholder','anomaly.module.pages::field.path.warning','anomaly.module.pages::field.path.instructions'),(43,43,'en','anomaly.module.pages::field.enabled.name','anomaly.module.pages::field.enabled.placeholder','anomaly.module.pages::field.enabled.warning','anomaly.module.pages::field.enabled.instructions'),(44,44,'en','anomaly.module.pages::field.home.name','anomaly.module.pages::field.home.placeholder','anomaly.module.pages::field.home.warning','anomaly.module.pages::field.home.instructions'),(45,45,'en','anomaly.module.pages::field.meta_title.name','anomaly.module.pages::field.meta_title.placeholder','anomaly.module.pages::field.meta_title.warning','anomaly.module.pages::field.meta_title.instructions'),(46,46,'en','anomaly.module.pages::field.meta_description.name','anomaly.module.pages::field.meta_description.placeholder','anomaly.module.pages::field.meta_description.warning','anomaly.module.pages::field.meta_description.instructions'),(47,47,'en','anomaly.module.pages::field.meta_keywords.name','anomaly.module.pages::field.meta_keywords.placeholder','anomaly.module.pages::field.meta_keywords.warning','anomaly.module.pages::field.meta_keywords.instructions'),(48,48,'en','anomaly.module.pages::field.layout.name','anomaly.module.pages::field.layout.placeholder','anomaly.module.pages::field.layout.warning','anomaly.module.pages::field.layout.instructions'),(49,49,'en','anomaly.module.pages::field.allowed_roles.name','anomaly.module.pages::field.allowed_roles.placeholder','anomaly.module.pages::field.allowed_roles.warning','anomaly.module.pages::field.allowed_roles.instructions'),(50,50,'en','anomaly.module.pages::field.parent.name','anomaly.module.pages::field.parent.placeholder','anomaly.module.pages::field.parent.warning','anomaly.module.pages::field.parent.instructions'),(51,51,'en','anomaly.module.pages::field.theme_layout.name','anomaly.module.pages::field.theme_layout.placeholder','anomaly.module.pages::field.theme_layout.warning','anomaly.module.pages::field.theme_layout.instructions'),(52,52,'en','anomaly.module.pages::field.type.name','anomaly.module.pages::field.type.placeholder','anomaly.module.pages::field.type.warning','anomaly.module.pages::field.type.instructions'),(53,53,'en','anomaly.module.pages::field.handler.name','anomaly.module.pages::field.handler.placeholder','anomaly.module.pages::field.handler.warning','anomaly.module.pages::field.handler.instructions'),(54,54,'en','anomaly.module.pages::field.visible.name','anomaly.module.pages::field.visible.placeholder','anomaly.module.pages::field.visible.warning','anomaly.module.pages::field.visible.instructions'),(55,55,'en','anomaly.module.pages::field.exact.name','anomaly.module.pages::field.exact.placeholder','anomaly.module.pages::field.exact.warning','anomaly.module.pages::field.exact.instructions'),(56,56,'en','anomaly.module.pages::field.entry.name','anomaly.module.pages::field.entry.placeholder','anomaly.module.pages::field.entry.warning','anomaly.module.pages::field.entry.instructions'),(57,57,'en','anomaly.module.pages::field.name.name','anomaly.module.pages::field.name.placeholder','anomaly.module.pages::field.name.warning','anomaly.module.pages::field.name.instructions'),(58,58,'en','anomaly.module.pages::field.description.name','anomaly.module.pages::field.description.placeholder','anomaly.module.pages::field.description.warning','anomaly.module.pages::field.description.instructions'),(59,59,'en','anomaly.module.posts::field.str_id.name','anomaly.module.posts::field.str_id.placeholder','anomaly.module.posts::field.str_id.warning','anomaly.module.posts::field.str_id.instructions'),(60,60,'en','anomaly.module.posts::field.name.name','anomaly.module.posts::field.name.placeholder','anomaly.module.posts::field.name.warning','anomaly.module.posts::field.name.instructions'),(61,61,'en','anomaly.module.posts::field.title.name','anomaly.module.posts::field.title.placeholder','anomaly.module.posts::field.title.warning','anomaly.module.posts::field.title.instructions'),(62,62,'en','anomaly.module.posts::field.slug.name','anomaly.module.posts::field.slug.placeholder','anomaly.module.posts::field.slug.warning','anomaly.module.posts::field.slug.instructions'),(63,63,'en','anomaly.module.posts::field.content.name','anomaly.module.posts::field.content.placeholder','anomaly.module.posts::field.content.warning','anomaly.module.posts::field.content.instructions'),(64,64,'en','anomaly.module.posts::field.type.name','anomaly.module.posts::field.type.placeholder','anomaly.module.posts::field.type.warning','anomaly.module.posts::field.type.instructions'),(65,65,'en','anomaly.module.posts::field.tags.name','anomaly.module.posts::field.tags.placeholder','anomaly.module.posts::field.tags.warning','anomaly.module.posts::field.tags.instructions'),(66,66,'en','anomaly.module.posts::field.summary.name','anomaly.module.posts::field.summary.placeholder','anomaly.module.posts::field.summary.warning','anomaly.module.posts::field.summary.instructions'),(67,67,'en','anomaly.module.posts::field.description.name','anomaly.module.posts::field.description.placeholder','anomaly.module.posts::field.description.warning','anomaly.module.posts::field.description.instructions'),(68,68,'en','anomaly.module.posts::field.publish_at.name','anomaly.module.posts::field.publish_at.placeholder','anomaly.module.posts::field.publish_at.warning','anomaly.module.posts::field.publish_at.instructions'),(69,69,'en','anomaly.module.posts::field.entry.name','anomaly.module.posts::field.entry.placeholder','anomaly.module.posts::field.entry.warning','anomaly.module.posts::field.entry.instructions'),(70,70,'en','anomaly.module.posts::field.author.name','anomaly.module.posts::field.author.placeholder','anomaly.module.posts::field.author.warning','anomaly.module.posts::field.author.instructions'),(71,71,'en','anomaly.module.posts::field.layout.name','anomaly.module.posts::field.layout.placeholder','anomaly.module.posts::field.layout.warning','anomaly.module.posts::field.layout.instructions'),(72,72,'en','anomaly.module.posts::field.category.name','anomaly.module.posts::field.category.placeholder','anomaly.module.posts::field.category.warning','anomaly.module.posts::field.category.instructions'),(73,73,'en','anomaly.module.posts::field.enabled.name','anomaly.module.posts::field.enabled.placeholder','anomaly.module.posts::field.enabled.warning','anomaly.module.posts::field.enabled.instructions'),(74,74,'en','anomaly.module.posts::field.featured.name','anomaly.module.posts::field.featured.placeholder','anomaly.module.posts::field.featured.warning','anomaly.module.posts::field.featured.instructions'),(75,75,'en','anomaly.module.posts::field.meta_title.name','anomaly.module.posts::field.meta_title.placeholder','anomaly.module.posts::field.meta_title.warning','anomaly.module.posts::field.meta_title.instructions'),(76,76,'en','anomaly.module.posts::field.meta_description.name','anomaly.module.posts::field.meta_description.placeholder','anomaly.module.posts::field.meta_description.warning','anomaly.module.posts::field.meta_description.instructions'),(77,77,'en','anomaly.module.posts::field.meta_keywords.name','anomaly.module.posts::field.meta_keywords.placeholder','anomaly.module.posts::field.meta_keywords.warning','anomaly.module.posts::field.meta_keywords.instructions'),(78,78,'en','anomaly.module.posts::field.ttl.name','anomaly.module.posts::field.ttl.placeholder','anomaly.module.posts::field.ttl.warning','anomaly.module.posts::field.ttl.instructions'),(79,79,'en','anomaly.module.posts::field.theme_layout.name','anomaly.module.posts::field.theme_layout.placeholder','anomaly.module.posts::field.theme_layout.warning','anomaly.module.posts::field.theme_layout.instructions'),(80,80,'en','anomaly.module.preferences::field.user.name','anomaly.module.preferences::field.user.placeholder','anomaly.module.preferences::field.user.warning','anomaly.module.preferences::field.user.instructions'),(81,81,'en','anomaly.module.preferences::field.key.name','anomaly.module.preferences::field.key.placeholder','anomaly.module.preferences::field.key.warning','anomaly.module.preferences::field.key.instructions'),(82,82,'en','anomaly.module.preferences::field.value.name','anomaly.module.preferences::field.value.placeholder','anomaly.module.preferences::field.value.warning','anomaly.module.preferences::field.value.instructions'),(83,83,'en','anomaly.module.redirects::field.from.name','anomaly.module.redirects::field.from.placeholder','anomaly.module.redirects::field.from.warning','anomaly.module.redirects::field.from.instructions'),(84,84,'en','anomaly.module.redirects::field.to.name','anomaly.module.redirects::field.to.placeholder','anomaly.module.redirects::field.to.warning','anomaly.module.redirects::field.to.instructions'),(85,85,'en','anomaly.module.redirects::field.status.name','anomaly.module.redirects::field.status.placeholder','anomaly.module.redirects::field.status.warning','anomaly.module.redirects::field.status.instructions'),(86,86,'en','anomaly.module.redirects::field.secure.name','anomaly.module.redirects::field.secure.placeholder','anomaly.module.redirects::field.secure.warning','anomaly.module.redirects::field.secure.instructions'),(87,87,'en','anomaly.module.settings::field.key.name','anomaly.module.settings::field.key.placeholder','anomaly.module.settings::field.key.warning','anomaly.module.settings::field.key.instructions'),(88,88,'en','anomaly.module.settings::field.value.name','anomaly.module.settings::field.value.placeholder','anomaly.module.settings::field.value.warning','anomaly.module.settings::field.value.instructions'),(89,89,'en','anomaly.module.users::field.email.name','anomaly.module.users::field.email.placeholder','anomaly.module.users::field.email.warning','anomaly.module.users::field.email.instructions'),(90,90,'en','anomaly.module.users::field.username.name','anomaly.module.users::field.username.placeholder','anomaly.module.users::field.username.warning','anomaly.module.users::field.username.instructions'),(91,91,'en','anomaly.module.users::field.password.name','anomaly.module.users::field.password.placeholder','anomaly.module.users::field.password.warning','anomaly.module.users::field.password.instructions'),(92,92,'en','anomaly.module.users::field.remember_token.name','anomaly.module.users::field.remember_token.placeholder','anomaly.module.users::field.remember_token.warning','anomaly.module.users::field.remember_token.instructions'),(93,93,'en','anomaly.module.users::field.ip_address.name','anomaly.module.users::field.ip_address.placeholder','anomaly.module.users::field.ip_address.warning','anomaly.module.users::field.ip_address.instructions'),(94,94,'en','anomaly.module.users::field.last_login_at.name','anomaly.module.users::field.last_login_at.placeholder','anomaly.module.users::field.last_login_at.warning','anomaly.module.users::field.last_login_at.instructions'),(95,95,'en','anomaly.module.users::field.last_activity_at.name','anomaly.module.users::field.last_activity_at.placeholder','anomaly.module.users::field.last_activity_at.warning','anomaly.module.users::field.last_activity_at.instructions'),(96,96,'en','anomaly.module.users::field.permissions.name','anomaly.module.users::field.permissions.placeholder','anomaly.module.users::field.permissions.warning','anomaly.module.users::field.permissions.instructions'),(97,97,'en','anomaly.module.users::field.display_name.name','anomaly.module.users::field.display_name.placeholder','anomaly.module.users::field.display_name.warning','anomaly.module.users::field.display_name.instructions'),(98,98,'en','anomaly.module.users::field.first_name.name','anomaly.module.users::field.first_name.placeholder','anomaly.module.users::field.first_name.warning','anomaly.module.users::field.first_name.instructions'),(99,99,'en','anomaly.module.users::field.last_name.name','anomaly.module.users::field.last_name.placeholder','anomaly.module.users::field.last_name.warning','anomaly.module.users::field.last_name.instructions'),(100,100,'en','anomaly.module.users::field.name.name','anomaly.module.users::field.name.placeholder','anomaly.module.users::field.name.warning','anomaly.module.users::field.name.instructions'),(101,101,'en','anomaly.module.users::field.description.name','anomaly.module.users::field.description.placeholder','anomaly.module.users::field.description.warning','anomaly.module.users::field.description.instructions'),(102,102,'en','anomaly.module.users::field.reset_code.name','anomaly.module.users::field.reset_code.placeholder','anomaly.module.users::field.reset_code.warning','anomaly.module.users::field.reset_code.instructions'),(103,103,'en','anomaly.module.users::field.reset_code_expires_at.name','anomaly.module.users::field.reset_code_expires_at.placeholder','anomaly.module.users::field.reset_code_expires_at.warning','anomaly.module.users::field.reset_code_expires_at.instructions'),(104,104,'en','anomaly.module.users::field.activation_code.name','anomaly.module.users::field.activation_code.placeholder','anomaly.module.users::field.activation_code.warning','anomaly.module.users::field.activation_code.instructions'),(105,105,'en','anomaly.module.users::field.activation_code_expires_at.name','anomaly.module.users::field.activation_code_expires_at.placeholder','anomaly.module.users::field.activation_code_expires_at.warning','anomaly.module.users::field.activation_code_expires_at.instructions'),(106,106,'en','anomaly.module.users::field.activated.name','anomaly.module.users::field.activated.placeholder','anomaly.module.users::field.activated.warning','anomaly.module.users::field.activated.instructions'),(107,107,'en','anomaly.module.users::field.enabled.name','anomaly.module.users::field.enabled.placeholder','anomaly.module.users::field.enabled.warning','anomaly.module.users::field.enabled.instructions'),(108,108,'en','anomaly.module.users::field.slug.name','anomaly.module.users::field.slug.placeholder','anomaly.module.users::field.slug.warning','anomaly.module.users::field.slug.instructions'),(109,109,'en','anomaly.module.users::field.roles.name','anomaly.module.users::field.roles.placeholder','anomaly.module.users::field.roles.warning','anomaly.module.users::field.roles.instructions'),(110,110,'en','anomaly.extension.page_link_type::field.title.name','anomaly.extension.page_link_type::field.title.placeholder','anomaly.extension.page_link_type::field.title.warning','anomaly.extension.page_link_type::field.title.instructions'),(111,111,'en','anomaly.extension.page_link_type::field.page.name','anomaly.extension.page_link_type::field.page.placeholder','anomaly.extension.page_link_type::field.page.warning','anomaly.extension.page_link_type::field.page.instructions'),(112,112,'en','anomaly.extension.page_link_type::field.description.name','anomaly.extension.page_link_type::field.description.placeholder','anomaly.extension.page_link_type::field.description.warning','anomaly.extension.page_link_type::field.description.instructions'),(113,113,'en','anomaly.extension.url_link_type::field.title.name','anomaly.extension.url_link_type::field.title.placeholder','anomaly.extension.url_link_type::field.title.warning','anomaly.extension.url_link_type::field.title.instructions'),(114,114,'en','anomaly.extension.url_link_type::field.url.name','anomaly.extension.url_link_type::field.url.placeholder','anomaly.extension.url_link_type::field.url.warning','anomaly.extension.url_link_type::field.url.instructions'),(115,115,'en','anomaly.extension.url_link_type::field.description.name','anomaly.extension.url_link_type::field.description.placeholder','anomaly.extension.url_link_type::field.description.warning','anomaly.extension.url_link_type::field.description.instructions'),(116,116,'en','Slogan (Line 1)',NULL,NULL,'This will be displayed in a smaller, italic heading font on the home page.'),(117,117,'en','Slogan (Line 2)',NULL,NULL,NULL),(118,118,'en','About Us (Left Column)',NULL,NULL,NULL),(119,119,'en','About Us (Center Column)',NULL,NULL,NULL),(120,120,'en','About Us (Right Column)',NULL,NULL,NULL),(121,121,'en','Banner Image',NULL,NULL,NULL),(122,122,'en','URL',NULL,NULL,NULL),(123,123,'en','Link Description',NULL,NULL,NULL),(126,126,'en','Menu',NULL,NULL,'Choose which list of links to display (edit the links in the Navigation section)'),(127,127,'en','Menus',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_streams`
--

LOCK TABLES `src_streams_streams` WRITE;
/*!40000 ALTER TABLE `src_streams_streams` DISABLE KEYS */;
INSERT INTO `src_streams_streams` VALUES (1,'configuration','configuration','configuration_','id','id',1,0,0,0,0,0,'a:0:{}'),(2,'dashboard','dashboards','dashboard_','name','id',0,0,1,0,0,1,'a:0:{}'),(3,'dashboard','widgets','dashboard_','title','id',0,0,1,0,0,1,'a:0:{}'),(4,'files','disks','files_','name','id',0,0,1,0,0,1,'a:0:{}'),(5,'files','folders','files_','name','id',0,0,1,0,1,1,'a:0:{}'),(6,'files','files','files_','name','id',0,0,0,1,1,0,'a:0:{}'),(7,'navigation','menus','navigation_','name','id',0,0,0,0,1,1,'a:0:{}'),(8,'navigation','links','navigation_','id','id',0,0,1,0,1,0,'a:0:{}'),(9,'pages','pages','pages_','title','id',0,0,1,1,1,1,'a:0:{}'),(10,'pages','types','pages_','name','id',0,0,1,0,1,1,'a:0:{}'),(11,'posts','categories','posts_','name','id',0,0,1,0,1,1,'a:0:{}'),(12,'posts','posts','posts_','title','id',0,0,0,1,1,1,'a:0:{}'),(13,'posts','types','posts_','name','id',0,0,1,0,1,1,'a:0:{}'),(14,'preferences','preferences','preferences_','id','id',0,0,0,0,0,0,'a:0:{}'),(15,'redirects','redirects','redirects_','from','id',0,0,1,0,1,0,'a:0:{}'),(16,'settings','settings','settings_','id','id',0,0,0,0,0,0,'a:0:{}'),(17,'users','users','users_','display_name','id',0,0,0,1,1,0,'a:0:{}'),(18,'users','roles','users_','name','id',0,0,0,0,1,1,'a:0:{}'),(19,'page_link_type','pages','page_link_type_','title','id',0,0,0,0,0,1,'a:0:{}'),(20,'url_link_type','urls','url_link_type_','title','id',0,0,0,0,0,1,'a:0:{}'),(21,'files','images','files_','id','id',0,0,0,0,1,1,'a:0:{}'),(22,'files','documents','files_','id','id',0,0,0,0,1,1,'a:0:{}'),(23,'pages','default_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(24,'posts','default_posts','posts_','id','id',0,1,0,0,1,1,'a:0:{}'),(25,'pages','blog_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(26,'pages','home_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}'),(27,'posts','link_posts','posts_','id','id',0,1,0,0,1,1,'a:0:{}'),(28,'pages','link_list_pages','pages_','id','id',0,1,0,0,1,1,'a:0:{}');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_streams_streams_translations`
--

LOCK TABLES `src_streams_streams_translations` WRITE;
/*!40000 ALTER TABLE `src_streams_streams_translations` DISABLE KEYS */;
INSERT INTO `src_streams_streams_translations` VALUES (1,1,'en','anomaly.module.configuration::stream.configuration.name','anomaly.module.configuration::stream.configuration.description'),(2,2,'en','anomaly.module.dashboard::stream.dashboards.name','anomaly.module.dashboard::stream.dashboards.description'),(3,3,'en','anomaly.module.dashboard::stream.widgets.name','anomaly.module.dashboard::stream.widgets.description'),(4,4,'en','anomaly.module.files::stream.disks.name','anomaly.module.files::stream.disks.description'),(5,5,'en','anomaly.module.files::stream.folders.name','anomaly.module.files::stream.folders.description'),(6,6,'en','anomaly.module.files::stream.files.name','anomaly.module.files::stream.files.description'),(7,7,'en','anomaly.module.navigation::stream.menus.name','anomaly.module.navigation::stream.menus.description'),(8,8,'en','anomaly.module.navigation::stream.links.name','anomaly.module.navigation::stream.links.description'),(9,9,'en','anomaly.module.pages::stream.pages.name','anomaly.module.pages::stream.pages.description'),(10,10,'en','anomaly.module.pages::stream.types.name','anomaly.module.pages::stream.types.description'),(11,11,'en','anomaly.module.posts::stream.categories.name','anomaly.module.posts::stream.categories.description'),(12,12,'en','anomaly.module.posts::stream.posts.name','anomaly.module.posts::stream.posts.description'),(13,13,'en','anomaly.module.posts::stream.types.name','anomaly.module.posts::stream.types.description'),(14,14,'en','anomaly.module.preferences::stream.preferences.name','anomaly.module.preferences::stream.preferences.description'),(15,15,'en','anomaly.module.redirects::stream.redirects.name','anomaly.module.redirects::stream.redirects.description'),(16,16,'en','anomaly.module.settings::stream.settings.name','anomaly.module.settings::stream.settings.description'),(17,17,'en','anomaly.module.users::stream.users.name','anomaly.module.users::stream.users.description'),(18,18,'en','anomaly.module.users::stream.roles.name','anomaly.module.users::stream.roles.description'),(19,19,'en','anomaly.extension.page_link_type::stream.pages.name','anomaly.extension.page_link_type::stream.pages.description'),(20,20,'en','anomaly.extension.url_link_type::stream.urls.name','anomaly.extension.url_link_type::stream.urls.description'),(21,21,'en','Images','A folder for images.'),(22,22,'en','Documents','A folder for documents.'),(23,23,'en','Default','A simple page type.'),(24,24,'en','Default',NULL),(25,25,'en','Blog',NULL),(26,26,'en','Home',NULL),(27,27,'en','Link',NULL),(28,28,'en','Link List',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_url_link_type_urls`
--

LOCK TABLES `src_url_link_type_urls` WRITE;
/*!40000 ALTER TABLE `src_url_link_type_urls` DISABLE KEYS */;
INSERT INTO `src_url_link_type_urls` VALUES (1,1,'2016-11-22 20:17:00',NULL,NULL,NULL,'http://pyrocms.com/'),(2,2,'2016-11-22 20:17:00',NULL,NULL,NULL,'http://pyrocms.com/documentation'),(3,3,'2016-12-07 09:22:35',1,NULL,NULL,'http://staffing.natrap.com'),(4,4,'2016-12-07 09:23:43',1,NULL,NULL,'http://www.nifc.gov/nicc/sitreprt.pdf'),(5,5,'2016-12-09 07:02:18',1,NULL,NULL,'www.siskiyourappellers.com/raprec'),(6,6,'2016-12-09 07:02:50',1,NULL,NULL,'https://apps.fs.usda.gov/cfo/ibs/aviation'),(7,7,'2016-12-09 07:03:29',1,NULL,NULL,'https://access.usbank.com/cpsApp1/index.jsp'),(8,8,'2016-12-09 07:04:12',1,NULL,NULL,'https://cod.nfc.usda.gov/Documents/docs/boc.pdf'),(9,9,'2016-12-09 07:04:40',1,NULL,NULL,'http://amd.nbc.gov/'),(10,10,'2016-12-09 07:05:08',1,NULL,NULL,'http://ross.nwcg.gov/'),(11,11,'2016-12-09 07:06:06',1,NULL,NULL,'http://www.fs.fed.us/fire/management/ifpm/'),(12,12,'2016-12-09 07:12:37',1,NULL,NULL,'http://www.siskiyourappellers.com/max_weather.php'),(13,13,'2016-12-09 07:12:57',1,NULL,NULL,'http://gacc.nifc.gov/nwcc/content/products/fwx/guidance/DL.pdf'),(14,14,'2016-12-09 07:13:41',1,NULL,NULL,'http://orrvc.org/intel/intelreport.shtml');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_url_link_type_urls_translations`
--

LOCK TABLES `src_url_link_type_urls_translations` WRITE;
/*!40000 ALTER TABLE `src_url_link_type_urls_translations` DISABLE KEYS */;
INSERT INTO `src_url_link_type_urls_translations` VALUES (1,1,'2016-11-22 20:17:00',NULL,'2016-11-22 20:17:00',NULL,'en','PyroCMS.com',NULL),(2,2,'2016-11-22 20:17:00',NULL,'2016-11-22 20:17:00',NULL,'en','Documentation',NULL),(3,3,'2016-12-07 09:22:35',NULL,'2016-12-07 09:22:35',1,'en','Rappel Staffing Report','View & update the status of national rappel resources.'),(4,4,'2016-12-07 09:23:43',NULL,'2016-12-07 09:23:43',1,'en','SIT Report','The daily situation report.'),(5,5,'2016-12-09 07:02:18',NULL,'2016-12-09 07:02:18',1,'en','RapRec Central','Rappel experience and equipment-use records.'),(6,6,'2016-12-09 07:02:50',NULL,'2016-12-09 07:02:50',1,'en','ABS','Aviation Business System'),(7,7,'2016-12-09 07:03:29',NULL,'2016-12-09 07:03:29',1,'en','US Bank Government Accounts','Online banking for your federal purchase card'),(8,8,'2016-12-09 07:04:12',NULL,'2016-12-09 07:04:12',1,'en','BOC Codes','Budget Object Classification Codes.  Reconcile your purchases correctly for once!'),(9,9,'2016-12-09 07:04:40',NULL,'2016-12-09 07:04:40',1,'en','AMD','Aviation Management Directorate'),(10,10,'2016-12-09 07:05:08',NULL,'2016-12-09 07:05:08',1,'en','ROSS','Resource Ordering and Status System'),(11,11,'2016-12-09 07:06:06',NULL,'2016-12-09 07:06:06',1,'en','FS-FPM/IFPM Requirements','Minimum qualifications for fire program management positions.'),(12,12,'2016-12-09 07:12:37',NULL,'2016-12-09 07:12:37',1,'en','Weather','Consolidated NOAA weather forecast for zones 609, 610, 611, 630, 631'),(13,13,'2016-12-09 07:12:57',NULL,'2016-12-09 07:12:57',1,'en','7-Day Significant Fire Potential',NULL),(14,14,'2016-12-09 07:13:41',NULL,'2016-12-09 07:13:41',1,'en','Local Resources','Current staffing levels on the Rogue River - Siskiyou National Forest');
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
INSERT INTO `src_users_roles` VALUES (1,1,'2016-11-23 03:17:10',NULL,NULL,NULL,NULL,'admin',NULL),(2,2,'2016-11-23 03:17:10',NULL,NULL,NULL,NULL,'user',NULL),(3,3,'2016-11-23 03:17:10',NULL,NULL,NULL,NULL,'guest',NULL),(4,4,'2016-12-05 04:00:50',1,NULL,NULL,NULL,'content_manager',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `src_users_users`
--

LOCK TABLES `src_users_users` WRITE;
/*!40000 ALTER TABLE `src_users_users` DISABLE KEYS */;
INSERT INTO `src_users_users` VALUES (1,1,'2016-11-23 03:17:11',NULL,'2016-12-09 05:37:20',1,NULL,'evanhsu@gmail.com','admin','$2y$10$smYCO1KLXNcAHrqIqKpH6.OW6fDfPIpq5nSfEyCYOQXpQBz5LdOzi','Administrator',NULL,NULL,1,1,NULL,'2016-12-09 05:37:20','iBsbkfuRKGkMeN03lHVL4Pn5hSnBa7WU1JO56BgsFBZi6C2Ei8VfzSVvIjBc',NULL,NULL,'2016-12-05 04:04:09','192.168.33.1'),(2,2,'2016-11-23 03:17:11',NULL,'2016-11-23 03:17:11',NULL,NULL,'demo@pyrocms.com','demo','$2y$10$L.IDrYuHmVdlh3sKmnascOuvTDA6QdYrt7tXNEk9Z0b/Ft4gR.mI2','Demo User',NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'2016-12-05 04:01:49',1,'2016-12-05 04:04:40',3,NULL,'tmlyda@fs.fed.us','timlyda','$2y$10$DcPCrGTtS8Hmg6VajnuvHednXWv0J79TpSoRo7QV6x0HCrbe.XJ/K','Tim Lyda','Tim','Lyda',1,1,'a:8:{i:17;s:32:\"anomaly.module.posts::posts.read\";i:18;s:33:\"anomaly.module.posts::posts.write\";i:19;s:34:\"anomaly.module.posts::posts.delete\";i:23;s:32:\"anomaly.module.users::users.read\";i:24;s:33:\"anomaly.module.users::users.write\";i:25;s:34:\"anomaly.module.users::users.delete\";i:32;s:32:\"anomaly.module.pages::pages.read\";i:33;s:33:\"anomaly.module.pages::pages.write\";}','2016-12-05 04:04:21','Oos4hZfm8mc1OYb1ORLi6JoMuKoYK2QJezCzs0KB6cKDFQIhoGNVJIZFawuL',NULL,NULL,'2016-12-05 04:04:40','192.168.33.1');
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
INSERT INTO `src_users_users_roles` VALUES (1,1,NULL),(2,2,NULL),(3,4,0);
/*!40000 ALTER TABLE `src_users_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-09  7:34:06
