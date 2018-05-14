-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: flaskDB
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `crime`
--

DROP TABLE IF EXISTS `crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime` (
  `stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `year` varchar(45) NOT NULL,
  `index` varchar(45) NOT NULL,
  `violent` varchar(45) NOT NULL,
  `property` varchar(45) NOT NULL,
  `murder` varchar(45) NOT NULL,
  `rape` varchar(45) NOT NULL,
  `robbery` varchar(45) NOT NULL,
  `assault` varchar(45) NOT NULL,
  `burglary` varchar(45) NOT NULL,
  `larceny` varchar(45) NOT NULL,
  `vehicle` varchar(45) NOT NULL,
  `arson` varchar(45) NOT NULL,
  PRIMARY KEY (`stats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime`
--

LOCK TABLES `crime` WRITE;
/*!40000 ALTER TABLE `crime` DISABLE KEYS */;
INSERT INTO `crime` VALUES (1,'NC','Cumberland','Fayetteville','2007','7189.9','692.1','6497.8','9.5','32.9','221.4','428.3','1897.2','4189.7','411','31.2'),(2,'NC','Cumberland','Fayetteville','2008','7538','833.3','6704.8','11.7','34.7','290.9','495.9','1873.9','4394','436.8','31.7'),(3,'NC','Cumberland','Fayetteville','2009','7525.5','687.3','6838.2','12.7','43.1','234.5','397.1','2177.8','4261.5','398.9','38'),(4,'NC','Cumberland','Fayetteville','2010','6519.1','564','5955','7.8','25.4','200','330.9','1982.1','3647.5','325.5','51.1'),(5,'NC','Cumberland','Fayetteville','2011','6615.7','548.1','6067.5','10.6','24','206.7','306.9','2083.4','3670.2','313.9','32.3'),(6,'NC','Cumberland','Fayetteville','2012','6717.7','582.7','6135','9.8','30.2','231.7','311.1','2028.5','3790.4','316.1','33'),(7,'NC','Cumberland','Fayetteville','2013','6132.6','562.7','5569.9','9.4','25.1','235.6','292.6','1613.4','3690.2','266.3','28.8'),(8,'NC','Cumberland','Fayetteville','2014','5377.5','523.9','4853.6','10.6','28.7','196.4','288.2','1249.8','3352.7','251','34.3'),(9,'NC','Cumberland','Fayetteville','2015','5107.1','554.8','4552.3','8.8','28.6','167.4','350','1099.3','3262.9','190.1','31.8'),(10,'NC','Cumberland','Fayetteville','2016','4895.2','670.7','4224.6','13.9','39.9','147.5','469.4','984.9','3058.3','181.4','31'),(11,'NC','HOKE','Raeford','2007','2049.7','199','1850.6','None','14.2','73.5','111.4','1028.4','670.6','151.7','14.2'),(12,'NC','HOKE','Raeford','2008','2804.4','151.4','2653','14','4.7','65.2','67.5','1621.2','908.4','123.5','2.3'),(13,'NC','HOKE','Raeford','2009','2961.8','164.3','2797.5','2.3','6.8','56.3','99','1883.8','774.2','139.5','9'),(14,'NC','HOKE','Raeford','2010','3812.8','145.2','3667.6','4.3','8.7','43.4','88.9','2009.4','1452.3','205.9','2.2'),(15,'NC','HOKE','Raeford','2011','2877','171','2706','None','12.7','67.5','90.8','1610.5','962.5','133','29.6'),(16,'NC','HOKE','Raeford','2012','2160.4','156.9','2003.5','6.1','4.1','67.3','79.5','1070','882.5','51','38.7'),(17,'NC','HOKE','Raeford','2013','1630.3','100.1','1530.2','2','10','28','60.1','783.1','673','74.1','2'),(18,'NC','HOKE','Raeford','2014','2518.2','128.3','2389.9','3.9','13.8','29.6','80.9','945.3','1373.5','71','13.8'),(19,'NC','HOKE','Raeford','2015','2051.7','174.6','1877.1','None','2','39.2','133.4','763','1055.3','58.8','7.8'),(20,'NC','HOKE','Raeford','2016','2474.1','158.4','2315.7','9.7','5.8','21.2','121.7','948.3','1303.7','63.7','11.6');
/*!40000 ALTER TABLE `crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homes`
--

DROP TABLE IF EXISTS `homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homes` (
  `home_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(60) DEFAULT NULL,
  `address` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `bedrooms` varchar(45) NOT NULL,
  `bathrooms` varchar(45) NOT NULL,
  `sqfeet` varchar(45) NOT NULL,
  `link` varchar(160) NOT NULL,
  PRIMARY KEY (`home_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homes`
--

LOCK TABLES `homes` WRITE;
/*!40000 ALTER TABLE `homes` DISABLE KEYS */;
INSERT INTO `homes` VALUES (2,'static\\homes\\hm1.jpg','6813 Sugarbin Ln','NC','Cumberland','Fayettevile','28314','$109,000','3','2','1,101','https://www.zillow.com/homes/for_sale/Fayetteville-NC/53703112_zpid/52001_rid/globalrelevanceex_sort/35.273092,-78.470536,34.774331,-79.20868_rect/10_zm/'),(3,'static\\homes\\hm2.jpg','1067 Tyler Dr','NC','Cumberland','Fayetteville','28314','$95,700','3','2','1,051','https://www.zillow.com/homes/for_sale/Fayetteville-NC/53698711_zpid/52001_rid/globalrelevanceex_sort/35.273092,-78.470536,34.774331,-79.20868_rect/10_zm/'),(4,'static\\homes\\hm3.jpg','6374 Lake Trail Dr','NC','Cumberland','Fayetteville','28304','$61,450','3','2','1,320','https://www.zillow.com/homes/for_sale/Fayetteville-NC/53705249_zpid/52001_rid/globalrelevanceex_sort/35.273092,-78.470536,34.774331,-79.20868_rect/10_zm/'),(5,'static\\homes\\hm4.jpg','4653 Woodline Dr','NC','Cumberland','Fayetteville','28314','$165,450','4','3','2,519','https://www.zillow.com/homes/for_sale/Fayetteville-NC/121371338_zpid/52001_rid/globalrelevanceex_sort/35.273373,-78.470192,34.774614,-79.208336_rect/10_zm/'),(6,'static\\homes\\hm5.jpg','913 Hidden Oasis Dr ','NC','Cumberland','Fayetteville','28312','$139,900','3','2','2,001','https://www.trulia.com/p/nc/fayetteville/913-hidden-oasis-dr-fayetteville-nc-28312--1016564933'),(7,'static\\homes\\hm6.jpg','4310 Coventry Rd','NC','Cumberland','Fayetteville','28304','$98,900','3','2','1,657','https://www.trulia.com/p/nc/fayetteville/4310-coventry-rd-fayetteville-nc-28304--2026005205'),(8,'static\\homes\\hm7.jpg','135 Pinewood Cir','NC','Hoke','Raeford','28376','$147,900','3','2','1,801','https://www.trulia.com/p/nc/raeford/135-pinewood-cir-raeford-nc-28376--2026208085'),(9,'static\\homes\\hm8.jpg','124 Hunters Creek Dr ','NC','Hoke','Raeford','28376','$119,995','3','2','1,101','https://www.trulia.com/p/nc/raeford/124-hunters-creek-dr-raeford-nc-28376--1008375253'),(10,'static\\homes\\hm9.jpg','148 Gait Ct ','NC','Hoke','Raeford','28376','$174,700','3','3','2,001','https://www.trulia.com/p/nc/raeford/148-gait-ct-raeford-nc-28376--1097726030'),(11,'static\\homes\\hm10.jpg','119 Fading Trail Ln ','NC','Hoke','Raeford','28376','$110,000','3','2','1,125','https://www.trulia.com/p/nc/raeford/119-fading-trail-ln-raeford-nc-28376--1012311552'),(12,'static\\homes\\hm11.jpg','3522 Rittenour Dr','NC','Cumberland','Hope Mills','28348','$149,900','3','2','1,456','https://www.trulia.com/p/nc/hope-mills/3522-rittenour-dr-hope-mills-nc-28348--2026135568'),(13,'static\\homes\\hm12.jpg','350 Fairfield Cir','NC','Hoke','Raeford','28376','$179,000','4','2','1,957','https://www.trulia.com/p/nc/raeford/350-fairfield-cir-raeford-nc-28376--1098911172');
/*!40000 ALTER TABLE `homes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `jobID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `company` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `description` tinytext NOT NULL,
  `hyperlink` tinytext NOT NULL,
  `county` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Mortgage Loan Originator ','CrossCountry Mortgage, Inc',' Fayetteville','The Outside Loan Originator (“Outside LO”) is responsible for originating and processing real estate mortgage loans in accordance with CrossCountry Mortgage, Inc. (“CCM”) processes and product guidelines. ','https://www.indeed.com/viewjob?jk=d0bf50b4700a6497','Cumberland','NC'),(2,'SOCOM-Budget Financial Analyst','St. Michael\'s Inc.','Fort Bragg','The selected candidate \nfor this position shall help execute the full range of financial \nprocessing and analytical activities for our client. ','https://www.indeed.com/viewjob?jk=8bff618d4296afdf','Cumberland','NC'),(3,'Membership Counselor','Fit4life','Cameron','Sales team members are responsible for promoting and selling memberships, supplements and services to potential new members and selling renewals, upgrades, supplements and services to current gym members.','https://www.indeed.com/cmp/Fit4Life/jobs/Membership-Counselor-5641e46b03c466d4','Moore','NC'),(4,'Customer Service Representative','Public Works Commission','Fayetteville','This position is responsible for receiving and processing routine customer inquiries, service orders and/or complaints about utility services.','https://www.indeed.com/cmp/PUBLIC-WORKS-COMMISSION/jobs/Customer-Service-Representative-0fe7c06f3906c003','Cumberland','NC'),(5,'Medical Secretary','Southern Pines Women\'s Health Center','Southern Pines','Full Time Medical Secretary needed for a busy OB/GYN medical practice. ','https://www.indeed.com/cmp/Southern-Pines-Women\'s-Health-Center/jobs/Medical-Secretary-0fb6cf44597775ce','Moore','NC'),(6,'Admissions Representative','University of North Carolina at Pembroke ','Pembroke','Promote the University at college fairs.	','https://www.indeed.com/viewjob?jk=026e9e5f22ff9c33','Robeson','NC'),(7,'Part-Time Sales Associate','Cumberland County ABC B','Fayetteville','Positions are retail sales in one of our ten clean, friendly ABC stores in Cumberland County. ','https://www.indeed.com/viewjob?jk=58345333b1943cc0','Cumberland','NC'),(8,'Scheduler - Harnett Scheduling','Cape Fear Valley Health System','Hoke County','The Scheduling Coordinator shall strive to ensure complete continuity of accuracy, productivity, and efficiency in the flow of patient care.','https://www.indeed.com/viewjob?jk=14601815f6195a84','Hoke','NC'),(9,'Supervisor, Patient Registration','FirstHealth of the Carolinas','Raeford','Communicates and interacts with patients, family members, visitors, hospital staff, physicians and visitors in a professional, courteous manner. ','https://www.indeed.com/viewjob?jk=2852204e70abff9b','Hoke','NC'),(10,'Specimen Processor','FirstHealth of the Carolinas ','Raeford','Performs laboratory specimen receiving, processing and distribution functions. ','https://www.indeed.com/viewjob?jk=e6a4b3ae8252ef44','Hoke','NC'),(19,'Patient Representative ','Veterans Affairs','Fayetteville','To qualify for this position, applicants must meet all requirements by the closing date of this announcement, 04/09/2018','https://www.indeed.com/viewjob?jk=201bf24cb1777380','Cumberland','NC'),(20,'Beer Explorer','All About Beer, LLC ','Fayetteville','As a Beer Explorer with All About Beer, you will not only have the opportunity to greatly expand your knowledge, but also have the chance to impact your local beer market.','https://www.indeed.com/cmp/World-Beer-Festival/jobs/Beer-Explorer-a74f81b941cf12df','Cumberland','NC'),(21,'Front Desk Receptionist','Cross Creek Animal Hospital','Fayetteville','The receptionist is the client\'s first contact when calling or visiting the practice and as such represents the professional image of the practice to visitors and callers.','https://www.indeed.com/cmp/Cross-Creek-Animal-Hospital/jobs/Front-Desk-Receptionist-c48e5b29c245f2dd','Cumberland','NC');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(45) NOT NULL,
  `district_name` varchar(45) NOT NULL,
  `num_students` int(11) NOT NULL,
  `county` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `school_rank` varchar(45) NOT NULL,
  `student_ratio` varchar(45) NOT NULL,
  `test_scores` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'Rockfish Hoke Elementary','Hoke County Schools',766,'Hoke','Raeford','28376','244','18.2','78.9','6251 Rockfish Rd','NC'),(2,'Don D Steed Elementary','Hoke County Schools',678,'Hoke','Raeford','28376','406','15','70','800 Phillipi Church Rd','NC'),(3,'J W McLauchlin Elementary','Hoke County Schools',272,'Hoke','Raeford','28376','614','14.3','57.8','326 N Main St','NC'),(4,'Upchurch Elementary','Hoke County Schools',635,'Hoke','Raeford','28376','801','14.4','47.2','730 Turnpike Road','NC'),(5,'West Hoke Elementary','Hoke County Schools',446,'Hoke','Raeford','28376','877','15.3','43.1','6050 Turnpike Road','NC'),(6,'Scurlock Elementary','Hoke County Schools',601,'Hoke','Raeford','28376','1238','15.4','17.8','775 Rockfish Rd','NC'),(7,'Alderman Road Elementary','Cumberland County Schools',722,'Cumberland','Fayetteville','28306','758','15.3','44.2','2860 Alderman Road	','NC'),(8,'Alma O Easom Elementary','Cumberland County Schools',272,'Cumberland','Fayetteville','28305','N/A','16.0','N/A','1610 Westlawn Avenue','NC'),(9,'Armstrong Elementary','Cumberland County Schools',443,'Cumberland','Eastover','28312','255','13','78.1','3395 Dunn Road	','NC'),(10,'Ashley Elementary','Cumberland County Schools',212,'Cumberland','Fayetteville','28304','958','14.1','37','810 Trainer Drive	','NC'),(11,'Beaver Dam Elementary','Cumberland County Schools',96,'Cumberland','Roseboro','28382','12','13.7','96.4','12059 Hwy 210 S','NC'),(12,'Benjamin J Martin Elementary','Cumberland County Schools',556,'Cumberland','Fayetteville','28303','918','15.0','38.9','430 N Reilly Road','NC'),(13,'Bill Hefner Elementary','Cumberland County Schools',754,'Cumbeerland','Fayetteville','28314','917','17.9','39','7059 Calamar Drive','NC'),(14,'Brentwood Elementary','Cumberland County Schools',552,'Cumberland','Fayetteville','28304','822','13.4','45.1','1115 Bingham Drive','NC'),(15,'C Wayne Collier Elementary','Cumberland County Schools',521,'Cumberland','Hope Mills','28348','736','16.2','50.2','3522 Sturbridge Drive','NC'),(16,'Cliffdale Elementary','Cumberland County Schools',656,'Cumberland','Fayetteville','28304','1095','14.2','28','6450 Cliffdale Road','NC'),(17,'College Lakes Elementary','Cumberland County Schools',429,'Cumberland','Fayetteville','28311','377','13','71.4','4963 Rosehill Road','NC'),(18,'Cumberland Mills Elementary','Cumberland County Schools',642,'Cumberland','Fayetteville','28306','696','15.6','52.8','2576 Hope Mills Road','NC'),(19,'Cumberland Road Elementary','Cumberland County Schools',423,'Cumberland','Fayetteville','28306','809','13.2','46.2','2700 Cumberland Road','NC'),(20,'District No 7 Elementary','Cumberland County Schools',253,'Cumberland','Wade','28395','294','14','76.3','5721 Smithfield Road','NC'),(21,'E E Miller Elementary','Cumberland County Schools',572,'Cumberland','Fayetteville','28314','440','15','67.7','1361 Rim Road','NC'),(22,'E Melvin Honeycutt Elementary','Cumberland County Schools',829,'Cumberland','Fayetteville','28306','243','17.6','78.6','4665 Lakewood Drive','NC'),(23,'Eastover-Central Elementary','Cumberland County Schools',423,'Cumberland','Eastover','28312','70','13.6','91.8','5174 Dunn Road','NC'),(24,'Educational V Baldwin Elementary','Cumberland County Schools',646,'Cumberland','Hope Mills','28348','1115','15.7','26.6','4441 Legion Road','NC'),(25,'Elizabeth M Cashwell Elementary','Cumberland County Schools',747,'Cumberland','Fayetteville','28306','960','16.6','36.8','2970 Legion Road','NC'),(26,'Ferguson-Easley Elementary','Cumberland County Schools',303,'Cumberland','Fayetteville','28301','1370','11.6','5.5','1857 Seabrook Road','NC'),(27,'Gallberry Farm Elementary','Cumberland County Schools',921,'Cumberland','Hope Mills','28348','503','16.7','64.1','8019 Byerly Drive','NC'),(28,'Glendale Acres Elementary','Cumberland County Schools',237,'Cumberland','Fayetteville','28304','N/A','12.4','N/A','2915 Skycrest Drive','NC'),(29,'Grays Creek Elementary','Cumberland County Schools',432,'Cumberland','Hope Mills','28348','483','13.9','65.4','2964 School Rd','NC'),(30,'Howard L Hall Elementary','Cumberland County Schools',628,'Cumberland','Fayetteville','28311','399','15.7','70','526 Andrews Road','NC'),(31,'J W Coon Elementary','Cumberland County Schools',214,'Cumberland','Fayetteville','28304','1028','11.2','32.6','905 Hope Mills Road','NC'),(32,'J W Seabrook Elementary','Cumberland County Schools',274,'Cumberland','Fayetteville','28301','289','12.4','76.6','4619 Nc Hwy 210 South','NC'),(33,'Lake Rim Elementary','Cumberland County Schools',683,'Cumberland','Fayetteville','28314','739','17','50','1455 Hoke Loop Road','NC'),(34,'Lillian Black Elementary','Cumberland County Schools',224,'Cumberland','Spring Lake','28390','886','11.7','41.6','125 S 3rd Street','NC'),(35,'Long Hill Elementary','Cumberland County Schools',458,'Cumberland','Fayetteville','28311','203','16.3','81','6490 Ramsey Street','NC'),(36,'Loyd E Auman Elementary','Cumberland County Schools',543,'Cumberland','Fayetteville','28304','924','13.5','38.7','6882 Raeford Road','NC'),(37,'Lucile Souders Elementary','Cumberland County Schools',480,'Cumberland','Fayetteville','28301','932','17.7','38.3','128 Hillview Avenue','NC'),(38,'Manchester Elementary','Cumberland County Schools',374,'Cumberland','Spring Lake','28390','1282','14.9','12.7','611 Spring Avenue','NC'),(39,'Margaret Willis Elementary','Cumberland County Schools',342,'Cumberland','Fayetteville','28305','916','13.1','39.1','1412 Belvedere Avenue','NC'),(40,'Mary McArthur Elementary','Cumberland County Schools',458,'Cumberland','Fayetteville','28304','1050','13.8','30.8','3809 Village Drive','NC'),(41,'Montclair Elementary','Cumberland County Schools',471,'Cumberland','Fayetteville','28314','1111','14.2','27','555 Glensford Drive','NC'),(42,'Morganton Road Elementary','Cumberland County Schools',500,'Cumberland','Fayetteville','28303','1069','16.1','29.9','102 Bonanza Drive','NC'),(43,'New Century International Elementary','Cumberland County Schools',747,'Cumberland','Fayetteville','28306','532','15.2','62','7465 Century Circle','NC'),(44,'Ponderosa Elementary','Cumberland County Schools',368,'Cumberland','Fayetteville','28303','697','13.1','52.8','311 Bonanza Drive','NC'),(45,'Raleigh Road Elementary','Cumberland County Schools',217,'Cumberland','Linden','28356','N/A','15.5','N/A','8330 Ramsey Street','NC'),(46,'Rockfish Elementary','Cumberland County Schools',692,'Cumberland','Hope Mills','28348','292','17.3','76.4','5763 Rockfish Road','NC'),(47,'Sherwood Park Elementary','Cumberland County Schools',393,'Cumberland','Fayetteville','28304','974','14.5','35.9','2115 Hope Mills Road','NC'),(48,'Stedman Elementary','Cumberland County Schools',303,'Cumberland','Stedman','28391','335','12.6','74.1','7370 Clinton Road Hwy 24','NC'),(49,'Stedman Primary','Cumberland County Schools',167,'Cumberland','Stedman','28391','N/A','13.9','N/A','155 E First Street','NC'),(50,'Stoney Point Elementary','Cumberland County Schools',850,'Cumberland','Fayetteville','28306','143','18.4','85.2','7411 Rockfish Road','NC'),(51,'Sunnyside Elementary','Cumberland County Schools',372,'Cumberland','Fayetteville','28312','1012','15.5','33.7','3876 Sunnyside School Road','NC'),(52,'Teresa C Berrien Elementary','Cumberland County Schools',159,'Cumberland','Fayetteville','28301','1076','12.2','29.3','800 North Street','NC'),(53,'Vanstory Hills Elementary','Cumberland County Schools',516,'Cumberland','Fayetteville','28303','151','16.1','84.8','400 Foxhall Road','NC'),(54,'Walker Spivey Elementary','Cumberland County Schools',358,'Cumberland','Fayetteville','28301','888','14.3','41.6','500 Fisher Street','NC'),(55,'Warrenwood Elementary','Cumberland County Schools',420,'Cumberland','Fayetteville','28311','1020','12.3','33.2','4618 Rosehill Road','NC'),(56,'Westarea Elementary','Cumberland County Schools',530,'Cumberland','Fayetteville','28301','1016','13.9','33.4','941 Country Club Drive','NC'),(57,'William H Owen Elementary','Cumberland County Schools',432,'Cumberland','Fayetteville','28304','759','11','48.7','4533 Raeford Road','NC'),(58,'William T Brown Elementary','Cumberland County Schools',490,'Cumberland','Spring Lake','28390','1071','13.6','29.7','2522 Andrews Church Road','NC');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `secretq` varchar(160) NOT NULL,
  `secreta` varchar(45) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'riley','riley@jet.set','$2b$12$sbmQJbByos09B5ldNrE0/.vO/jxceDRug49c1QrLbR5oUREWS1Gmq','home','vermont','',''),(13,'test','test@test.com','$2b$12$FzNC0iS5aA563EqMbz0PXOSc49i3y8WGT7qwwYzMUNIc7F5Aivs5K','home','vermont','',''),(14,'loriloo','lorilei@someplace.net','$2b$12$ZKwwfGIbvFnnBvq4UkumluicnDFwL2vtpGFn2Z57n3dAg8EapE7QS','where is home','ohio','',''),(15,'vadult','vince@notakid.net','$2b$12$R1kJ8H3ck7gNgpVahS0CUOGWFKPDJAmsErDOVPuNpwLSAjeV.lDwe','Are you a grownup?','yes, yes I am','Vincent','Adultman'),(16,'cnoyes','noyesc@student.faytechcc.edu','$2b$12$Hs0Aaqj1K/0H.xpidNfsQecyUuqzY28PUloN3rnv1V65tfq.mO1oW','What state were you born?','deleware','Chris','Noyes');
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

-- Dump completed on 2018-05-13  9:56:23
