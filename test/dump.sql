-- MySQL dump 10.15  Distrib 10.0.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cv
-- ------------------------------------------------------
-- Server version	10.0.13-MariaDB

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
-- Table structure for table `cv_commentmeta`
--

DROP TABLE IF EXISTS `cv_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_commentmeta`
--

LOCK TABLES `cv_commentmeta` WRITE;
/*!40000 ALTER TABLE `cv_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cv_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_comments`
--

DROP TABLE IF EXISTS `cv_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_comments`
--

LOCK TABLES `cv_comments` WRITE;
/*!40000 ALTER TABLE `cv_comments` DISABLE KEYS */;
INSERT INTO `cv_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2015-05-02 14:41:59','2015-05-02 14:41:59','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `cv_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_links`
--

DROP TABLE IF EXISTS `cv_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_links`
--

LOCK TABLES `cv_links` WRITE;
/*!40000 ALTER TABLE `cv_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cv_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_options`
--

DROP TABLE IF EXISTS `cv_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_options`
--

LOCK TABLES `cv_options` WRITE;
/*!40000 ALTER TABLE `cv_options` DISABLE KEYS */;
INSERT INTO `cv_options` VALUES (1,'siteurl','http://source.test','yes'),(2,'home','http://source.test','yes'),(3,'blogname','CV','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','misterjaaay@gmail.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','1','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'gzipcompression','0','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'advanced_edit','0','yes'),(37,'comment_max_links','2','yes'),(38,'gmt_offset','0','yes'),(39,'default_email_category','1','yes'),(40,'recently_edited','','no'),(41,'template','bootstrap-canvas-wp','yes'),(42,'stylesheet','bootstrap-canvas-wp','yes'),(43,'comment_whitelist','1','yes'),(44,'blacklist_keys','','no'),(45,'comment_registration','0','yes'),(46,'html_type','text/html','yes'),(47,'use_trackback','0','yes'),(48,'default_role','subscriber','yes'),(49,'db_version','31533','yes'),(50,'uploads_use_yearmonth_folders','1','yes'),(51,'upload_path','','yes'),(52,'blog_public','0','yes'),(53,'default_link_category','2','yes'),(54,'show_on_front','page','yes'),(55,'tag_base','','yes'),(56,'show_avatars','1','yes'),(57,'avatar_rating','G','yes'),(58,'upload_url_path','','yes'),(59,'thumbnail_size_w','150','yes'),(60,'thumbnail_size_h','150','yes'),(61,'thumbnail_crop','1','yes'),(62,'medium_size_w','300','yes'),(63,'medium_size_h','300','yes'),(64,'avatar_default','mystery','yes'),(65,'large_size_w','1024','yes'),(66,'large_size_h','1024','yes'),(67,'image_default_link_type','file','yes'),(68,'image_default_size','','yes'),(69,'image_default_align','','yes'),(70,'close_comments_for_old_posts','0','yes'),(71,'close_comments_days_old','14','yes'),(72,'thread_comments','1','yes'),(73,'thread_comments_depth','5','yes'),(74,'page_comments','0','yes'),(75,'comments_per_page','50','yes'),(76,'default_comments_page','newest','yes'),(77,'comment_order','asc','yes'),(78,'sticky_posts','a:0:{}','yes'),(79,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_text','a:0:{}','yes'),(81,'widget_rss','a:0:{}','yes'),(82,'uninstall_plugins','a:0:{}','no'),(83,'timezone_string','','yes'),(84,'page_for_posts','0','yes'),(85,'page_on_front','5','yes'),(86,'default_post_format','0','yes'),(87,'link_manager_enabled','0','yes'),(88,'initial_db_version','31533','yes'),(89,'cv_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(90,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(91,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(92,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(93,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(95,'sidebars_widgets','a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:24:\"first-footer-widget-area\";N;s:25:\"second-footer-widget-area\";N;s:24:\"third-footer-widget-area\";N;s:25:\"fourth-footer-widget-area\";N;s:13:\"array_version\";i:3;}','yes'),(98,'cron','a:6:{i:1430695547;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1430707320;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1430723400;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1430750829;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1430752316;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(102,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.2.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-4.2.1.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.2.1\";s:7:\"version\";s:5:\"4.2.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1430691947;s:15:\"version_checked\";s:5:\"4.2.1\";s:12:\"translations\";a:0:{}}','yes'),(104,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1430691949;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"3564\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";}}}','yes'),(107,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1430691949;s:7:\"checked\";a:5:{s:19:\"bootstrap-canvas-wp\";s:4:\"1.92\";s:9:\"sky_theme\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"1.1\";s:14:\"twentyfourteen\";s:3:\"1.4\";s:14:\"twentythirteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),(108,'_transient_random_seed','c293a2728514f0418965e0443b45b2c2','yes'),(109,'_site_transient_timeout_browser_9d08bde512457e99780f33c647af54b4','1431182830','yes'),(110,'_site_transient_browser_9d08bde512457e99780f33c647af54b4','a:9:{s:8:\"platform\";s:5:\"Linux\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"42.0.2311.90\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes'),(113,'can_compress_scripts','1','yes'),(114,'_transient_timeout_plugin_slugs','1430685284','no'),(115,'_transient_plugin_slugs','a:1:{i:0;s:9:\"hello.php\";}','no'),(116,'_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51','1430621234','no'),(117,'_transient_dash_4077549d03da2e451c8b5f002294ff51','<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class=\"rss-widget\"><ul></ul></div>','no'),(118,'theme_mods_twentyfifteen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1430578041;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(119,'current_theme','Bootstrap Canvas WP','yes'),(120,'theme_mods_CV','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1430597508;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(121,'theme_switched','','yes'),(124,'_site_transient_timeout_available_translations','1430589391','yes'),(125,'_site_transient_available_translations','a:55:{s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 23:59:50\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-29 15:34:06\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-25 18:55:51\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-27 03:15:54\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-28 10:52:03\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-25 13:39:01\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-24 16:03:38\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-28 16:15:15\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-04 19:47:01\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-24 12:47:01\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-29 17:08:38\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:3:\"4.0\";s:7:\"updated\";s:19:\"2014-09-05 17:37:43\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/translation/core/4.0/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2015-03-26 15:20:27\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.1.3/haz.zip\";s:3:\"iso\";a:1:{i:2;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-26 14:13:46\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 21:33:36\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-28 13:45:52\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 23:18:50\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 22:23:52\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:7:\"Burmese\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.1.3/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-27 20:16:30\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-28 10:26:32\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-27 15:16:58\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.1.3/ps.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ps\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-27 14:23:25\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-27 09:25:14\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2015-03-26 16:25:46\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.1.3/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-26 11:34:28\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 16:55:54\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:09\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-29 07:03:07\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.1.3\";s:7:\"updated\";s:19:\"2015-03-26 16:45:38\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.1.3/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-28 16:44:31\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.2.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-23 15:23:08\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.2.1\";s:7:\"updated\";s:19:\"2015-04-29 06:37:03\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.2.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}','yes'),(146,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}','yes'),(170,'_site_transient_timeout_wporg_theme_feature_list','1430608175','yes'),(171,'_site_transient_wporg_theme_feature_list','a:4:{s:6:\"Colors\";a:15:{i:0;s:5:\"black\";i:1;s:4:\"blue\";i:2;s:5:\"brown\";i:3;s:4:\"gray\";i:4;s:5:\"green\";i:5;s:6:\"orange\";i:6;s:4:\"pink\";i:7;s:6:\"purple\";i:8;s:3:\"red\";i:9;s:6:\"silver\";i:10;s:3:\"tan\";i:11;s:5:\"white\";i:12;s:6:\"yellow\";i:13;s:4:\"dark\";i:14;s:5:\"light\";}s:6:\"Layout\";a:9:{i:0;s:12:\"fixed-layout\";i:1;s:12:\"fluid-layout\";i:2;s:17:\"responsive-layout\";i:3;s:10:\"one-column\";i:4;s:11:\"two-columns\";i:5;s:13:\"three-columns\";i:6;s:12:\"four-columns\";i:7;s:12:\"left-sidebar\";i:8;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:8:\"blavatar\";i:2;s:10:\"buddypress\";i:3;s:17:\"custom-background\";i:4;s:13:\"custom-colors\";i:5;s:13:\"custom-header\";i:6;s:11:\"custom-menu\";i:7;s:12:\"editor-style\";i:8;s:21:\"featured-image-header\";i:9;s:15:\"featured-images\";i:10;s:15:\"flexible-header\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:3:{i:0;s:7:\"holiday\";i:1;s:13:\"photoblogging\";i:2;s:8:\"seasonal\";}}','yes'),(172,'theme_mods_bootstrap-canvas-wp','a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}','yes'),(175,'recently_activated','a:0:{}','yes'),(238,'_site_transient_timeout_theme_roots','1430693748','yes'),(239,'_site_transient_theme_roots','a:5:{s:19:\"bootstrap-canvas-wp\";s:7:\"/themes\";s:9:\"sky_theme\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentyfourteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}','yes');
/*!40000 ALTER TABLE `cv_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_postmeta`
--

DROP TABLE IF EXISTS `cv_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_postmeta`
--

LOCK TABLES `cv_postmeta` WRITE;
/*!40000 ALTER TABLE `cv_postmeta` DISABLE KEYS */;
INSERT INTO `cv_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,2,'_edit_lock','1430594374:1'),(3,5,'_edit_last','1'),(4,5,'_edit_lock','1430599455:1'),(5,5,'_wp_page_template','front-page.php'),(6,8,'_edit_last','1'),(7,8,'_edit_lock','1430599463:1'),(8,8,'_wp_page_template','contact-me.php'),(36,13,'_edit_last','1'),(37,13,'_wp_page_template','employment.php'),(46,13,'_edit_lock','1430603391:1'),(74,19,'_menu_item_type','post_type'),(75,19,'_menu_item_menu_item_parent','0'),(76,19,'_menu_item_object_id','5'),(77,19,'_menu_item_object','page'),(78,19,'_menu_item_target',''),(79,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(80,19,'_menu_item_xfn',''),(81,19,'_menu_item_url',''),(82,19,'_menu_item_orphaned','1430597534'),(83,20,'_menu_item_type','post_type'),(84,20,'_menu_item_menu_item_parent','0'),(85,20,'_menu_item_object_id','5'),(86,20,'_menu_item_object','page'),(87,20,'_menu_item_target',''),(88,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(89,20,'_menu_item_xfn',''),(90,20,'_menu_item_url',''),(91,20,'_menu_item_orphaned','1430597534'),(92,21,'_menu_item_type','post_type'),(93,21,'_menu_item_menu_item_parent','0'),(94,21,'_menu_item_object_id','8'),(95,21,'_menu_item_object','page'),(96,21,'_menu_item_target',''),(97,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(98,21,'_menu_item_xfn',''),(99,21,'_menu_item_url',''),(100,21,'_menu_item_orphaned','1430597535'),(101,22,'_menu_item_type','post_type'),(102,22,'_menu_item_menu_item_parent','0'),(103,22,'_menu_item_object_id','13'),(104,22,'_menu_item_object','page'),(105,22,'_menu_item_target',''),(106,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(107,22,'_menu_item_xfn',''),(108,22,'_menu_item_url',''),(109,22,'_menu_item_orphaned','1430597536'),(110,23,'_menu_item_type','post_type'),(111,24,'_menu_item_type','post_type'),(112,23,'_menu_item_menu_item_parent','0'),(113,24,'_menu_item_menu_item_parent','0'),(114,23,'_menu_item_object_id','5'),(115,24,'_menu_item_object_id','2'),(116,23,'_menu_item_object','page'),(117,24,'_menu_item_object','page'),(118,23,'_menu_item_target',''),(119,24,'_menu_item_target',''),(120,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(121,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(122,23,'_menu_item_xfn',''),(123,24,'_menu_item_xfn',''),(124,23,'_menu_item_url',''),(125,24,'_menu_item_url',''),(127,24,'_menu_item_orphaned','1430597537'),(128,25,'_menu_item_type','post_type'),(129,25,'_menu_item_menu_item_parent','0'),(130,25,'_menu_item_object_id','5'),(131,25,'_menu_item_object','page'),(132,25,'_menu_item_target',''),(133,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(134,25,'_menu_item_xfn',''),(135,25,'_menu_item_url',''),(136,25,'_menu_item_orphaned','1430597538'),(137,26,'_menu_item_type','post_type'),(138,26,'_menu_item_menu_item_parent','0'),(139,26,'_menu_item_object_id','8'),(140,26,'_menu_item_object','page'),(141,26,'_menu_item_target',''),(142,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(143,26,'_menu_item_xfn',''),(144,26,'_menu_item_url',''),(146,27,'_menu_item_type','post_type'),(147,27,'_menu_item_menu_item_parent','0'),(148,27,'_menu_item_object_id','13'),(149,27,'_menu_item_object','page'),(150,27,'_menu_item_target',''),(151,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(152,27,'_menu_item_xfn',''),(153,27,'_menu_item_url',''),(164,30,'_edit_last','1'),(165,30,'_edit_lock','1430603420:1'),(166,30,'_wp_page_template','my-hobby.php'),(167,31,'_menu_item_type','post_type'),(168,31,'_menu_item_menu_item_parent','0'),(169,31,'_menu_item_object_id','30'),(170,31,'_menu_item_object','page'),(171,31,'_menu_item_target',''),(172,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(173,31,'_menu_item_xfn',''),(174,31,'_menu_item_url','');
/*!40000 ALTER TABLE `cv_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_posts`
--

DROP TABLE IF EXISTS `cv_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_posts`
--

LOCK TABLES `cv_posts` WRITE;
/*!40000 ALTER TABLE `cv_posts` DISABLE KEYS */;
INSERT INTO `cv_posts` VALUES (1,1,'2015-05-02 14:41:59','2015-05-02 14:41:59','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2015-05-02 14:41:59','2015-05-02 14:41:59','',0,'http://source.test/?p=1',0,'post','',1),(2,1,'2015-05-02 14:41:59','2015-05-02 14:41:59','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://source.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2015-05-02 14:41:59','2015-05-02 14:41:59','',0,'http://source.test/?page_id=2',0,'page','',0),(3,1,'2015-05-02 14:47:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2015-05-02 14:47:10','0000-00-00 00:00:00','',0,'http://source.test/?p=3',0,'post','',0),(4,1,'2015-05-02 15:11:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2015-05-02 15:11:56','0000-00-00 00:00:00','',0,'http://source.test/?page_id=4',0,'page','',0),(5,1,'2015-05-02 15:52:07','2015-05-02 15:52:07','','About','','publish','open','open','','employment','','','2015-05-02 20:20:47','2015-05-02 20:20:47','',0,'http://source.test/?page_id=5',0,'page','',0),(6,1,'2015-05-02 15:52:07','2015-05-02 15:52:07','','Employment','','inherit','open','open','','5-revision-v1','','','2015-05-02 15:52:07','2015-05-02 15:52:07','',5,'http://source.test/5-revision-v1/',0,'revision','',0),(7,1,'2015-05-02 15:56:07','2015-05-02 15:56:07','','About','','inherit','open','open','','5-revision-v1','','','2015-05-02 15:56:07','2015-05-02 15:56:07','',5,'http://source.test/5-revision-v1/',0,'revision','',0),(8,1,'2015-05-02 16:05:52','2015-05-02 16:05:52','','Contact Me','','publish','open','open','','contact-me','','','2015-05-02 20:46:46','2015-05-02 20:46:46','',0,'http://source.test/?page_id=8',0,'page','',0),(9,1,'2015-05-02 16:05:52','2015-05-02 16:05:52','','Contact Me','','inherit','open','open','','8-revision-v1','','','2015-05-02 16:05:52','2015-05-02 16:05:52','',8,'http://source.test/8-revision-v1/',0,'revision','',0),(13,1,'2015-05-02 18:40:38','2015-05-02 18:40:38','','Employment','','publish','open','open','','employment-2','','','2015-05-02 21:01:37','2015-05-02 21:01:37','',0,'http://source.test/?page_id=13',0,'page','',0),(15,1,'2015-05-02 18:40:38','2015-05-02 18:40:38','','Employment','','inherit','open','open','','13-revision-v1','','','2015-05-02 18:40:38','2015-05-02 18:40:38','',13,'http://source.test/13-revision-v1/',0,'revision','',0),(19,1,'2015-05-02 20:12:13','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2015-05-02 20:12:13','0000-00-00 00:00:00','',0,'http://source.test/?p=19',1,'nav_menu_item','',0),(20,1,'2015-05-02 20:12:14','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2015-05-02 20:12:14','0000-00-00 00:00:00','',0,'http://source.test/?p=20',1,'nav_menu_item','',0),(21,1,'2015-05-02 20:12:14','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2015-05-02 20:12:14','0000-00-00 00:00:00','',0,'http://source.test/?p=21',1,'nav_menu_item','',0),(22,1,'2015-05-02 20:12:15','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2015-05-02 20:12:15','0000-00-00 00:00:00','',0,'http://source.test/?p=22',1,'nav_menu_item','',0),(23,1,'2015-05-02 20:12:39','2015-05-02 20:12:39',' ','','','publish','open','open','','23','','','2015-05-03 21:51:28','2015-05-03 21:51:28','',0,'http://source.test/?p=23',1,'nav_menu_item','',0),(24,1,'2015-05-02 20:12:16','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2015-05-02 20:12:16','0000-00-00 00:00:00','',0,'http://source.test/?p=24',1,'nav_menu_item','',0),(25,1,'2015-05-02 20:12:18','0000-00-00 00:00:00',' ','','','draft','open','open','','','','','2015-05-02 20:12:18','0000-00-00 00:00:00','',0,'http://source.test/?p=25',1,'nav_menu_item','',0),(26,1,'2015-05-02 20:12:39','2015-05-02 20:12:39',' ','','','publish','open','open','','26','','','2015-05-03 21:51:28','2015-05-03 21:51:28','',0,'http://source.test/?p=26',3,'nav_menu_item','',0),(27,1,'2015-05-02 20:12:39','2015-05-02 20:12:39',' ','','','publish','open','open','','27','','','2015-05-03 21:51:28','2015-05-03 21:51:28','',0,'http://source.test/?p=27',2,'nav_menu_item','',0),(29,1,'2015-05-02 20:46:59','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2015-05-02 20:46:59','0000-00-00 00:00:00','',0,'http://source.test/?page_id=29',0,'page','',0),(30,1,'2015-05-02 21:52:37','2015-05-02 21:52:37','','My Hobby','','publish','open','open','','my-hobby','','','2015-05-02 21:52:37','2015-05-02 21:52:37','',0,'http://source.test/?page_id=30',0,'page','',0),(31,1,'2015-05-02 21:52:38','2015-05-02 21:52:38',' ','','','publish','open','open','','31','','','2015-05-03 21:51:28','2015-05-03 21:51:28','',0,'http://source.test/?p=31',4,'nav_menu_item','',0),(32,1,'2015-05-02 21:52:37','2015-05-02 21:52:37','','My Hobby','','inherit','open','open','','30-revision-v1','','','2015-05-02 21:52:37','2015-05-02 21:52:37','',30,'http://source.test/?p=32',0,'revision','',0),(33,1,'2015-05-02 21:52:41','2015-05-02 21:52:41','','My Hobby','','inherit','open','open','','30-autosave-v1','','','2015-05-02 21:52:41','2015-05-02 21:52:41','',30,'http://source.test/?p=33',0,'revision','',0);
/*!40000 ALTER TABLE `cv_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_term_relationships`
--

DROP TABLE IF EXISTS `cv_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_term_relationships`
--

LOCK TABLES `cv_term_relationships` WRITE;
/*!40000 ALTER TABLE `cv_term_relationships` DISABLE KEYS */;
INSERT INTO `cv_term_relationships` VALUES (1,1,0),(23,3,0),(26,3,0),(27,3,0),(31,3,0);
/*!40000 ALTER TABLE `cv_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_term_taxonomy`
--

DROP TABLE IF EXISTS `cv_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_term_taxonomy`
--

LOCK TABLES `cv_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `cv_term_taxonomy` DISABLE KEYS */;
INSERT INTO `cv_term_taxonomy` VALUES (1,1,'category','',0,1),(3,3,'nav_menu','',0,4);
/*!40000 ALTER TABLE `cv_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_terms`
--

DROP TABLE IF EXISTS `cv_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_terms`
--

LOCK TABLES `cv_terms` WRITE;
/*!40000 ALTER TABLE `cv_terms` DISABLE KEYS */;
INSERT INTO `cv_terms` VALUES (1,'Uncategorized','uncategorized',0),(3,'Menu','menu',0);
/*!40000 ALTER TABLE `cv_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_usermeta`
--

DROP TABLE IF EXISTS `cv_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_usermeta`
--

LOCK TABLES `cv_usermeta` WRITE;
/*!40000 ALTER TABLE `cv_usermeta` DISABLE KEYS */;
INSERT INTO `cv_usermeta` VALUES (1,1,'nickname','jay'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','false'),(10,1,'cv_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'cv_user_level','10'),(12,1,'dismissed_wp_pointers','wp360_locks,wp390_widgets,wp410_dfw'),(13,1,'show_welcome_panel','1'),(14,1,'session_tokens','a:1:{s:64:\"1e4c76f620debb8e316e6a55ddac0d4b403e879b3bb881f7ed5d855853292aac\";a:4:{s:10:\"expiration\";i:1431787629;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36\";s:5:\"login\";i:1430578029;}}'),(15,1,'cv_dashboard_quick_press_last_post_id','3'),(16,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),(17,1,'metaboxhidden_nav-menus','a:3:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";}'),(18,1,'nav_menu_recently_edited','3'),(19,1,'cv_user-settings','editor=html'),(20,1,'cv_user-settings-time','1430603555');
/*!40000 ALTER TABLE `cv_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv_users`
--

DROP TABLE IF EXISTS `cv_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cv_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_users`
--

LOCK TABLES `cv_users` WRITE;
/*!40000 ALTER TABLE `cv_users` DISABLE KEYS */;
INSERT INTO `cv_users` VALUES (1,'jay','$P$Bk0r5TbZpGCcqAUo3dmFwWGhh1g1Kh.','jay','misterjaaay@gmail.com','','2015-05-02 14:41:58','',0,'jay');
/*!40000 ALTER TABLE `cv_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-04  2:05:28
