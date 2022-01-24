-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (arm64)
--
-- Host: localhost    Database: daily_report_system
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_flag` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `delete_flag` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3um79qgwg340lpaw7phtwudtc` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,0,'A0001','2021-12-05 18:00:32.450994',1,'厚海様','6DB3F980C2639409DFF50D373632FD9951E984430B4E84112B698D25EBA29FBE','2021-12-12 19:19:02.370682'),(2,0,'A0002','2021-12-05 18:01:55.114394',1,'塩原様','9DA35D3416974E013CC3D18A26555C5AB5D91F3C876B363EA38CE47C9A439D95','2021-12-12 19:18:52.283121'),(3,0,'A0003','2021-12-05 18:04:42.226909',1,'坂本奈緒','EC46DC871BBBFDD2169FBDCE4BA96E2688EC58F7A1BEF1D5B5DEC0A4E9392188','2021-12-12 19:18:43.301605'),(4,0,'A0004','2021-12-05 18:05:09.487581',1,'木下浩子','308F996C050107D0F1ADF41D32EF09BBBDF860B29CF590D7B4F3F254DB742418','2021-12-05 22:46:05.140053'),(5,0,'A0005','2021-12-05 18:10:26.992009',1,'塩原様','E38A93BD9BE830148B7435A72AC5AA79CE14E563091D773DD31925A2B5E0E894','2021-12-05 23:29:06.383660'),(6,0,'A0006','2021-12-05 18:39:47.596559',1,'yamada kouki','05D35A3B4627AC62FFFF44FBF858CE8BD031BBB4A0456D9E7883431CCF14E90F','2021-12-12 19:15:15.156458'),(7,0,'A0007','2021-12-05 18:40:16.624413',1,'管理者は、従業員を管理できる','7B5E73ACF22DA2F7406EB7547D81B3BDA40808B4A55998B4DEC79898CAD62CEA','2021-12-06 21:23:04.419521'),(8,0,'A0008','2021-12-05 19:26:48.821657',0,'山田太郎','F81948A714FE3147BA77B89B175153885EA9D1BDA11EEE514989195AA4AC830A','2022-01-13 00:14:51.318025'),(9,0,'A0009','2021-12-05 19:27:07.340163',1,'山田太郎','F81948A714FE3147BA77B89B175153885EA9D1BDA11EEE514989195AA4AC830A','2021-12-19 20:34:30.196410'),(10,1,'A00010','2021-12-05 22:00:22.340387',0,'石塚真澄','42AA4A9963A0D96F52C8D862500ADB0117E45EA1B9570DFE2D86337F36C87320','2021-12-05 22:00:22.340387'),(11,0,'A00011','2021-12-10 00:31:32.745141',0,'煉獄杏寿郎','2322397507479464AFB29291212ED7F956264E5673483DD3D4DCE22FA1F9E82A','2021-12-10 00:31:32.745141'),(12,0,'A00012','2021-12-11 18:52:43.300140',0,'熊谷先生','0897A083CB4C9B640E9066B68CCD10649696B1E01B71DD5E27C701047D75EB3F','2021-12-12 19:09:41.695859'),(13,0,'A00013','2021-12-17 17:39:42.928299',0,'山本貴','4C2A1D14493CB4430766C172E0A99FA317C46A9E41F04B4285CADBA8C6D7A983','2021-12-17 17:40:44.560251'),(14,0,'A00014','2021-12-19 20:32:50.439999',1,'鈴木伸一','F81948A714FE3147BA77B89B175153885EA9D1BDA11EEE514989195AA4AC830A','2021-12-19 20:34:06.256209'),(15,1,'A00015','2022-01-13 00:18:49.015739',0,'押田隼人','3D4811D99529C7BB83A93F89823B5821CE3995078B3E9CB8C11E3179D6C932B0','2022-01-13 00:18:49.015739');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions`
--

DROP TABLE IF EXISTS `reactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `reaction_id` int NOT NULL,
  `report_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmlhmeccexm1k4dt99do4v1d87` (`employee_id`),
  KEY `FKh1l9i2oxnt070lwf6m9r1uoyj` (`reaction_id`),
  KEY `FKgoi31qxitjwd0r6sp03vvlurh` (`report_id`),
  CONSTRAINT `FKgoi31qxitjwd0r6sp03vvlurh` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`),
  CONSTRAINT `FKh1l9i2oxnt070lwf6m9r1uoyj` FOREIGN KEY (`reaction_id`) REFERENCES `reactions_types` (`id`),
  CONSTRAINT `FKmlhmeccexm1k4dt99do4v1d87` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions`
