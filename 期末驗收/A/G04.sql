-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 0523
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `attribute`
--

DROP TABLE IF EXISTS `attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute` (
  `aId` int NOT NULL,
  `profile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute`
--

LOCK TABLES `attribute` WRITE;
/*!40000 ALTER TABLE `attribute` DISABLE KEYS */;
INSERT INTO `attribute` VALUES (1,'SUV'),(2,'RV'),(3,'Pickup'),(4,'Sedan'),(5,'Sport'),(6,'Compact');
/*!40000 ALTER TABLE `attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `pId` int NOT NULL,
  `mId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (16,NULL),(17,'666'),(55,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cId` int NOT NULL,
  `cname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'TOYOTA'),(2,'MAZDA'),(3,'HONDA'),(4,'NISSAN'),(5,'FORD'),(6,'LEXUS'),(7,'VW'),(8,'Tesla');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favor`
--

DROP TABLE IF EXISTS `favor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favor` (
  `pId` int NOT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favor`
--

LOCK TABLES `favor` WRITE;
/*!40000 ALTER TABLE `favor` DISABLE KEYS */;
INSERT INTO `favor` VALUES (1),(3),(5),(7),(9),(11),(13),(16),(96);
/*!40000 ALTER TABLE `favor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `mId` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (22,'Kevin','Kevin777@gmail.com',NULL,'0905136578'),(43,'Posey','Posey596@gmail.com',NULL,'0965484123'),(69,'John','John0909@gmail.com',NULL,'0909568788'),(71,'Howard','Howard0613@gmail.com',NULL,'0932164587'),(666,'Lisa','lisa666@gmail.com',NULL,'0965485213'),(4100,'415616','asd@gmail.com','qs165sdf','51056203');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `tid` int NOT NULL,
  `pId` int DEFAULT NULL,
  `mId` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `delievery` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (259,3,43,2000,'貨到付款','超商',NULL);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pId` int NOT NULL,
  `cId` int DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `profile` varchar(45) DEFAULT NULL,
  `aId` varchar(45) DEFAULT NULL,
  `describ` varchar(1200) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,3,'CRV',949000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694346/thumbnail_CR_V_9638a1a01a.png','SUV','1','本田CR-V小改款不僅延續歷代自信的駕馭、完備的安全、舒適的空間、上乘的質感以及驚艷的外型等優異基礎，更在優異基礎之上，以更霸氣動感 的設計元素，帶來更清新銳利之前衛造型；亦新增多項實用的便利裝備，輔以上乘質感及極致主被動安全，為重視家庭的您帶來嶄新價值。'),(2,5,'RANGER',1198000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694333/thumbnail_Ranger_623d9d76e8.png','Pickup','3','Ford Ranger職人型／全能型，延續「Built Ford Tough」精神，以充沛動力、四輪驅動地形征服力、絲毫不妥協的主被動安全科技配備，以及完整的空間及多元運用，並向下延伸至百萬出頭價格帶級距，主打切合專業工作者與特種用途，為台灣皮卡市場開創更豐富選擇，滿足台灣職人與專業工作者的新型用車需求。'),(3,7,'TIGUAN',1098000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694336/thumbnail_tiguan_a0d5eeda34.webp','SUV','1','Tiguan R在內裝更顯競技氣息，擁有R專屬字樣和藍色縫線的Nappa Carbon 碳纖維紋運動型真皮座椅及腳踏墊，搭配可見藍色縫線和R Logo藍色飾徽點綴其中的R專屬運動化真皮多功能方向盤，並且於左側按鍵控制區提供特殊R按鍵，便於切換駕駛模式與獨特賽車模式，加上跑車式方向盤換檔撥片，帶給駕駛極具性能戰鬥化的駕駛氛圍。'),(4,7,'TOURAN',1098000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694336/thumbnail_touran_4791faf566.webp','SUV','1','Volkswagen Touran以德藝設計、卓越動力、豐富配備和空間機能性獲得台灣消費者青睞，台灣福斯汽車引進的2020年式車型，以德國原廠最新命名方式展現全新氣象，同時全車系標配IQ.DRIVE智能駕駛輔助系統，Life和R-Line車型並享有Volkswagen半自動駕駛技術，給予消費者最全能德藝MPV家庭用車。'),(5,6,'LM',5600000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694327/thumbnail_LM_98641bdcc4.png','RV','2','Lexys LM提供四人座及七人座予買家選擇，四人座車型採用後座獨立空間設計，車室內高度達1,350mm、後座座椅中心至隔層屏風更達驚人的1,150mm，提供超大腳部空間以及寬闊的視野，傲視所有同級競品。'),(6,5,'FOCUS',699000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694349/thumbnail_Ford_Focus_493bd5c284.png','Sedan','4','Ford大改款Focus五門款在嶄新設計語言下，以全新輕量化EcoBoost 182三缸渦輪增壓汽油引擎搭配同級唯一SelectShift八速手自排變速箱，帶來更為精進的動力輸出及同級最佳17.3 km/L一級油耗表現，搭配Ford全新世代C2底盤帶來更為寬敞的車室空間、輕量化車身結構、高剛性動態表現及同級罕見的平整化底盤設計，並搭載領先同級、符合美國SAE Level 2自動駕駛科技的Ford Co-Pilot360全方位智駕科技輔助系統及多項便捷科技配備，樹立運動掀背車市場新標竿。'),(7,6,'RCF',3680000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694335/thumbnail_RCF_959ff46c43.png','Sport','5','Lexus RC F在外觀大幅融入RC F GT 3與GT500設計，除了讓外觀更具有侵略性外，更結合了大量空氣力學設計，全新設計的前、後保桿與側裙，搭配前下擾流器與車尾擴散器，讓全新RC F除了保有雙門跑車的性感外型，更大幅優化車輛空氣力學。RC F全面優化動力系統，搭載5.0升自然進氣V8引擎，採用剛性更強、能承受更高引擎轉速的鍛造曲軸、鈦合金進排氣閥門，最大馬力達464 hp/7,100 rpm與53.0 kgm/4,800rpm最大扭力，並搭配8速SPDS手自排變速系統，提供綿延不絕的磅礡動力及令人醉心的高亢聲浪，而本次RC F全車系搭載Launch Control彈射起步系統，可讓駕駛者享受全力衝刺時的貼背快感。'),(8,1,'86',1300000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694338/thumbnail_Toyota_86_c951456aea.png','Sport','5','Toyota 86除保留原有的優異特點外，在外觀上以開闊的前氣壩設計將造型線條向外延伸，不僅更具張力也一併強化行車安定感；同時，全車系標配LED Bi-Beam頭燈並整合LED定位燈及方向燈設計，讓前視燈組造型更為吸睛耀眼。車尾部分，除了將尾燈組以21顆高亮度LED重塑設計外，全新造型的尾翼更以霧黑鋁合金式樣進行打造，完美塑造出GT賽車的形象，讓86帶有更加狂野的廠車風格。'),(9,5,'MUSTANG',1868000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694352/thumbnail_Ford_Mustang_22974810fb.png','Sport','5','Ford Mustang全新引擎散熱飾蓋設計及下放20mm的鯊魚嘴，勾勒更加俐落霸氣的車頭線條。全新下進氣壩線條設計，搭配LED頭燈、經典三道斜列式LED前識別燈、LED霧燈、LED轉向燈及經典三道格柵式LED尾燈，增添科技感及現代感。此外，車尾標配競速型擾流尾翼，以高調競技外型為經典美式肌肉傳奇再添搶眼氣勢。GT Premium車型標配19吋高光澤鍛造鋁圈，並以金屬密度高、剛性強、重量輕的特性，大幅提升車輛性能，並使懸吊運作更為流暢，以節省燃料消耗。'),(10,6,'IS',1890000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694327/thumbnail_IS_2ca7abb00e.png','Sedan','4','和上一版IS相較，外觀上Lexus為其導入全新的Spindle Grille水箱罩，覆蓋面積更大，並且運用折線的勾勒使視覺高度降低許多，然IS的車長和車寬均增加了30mm，使的整體看來更為服貼在地，外加降低43mm的引擎蓋高度，流線的造型更具跑格。全新的燈具設計將遠近LED頭燈、日行燈整合於一塊，頂級版還配有專屬的三眼式樣，車側雙邊後視鏡則仿效ES等車系之新世代風貌，輪圈則自18吋起跳，並且在F SPORT版提供19吋前後配的版本。'),(11,1,'ALPHARD',2840000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694338/thumbnail_Toyota_alphard_bfae3c6496.png','RV','2','2021年式Alphard改搭載2.5升Hybrid油電複合動力系統，引擎採用 Atkinson循環設計，搭載Dual VVT-i 連續可變氣門正時控制系統，提升引擎運轉效率，並藉由電動馬達與引擎動力交乘輸出，平均油耗可達14.3km/L，符合一級能源效率。'),(12,3,'FIT',669000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694347/thumbnail_Fit_1c34be9c8b.png','Compact','6','Fit承襲Honda獨有的「車室空間極大化，機械空間極小化」思想，維持方便駕馭的靈活尺寸，實現超越同級的寬敞舒適空間；獨有、變化多端的Ultra Seat多功能變化座椅，提供多樣的座椅模式變化，讓車室靈活度及便利性更為提昇。'),(13,2,'MAZDA3',799000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694331/thumbnail_Mazda3_f51bcc869a.png','Sedan','4','Mazda化繁為簡的日式減法美學，透過 「less is more」 的設計思維雕塑出 Mazda 3 簡約流線的迷人車身線條，藉由色澤風格獨具、層次豐沛生動的全新「極境灰」車色，更加反映出俐落動感的光影張力。車室內大面積觸感柔韌、紋理細緻的皮革綴以銀色飾條，以職人精神細膩鋪陳質感層次，在每一分毫的細微之處看見 Mazda對工藝的極致追求。'),(14,2,'CX30',869000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694327/thumbnail_Mazda_CX_30_ccb33ae25f.png','SUV','1','2021 年式 Mazda CX-30全車系標配巡航模式車道維持輔助系統(CTS)，讓車主從穿梭都會到長途巡航皆有完善的 i-ACTIVSENSE 主動安全科技相伴；旗艦型以上新增方向盤換檔快撥片，兼顧操駕樂趣與直覺操作，暢快開啟跨界探索旅程。2021 年式CX-30 提供尊榮型、頂級型、旗艦型與旗艦進化型四款車型。'),(15,2,'MX5',1340000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694330/thumbnail_Mazda_MX_5_a670269f4f.png','Sport','5','新年式Mazda MX-5質感再升級，除增加星燦藍的車色選擇之外，更導入全新酒紅色軟頂敞篷，搭配酒韻紅內裝與 Nappa酒韻紅真皮座椅，將 MX-5 的經典魅力賦予更加熱血純粹的迷人面貌。'),(16,4,'SENTRA',739000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694336/thumbnail_sentra_4d52a95318.png','Sedan','4','Nissan大改款Sentra新世代獵駕以嶄新野性魅力外型、媲美豪華車款的質感內裝、全車規標配ICC智慧型全速域定速控制系統、PFCW超視距車輛追撞警示系統、IEB/P-IEB車輛/行人防追撞緊急煞車系統與LDP車道偏離預防系統等NIM主動安全配備外，更有同級最佳17.7KM/L油耗表現。'),(17,4,'GTR',6350000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694327/thumbnail_GTR_6cd4d17e4f.png','Sport','5','聞名世界的「東瀛戰神」猛爆性能，Nissan GT-R上再度進化，針對六速雙離合器變速系統及引擎中高轉速反應重新調校，最大馬力提升20匹，達到565匹強大實力，峰值扭力則增加至64.5kgm，搭配AWD全時四輪驅動系統，0-100 km/h加速僅需2.7秒，令多數超跑難以望其項背，除了重新調校的車輛性能，Active Sound Enhancement(ASE) 主動式聲浪增強系統使用電子控制閥門，搭配全新NISMO鈦合金排氣系統，在高轉速時爆發出令人熱血激昂的引擎聲浪。'),(18,3,'HRV',777000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694327/thumbnail_HR_V_bf10c82ec6.png','SUV','1','Honda小改款HR-V以全新進化的內、外觀設計，打造個性俐落、令人無法忽視之進化美感；以「全方位安全性」為基礎，全車系標配6 SRS輔助氣囊、G-CON安全防護車體技術9大主動安全系統，打造車內駕駛乘員、對方車輛、及對行人的全面安全設計；更以超越同級的「空間舒適性」為目標，以跨級距超大空間結合嚴謹作工，建構出寧靜舒適的車室設計。'),(19,4,'ALTIMA',1169000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694340/thumbnail_Altima_5e33dae1e0.png','Sedan','4','Nissan Altima展現源自「技術日產」的創新能力，採用與INFINITI QX50同款，獲得WardsAuto 2019全球前十大引擎殊榮的全新KR20DDET VC-Turbo可變壓縮比直列四汽缸渦輪增壓引擎，搭配X-CVT無段自動變速系統附八速手自排與換檔撥片，輸出最大綜效馬力達248hp的強大性能表現，並透過全新引擎可調整壓縮比的獨特優勢，達成13.7km/l超節能一級油耗表現，同時兼具爆發力與耐力，讓車主恣意享受越級旗艦轎跑帶來的極限體驗。'),(23,7,'POLO',768000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694330/thumbnail_polo_351480491c.webp','Conpact','6','作為Volkswagen首款採用MQB創新平台的小型掀背車款，新世代Polo揉合家族經典的設計風格，同時展現更為寬闊與動感的車身比例；對比前一代車型，Polo在車長與車寬各別增加81mm、69mm，軸距更是增長了94mm。此外，Polo車高則略為降低7mm，且搭載電動車外後視鏡（電調、電折、加熱除霧、乘客座後視鏡倒車輔助功能）、水箱護罩鍍鉻飾條，而Comfortline以上車型則配有LED 遠近光頭燈、LED極線日間行車燈、前霧燈（附角落照明功能）等配備，打造個性十足的設計風格。'),(43,8,'MODELX',3633000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694330/thumbnail_Model_X_3c4c1a952b.jpg','SUV','1','Model X Plaid 具有其他 SUV 無可匹敵的動力與加速，是史上性能最強大的 SUV。Long Range 與 Plaid 動力系統搭配最新電池架構，能夠在任何速度下即時提供扭力。'),(55,8,'MODELS',3383000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694330/thumbnail_Model_S_eb4e1333d5.jpg','Sedan','4','Model S Plaid 擁有所有量產電動車中最長的續航里程和最快的加速，是史上性能最強大的轎車。Long Range 和 Plaid 動力傳動系統搭配最新的電池架構，能夠頻繁且穩定地完成四分之一英里加速。'),(96,7,'VW Tiguan',1098000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694336/thumbnail_tiguan_a0d5eeda34.webp','SUV','1','聞名世界的「東瀛戰神」猛。'),(110,7,'VW Tiguan',1098000,'https://res.cloudinary.com/dg5wyd70v/image/upload/v1621694336/thumbnail_tiguan_a0d5eeda34.webp','SUV','1','聞名世界的「東瀛戰神」猛。');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_review`
--

DROP TABLE IF EXISTS `product_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_review` (
  `pId` int DEFAULT NULL,
  `mId` int DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  KEY `fk1_idx` (`pId`),
  CONSTRAINT `fk1` FOREIGN KEY (`pId`) REFERENCES `product` (`pId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_review`
--

LOCK TABLES `product_review` WRITE;
/*!40000 ALTER TABLE `product_review` DISABLE KEYS */;
INSERT INTO `product_review` VALUES (1,43,'vans style_36(Red)','good','w'),(1,69,'vans style_36(Red)','price isn`t expensive','a'),(3,22,'vans style_36(Blue)','good to dress','s'),(NULL,71,'vans AUTHENTIC TRUE WHITE','doesn`t meet my except','d'),(NULL,96,'vans AUTHENTIC TRUE WHITE','not bad','f');
/*!40000 ALTER TABLE `product_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Userpass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-30 23:18:10
