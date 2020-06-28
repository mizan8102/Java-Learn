/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.45-community-nt : Database - javaproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`javaproject` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `javaproject`;

/*Table structure for table `cusdata` */

DROP TABLE IF EXISTS `cusdata`;

CREATE TABLE `cusdata` (
  `cid` int(11) NOT NULL auto_increment,
  `cName` varchar(200) default NULL,
  `cCell` varchar(11) default NULL,
  `cAddress` varchar(200) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cusdata` */

/*Table structure for table `just` */

DROP TABLE IF EXISTS `just`;

CREATE TABLE `just` (
  `idate` date default NULL,
  `icome` int(200) default NULL,
  `id` int(200) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `just` */

insert  into `just`(`idate`,`icome`,`id`) values ('2020-06-05',24,1),('2020-06-09',20,2);

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `name` varchar(200) NOT NULL,
  `pass` varchar(20) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `log` */

insert  into `log`(`name`,`pass`) values ('Mizan','123');

/*Table structure for table `nojust` */

DROP TABLE IF EXISTS `nojust`;

CREATE TABLE `nojust` (
  `id` int(200) NOT NULL auto_increment,
  `cdate` date default NULL,
  `cost` int(200) default NULL,
  `income` int(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `nojust` */

insert  into `nojust`(`id`,`cdate`,`cost`,`income`) values (1,'2020-06-02',30,NULL),(2,'2020-07-06',15,NULL),(3,'2020-06-09',25,NULL);

/*Table structure for table `pricetest` */

DROP TABLE IF EXISTS `pricetest`;

CREATE TABLE `pricetest` (
  `product` varchar(200) default NULL,
  `price` int(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pricetest` */

insert  into `pricetest`(`product`,`price`) values ('Banana',200),('Apple',200);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(200) default NULL,
  `price` int(11) default NULL,
  `Details` varchar(200) default NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`pid`,`pname`,`price`,`Details`) values (1,'vegitable',100,'eng'),(2,'rl',34,'bd'),(4,'jackfruit',45,'srilangka'),(6,'Lemon',54,'bd'),(8,'Coconut',432,'china'),(10,'Basmoti rice',63,'bd'),(12,'Mobile',4000,'bd'),(13,'bananai',35,'ind'),(14,'mango',240,'bd'),(15,'choclate',234,'ind'),(16,'ice Cream',34,'ind'),(17,'Horlicks',340,'bd'),(18,'t-shirt',430,'man'),(19,'Shirt',500,'indian'),(20,'Glass',300,'RFL'),(21,'Glass',600,'ciramic'),(22,'Pant',600,'Boys'),(23,'pepsi',45,''),(24,'al',42,'432'),(25,'ldjkf',546,'gfhg'),(26,'iphone',50000,'Apple,usa'),(27,'Ice Crim',42,'Zan zee'),(28,'Body Spa',90,'men'),(29,'test Product',200,'test');

/*Table structure for table `product_copy` */

DROP TABLE IF EXISTS `product_copy`;

