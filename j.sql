-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: jaangu
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.12.04.2

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
-- Table structure for table `additional_details`
--

DROP TABLE IF EXISTS `additional_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additional_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additional_details`
--

LOCK TABLES `additional_details` WRITE;
/*!40000 ALTER TABLE `additional_details` DISABLE KEYS */;
INSERT INTO `additional_details` VALUES (1,1,'Property Size','2300 Sq Ft'),(2,1,'Lot size','5000 Sq Ft'),(3,1,'Price','23000'),(4,1,'Rooms','5'),(5,1,'Bedrooms','3'),(6,1,'Garages','4'),(7,1,'Roofing','New'),(8,1,'Structure Type','Bricks'),(9,1,'Year built','1989'),(10,1,'Available from','3 jun 1989');
/*!40000 ALTER TABLE `additional_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_on` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Admin','admin','admin','2016-1-5');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Movies',0,NULL),(3,'Spa & Salon',0,NULL),(5,'Movies',0,NULL),(12,'Food & Drink',0,NULL),(13,'Res',1,NULL),(15,'Indian',12,NULL),(16,'Banglore',0,NULL),(17,'Uganda',0,NULL),(18,'jhkjhlk',0,NULL),(19,'hjghj',0,NULL),(20,'Banglorefdf',0,NULL),(21,'jghj',0,NULL),(22,'fhh',0,NULL),(23,'gfjj',17,NULL),(24,'apprasl',0,NULL),(25,'cotton',24,NULL),(27,'',NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (2,4,2,'0'),(3,4,2,'XYZ'),(5,4,3,'XYZABC');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configruation`
--

DROP TABLE IF EXISTS `configruation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configruation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_page_display_deals_city` int(11) NOT NULL,
  `max_number_of_slide_deals` int(11) NOT NULL,
  `top_add_banner_image` varchar(255) NOT NULL,
  `display_top_add_banner` tinyint(4) NOT NULL DEFAULT '1',
  `enable_subscribe_popup` tinyint(4) NOT NULL,
  `enable_ecommerce` tinyint(4) NOT NULL DEFAULT '0',
  `display_featured_deals_on_home_page` tinyint(4) NOT NULL DEFAULT '1',
  `display_popular_deals_on_home_page` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configruation`
--

LOCK TABLES `configruation` WRITE;
/*!40000 ALTER TABLE `configruation` DISABLE KEYS */;
INSERT INTO `configruation` VALUES (1,5,12,'banner.jpg',1,1,1,1,1);
/*!40000 ALTER TABLE `configruation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (3,'INDIA'),(4,'Africa');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'viki','viki@yahoo.com','Admin123','','','9530069076',0,'2016-01-21');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deals`
--

DROP TABLE IF EXISTS `deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `dealtype_id` int(11) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `about` text NOT NULL,
  `created_at` date NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `town_id` int(11) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `url_key` varchar(255) NOT NULL,
  `visibilty` int(11) NOT NULL,
  `highlights` text NOT NULL,
  `policies` text NOT NULL,
  `discounted_price` decimal(11,4) NOT NULL,
  `actual_price` decimal(11,4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `search_string` longtext NOT NULL,
  `display_product_image` tinyint(4) NOT NULL DEFAULT '1',
  `expiry_date` date NOT NULL,
  `display_price` tinyint(4) NOT NULL DEFAULT '1',
  `display_merchant_address` tinyint(4) NOT NULL DEFAULT '1',
  `display_merchant_contact_info` tinyint(4) NOT NULL DEFAULT '1',
  `display_fine_print` tinyint(4) NOT NULL DEFAULT '1',
  `display_highlights` tinyint(4) NOT NULL DEFAULT '1',
  `display_merchant_logo` tinyint(4) NOT NULL DEFAULT '1',
  `display_business_hour` tinyint(4) NOT NULL DEFAULT '1',
  `additional_info` text NOT NULL,
  `barcode_image` varchar(255) NOT NULL,
  `notify_for_qty_below` tinyint(4) NOT NULL DEFAULT '0',
  `target_qty` decimal(11,2) NOT NULL DEFAULT '0.00',
  `max_purchase_per_customer` int(11) NOT NULL DEFAULT '0',
  `qty_item_out_stock` int(11) NOT NULL DEFAULT '0',
  `stock_availbilty` tinyint(4) NOT NULL DEFAULT '1',
  `qty_available` int(11) NOT NULL DEFAULT '0',
  `gift_option` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deals`
--

LOCK TABLES `deals` WRITE;
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;
INSERT INTO `deals` VALUES (3,'vbbvc',7,12,3,'ghfj',0,'','0000-00-00',0,0,0,'0000-00-00','0000-00-00','',0,'','',0.0000,0.0000,0,0,1,'',1,'0000-00-00',1,1,1,1,1,1,1,'','',0,0.00,0,0,0,0,0),(6,'Choice of Hair Care and Beauty Services',7,4,1,'dfg',0,'fgdfg','0000-00-00',3,5,2,'2016-03-01','2016-03-31','ghf',2,'gfgdfg','fdgdfg',0.0000,0.0000,0,0,1,'Virtual Product (Coupon),dfg,ghfMAC,Africa,Kampala,XYZABC,New Town,Movies,Res',1,'2016-03-01',0,0,0,0,0,0,1,'','2-i.png',1,50.00,10,5,1,0,0),(7,'fdggfg-ghfgjfj-nmn',7,3,3,'jkjhk',1,'bn,mb,','0000-00-00',3,5,2,'2016-03-01','2016-03-31','jkhjk',0,'mnbmbn,','b,n,',120.0000,150.0000,0,0,1,'Configurable Product,jkjhk,jkhjkMAC,INDIA,Kampala,XYZABC,New Town,Movies,Res',1,'0000-00-00',1,1,1,1,1,1,1,'','',1,500.00,50,5,2,0,1),(8,'ghfgj',7,3,1,'gj',1,'fjfj','2016-03-21',3,5,2,'2016-03-01','2016-03-23','fjjj',1,'jfj','fj',1212.0000,5456.0000,0,0,0,'',1,'0000-00-00',1,1,1,1,1,1,1,'','',0,0.00,0,0,0,0,0),(9,'jk',7,4,1,'hjghjhgj',1,'jkjh','2016-03-22',3,5,2,'2016-03-01','2016-03-30','hhg',3,'kjhkhj','jkjh',8.0000,78.0000,0,0,0,'Virtual Product (Coupon),hjghjhgj,hhgMAC,Africa,Kampala,XYZABC,New Town',1,'0000-00-00',1,1,1,1,1,1,1,'','',0,0.00,0,0,1,0,0),(13,'Full Body Massage (60min) with Shower ',7,3,1,'Full Body Massage (60min) with Shower ',1,'','2016-03-22',3,5,2,'2016-03-01','2016-03-23','Full Body Massage (60min) with Shower ',2,'','',5.0000,6.0000,1,13,0,'Virtual Product (Coupon),Full Body Massage (60min) with Shower ,Full Body Massage (60min) with Shower MAC,INDIA,Kampala,XYZABC,New Town,Movies,Res',1,'0000-00-00',1,1,1,1,1,1,1,'','',0,0.00,0,0,1,0,0);
/*!40000 ALTER TABLE `deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealtypes`
--

DROP TABLE IF EXISTS `dealtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealtypes`
--

LOCK TABLES `dealtypes` WRITE;
/*!40000 ALTER TABLE `dealtypes` DISABLE KEYS */;
INSERT INTO `dealtypes` VALUES (1,'Virtual Product (Coupon)'),(3,'Configurable Product');
/*!40000 ALTER TABLE `dealtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `details` (
  `id` int(5) DEFAULT NULL,
  `code_name` varchar(45) DEFAULT NULL,
  `game_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,'criket',NULL),(2,'football',NULL),(3,'fd20','Football'),(3,'Hd20','hocky');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (7,'add-1.jpg',6),(8,'3-i.png',6),(9,'add-2.jpg',6),(10,'affiliate-6.jpg',6),(12,'2-i.png',6);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (5,'Chennai'),(6,'Barmer'),(7,'Udaipur'),(8,'Nasik'),(12,'Mumbai'),(13,'ghh');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_details`
--

DROP TABLE IF EXISTS `location_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_details`
--

LOCK TABLES `location_details` WRITE;
/*!40000 ALTER TABLE `location_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `location_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchants`
--

DROP TABLE IF EXISTS `merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb_link` varchar(255) NOT NULL,
  `twitter_link` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `allow_merchant_to_add_edit_deals` tinyint(4) NOT NULL DEFAULT '0',
  `allow_merchant_to_delete_deals` tinyint(4) NOT NULL DEFAULT '0',
  `allow_merchant_to_view_their_sales` tinyint(4) NOT NULL DEFAULT '0',
  `edit_and_view_their_details` tinyint(4) NOT NULL DEFAULT '1',
  `require_administrator_approval` tinyint(4) NOT NULL DEFAULT '1',
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `bank_information` text NOT NULL,
  `other_information` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `address3` text NOT NULL,
  `address4` text NOT NULL,
  `address5` text NOT NULL,
  `redeem_at` text NOT NULL,
  `name_on_card` varchar(255) NOT NULL,
  `sixteen_digit_number` int(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `expiry_month` int(12) NOT NULL,
  `expiry_year` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchants`
--

LOCK TABLES `merchants` WRITE;
/*!40000 ALTER TABLE `merchants` DISABLE KEYS */;
INSERT INTO `merchants` VALUES (5,'fdg','g.jpg','kl','lk','kl','lk','lk','lk',0,'kl','','','merchant_user','123456',0,0,1,1,1,'','','khushbu@hogoworld.com','dfgdgdfg','fgfgfdgfgdfg dgdsg','','','','','','','','',0,0,0,''),(6,'fg','2016 - 1.jpg','hd','h','dh','dh','hd','hg',0,'hd','','','','',0,0,0,1,1,'','','','','','','','','','','','','',0,0,0,''),(7,'MAC','affiliate-5.jpg','dsg','dfssdf','dsf','dsg','dsf','dsfds',1,'dfdf','','','Merchant_user2','123',1,0,0,1,1,'HDFC','hhjhkjjhg1313','','','','','address1kjk','address2jk','address3jkk','address4jk','address5\';l\'','redeem_at ;l\'','Khushbu Sonikj',2147483647,456,1,'2020'),(8,'chfghfgh','affiliate-5.jpg','dg','df@fgdf.vom','dg','hj','56546456456','5655676',1,'hgfjhgjghkj','','','','',0,0,0,1,1,'','','khushbu@hogoworld.com fdhdgh','jhllg','yyhyh','','','','','','','','',0,0,0,'');
/*!40000 ALTER TABLE `merchants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` int(5) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `points` int(5) DEFAULT NULL COMMENT '			',
  `code_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'viki',5,2),(2,'khushi',3,1),(3,'khushi',2,1),(4,'viki',5,2),(5,'khushi',4,1);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `retailer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `initial_qty` int(11) DEFAULT NULL,
  `remaining_qty` int(11) DEFAULT NULL,
  `actual_price` decimal(10,2) DEFAULT NULL,
  `discount_per` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `sold_limit` int(11) DEFAULT NULL,
  `additional_info` longtext,
  `policies` longtext,
  `what_you_get` longtext,
  `description` longtext,
  `added_on` date DEFAULT NULL,
  `valid_till` date DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Its first Item',2,6,3,10,8,500.00,20,400,6,'vijay','kumar','Boy','Its just short Description about this Product or Deal','2016-01-25',NULL,1,1),(2,'Its second item',2,6,3,10,8,500.00,20,400,6,'khushi','kumari','Girl','Its just short Description about this Product or Deal','2016-01-25',NULL,1,1),(3,'Third Product',4,9,3,500,400,1000.00,20,800,900,'dfbdlkvdlvflfvndvnvn nlf ndlnk dn dlfn dln ldn ldnk lndl ndl ndl ndln dln ldn ldn ldn ldn ldnfl ndlf ndln dln ldn ldnk ldn ldn ldn lkndl ndlfk ndlkn ldfn ldkfn ldnkf lkdn lnk',' lfnk kdlnfkl ndfl ndflk ndkl ndlkn ldn kldn kldn ldnl kndlk ndln dlknf ldn ldn lnkdl ndlkn kln lfn ldn ldnk dlnl','ldnkblnkdbldl kllk l lkllkgl nkgl nlkn klnlgnk ln lkn lnkkl ndlk ndl d nlnk dkl nln lkndl nln kldnl ndl ndkln lkdnl ndlnk dl nl nln lnl nln ln  nnnl kln ldknlkgnbldgnklnkfln ldkn ln lkgn glkn lkdnf kldn kl','ldnkflndk lndlk ndlndln lkdn ldnl ndl ndln ln lnk lfkn ldnlfn dlbn ldn lkdn ldnlf ndfln dlfn dlfn ldfn ldnk ldn lkdn ldnl knfl kfndlk ndlkn lfkn ldknlfnldfnldfn lkndf lnk lknd lkdnf lkdfn lkn','2016-01-29',NULL,1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `photo` mediumblob,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (1,'chaumeen','',2),(2,'burgger','',2);
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailer`
--

DROP TABLE IF EXISTS `retailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer`
--

LOCK TABLES `retailer` WRITE;
/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
INSERT INTO `retailer` VALUES (1,'abc','abc@gmail.com','abcd','','324823986',1,1,'2016-01-10'),(2,'def','def@gmail.com','sddf',NULL,'34235545',2,1,'2016-01-10'),(3,'ghi','ghi@gmail.com','sdfsdf',NULL,'234523453',3,1,'2016-01-10'),(4,'jkl','jkl@gmail.com','sdfsdf',NULL,'34535354',2,1,'2016-01-10'),(5,'mno','mno@gmail.com','dsree',NULL,'345345435',1,1,'2016-01-10'),(6,'pqr','pqr@gmail.com','rferdf',NULL,'3453453454',3,1,'2016-01-10'),(7,'','','','','',1,NULL,'2016-01-29'),(8,'sfsdf','sdfsdf','sdfsdf','sdfsdfds','sdfsdfsdf',6,NULL,'2016-01-29'),(9,'Viki','Viki@gmail.com','Admin123','Roy Colony','9530069076',2,NULL,'2016-01-29'),(10,'fgvdv','dvdfvv','dfvfdvdv','vdfdvd','vdfvdfvdfv',10,NULL,'2016-02-01');
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (3,'Kampala',4);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribe`
--

DROP TABLE IF EXISTS `subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `is_subscribe` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribe`
--

LOCK TABLES `subscribe` WRITE;
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `town`
--

DROP TABLE IF EXISTS `town`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `town` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `town`
--

LOCK TABLES `town` WRITE;
/*!40000 ALTER TABLE `town` DISABLE KEYS */;
INSERT INTO `town` VALUES (2,4,3,5,'New Town');
/*!40000 ALTER TABLE `town` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-23 17:55:36