--

LOCK TABLES `reactions` WRITE;
/*!40000 ALTER TABLE `reactions` DISABLE KEYS */;
INSERT INTO `reactions` VALUES (5,8,1,11),(10,10,1,10),(11,13,1,10),(13,8,1,13),(14,10,1,11),(16,8,1,25),(18,12,1,10),(21,12,1,6),(23,15,1,10),(25,15,1,25),(28,15,1,31),(35,8,1,48),(45,15,1,20),(46,15,1,1),(58,8,1,49),(74,10,1,42),(78,8,1,52),(81,8,1,43),(83,15,1,56),(92,10,1,54),(94,10,1,52),(95,10,1,51),(97,10,1,49),(98,10,1,48),(100,10,1,39),(101,8,1,56),(102,8,1,54),(103,8,1,51),(106,8,1,3),(107,8,1,10),(108,8,1,8),(109,8,1,45),(110,8,1,42),(112,8,1,39),(113,13,1,57),(114,13,1,56),(116,13,1,54),(118,13,1,52),(119,13,1,51),(120,13,1,50),(121,13,1,49),(122,13,1,48),(123,13,1,45),(124,13,1,44),(125,13,1,43),(126,13,1,2),(127,13,1,27),(128,13,1,23),(129,13,1,20),(130,15,1,57);
/*!40000 ALTER TABLE `reactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reactions_types`
--

DROP TABLE IF EXISTS `reactions_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reactions_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reactions_types`
--

LOCK TABLES `reactions_types` WRITE;
/*!40000 ALTER TABLE `reactions_types` DISABLE KEYS */;
INSERT INTO `reactions_types` VALUES (1,'いいね'),(2,'ファイト!'),(3,'素晴らしい'),(4,'頑張れ!');
/*!40000 ALTER TABLE `reactions_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `report_date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `employee_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7m58c0h3phjcm6bco7aqikfen` (`employee_id`),
  CONSTRAINT `FK7m58c0h3phjcm6bco7aqikfen` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'編集機能を完成いたしました!!','2021-12-06 01:15:56.650202','2021-12-06','編集機能完成','2021-12-06 01:41:51.008949',8),(2,'どうだ','2021-12-06 01:16:13.018071','2021-12-06','さて、編集できるか','2021-12-06 01:41:17.133937',8),(3,'人事塞翁が馬','2021-12-06 01:23:58.946926','2021-12-06','人事塞翁が馬','2022-01-19 00:31:59.227437',10),(4,'今ある不満は自分のせい。もっと努力すれば良かっただけの話','2021-12-06 01:24:30.942855','2021-12-06','今ある不満は自分のせい','2022-01-19 00:33:48.115576',10),(5,'課題完成しました!!','2021-12-06 01:54:52.320046','2021-12-06','課題完成','2021-12-06 01:54:52.320046',8),(6,'全課題合格したぜ','2021-12-06 21:15:05.314156','2021-12-06','全課題合格','2021-12-06 21:21:22.895116',8),(7,'石塚真澄は、管理者だ','2021-12-06 21:18:49.435722','2021-12-06','当然、投稿も可能','2021-12-06 21:18:49.435722',10),(8,'今でしょ！','2021-12-09 23:20:53.331408','2021-12-09','いつやるの？','2022-01-19 00:32:46.546978',10),(9,'Javaの復習をする。それが、最後にやるべき事。\r\n','2021-12-10 00:30:22.410005','2021-12-10','Javaの復習','2022-01-19 16:51:25.776110',10),(10,'心を燃やせ、プログラミングに','2021-12-10 00:32:23.104354','2021-12-10','心を燃やせ','2021-12-16 18:30:43.395927',11),(11,'テックアカデミー最高!!','2021-12-10 00:33:00.729274','2021-12-10','テックアカデミー','2021-12-16 18:29:52.468449',11),(12,'メンタリングが迫ってきました','2021-12-10 00:33:59.792492','2021-12-10','メンタリング','2021-12-16 18:31:20.544552',11),(13,'企画、設計、実装の中で、1番大事なのは、企画。','2021-12-10 00:35:11.308178','2021-12-10','企画','2021-12-16 18:32:15.416407',11),(14,'今年中に、機能拡張できなかったら、プログラミングをやめる','2021-12-11 18:51:15.403248','2021-12-02','今年中に機能拡張','2021-12-11 18:51:15.403248',8),(15,'面接に受かったら、職業訓練、終了だからな','2021-12-11 19:19:00.586282','2021-12-11','職業訓練、もう退校かもしれない','2022-01-18 23:42:42.728224',8),(16,'早くspring bootやりたい。','2021-12-11 19:19:40.963297','2021-12-11','spring','2021-12-11 19:19:40.963297',8),(17,'あとは、実装するのみ','2021-12-12 15:26:30.750902','2021-12-12','設計合格','2021-12-13 18:30:53.602468',8),(18,'炎の呼吸　不知火','2021-12-13 18:30:28.889548','2021-12-13','押田隼人','2022-01-11 20:29:09.160570',8),(19,'頑張ったな','2021-12-14 21:27:27.563300','2021-12-14','よくできました','2022-01-18 23:44:36.913379',8),(20,'お前が弱いから悪いんだ。所詮、この世は弱肉強食。どんなに上手く、嘘の作り笑いをしても、その真実からは逃れられないぜ。','2021-12-14 21:59:05.818663','2021-12-14','弱肉強食','2022-01-10 18:59:20.010488',8),(21,'虎穴に入らずんば虎子を得ず','2021-12-15 18:02:10.288254','2021-12-15','虎穴に入らずんば虎子を得ず','2022-01-19 00:29:16.661293',10),(22,'いいね機能難しすぎる。早くspringやりたいのに。','2021-12-15 18:02:47.162893','2021-12-15','いいね機能、難しすぎ','2021-12-15 18:02:47.162893',10),(23,'緊急事態宣言、再発動','2021-12-15 18:04:17.480084','2021-12-15','緊急事態宣言','2022-01-19 00:31:24.898150',10),(24,'今日は誕生日です。','2021-12-15 21:18:51.346351','2021-12-16','今日、誕生日','2022-01-12 00:01:49.020697',8),(25,'いいね機能、完成しました。もう、最高の気分です。','2021-12-16 01:32:51.866389','2021-12-16','いいね機能完成','2021-12-16 01:32:51.866389',12),(26,'今日で、26歳の誕生日を迎えました。必ず、26歳の内に、プログラマーになる','2021-12-16 01:33:59.435011','2021-12-16','誕生日','2021-12-16 01:33:59.435011',12),(27,'座右の銘、継続は力なり','2021-12-17 17:23:05.361461','2021-12-17','継続は力なり','2022-01-19 00:28:20.653452',10),(28,'できたかもしれない','2021-12-17 17:23:43.742769','2021-12-17','できたのかな','2022-01-18 23:29:52.621189',10),(29,'明後日は、派遣に行く','2021-12-17 17:41:47.448217','2021-12-17','派遣','2022-01-13 18:48:31.455441',13),(30,'今月は、Javaの復習をしよう!!','2021-12-17 22:09:39.497935','2021-12-17','Javaの復習','2022-01-19 00:51:00.574080',13),(31,'明けましておめでとうございます。今年こそは、必ずプログラマーになります。','2022-01-01 18:35:27.936087','2022-01-01','新年の開始','2022-01-01 18:35:27.936087',8),(32,'Spring bootの勉強をしています。中々、捗ってると思う','2022-01-01 18:36:12.643052','2022-01-01','Spring boot','2022-01-01 18:36:12.643052',8),(33,'いいねを0にする機能、完成!!','2022-01-10 18:58:15.675497','2022-01-10','いいねを０にする機能完成','2022-01-18 23:43:45.678398',8),(34,'４つのいいねを全て消す!!','2022-01-11 02:06:35.664256','2022-01-11','４つのいいねが押された日報','2022-01-18 23:45:59.515800',8),(35,'まずは１いいねを消す','2022-01-11 17:52:24.203296','2022-01-11','まずは１つ','2022-01-19 00:44:13.288217',8),(36,'JavaScript勉強開始!!','2022-01-13 00:25:14.911297','2022-01-13','JavaScript','2022-01-13 00:25:14.911297',15),(37,'久しぶりにプロゲート。JavaScript4章まで終わった。','2022-01-13 00:25:57.858051','2022-01-13','プロゲート','2022-01-13 00:25:57.858051',15),(38,'JavaScriptの課題、難しすぎる。解けるのか。','2022-01-13 00:27:11.996775','2022-01-13','課題難しすぎ','2022-01-13 00:27:11.996775',15),(39,'明日から、メンタリング再開!','2022-01-13 00:28:31.007939','2022-01-13','メンタリング','2022-01-13 00:28:31.007939',15),(40,'パイソンも終わった','2022-01-13 00:29:36.408462','2022-01-13','パイソン終了','2022-01-19 16:46:12.837754',15),(41,'「いいね」を0にする機能が出来ただけでも、大収穫だよ。','2022-01-13 00:31:34.768680','2022-01-13','大収穫','2022-01-19 16:48:36.911185',15),(42,'心臓に毛が生えている','2022-01-13 18:42:52.074990','2022-01-13','時計を止めて','2022-01-18 23:09:53.252677',15),(43,'面接が決定したぞ。そして、大丈夫になったぞ','2022-01-13 18:44:20.652050','2022-01-13','面接決定','2022-01-18 23:33:22.702461',10),(44,'いいね機能、１つでここまで奥が深いとは。プログラミングは本当に奥が深いな','2022-01-13 18:44:55.968703','2022-01-13','いいね機能、とても奥深い','2022-01-18 23:50:04.458120',10),(45,'もはや執念とも言える俺の努力で、無事、完成した。','2022-01-13 18:47:18.754389','2022-01-13','執念','2022-01-19 00:30:21.303809',10),(46,'ついに、最終面接まで、辿り着いたぜ!!','2022-01-13 18:50:48.702833','2022-01-11','面接が決まった','2022-01-19 00:50:23.467962',13),(47,'サーブレットもやらなきゃだめだよ','2022-01-13 18:52:37.694382','2022-01-13','サーブレットもやらないと','2022-01-19 00:49:50.470774',13),(48,'Javascript面白いな。極めよう!','2022-01-13 18:54:33.667487','2022-01-13','Javascript面白い','2022-01-13 18:54:33.667487',15),(49,'ヤベツ行こうかな','2022-01-13 18:56:55.669648','2022-01-13','やべつ','2022-01-18 22:49:00.287366',15),(50,'プログラミング王に、俺はなる!!','2022-01-13 18:58:06.019758','2022-01-01','プログラミング王','2022-01-19 00:46:09.171289',8),(51,'難しい事をやると、本当に達成感を感じる。','2022-01-13 23:35:40.914157','2022-01-13','達成感','2022-01-19 00:25:12.271037',15),(52,'マカロン','2022-01-17 18:15:07.637451','2022-01-17','フランボワーズ','2022-01-18 23:06:18.348859',15),(53,'トマトパスタ','2022-01-17 18:15:23.261110','2022-01-17','ガーリック','2022-01-19 16:47:13.794560',15),(54,'ヘロクにデプロイ!!','2022-01-18 00:01:56.219458','2022-01-18','githubにプッシュ!!','2022-01-19 00:24:11.595331',15),(55,'最終面接の日が決まった','2022-01-18 00:16:52.207793','2022-01-18','最終面接決定!!','2022-01-19 16:45:32.022255',15),(56,'時計の課題、合格したぜ!!','2022-01-18 00:25:20.078564','2022-01-18','時計課題、合格','2022-01-18 23:49:00.639075',10),(57,'大収穫だよ今日だけでも','2022-01-18 23:34:53.766533','2022-01-18','大収穫','2022-01-19 00:45:08.682429',8),(58,'失業保険、振り込まれていた。','2022-01-19 16:49:43.450020','2022-01-19','失業保険','2022-01-19 16:49:43.450020',15),(59,'もしも面接に受かったら、転職保証コースも職業訓練も、同時に終わるのか。','2022-01-19 16:52:24.858613','2022-01-19','同時に終わる','2022-01-19 16:52:24.858613',15);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24 21:24:05