CREATE TABLE `product_copy` (
  `pid` int(11) NOT NULL,
  `pname` varchar(200) default NULL,
  `price` int(11) default NULL,
  `Details` varchar(200) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_copy` */

insert  into `product_copy`(`pid`,`pname`,`price`,`Details`) values (5,'sugar',23,'china');

/*Table structure for table `product_del` */

DROP TABLE IF EXISTS `product_del`;

CREATE TABLE `product_del` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(200) default NULL,
  `price` int(11) default NULL,
  `Details` varchar(200) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `product_del` */

insert  into `product_del`(`pid`,`pname`,`price`,`Details`) values (5,'apple',23,'china');

/*Table structure for table `product_insert` */

DROP TABLE IF EXISTS `product_insert`;

CREATE TABLE `product_insert` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(200) default NULL,
  `price` int(11) default NULL,
  `Details` varchar(200) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `product_insert` */

insert  into `product_insert`(`pid`,`pname`,`price`,`Details`) values (1,NULL,NULL,NULL),(12,'milk',34,'bd');

/*Table structure for table `product_pro` */

DROP TABLE IF EXISTS `product_pro`;

CREATE TABLE `product_pro` (
  `pid` int(11) NOT NULL auto_increment,
  `pname` varchar(200) default NULL,
  `price` int(11) default NULL,
  `Details` varchar(200) default NULL,
  `work` varchar(200) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `product_pro` */

insert  into `product_pro`(`pid`,`pname`,`price`,`Details`,`work`) values (1,'pen',100,'ind','update'),(2,'onion',230,'bd','update'),(3,'apple',321,'china','Delete'),(4,'orange',780,'china','update'),(6,'solt',54,'bd','update'),(7,'haney',43,'ind','Delete'),(8,'naut',432,'china','update'),(9,'banana',5,'ind','Delete'),(10,'rice',63,'bd','update'),(11,'coconut',45,'ind','Delete'),(12,'milk',34,'bd','update'),(13,'bananai',35,'ind','insert'),(14,'mango',240,'bd','insert'),(15,'choclate',234,'ind','insert'),(16,'ice Cream',34,'ind','insert'),(17,'Horlicks',340,'bd','insert'),(18,'t-shirt',430,'man','insert'),(19,'Shirt',500,'indian','insert'),(20,'Glass',300,'RFL','insert'),(21,'Glass',600,'ciramic','insert'),(22,'Pant',600,'Boys','insert'),(23,'pepsi',45,'','insert'),(24,'al',42,'432','insert'),(25,'ldjkf',546,'gfhg','insert'),(26,'iphone',50000,'Apple,usa','insert'),(27,'Ice Crim',42,'Zan zee','insert'),(28,'Body Spa',90,'men','insert'),(29,'test Product',200,'test','insert');

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `puId` int(11) NOT NULL auto_increment,
  `pid` int(11) default NULL,
  `puQuantity` int(11) default NULL,
  `puPrice` int(11) default NULL,
  `puDate` date default NULL,
  `puDetails` varchar(200) default NULL,
  PRIMARY KEY  (`puId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `purchase` */

insert  into `purchase`(`puId`,`pid`,`puQuantity`,`puPrice`,`puDate`,`puDetails`) values (1,8,980,20,'2020-04-07',NULL),(2,2,534324,200,'2020-04-06',NULL),(3,3,6543,300,'2020-04-14',NULL),(4,4,700,700,'2020-03-30',NULL),(5,5,3453,20,'2020-04-30',NULL),(6,6,345,50,'2020-04-30',NULL),(7,1,7898,120,'2020-04-21',NULL),(8,7,3565,400,'2020-04-28',NULL),(9,9,453,2,'2020-04-29',NULL),(10,10,3534,60,'2020-04-29',NULL);

/*Table structure for table `sales` */

DROP TABLE IF EXISTS `sales`;

CREATE TABLE `sales` (
  `cid` int(11) NOT NULL auto_increment,
  `sid` int(11) NOT NULL,
  `pid` int(11) default NULL,
  `sQuantity` int(11) default NULL,
  `price` int(20) default NULL,
  `sDate` date default NULL,
  `discount` int(20) default NULL,
  `sDetails` varchar(200) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

/*Data for the table `sales` */

insert  into `sales`(`cid`,`sid`,`pid`,`sQuantity`,`price`,`sDate`,`discount`,`sDetails`) values (1,1,2,10,230,'2020-04-21',NULL,NULL),(2,2,4,23,780,'2020-04-07',NULL,NULL),(3,3,3,30,321,'2020-04-29',NULL,NULL),(4,4,1,2,25,'2020-04-29',NULL,NULL),(5,5,6,7,54,'2020-04-14',NULL,NULL),(6,6,8,43,432,'2020-05-07',NULL,NULL),(7,7,9,21,5,'2020-04-21',NULL,NULL),(8,8,6,8,54,'2020-04-14',NULL,NULL),(9,9,5,10,230,'2020-04-21',NULL,NULL),(10,10,4,23,780,'2020-04-22',NULL,NULL),(11,10,5,4,230,'2020-05-06',NULL,NULL),(12,11,2,5,230,'2020-04-27',NULL,NULL),(13,12,3,3,321,'2020-05-19',NULL,NULL),(14,13,2,43,230,'2020-05-19',NULL,NULL),(15,13,3,7,321,'2020-05-10',NULL,NULL),(16,13,1,8,25,'2020-05-18',NULL,NULL),(17,14,1,6,25,'2020-05-13',NULL,NULL),(18,14,4,8,780,'2020-05-27',0,NULL),(19,15,2,5,230,'2020-07-01',0,NULL),(20,15,2,7,230,NULL,0,NULL),(21,16,1,2,25,NULL,0,NULL),(22,17,2,2,230,NULL,0,NULL),(23,18,1,2,25,NULL,0,NULL),(24,18,4,5,780,NULL,0,NULL),(25,19,2,7,230,NULL,0,NULL),(26,19,2,7,230,NULL,0,NULL),(27,20,1,1,25,NULL,0,NULL),(28,20,5,2,23,'2020-05-05',0,NULL),(29,21,2,5,230,'2020-05-12',0,NULL),(30,21,5,7,23,'2020-05-19',0,NULL),(31,22,2,2,230,'2020-05-06',0,NULL),(32,23,2,24,230,NULL,0,NULL),(33,24,4,32,780,'2020-05-27',0,NULL),(34,24,6,3,54,'2020-05-20',0,NULL),(35,25,3,21,321,NULL,0,NULL),(36,26,7,2,43,'2020-05-27',0,NULL),(37,26,1,1,25,NULL,0,NULL),(38,27,7,3,43,NULL,0,NULL),(39,28,6,2,54,'2020-05-25',10,NULL),(41,29,7,1,43,NULL,0,NULL),(42,30,7,7,43,NULL,0,NULL),(43,31,3,54,321,NULL,0,NULL),(44,31,3,54,321,NULL,0,NULL),(45,32,4,3,780,NULL,0,NULL),(46,33,3,56,321,NULL,0,NULL),(47,33,4,5,780,NULL,0,NULL),(48,33,7,5,43,NULL,0,NULL),(49,33,7,2,43,NULL,0,NULL),(50,34,3,343,321,NULL,0,NULL),(51,34,4,2,780,NULL,0,NULL),(52,35,3,23,321,NULL,0,NULL),(53,36,5,353,23,'2020-08-16',0,NULL),(54,36,3,35,321,'2020-08-13',0,NULL),(55,0,NULL,NULL,NULL,NULL,NULL,NULL),(56,0,NULL,NULL,NULL,NULL,NULL,NULL),(57,37,2,23,230,'2020-05-14',46,NULL),(58,38,4,10,780,'2020-05-02',100,NULL),(59,39,3,20,321,'2020-05-29',400,NULL),(60,39,1,1,100,'2020-05-29',0,NULL),(61,40,1,2,100,'2020-05-02',0,NULL),(62,41,1,1,100,'2020-05-09',0,NULL),(63,42,1,1,100,'2020-05-08',10,NULL),(64,42,2,45,230,'2020-05-22',1035,NULL),(65,43,4,23,780,'2020-05-22',1794,NULL),(66,43,6,3,54,'2020-05-22',4,NULL),(67,44,3,43,321,'2020-05-06',1380,NULL),(68,44,10,34,63,'2020-05-06',428,NULL),(69,44,5,54,23,'2020-05-06',37,NULL),(70,44,10,43,63,'2020-05-06',135,NULL),(71,45,4,34,780,'2020-05-07',0,NULL),(72,45,2,23,230,'2020-05-07',1692,NULL),(73,46,2,34,230,'2020-05-07',0,NULL),(74,46,3,23,321,'2020-05-07',221,NULL),(75,47,4,23,780,'2020-05-07',1794,NULL),(76,48,3,23,321,'2020-05-07',738,NULL),(77,49,2,23,230,'2020-05-07',634,NULL),(78,49,4,23,780,'2020-05-07',2152,NULL),(79,49,1,2,100,'2020-05-07',26,NULL),(80,50,2,34,230,'2020-05-07',782,NULL),(81,51,4,34,780,'2020-05-07',3182,NULL),(82,52,1,54,100,'2020-05-07',1188,NULL),(83,52,4,4,780,'2020-05-07',0,NULL),(84,52,6,54,54,'2020-05-07',87,NULL),(85,53,3,23,321,'2020-05-08',738,NULL),(86,53,7,25,43,'2020-05-08',215,NULL),(87,53,4,43,780,'2020-05-08',0,NULL),(88,53,1,3,100,'2020-05-08',0,NULL),(89,54,3,23,321,'2020-05-08',885,NULL),(90,54,6,2,54,'2020-05-08',21,NULL),(91,54,4,23,780,'2020-05-08',0,NULL),(92,54,3,23,321,'2020-05-08',738,NULL),(93,55,1,35,100,'2020-05-08',1190,NULL),(94,56,3,34,321,'2020-05-08',2728,NULL),(95,57,2,34,230,'2020-05-08',0,NULL),(96,57,1,4,100,'2020-05-08',0,NULL),(97,58,2,45,230,'2020-05-08',0,NULL),(98,59,2,34,230,'2020-05-08',2737,NULL),(99,59,2,23,230,'2020-05-08',634,NULL),(100,59,6,23,54,'2020-05-08',24,NULL),(101,60,3,3543,321,'2020-05-08',0,NULL),(102,61,2,345,230,'2020-05-08',0,NULL),(103,62,3,23,321,'2020-05-08',1698,NULL),(104,62,7,23,43,'2020-05-08',98,NULL),(105,63,3,23,321,'2020-05-08',738,NULL),(106,63,6,23,54,'2020-05-08',0,NULL),(107,64,2,43,230,'2020-05-08',0,NULL),(108,65,5,34,23,'2020-05-09',273,NULL),(109,65,4,54,780,'2020-05-09',0,NULL),(110,65,5,34,23,'2020-05-09',0,NULL),(111,65,6,65,54,'2020-05-09',0,NULL),(112,65,4,45,780,'2020-05-09',8775,NULL),(113,66,1,123,100,'2020-06-16',1230,NULL),(114,66,8,12,432,'2020-06-16',0,NULL),(115,66,10,12,63,'2020-06-16',0,NULL),(116,66,21,15,600,'2020-06-16',0,NULL),(117,66,10,32,63,'2020-06-16',0,NULL),(118,67,4,12,45,'2020-06-16',54,NULL),(119,68,4,2,45,'2020-06-16',0,NULL),(120,69,1,31,100,'2020-06-21',0,NULL),(121,70,1,23,100,'2020-06-21',0,NULL),(122,70,10,25,63,'2020-06-21',0,NULL);

/*Table structure for table `sales_acc` */

DROP TABLE IF EXISTS `sales_acc`;

CREATE TABLE `sales_acc` (
  `sID` int(20) NOT NULL auto_increment,
  `bill` int(20) default NULL,
  `sDate` date default NULL,
  `item` int(20) default NULL,
  `amount` int(20) default NULL,
  `paid` int(20) default NULL,
  `due` int(20) default NULL,
  PRIMARY KEY  (`sID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `sales_acc` */

insert  into `sales_acc`(`sID`,`bill`,`sDate`,`item`,`amount`,`paid`,`due`) values (1,51,'2020-05-07',1,23338,2000,21338),(2,52,'2020-05-07',3,10161,10161,0),(3,53,'2020-05-08',4,41345,40000,1345),(4,53,'2020-05-08',87,574167,574167,0),(5,54,'2020-05-08',4,31170,3000,28170),(6,57,'2020-05-08',2,8220,8220,0),(7,58,'2020-05-08',1,10350,10350,0),(8,59,'2020-05-08',3,10957,10957,0),(9,60,'2020-05-08',1,1137303,1137303,0),(10,62,'2020-05-08',2,6576,6576,0),(11,63,'2020-05-08',2,7887,7887,0),(12,64,'2020-05-08',106,1884922,1884922,0),(13,65,'2020-05-09',5,73246,73246,0),(14,65,'2020-05-09',111,1958168,1958168,0),(15,66,'2020-06-16',5,28026,28026,0),(16,70,'2020-06-21',2,3875,3875,0);

/*Table structure for table `school` */

DROP TABLE IF EXISTS `school`;

CREATE TABLE `school` (
  `Class` varchar(200) NOT NULL,
  `Room` int(20) default NULL,
  PRIMARY KEY  (`Class`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `school` */

insert  into `school`(`Class`,`Room`) values ('four',104),('one',101),('three',103),('two ',102);

/*Table structure for table `student_info` */

DROP TABLE IF EXISTS `student_info`;

CREATE TABLE `student_info` (
  `id` int(12) NOT NULL auto_increment,
  `name` varchar(200) default NULL,
  `class` varchar(200) default NULL,
  `scholl` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `student_info` */

insert  into `student_info`(`id`,`name`,`class`,`scholl`) values (1,'Mizanur Rahman','ten','Iqra'),(2,'Rafi','nine','Educare'),(5,'Ajeet','Maurya','school');

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `name` varchar(200) default NULL,
  `roll` int(20) NOT NULL,
  PRIMARY KEY  (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `test` */

insert  into `test`(`name`,`roll`) values ('rafi',343);

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `insert_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `insert_product` AFTER INSERT ON `product` FOR EACH ROW BEGIN
INSERT INTO `product_pro` VALUES (new.`pid`,new.`pname`,new.`price`,new.`Details`,'insert');
    END */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Product_Update` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `Product_Update` BEFORE UPDATE ON `product` FOR EACH ROW BEGIN
Insert into `product_pro` values (old.`pid`,old.`pname`,old.`price`,old.`Details`,'update');
    END */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_product` BEFORE DELETE ON `product` FOR EACH ROW BEGIN
INSERT INTO `product_pro` VALUES (old.`pid`,old.`pname`,old.`price`,old.`Details`,'Delete');
    END */$$


DELIMITER ;

/* Function  structure for function  `Test` */

/*!50003 DROP FUNCTION IF EXISTS `Test` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `Test`(acc int (20)) RETURNS int(11)
BEGIN
    
	 DECLARE amount int;
	 set amount=0;
	label_test:while amount<=500 Do
	set amount=amount+acc;
	end while label_test;
	return amount;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `DataTest` */

/*!50003 DROP PROCEDURE IF EXISTS  `DataTest` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DataTest`(n Varchar (200),p int (20),d Varchar (200))
BEGIN
INSERT INTO `product`(`pname`,`price`,`Details`) VALUES (n,p,d);
Select *from `product`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Data_Update` */

/*!50003 DROP PROCEDURE IF EXISTS  `Data_Update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Data_Update`(p INT (200), n VARCHAR (200),pr INT (20),d VARCHAR (200))
BEGIN
UPDATE `product` SET `pname`=n, `price`=pr, `Details`=d WHERE `pid`=p;
SELECT *FROM `product`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Delete_Data` */

/*!50003 DROP PROCEDURE IF EXISTS  `Delete_Data` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_Data`(p int (20))
BEGIN
delete from `product` where `pid`=p;
select *from `product`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `In_Out` */

/*!50003 DROP PROCEDURE IF EXISTS  `In_Out` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `In_Out`(IN room_r INT (20),OUT class_c VARCHAR (200))
BEGIN
SELECT `Class` INTO class_c FROM `school` WHERE `Room`=room_r;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Login` */

/*!50003 DROP PROCEDURE IF EXISTS  `Login` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Login`(IN room_r INT (20),OUT class_c VARCHAR (200))
BEGIN
select `name` into  class_c from `log` where `pass`=room_r;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `test12` */

/*!50003 DROP PROCEDURE IF EXISTS  `test12` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `test12`(n varchar (300),p int (200))
BEGIN
insert into `test` values (n,p);
select * from `test`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `testdel` */

/*!50003 DROP PROCEDURE IF EXISTS  `testdel` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `testdel`(r int (20))
BEGIN
delete from `test` where `roll`=r;
select *from `test`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `testUp` */

/*!50003 DROP PROCEDURE IF EXISTS  `testUp` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `testUp`(n varchar (200),r int (20))
BEGIN
update `test` set `name`=n,`roll`=r where `roll`=r;
select *from `test`;
    END */$$
DELIMITER ;

/*Table structure for table `pudata` */

DROP TABLE IF EXISTS `pudata`;

/*!50001 DROP VIEW IF EXISTS `pudata` */;
/*!50001 DROP TABLE IF EXISTS `pudata` */;

/*!50001 CREATE TABLE  `pudata`(
 `pid` int(11) ,
 `pname` varchar(200) ,
 `pQuant` decimal(32,0) ,
 `puPrice` int(11) ,
 `Total` decimal(42,0) 
)*/;

/*Table structure for table `salesdata` */

DROP TABLE IF EXISTS `salesdata`;

/*!50001 DROP VIEW IF EXISTS `salesdata` */;
/*!50001 DROP TABLE IF EXISTS `salesdata` */;

/*!50001 CREATE TABLE  `salesdata`(
 `pid` int(11) ,
 `pname` varchar(200) ,
 `Quantity` decimal(32,0) ,
 `price` int(11) ,
 `Total` decimal(42,0) 
)*/;

/*Table structure for table `stocktest` */

DROP TABLE IF EXISTS `stocktest`;

/*!50001 DROP VIEW IF EXISTS `stocktest` */;
/*!50001 DROP TABLE IF EXISTS `stocktest` */;

/*!50001 CREATE TABLE  `stocktest`(
 `pid` int(11) ,
 `pname` varchar(200) ,
 `pQuant` decimal(32,0) ,
 `Quantity` decimal(32,0) ,
 `Stock` decimal(55,0) 
)*/;

/*View structure for view pudata */

/*!50001 DROP TABLE IF EXISTS `pudata` */;
/*!50001 DROP VIEW IF EXISTS `pudata` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pudata` AS (select `purchase`.`pid` AS `pid`,`product`.`pname` AS `pname`,sum(`purchase`.`puQuantity`) AS `pQuant`,`purchase`.`puPrice` AS `puPrice`,sum((`purchase`.`puQuantity` * `purchase`.`puPrice`)) AS `Total` from (`product` join `purchase` on((`purchase`.`pid` = `product`.`pid`))) group by `purchase`.`pid`) */;

/*View structure for view salesdata */

/*!50001 DROP TABLE IF EXISTS `salesdata` */;
/*!50001 DROP VIEW IF EXISTS `salesdata` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `salesdata` AS (select `sales`.`pid` AS `pid`,`product`.`pname` AS `pname`,sum(`sales`.`sQuantity`) AS `Quantity`,`product`.`price` AS `price`,sum((`sales`.`sQuantity` * `product`.`price`)) AS `Total` from (`product` join `sales` on((`sales`.`pid` = `product`.`pid`))) group by `sales`.`pid`) */;

/*View structure for view stocktest */

/*!50001 DROP TABLE IF EXISTS `stocktest` */;
/*!50001 DROP VIEW IF EXISTS `stocktest` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stocktest` AS (select `pudata`.`pid` AS `pid`,`pudata`.`pname` AS `pname`,`pudata`.`pQuant` AS `pQuant`,`salesdata`.`Quantity` AS `Quantity`,sum((`pudata`.`pQuant` - `salesdata`.`Quantity`)) AS `Stock` from (`pudata` left join `salesdata` on((`pudata`.`pid` = `salesdata`.`pid`))) group by `pudata`.`pid`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
