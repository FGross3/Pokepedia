CREATE DATABASE  IF NOT EXISTS `pokemon_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `pokemon_db`;
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: pokemon_db
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `damage_factor`
--

DROP TABLE IF EXISTS `damage_factor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `damage_factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `move_type_id` int(2) NOT NULL,
  `target_pokemon_id` int(2) NOT NULL,
  `damage_factor` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `damage_factor`
--

LOCK TABLES `damage_factor` WRITE;
/*!40000 ALTER TABLE `damage_factor` DISABLE KEYS */;
INSERT INTO `damage_factor` VALUES (1,1,1,100),(2,1,2,100),(3,1,3,100),(4,1,4,100),(5,1,5,100),(6,1,6,50),(7,1,7,100),(8,1,8,0),(9,1,9,50),(10,1,10,100),(11,1,11,100),(12,1,12,100),(13,1,13,100),(14,1,14,100),(15,1,15,100),(16,1,16,100),(17,1,17,100),(18,1,18,100),(19,2,1,200),(20,2,2,100),(21,2,3,50),(22,2,4,50),(23,2,5,100),(24,2,6,200),(25,2,7,50),(26,2,8,0),(27,2,9,200),(28,2,10,100),(29,2,11,100),(30,2,12,100),(31,2,13,100),(32,2,14,50),(33,2,15,200),(34,2,16,100),(35,2,17,200),(36,2,18,50),(37,3,1,100),(38,3,2,200),(39,3,3,100),(40,3,4,100),(41,3,5,100),(42,3,6,50),(43,3,7,200),(44,3,8,100),(45,3,9,50),(46,3,10,100),(47,3,11,100),(48,3,12,200),(49,3,13,50),(50,3,14,100),(51,3,15,100),(52,3,16,100),(53,3,17,100),(54,3,18,100),(55,4,1,100),(56,4,2,100),(57,4,3,100),(58,4,4,50),(59,4,5,50),(60,4,6,50),(61,4,7,100),(62,4,8,50),(63,4,9,0),(64,4,10,100),(65,4,11,100),(66,4,12,200),(67,4,13,100),(68,4,14,100),(69,4,15,100),(70,4,16,100),(71,4,17,100),(72,4,18,200),(73,5,1,100),(74,5,2,100),(75,5,3,0),(76,5,4,200),(77,5,5,100),(78,5,6,200),(79,5,7,50),(80,5,8,100),(81,5,9,200),(82,5,10,200),(83,5,11,100),(84,5,12,50),(85,5,13,200),(86,5,14,100),(87,5,15,100),(88,5,16,100),(89,5,17,100),(90,5,18,100),(91,6,1,100),(92,6,2,50),(93,6,3,200),(94,6,4,100),(95,6,5,50),(96,6,6,100),(97,6,7,200),(98,6,8,100),(99,6,9,50),(100,6,10,200),(101,6,11,100),(102,6,12,100),(103,6,13,100),(104,6,14,100),(105,6,15,200),(106,6,16,100),(107,6,17,100),(108,6,18,100),(109,7,1,100),(110,7,2,50),(111,7,3,50),(112,7,4,50),(113,7,5,100),(114,7,6,100),(115,7,7,100),(116,7,8,50),(117,7,9,50),(118,7,10,50),(119,7,11,100),(120,7,12,200),(121,7,13,100),(122,7,14,200),(123,7,15,100),(124,7,16,100),(125,7,17,200),(126,7,18,50),(127,8,1,0),(128,8,2,100),(129,8,3,100),(130,8,4,100),(131,8,5,100),(132,8,6,100),(133,8,7,100),(134,8,8,200),(135,8,9,100),(136,8,10,100),(137,8,11,100),(138,8,12,100),(139,8,13,100),(140,8,14,200),(141,8,15,100),(142,8,16,100),(143,8,17,50),(144,8,18,100),(145,9,1,100),(146,9,2,100),(147,9,3,100),(148,9,4,100),(149,9,5,100),(150,9,6,200),(151,9,7,100),(152,9,8,100),(153,9,9,50),(154,9,10,50),(155,9,11,50),(156,9,12,100),(157,9,13,50),(158,9,14,100),(159,9,15,200),(160,9,16,100),(161,9,17,100),(162,9,18,200),(163,10,1,100),(164,10,2,100),(165,10,3,100),(166,10,4,100),(167,10,5,100),(168,10,6,50),(169,10,7,200),(170,10,8,100),(171,10,9,200),(172,10,10,50),(173,10,11,50),(174,10,12,200),(175,10,13,100),(176,10,14,100),(177,10,15,200),(178,10,16,50),(179,10,17,100),(180,10,18,100),(181,11,1,100),(182,11,2,100),(183,11,3,100),(184,11,4,100),(185,11,5,200),(186,11,6,200),(187,11,7,100),(188,11,8,100),(189,11,9,100),(190,11,10,200),(191,11,11,50),(192,11,12,50),(193,11,13,100),(194,11,14,100),(195,11,15,100),(196,11,16,50),(197,11,17,100),(198,11,18,100),(199,12,1,100),(200,12,2,100),(201,12,3,50),(202,12,4,50),(203,12,5,200),(204,12,6,200),(205,12,7,50),(206,12,8,100),(207,12,9,50),(208,12,10,50),(209,12,11,200),(210,12,12,50),(211,12,13,100),(212,12,14,100),(213,12,15,100),(214,12,16,50),(215,12,17,100),(216,12,18,100),(217,13,1,100),(218,13,2,100),(219,13,3,200),(220,13,4,100),(221,13,5,0),(222,13,6,100),(223,13,7,100),(224,13,8,100),(225,13,9,100),(226,13,10,100),(227,13,11,200),(228,13,12,50),(229,13,13,50),(230,13,14,100),(231,13,15,100),(232,13,16,50),(233,13,17,100),(234,13,18,100),(235,14,1,100),(236,14,2,200),(237,14,3,100),(238,14,4,200),(239,14,5,100),(240,14,6,100),(241,14,7,100),(242,14,8,100),(243,14,9,50),(244,14,10,100),(245,14,11,100),(246,14,12,100),(247,14,13,100),(248,14,14,50),(249,14,15,100),(250,14,16,100),(251,14,17,0),(252,14,18,100),(253,15,1,100),(254,15,2,100),(255,15,3,200),(256,15,4,100),(257,15,5,200),(258,15,6,100),(259,15,7,100),(260,15,8,100),(261,15,9,50),(262,15,10,50),(263,15,11,50),(264,15,12,200),(265,15,13,100),(266,15,14,100),(267,15,15,50),(268,15,16,200),(269,15,17,100),(270,15,18,100),(271,16,1,100),(272,16,2,100),(273,16,3,100),(274,16,4,100),(275,16,5,100),(276,16,6,100),(277,16,7,100),(278,16,8,100),(279,16,9,50),(280,16,10,100),(281,16,11,100),(282,16,12,100),(283,16,13,100),(284,16,14,100),(285,16,15,100),(286,16,16,200),(287,16,17,100),(288,16,18,0),(289,17,1,100),(290,17,2,50),(291,17,3,100),(292,17,4,100),(293,17,5,100),(294,17,6,100),(295,17,7,100),(296,17,8,200),(297,17,9,100),(298,17,10,100),(299,17,11,100),(300,17,12,100),(301,17,13,100),(302,17,14,200),(303,17,15,100),(304,17,16,100),(305,17,17,50),(306,17,18,50),(307,18,1,100),(308,18,2,200),(309,18,3,100),(310,18,4,50),(311,18,5,100),(312,18,6,100),(313,18,7,100),(314,18,8,100),(315,18,9,50),(316,18,10,50),(317,18,11,100),(318,18,12,100),(319,18,13,100),(320,18,14,100),(321,18,15,100),(322,18,16,200),(323,18,17,200),(324,18,18,100);
/*!40000 ALTER TABLE `damage_factor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moves`
--

DROP TABLE IF EXISTS `moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `moves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `move` varchar(45) NOT NULL,
  `typing_id` int(2) NOT NULL,
  `power` varchar(3) DEFAULT NULL,
  `pp` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves`
