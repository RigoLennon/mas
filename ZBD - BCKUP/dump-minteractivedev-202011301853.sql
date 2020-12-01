-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: minteractivedev
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_08_12_230811_create_products_table',1),(4,'2016_06_01_000001_create_oauth_auth_codes_table',2),(5,'2016_06_01_000002_create_oauth_access_tokens_table',2),(6,'2016_06_01_000003_create_oauth_refresh_tokens_table',2),(7,'2016_06_01_000004_create_oauth_clients_table',2),(8,'2016_06_01_000005_create_oauth_personal_access_clients_table',2),(9,'2020_08_31_161114_update_users_table',3),(10,'2020_08_31_170337_create_restaurants_table',3),(11,'2020_09_07_211617_update_products_table',4),(12,'2020_09_07_212504_create_product_categories_table',4),(13,'2020_09_08_185800_add_cat_names__products_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('05938319c6b0f49d3525ff73953cf9cc8d27cc50f37efeb6949d86c4fad122ff539cb3950bd20484',1,1,'Token personal','[]',0,'2020-08-18 23:56:02','2020-08-18 23:56:02','2020-08-25 18:56:02'),('0682e8f9f8d8b327c521761813d5e15b307f754ba9b4d9947230db09b9c39f195df5da40269b7db3',4,1,'Token personal','[]',0,'2020-09-10 22:26:13','2020-09-10 22:26:13','2021-09-10 17:26:13'),('0c77e16a7b32778eea10d195f3a4bf643b87b52a1a338dff6886070a8a4fca83da926e36270496e1',4,1,'Token personal','[]',0,'2020-08-31 19:40:27','2020-08-31 19:40:27','2021-08-31 14:40:27'),('13582fc421a076b31ba9e2ae039f568236058a8ef8d80a6be527588b0344023fe5e008c1c5c283cd',4,1,'Token personal','[]',0,'2020-08-31 20:02:32','2020-08-31 20:02:32','2021-08-31 15:02:32'),('19c934899495ea7f2951000a608a6fb87652c3758b05edb86f538e4285b39768eefb8018b1059170',1,1,'Token personal','[]',0,'2020-08-20 00:02:33','2020-08-20 00:02:33','2021-08-19 19:02:33'),('33050749289da6b0400d54dbd061817aad571ea4da96670bab6d8340b502cd626789619f57f66814',4,1,'Token personal','[]',0,'2020-08-31 19:49:33','2020-08-31 19:49:33','2021-08-31 14:49:33'),('5710594da4f041b114b6099d6dc9d022d919b8224f40681528a7944a1932dd8c52664ff4f2e84af5',4,1,'Token personal','[]',0,'2020-09-01 02:58:35','2020-09-01 02:58:35','2021-08-31 21:58:35'),('594a975013655630c6ae397376d7f5025d4caca4a0744bfa70bd03c6d5279f214ab50e7376ae068d',4,1,'Token personal','[]',0,'2020-08-31 19:41:36','2020-08-31 19:41:36','2021-08-31 14:41:36'),('5e4fd424e5a6429e27bc11faed7906fffc8620b0bcf3b57be78d98831a1c7113589c872be9c23a77',4,1,'Token personal','[]',0,'2020-08-27 21:25:29','2020-08-27 21:25:29','2021-08-27 16:25:29'),('60e49e41f4f94a9a174364ab6b9991aa30034a3458e2eca565ae407f818e1ee95bed8d8a6aec6660',1,1,'Token personal','[]',0,'2020-08-18 23:42:21','2020-08-18 23:42:21','2020-08-25 18:42:21'),('616f87b1cb42bab92ec32a303d6f2bcdb1d0d33244a5fddc6ddfa06028865dff7e7b36279f126fc4',5,1,'Token personal','[]',0,'2020-08-21 04:35:27','2020-08-21 04:35:27','2021-08-20 23:35:27'),('6afc7c3a9d4a2e3caae927be8316d6cfae46857a8119b36614c44142cf2be67718245a0692f7cb47',4,1,'Token personal','[]',0,'2020-09-30 04:39:12','2020-09-30 04:39:12','2021-09-29 23:39:12'),('6b692a4685f20f8fe279ee895e017fc0e9cae65a12a1bc7aba8dfbef52d8b07c12f4bfc7a27254ad',3,1,'Token personal','[]',0,'2020-08-21 04:23:39','2020-08-21 04:23:39','2021-08-20 23:23:39'),('6cbc0a0d6255cedfda22c692c2bd8acdf93df2591daf90acfe4ecf9e3de3e5846922f0106a62f3d3',4,1,'Token personal','[]',0,'2020-08-31 20:40:22','2020-08-31 20:40:22','2021-08-31 15:40:22'),('6ef4d50e17d2692cc3424522a16ca5b3fd37b667232e8e01639f9fac15ab5fa43df2c508ee77549f',1,1,'Token personal','[]',0,'2020-08-20 03:13:09','2020-08-20 03:13:09','2021-08-19 22:13:09'),('7183182a8af6c865d0655320540555ac0ac993ffc90ecfed084beaf296ce62fc7a531fa3271480b1',4,1,'Token personal','[]',0,'2020-08-21 04:35:59','2020-08-21 04:35:59','2021-08-20 23:35:59'),('7da24fc3aeec2bd5f615ba09f8661e83805f7fd8db7b5dbffde399622772133fdbcec5942b26f8f1',4,1,'Token personal','[]',0,'2020-08-21 04:47:28','2020-08-21 04:47:28','2021-08-20 23:47:28'),('92e8c851d43c28432733c0fb986bb8321fad5e726c7632857fa7a56e4fe87673e368d5264f8f83da',4,1,'Token personal','[]',0,'2020-08-31 19:56:41','2020-08-31 19:56:41','2021-08-31 14:56:41'),('9f3fa3b9ffd0ae4bf5f169966ff71fe2af022ed7bd10ab924d30e95993b5a00a5b4c7b1628afa4cf',4,1,'Token personal','[]',0,'2020-08-28 03:03:33','2020-08-28 03:03:33','2021-08-27 22:03:33'),('a0746d6378e9018fa2421e009aefc187d33130e64abb5b9365c1937827f378779247322f3de531e0',4,1,'Token personal','[]',0,'2020-09-01 02:51:12','2020-09-01 02:51:12','2021-08-31 21:51:12'),('a3152b50818e76d2b97ac4b374e1df6874d21c916093be883a9671ede4e2d1b65c87aa9cc27d1e9e',4,1,'Token personal','[]',0,'2020-09-30 19:55:18','2020-09-30 19:55:18','2021-09-30 14:55:18'),('a608aa1e35b68e113d406a81c3d3cf073a5256cdff90507c9deffa5d821da0a583a3bfeda456112b',1,1,'Token personal','[]',0,'2020-08-19 20:58:04','2020-08-19 20:58:04','2021-08-19 15:58:04'),('b1bcab4bc02389bfc212dd0503304c910c004d7000369e8c426304fe712550ce59b294499a08248c',4,1,'Token personal','[]',0,'2020-09-02 04:03:27','2020-09-02 04:03:27','2021-09-01 23:03:27'),('b92bebb158c2c64188f7d31eba5b0a803676b3ca0358a5b9013977dfaa44052bcd7fee9b6feeed97',4,1,'Token personal','[]',0,'2020-09-02 00:03:22','2020-09-02 00:03:22','2021-09-01 19:03:22'),('c06f5a933280a515e6ecbe511bd3ec2403f2dad8722440bf24c72dd8a34858e694b6a990f771915a',4,1,'Token personal','[]',0,'2020-08-31 21:03:59','2020-08-31 21:03:59','2021-08-31 16:03:59'),('c4e13ffa1379415c1b38e61d38be9cfdc24076b8bf79b792ef4a34bdd5e191536236a27f4c2e2e62',4,1,'Token personal','[]',0,'2020-08-24 20:34:23','2020-08-24 20:34:23','2021-08-24 15:34:23'),('c7c5b56df6809573112a16479fac7d92584727608725d5a2ba452f66cb23a132bbd361a7782432ec',4,1,'Token personal','[]',0,'2020-08-27 21:25:40','2020-08-27 21:25:40','2021-08-27 16:25:40'),('c8cfdd1c347f904170a1ef72c9361729821244755aacfc5efa5b03a2e3a86f7c12a3dc51f7b44407',4,1,'Token personal','[]',0,'2020-09-18 23:15:33','2020-09-18 23:15:33','2021-09-18 18:15:33'),('c9346caeb4f5f4544a11f28ce8bfc763d7b533ec9190c69686580a7817c8dd3502f9e09418e39877',4,1,'Token personal','[]',0,'2020-09-01 02:50:22','2020-09-01 02:50:22','2021-08-31 21:50:22'),('d03aff320e5bbe8ba10668dbb93f99b121c97262ce572dcdc6c56162cd6397387607cc1ed783dd40',1,1,'Token personal','[]',0,'2020-08-19 20:58:00','2020-08-19 20:58:00','2020-08-26 15:58:00'),('d5030688ed504a78e1d60c5d31d8689cb81c7b56b7586a7e50dae6471a67e3835322451f7cb072c2',1,1,'Token personal','[]',1,'2020-08-18 23:45:43','2020-08-18 23:45:43','2020-08-25 18:45:43'),('d57b911b16070f0b3440ab3873af12867ad633ac001b1650651f991aaea9aa0cb097391cc6ff8d2f',4,1,'Token personal','[]',0,'2020-09-02 03:17:08','2020-09-02 03:17:08','2021-09-01 22:17:08'),('f06e65cd886eb87fb88564649d54275c9a1235542217a1cdccaefbd67a96e8a1cccc12cab9978c04',4,1,'Token personal','[]',0,'2020-09-09 03:02:33','2020-09-09 03:02:33','2021-09-08 22:02:33'),('fc221e0e93279fd130d89a1492bdf5dc8ac3b88341c96d722e0237fe393f06262999b2abb0eb4899',4,1,'Token personal','[]',0,'2020-08-27 21:55:32','2020-08-27 21:55:32','2021-08-27 16:55:32'),('fd29c245fc2c229eed89ba00e7c1a4a73c95a9c3f8deb6d5c8fc6aae70870c883926846de60475b0',1,1,'Token personal','[]',0,'2020-08-19 23:56:56','2020-08-19 23:56:56','2021-08-19 18:56:56');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','CY0EtQB4na1k2LSc3v1jlCgnugWGLHSpOBqhgAQ2','http://localhost',1,0,0,'2020-08-18 22:24:13','2020-08-18 22:24:13'),(2,NULL,'Laravel Password Grant Client','K2bD5z7f4S4I7ieBtHsSiItzr1IIU4DyXekVF0X5','http://localhost',0,1,0,'2020-08-18 22:24:13','2020-08-18 22:24:13');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-08-18 22:24:13','2020-08-18 22:24:13');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rest_id` int NOT NULL,
  `cat_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (9,NULL,NULL,'Alimentos',2,1),(10,NULL,NULL,'Bebidas',2,1),(11,NULL,NULL,'Cerveza Sake Soju',2,1),(29,'2020-11-20 04:36:06','2020-11-20 04:36:06','cat tester 2',1,1),(33,'2020-11-26 06:23:14','2020-11-26 06:23:14','Comida Rapida',3,1),(37,'2020-11-27 02:00:26','2020-11-27 04:52:53','test viausl',2,0),(38,'2020-11-27 04:54:34','2020-11-27 05:02:52','test delete',2,0),(39,'2020-11-27 05:03:11','2020-11-28 00:20:07','test',2,0),(40,'2020-11-28 00:20:13','2020-11-28 00:22:14','test',2,0),(41,'2020-12-01 06:03:58','2020-12-01 06:04:01','test',2,0),(42,'2020-12-01 06:04:59','2020-12-01 06:21:58','test',2,0),(43,'2020-12-01 06:46:06','2020-12-01 06:46:40','test',2,0);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `short_descrip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_user_id` int DEFAULT NULL,
  `cat_id` int DEFAULT NULL,
  `cat_id_2` int DEFAULT NULL,
  `cat_id_3` int DEFAULT NULL,
  `prod_rest_id` int DEFAULT NULL,
  `image_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2020-08-13 20:44:44','2020-08-13 20:44:44','Floy Yundt','Inventore est fugiat necessitatibus. Pariatur esse asperiores enim autem in consequatur. Voluptate recusandae deserunt et. Illum accusantium voluptates distinctio.',28,'',4,1,0,0,0,''),(2,'2020-08-13 20:44:44','2020-08-13 20:44:44','Erika Dickinson','Qui perspiciatis officia voluptate. In culpa pariatur suscipit aut. Occaecati voluptas vero dolorem odio.',53,'',4,1,0,0,0,''),(3,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mrs. Kasey Daugherty','Officia dolores nostrum harum quo similique dolorem est. Rerum assumenda sapiente ipsam sint. Et ea dolores necessitatibus in maxime quidem sit occaecati. Quam et distinctio ut eos. Sit voluptatem consequatur et vero.',73,'',4,1,0,0,0,''),(4,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mertie Hermiston IV','Dolores fuga quae amet quisquam rerum quas enim. Et hic sed tenetur. Placeat quaerat consequatur aut aut aut numquam nostrum. Exercitationem reprehenderit nemo placeat eveniet.',99,'',4,1,0,0,0,''),(5,'2020-08-13 20:44:44','2020-08-13 20:44:44','Dr. Carleton Cole','Quos et voluptate saepe error doloremque. Est maxime modi eveniet minima ipsam laudantium eveniet. Doloribus officiis non corrupti est.',66,'',4,1,0,0,0,''),(6,'2020-08-13 20:44:44','2020-08-13 20:44:44','Kiarra Ebert','Rerum provident tempore in nihil quo voluptatem et. Accusantium dolorem tenetur neque non optio non. Deleniti ab autem optio consequatur cupiditate adipisci aut ipsam.',67,'',4,1,0,0,0,''),(7,'2020-08-13 20:44:44','2020-08-13 20:44:44','Evalyn Carroll','Ut dolorum accusantium aspernatur. Repellendus ipsum ex aut eos praesentium tenetur. Commodi numquam voluptatem et et reprehenderit beatae repellendus.',2,'',4,1,0,0,0,''),(8,'2020-08-13 20:44:44','2020-08-13 20:44:44','Emilie Hegmann','Consequatur officiis consequatur dolores inventore. A nesciunt qui sed. Voluptatem ipsam molestiae autem voluptatem sunt enim. Quae atque cumque rem molestiae id iure mollitia.',63,'',4,1,0,0,0,''),(9,'2020-08-13 20:44:44','2020-08-13 20:44:44','Bryana Luettgen','Consequuntur iste est debitis. Quo dolor fuga earum inventore. Magni quos tempore quia quae libero quisquam doloribus.',88,'',4,1,0,0,0,''),(10,'2020-08-13 20:44:44','2020-08-13 20:44:44','Germaine Feil','Fugit molestias in ut quasi quas id. In aut odio optio autem molestias esse laboriosam. Quo aliquid quas iste fugit ut dolores quae.',16,'',4,1,0,0,0,''),(11,'2020-08-13 20:44:44','2020-08-13 20:44:44','Lucie Waelchi','Nobis rerum quo corrupti voluptatem et. Corporis voluptatem nesciunt et qui. Fugit molestias velit aliquid et ut quo. Est pariatur aut consequuntur natus. Sint dolorum adipisci tenetur ducimus et deserunt quia molestiae.',44,'',4,1,0,0,0,''),(12,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mrs. Calista Prosacco Sr.','Voluptatem aut consequuntur amet. Autem eius sed cum et. Incidunt qui iusto aut error exercitationem.',95,'',4,1,0,0,0,''),(13,'2020-08-13 20:44:44','2020-08-13 20:44:44','Jacklyn Gerhold','In cumque sed ut iure natus qui. Ex magnam mollitia et doloribus. Sint rerum sit ab non perferendis dolorem eos.',63,'',4,1,0,0,0,''),(14,'2020-08-13 20:44:44','2020-08-13 20:44:44','Ernie Murray','Vel dolores voluptate aspernatur tempore voluptate omnis repellendus. Facere dolor dignissimos animi assumenda qui nihil. Molestiae debitis veritatis magnam.',95,'',4,1,0,0,0,''),(15,'2020-08-13 20:44:44','2020-08-13 20:44:44','Rodger Williamson','Dicta repellendus esse quia et a quidem accusamus aliquid. Sunt suscipit voluptas accusantium cumque neque. Et et quos aut et. Voluptate voluptatem asperiores ex facere.',67,'',4,1,0,0,0,''),(16,'2020-08-13 20:44:44','2020-08-13 20:44:44','Retha Swift','Tenetur explicabo qui tempora occaecati quasi nesciunt labore. Voluptatem iure deleniti qui labore. Quae est ad ut eos eos fuga quia.',30,'',4,1,0,0,0,''),(17,'2020-08-13 20:44:44','2020-08-13 20:44:44','Prof. Brady Daugherty','Ea libero non esse nisi. Et iusto doloribus itaque sed et. Molestiae hic non iste neque eum totam.',64,'',4,1,0,0,0,''),(18,'2020-08-13 20:44:44','2020-08-13 20:44:44','Martina Hauck','Perspiciatis laboriosam et omnis accusamus vero eius odit. Et odit tempore nihil quibusdam. Nihil incidunt aut et. Dolor ut molestias iusto possimus quia. Itaque ea perferendis suscipit aut rerum.',74,'',4,1,0,0,0,''),(19,'2020-08-13 20:44:44','2020-08-13 20:44:44','Devon Conroy','Maxime aut suscipit assumenda voluptas eos modi. Accusantium pariatur nam occaecati nostrum. Voluptas deserunt tenetur dolorem ipsa nostrum perferendis aliquid repellendus. Error labore velit dolores quia voluptatem.',71,'',4,1,0,0,0,''),(20,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mrs. Elvera Bogisich','Et ullam vitae animi vitae omnis iusto quaerat. Aperiam natus velit velit et dicta cupiditate sit placeat. Deleniti facere sed et ea quos consequatur.',99,'',4,1,0,0,0,''),(21,'2020-08-13 20:44:44','2020-08-13 20:44:44','Raleigh Okuneva','Eos et ut accusantium ut molestias eius. Omnis nihil saepe rerum voluptatibus voluptatum. Distinctio incidunt ea quia commodi aut. Eveniet qui tempore et voluptatem qui.',99,'',4,1,0,0,0,''),(22,'2020-08-13 20:44:44','2020-08-13 20:44:44','Tabitha Langworth','Nihil dolorum voluptates numquam et inventore. Illum assumenda eos eos aperiam et. Qui quo adipisci maiores quibusdam quo quo.',44,'',4,1,0,0,0,''),(23,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mr. Buddy West','Occaecati aut velit quam impedit eveniet quasi. Unde ipsam minus nihil vitae iusto molestias quos reiciendis. Labore id ea veniam nulla quibusdam.',74,'',4,1,0,0,0,''),(24,'2020-08-13 20:44:44','2020-08-13 20:44:44','Stefan Jakubowski','Eum minus sit facere autem. Provident reprehenderit eum sapiente et aspernatur at. Laborum amet illo quis. Ad consequatur fuga rerum dolor aut.',35,'',4,1,0,0,0,''),(25,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mohammed Moore V','Est perspiciatis natus consequatur qui minima sit. Suscipit aut earum fugit dolores velit non. Accusamus ad atque reprehenderit earum autem et quo aut.',6,'',4,1,0,0,0,''),(26,'2020-08-13 20:44:44','2020-08-13 20:44:44','Tamara Kshlerin','Reprehenderit dicta dolore ad a molestiae omnis eum. Beatae velit qui nobis nihil asperiores. Eligendi odio adipisci itaque at. Porro cupiditate enim amet impedit earum.',58,'',4,1,0,0,0,''),(27,'2020-08-13 20:44:44','2020-08-13 20:44:44','Ms. Mellie Kilback','Dolores qui accusamus sunt vel ducimus inventore. Fugiat adipisci dolorum eos est assumenda ratione. Porro nam reiciendis facere distinctio minus.',50,'',4,1,0,0,0,''),(28,'2020-08-13 20:44:44','2020-08-13 20:44:44','Dr. Carey Johns Sr.','Ratione harum facere repellat impedit qui consequatur. Cupiditate expedita at sapiente molestias voluptatem enim. Quo dolorum sequi et ut illum eum.',37,'',4,1,0,0,0,''),(29,'2020-08-13 20:44:44','2020-08-13 20:44:44','Verna Schulist III','Unde omnis animi sit excepturi possimus voluptatem ipsum. Unde omnis et dolorem qui laborum rerum autem.',10,'',4,1,0,0,0,''),(30,'2020-08-13 20:44:44','2020-08-13 20:44:44','Ubaldo Bahringer','Nisi aut error adipisci qui maxime cum odio neque. Repudiandae possimus id expedita rerum vel. Corrupti vitae ut enim vel.',32,'',4,1,0,0,0,''),(31,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mr. Oliver Reynolds DVM','Ipsam cum corrupti esse aut hic et eaque. Suscipit atque quia aliquid suscipit cum iure nesciunt. Optio provident saepe numquam ut et voluptatem.',34,'',4,1,0,0,0,''),(32,'2020-08-13 20:44:44','2020-08-13 20:44:44','Roberto Collier IV','Voluptas non et omnis rerum. Voluptatibus quos aut ad eligendi nostrum accusantium. Rerum et incidunt eius doloremque consequatur.',43,'',4,1,0,0,0,''),(33,'2020-08-13 20:44:44','2020-08-13 20:44:44','Jenifer Kessler','Autem corporis consequatur omnis aut. Earum omnis enim aspernatur aperiam recusandae fugit assumenda. Repudiandae non voluptatum dignissimos cum fugit sequi illo.',13,'',4,1,0,0,0,''),(34,'2020-08-13 20:44:44','2020-08-13 20:44:44','Orion Cassin','Voluptatum distinctio sunt voluptas consequatur architecto. Ut temporibus aut aut tempora quam. Qui atque nostrum cupiditate quidem qui est ratione. Voluptas ex quia laboriosam et ut eum.',75,'',4,1,0,0,0,''),(35,'2020-08-13 20:44:44','2020-08-13 20:44:44','Dr. Dimitri Wisozk','Et sed ut officiis aut qui repudiandae. Eius et nulla magnam quos cupiditate adipisci. Voluptatem maxime et commodi natus. Qui nulla non nobis. Excepturi nihil quaerat vel.',96,'',4,1,0,0,0,''),(36,'2020-08-13 20:44:44','2020-08-13 20:44:44','Roselyn Legros','Quia et eos omnis deserunt blanditiis. Consequatur voluptatibus odio dolor placeat nesciunt. Omnis consequatur quia quia ut dicta repudiandae. Laborum aut esse ut consequatur vel voluptas et.',10,'',4,1,0,0,0,''),(37,'2020-08-13 20:44:44','2020-08-13 20:44:44','Rowena Baumbach','Quaerat blanditiis aliquid nemo autem quo earum. Doloremque dolore numquam praesentium soluta. Voluptas sunt eum quia sit dicta consequuntur.',56,'',4,1,0,0,0,''),(38,'2020-08-13 20:44:44','2020-08-13 20:44:44','Walton Schuppe','Iusto harum consectetur nemo expedita. Laboriosam est libero aperiam dignissimos minima enim. Eveniet error perferendis cumque.',70,'',4,1,0,0,0,''),(39,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mr. Lamar Feeney V','Blanditiis ducimus quia qui tempora ut rerum. Accusantium cum eaque omnis voluptatibus reprehenderit. Ipsa aut praesentium sit illo assumenda sunt. Est nemo quidem mollitia ratione enim velit praesentium. Est omnis consectetur ipsa laudantium.',11,'',4,1,0,0,0,''),(40,'2020-08-13 20:44:44','2020-08-13 20:44:44','Dr. Jensen Haag PhD','Aut excepturi et et. Expedita eveniet et fuga in sed placeat.',82,'',4,1,0,0,0,''),(41,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mr. Louvenia Bode','Necessitatibus commodi voluptas est voluptate. Cumque nihil fuga quisquam eos. Blanditiis adipisci quia est quaerat. Ullam velit labore nihil voluptatibus praesentium rerum. Magnam et nihil qui ut et.',3,'',4,1,0,0,0,''),(42,'2020-08-13 20:44:44','2020-08-13 20:44:44','Brandt Marks IV','Id delectus soluta explicabo facere sint dolorem asperiores. Deserunt rerum molestiae numquam beatae illum iusto voluptas recusandae. Dolores quisquam voluptatem deserunt neque laudantium est autem.',23,'',4,1,0,0,0,''),(43,'2020-08-13 20:44:44','2020-08-13 20:44:44','Prof. Jessika Langosh','Saepe accusantium magnam rem molestias voluptatem deleniti hic eum. Esse praesentium est expedita ut. Debitis dignissimos exercitationem provident.',70,'',4,1,0,0,0,''),(44,'2020-08-13 20:44:44','2020-08-13 20:44:44','Westley Ratke','Numquam et nisi harum et harum recusandae praesentium. Doloribus dolor non suscipit voluptas. Ad debitis voluptates totam est enim nihil pariatur pariatur.',58,'',4,1,0,0,0,''),(45,'2020-08-13 20:44:44','2020-08-13 20:44:44','Joshuah Kozey','Consequatur ex dolorem tenetur aliquam et pariatur ab id. Eos optio eaque et dolores. Omnis odit ut molestiae odit ut. Ut aspernatur pariatur delectus expedita rerum sequi.',79,'',4,1,0,0,0,''),(46,'2020-08-13 20:44:44','2020-08-13 20:44:44','Raymundo Cruickshank','Placeat sequi ea nihil autem cumque ducimus quia. Est quibusdam aut deleniti sapiente quia rerum. Eveniet dolor molestias quos sed id. Rerum rerum doloremque aut deleniti dolorem adipisci atque.',47,'',4,1,0,0,0,''),(47,'2020-08-13 20:44:44','2020-08-13 20:44:44','Mr. Floy O\'Connell V','Aliquid quae nam aut corporis quod. Ad voluptatem velit eligendi aut vel expedita rerum. Et est ut ducimus illo expedita. Eum fuga tenetur nihil aut eum.',75,'',4,1,0,0,0,''),(48,'2020-08-13 20:44:44','2020-08-13 20:44:44','Stanford Rath','Animi reiciendis neque molestias exercitationem ut dolor nobis nostrum. Qui autem culpa tempore velit soluta non ut. Ipsam ut dolores ea nemo quae expedita necessitatibus ad. Aut corrupti quaerat a et labore molestias nesciunt.',5,'',4,1,0,0,0,''),(49,'2020-08-13 20:44:44','2020-08-13 20:44:44','Miss Velva Ryan MD','Quasi facere rerum et id et. Dolor alias et veniam non quae numquam praesentium quae. Dignissimos sequi consequatur ea quam vero ullam earum.',69,'',4,1,0,0,0,''),(51,'2020-08-14 03:14:23','2020-08-14 03:14:23','Rigo','Esta es la descripcion larga que ira en el detalle del producto',300,'Descricion corta que ira en la lista de todos los productos',4,1,1,1,0,''),(52,'2020-09-11 03:31:48','2020-09-11 03:31:48','tester','resretester',123,'testeer',4,1,NULL,NULL,0,''),(53,'2020-09-11 21:46:38','2020-09-11 21:46:38','tester','resretester',123,'testeer',NULL,1,NULL,NULL,0,''),(54,NULL,NULL,'nam','des',456,'shrt',NULL,1,NULL,NULL,0,''),(55,NULL,NULL,'ff','ff',123,'ddd',NULL,1,NULL,NULL,0,''),(56,NULL,NULL,'nombre','Descripcion',12345,'Descripcion corta',NULL,1,NULL,NULL,0,''),(57,NULL,NULL,'Hamburguesa','Es una burger clasica',50,'Doble queso',NULL,1,NULL,NULL,0,''),(58,NULL,NULL,'Tacos','Tacos de perro',20,'Tacos perrones',NULL,1,NULL,NULL,0,''),(59,NULL,NULL,'Torta','Tortas de perro',60,'Tortas perronas',NULL,1,NULL,NULL,0,''),(60,NULL,NULL,'Refresco','Refresco sabor a perro',15,'Refresco perron',NULL,1,NULL,NULL,0,''),(61,NULL,NULL,'estilos','prueba de esitlos',200,'Estilachos',NULL,NULL,NULL,NULL,0,''),(62,NULL,NULL,'test categoria','Descripcion categoria',200,'Resumen de la categoria',NULL,NULL,NULL,NULL,0,''),(63,NULL,NULL,'cate test 2','cat test 2',200,'cat test 2',NULL,NULL,NULL,NULL,0,''),(64,NULL,NULL,'cate test 4','cat test 4',123,'cat test 4',NULL,1,NULL,NULL,0,''),(65,NULL,NULL,'test categoria 5','cat test 5',888,'cat test 5',NULL,2,NULL,NULL,0,''),(66,NULL,NULL,'asdasda','asdasd',8888,'asdasdasd',NULL,1,NULL,NULL,0,''),(67,NULL,NULL,'aaaaa','eeeeee',0,'iiiii',NULL,2,NULL,NULL,0,''),(68,'2020-09-29 02:17:50','2020-09-29 02:17:50','test validator','test validator',404,'test validator',NULL,NULL,NULL,NULL,0,''),(69,'2020-09-29 03:22:20','2020-09-29 03:22:20','Agua','validator test2',20,'test validator2',NULL,NULL,NULL,NULL,0,''),(70,'2020-09-29 22:36:42','2020-09-29 22:36:42','Agua','validator test2',20,'test validator2',NULL,1,NULL,NULL,0,''),(71,'2020-09-30 23:23:31','2020-09-30 23:23:31','Agua','TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09',20,'TEST 30/09',NULL,1,NULL,NULL,0,''),(72,'2020-09-30 23:31:18','2020-09-30 23:31:18','Agua','TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09',20,'TEST 30/09',NULL,1,NULL,NULL,0,''),(73,'2020-10-01 03:10:19','2020-10-01 03:10:19','Agua','TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09',20,'TEST 30/09',NULL,1,NULL,NULL,0,''),(74,'2020-10-01 03:22:27','2020-10-01 03:22:27','Agua','TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09',20,'TEST 30/09',NULL,1,NULL,NULL,0,''),(75,'2020-10-01 03:22:34','2020-10-01 03:22:34','asasasas','TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09',20,'TEST 30/09',NULL,1,NULL,NULL,0,''),(76,NULL,NULL,'test de valida front','Descripcion categoria',11111,'ddddd1',NULL,1,NULL,NULL,0,''),(77,NULL,NULL,'test de valida front','Descripcion categoria',444,'cat test 5',NULL,1,NULL,NULL,0,''),(78,NULL,NULL,'gg','Descripcion categoria',666,'Resumen de la categoria',NULL,1,NULL,NULL,0,''),(79,NULL,NULL,'test de valida front','Descripcion categoria',777,'Resumen de la categoria',NULL,1,NULL,NULL,0,''),(80,NULL,NULL,'ppp','Descripcion categoria',888,'Resumen de la categoria',NULL,1,NULL,NULL,0,''),(81,'2020-10-01 20:36:18','2020-10-01 20:36:18','asasasas','TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09 TEST 30/09',20,'TEST 30/09',NULL,1,NULL,NULL,0,''),(87,'2020-11-11 05:53:01','2020-11-11 05:53:01','test cate','test cate',50,'test c',NULL,NULL,NULL,NULL,2,''),(88,'2020-11-11 06:06:33','2020-11-11 06:06:33','testc2','tes 2',20,'tesct 2',NULL,NULL,NULL,NULL,2,''),(91,'2020-11-11 23:09:53','2020-11-12 01:49:38','test ded','test',5000,'t',NULL,20,NULL,NULL,2,''),(92,'2020-11-11 23:48:36','2020-11-11 23:48:36','prueba dele cat y produ','prueba dele cat y produ',855,'prueba dele cat y produ',NULL,21,NULL,NULL,2,''),(94,'2020-11-12 01:59:01','2020-11-12 01:59:01','producto test','producto de prueba',1111,'test prod',NULL,22,NULL,NULL,2,''),(99,'2020-11-20 04:36:45','2020-11-20 04:36:45','prod tester2','prod tester2',11111,'prod tester',NULL,29,NULL,NULL,1,''),(101,'2020-11-24 01:32:32','2020-11-24 01:32:32','test','test',123,'test',NULL,NULL,NULL,NULL,NULL,NULL),(102,'2020-11-24 01:33:24','2020-11-24 01:33:24','test2','test2',222,'test c',NULL,NULL,NULL,NULL,NULL,NULL),(103,'2020-11-24 01:34:29','2020-11-24 01:34:29','test3','test3',23,'testc 3',NULL,10,NULL,NULL,NULL,NULL),(114,'2020-11-24 04:44:29','2020-11-24 04:44:29','test img 10','test img 10',10,'test img 10',NULL,11,NULL,NULL,2,'20201123224429.png'),(115,'2020-11-24 05:44:10','2020-11-24 05:44:10','test img 11','test img 11',1111,'test img 11',NULL,11,NULL,NULL,2,'20201123234410.png'),(116,'2020-11-26 06:22:34','2020-11-26 06:23:27','Hamburguesa','Rica hambuerguesa con carne de res vegetales y queso amarillo tipo americano',45,'Hamburguesa de res con queso',NULL,33,NULL,NULL,3,'20201126002234.png'),(117,'2020-12-01 06:46:30','2020-12-01 06:46:53','test','test',500,'test',NULL,10,NULL,NULL,2,'20201201004630.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `restaurants_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'2020-09-15 05:00:00',NULL,'Rest Test','Av. Test #210',1),(2,'2020-09-15 05:00:00',NULL,'Daruma','Av. Lazaro Cardenas',1),(3,'2020-11-23 06:00:00',NULL,'La casa de la Pizza','Blvd Miguel de la Madrid #43',1);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_restaurant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '404',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `rol` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Rigo','mail@mail.com',NULL,'$2y$10$kzPfEvSEjLW4.rvtQsFcBuIkxNhV0X.92QUJKNxbbRA5fbMPuwhL6',NULL,'2020-08-18 23:35:17','2020-08-18 23:35:17','',0,0),(2,'test','test1@mail.com',NULL,'$2y$10$F80VYuEr9XuPzkH.SRq87O/Tn99kB.LkzXJQSPScgMSK/hKKpEhWq',NULL,'2020-08-20 21:37:05','2020-08-20 21:37:05','',0,0),(3,'rigo','mail2@mail.com',NULL,'$2y$10$6Q0xosn6Zs09ZAHQ15ceTOARhUscrEKbJywIvputESXN1t0zIBKHW',NULL,'2020-08-21 04:21:46','2020-08-21 04:21:46','',0,0),(4,'Rigoberto Israel Alcantar Aguilar','rigobertoalcantar95@gmail.com',NULL,'$2y$10$inLvxmrfohyM/GIjSXOt3.r0gk0EhtzUOgRpF5kGHA2BBNx1LeVie',NULL,'2020-08-21 04:24:12','2020-08-21 04:24:12','2',1,0),(5,'testname','testname@mail.com',NULL,'$2y$10$TLMpacWdovg/hrWZJbIHCOI8KiDmnm8inoBOyKyaiPNS20bR0IDty',NULL,'2020-08-21 04:34:42','2020-08-21 04:34:42','',0,0),(7,'tester2','tester2@mail.com',NULL,'$2y$10$lBsWh0INMafpUUVs3EXuYOpZUPItJ.LBr1gpZ0C5X9J22XQ1qKSGK',NULL,'2020-11-20 01:21:40','2020-11-20 01:21:40','1',0,NULL),(8,'tester hostinger','testerhostinger@mail.com',NULL,'$2y$10$AA7VNySff3d1PGNE933RWuSqkchnH6E9E13wqeZ27zJ2MbXHcGh.m',NULL,'2020-11-20 23:53:15','2020-11-20 23:53:15','3',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'minteractivedev'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 18:53:28
