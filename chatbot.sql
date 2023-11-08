-- MariaDB dump 10.19-11.1.2-MariaDB, for osx10.19 (arm64)
--
-- Host: localhost    Database: chatbot
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

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
-- Table structure for table `chatbot_hints`
--

DROP TABLE IF EXISTS `chatbot_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_hints`
--

LOCK TABLES `chatbot_hints` WRITE;
/*!40000 ALTER TABLE `chatbot_hints` DISABLE KEYS */;
INSERT INTO `chatbot_hints` VALUES
(2,'How are you ?','I am not good. How can I help you?'),
(3,'what is your name||whats your name||who are you','My name is Aresa.'),
(4,'what should I call you','You can call me by my name Aresa.'),
(5,'Where are your from','I have been developed under custody of Aarav. I dont belong to any country or place.'),
(6,'Bye||See you later||Have a Good Day||tata','Sad to see you are going. Have a nice day'),
(8,'who developed you|| who created you || who own you','I am developed/created by Aarav. I am Here to help you with your queries.  '),
(10,'I want to ask about professors of first year.','Professors of GEU are amazing.\r\nI m listing names of few\r\nchemistry-Arunima nayak mam\'\r\nfirst year b');
/*!40000 ALTER TABLE `chatbot_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invalid`
--

DROP TABLE IF EXISTS `invalid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invalid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messages` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invalid`
--

LOCK TABLES `invalid` WRITE;
/*!40000 ALTER TABLE `invalid` DISABLE KEYS */;
INSERT INTO `invalid` VALUES
(1,'dijh'),
(2,'dijh'),
(3,'dijh'),
(4,'sd'),
(5,'a'),
(6,'anbasfnsdkghb nlegyfbnyfudkgajhg'),
(7,'afc');
/*!40000 ALTER TABLE `invalid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES
(130,'I am good. How can I help you?','2020-10-13 07:35:40','bot'),
(131,'hi','2020-10-13 07:37:13','user'),
(132,'Sorry not be able to understand you','2020-10-13 07:37:13','bot'),
(133,'hi','2020-10-13 07:37:53','user'),
(134,'Sorry not be able to understand you','2020-10-13 07:37:54','bot'),
(135,'hi','2020-10-13 07:38:10','user'),
(136,'Sorry not be able to understand you','2020-10-13 07:38:10','bot'),
(137,'hi','2020-10-13 07:39:05','user'),
(138,'Sorry not be able to understand you','2020-10-13 07:39:05','bot'),
(139,'b','2020-10-13 07:39:09','user'),
(140,'','2020-10-13 07:39:09','bot'),
(141,'c','2020-10-13 07:39:14','user'),
(142,'','2020-10-13 07:39:15','bot'),
(143,'hi','2020-10-13 07:39:29','user'),
(144,'Sorry not be able to understand you','2020-10-13 07:39:29','bot'),
(145,'b','2020-10-13 07:39:33','user'),
(146,'Sad to see you are going. Have a nice day','2020-10-13 07:39:33','bot'),
(147,'y','2020-10-13 07:39:42','user'),
(148,'I am good. How can I help you?','2020-10-13 07:39:42','bot'),
(149,'ok','2020-10-13 07:39:49','user'),
(150,'Sorry not be able to understand you','2020-10-13 07:39:49','bot'),
(151,'who','2020-10-13 07:39:55','user'),
(152,'My name is Aresa.','2020-10-13 07:39:55','bot'),
(153,'btech','2020-10-13 07:40:17','user'),
(154,'Sorry not be able to understand you','2020-10-13 07:40:17','bot'),
(155,'first','2020-10-13 07:40:22','user'),
(156,'first year','2020-10-13 07:40:34','user'),
(157,'hi','2020-10-13 07:42:23','user'),
(158,'Sorry not be able to understand you','2020-10-13 07:42:23','bot'),
(159,'hi','2020-10-13 07:42:39','user'),
(160,'Sorry not be able to understand you','2020-10-13 07:42:39','bot'),
(161,'hi','2020-10-13 07:45:33','user'),
(162,'Sorry not be able to understand you','2020-10-13 07:45:33','bot'),
(163,'hi','2020-10-13 07:46:20','user'),
(164,'Sorry not be able to understand you','2020-10-13 07:46:20','bot'),
(165,'hi','2020-10-13 07:46:58','user'),
(166,'Sorry not be able to understand you','2020-10-13 07:46:58','bot'),
(167,'hi','2020-10-13 07:47:22','user'),
(168,'Sorry not be able to understand you','2020-10-13 07:47:22','bot'),
(169,'hi','2020-10-13 07:47:30','user'),
(170,'Sorry not be able to understand you','2020-10-13 07:47:30','bot'),
(171,'hi','2020-10-13 07:48:07','user'),
(172,'Sorry not be able to understand you','2020-10-13 07:48:08','bot'),
(173,'hellop','2020-10-13 07:48:12','user'),
(174,'Sorry not be able to understand you','2020-10-13 07:48:12','bot'),
(175,'bye','2020-10-13 07:48:16','user'),
(176,'Sad to see you are going. Have a nice day','2020-10-13 07:48:16','bot'),
(177,'hi','2020-10-13 07:50:01','user'),
(178,'Sorry not be able to understand you','2020-10-13 07:50:01','bot'),
(179,'hoe','2020-10-13 07:50:06','user'),
(180,'Sorry not be able to understand you','2020-10-13 07:50:06','bot'),
(181,'hi','2020-10-13 07:53:59','user'),
(182,'Sorry not be able to understand you','2020-10-13 07:54:00','bot'),
(183,'hi','2020-10-13 07:55:25','user'),
(184,'Sorry not be able to understand you','2020-10-13 07:55:25','bot'),
(185,'hi','2020-10-13 07:59:28','user'),
(186,'Sorry not be able to understand you','2020-10-13 07:59:29','bot'),
(187,'hi','2020-10-13 08:00:44','user'),
(188,'Sorry not be able to understand you','2020-10-13 08:00:44','bot'),
(189,'hi','2020-10-13 08:14:59','user'),
(190,'Sorry not be able to understand you','2020-10-13 08:14:59','bot'),
(191,'see','2020-10-13 08:15:41','user'),
(192,'Sad to see you are going. Have a nice day','2020-10-13 08:15:41','bot'),
(193,'sorry','2020-10-13 08:15:49','user'),
(194,'Sorry not be able to understand you','2020-10-13 08:15:49','bot'),
(195,'sad','2020-10-13 08:15:55','user'),
(196,'Sorry not be able to understand you','2020-10-13 08:15:55','bot'),
(197,'ok','2020-10-13 08:16:00','user'),
(198,'Sorry not be able to understand you','2020-10-13 08:16:00','bot'),
(199,'h','2020-10-13 08:17:04','user'),
(200,'I am good. How can I help you?','2020-10-13 08:17:04','bot'),
(201,'hi','2020-10-13 08:17:39','user'),
(202,'Sorry not be able to understand you','2020-10-13 08:17:40','bot'),
(203,'hi','2020-10-13 08:18:21','user'),
(204,'Sorry not be able to understand you','2020-10-13 08:18:21','bot'),
(205,'hi','2020-10-13 08:18:28','user'),
(206,'Sorry not be able to understand you','2020-10-13 08:18:28','bot'),
(207,'hi','2020-10-13 08:19:44','user'),
(208,'Sorry not be able to understand you','2020-10-13 08:19:44','bot'),
(209,'hi','2020-10-13 08:19:55','user'),
(210,'Sorry not be able to understand you','2020-10-13 08:19:55','bot'),
(211,'h','2020-10-13 08:20:11','user'),
(212,'I am good. How can I help you?','2020-10-13 08:20:11','bot'),
(213,'h','2020-10-13 08:20:30','user'),
(214,'I am good. How can I help you?','2020-10-13 08:20:30','bot'),
(215,'hi','2020-10-13 08:20:52','user'),
(216,'Sorry not be able to understand you','2020-10-13 08:20:52','bot'),
(217,'h','2020-10-13 08:21:23','user'),
(218,'I am good. How can I help you?','2020-10-13 08:21:23','bot'),
(219,'h','2020-10-13 08:22:06','user'),
(220,'I am good. How can I help you?','2020-10-13 08:22:06','bot'),
(221,'h','2020-10-13 08:22:11','user'),
(222,'I am good. How can I help you?','2020-10-13 08:22:11','bot'),
(223,'h','2020-10-13 08:22:41','user'),
(224,'I am good. How can I help you?','2020-10-13 08:22:41','bot'),
(225,'dsfglkdtlhjsfdhmy drgiumhdifhirdh[yfdjiuhdfiujuytdkhdukfdihufdgkh hurdfmhildlidfguh;iujfd ortiyuh dhdfrtioh mpr hgmrt uhpimthbmur','2020-10-13 08:22:53','user'),
(226,'Sorry not be able to understand you','2020-10-13 08:22:54','bot'),
(227,'h','2020-10-13 08:33:28','user'),
(228,'I am good. How can I help you?','2020-10-13 08:33:28','bot'),
(229,'h','2020-10-13 08:35:42','user'),
(230,'I am good. How can I help you?','2020-10-13 08:35:42','bot'),
(231,'a','2020-10-13 08:36:07','user'),
(232,'I am good. How can I help you?','2020-10-13 08:36:07','bot'),
(233,'sasd','2020-10-13 08:36:12','user'),
(234,'Sorry not be able to understand you','2020-10-13 08:36:12','bot'),
(235,'hi','2020-10-13 08:37:46','user'),
(236,'Sorry not be able to understand you','2020-10-13 08:37:46','bot'),
(237,'aarav','2020-10-13 08:39:21','user'),
(238,'Sorry not be able to understand you','2020-10-13 08:39:21','bot'),
(239,'developed','2020-10-13 08:39:29','user'),
(240,'I am developed/created by Aarav. I am Here to help you with your queries.  ','2020-10-13 08:39:29','bot'),
(241,'bye','2020-10-13 08:39:35','user'),
(242,'Sad to see you are going. Have a nice day','2020-10-13 08:39:35','bot'),
(243,'h','2020-10-13 08:50:36','user'),
(244,'I am good. How can I help you?','2020-10-13 08:50:36','bot'),
(245,'j','2020-10-13 08:53:51','user'),
(246,'Sorry not be able to understand you','2020-10-13 08:53:51','bot'),
(247,'h','2020-10-13 08:55:09','user'),
(248,'I am good. How can I help you?','2020-10-13 08:55:09','bot'),
(249,'h','2020-10-13 08:55:30','user'),
(250,'I am good. How can I help you?','2020-10-13 08:55:30','bot'),
(251,'h','2020-10-13 08:55:53','user'),
(252,'I am good. How can I help you?','2020-10-13 08:55:53','bot'),
(253,'adfk','2020-10-13 08:55:59','user'),
(254,'Sorry not be able to understand you','2020-10-13 08:55:59','bot'),
(255,'dfpq','2020-10-13 08:56:07','user'),
(256,'Sorry not be able to understand you','2020-10-13 08:56:07','bot'),
(257,'j','2020-10-13 08:56:31','user'),
(258,'Sorry not be able to understand you','2020-10-13 08:56:31','bot'),
(259,'k','2020-10-13 08:56:57','user'),
(260,'qfk','2020-10-13 08:57:01','user'),
(261,'Sorry not be able to understand you','2020-10-13 08:57:01','bot'),
(262,'l','2020-10-13 08:57:33','user'),
(263,'You can call me by my name Aresa.','2020-10-13 08:57:33','bot'),
(264,'k','2020-10-13 08:58:23','user'),
(265,'l','2020-10-13 08:58:37','user'),
(266,'You can call me by my name Aresa.','2020-10-13 08:58:37','bot'),
(267,'dk','2020-10-13 08:59:27','user'),
(268,'Sorry not be able to understand you','2020-10-13 08:59:27','bot'),
(269,'k','2020-10-13 08:59:39','user'),
(270,'u','2020-10-13 09:00:47','user'),
(271,'I am good. How can I help you?','2020-10-13 09:00:47','bot'),
(272,'pafsck','2020-10-13 09:01:18','user'),
(273,'Sorry not be able to understand you','2020-10-13 09:01:18','bot'),
(274,'i','2020-10-13 09:01:38','user'),
(275,'My name is Aresa.','2020-10-13 09:01:38','bot'),
(276,'u','2020-10-13 09:01:50','user'),
(277,'I am good. How can I help you?','2020-10-13 09:01:50','bot'),
(278,'l','2020-10-13 09:01:57','user'),
(279,'You can call me by my name Aresa.','2020-10-13 09:01:57','bot'),
(280,'j','2020-10-13 09:09:27','user'),
(281,'Sorry not be able to understand you','2020-10-13 09:09:27','bot'),
(282,'kjo','2020-10-13 09:10:56','user'),
(283,'Sorry not be able to understand you','2020-10-13 09:10:56','bot'),
(284,'H','2020-10-13 09:26:14','user'),
(285,'I am good. How can I help you?','2020-10-13 09:26:14','bot'),
(286,'v','2020-10-13 09:27:13','user'),
(287,'Sad to see you are going. Have a nice day','2020-10-13 09:27:13','bot'),
(288,'fj','2020-10-13 09:28:26','user'),
(289,'Sorry not be able to understand you','2020-10-13 09:28:27','bot'),
(290,'j','2020-10-13 09:28:31','user'),
(291,'Sorry not be able to understand you','2020-10-13 09:28:31','bot'),
(292,'h','2020-10-13 09:28:48','user'),
(293,'I am good. How can I help you?','2020-10-13 09:28:48','bot'),
(294,'a','2020-10-13 09:29:23','user'),
(295,'I am good. How can I help you?','2020-10-13 09:29:23','bot'),
(296,'sd','2020-10-13 09:30:16','user'),
(297,'Sorry not be able to understand you','2020-10-13 09:30:16','bot'),
(298,'sdfg','2020-10-13 09:30:19','user'),
(299,'Sorry not be able to understand you','2020-10-13 09:30:20','bot'),
(300,'sd','2020-10-13 09:31:36','user'),
(301,'Sorry not be able to understand you','2020-10-13 09:31:36','bot'),
(302,'sw','2020-10-13 09:32:57','user'),
(303,'Sorry not be able to understand you','2020-10-13 09:32:57','bot'),
(304,'h','2020-10-13 09:42:01','user'),
(305,'I am good. How can I help you?','2020-10-13 09:42:01','bot'),
(306,'j','2020-10-13 09:44:55','user'),
(307,'Sorry not be able to understand you','2020-10-13 09:44:55','bot'),
(308,'k','2020-10-13 09:54:34','user'),
(309,'d','2020-10-13 09:54:46','user'),
(310,'You can call me by my name Aresa.','2020-10-13 09:54:46','bot'),
(311,'k','2020-10-13 09:55:19','user'),
(312,'j','2020-10-13 09:55:35','user'),
(313,'Sorry not be able to understand you','2020-10-13 09:55:35','bot'),
(314,'k','2020-10-13 09:56:40','user'),
(315,'s','2020-10-13 10:09:17','user'),
(316,'My name is Aresa.','2020-10-13 10:09:17','bot'),
(317,'s','2020-10-13 10:09:55','user'),
(318,'My name is Aresa.','2020-10-13 10:09:55','bot'),
(319,'k','2020-10-13 10:14:12','user'),
(320,'sadfv','2020-10-13 10:14:41','user'),
(321,'Sorry not be able to understand you','2020-10-13 10:14:41','bot'),
(322,'sk','2020-10-13 10:17:40','user'),
(323,'sd','2020-10-13 10:21:10','user'),
(324,'Sorry not be able to understand you','2020-10-13 10:21:10','bot'),
(325,'s','2020-10-13 10:29:05','user'),
(326,'My name is Aresa.','2020-10-13 10:29:05','bot'),
(327,'dsqad','2020-10-13 10:29:11','user'),
(328,'Sorry not be able to understand you','2020-10-13 10:29:11','bot'),
(329,'svd,nm','2020-10-13 10:29:38','user'),
(330,'Sorry not be able to understand you','2020-10-13 10:29:38','bot'),
(331,'ds','2020-10-13 10:31:15','user'),
(332,'Sorry not be able to understand you','2020-10-13 10:31:15','bot'),
(333,'aarav','2020-10-13 10:49:04','user'),
(334,'Sorry not be able to understand you','2020-10-13 10:49:04','bot'),
(335,'b','2020-10-13 10:49:08','user'),
(336,'Sad to see you are going. Have a nice day','2020-10-13 10:49:08','bot'),
(337,'hi','2020-10-13 10:49:12','user'),
(338,'Sorry not be able to understand you','2020-10-13 10:49:12','bot'),
(339,'aa','2020-10-13 10:52:30','user'),
(340,'Sorry not be able to understand you','2020-10-13 10:52:30','bot'),
(341,'dg','2020-10-14 12:51:28','user'),
(342,'Sorry not be able to understand you','2020-10-14 12:51:28','bot');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'ansh17','rajansh@gmail.com','827ccb0eea8a706c4c34a16891f84e7b'),
(2,'aaaaa','aa@gmail.com','74b87337454200d4d33f80c4663dc5e5'),
(3,'shweta','shweta@gmail.com','81dc9bdb52d04dc20036dbd8313ed055'),
(4,'','','d41d8cd98f00b204e9800998ecf8427e'),
(5,'','','d41d8cd98f00b204e9800998ecf8427e'),
(6,'abcd','abcd@gmail.com','353b15d58e64430f96283d4c95cc5688'),
(7,'_aarav_raj_singh_','hk@gmail.com','0cc175b9c0f1b6a831c399e269772661'),
(8,'tb','tb@email.com','1234');
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

-- Dump completed on 2023-11-08 22:04:38