--

LOCK TABLES `moves` WRITE;
/*!40000 ALTER TABLE `moves` DISABLE KEYS */;
INSERT INTO `moves` VALUES (1,'pound',1,'40',35),(2,'karate-chop',2,'50',25),(3,'double-slap',1,'15',10),(4,'comet-punch',1,'18',15),(5,'mega-punch',1,'80',20),(6,'pay-day',1,'40',20),(7,'fire-punch',10,'75',15),(8,'ice-punch',15,'75',15),(9,'thunder-punch',13,'75',15),(10,'scratch',1,'40',35),(11,'vice-grip',1,'55',30),(12,'guillotine',1,'',5),(13,'razor-wind',1,'80',10),(14,'swords-dance',1,'',20),(15,'cut',1,'50',30),(16,'gust',3,'40',35),(17,'wing-attack',3,'60',35),(18,'whirlwind',1,'',20),(19,'fly',3,'90',15),(20,'bind',1,'15',20),(21,'slam',1,'80',20),(22,'vine-whip',12,'45',25),(23,'stomp',1,'65',20),(24,'double-kick',2,'30',30),(25,'mega-kick',1,'120',5),(26,'jump-kick',2,'100',10),(27,'rolling-kick',2,'60',15),(28,'sand-attack',5,'',15),(29,'headbutt',1,'70',15),(30,'horn-attack',1,'65',25),(31,'fury-attack',1,'15',20),(32,'horn-drill',1,'',5),(33,'tackle',1,'40',35),(34,'body-slam',1,'85',15),(35,'wrap',1,'15',20),(36,'take-down',1,'90',20),(37,'thrash',1,'120',10),(38,'double-edge',1,'120',15),(39,'tail-whip',1,'',30),(40,'poison-sting',4,'15',35),(41,'twineedle',7,'25',20),(42,'pin-missile',7,'25',20),(43,'leer',1,'',30),(44,'bite',17,'60',25),(45,'growl',1,'',40),(46,'roar',1,'',20),(47,'sing',1,'',15),(48,'supersonic',1,'',20),(49,'sonic-boom',1,'',20),(50,'disable',1,'',20),(51,'acid',4,'40',30),(52,'ember',10,'40',25),(53,'flamethrower',10,'90',15),(54,'mist',15,'',30),(55,'water-gun',11,'40',25),(56,'hydro-pump',11,'110',5),(57,'surf',11,'90',15),(58,'ice-beam',15,'90',10),(59,'blizzard',15,'110',5),(60,'psybeam',14,'65',20),(61,'bubble-beam',11,'65',20),(62,'aurora-beam',15,'65',20),(63,'hyper-beam',1,'150',5),(64,'peck',3,'35',35),(65,'drill-peck',3,'80',20),(66,'submission',2,'80',20),(67,'low-kick',2,'',20),(68,'counter',2,'',20),(69,'seismic-toss',2,'',20),(70,'strength',1,'80',15),(71,'absorb',12,'20',25),(72,'mega-drain',12,'40',15),(73,'leech-seed',12,'',10),(74,'growth',1,'',20),(75,'razor-leaf',12,'55',25),(76,'solar-beam',12,'120',10),(77,'poison-powder',4,'',35),(78,'stun-spore',12,'',30),(79,'sleep-powder',12,'',15),(80,'petal-dance',12,'120',10),(81,'string-shot',7,'',40),(82,'dragon-rage',16,'',10),(83,'fire-spin',10,'35',15),(84,'thunder-shock',13,'40',30),(85,'thunderbolt',13,'90',15),(86,'thunder-wave',13,'',20),(87,'thunder',13,'110',10),(88,'rock-throw',6,'50',15),(89,'earthquake',5,'100',10),(90,'fissure',5,'',5),(91,'dig',5,'80',10),(92,'toxic',4,'',10),(93,'confusion',14,'50',25),(94,'psychic',14,'90',10),(95,'hypnosis',14,'',20),(96,'meditate',14,'',40),(97,'agility',14,'',30),(98,'quick-attack',1,'40',30),(99,'rage',1,'20',20),(100,'teleport',14,'',20),(101,'night-shade',8,'',15),(102,'mimic',1,'',10),(103,'screech',1,'',40),(104,'double-team',1,'',15),(105,'recover',1,'',10),(106,'harden',1,'',30),(107,'minimize',1,'',10),(108,'smokescreen',1,'',20),(109,'confuse-ray',8,'',10),(110,'withdraw',11,'',40),(111,'defense-curl',1,'',40),(112,'barrier',14,'',20),(113,'light-screen',14,'',30),(114,'haze',15,'',30),(115,'reflect',14,'',20),(116,'focus-energy',1,'',30),(117,'bide',1,'',10),(118,'metronome',1,'',10),(119,'mirror-move',3,'',20),(120,'self-destruct',1,'200',5),(121,'egg-bomb',1,'100',10),(122,'lick',8,'30',30),(123,'smog',4,'30',20),(124,'sludge',4,'65',20),(125,'bone-club',5,'65',20),(126,'fire-blast',10,'110',5),(127,'waterfall',11,'80',15),(128,'clamp',11,'35',15),(129,'swift',1,'60',20),(130,'skull-bash',1,'130',10),(131,'spike-cannon',1,'20',15),(132,'constrict',1,'10',35),(133,'amnesia',14,'',20),(134,'kinesis',14,'',15),(135,'soft-boiled',1,'',10),(136,'high-jump-kick',2,'130',10),(137,'glare',1,'',30),(138,'dream-eater',14,'100',15),(139,'poison-gas',4,'',40),(140,'barrage',1,'15',20),(141,'leech-life',7,'80',10),(142,'lovely-kiss',1,'',10),(143,'sky-attack',3,'140',5),(144,'transform',1,'',10),(145,'bubble',11,'40',30),(146,'dizzy-punch',1,'70',10),(147,'spore',12,'',15),(148,'flash',1,'',20),(149,'psywave',14,'',15),(150,'splash',1,'',40),(151,'acid-armor',4,'',20),(152,'crabhammer',11,'100',10),(153,'explosion',1,'250',5),(154,'fury-swipes',1,'18',15),(155,'bonemerang',5,'50',10),(156,'rest',14,'',10),(157,'rock-slide',6,'75',10),(158,'hyper-fang',1,'80',15),(159,'sharpen',1,'',30),(160,'conversion',1,'',30),(161,'tri-attack',1,'80',10),(162,'super-fang',1,'',10),(163,'slash',1,'70',20),(164,'substitute',1,'',10),(165,'struggle',1,'50',1),(166,'sketch',1,'',1),(167,'triple-kick',2,'10',10),(168,'thief',17,'60',25),(169,'spider-web',7,'',10),(170,'mind-reader',1,'',5),(171,'nightmare',8,'',15),(172,'flame-wheel',10,'60',25),(173,'snore',1,'50',15),(174,'curse',8,'',10),(175,'flail',1,'',15),(176,'conversion-2',1,'',30),(177,'aeroblast',3,'100',5),(178,'cotton-spore',12,'',40),(179,'reversal',2,'',15),(180,'spite',8,'',10),(181,'powder-snow',15,'40',25),(182,'protect',1,'',10),(183,'mach-punch',2,'40',30),(184,'scary-face',1,'',10),(185,'feint-attack',17,'60',20),(186,'sweet-kiss',18,'',10),(187,'belly-drum',1,'',10),(188,'sludge-bomb',4,'90',10),(189,'mud-slap',5,'20',10),(190,'octazooka',11,'65',10),(191,'spikes',5,'',20),(192,'zap-cannon',13,'120',5),(193,'foresight',1,'',40),(194,'destiny-bond',8,'',5),(195,'perish-song',1,'',5),(196,'icy-wind',15,'55',15),(197,'detect',2,'',5),(198,'bone-rush',5,'25',10),(199,'lock-on',1,'',5),(200,'outrage',16,'120',10),(201,'sandstorm',6,'',10),(202,'giga-drain',12,'75',10),(203,'endure',1,'',10),(204,'charm',18,'',20),(205,'rollout',6,'30',20),(206,'false-swipe',1,'40',40),(207,'swagger',1,'',15),(208,'milk-drink',1,'',10),(209,'spark',13,'65',20),(210,'fury-cutter',7,'40',20),(211,'steel-wing',9,'70',25),(212,'mean-look',1,'',5),(213,'attract',1,'',15),(214,'sleep-talk',1,'',10),(215,'heal-bell',1,'',5),(216,'return',1,'',20),(217,'present',1,'',15),(218,'frustration',1,'',20),(219,'safeguard',1,'',25),(220,'pain-split',1,'',20),(221,'sacred-fire',10,'100',5),(222,'magnitude',5,'',30),(223,'dynamic-punch',2,'100',5),(224,'megahorn',7,'120',10),(225,'dragon-breath',16,'60',20),(226,'baton-pass',1,'',40),(227,'encore',1,'',5),(228,'pursuit',17,'40',20),(229,'rapid-spin',1,'20',40),(230,'sweet-scent',1,'',20),(231,'iron-tail',9,'100',15),(232,'metal-claw',9,'50',35),(233,'vital-throw',2,'70',10),(234,'morning-sun',1,'',5),(235,'synthesis',12,'',5),(236,'moonlight',18,'',5),(237,'hidden-power',1,'60',15),(238,'cross-chop',2,'100',5),(239,'twister',16,'40',20),(240,'rain-dance',11,'',5),(241,'sunny-day',10,'',5),(242,'crunch',17,'80',15),(243,'mirror-coat',14,'',20),(244,'psych-up',1,'',10),(245,'extreme-speed',1,'80',5),(246,'ancient-power',6,'60',5),(247,'shadow-ball',8,'80',15),(248,'future-sight',14,'120',10),(249,'rock-smash',2,'40',15),(250,'whirlpool',11,'35',15),(251,'beat-up',17,'',10),(252,'fake-out',1,'40',10),(253,'uproar',1,'90',10),(254,'stockpile',1,'',20),(255,'spit-up',1,'',10),(256,'swallow',1,'',10),(257,'heat-wave',10,'95',10),(258,'hail',15,'',10),(259,'torment',17,'',15),(260,'flatter',17,'',15),(261,'will-o-wisp',10,'',15),(262,'memento',17,'',10),(263,'facade',1,'70',20),(264,'focus-punch',2,'150',20),(265,'smelling-salts',1,'70',10),(266,'follow-me',1,'',20),(267,'nature-power',1,'',20),(268,'charge',13,'',20),(269,'taunt',17,'',20),(270,'helping-hand',1,'',20),(271,'trick',14,'',10),(272,'role-play',14,'',10),(273,'wish',1,'',10),(274,'assist',1,'',20),(275,'ingrain',12,'',20),(276,'superpower',2,'120',5),(277,'magic-coat',14,'',15),(278,'recycle',1,'',10),(279,'revenge',2,'60',10),(280,'brick-break',2,'75',15),(281,'yawn',1,'',10),(282,'knock-off',17,'65',20),(283,'endeavor',1,'',5),(284,'eruption',10,'150',5),(285,'skill-swap',14,'',10),(286,'imprison',14,'',10),(287,'refresh',1,'',20),(288,'grudge',8,'',5),(289,'snatch',17,'',10),(290,'secret-power',1,'70',20),(291,'dive',11,'80',10),(292,'arm-thrust',2,'15',20),(293,'camouflage',1,'',20),(294,'tail-glow',7,'',20),(295,'luster-purge',14,'70',5),(296,'mist-ball',14,'70',5),(297,'feather-dance',3,'',15),(298,'teeter-dance',1,'',20),(299,'blaze-kick',10,'85',10),(300,'mud-sport',5,'',15),(301,'ice-ball',15,'30',20),(302,'needle-arm',12,'60',15),(303,'slack-off',1,'',10),(304,'hyper-voice',1,'90',10),(305,'poison-fang',4,'50',15),(306,'crush-claw',1,'75',10),(307,'blast-burn',10,'150',5),(308,'hydro-cannon',11,'150',5),(309,'meteor-mash',9,'90',10),(310,'astonish',8,'30',15),(311,'weather-ball',1,'50',10),(312,'aromatherapy',12,'',5),(313,'fake-tears',17,'',20),(314,'air-cutter',3,'60',25),(315,'overheat',10,'130',5),(316,'odor-sleuth',1,'',40),(317,'rock-tomb',6,'60',15),(318,'silver-wind',7,'60',5),(319,'metal-sound',9,'',40),(320,'grass-whistle',12,'',15),(321,'tickle',1,'',20),(322,'cosmic-power',14,'',20),(323,'water-spout',11,'150',5),(324,'signal-beam',7,'75',15),(325,'shadow-punch',8,'60',20),(326,'extrasensory',14,'80',20),(327,'sky-uppercut',2,'85',15),(328,'sand-tomb',5,'35',15),(329,'sheer-cold',15,'',5),(330,'muddy-water',11,'90',10),(331,'bullet-seed',12,'25',30),(332,'aerial-ace',3,'60',20),(333,'icicle-spear',15,'25',30),(334,'iron-defense',9,'',15),(335,'block',1,'',5),(336,'howl',1,'',40),(337,'dragon-claw',16,'80',15),(338,'frenzy-plant',12,'150',5),(339,'bulk-up',2,'',20),(340,'bounce',3,'85',5),(341,'mud-shot',5,'55',15),(342,'poison-tail',4,'50',25),(343,'covet',1,'60',25),(344,'volt-tackle',13,'120',15),(345,'magical-leaf',12,'60',20),(346,'water-sport',11,'',15),(347,'calm-mind',14,'',20),(348,'leaf-blade',12,'90',15),(349,'dragon-dance',16,'',20),(350,'rock-blast',6,'25',10),(351,'shock-wave',13,'60',20),(352,'water-pulse',11,'60',20),(353,'doom-desire',9,'140',5),(354,'psycho-boost',14,'140',5),(355,'roost',3,'',10),(356,'gravity',14,'',5),(357,'miracle-eye',14,'',40),(358,'wake-up-slap',2,'70',10),(359,'hammer-arm',2,'100',10),(360,'gyro-ball',9,'',5),(361,'healing-wish',14,'',10),(362,'brine',11,'65',10),(363,'natural-gift',1,'',15),(364,'feint',1,'30',10),(365,'pluck',3,'60',20),(366,'tailwind',3,'',15),(367,'acupressure',1,'',30),(368,'metal-burst',9,'',10),(369,'u-turn',7,'70',20),(370,'close-combat',2,'120',5),(371,'payback',17,'50',10),(372,'assurance',17,'60',10),(373,'embargo',17,'',15),(374,'fling',17,'',10),(375,'psycho-shift',14,'',10),(376,'trump-card',1,'',5),(377,'heal-block',14,'',15),(378,'wring-out',1,'',5),(379,'power-trick',14,'',10),(380,'gastro-acid',4,'',10),(381,'lucky-chant',1,'',30),(382,'me-first',1,'',20),(383,'copycat',1,'',20),(384,'power-swap',14,'',10),(385,'guard-swap',14,'',10),(386,'punishment',17,'',5),(387,'last-resort',1,'140',5),(388,'worry-seed',12,'',10),(389,'sucker-punch',17,'70',5),(390,'toxic-spikes',4,'',20),(391,'heart-swap',14,'',10),(392,'aqua-ring',11,'',20),(393,'magnet-rise',13,'',10),(394,'flare-blitz',10,'120',15),(395,'force-palm',2,'60',10),(396,'aura-sphere',2,'80',20),(397,'rock-polish',6,'',20),(398,'poison-jab',4,'80',20),(399,'dark-pulse',17,'80',15),(400,'night-slash',17,'70',15),(401,'aqua-tail',11,'90',10),(402,'seed-bomb',12,'80',15),(403,'air-slash',3,'75',15),(404,'x-scissor',7,'80',15),(405,'bug-buzz',7,'90',10),(406,'dragon-pulse',16,'85',10),(407,'dragon-rush',16,'100',10),(408,'power-gem',6,'80',20),(409,'drain-punch',2,'75',10),(410,'vacuum-wave',2,'40',30),(411,'focus-blast',2,'120',5),(412,'energy-ball',12,'90',10),(413,'brave-bird',3,'120',15),(414,'earth-power',5,'90',10),(415,'switcheroo',17,'',10),(416,'giga-impact',1,'150',5),(417,'nasty-plot',17,'',20),(418,'bullet-punch',9,'40',30),(419,'avalanche',15,'60',10),(420,'ice-shard',15,'40',30),(421,'shadow-claw',8,'70',15),(422,'thunder-fang',13,'65',15),(423,'ice-fang',15,'65',15),(424,'fire-fang',10,'65',15),(425,'shadow-sneak',8,'40',30),(426,'mud-bomb',5,'65',10),(427,'psycho-cut',14,'70',20),(428,'zen-headbutt',14,'80',15),(429,'mirror-shot',9,'65',10),(430,'flash-cannon',9,'80',10),(431,'rock-climb',1,'90',20),(432,'defog',3,'',15),(433,'trick-room',14,'',5),(434,'draco-meteor',16,'130',5),(435,'discharge',13,'80',15),(436,'lava-plume',10,'80',15),(437,'leaf-storm',12,'130',5),(438,'power-whip',12,'120',10),(439,'rock-wrecker',6,'150',5),(440,'cross-poison',4,'70',20),(441,'gunk-shot',4,'120',5),(442,'iron-head',9,'80',15),(443,'magnet-bomb',9,'60',20),(444,'stone-edge',6,'100',5),(445,'captivate',1,'',20),(446,'stealth-rock',6,'',20),(447,'grass-knot',12,'',20),(448,'chatter',3,'65',20),(449,'judgment',1,'100',10),(450,'bug-bite',7,'60',20),(451,'charge-beam',13,'50',10),(452,'wood-hammer',12,'120',15),(453,'aqua-jet',11,'40',20),(454,'attack-order',7,'90',15),(455,'defend-order',7,'',10),(456,'heal-order',7,'',10),(457,'head-smash',6,'150',5),(458,'double-hit',1,'35',10),(459,'roar-of-time',16,'150',5),(460,'spacial-rend',16,'100',5),(461,'lunar-dance',14,'',10),(462,'crush-grip',1,'',5),(463,'magma-storm',10,'100',5),(464,'dark-void',17,'',10),(465,'seed-flare',12,'120',5),(466,'ominous-wind',8,'60',5),(467,'shadow-force',8,'120',5),(468,'hone-claws',17,'',15),(469,'wide-guard',6,'',10),(470,'guard-split',14,'',10),(471,'power-split',14,'',10),(472,'wonder-room',14,'',10),(473,'psyshock',14,'80',10),(474,'venoshock',4,'65',10),(475,'autotomize',9,'',15),(476,'rage-powder',7,'',20),(477,'telekinesis',14,'',15),(478,'magic-room',14,'',10),(479,'smack-down',6,'50',15),(480,'storm-throw',2,'60',10),(481,'flame-burst',10,'70',15),(482,'sludge-wave',4,'95',10),(483,'quiver-dance',7,'',20),(484,'heavy-slam',9,'',10),(485,'synchronoise',14,'120',10),(486,'electro-ball',13,'',10),(487,'soak',11,'',20),(488,'flame-charge',10,'50',20),(489,'coil',4,'',20),(490,'low-sweep',2,'65',20),(491,'acid-spray',4,'40',20),(492,'foul-play',17,'95',15),(493,'simple-beam',1,'',15),(494,'entrainment',1,'',15),(495,'after-you',1,'',15),(496,'round',1,'60',15),(497,'echoed-voice',1,'40',15),(498,'chip-away',1,'70',20),(499,'clear-smog',4,'50',15),(500,'stored-power',14,'20',10),(501,'quick-guard',2,'',15),(502,'ally-switch',14,'',15),(503,'scald',11,'80',15),(504,'shell-smash',1,'',15),(505,'heal-pulse',14,'',10),(506,'hex',8,'65',10),(507,'sky-drop',3,'60',10),(508,'shift-gear',9,'',10),(509,'circle-throw',2,'60',10),(510,'incinerate',10,'60',15),(511,'quash',17,'',15),(512,'acrobatics',3,'55',15),(513,'reflect-type',1,'',15),(514,'retaliate',1,'70',5),(515,'final-gambit',2,'',5),(516,'bestow',1,'',15),(517,'inferno',10,'100',5),(518,'water-pledge',11,'80',10),(519,'fire-pledge',10,'80',10),(520,'grass-pledge',12,'80',10),(521,'volt-switch',13,'70',20),(522,'struggle-bug',7,'50',20),(523,'bulldoze',5,'60',20),(524,'frost-breath',15,'60',10),(525,'dragon-tail',16,'60',10),(526,'work-up',1,'',30),(527,'electroweb',13,'55',15),(528,'wild-charge',13,'90',15),(529,'drill-run',5,'80',10),(530,'dual-chop',16,'40',15),(531,'heart-stamp',14,'60',25),(532,'horn-leech',12,'75',10),(533,'sacred-sword',2,'90',15),(534,'razor-shell',11,'75',10),(535,'heat-crash',10,'',10),(536,'leaf-tornado',12,'65',10),(537,'steamroller',7,'65',20),(538,'cotton-guard',12,'',10),(539,'night-daze',17,'85',10),(540,'psystrike',14,'100',10),(541,'tail-slap',1,'25',10),(542,'hurricane',3,'110',10),(543,'head-charge',1,'120',15),(544,'gear-grind',9,'50',15),(545,'searing-shot',10,'100',5),(546,'techno-blast',1,'120',5),(547,'relic-song',1,'75',10),(548,'secret-sword',2,'85',10),(549,'glaciate',15,'65',10),(550,'bolt-strike',13,'130',5),(551,'blue-flare',10,'130',5),(552,'fiery-dance',10,'80',10),(553,'freeze-shock',15,'140',5),(554,'ice-burn',15,'140',5),(555,'snarl',17,'55',15),(556,'icicle-crash',15,'85',10),(557,'v-create',10,'180',5),(558,'fusion-flare',10,'100',5),(559,'fusion-bolt',13,'100',5),(560,'flying-press',2,'100',10),(561,'mat-block',2,'',10),(562,'belch',4,'120',10),(563,'rototiller',5,'',10),(564,'sticky-web',7,'',20),(565,'fell-stinger',7,'50',25),(566,'phantom-force',8,'90',10),(567,'trick-or-treat',8,'',20),(568,'noble-roar',1,'',30),(569,'ion-deluge',13,'',25),(570,'parabolic-charge',13,'65',20),(571,'forests-curse',12,'',20),(572,'petal-blizzard',12,'90',15),(573,'freeze-dry',15,'70',20),(574,'disarming-voice',18,'40',15),(575,'parting-shot',17,'',20),(576,'topsy-turvy',17,'',20),(577,'draining-kiss',18,'50',10),(578,'crafty-shield',18,'',10),(579,'flower-shield',18,'',10),(580,'grassy-terrain',12,'',10),(581,'misty-terrain',18,'',10),(582,'electrify',13,'',20),(583,'play-rough',18,'90',10),(584,'fairy-wind',18,'40',30),(585,'moonblast',18,'95',15),(586,'boomburst',1,'140',10),(587,'fairy-lock',18,'',10),(588,'kings-shield',9,'',10),(589,'play-nice',1,'',20),(590,'confide',1,'',20),(591,'diamond-storm',6,'100',5),(592,'steam-eruption',11,'110',5),(593,'hyperspace-hole',14,'80',5),(594,'water-shuriken',11,'15',20),(595,'mystical-fire',10,'75',10),(596,'spiky-shield',12,'',10),(597,'aromatic-mist',18,'',20),(598,'eerie-impulse',13,'',15),(599,'venom-drench',4,'',20),(600,'powder',7,'',20),(601,'geomancy',18,'',10),(602,'magnetic-flux',13,'',20),(603,'happy-hour',1,'',30),(604,'electric-terrain',13,'',10),(605,'dazzling-gleam',18,'80',10),(606,'celebrate',1,'',40),(607,'hold-hands',1,'',40),(608,'baby-doll-eyes',18,'',30),(609,'nuzzle',13,'20',20),(610,'hold-back',1,'40',40),(611,'infestation',7,'20',20),(612,'power-up-punch',2,'40',20),(613,'oblivion-wing',3,'80',10),(614,'thousand-arrows',5,'90',10),(615,'thousand-waves',5,'90',10),(616,'lands-wrath',5,'90',10),(617,'light-of-ruin',18,'140',5),(618,'origin-pulse',11,'110',10),(619,'precipice-blades',5,'120',10),(620,'dragon-ascent',3,'120',5),(621,'hyperspace-fury',17,'100',5),(622,'breakneck-blitz--physical',1,'',1),(623,'breakneck-blitz--special',1,'',1),(624,'all-out-pummeling--physical',2,'',1),(625,'all-out-pummeling--special',2,'',1),(626,'supersonic-skystrike--physical',3,'',1),(627,'supersonic-skystrike--special',3,'',1),(628,'acid-downpour--physical',4,'',1),(629,'acid-downpour--special',4,'',1),(630,'tectonic-rage--physical',5,'',1),(631,'tectonic-rage--special',5,'',1),(632,'continental-crush--physical',6,'',1),(633,'continental-crush--special',6,'',1),(634,'savage-spin-out--physical',7,'',1),(635,'savage-spin-out--special',7,'',1),(636,'never-ending-nightmare--physical',8,'',1),(637,'never-ending-nightmare--special',8,'',1),(638,'corkscrew-crash--physical',9,'',1),(639,'corkscrew-crash--special',9,'',1),(640,'inferno-overdrive--physical',10,'',1),(641,'inferno-overdrive--special',10,'',1),(642,'hydro-vortex--physical',11,'',1),(643,'hydro-vortex--special',11,'',1),(644,'bloom-doom--physical',12,'',1),(645,'bloom-doom--special',12,'',1),(646,'gigavolt-havoc--physical',13,'',1),(647,'gigavolt-havoc--special',13,'',1),(648,'shattered-psyche--physical',14,'',1),(649,'shattered-psyche--special',14,'',1),(650,'subzero-slammer--physical',15,'',1),(651,'subzero-slammer--special',15,'',1),(652,'devastating-drake--physical',16,'',1),(653,'devastating-drake--special',16,'',1),(654,'black-hole-eclipse--physical',17,'',1),(655,'black-hole-eclipse--special',17,'',1),(656,'twinkle-tackle--physical',18,'',1),(657,'twinkle-tackle--special',18,'',1),(658,'catastropika',13,'210',1),(659,'shore-up',5,'',10),(660,'first-impression',7,'90',10),(661,'baneful-bunker',4,'',10),(662,'spirit-shackle',8,'80',10),(663,'darkest-lariat',17,'85',10),(664,'sparkling-aria',11,'90',10),(665,'ice-hammer',15,'100',10),(666,'floral-healing',18,'',10),(667,'high-horsepower',5,'95',10),(668,'strength-sap',12,'',10),(669,'solar-blade',12,'125',10),(670,'leafage',12,'40',40),(671,'spotlight',1,'',15),(672,'toxic-thread',4,'',20),(673,'laser-focus',1,'',30),(674,'gear-up',9,'',20),(675,'throat-chop',17,'80',15),(676,'pollen-puff',7,'90',15),(677,'anchor-shot',9,'80',20),(678,'psychic-terrain',14,'',10),(679,'lunge',7,'80',15),(680,'fire-lash',10,'80',15),(681,'power-trip',17,'20',10),(682,'burn-up',10,'130',5),(683,'speed-swap',14,'',10),(684,'smart-strike',9,'70',10),(685,'purify',4,'',20),(686,'revelation-dance',1,'90',15),(687,'core-enforcer',16,'100',10),(688,'trop-kick',12,'70',15),(689,'instruct',14,'',15),(690,'beak-blast',3,'100',15),(691,'clanging-scales',16,'110',5),(692,'dragon-hammer',16,'90',15),(693,'brutal-swing',17,'60',20),(694,'aurora-veil',15,'',20),(695,'sinister-arrow-raid',8,'180',1),(696,'malicious-moonsault',17,'180',1),(697,'oceanic-operetta',11,'195',1),(698,'guardian-of-alola',18,'',1),(699,'soul-stealing-7-star-strike',8,'195',1),(700,'stoked-sparksurfer',13,'175',1),(701,'pulverizing-pancake',1,'210',1),(702,'extreme-evoboost',1,'',1),(703,'genesis-supernova',14,'185',1),(704,'shell-trap',10,'150',5),(705,'fleur-cannon',18,'130',5),(706,'psychic-fangs',14,'85',10),(707,'stomping-tantrum',5,'75',10),(708,'shadow-bone',8,'85',10),(709,'accelerock',6,'40',20),(710,'liquidation',11,'85',10),(711,'prismatic-laser',14,'160',10),(712,'spectral-thief',8,'90',10),(713,'sunsteel-strike',9,'100',5),(714,'moongeist-beam',8,'100',5),(715,'tearful-look',1,'',20),(716,'zing-zap',13,'80',10),(717,'natures-madness',18,'',10),(718,'multi-attack',1,'90',10),(719,'10-000-000-volt-thunderbolt',13,'195',1),(720,'mind-blown',10,'150',5),(721,'plasma-fists',13,'100',15),(722,'photon-geyser',14,'100',5),(723,'light-that-burns-the-sky',14,'200',1),(724,'searing-sunraze-smash',9,'200',1),(725,'menacing-moonraze-maelstrom',8,'200',1),(726,'lets-snuggle-forever',18,'190',1),(727,'splintered-stormshards',6,'190',1),(728,'clangorous-soulblaze',16,'185',1);
/*!40000 ALTER TABLE `moves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movesets`
--

DROP TABLE IF EXISTS `movesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pokemon_id` int(3) NOT NULL,
  `move_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movesets`
--

LOCK TABLES `movesets` WRITE;
/*!40000 ALTER TABLE `movesets` DISABLE KEYS */;
INSERT INTO `movesets` VALUES (1,1,14),(2,1,15),(3,1,22),(4,1,33),(5,1,34),(6,1,36),(7,1,38),(8,1,45),(9,1,72),(10,1,73),(11,1,74),(12,1,75),(13,1,76),(14,1,76),(15,1,77),(16,1,79),(17,1,92),(18,1,99),(19,1,102),(20,1,104),(21,1,115),(22,1,117),(23,1,156),(24,1,164),(25,1,14),(26,1,15),(27,1,22),(28,1,33),(29,1,34),(30,1,36),(31,1,38),(32,1,45),(33,1,72),(34,1,73),(35,1,74),(36,1,75),(37,1,76),(38,1,76),(39,1,77),(40,1,79),(41,1,92),(42,1,99),(43,1,102),(44,1,104),(45,1,115),(46,1,117),(47,1,156),(48,1,164),(49,1,13),(50,1,15),(51,1,22),(52,1,29),(53,1,33),(54,1,45),(55,1,73),(56,1,74),(57,1,75),(58,1,76),(59,1,76),(60,1,77),(61,1,79),(62,1,80),(63,1,92),(64,1,104),(65,1,111),(66,1,113),(67,1,130),(68,1,148),(69,1,156),(70,1,173),(71,1,174),(72,1,182),(73,1,189),(74,1,202),(75,1,203),(76,1,204),(77,1,207),(78,1,210),(79,1,213),(80,1,214),(81,1,216),(82,1,218),(83,1,219),(84,1,230),(85,1,230),(86,1,235),(87,1,237),(88,1,241),(89,1,13),(90,1,15),(91,1,22),(92,1,29),(93,1,33),(94,1,45),(95,1,73),(96,1,74),(97,1,75),(98,1,76),(99,1,76),(100,1,77),(101,1,79),(102,1,80),(103,1,92),(104,1,104),(105,1,111),(106,1,113),(107,1,130),(108,1,148),(109,1,156),(110,1,173),(111,1,174),(112,1,182),(113,1,189),(114,1,202),(115,1,203),(116,1,207),(117,1,210),(118,1,213),(119,1,214),(120,1,216),(121,1,218),(122,1,219),(123,1,230),(124,1,230),(125,1,235),(126,1,237),(127,1,241),(128,1,15),(129,1,22),(130,1,33),(131,1,45),(132,1,70),(133,1,73),(134,1,74),(135,1,75),(136,1,76),(137,1,76),(138,1,77),(139,1,79),(140,1,80),(141,1,92),(142,1,104),(143,1,113),(144,1,130),(145,1,148),(146,1,156),(147,1,174),(148,1,182),(149,1,188),(150,1,202),(151,1,204),(152,1,213),(153,1,216),(154,1,218),(155,1,219),(156,1,230),(157,1,235),(158,1,237),(159,1,241),(160,1,249),(161,1,263),(162,1,290),(163,1,320),(164,1,331),(165,1,345),(166,1,14),(167,1,15),(168,1,22),(169,1,33),(170,1,34),(171,1,38),(172,1,45),(173,1,70),(174,1,73),(175,1,74),(176,1,75),(177,1,76),(178,1,76),(179,1,77),(180,1,79),(181,1,80),(182,1,92),(183,1,102),(184,1,104),(185,1,111),(186,1,113),(187,1,130),(188,1,148),(189,1,156),(190,1,164),(191,1,173),(192,1,174),(193,1,182),(194,1,188),(195,1,189),(196,1,202),(197,1,203),(198,1,204),(199,1,207),(200,1,210),(201,1,213),(202,1,214),(203,1,216),(204,1,218),(205,1,219),(206,1,230),(207,1,235),(208,1,237),(209,1,241),(210,1,249),(211,1,263),(212,1,290),(213,1,320),(214,1,331),(215,1,345),(216,1,14),(217,1,15),(218,1,22),(219,1,33),(220,1,34),(221,1,38),(222,1,45),(223,1,70),(224,1,73),(225,1,74),(226,1,75),(227,1,76),(228,1,76),(229,1,77),(230,1,79),(231,1,80),(232,1,92),(233,1,102),(234,1,104),(235,1,113),(236,1,130),(237,1,148),(238,1,156),(239,1,164),(240,1,174),(241,1,182),(242,1,188),(243,1,202),(244,1,204),(245,1,213),(246,1,216),(247,1,218),(248,1,219),(249,1,230),(250,1,235),(251,1,237),(252,1,241),(253,1,249),(254,1,263),(255,1,290),(256,1,320),(257,1,331),(258,1,345),(259,1,14),(260,1,15),(261,1,22),(262,1,33),(263,1,36),(264,1,38),(265,1,45),(266,1,70),(267,1,73),(268,1,74),(269,1,75),(270,1,76),(271,1,77),(272,1,79),(273,1,80),(274,1,92),(275,1,104),(276,1,113),(277,1,130),(278,1,133),(279,1,148),(280,1,156),(281,1,164),(282,1,174),(283,1,182),(284,1,188),(285,1,202),(286,1,203),(287,1,204),(288,1,207),(289,1,213),(290,1,214),(291,1,216),(292,1,218),(293,1,219),(294,1,230),(295,1,235),(296,1,237),(297,1,241),(298,1,249),(299,1,263),(300,1,267),(301,1,275),(302,1,290),(303,1,320),(304,1,331),(305,1,345),(306,1,363),(307,1,388),(308,1,402),(309,1,412),(310,1,437),(311,1,445),(312,1,447),(313,1,14),(314,1,15),(315,1,22),(316,1,33),(317,1,36),(318,1,38),(319,1,45),(320,1,70),(321,1,73),(322,1,74),(323,1,75),(324,1,76),(325,1,77),(326,1,79),(327,1,80),(328,1,92),(329,1,104),(330,1,113),(331,1,130),(332,1,133),(333,1,148),(334,1,156),(335,1,164),(336,1,173),(337,1,174),(338,1,182),(339,1,188),(340,1,189),(341,1,202),(342,1,203),(343,1,204),(344,1,207),(345,1,210),(346,1,213),(347,1,214),(348,1,216),(349,1,218),(350,1,219),(351,1,230),(352,1,235),(353,1,235),(354,1,237),(355,1,241),(356,1,249),(357,1,263),(358,1,267),(359,1,275),(360,1,282),(361,1,290),(362,1,320),(363,1,331),(364,1,345),(365,1,363),(366,1,388),(367,1,402),(368,1,402),(369,1,412),(370,1,437),(371,1,445),(372,1,447),(373,1,14),(374,1,15);
/*!40000 ALTER TABLE `movesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type1` varchar(45) NOT NULL,
  `type2` varchar(45) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','Grass','Poison','01-bulbasaur.png'),(2,'Ivysaur','Grass','Poison','02-ivysaur.png'),(3,'Venusaur','Grass','Poison','03-venusaur.png'),(4,'Charmander','Fire','','04-charmander.png'),(5,'Charmeleon','Fire','','05-charmeleon.png'),(6,'Charizard','Fire','Flying','06-charizard.png'),(7,'Squirtle','Water','','07-squirtle.png'),(8,'Wartortle','Water','','08-wartortle.png'),(9,'Blastoise','Water','','09-blastoise.png'),(10,'Caterpie','Bug','','10-caterpie.png'),(11,'Metapod','Bug','','11-metapod.png'),(12,'Butterfree','Bug','Flying','12-butterfree.png'),(13,'Weedle','Bug','Poison','13-weedle.png'),(14,'Kakuna','Bug','Poison','14-kakuna.png'),(15,'Beedrill','Bug','Poison','15-beedrill.png'),(16,'Pidgey','Normal','Flying','16-pidgey.png'),(17,'Pidgeotto','Normal','Flying','17-pidgeotto.png'),(18,'Pidgeot','Normal','Flying','18-pidgeot.png'),(19,'Rattata','Normal','','19-rattata.png'),(20,'Raticate','Normal','','20-raticate.png'),(21,'Spearow','Normal','Flying','21-spearow.png'),(22,'Fearow','Normal','Flying','22-fearow.png'),(23,'Ekans','Poison','','23-ekans.png'),(24,'Arbok','Poison','','24-arbok.png'),(25,'Pikachu','Electric','','25-pikachu.png'),(26,'Raichu','Electric','','26-raichu.png'),(27,'Sandshrew','Ground','','27-sandshrew.png'),(28,'Sandslash','Ground','','28-sandslash.png'),(29,'Nidoran - F','Poison','','29-nidoran.png'),(30,'Nidorina','Poison','','30-nidorina.png'),(31,'Nidoqueen','Poison','Ground','31-nidoqueen.png'),(32,'Nidoran - M','Poison','','32-nidoran.png'),(33,'Nidorino','Poison','','33-nidorino.png'),(34,'Nidoking','Poison','Ground','34-nidoking.png'),(35,'Clefairy','Fairy','','35-clefairy.png'),(36,'Clefable','Fairy','','36-clefable.png'),(37,'Vulpix','Fire','','37-vulpix.png'),(38,'Ninetales','Fire','','38-ninetales.png'),(39,'Jigglypuff','Normal','NormalSteel','39-jigglypuff.png'),(40,'Wigglytuff','Normal','NormalSteel','40-wigglytuff.png'),(41,'Zubat','Poison','Flying','41-zubat.png'),(42,'Golbat','Poison','Flying','42-golbat.png'),(43,'Oddish','Grass','Poison','43-oddish.png'),(44,'Gloom','Grass','Poison','44-gloom.png'),(45,'Vileplume','Grass','Poison','45-vileplume.png'),(46,'Paras','Bug','Grass','46-paras.png'),(47,'Parasect','Bug','Grass','47-parasect.png'),(48,'Venonat','Bug','Poison','48-venonat.png'),(49,'Venomoth','Bug','Poison','49-venomoth.png'),(50,'Diglett','Ground','','50-diglett.png'),(51,'Dugtrio','Ground','','51-dugtrio.png'),(52,'Meowth','Normal','','52-meowth.png'),(53,'Persian','Normal','','53-persian.png'),(54,'Psyduck','Water','','54-psyduck.png'),(55,'Golduck','Water','','55-golduck.png'),(56,'Mankey','Fighting','','56-mankey.png'),(57,'Primeape','Fighting','','57-primeape.png'),(58,'Growlithe','Fire','','58-growlithe.png'),(59,'Arcanine','Fire','','59-arcanine.png'),(60,'Poliwag','Water','','60-poliwag.png'),(61,'Poliwhirl','Water','','61-poliwhirl.png'),(62,'Poliwrath','Water','Fighting','62-poliwrath.png'),(63,'Abra','Psychic','','63-abra.png'),(64,'Kadabra','Psychic','','64-kadabra.png'),(65,'Alakazam','Psychic','','65-alakazam.png'),(66,'Machop','Fighting','','66-machop.png'),(67,'Machoke','Fighting','','67-machoke.png'),(68,'Machamp','Fighting','','68-machamp.png'),(69,'Bellsprout','Grass','Poison','69-bellsprout.png'),(70,'Weepinbell','Grass','Poison','70-weepinbell.png'),(71,'Victrebel','Grass','Poison','71-victreebel.png'),(72,'Tentacool','Water','Poison','72-ventacool.png'),(73,'Tentacruel','Water','Poison','73-tentacruel.png'),(74,'Geodude','Rock','Ground','74-geodude.png'),(75,'Graveler','Rock','Ground','75-graveler.png'),(76,'Golem','Rock','Ground','76-golem.png'),(77,'Ponyta','Fire','','77-ponyta.png'),(78,'Rapidash','Fire','','78-rapidash.png'),(79,'Slowpoke','Water','Psychic','79-slowpoke.png'),(80,'Slowbro','Water','Psychic','80-slowbro.png'),(81,'Magnemite','Electric','Steel','81-magnemite.png'),(82,'Magneton','Electric','Steel','82-magneton.png'),(83,'Farfetch\'d','Normal','Flying','83-farfetchd.png'),(84,'Doduo','Normal','Flying','84-doduo.png'),(85,'Dodrio','Normal','Flying','85-dodrio.png'),(86,'Seel','Water','','86-seel.png'),(87,'Dewgong','Water','Ice','87-dewgong.png'),(88,'Grimer','Poison','','88-grimer.png'),(89,'Muk','Poison','','89-muk.png'),(90,'Shellder','Water','','90-shellder.png'),(91,'Cloyster','Water','Ice','91-cloyster.png'),(92,'Gastly','Ghost','Poison','92-gastly.png'),(93,'Haunter','Ghost','Poison','93-haunter.png'),(94,'Gengar','Ghost','Poison','94-gengar.png'),(95,'Onix','Rock','Ground','95-onix.png'),(96,'Drowzee','Psychic','','96-drowzee.png'),(97,'Hypno','Psychic','','97-hypno.png'),(98,'Krabby','Water','','98-krabby.png'),(99,'Kingler','Water','','99-kingler.png'),(100,'Voltorb','Electric','','100-voltorb.png'),(101,'Electrode','Electric','','101-electrode.png'),(102,'Exeggcute','Grass','Psychic','102-exeggcute.png'),(103,'Exeggutor','Grass','Psychic','103-exeggutor.png'),(104,'Cubone','Ground','','104-cubone.png'),(105,'Marowak','Ground','','105-marowak.png'),(106,'Hitmonlee','Fighting','','106-hitmonlee.png'),(107,'Hitmonchan','Fighting','','107-hitmonchan.png'),(108,'Lickitung','Normal','','108-lickitung.png'),(109,'Koffing','Poison','','109-koffing.png'),(110,'Weezing','Poison','','110-weezing.png'),(111,'Rhyhorn','Ground','Rock','111-rhyhorn.png'),(112,'Rhydon','Ground','Rock','112-rhydon.png'),(113,'Chansey','Normal','','113-chansey.png'),(114,'Tangela','Grass','','114-tangela.png'),(115,'Kangaskhan','Normal','','115-kangaskhan.png'),(116,'Horsea','Water','','116-horsea.png'),(117,'Seadra','Water','','117-seadra.png'),(118,'Goldeen','Water','','118-goldeen.png'),(119,'Seaking','Water','','119-seaking.png'),(120,'Staryu','Water','','120-staryu.png'),(121,'Starmie','Water','Psychic','121-starmie.png'),(122,'Mr. Mime','Psychic','Fairy','122-mrmime.png'),(123,'Scyther','Bug','Flying','123-scyther.png'),(124,'Jynx','Ice','Psychic','124-jynx.png'),(125,'Electabuzz','Electric','','125-electabuzz.png'),(126,'Magmar','Fire','','126-magmar.png'),(127,'Pinsir','Bug','','127-pinsir.png'),(128,'Tauros','Normal','','128-tauros.png'),(129,'Magikarp','Water','','129-magikarp.png'),(130,'Gyarados','Water','Flying','130-gyarados.png'),(131,'Lapras','Water','Ice','131-lapras.png'),(132,'Ditto','Normal','','132-ditto.png'),(133,'Eevee','Normal','','133-eevee.png'),(134,'Vaporeon','Water','','134-vaporeon.png'),(135,'Jolteon','Electric','','135-jolteon.png'),(136,'Flareon','Fire','','136-flareon.png'),(137,'Porygon','Normal','','137-porygon.png'),(138,'Omanyte','Rock','Water','138-omanyte.png'),(139,'Omastar','Rock','Water','139-omastar.png'),(140,'Kabuto','Rock','Water','140-kabuto.png'),(141,'Kabutops','Rock','Water','141-kabutops.png'),(142,'Aerodactyl','Rock','Flying','142-aerodactyl.png'),(143,'Snorlax','Normal','','143-snorlax.png'),(144,'Articuno','Ice','Flying','144-articuno.png'),(145,'Zapdos','Electric','Flying','145-zapdos.png'),(146,'Moltres','Fire','Flying','146-moltres.png'),(147,'Dratini','Dragon','','147-dratini.png'),(148,'Dragonair','Dragon','','148-dragonair.png'),(149,'Dragonite','Dragon','Flying','149-dragonite.png'),(150,'Mewtwo','Psychic','','150-mewtwo.png'),(151,'Mew','Psychic','','151-mew.png');
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trainer_id` varchar(255) NOT NULL,
  `team_name` varchar(255) NOT NULL,
  `pokemon_1` varchar(255) NOT NULL,
  `pokemon_2` varchar(255) NOT NULL,
  `pokemon_3` varchar(255) NOT NULL,
  `pokemon_4` varchar(255) NOT NULL,
  `pokemon_5` varchar(255) NOT NULL,
  `pokemon_6` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `TrainerId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TrainerId` (`TrainerId`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`TrainerId`) REFERENCES `trainers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'1','All-Fire Squad','Arcanine','Flareon','Ponyta','Magmar','Moltres','Charizard','2019-03-09 06:04:02','2019-03-09 06:04:02',1),(2,'1','Water Buster','Venusaur','Victrebel','Exeggutor','Pikachu','Jolteon','Electabuzz','2019-03-09 06:07:03','2019-03-09 06:07:03',1),(3,'2','Beat Mewtwo','Parasect','Gengar','Venomoth','Pinsir','Scyther','Haunter','2019-03-09 06:09:01','2019-03-09 06:09:01',2);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trainers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
INSERT INTO `trainers` VALUES (1,'F3theMissile','2019-03-09 06:02:40','2019-03-09 06:02:40'),(2,'Albrosia','2019-03-09 06:07:10','2019-03-09 06:07:10');
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `typing`
--

DROP TABLE IF EXISTS `typing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `typing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typing` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `typing`
--

LOCK TABLES `typing` WRITE;
/*!40000 ALTER TABLE `typing` DISABLE KEYS */;
/*!40000 ALTER TABLE `typing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trainer` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trainer` (`trainer`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'F3theMissile','frank@pokemon.com','$2a$10$FW8dSZcsJTfrhxK/jnF15.4siN.Ces/dMkohAGdS7NgLKGbePLhuS','2019-03-09 05:56:27','2019-03-09 05:56:27'),(2,'Albrosia','big.al@dingers.com','$2a$10$EKltVRQmBbN/KEF69/8VfOevQ4D/7SCVCNZCUcpx1aCJF.9IZaeq2','2019-03-09 05:59:29','2019-03-09 05:59:29'),(3,'Zendog68','markiemark@va.gov','$2a$10$bwwKZJofOlhj9TDSBzRtEOhJxtACtxkBgm4CDQN0LIZ13YyquXxKa','2019-03-09 06:00:11','2019-03-09 06:00:11');
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

-- Dump completed on 2019-03-08 23:11:37
