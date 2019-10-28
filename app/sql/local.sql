-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-10-19 14:16:47','2019-10-19 14:16:47','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://gymfitness.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://gymfitness.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','GymFitness','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:105:{s:20:\"gymfitness_clases/?$\";s:37:\"index.php?post_type=gymfitness_clases\";s:50:\"gymfitness_clases/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:45:\"gymfitness_clases/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=gymfitness_clases&feed=$matches[1]\";s:37:\"gymfitness_clases/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=gymfitness_clases&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"gymfitness_clases/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"gymfitness_clases/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"gymfitness_clases/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"gymfitness_clases/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"gymfitness_clases/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"gymfitness_clases/(.+?)/embed/?$\";s:50:\"index.php?gymfitness_clases=$matches[1]&embed=true\";s:36:\"gymfitness_clases/(.+?)/trackback/?$\";s:44:\"index.php?gymfitness_clases=$matches[1]&tb=1\";s:56:\"gymfitness_clases/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&feed=$matches[2]\";s:44:\"gymfitness_clases/(.+?)/page/?([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&paged=$matches[2]\";s:51:\"gymfitness_clases/(.+?)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?gymfitness_clases=$matches[1]&cpage=$matches[2]\";s:40:\"gymfitness_clases/(.+?)(?:/([0-9]+))?/?$\";s:56:\"index.php?gymfitness_clases=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:2;s:47:\"gymfitness_post_types/gymfitness_post_types.php\";i:3;s:40:\"gymfitness_widgets/gymfitness_widget.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','gymfitnesss','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','gymfitnesss','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','44719','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:3:{i:2;a:4:{s:5:\"title\";s:10:\"Hola mundo\";s:4:\"text\";s:4:\"Hola\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:6:\"HOLA 1\";s:4:\"text\";s:6:\"asdasd\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','29','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','13','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'initial_db_version','44719','yes');
INSERT INTO `wp_options` VALUES (94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (95,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'sidebars_widgets','a:5:{s:7:\"sidebar\";a:1:{i:0;s:6:\"text-2\";}s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar_1\";a:1:{i:0;s:6:\"text-3\";}s:9:\"sidebar_2\";a:1:{i:0;s:12:\"foo_widget-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (102,'cron','a:6:{i:1571771810;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1571797010;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1571840209;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1571846445;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1571846447;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'nonce_key','zn65tvae( wywiJ`0OZl[qD1YIeBGH=a7z&uq_!]>~81iYl~)o1Bz.ozZ)R$x?)v','no');
INSERT INTO `wp_options` VALUES (110,'nonce_salt','9T$v0WfSFPr3JXnQ0jA_Pau}xA%Nh|Oys@bUQfn_ c[m]8Wr^#>T`v j*&cTWM![','no');
INSERT INTO `wp_options` VALUES (111,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1571501359;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (116,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'_site_transient_timeout_browser_f4472434ed9b002ae498d1b82fda99ec','1572105646','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_browser_f4472434ed9b002ae498d1b82fda99ec','a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:15:\"63.0.3368.56078\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_timeout_php_check_20c231c3d6703efba5d948822e1d1da6','1572105646','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_php_check_20c231c3d6703efba5d948822e1d1da6','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (129,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (145,'current_theme','GymFitnessFlexCSSGrid','yes');
INSERT INTO `wp_options` VALUES (146,'theme_mods_gymfitnesss','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"menu-principal\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (147,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (157,'WPLANG','es_MX','yes');
INSERT INTO `wp_options` VALUES (158,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (168,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (176,'recovery_mode_email_last_sent','1571531780','yes');
INSERT INTO `wp_options` VALUES (182,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1571771654;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (183,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1571771658;s:7:\"checked\";a:4:{s:11:\"gymfitnesss\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (218,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1571771658;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.5\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"1.9\";s:47:\"gymfitness_post_types/gymfitness_post_types.php\";s:5:\"1.0.0\";s:40:\"gymfitness_widgets/gymfitness_widget.php\";s:5:\"1.0.0\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (219,'acf_version','5.8.5','yes');
INSERT INTO `wp_options` VALUES (232,'widget_foo_widget','a:2:{i:2;a:1:{s:5:\"title\";s:4:\"Hola\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (247,'_site_transient_timeout_theme_roots','1571773456','no');
INSERT INTO `wp_options` VALUES (248,'_site_transient_theme_roots','a:4:{s:11:\"gymfitnesss\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1571501324:1');
INSERT INTO `wp_postmeta` VALUES (4,6,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (5,6,'_edit_lock','1571578776:1');
INSERT INTO `wp_postmeta` VALUES (6,10,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (7,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (8,10,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (9,10,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (10,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (11,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (12,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (13,10,'_menu_item_url','http://gymfitness.local/');
INSERT INTO `wp_postmeta` VALUES (14,10,'_menu_item_orphaned','1571504740');
INSERT INTO `wp_postmeta` VALUES (15,11,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (16,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,11,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (18,11,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (19,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,11,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (23,11,'_menu_item_orphaned','1571504740');
INSERT INTO `wp_postmeta` VALUES (24,12,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (25,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,12,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (27,12,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (28,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,12,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,12,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (32,12,'_menu_item_orphaned','1571504740');
INSERT INTO `wp_postmeta` VALUES (33,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (34,13,'_edit_lock','1571575710:1');
INSERT INTO `wp_postmeta` VALUES (35,15,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (36,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (37,15,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (38,15,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (39,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (40,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (41,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (42,15,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (43,15,'_menu_item_orphaned','1571504819');
INSERT INTO `wp_postmeta` VALUES (44,16,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (45,16,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,16,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (47,16,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (48,16,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,16,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,16,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (52,16,'_menu_item_orphaned','1571504819');
INSERT INTO `wp_postmeta` VALUES (53,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (54,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (55,17,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (56,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (57,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (58,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (59,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (60,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (61,17,'_menu_item_orphaned','1571504819');
INSERT INTO `wp_postmeta` VALUES (62,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (63,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (64,18,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (65,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (66,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (67,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (68,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (69,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (70,18,'_menu_item_orphaned','1571504819');
INSERT INTO `wp_postmeta` VALUES (71,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (72,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (73,19,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (74,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (75,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (76,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (77,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (78,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (80,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (81,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (82,20,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (83,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (84,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (85,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (86,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (87,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (88,20,'_menu_item_orphaned','1571504846');
INSERT INTO `wp_postmeta` VALUES (89,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (90,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (91,21,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (92,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (93,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (94,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (95,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (96,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (98,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (99,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (100,22,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (101,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (102,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (103,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (104,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (105,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (106,22,'_menu_item_orphaned','1571504859');
INSERT INTO `wp_postmeta` VALUES (107,1,'_edit_lock','1571539957:1');
INSERT INTO `wp_postmeta` VALUES (108,24,'_wp_attached_file','2019/10/nosotros.jpg');
INSERT INTO `wp_postmeta` VALUES (109,24,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:20:\"2019/10/nosotros.jpg\";s:5:\"sizes\";a:8:{s:6:\"square\";a:4:{s:4:\"file\";s:20:\"nosotros-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"nosotros-350x640.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"nosotros-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"nosotros-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:20:\"nosotros-960x350.jpg\";s:5:\"width\";i:960;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"nosotros-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"nosotros-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"nosotros-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (110,24,'_wp_attachment_image_alt','Nosotros');
INSERT INTO `wp_postmeta` VALUES (111,6,'_thumbnail_id','24');
INSERT INTO `wp_postmeta` VALUES (112,6,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (113,25,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (114,25,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (115,25,'_edit_lock','1571579074:1');
INSERT INTO `wp_postmeta` VALUES (116,27,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (117,27,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (118,27,'_edit_lock','1571581915:1');
INSERT INTO `wp_postmeta` VALUES (119,29,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (120,29,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (121,29,'_edit_lock','1571579005:1');
INSERT INTO `wp_postmeta` VALUES (122,31,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (123,31,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (124,31,'_edit_lock','1571579081:1');
INSERT INTO `wp_postmeta` VALUES (125,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (126,3,'_wp_trash_meta_time','1571578963');
INSERT INTO `wp_postmeta` VALUES (127,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (128,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (129,2,'_wp_trash_meta_time','1571578967');
INSERT INTO `wp_postmeta` VALUES (130,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (131,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (132,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (133,35,'_menu_item_object_id','29');
INSERT INTO `wp_postmeta` VALUES (134,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (135,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (136,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (137,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (138,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (140,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (141,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (142,36,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (143,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (144,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (145,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (146,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (147,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (149,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (150,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (151,37,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (152,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (153,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (154,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (155,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (156,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (158,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (159,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (160,38,'_menu_item_object_id','27');
INSERT INTO `wp_postmeta` VALUES (161,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (162,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (163,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (164,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (165,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (167,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (168,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (169,39,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (170,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (171,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (172,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (173,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (174,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (175,39,'_menu_item_orphaned','1571579155');
INSERT INTO `wp_postmeta` VALUES (176,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (177,43,'_edit_lock','1571583180:1');
INSERT INTO `wp_postmeta` VALUES (178,48,'_wp_attached_file','2019/10/area-cardio.jpg');
INSERT INTO `wp_postmeta` VALUES (179,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:23:\"2019/10/area-cardio.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"area-cardio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"area-cardio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"area-cardio-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:23:\"area-cardio-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:23:\"area-cardio-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:23:\"area-cardio-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:23:\"area-cardio-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:23:\"area-cardio-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (180,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,47,'_edit_lock','1571583326:1');
INSERT INTO `wp_postmeta` VALUES (182,47,'_thumbnail_id','48');
INSERT INTO `wp_postmeta` VALUES (183,47,'hora_inicio','07:00:00');
INSERT INTO `wp_postmeta` VALUES (184,47,'_hora_inicio','field_5dac737611503');
INSERT INTO `wp_postmeta` VALUES (185,47,'hora_fin','08:00:00');
INSERT INTO `wp_postmeta` VALUES (186,47,'_hora_fin','field_5dac751d11504');
INSERT INTO `wp_postmeta` VALUES (187,47,'dias_clase','Todos los días');
INSERT INTO `wp_postmeta` VALUES (188,47,'_dias_clase','field_5dac753811505');
INSERT INTO `wp_postmeta` VALUES (189,50,'_wp_attached_file','2019/10/clase5.jpg');
INSERT INTO `wp_postmeta` VALUES (190,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:18:\"2019/10/clase5.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase5-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase5-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase5-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase5-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase5-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (191,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (192,49,'_edit_lock','1571583378:1');
INSERT INTO `wp_postmeta` VALUES (193,49,'_thumbnail_id','50');
INSERT INTO `wp_postmeta` VALUES (194,49,'hora_inicio','12:00:00');
INSERT INTO `wp_postmeta` VALUES (195,49,'_hora_inicio','field_5dac737611503');
INSERT INTO `wp_postmeta` VALUES (196,49,'hora_fin','15:00:00');
INSERT INTO `wp_postmeta` VALUES (197,49,'_hora_fin','field_5dac751d11504');
INSERT INTO `wp_postmeta` VALUES (198,49,'dias_clase','Lunes y Martes');
INSERT INTO `wp_postmeta` VALUES (199,49,'_dias_clase','field_5dac753811505');
INSERT INTO `wp_postmeta` VALUES (200,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (201,51,'_edit_lock','1571583433:1');
INSERT INTO `wp_postmeta` VALUES (202,52,'_wp_attached_file','2019/10/area-yoga.jpg');
INSERT INTO `wp_postmeta` VALUES (203,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:21:\"2019/10/area-yoga.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"area-yoga-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"area-yoga-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"area-yoga-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"area-yoga-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:21:\"area-yoga-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:21:\"area-yoga-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:21:\"area-yoga-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:21:\"area-yoga-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:21:\"area-yoga-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (204,51,'_thumbnail_id','52');
INSERT INTO `wp_postmeta` VALUES (205,51,'hora_inicio','19:00:00');
INSERT INTO `wp_postmeta` VALUES (206,51,'_hora_inicio','field_5dac737611503');
INSERT INTO `wp_postmeta` VALUES (207,51,'hora_fin','20:00:00');
INSERT INTO `wp_postmeta` VALUES (208,51,'_hora_fin','field_5dac751d11504');
INSERT INTO `wp_postmeta` VALUES (209,51,'dias_clase','Días martes');
INSERT INTO `wp_postmeta` VALUES (210,51,'_dias_clase','field_5dac753811505');
INSERT INTO `wp_postmeta` VALUES (211,54,'_wp_attached_file','2019/10/area-aparatos.jpg');
INSERT INTO `wp_postmeta` VALUES (212,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:699;s:4:\"file\";s:25:\"2019/10/area-aparatos.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"area-aparatos-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"area-aparatos-300x191.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"area-aparatos-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"area-aparatos-1024x651.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:651;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:25:\"area-aparatos-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:25:\"area-aparatos-350x699.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:25:\"area-aparatos-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:25:\"area-aparatos-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:25:\"area-aparatos-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (213,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (214,53,'_edit_lock','1571583639:1');
INSERT INTO `wp_postmeta` VALUES (215,53,'_thumbnail_id','54');
INSERT INTO `wp_postmeta` VALUES (216,53,'hora_inicio','07:00:00');
INSERT INTO `wp_postmeta` VALUES (217,53,'_hora_inicio','field_5dac737611503');
INSERT INTO `wp_postmeta` VALUES (218,53,'hora_fin','04:00:00');
INSERT INTO `wp_postmeta` VALUES (219,53,'_hora_fin','field_5dac751d11504');
INSERT INTO `wp_postmeta` VALUES (220,53,'dias_clase','Todos los ');
INSERT INTO `wp_postmeta` VALUES (221,53,'_dias_clase','field_5dac753811505');
INSERT INTO `wp_postmeta` VALUES (222,55,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (223,55,'_edit_lock','1571583729:1');
INSERT INTO `wp_postmeta` VALUES (224,56,'_wp_attached_file','2019/10/clase1.jpg');
INSERT INTO `wp_postmeta` VALUES (225,56,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:733;s:4:\"file\";s:18:\"2019/10/clase1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase1-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase1-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (226,57,'_wp_attached_file','2019/10/clase2.jpg');
INSERT INTO `wp_postmeta` VALUES (227,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:666;s:4:\"file\";s:18:\"2019/10/clase2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase2-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase2-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase2-350x666.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:666;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase2-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase2-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase2-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (228,58,'_wp_attached_file','2019/10/clase3.jpg');
INSERT INTO `wp_postmeta` VALUES (229,58,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:760;s:4:\"file\";s:18:\"2019/10/clase3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase3-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase3-768x531.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase3-1024x707.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase3-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase3-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase3-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase3-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase3-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (230,59,'_wp_attached_file','2019/10/clase4.jpg');
INSERT INTO `wp_postmeta` VALUES (231,59,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:663;s:4:\"file\";s:18:\"2019/10/clase4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase4-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase4-768x509.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:509;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase4-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase4-350x663.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:663;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase4-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase4-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase4-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (232,60,'_wp_attached_file','2019/10/clase5-1.jpg');
INSERT INTO `wp_postmeta` VALUES (233,60,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2019/10/clase5-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"clase5-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"clase5-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"clase5-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:20:\"clase5-1-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:20:\"clase5-1-350x667.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:667;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:20:\"clase5-1-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:20:\"clase5-1-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:20:\"clase5-1-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (234,61,'_wp_attached_file','2019/10/clase6.jpg');
INSERT INTO `wp_postmeta` VALUES (235,61,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1100;s:6:\"height\";i:734;s:4:\"file\";s:18:\"2019/10/clase6.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"clase6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"clase6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"clase6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"clase6-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"square\";a:4:{s:4:\"file\";s:18:\"clase6-350x350.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:8:\"portrait\";a:4:{s:4:\"file\";s:18:\"clase6-350x724.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cajas\";a:4:{s:4:\"file\";s:18:\"clase6-400x375.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:375;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"mediano\";a:4:{s:4:\"file\";s:18:\"clase6-700x400.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"blog\";a:4:{s:4:\"file\";s:18:\"clase6-966x350.jpg\";s:5:\"width\";i:966;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (236,55,'_thumbnail_id','57');
INSERT INTO `wp_postmeta` VALUES (237,55,'hora_inicio','17:00:00');
INSERT INTO `wp_postmeta` VALUES (238,55,'_hora_inicio','field_5dac737611503');
INSERT INTO `wp_postmeta` VALUES (239,55,'hora_fin','19:00:00');
INSERT INTO `wp_postmeta` VALUES (240,55,'_hora_fin','field_5dac751d11504');
INSERT INTO `wp_postmeta` VALUES (241,55,'dias_clase','Días lunes, miércoles y viernes');
INSERT INTO `wp_postmeta` VALUES (242,55,'_dias_clase','field_5dac753811505');
INSERT INTO `wp_postmeta` VALUES (243,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,62,'_edit_lock','1571583843:1');
INSERT INTO `wp_postmeta` VALUES (245,62,'_thumbnail_id','59');
INSERT INTO `wp_postmeta` VALUES (246,62,'hora_inicio','09:00:00');
INSERT INTO `wp_postmeta` VALUES (247,62,'_hora_inicio','field_5dac737611503');
INSERT INTO `wp_postmeta` VALUES (248,62,'hora_fin','');
INSERT INTO `wp_postmeta` VALUES (249,62,'_hora_fin','field_5dac751d11504');
INSERT INTO `wp_postmeta` VALUES (250,62,'dias_clase','Todos los días');
INSERT INTO `wp_postmeta` VALUES (251,62,'_dias_clase','field_5dac753811505');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-10-19 14:16:47','2019-10-19 14:16:47','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-10-19 14:16:47','2019-10-19 14:16:47','',0,'http://gymfitness.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2019-10-19 14:16:47','2019-10-19 14:16:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://gymfitness.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2019-10-20 13:42:47','2019-10-20 13:42:47','',0,'http://gymfitness.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2019-10-19 14:16:47','2019-10-19 14:16:47','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://gymfitness.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2019-10-20 13:42:43','2019-10-20 13:42:43','',0,'http://gymfitness.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2019-10-19 16:00:47','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2019-10-19 16:00:47','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2019-10-19 16:10:56','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2019-10-19 16:10:56','0000-00-00 00:00:00','',0,'http://gymfitness.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2019-10-19 16:12:23','2019-10-19 16:12:23','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ante libero, lobortis vel viverra ut, porta ut sapien. Praesent imperdiet, arcu sed ultricies pharetra, velit nisl malesuada nulla, id varius metus lacus eget velit. Suspendisse nisl nisi, faucibus consequat accumsan eget, euismod sed sapien. Quisque a lectus quis est ornare vehicula in ac tellus. Morbi ex eros, lobortis a volutpat ac, convallis sodales nulla. Sed auctor, justo nec rutrum sagittis, odio magna hendrerit augue, ut luctus leo quam a purus. Nullam sed leo erat.\r\n\r\nPhasellus condimentum sodales massa, eu cursus erat. Suspendisse volutpat placerat auctor. Donec maximus maximus varius. Nullam porttitor pretium nunc, rutrum laoreet leo vehicula eget. Praesent a imperdiet purus. Mauris eu est mattis, consectetur erat quis, suscipit turpis. Etiam auctor massa cursus mollis tincidunt. Nullam mauris ligula, pulvinar eu aliquam at, scelerisque eu augue.\r\n\r\nInteger tellus ante, fringilla vel mollis non, sollicitudin tristique arcu. Vivamus non fringilla massa, quis luctus dui. Etiam ac aliquet est. Quisque metus felis, pharetra a finibus et, dapibus eget enim. Sed sodales consectetur fermentum. Duis nec ex at tellus tristique molestie sit amet id massa. Praesent aliquam porta sem luctus volutpat. Vivamus at urna at dolor sodales volutpat in iaculis velit. Nunc blandit velit felis, ut finibus neque vestibulum a.','Sobre Nosotros','','publish','closed','closed','','nosotros','','','2019-10-20 13:39:28','2019-10-20 13:39:28','',0,'http://gymfitness.local/?page_id=6',0,'page','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2019-10-19 16:12:23','2019-10-19 16:12:23','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ante libero, lobortis vel viverra ut, porta ut sapien. Praesent imperdiet, arcu sed ultricies pharetra, velit nisl malesuada nulla, id varius metus lacus eget velit. Suspendisse nisl nisi, faucibus consequat accumsan eget, euismod sed sapien. Quisque a lectus quis est ornare vehicula in ac tellus. Morbi ex eros, lobortis a volutpat ac, convallis sodales nulla. Sed auctor, justo nec rutrum sagittis, odio magna hendrerit augue, ut luctus leo quam a purus. Nullam sed leo erat.\r\n\r\nPhasellus condimentum sodales massa, eu cursus erat. Suspendisse volutpat placerat auctor. Donec maximus maximus varius. Nullam porttitor pretium nunc, rutrum laoreet leo vehicula eget. Praesent a imperdiet purus. Mauris eu est mattis, consectetur erat quis, suscipit turpis. Etiam auctor massa cursus mollis tincidunt. Nullam mauris ligula, pulvinar eu aliquam at, scelerisque eu augue.\r\n\r\nInteger tellus ante, fringilla vel mollis non, sollicitudin tristique arcu. Vivamus non fringilla massa, quis luctus dui. Etiam ac aliquet est. Quisque metus felis, pharetra a finibus et, dapibus eget enim. Sed sodales consectetur fermentum. Duis nec ex at tellus tristique molestie sit amet id massa. Praesent aliquam porta sem luctus volutpat. Vivamus at urna at dolor sodales volutpat in iaculis velit. Nunc blandit velit felis, ut finibus neque vestibulum a.','Nosotros','','inherit','closed','closed','','6-revision-v1','','','2019-10-19 16:12:23','2019-10-19 16:12:23','',6,'http://gymfitness.local/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2019-10-19 16:23:48','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2019-10-19 16:23:48','0000-00-00 00:00:00','',0,'http://gymfitness.local/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2019-10-19 16:24:34','2019-10-19 16:24:34','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ante libero, lobortis vel viverra ut, porta ut sapien. Praesent imperdiet, arcu sed ultricies pharetra, velit nisl malesuada nulla, id varius metus lacus eget velit. Suspendisse nisl nisi, faucibus consequat accumsan eget, euismod sed sapien. Quisque a lectus quis est ornare vehicula in ac tellus. Morbi ex eros, lobortis a volutpat ac, convallis sodales nulla. Sed auctor, justo nec rutrum sagittis, odio magna hendrerit augue, ut luctus leo quam a purus. Nullam sed leo erat.\r\n\r\nPhasellus condimentum sodales massa, eu cursus erat. Suspendisse volutpat placerat auctor. Donec maximus maximus varius. Nullam porttitor pretium nunc, rutrum laoreet leo vehicula eget. Praesent a imperdiet purus. Mauris eu est mattis, consectetur erat quis, suscipit turpis. Etiam auctor massa cursus mollis tincidunt. Nullam mauris ligula, pulvinar eu aliquam at, scelerisque eu augue.\r\n\r\nInteger tellus ante, fringilla vel mollis non, sollicitudin tristique arcu. Vivamus non fringilla massa, quis luctus dui. Etiam ac aliquet est. Quisque metus felis, pharetra a finibus et, dapibus eget enim. Sed sodales consectetur fermentum. Duis nec ex at tellus tristique molestie sit amet id massa. Praesent aliquam porta sem luctus volutpat. Vivamus at urna at dolor sodales volutpat in iaculis velit. Nunc blandit velit felis, ut finibus neque vestibulum a.','Sobre Nosotros','','inherit','closed','closed','','6-revision-v1','','','2019-10-19 16:24:34','2019-10-19 16:24:34','',6,'http://gymfitness.local/6-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2019-10-19 17:05:40','0000-00-00 00:00:00','','Inicio','','draft','closed','closed','','','','','2019-10-19 17:05:40','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=10',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2019-10-19 17:05:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:05:40','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=11',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2019-10-19 17:05:40','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:05:40','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=12',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2019-10-19 17:06:33','2019-10-19 17:06:33','','Inicio','','publish','closed','closed','','inicio','','','2019-10-19 17:06:33','2019-10-19 17:06:33','',0,'http://gymfitness.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2019-10-19 17:06:33','2019-10-19 17:06:33','','Inicio','','inherit','closed','closed','','13-revision-v1','','','2019-10-19 17:06:33','2019-10-19 17:06:33','',13,'http://gymfitness.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2019-10-19 17:06:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:06:59','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=15',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2019-10-19 17:06:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:06:59','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=16',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2019-10-19 17:06:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:06:59','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2019-10-19 17:06:59','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:06:59','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2019-10-19 17:08:00','2019-10-19 17:08:00',' ','','','publish','closed','closed','','19','','','2019-10-20 13:46:36','2019-10-20 13:46:36','',0,'http://gymfitness.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2019-10-19 17:07:26','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:07:26','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2019-10-19 17:08:00','2019-10-19 17:08:00','','Nosotros','','publish','closed','closed','','21','','','2019-10-20 13:46:36','2019-10-20 13:46:36','',0,'http://gymfitness.local/?p=21',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2019-10-19 17:07:39','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-19 17:07:39','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2019-10-20 02:58:10','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2019-10-20 02:58:10','0000-00-00 00:00:00','',0,'http://gymfitness.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2019-10-20 03:08:57','2019-10-20 03:08:57','','nosotros','','inherit','open','closed','','nosotros-2','','','2019-10-20 03:09:05','2019-10-20 03:09:05','',6,'http://gymfitness.local/wp-content/uploads/2019/10/nosotros.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (25,1,'2019-10-20 13:42:05','2019-10-20 13:42:05','','Contacto','','publish','closed','closed','','contacto','','','2019-10-20 13:44:34','2019-10-20 13:44:34','',0,'http://gymfitness.local/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2019-10-20 13:42:05','2019-10-20 13:42:05','','Contacto','','inherit','closed','closed','','25-revision-v1','','','2019-10-20 13:42:05','2019-10-20 13:42:05','',25,'http://gymfitness.local/25-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2019-10-20 13:42:15','2019-10-20 13:42:15','Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices.','Nuestras Clases','','publish','closed','closed','','nuestras-clases','','','2019-10-20 13:52:03','2019-10-20 13:52:03','',0,'http://gymfitness.local/?page_id=27',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2019-10-20 13:42:15','2019-10-20 13:42:15','','Nuestras Clases','','inherit','closed','closed','','27-revision-v1','','','2019-10-20 13:42:15','2019-10-20 13:42:15','',27,'http://gymfitness.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2019-10-20 13:42:24','2019-10-20 13:42:24','','Blog','','publish','closed','closed','','blog','','','2019-10-20 13:43:25','2019-10-20 13:43:25','',0,'http://gymfitness.local/?page_id=29',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2019-10-20 13:42:24','2019-10-20 13:42:24','','Blog','','inherit','closed','closed','','29-revision-v1','','','2019-10-20 13:42:24','2019-10-20 13:42:24','',29,'http://gymfitness.local/29-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2019-10-20 13:42:30','2019-10-20 13:42:30','','Galeria','','publish','closed','closed','','galeria','','','2019-10-20 13:44:41','2019-10-20 13:44:41','',0,'http://gymfitness.local/?page_id=31',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2019-10-20 13:42:30','2019-10-20 13:42:30','','Galeria','','inherit','closed','closed','','31-revision-v1','','','2019-10-20 13:42:30','2019-10-20 13:42:30','',31,'http://gymfitness.local/31-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2019-10-20 13:42:43','2019-10-20 13:42:43','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://gymfitness.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2019-10-20 13:42:43','2019-10-20 13:42:43','',3,'http://gymfitness.local/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2019-10-20 13:42:47','2019-10-20 13:42:47','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://gymfitness.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2019-10-20 13:42:47','2019-10-20 13:42:47','',2,'http://gymfitness.local/2-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2019-10-20 13:46:36','2019-10-20 13:46:36',' ','','','publish','closed','closed','','35','','','2019-10-20 13:46:36','2019-10-20 13:46:36','',0,'http://gymfitness.local/?p=35',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2019-10-20 13:46:36','2019-10-20 13:46:36',' ','','','publish','closed','closed','','36','','','2019-10-20 13:46:36','2019-10-20 13:46:36','',0,'http://gymfitness.local/?p=36',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2019-10-20 13:46:36','2019-10-20 13:46:36',' ','','','publish','closed','closed','','37','','','2019-10-20 13:46:36','2019-10-20 13:46:36','',0,'http://gymfitness.local/?p=37',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2019-10-20 13:46:36','2019-10-20 13:46:36','','Clases','','publish','closed','closed','','clases','','','2019-10-20 13:46:36','2019-10-20 13:46:36','',0,'http://gymfitness.local/?p=38',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2019-10-20 13:45:55','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2019-10-20 13:45:55','0000-00-00 00:00:00','',0,'http://gymfitness.local/?p=39',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2019-10-20 13:48:57','2019-10-20 13:48:57','Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices.','Nuestras Clases','','inherit','closed','closed','','27-autosave-v1','','','2019-10-20 13:48:57','2019-10-20 13:48:57','',27,'http://gymfitness.local/27-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2019-10-20 13:49:07','2019-10-20 13:49:07','Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices.','Nuestras Clases','','inherit','closed','closed','','27-revision-v1','','','2019-10-20 13:49:07','2019-10-20 13:49:07','',27,'http://gymfitness.local/27-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2019-10-20 14:42:06','0000-00-00 00:00:00','','Borrador automático','','auto-draft','closed','closed','','','','','2019-10-20 14:42:06','0000-00-00 00:00:00','',0,'http://gymfitness.local/?post_type=gymfitness_clases&p=42',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2019-10-20 14:55:23','2019-10-20 14:55:23','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"gymfitness_clases\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Clases','clases','publish','closed','closed','','group_5dac734956e48','','','2019-10-20 14:55:23','2019-10-20 14:55:23','',0,'http://gymfitness.local/?post_type=acf-field-group&#038;p=43',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2019-10-20 14:55:23','2019-10-20 14:55:23','a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:34:\"Agraga la hora de inicio de clases\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}','Hora Inicio','hora_inicio','publish','closed','closed','','field_5dac737611503','','','2019-10-20 14:55:23','2019-10-20 14:55:23','',43,'http://gymfitness.local/?post_type=acf-field&p=44',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2019-10-20 14:55:23','2019-10-20 14:55:23','a:7:{s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:30:\"Agrega la hora de fin de clase\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"g:i a\";s:13:\"return_format\";s:5:\"g:i a\";}','Hora Fin','hora_fin','publish','closed','closed','','field_5dac751d11504','','','2019-10-20 14:55:23','2019-10-20 14:55:23','',43,'http://gymfitness.local/?post_type=acf-field&p=45',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2019-10-20 14:55:23','2019-10-20 14:55:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"Escriba los días en que se imparte esta clase\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Dias clase','dias_clase','publish','closed','closed','','field_5dac753811505','','','2019-10-20 14:55:23','2019-10-20 14:55:23','',43,'http://gymfitness.local/?post_type=acf-field&p=46',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2019-10-20 14:57:49','2019-10-20 14:57:49','<div id=\"Content\">\r\n<div id=\"bannerR\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eleifend euismod tortor, ac pretium lacus laoreet nec. Nunc euismod, arcu non luctus posuere, sem ante efficitur velit, nec laoreet est ipsum sit amet purus. Vestibulum mattis tortor id ullamcorper placerat. Fusce magna risus, tincidunt suscipit pretium sit amet, fermentum a leo. Suspendisse ac mollis erat, in lobortis nulla. Pellentesque consequat nisl vitae tristique pellentesque. Donec lobortis tortor in justo consequat, in cursus velit ultrices. Cras ut finibus massa. Phasellus volutpat velit eget mauris eleifend pharetra. Aenean metus nulla, vestibulum non pulvinar ac, euismod a nisl. Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam maximus id erat sed fringilla.</div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nSed quam tortor, efficitur nec blandit sed, placerat at risus. Morbi gravida laoreet velit, quis accumsan arcu feugiat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vitae auctor ex, vel ullamcorper lacus. Sed vel mollis enim. Phasellus sollicitudin, odio quis fringilla venenatis, sapien erat venenatis odio, sed commodo purus metus at ex. Nullam et cursus dui. Donec rutrum libero quis turpis euismod iaculis. Sed et euismod mauris. Nulla sagittis eros ac maximus fermentum. Aliquam sagittis enim sed lacus fringilla, id mollis neque venenatis. Aliquam erat volutpat. Aliquam erat volutpat. Integer lobortis finibus feugiat. Phasellus efficitur, nisi at cursus molestie, ipsum turpis bibendum urna, sit amet blandit turpis mi vitae velit.\r\n\r\n</div>\r\n</div>\r\n</div>','Clase de Spinning','','publish','closed','closed','','clase-de-spinning','','','2019-10-20 14:57:49','2019-10-20 14:57:49','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=47',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2019-10-20 14:56:51','2019-10-20 14:56:51','','area-cardio','','inherit','open','closed','','area-cardio','','','2019-10-20 14:56:51','2019-10-20 14:56:51','',47,'http://gymfitness.local/wp-content/uploads/2019/10/area-cardio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (49,1,'2019-10-20 14:58:40','2019-10-20 14:58:40','<hr />\r\n\r\n<div id=\"Content\">\r\n<div id=\"bannerL\"></div>\r\n<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eleifend euismod tortor, ac pretium lacus laoreet nec. Nunc euismod, arcu non luctus posuere, sem ante efficitur velit, nec laoreet est ipsum sit amet purus. Vestibulum mattis tortor id ullamcorper placerat. Fusce magna risus, tincidunt suscipit pretium sit amet, fermentum a leo. Suspendisse ac mollis erat, in lobortis nulla. Pellentesque consequat nisl vitae tristique pellentesque. Donec lobortis tortor in justo consequat, in cursus velit ultrices. Cras ut finibus massa. Phasellus volutpat velit eget mauris eleifend pharetra. Aenean metus nulla, vestibulum non pulvinar ac, euismod a nisl. Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam maximus id erat sed fringilla.\r\n\r\nSed quam tortor, efficitur nec blandit sed, placerat at risus. Morbi gravida laoreet velit, quis accumsan arcu feugiat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vitae auctor ex, vel ullamcorper lacus. Sed vel mollis enim. Phasellus sollicitudin, odio quis fringilla venenatis, sapien erat venenatis odio, sed commodo purus metus at ex. Nullam et cursus dui. Donec rutrum libero quis turpis euismod iaculis. Sed et euismod mauris. Nulla sagittis eros ac maximus fermentum. Aliquam sagittis enim sed lacus fringilla, id mollis neque venenatis. Aliquam erat volutpat. Aliquam erat volutpat. Integer lobortis finibus feugiat. Phasellus efficitur, nisi at cursus molestie, ipsum turpis bibendum urna, sit amet blandit turpis mi vitae velit.\r\n\r\n</div>\r\n</div>\r\n</div>','Clase de Crossfit','','publish','closed','closed','','clase-de-crossfit','','','2019-10-20 14:58:40','2019-10-20 14:58:40','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=49',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2019-10-20 14:58:02','2019-10-20 14:58:02','','clase5','','inherit','open','closed','','clase5','','','2019-10-20 14:58:02','2019-10-20 14:58:02','',49,'http://gymfitness.local/wp-content/uploads/2019/10/clase5.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (51,1,'2019-10-20 14:59:35','2019-10-20 14:59:35','<hr />\r\n\r\n<div id=\"Content\">\r\n<div id=\"bannerL\"></div>\r\n<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eleifend euismod tortor, ac pretium lacus laoreet nec. Nunc euismod, arcu non luctus posuere, sem ante efficitur velit, nec laoreet est ipsum sit amet purus. Vestibulum mattis tortor id ullamcorper placerat. Fusce magna risus, tincidunt suscipit pretium sit amet, fermentum a leo. Suspendisse ac mollis erat, in lobortis nulla. Pellentesque consequat nisl vitae tristique pellentesque. Donec lobortis tortor in justo consequat, in cursus velit ultrices. Cras ut finibus massa. Phasellus volutpat velit eget mauris eleifend pharetra. Aenean metus nulla, vestibulum non pulvinar ac, euismod a nisl. Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam maximus id erat sed fringilla.\r\n\r\nSed quam tortor, efficitur nec blandit sed, placerat at risus. Morbi gravida laoreet velit, quis accumsan arcu feugiat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vitae auctor ex, vel ullamcorper lacus. Sed vel mollis enim. Phasellus sollicitudin, odio quis fringilla venenatis, sapien erat venenatis odio, sed commodo purus metus at ex. Nullam et cursus dui. Donec rutrum libero quis turpis euismod iaculis. Sed et euismod mauris. Nulla sagittis eros ac maximus fermentum. Aliquam sagittis enim sed lacus fringilla, id mollis neque venenatis. Aliquam erat volutpat. Aliquam erat volutpat. Integer lobortis finibus feugiat. Phasellus efficitur, nisi at cursus molestie, ipsum turpis bibendum urna, sit amet blandit turpis mi vitae velit.\r\n\r\n</div>\r\n</div>\r\n</div>','Clase yoga','','publish','closed','closed','','clase-yoga','','','2019-10-20 14:59:35','2019-10-20 14:59:35','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=51',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2019-10-20 14:58:54','2019-10-20 14:58:54','','area-yoga','','inherit','open','closed','','area-yoga','','','2019-10-20 14:58:54','2019-10-20 14:58:54','',51,'http://gymfitness.local/wp-content/uploads/2019/10/area-yoga.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (53,1,'2019-10-20 15:00:38','2019-10-20 15:00:38','<div id=\"Content\">\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eleifend euismod tortor, ac pretium lacus laoreet nec. Nunc euismod, arcu non luctus posuere, sem ante efficitur velit, nec laoreet est ipsum sit amet purus. Vestibulum mattis tortor id ullamcorper placerat. Fusce magna risus, tincidunt suscipit pretium sit amet, fermentum a leo. Suspendisse ac mollis erat, in lobortis nulla. Pellentesque consequat nisl vitae tristique pellentesque. Donec lobortis tortor in justo consequat, in cursus velit ultrices. Cras ut finibus massa. Phasellus volutpat velit eget mauris eleifend pharetra. Aenean metus nulla, vestibulum non pulvinar ac, euismod a nisl. Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam maximus id erat sed fringilla.\r\n\r\nSed quam tortor, efficitur nec blandit sed, placerat at risus. Morbi gravida laoreet velit, quis accumsan arcu feugiat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vitae auctor ex, vel ullamcorper lacus. Sed vel mollis enim. Phasellus sollicitudin, odio quis fringilla venenatis, sapien erat venenatis odio, sed commodo purus metus at ex. Nullam et cursus dui. Donec rutrum libero quis turpis euismod iaculis. Sed et euismod mauris. Nulla sagittis eros ac maximus fermentum. Aliquam sagittis enim sed lacus fringilla, id mollis neque venenatis. Aliquam erat volutpat. Aliquam erat volutpat. Integer lobortis finibus feugiat. Phasellus efficitur, nisi at cursus molestie, ipsum turpis bibendum urna, sit amet blandit turpis mi vitae velit.\r\n\r\n</div>\r\n</div>\r\n</div>','Clase Full','','publish','closed','closed','','clase-full','','','2019-10-20 15:03:02','2019-10-20 15:03:02','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=53',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2019-10-20 14:59:53','2019-10-20 14:59:53','','area-aparatos','','inherit','open','closed','','area-aparatos','','','2019-10-20 14:59:53','2019-10-20 14:59:53','',53,'http://gymfitness.local/wp-content/uploads/2019/10/area-aparatos.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2019-10-20 15:04:32','2019-10-20 15:04:32','<hr />\r\n\r\n<div id=\"Content\">\r\n<div id=\"bannerL\"></div>\r\n<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eleifend euismod tortor, ac pretium lacus laoreet nec. Nunc euismod, arcu non luctus posuere, sem ante efficitur velit, nec laoreet est ipsum sit amet purus. Vestibulum mattis tortor id ullamcorper placerat. Fusce magna risus, tincidunt suscipit pretium sit amet, fermentum a leo. Suspendisse ac mollis erat, in lobortis nulla. Pellentesque consequat nisl vitae tristique pellentesque. Donec lobortis tortor in justo consequat, in cursus velit ultrices. Cras ut finibus massa. Phasellus volutpat velit eget mauris eleifend pharetra. Aenean metus nulla, vestibulum non pulvinar ac, euismod a nisl. Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam maximus id erat sed fringilla.\r\n\r\nSed quam tortor, efficitur nec blandit sed, placerat at risus. Morbi gravida laoreet velit, quis accumsan arcu feugiat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vitae auctor ex, vel ullamcorper lacus. Sed vel mollis enim. Phasellus sollicitudin, odio quis fringilla venenatis, sapien erat venenatis odio, sed commodo purus metus at ex. Nullam et cursus dui. Donec rutrum libero quis turpis euismod iaculis. Sed et euismod mauris. Nulla sagittis eros ac maximus fermentum. Aliquam sagittis enim sed lacus fringilla, id mollis neque venenatis. Aliquam erat volutpat. Aliquam erat volutpat. Integer lobortis finibus feugiat. Phasellus efficitur, nisi at cursus molestie, ipsum turpis bibendum urna, sit amet blandit turpis mi vitae velit.\r\n\r\n</div>\r\n</div>\r\n</div>','Clase Alterofilia','','publish','closed','closed','','clase-alterofilia','','','2019-10-20 15:04:32','2019-10-20 15:04:32','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=55',0,'gymfitness_clases','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2019-10-20 15:03:28','2019-10-20 15:03:28','','clase1','','inherit','open','closed','','clase1','','','2019-10-20 15:03:28','2019-10-20 15:03:28','',55,'http://gymfitness.local/wp-content/uploads/2019/10/clase1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (57,1,'2019-10-20 15:03:29','2019-10-20 15:03:29','','clase2','','inherit','open','closed','','clase2','','','2019-10-20 15:03:29','2019-10-20 15:03:29','',55,'http://gymfitness.local/wp-content/uploads/2019/10/clase2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (58,1,'2019-10-20 15:03:29','2019-10-20 15:03:29','','clase3','','inherit','open','closed','','clase3','','','2019-10-20 15:03:29','2019-10-20 15:03:29','',55,'http://gymfitness.local/wp-content/uploads/2019/10/clase3.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (59,1,'2019-10-20 15:03:30','2019-10-20 15:03:30','','clase4','','inherit','open','closed','','clase4','','','2019-10-20 15:03:30','2019-10-20 15:03:30','',55,'http://gymfitness.local/wp-content/uploads/2019/10/clase4.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (60,1,'2019-10-20 15:03:30','2019-10-20 15:03:30','','clase5','','inherit','open','closed','','clase5-2','','','2019-10-20 15:03:30','2019-10-20 15:03:30','',55,'http://gymfitness.local/wp-content/uploads/2019/10/clase5-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (61,1,'2019-10-20 15:03:31','2019-10-20 15:03:31','','clase6','','inherit','open','closed','','clase6','','','2019-10-20 15:03:31','2019-10-20 15:03:31','',55,'http://gymfitness.local/wp-content/uploads/2019/10/clase6.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (62,1,'2019-10-20 15:05:20','2019-10-20 15:05:20','<hr />\r\n\r\n<div id=\"Content\">\r\n<div id=\"bannerL\"></div>\r\n<div id=\"bannerR\"></div>\r\n<div class=\"boxed\">\r\n<div id=\"lipsum\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eleifend euismod tortor, ac pretium lacus laoreet nec. Nunc euismod, arcu non luctus posuere, sem ante efficitur velit, nec laoreet est ipsum sit amet purus. Vestibulum mattis tortor id ullamcorper placerat. Fusce magna risus, tincidunt suscipit pretium sit amet, fermentum a leo. Suspendisse ac mollis erat, in lobortis nulla. Pellentesque consequat nisl vitae tristique pellentesque. Donec lobortis tortor in justo consequat, in cursus velit ultrices. Cras ut finibus massa. Phasellus volutpat velit eget mauris eleifend pharetra. Aenean metus nulla, vestibulum non pulvinar ac, euismod a nisl. Nam nisi orci, tincidunt pulvinar auctor consequat, rutrum vitae lacus. Fusce rhoncus ex nec sapien vehicula, tempus congue lorem ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Etiam maximus id erat sed fringilla.\r\n\r\nSed quam tortor, efficitur nec blandit sed, placerat at risus. Morbi gravida laoreet velit, quis accumsan arcu feugiat in. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras vitae auctor ex, vel ullamcorper lacus. Sed vel mollis enim. Phasellus sollicitudin, odio quis fringilla venenatis, sapien erat venenatis odio, sed commodo purus metus at ex. Nullam et cursus dui. Donec rutrum libero quis turpis euismod iaculis. Sed et euismod mauris. Nulla sagittis eros ac maximus fermentum. Aliquam sagittis enim sed lacus fringilla, id mollis neque venenatis. Aliquam erat volutpat. Aliquam erat volutpat. Integer lobortis finibus feugiat. Phasellus efficitur, nisi at cursus molestie, ipsum turpis bibendum urna, sit amet blandit turpis mi vitae velit.\r\n\r\n</div>\r\n</div>\r\n</div>','Clase de box','','publish','closed','closed','','clase-de-box','','','2019-10-20 15:05:20','2019-10-20 15:05:20','',0,'http://gymfitness.local/?post_type=gymfitness_clases&#038;p=62',0,'gymfitness_clases','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (21,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,2,0);
INSERT INTO `wp_term_relationships` VALUES (38,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,6);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:4:{s:64:\"bcadd3df03c47ab59208de6d0600e51945f8664463f843310db660e15a52a77c\";a:4:{s:10:\"expiration\";i:1571673645;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.56078\";s:5:\"login\";i:1571500845;}s:64:\"f1bd9078dd50c8f4ba2f440e58c9bc977cbc57b647ad496724aadadc2bbaa7c3\";a:4:{s:10:\"expiration\";i:1571719258;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.56078\";s:5:\"login\";i:1571546458;}s:64:\"fc168cddba3f6c3381a79add03cc02ad33b0583f043f5329ccaa8dcab0e5508b\";a:4:{s:10:\"expiration\";i:1571762309;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.56078\";s:5:\"login\";i:1571589509;}s:64:\"42e5c725cbc49206b0a8a258be54cdfba9f623624eb06daaaa172f9a8cd2129e\";a:4:{s:10:\"expiration\";i:1571779288;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:135:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36 OPR/63.0.3368.56078\";s:5:\"login\";i:1571606488;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"192.168.95.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1571540945');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_page','a:4:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (27,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BXuuV6yWwcuORBaWJcUOy7pfs/lbuQ/','admin','dev-email@flywheel.local','','2019-10-19 14:16:47','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23  1:48:15
