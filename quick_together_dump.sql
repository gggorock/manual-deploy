-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for osx10.17 (arm64)
--
-- Host: localhost    Database: quick_together
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

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
-- Table structure for table `available_plan`
--

DROP TABLE IF EXISTS `available_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available_plan` (
  `available_plan_id` bigint(20) NOT NULL,
  `day_of_week` smallint(6) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `weekly_available_plan_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`available_plan_id`),
  KEY `FK8ho4ri8q9ev2h3e12lug4pjej` (`weekly_available_plan_id`),
  CONSTRAINT `FK8ho4ri8q9ev2h3e12lug4pjej` FOREIGN KEY (`weekly_available_plan_id`) REFERENCES `weekly_available_plan` (`weekly_available_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_plan`
--

LOCK TABLES `available_plan` WRITE;
/*!40000 ALTER TABLE `available_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `available_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `available_plan_seq`
--

DROP TABLE IF EXISTS `available_plan_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `available_plan_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `available_plan_seq`
--

LOCK TABLES `available_plan_seq` WRITE;
/*!40000 ALTER TABLE `available_plan_seq` DISABLE KEYS */;
INSERT INTO `available_plan_seq` VALUES
(1);
/*!40000 ALTER TABLE `available_plan_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter`
--

DROP TABLE IF EXISTS `enter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enter` (
  `enter_id` bigint(20) NOT NULL,
  `enter_status` varchar(255) DEFAULT NULL,
  `enter_member_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`enter_id`),
  KEY `FKanqu9jwnsg5onyayvvvq6g99t` (`enter_member_id`),
  KEY `FKkw5v528r2b9l6ymrtpon0m1hx` (`project_id`),
  CONSTRAINT `FKanqu9jwnsg5onyayvvvq6g99t` FOREIGN KEY (`enter_member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FKkw5v528r2b9l6ymrtpon0m1hx` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter`
--

LOCK TABLES `enter` WRITE;
/*!40000 ALTER TABLE `enter` DISABLE KEYS */;
/*!40000 ALTER TABLE `enter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_seq`
--

DROP TABLE IF EXISTS `enter_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enter_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_seq`
--

LOCK TABLES `enter_seq` WRITE;
/*!40000 ALTER TABLE `enter_seq` DISABLE KEYS */;
INSERT INTO `enter_seq` VALUES
(1);
/*!40000 ALTER TABLE `enter_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_token`
--

DROP TABLE IF EXISTS `fcm_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_token` (
  `fcm_token_id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fcm_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_token`
--

LOCK TABLES `fcm_token` WRITE;
/*!40000 ALTER TABLE `fcm_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcm_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcm_token_seq`
--

DROP TABLE IF EXISTS `fcm_token_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcm_token_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcm_token_seq`
--

LOCK TABLES `fcm_token_seq` WRITE;
/*!40000 ALTER TABLE `fcm_token_seq` DISABLE KEYS */;
INSERT INTO `fcm_token_seq` VALUES
(1);
/*!40000 ALTER TABLE `fcm_token_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invite`
--

DROP TABLE IF EXISTS `invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invite` (
  `invite_id` bigint(20) NOT NULL,
  `invite_status` varchar(255) DEFAULT NULL,
  `invited_member_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `request_member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`invite_id`),
  KEY `FK6e2ytxrtwety82xrrkd255wq5` (`invited_member_id`),
  KEY `FKbh381hf1pvtsf54wa57bsdhhj` (`project_id`),
  KEY `FKsxwfco7t16xa9d0pguwsbtq8t` (`request_member_id`),
  CONSTRAINT `FK6e2ytxrtwety82xrrkd255wq5` FOREIGN KEY (`invited_member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FKbh381hf1pvtsf54wa57bsdhhj` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKsxwfco7t16xa9d0pguwsbtq8t` FOREIGN KEY (`request_member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invite`
--

LOCK TABLES `invite` WRITE;
/*!40000 ALTER TABLE `invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invite_seq`
--

DROP TABLE IF EXISTS `invite_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invite_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invite_seq`
--

LOCK TABLES `invite_seq` WRITE;
/*!40000 ALTER TABLE `invite_seq` DISABLE KEYS */;
INSERT INTO `invite_seq` VALUES
(1);
/*!40000 ALTER TABLE `invite_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `likes_id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`likes_id`),
  KEY `FKa4vkf1skcfu5r6o5gfb5jf295` (`member_id`),
  KEY `FK6gupou17or1xfkb1mkasgwqys` (`project_id`),
  CONSTRAINT `FK6gupou17or1xfkb1mkasgwqys` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKa4vkf1skcfu5r6o5gfb5jf295` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_seq`
--

DROP TABLE IF EXISTS `likes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_seq`
--

LOCK TABLES `likes_seq` WRITE;
/*!40000 ALTER TABLE `likes_seq` DISABLE KEYS */;
INSERT INTO `likes_seq` VALUES
(1);
/*!40000 ALTER TABLE `likes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting`
--

DROP TABLE IF EXISTS `meeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting` (
  `meeting_id` bigint(20) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `meeting_status` varchar(255) DEFAULT NULL,
  `end_date_time` datetime(6) DEFAULT NULL,
  `start_date_time` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`meeting_id`),
  KEY `FKhn86a6pj9y1fmpm3u55fkcseg` (`member_id`),
  KEY `FK7klmberb8tvp3dejg0yf1ehpf` (`project_id`),
  CONSTRAINT `FK7klmberb8tvp3dejg0yf1ehpf` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`),
  CONSTRAINT `FKhn86a6pj9y1fmpm3u55fkcseg` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting`
--

LOCK TABLES `meeting` WRITE;
/*!40000 ALTER TABLE `meeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_meeting_proposals`
--

DROP TABLE IF EXISTS `meeting_meeting_proposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_meeting_proposals` (
  `meeting_meeting_id` bigint(20) NOT NULL,
  `meeting_proposals_meeting_proposal_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_f1lwjg977k47huncfnp6dn2yd` (`meeting_proposals_meeting_proposal_id`),
  KEY `FKg3s8a9u26fbfj9c7yo5ilbcym` (`meeting_meeting_id`),
  CONSTRAINT `FKg3s8a9u26fbfj9c7yo5ilbcym` FOREIGN KEY (`meeting_meeting_id`) REFERENCES `meeting` (`meeting_id`),
  CONSTRAINT `FKjat12ygaopdve69r0d2ki03dd` FOREIGN KEY (`meeting_proposals_meeting_proposal_id`) REFERENCES `meeting_proposal` (`meeting_proposal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_meeting_proposals`
--

LOCK TABLES `meeting_meeting_proposals` WRITE;
/*!40000 ALTER TABLE `meeting_meeting_proposals` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_meeting_proposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_participant`
--

DROP TABLE IF EXISTS `meeting_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_participant` (
  `meeting_participant_id` bigint(20) NOT NULL,
  `participant_role` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `meeting_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`meeting_participant_id`),
  KEY `FK1u49rfnimsyevsue07ca50fo` (`member_id`),
  KEY `FK26jnnkay5w0sko7x7kqu17xbr` (`meeting_id`),
  CONSTRAINT `FK1u49rfnimsyevsue07ca50fo` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FK26jnnkay5w0sko7x7kqu17xbr` FOREIGN KEY (`meeting_id`) REFERENCES `meeting` (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_participant`
--

LOCK TABLES `meeting_participant` WRITE;
/*!40000 ALTER TABLE `meeting_participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_participant_seq`
--

DROP TABLE IF EXISTS `meeting_participant_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_participant_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_participant_seq`
--

LOCK TABLES `meeting_participant_seq` WRITE;
/*!40000 ALTER TABLE `meeting_participant_seq` DISABLE KEYS */;
INSERT INTO `meeting_participant_seq` VALUES
(1);
/*!40000 ALTER TABLE `meeting_participant_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_proposal`
--

DROP TABLE IF EXISTS `meeting_proposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_proposal` (
  `meeting_proposal_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_date_time` datetime(6) DEFAULT NULL,
  `start_date_time` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`meeting_proposal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_proposal`
--

LOCK TABLES `meeting_proposal` WRITE;
/*!40000 ALTER TABLE `meeting_proposal` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_proposal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_proposal_seq`
--

DROP TABLE IF EXISTS `meeting_proposal_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_proposal_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_proposal_seq`
--

LOCK TABLES `meeting_proposal_seq` WRITE;
/*!40000 ALTER TABLE `meeting_proposal_seq` DISABLE KEYS */;
INSERT INTO `meeting_proposal_seq` VALUES
(1);
/*!40000 ALTER TABLE `meeting_proposal_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_seq`
--

DROP TABLE IF EXISTS `meeting_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meeting_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_seq`
--

LOCK TABLES `meeting_seq` WRITE;
/*!40000 ALTER TABLE `meeting_seq` DISABLE KEYS */;
INSERT INTO `meeting_seq` VALUES
(1);
/*!40000 ALTER TABLE `meeting_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `member_id` bigint(20) NOT NULL,
  `create_date_time` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES
(1,'2023-03-08 02:40:22.807060',NULL,'proto',NULL,'$2a$10$lo2HfJ8P2ZLsWVEAGj4BvuaNclI.jiUnu3/eb4CmBFL4CfV20sHSi'),
(2,'2023-03-08 02:40:22.819563',NULL,'hong',NULL,'$2a$10$lo2HfJ8P2ZLsWVEAGj4BvuaNclI.jiUnu3/eb4CmBFL4CfV20sHSi');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_seq`
--

DROP TABLE IF EXISTS `member_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_seq`
--

LOCK TABLES `member_seq` WRITE;
/*!40000 ALTER TABLE `member_seq` DISABLE KEYS */;
INSERT INTO `member_seq` VALUES
(101);
/*!40000 ALTER TABLE `member_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant` (
  `participant_id` bigint(20) NOT NULL,
  `participant_role` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`participant_id`),
  KEY `FKltl2dk33cemkl32l5fo3jmh85` (`member_id`),
  KEY `FKsak8yykkohsq2s2ab8gp8f6ud` (`project_id`),
  CONSTRAINT `FKltl2dk33cemkl32l5fo3jmh85` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FKsak8yykkohsq2s2ab8gp8f6ud` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_position`
--

DROP TABLE IF EXISTS `participant_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_position` (
  `participant_id` bigint(20) NOT NULL,
  `positions` varchar(255) DEFAULT NULL,
  KEY `FKdicvfjwc98ei4gllw3rhhqe95` (`participant_id`),
  CONSTRAINT `FKdicvfjwc98ei4gllw3rhhqe95` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_position`
--

LOCK TABLES `participant_position` WRITE;
/*!40000 ALTER TABLE `participant_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `participant_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_seq`
--

DROP TABLE IF EXISTS `participant_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_seq`
--

LOCK TABLES `participant_seq` WRITE;
/*!40000 ALTER TABLE `participant_seq` DISABLE KEYS */;
INSERT INTO `participant_seq` VALUES
(1);
/*!40000 ALTER TABLE `participant_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant_skill_stack`
--

DROP TABLE IF EXISTS `participant_skill_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participant_skill_stack` (
  `participant_id` bigint(20) NOT NULL,
  `skill_stacks` varchar(255) DEFAULT NULL,
  KEY `FKdd1jmjhpyop0djv0pu6pvgt3y` (`participant_id`),
  CONSTRAINT `FKdd1jmjhpyop0djv0pu6pvgt3y` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant_skill_stack`
--

LOCK TABLES `participant_skill_stack` WRITE;
/*!40000 ALTER TABLE `participant_skill_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `participant_skill_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `plan_status` varchar(255) DEFAULT NULL,
  `end_date_time` datetime(6) DEFAULT NULL,
  `start_date_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_api_integration_info`
--

DROP TABLE IF EXISTS `plan_api_integration_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_api_integration_info` (
  `id` bigint(20) NOT NULL,
  `api` varchar(255) DEFAULT NULL,
  `auth_token` tinytext DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_api_integration_info`
--

LOCK TABLES `plan_api_integration_info` WRITE;
/*!40000 ALTER TABLE `plan_api_integration_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan_api_integration_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_api_integration_info_seq`
--

DROP TABLE IF EXISTS `plan_api_integration_info_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_api_integration_info_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_api_integration_info_seq`
--

LOCK TABLES `plan_api_integration_info_seq` WRITE;
/*!40000 ALTER TABLE `plan_api_integration_info_seq` DISABLE KEYS */;
INSERT INTO `plan_api_integration_info_seq` VALUES
(1);
/*!40000 ALTER TABLE `plan_api_integration_info_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan_seq`
--

DROP TABLE IF EXISTS `plan_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan_seq`
--

LOCK TABLES `plan_seq` WRITE;
/*!40000 ALTER TABLE `plan_seq` DISABLE KEYS */;
INSERT INTO `plan_seq` VALUES
(1);
/*!40000 ALTER TABLE `plan_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planner_setting`
--

DROP TABLE IF EXISTS `planner_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_setting` (
  `schedule_priority_id` bigint(20) NOT NULL,
  `limits` int(11) DEFAULT NULL,
  `marginal_minutes` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `minute_unit` varchar(255) DEFAULT NULL,
  `sequence_priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schedule_priority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planner_setting`
--

LOCK TABLES `planner_setting` WRITE;
/*!40000 ALTER TABLE `planner_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `planner_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planner_setting_seq`
--

DROP TABLE IF EXISTS `planner_setting_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planner_setting_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planner_setting_seq`
--

LOCK TABLES `planner_setting_seq` WRITE;
/*!40000 ALTER TABLE `planner_setting_seq` DISABLE KEYS */;
INSERT INTO `planner_setting_seq` VALUES
(1);
/*!40000 ALTER TABLE `planner_setting_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL,
  `content` tinytext DEFAULT NULL,
  `create_date_time` datetime(6) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `FK83s99f4kx8oiqm3ro0sasmpww` (`member_id`),
  KEY `FKi4b3p9aghqtp9h3xrm166wf19` (`project_id`),
  CONSTRAINT `FK83s99f4kx8oiqm3ro0sasmpww` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `FKi4b3p9aghqtp9h3xrm166wf19` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_seq`
--

DROP TABLE IF EXISTS `post_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_seq`
--

LOCK TABLES `post_seq` WRITE;
/*!40000 ALTER TABLE `post_seq` DISABLE KEYS */;
INSERT INTO `post_seq` VALUES
(1);
/*!40000 ALTER TABLE `post_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `project_id` bigint(20) NOT NULL,
  `create_date_time` datetime(6) DEFAULT NULL,
  `meeting_method` varchar(255) DEFAULT NULL,
  `period_date_time` datetime(6) DEFAULT NULL,
  `project_description` tinytext DEFAULT NULL,
  `project_summary` tinytext DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_status` varchar(255) DEFAULT NULL,
  `start_date_time` datetime(6) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `FKf02mrsqr7qo2g4pi5oetixtf1` (`member_id`),
  CONSTRAINT `FKf02mrsqr7qo2g4pi5oetixtf1` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_recruitment_position`
--

DROP TABLE IF EXISTS `project_recruitment_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_recruitment_position` (
  `project_id` bigint(20) NOT NULL,
  `recruitment_positions` varchar(255) DEFAULT NULL,
  KEY `FKkwrygww9ru42ymh23sx7ympjd` (`project_id`),
  CONSTRAINT `FKkwrygww9ru42ymh23sx7ympjd` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_recruitment_position`
--

LOCK TABLES `project_recruitment_position` WRITE;
/*!40000 ALTER TABLE `project_recruitment_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_recruitment_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_seq`
--

DROP TABLE IF EXISTS `project_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_seq`
--

LOCK TABLES `project_seq` WRITE;
/*!40000 ALTER TABLE `project_seq` DISABLE KEYS */;
INSERT INTO `project_seq` VALUES
(1);
/*!40000 ALTER TABLE `project_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_skill_stack`
--

DROP TABLE IF EXISTS `project_skill_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_skill_stack` (
  `project_id` bigint(20) NOT NULL,
  `skill_stacks` varchar(255) DEFAULT NULL,
  KEY `FKtok56igeifx6nyo5dgvo0cele` (`project_id`),
  CONSTRAINT `FKtok56igeifx6nyo5dgvo0cele` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_skill_stack`
--

LOCK TABLES `project_skill_stack` WRITE;
/*!40000 ALTER TABLE `project_skill_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_skill_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit_position`
--

DROP TABLE IF EXISTS `recruit_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruit_position` (
  `recruit_position_id` bigint(20) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`recruit_position_id`),
  KEY `FKgmibcpmm5yj1gyr658rb8dumi` (`project_id`),
  CONSTRAINT `FKgmibcpmm5yj1gyr658rb8dumi` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit_position`
--

LOCK TABLES `recruit_position` WRITE;
/*!40000 ALTER TABLE `recruit_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruit_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit_position_seq`
--

DROP TABLE IF EXISTS `recruit_position_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruit_position_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit_position_seq`
--

LOCK TABLES `recruit_position_seq` WRITE;
/*!40000 ALTER TABLE `recruit_position_seq` DISABLE KEYS */;
INSERT INTO `recruit_position_seq` VALUES
(1);
/*!40000 ALTER TABLE `recruit_position_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit_skill_stack`
--

DROP TABLE IF EXISTS `recruit_skill_stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruit_skill_stack` (
  `recruit_skill_stack_id` bigint(20) NOT NULL,
  `skill_stack` varchar(255) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`recruit_skill_stack_id`),
  KEY `FKdijwb0esnraw5guyflumwmi98` (`project_id`),
  CONSTRAINT `FKdijwb0esnraw5guyflumwmi98` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit_skill_stack`
--

LOCK TABLES `recruit_skill_stack` WRITE;
/*!40000 ALTER TABLE `recruit_skill_stack` DISABLE KEYS */;
/*!40000 ALTER TABLE `recruit_skill_stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruit_skill_stack_seq`
--

DROP TABLE IF EXISTS `recruit_skill_stack_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruit_skill_stack_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruit_skill_stack_seq`
--

LOCK TABLES `recruit_skill_stack_seq` WRITE;
/*!40000 ALTER TABLE `recruit_skill_stack_seq` DISABLE KEYS */;
INSERT INTO `recruit_skill_stack_seq` VALUES
(1);
/*!40000 ALTER TABLE `recruit_skill_stack_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_available_plan`
--

DROP TABLE IF EXISTS `weekly_available_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly_available_plan` (
  `weekly_available_plan_id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`weekly_available_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_available_plan`
--

LOCK TABLES `weekly_available_plan` WRITE;
/*!40000 ALTER TABLE `weekly_available_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `weekly_available_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weekly_available_plan_seq`
--

DROP TABLE IF EXISTS `weekly_available_plan_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weekly_available_plan_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weekly_available_plan_seq`
--

LOCK TABLES `weekly_available_plan_seq` WRITE;
/*!40000 ALTER TABLE `weekly_available_plan_seq` DISABLE KEYS */;
INSERT INTO `weekly_available_plan_seq` VALUES
(1);
/*!40000 ALTER TABLE `weekly_available_plan_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08  2:46:48
