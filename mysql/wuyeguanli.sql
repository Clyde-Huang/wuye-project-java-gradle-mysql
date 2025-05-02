-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wuyeguanli
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `car_fee`
--

DROP TABLE IF EXISTS `car_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_fee` (
  `parking` varchar(45) NOT NULL COMMENT '需自行輸入',
  `parking_fee` int DEFAULT NULL COMMENT '停車費',
  `owner` varchar(45) DEFAULT NULL COMMENT '需自行輸入',
  `paid` tinyint DEFAULT '0' COMMENT '0=否  1=是',
  PRIMARY KEY (`parking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='停車費用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_fee`
--

LOCK TABLES `car_fee` WRITE;
/*!40000 ALTER TABLE `car_fee` DISABLE KEYS */;
INSERT INTO `car_fee` VALUES ('機車位101號',1200,'555',0),('機車位102號',1200,'222',0),('機車位103號',1200,'444',0),('機車位104號',1200,'444',0),('汽車位1號',2000,'222',0),('汽車位2號',2400,'111',1),('汽車位3號',3000,'555',0),('汽車位4號',2600,'111',1),('汽車位5號',2000,'666',1);
/*!40000 ALTER TABLE `car_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `date` date DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `img_url` varchar(500) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES (1,'asdd','2025-03-17','ddasd','','住戶相關'),(2,'asdasd','2025-03-17','asdasd','','住戶相關');
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee_info`
--

DROP TABLE IF EXISTS `fee_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee_info` (
  `address` varchar(255) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `modifying_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新一次刷新一次',
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理費';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee_info`
--

LOCK TABLES `fee_info` WRITE;
/*!40000 ALTER TABLE `fee_info` DISABLE KEYS */;
INSERT INTO `fee_info` VALUES ('A01','[\"1142是5500\",\"1141是5000\",\"1134否5000少付1000\"]','2025-03-25 15:42:40'),('A04','[\"1142是5600\",\"1141是5200\",\"1134是5200\"]','2025-03-25 15:42:40'),('A05','[\"1142是\",\"1141是\",\"1134是租客繳1000千剩餘的房東已繳完\"]','2025-03-24 16:34:14'),('A85','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('A87','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('A89','[\"1142是\",\"1141否新來的租客忘記付錢 \",\"1134是\"]','2025-03-24 16:34:14'),('B05','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('B06','[\"1142是\",\"1141否人在國外無法繳費\",\"1134是\"]','2025-03-24 16:34:14'),('B85','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('B87','[\"1142是\",\"1141是\",\"1143是\"]','2025-03-24 16:34:14'),('B89','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('C01','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('C02','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14'),('H85','[\"1142是\",\"1141是\",\"1134是\"]','2025-03-24 16:34:14');
/*!40000 ALTER TABLE `fee_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_names`
--

DROP TABLE IF EXISTS `file_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `file_names` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_name` (`file_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_names`
--

LOCK TABLES `file_names` WRITE;
/*!40000 ALTER TABLE `file_names` DISABLE KEYS */;
INSERT INTO `file_names` VALUES (5,'09fe8471-a638-4c58-869b-8addc73a4b94.png'),(7,'16ac3c57-8acd-4ca6-95c6-d31e775070e3.png'),(8,'3cebe5b1-d2eb-4b51-97b6-62404230ee70.png'),(2,'66883c74-c586-4066-8f43-e38734148a3b.png'),(3,'7024aadd-3a18-42c1-9958-f12473cb2353.png'),(4,'78ac4952-5674-48e6-bf5f-024eec028d84.png'),(6,'86006f3a-52be-4dc1-a2c5-de9782bbbf3e.png'),(1,'a362a837-a6dc-4258-9242-4affb8f5e3a5.png'),(9,'cb76055f-93e1-450b-84bc-1acc11c66f3d.png');
/*!40000 ALTER TABLE `file_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial`
--

DROP TABLE IF EXISTS `financial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project` varchar(255) DEFAULT NULL,
  `income` int DEFAULT '0',
  `expenditure` int DEFAULT '0',
  `date` date DEFAULT NULL,
  `balance` int DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `receipt` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial`
--

LOCK TABLES `financial` WRITE;
/*!40000 ALTER TABLE `financial` DISABLE KEYS */;
INSERT INTO `financial` VALUES (1,'adasda',123,0,'2025-03-19',0,NULL,'C:\\fakepath\\673543.png');
/*!40000 ALTER TABLE `financial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `get_money`
--

DROP TABLE IF EXISTS `get_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `get_money` (
  `id` int NOT NULL AUTO_INCREMENT,
  `receive_money_account` varchar(45) NOT NULL,
  `receive` int DEFAULT '0' COMMENT '收到多少錢\n',
  `remark` varchar(245) DEFAULT NULL COMMENT '顯示換款人帳號與其他備註資訊',
  `time_of_receiving_money` datetime DEFAULT CURRENT_TIMESTAMP,
  `send_money_account` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `get_money`
--

LOCK TABLES `get_money` WRITE;
/*!40000 ALTER TABLE `get_money` DISABLE KEYS */;
INSERT INTO `get_money` VALUES (27,'222',22,' #A01#-----^車位費^,sdfsd-----222轉錢22$給222','2023-03-13 10:42:29','222'),(28,'333',33,' #A01#-----^車位費^,asdas-----222轉錢33$給333','2025-03-13 10:43:38','222'),(29,'111',1,' #S01#-----^rty-----222轉錢1$給111','2025-03-13 10:44:09','222'),(30,'102420484096',500,' #W01#-----^車位費^,-----111轉錢585$給102420484096','2023-01-13 15:52:23','111'),(31,'222',25,'222轉錢25$給222','2025-03-13 16:31:02','222'),(33,'102420484096',585,' #D02#-----^車位費^,3/140931-----222轉錢585$給102420484096','2025-03-14 09:31:38','222'),(34,'102420484096',455,' #S01#-----^車位費^,-----333轉錢455$給102420484096','2025-03-14 13:31:36','333'),(36,'102420484096',300,' #A01#-----^車位費^,-----111轉錢555$給102420484096','2025-03-14 15:29:36','111'),(37,'102420484096',3000,' #A01#-----^車位費^,-----111轉錢3333$給102420484096','2025-03-14 15:30:39','111'),(38,'102420484096',200,' ^車位費^,-----111轉錢200$給102420484096','2025-03-14 15:48:44','111'),(39,'102420484096',500,' #A02#-----^車位費^,-----111轉錢500$給102420484096','2025-03-14 17:06:37','111'),(40,'111',7777,' ^車位費^,-----102420484096轉錢7777$給111','2025-03-14 17:07:35','102420484096'),(41,'102420484096',1200,' ^車位費^,-----444轉錢1200$給102420484096','2025-03-17 14:07:45','444'),(42,'102420484096',1000,' #A85#-----^車位費^,補繳1000-----111轉錢1000$給102420484096','2025-03-17 14:30:42','111'),(43,'102420484096',5000,' ^車位費^,-----222轉錢5000$給102420484096','2023-03-17 14:32:41','222'),(44,'102420484096',3000,' #A85#-----^管理費^,-----102420484096轉錢3000$給102420484096','2025-03-17 14:51:00','102420484096'),(45,'102420484096',100,' #A01#-----222轉錢100$給102420484096','2025-03-17 15:09:30','222'),(46,'102420484096',2000,' #A85#-----^車位費^,-----666轉錢2000$給102420484096','2025-03-17 15:15:59','666'),(47,'102420484096',200,' ^車位費^,-----222轉錢200$給102420484096','2025-03-19 11:09:50','222'),(48,'102420484096',115,' ^車位費^,-----222轉錢115$給102420484096','2025-03-19 11:10:32','222'),(49,'222',500,' ^轉帳測試-----102420484096轉錢500$給222','2025-03-19 11:11:20','102420484096'),(50,'111',2000,' ^房租-----222轉錢2000$給111','2025-03-19 11:13:19','222');
/*!40000 ALTER TABLE `get_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) NOT NULL,
  `floor` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `process_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `is_repaired` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_table`
--

DROP TABLE IF EXISTS `new_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_table` (
  `address` varchar(45) NOT NULL,
  `amount_payable` int DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_table`
--

LOCK TABLES `new_table` WRITE;
/*!40000 ALTER TABLE `new_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `new_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `idrental` int NOT NULL AUTO_INCREMENT,
  `item` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`idrental`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,'籃球','若沒氣找管理員打氣',10),(3,'撞球組','1組=2球桿，借用時請確認有拿取2隻，歸還時也須返還兩隻',4),(4,'腳踏車(大)','大人用，小孩或青少年請租:腳踏車(小)',10),(5,'腳踏車(小)','',6);
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sort` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `process_time` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `isRepaired` tinyint unsigned NOT NULL DEFAULT '0',
  `cost` int DEFAULT NULL,
  `is_repaired` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES (3,'水電相關','2F 員工廁所','水龍頭壞掉','/api/img/WS/edff213a-d739-4b79-b1d5-b7fc54c780b3.jpg','/api/img/WS/031d4bc7-84ba-4ad7-a6d2-be564158e2e9.jpg','2025-03-02 14:30:00',NULL,'處理中',0,0,0),(6,'結構相關','1F 大廳廁所','其他','http://localhost:8585/api/upload/images/aea73a15-65b9-4087-a158-d2aa66b6bcd0.jpg','','2025-03-05 08:40:00','2025-03-19 19:51:23','已完成',0,0,1),(8,'設備相關','B1 倉庫','馬桶堵塞','http://localhost:8585/api/upload/images/16f975f4-7ded-41eb-bf61-c48e610d7e33.jpg','http://localhost:8585/api/upload/images/51244e1f-18a1-4826-affc-93c249a4eae1.jpg','2025-03-06 15:10:00',NULL,'待處理',0,0,0),(9,'水電相關','1F 大廳走廊','燈不亮','http://localhost:8585/api/upload/images/200594b8-6f1e-49ad-92b5-dae1d1fd380b.jpg','','2025-03-02 16:25:00',NULL,'待處理',0,0,0),(11,'設備相關','4F 樓梯間','玻璃破裂','/api/repairs/images/handrail1.jpg','/api/repairs/images/default.jpg','2025-03-04 09:45:00',NULL,'待處理',0,0,0),(32,'設備相關','B1 倉庫','馬桶堵塞','http://localhost:8585/api/upload/images/4eff69e7-fa3e-41c9-a4c1-b9c05f6ccfad.jpg','','2025-03-19 17:54:50',NULL,'待處理',0,NULL,0),(33,'水電相關','1F 大廳走廊','電梯故障','http://localhost:8585/api/upload/images/37b85a9b-d6b1-4af2-93e8-99baaad7f715.jpg','','2025-03-19 17:55:06',NULL,'待處理',0,NULL,0),(34,'水電相關','1F 大廳廁所','馬桶堵塞','','','2025-03-19 20:27:08',NULL,'待處理',0,NULL,0),(35,'設備相關','1F 大廳走廊','馬桶堵塞','http://localhost:8585/api/upload/images/cc94a0ce-b1da-4482-a565-7b85ceecef36.jpg','','2025-03-21 09:54:16',NULL,'待處理',0,NULL,0),(36,'結構相關','4F 樓梯間','燈不亮','http://localhost:8585/api/upload/images/3cebe5b1-d2eb-4b51-97b6-62404230ee70.png','','2025-03-21 13:51:35',NULL,'待處理',0,NULL,0);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL COMMENT '描述',
  `sort` varchar(20) NOT NULL COMMENT '種類',
  `where` varchar(20) NOT NULL COMMENT '位置',
  `photo1` varchar(255) DEFAULT NULL COMMENT '照片1',
  `photo2` varchar(255) DEFAULT NULL COMMENT '照片2',
  `status` varchar(20) NOT NULL COMMENT '狀態',
  `is_repaired` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否已修復',
  `create_time` datetime NOT NULL COMMENT '創建時間',
  `process_time` datetime DEFAULT NULL COMMENT '處理時間',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resident_information`
--

DROP TABLE IF EXISTS `resident_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resident_information` (
  `partitionhousenumber` varchar(255) NOT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(255) DEFAULT NULL,
  `lease` bit(1) DEFAULT NULL,
  `residentname` varchar(255) DEFAULT NULL,
  `residentphonenumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`partitionhousenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resident_information`
--

LOCK TABLES `resident_information` WRITE;
/*!40000 ALTER TABLE `resident_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `resident_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rule` (
  `id` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `sort` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_money`
--

DROP TABLE IF EXISTS `transfer_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_money` (
  `account` varchar(45) NOT NULL DEFAULT '對應users的identity_numbe' COMMENT '錢包APP',
  `transfer` int DEFAULT '0',
  `balance` int DEFAULT '0',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='這表格只能看到 對應帳號的魚兒  要統計請去`get_money`';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_money`
--

LOCK TABLES `transfer_money` WRITE;
/*!40000 ALTER TABLE `transfer_money` DISABLE KEYS */;
INSERT INTO `transfer_money` VALUES ('1',0,100,'2025-03-11 14:37:45'),('102420484096',500,41815,'2025-03-19 11:11:20'),('111',2000,10648,'2025-03-19 11:13:18'),('222',2000,46292,'2025-03-19 11:13:18'),('333',2222,53880,'2025-03-14 13:33:22'),('444',1200,4300,'2025-03-17 14:07:45'),('555',873,11111,'2025-03-21 16:07:55'),('666',2000,3000,'2025-03-17 15:15:59'),('777',325,325,'2025-03-25 11:34:43');
/*!40000 ALTER TABLE `transfer_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `identity_number` varchar(255) DEFAULT NULL,
  `is_currently_residing` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT '房東',
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','landlord','tenant') DEFAULT 'landlord',
  `updated_at` datetime DEFAULT NULL,
  `landlord_id` bigint DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identity_number_UNIQUE` (`identity_number`),
  KEY `FK3eywxgg0qfx2w05xgvhqgdhrc` (`landlord_id`),
  CONSTRAINT `FK3eywxgg0qfx2w05xgvhqgdhrc` FOREIGN KEY (`landlord_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2025-03-04 15:46:50','111',_binary '','系統管理員','111','admin','2025-03-04 16:01:17',NULL,NULL,NULL),(2,'2025-03-04 15:46:50','222',_binary '','小東','222','landlord','2025-03-17 15:13:34',NULL,NULL,NULL),(3,'2025-03-11 14:34:22','333',_binary '','小明','333','landlord','2025-03-11 14:34:22',NULL,NULL,NULL),(4,'2025-03-11 14:35:11','444',_binary '','曉華','444','tenant','2025-03-11 14:35:11',NULL,NULL,NULL),(5,'2025-03-11 14:35:45','555',_binary '','小美','555','tenant','2025-03-11 14:35:45',NULL,NULL,NULL),(6,'2025-03-11 14:37:18','102420484096',_binary '','超級系統管理員接收匯款項目','1','admin','2025-03-11 14:46:19',NULL,NULL,NULL),(8,'2025-03-17 15:14:26','666',_binary '','小呆','666','landlord','2025-03-17 15:14:26',NULL,NULL,NULL),(9,'2025-03-17 15:14:52','777',_binary '','小瓜','777','landlord','2025-03-17 15:14:52',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_records`
--

DROP TABLE IF EXISTS `visitor_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_records` (
  `visitor_id` int NOT NULL AUTO_INCREMENT,
  `visitors` varchar(255) DEFAULT NULL,
  `visitor_name` varchar(255) DEFAULT NULL,
  `visitor_phone` varchar(255) DEFAULT NULL,
  `visitor_reason` varchar(255) DEFAULT NULL,
  `is_out_visitors` bit(1) DEFAULT NULL,
  `out_time` datetime(6) DEFAULT NULL,
  `visitor_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_records`
--

LOCK TABLES `visitor_records` WRITE;
/*!40000 ALTER TABLE `visitor_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitor_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `who_rental`
--

DROP TABLE IF EXISTS `who_rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `who_rental` (
  `idwho_rental` int NOT NULL AUTO_INCREMENT,
  `rental_what` varchar(255) DEFAULT NULL,
  `account_rental` varchar(255) DEFAULT NULL,
  `returnyorn` tinyint(1) DEFAULT '0',
  `verify` tinyint(1) DEFAULT '0',
  `change_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idwho_rental`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='哪個帳號租借了啥';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `who_rental`
--

LOCK TABLES `who_rental` WRITE;
/*!40000 ALTER TABLE `who_rental` DISABLE KEYS */;
INSERT INTO `who_rental` VALUES (3,'籃球','444',0,0,'2025-03-21 09:27:56'),(4,'腳踏車(大)','555',1,1,'2025-03-25 11:15:23'),(9,'撞球組','222',0,0,'2025-03-25 10:34:16'),(11,'撞球組','555',0,1,'2025-03-25 11:15:20'),(13,'腳踏車(小)','555',1,1,'2025-03-25 11:15:22'),(15,'腳踏車(小)','777',1,1,'2025-03-26 09:23:28');
/*!40000 ALTER TABLE `who_rental` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-27 14:13:31
