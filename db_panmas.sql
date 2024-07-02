-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_panmas
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_06_30_140544_create_sekolahs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sekolah`
--

DROP TABLE IF EXISTS `sekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sekolah` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelurahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sekolah`
--

LOCK TABLES `sekolah` WRITE;
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;
INSERT INTO `sekolah` VALUES (1,'SDN Anyelir 1','Jl. Nusantara Raya No 241 Rt 01 Rw 06','Depok Jaya','https://www.sdnanyelir1.sch.id/',NULL,NULL),(2,'SDN Anyelir 2','Jl. Anyelir Raya No.67','Depok Jaya','https://sdnanyelir2.sch.id/',NULL,NULL),(3,'SD Negeri Beji 1','Jl. Arief Rahman Hakim No.4','Depok Jaya','https://www.sdnbejitimur1depok.sch.id/',NULL,NULL),(4,'SD Negeri 1','Jl Pemuda N0 76','Depok','https://dapo.kemdikbud.go.id/sekolah/D3F586F384B37538A7BB',NULL,NULL),(5,'SD Negeri Depok 2','Jl. Stasiun No 4','Depok','http://sdnduadepok.sch.id/',NULL,NULL),(6,'SD Negeri Depok 4','Jl. Stasiun No 4','Depok','https://sekolahloka.com/data/sd-negeri-depok-4/',NULL,NULL),(7,'SD Negeri Depok 05','Jl. Pemuda No. 31','Depok','https://sekolahloka.com/data/sd-negeri-depok-5/',NULL,NULL),(8,'SD Negeri Depok 6','Jl. Parung Belimbing Sentral','Depok','https://sekolahloka.com/data/sd-negeri-depok-6/',NULL,NULL),(9,'SD Negeri Depok Baru 1','Jl. Semangka 7 Rt.01 Rw.02','Depok Jaya','https://sekolahloka.com/data/sd-negeri-depok-baru-1/',NULL,NULL),(10,'SD Negeri Depok Baru 2','Jl. Merpati Raya','Depok Jaya','https://dapo.kemdikbud.go.id/sekolah/4D690BF319DCD8B92BDE',NULL,NULL),(11,'SD Negeri Depok Baru 3','Jl Semangka 7','Depok Jaya','https://dapo.kemdikbud.go.id/sekolah/7E04A67901D73E220683',NULL,NULL),(12,'SD NEGERI DEPOK BARU 8','Jl. Mawar Raya No.1','Depok Jaya','https://dapo.kemdikbud.go.id/sekolah/FDBC6B4E583F87DD3097',NULL,NULL),(13,'SD NEGERI DEPOK JAYA 1','Jl. Nusantara Raya No 318','Depok Jaya','https://sekolahloka.com/data/sd-negeri-depok-jaya-1/',NULL,NULL),(14,'SD NEGERI MAMPANG 1','Jl. Pramuka 1 No.5','Mampang','https://sekolahloka.com/data/sd-negeri-mampang-1/',NULL,NULL),(15,'SDN Mampang 2','Jl. Damai No.25','Mampang','https://sekolahloka.com/data/sd-negeri-mampang-2/',NULL,NULL),(16,'SDN Mampang 3','Jl. Damai I No 8 Rt.3/12','Mampang','https://dapo.kemdikbud.go.id/sekolah/54B47D1E25C0CDC0DADA',NULL,NULL),(17,'SD NEGERI PANCORANMAS 1','Jl.Kembang Lio no.7 ','Depok','https://sekolahloka.com/data/sd-negeri-pancoranmas-1/',NULL,NULL),(18,'SD NEGERI PANCORANMAS 3','Jl. Cagar Alam Rt/rw : 06/18','Pancoran Mas','https://sekolahloka.com/data/sd-negeri-pancoranmas-3/',NULL,NULL),(19,'SD NEGERI PARUNG BINGUNG 1','Jl. H Muhasim No. 69','Rangkapan Jaya Baru','https://sekolahloka.com/data/sd-negeri-parung-bingung-1/',NULL,NULL),(20,'SD NEGERI PITARA 2','Jl. Pitara Raya No 165','Pancoran Mas','https://sekolahloka.com/data/sd-negeri-pitara-2/',NULL,NULL),(21,'SD NEGERI PITARA 1','Jl. Hj. Idah No.67 Rt.04/16','Pancoran Mas','https://sekolahloka.com/data/sd-negeri-pitara-1/',NULL,NULL),(22,'SD NEGERI RANGKAPAN JAYA BARU','Jl. Raya Komplek Arco','Rangkapan Jaya Baru','https://sdnrangkapanjayabaru.sch.id/',NULL,NULL),(23,'SD NEGERI RANGKAPANJAYA','Jl. Caringin RT 05 RW 04 No. 2','Rangkapan Jaya','https://sekolahloka.com/data/sd-negeri-rangkapanjaya/',NULL,NULL),(24,'SD NEGERI RAWADENOK','Jl. Keadilan Rt. 08/01','Rangkapan Jaya Baru','https://sekolahloka.com/data/sd-negeri-rawadenok/',NULL,NULL);
/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-07-02 15:36:52
