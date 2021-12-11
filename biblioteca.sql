CREATE DATABASE  IF NOT EXISTS `biblio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `biblio`;
-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: biblio
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (70,'accion'),(71,'bizarro'),(72,'ciencia ficcion'),(73,'comedia'),(74,'cronica'),(75,'cuento'),(76,'drama'),(77,'ensayo'),(78,'fabula'),(79,'infantil'),(80,'leyenda'),(81,'narrativo'),(82,'novela'),(83,'parodia'),(84,'infantil'),(85,'poesia'),(86,'relato '),(87,'romance'),(88,'suspenso'),(89,'teatral'),(90,'terror');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idCLIENTE` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `apellido1` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `apellido2` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `telefono` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `direccion` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`idCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'alejandro','rodriguez','jimenez','465-112-80-82','ignacio ramirez #706'),(2,'ricardo','garcia','flores','465-876-23-10','valles ornnelas #67'),(3,'rafael','preciado','gutierrez','449-196-29-25','plutarco #98'),(4,'lessly','rodriguez','jimenez','465-104-80-28','ramrez#709'),(5,'andrea','ortiz','sanchez','465-124-67-77','mariano escobedo#73'),(6,'ana','tello','vazquez','449-356-90-08','constitucion #80'),(7,'alejandra','lira','toledo','449-789-01-03','ayuntamiento#119'),(8,'dalia','jimenez','lira','465-113-17-89','lomas#79'),(9,'alicia','jimenez','aragon','465-985-09-78','5 de mayo#39'),(10,'leon','muñoz','rangel','465-112-45-8','popular#156'),(11,'sergio','ibarra','reyes','465-187-34-52','portillo#45'),(12,'marco','rodriguez','reyes','449-115-17-00','miguel hidalgo#59'),(13,'aisha','guzman','martinez','465-100-17-45','allende#2'),(14,'rigoberto','rodriguez','puentes','465-798-09-87','cuarta#78'),(15,'alan','santillan','delgado','465-137-89-65','reforma#177'),(16,'bernardo','gonzalez','fonseca','449-195-29-06','carboneras #9'),(17,'sara','sanchez','de la rosa','449-456-08-78','palo alto#67'),(18,'briza ','de luna','perez','465-999-67-45','ponce#189'),(19,'franco','chavez','gallegos','465.555-29-12','cosmos#78'),(20,'eduardo','lopez','macias','465-235-89-07','andomeda#20'),(21,'ulices','mendez','martinez','449-134-67-56','orion#50'),(22,'alexander','rodriguez ','serrano','449-239-78-23','fenix#43'),(23,'donaldo','guerrero','hernandez','465-786-56-90','refugio#16'),(24,'jose','guerrero','rosales','449-123-98-00','palmar#13'),(25,'david','luevano','jaime','465-364-67-77','rio grande#29'),(26,'cecilia','toledo','lopez','465-375-56-44','bonaterra#47'),(27,'maria luisa ','delgado','macias','449-426-77-09','san marqueña#33'),(28,'griselda','santillan','torres','465-529-00-84','anims#88'),(29,'ma dolores','lopez','lopez','449-385-09-17','letras#46'),(30,'dayana','delgado','lopez','465-129-09-67','lomas dell ajedrez#66'),(31,'fernanda','gomez','cabrera','449- 136-64-28','peralta#44'),(32,'manuel','delgado','delgado','465-788-88.00','lopez mateos#89'),(33,'gabriel','santillan','delgado','465-657-99-79','santa rosa#12'),(34,'erik','flores','garcia','449-379-00-17','los conos#33'),(35,'quetzali','najera','delgado','465-124-44-67','madero#677'),(36,'ricardo','gonzalez','jimenez','465-529-00-84','san nicolas#28'),(37,'yaretzi','najera','delgado','449-792-10-89','betulia#47'),(38,'nivia','escalante','rodriguez','449-789-01-03','san pedro#11'),(39,'lia','de la rosa','delgado','465-89-70-56','pedegral#44'),(40,'valeria','vazquez','barron','465-657-99-79','santiago#22'),(41,'marelyn','reyes','delgado','449-795-00-48','lopez portillo#55'),(42,'matias','ortiz','delgado','449-356-90-08','quinta#48'),(43,'victoria','loera','ibarra','465-529-00-84','vicente #33'),(44,'barbara','lopez','ortiz','449- 136-64-28','san ustin#88'),(45,'diego','jimenez','lopez','449-789-01-03','los puentes#56'),(46,'ricardo','alfaro','martinez','465-187-34-52','romo#37'),(47,'angel','jimenez','jimenez','465-375-56-44','constitucion#88'),(48,'magdalena','valenciano','acosta','449- 136-64-28','5 de mayo#7'),(49,'marina','acosta','perez','465-657-99-79','vergel del valle#67'),(50,'guadalupe','valenciano','acosta','465-139-60-58','valle del vivero#96'),(51,'antonio','lopez','ibarra','465-187-34-52','carboneras#69'),(52,'consuelo','macias','garcia','465-375-56-44','san francisco#46'),(53,'adrian','gonzalez','lira','449-356-90-08','morelos#22'),(54,'diana','lira','jimenez','465-529-00-84','carboneras\"77'),(55,'francisco','serna','santana','465-477-90-24','portillo#46'),(56,'cristina','tello','rodriguez','465-657-99-79','niño artillero\"67'),(57,'sofia','tello','rodriguez','449-789-01-03','constitucion#91'),(58,'luis','lira','jiemenez','465-870-88-30','orion#12'),(59,'raul','herrada','muñoz','465-498-90-99','andromeda#78'),(60,'carmen','muñoz','serrano','449-196-29-25','vergel del valle#78'),(61,'diana','reyes','moreno','449-777-09-49','plutarco\"38'),(62,'abril ','hernandez','llamas','465-488-60-55','madero#67'),(63,'fernanda','martinez','chavez','465-187-34-52','sana nicolas#3'),(64,'paulina','soto','garcia','449-684-90-72','san juan#46'),(65,'valeria','hernandez','teran','465-039-78-20','barrio de guadalupe#49'),(66,'jaueline','alvarez','lucio','465-657-99-79','la animas#44'),(67,'fernanda','rodriguez','frausto','465-529-00-84','torres#34'),(68,'michelle','maldonado','garcia','449-356-90-08','el refugio#77'),(69,'aylin','valadez','lopez','465-409-78-37','las palmas#49'),(70,'alberto','ramirez','espinoza ','449-789-01-03','orion#56'),(71,'rosario','olivares','serna','465-498-78-45','5 de mayo#25'),(72,'marco','reyes','tostado','449-390-00-47','los laureles#70'),(73,'manuel','carrasco','rivera','449-196-29-25','popular#507'),(74,'mariana','gonzalez','esparza','465-579-89-45','paredes#234'),(75,'naomi','arreguin','ortega','465-900-89-15','la plutarco#48'),(76,'leonor','cabrera','flores','465-657-99-79','ramirez#37'),(77,'bruno','espinoza','flores','465-550-80-12','agustin lara#9'),(78,'angel ','santillan','chavez','449-195-49-50','matamoros#149'),(79,'ana','urzua','salas','465-529-00-84','zaragoza#101'),(80,'alma','espinoza','robles','465-668-77-34','aldama#156'),(81,'cecilia','torres','carrasco','465-296-95-40','5 de mayo#164'),(82,'claudia','centeno','rodriguez','449-789-01-03','libertad#495'),(83,'pavel','serna','lucio','449-576-90-85','carranza#60'),(84,'enrique','jimenez','aragon','465-187-34-52','loma alta#1000'),(85,'adriana','villegas','lopez','465-389-99-67','daniel soto#738'),(86,'urian','gonzalez','flores','449-798-09-00','benito juarez#197'),(87,'victor','jimenez','rodriguez','449-130-80.56','revolcion#60'),(88,'fernando','perez','rodriguez','465-657-99-79','la reforma#269'),(89,'francisco','gloria','rubalcava','465-237-45-70','cristobal colon#301'),(90,'andrea','mauricio','landin','465-375-56-44','privada lomas#3'),(91,'kenia','jara','estrada','449-196-29-25','madero#3011'),(92,'nelsy','jaramillo','mauricio','449- 136-64-28','heros#225'),(93,'miriam','montañez','hoyos','449-489-77-44','lopez mateos#4532'),(94,'raquel','jueraqui','lopez','449-356-90-08','coba#67'),(95,'ruben','oliva','amaton','465-500-87-67','21 de marzo#501'),(96,'salvador','delgado','santillan','449-789-01-03','agustin#46'),(97,'edauardo','fajardo','rodriguez','465-375-56-44','8 de noviembre#33'),(98,'leticia','olivares','quezada','465-187-34-52','la reforma#44'),(99,'osar ','moreno','guzman','449- 136-64-28','heroes#23');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editorial` (
  `idEDITORIAL` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idEDITORIAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (20,'tuquiest'),(21,'moore'),(22,'yale'),(23,'colorado'),(24,'santillana'),(25,'nyu'),(26,'planeta'),(27,'icaria'),(28,'catedra'),(29,'anaya'),(30,'rand'),(31,'palpala'),(32,'alianza'),(33,'aique'),(34,'albetros'),(35,'paido'),(36,'algebraina'),(37,'sicus'),(38,'six birral'),(39,'collers'),(40,'ritrull');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libro` (
  `idLIBRO` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `idcategoria` varchar(45) NOT NULL,
  PRIMARY KEY (`idLIBRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `idREGISTRO` int(11) NOT NULL,
  `idrenta` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `idlibro` varchar(45) NOT NULL,
  PRIMARY KEY (`idREGISTRO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (0,'912','1',''),(300,'905','3',''),(301,'902','1',''),(302,'900','1',''),(303,'907','1',''),(304,'901','1',''),(305,'904','1',''),(306,'911','1',''),(307,'917','4',''),(308,'910','3',''),(309,'909','1',''),(310,'919','1',''),(311,'908','2',''),(312,'916','1',''),(313,'920','1',''),(314,'928','1',''),(315,'918','1',''),(316,'930','1',''),(317,'923','3',''),(318,'924','1',''),(319,'903','2',''),(320,'906','1','');
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renta`
--

DROP TABLE IF EXISTS `renta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renta` (
  `idRENTA` int(11) NOT NULL,
  `fecha entrega` varchar(45) NOT NULL,
  `fecha de renta` varchar(45) NOT NULL,
  `libro` varchar(45) NOT NULL,
  PRIMARY KEY (`idRENTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renta`
--

LOCK TABLES `renta` WRITE;
/*!40000 ALTER TABLE `renta` DISABLE KEYS */;
INSERT INTO `renta` VALUES (900,'1/04/2021','30/01/2021','el llano'),(901,'2/04/2021','29/02/2021','el principito'),(902,'3/04/2021','20/03/2021','infierno'),(903,'4/04/2021','28/04/2021','ella'),(904,'5/04/2021','27/05/2021','estrella'),(905,'6/04/2021','26/06/2021','it'),(906,'7/07/2021','25/07/2021','cabaña'),(907,'8/04/2021','24/08/2021','el lobo'),(908,'9/04/2021','23/09/2021','bajo la misma estrella'),(909,'10/04/2021','22/10/2021','torre oscura'),(910,'11/04/2021','21/11/2021','a cinco pies de ti'),(911,'12/04/2021','20/12/2021','si decido quedarme'),(912,'13/04/2021','19/09/2021','el zorro'),(913,'14/04/2021','18/11/2021','don quijote'),(914,'15/04/2021','17/05/2021','harry potter'),(915,'15/04/2021','16/06/2021','el señor de los anillos'),(916,'16/04/2021','15/07/2021','crepusculo'),(917,'17/04/2021','14/08/2021','alquimista'),(918,'18/04/2021','13/09/2021','lo que el viento se llevo '),(919,'19/04/2021','12/08/2021','el codigo de davinci'),(920,'20/04/2021','11/12/2021','citas'),(921,'21/04/2021','10/09/2021','orgullo y prejuicio '),(922,'22/04/2021','9/04/2021','extranjero'),(923,'23/04/2021','8/04/2021','viaje al fin de la noche'),(924,'24/04/2021','7/04/2021','los endmeoniados'),(925,'25/04/2021','6/04/2021','el orfanato '),(926,'26/04/2021','5/04/2021','veronica'),(927,'27/04/2021','4/04/2021','el hombre invisible'),(928,'28/04/2021','3/04/2021','love'),(929,'29/04/2021','2/04/2021','medea'),(930,'30/04/2021','1/04/2021','el tambor de ojalata ');
/*!40000 ALTER TABLE `renta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 18:59:22
