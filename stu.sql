-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `author` varchar(32) DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buy` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buy`
--

LOCK TABLES `buy` WRITE;
/*!40000 ALTER TABLE `buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `name` varchar(20) NOT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `score` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES ('啦','男',12,78.1),('小','男',9,90.0),('新','女',10,96.0),('比','女',12,88.2);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clothes`
--

DROP TABLE IF EXISTS `clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clothes` (
  `brand` varchar(32) DEFAULT NULL,
  `type` char(32) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `color` char(1) DEFAULT NULL,
  `love` char(1) DEFAULT NULL,
  `des` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clothes`
--

LOCK TABLES `clothes` WRITE;
/*!40000 ALTER TABLE `clothes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habit`
--

DROP TABLE IF EXISTS `habit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `hobby` set('sing','dance','draw') DEFAULT NULL,
  `course` char(1) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habit`
--

LOCK TABLES `habit` WRITE;
/*!40000 ALTER TABLE `habit` DISABLE KEYS */;
INSERT INTO `habit` VALUES (1,'abby','sing,draw','A',888.90,'气质绝佳'),(2,'abR','sing','C',688.90,'骨骼氢气');
/*!40000 ALTER TABLE `habit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marathon`
--

DROP TABLE IF EXISTS `marathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marathon` (
  `编号` int(11) DEFAULT NULL,
  `姓名` varchar(32) DEFAULT NULL,
  `报名时间` datetime DEFAULT NULL,
  `成绩` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marathon`
--

LOCK TABLES `marathon` WRITE;
/*!40000 ALTER TABLE `marathon` DISABLE KEYS */;
INSERT INTO `marathon` VALUES (10036,'张思这','2018-05-21 12:23:12','32:02:32'),(10037,'马x没','2018-06-21 12:23:32','32:02:32'),(10038,'小王','2019-06-17 11:27:34','54:32:02');
/*!40000 ALTER TABLE `marathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pers`
--

DROP TABLE IF EXISTS `pers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `gender` enum('男','女') DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `score` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pers`
--

LOCK TABLES `pers` WRITE;
/*!40000 ALTER TABLE `pers` DISABLE KEYS */;
INSERT INTO `pers` VALUES (1,'金',22,'女',NULL,87),(2,'木',25,'男',NULL,87),(3,'水',21,'女',NULL,78),(4,'火',23,'男',NULL,85),(5,'土',21,'女',NULL,91);
/*!40000 ALTER TABLE `pers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `name` varchar(128) DEFAULT NULL,
  `pos` enum('法师','射手','战士') DEFAULT NULL,
  `skill` varchar(32) DEFAULT NULL,
  `skinNum` int(11) DEFAULT NULL,
  `hit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `num` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `arrive_date` date DEFAULT NULL,
  `score` float DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES ('1001','小力','1998-09-04',73.2);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 14:24:06
