/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.7.19-log : Database - store3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`store3` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `store3`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(300) NOT NULL,
  `userpass` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `codeAuthority` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `codeAuthority` (`codeAuthority`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`id`,`username`,`userpass`,`email`,`codeAuthority`) values (1,'admin','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','administrator@gmail.com',''),(2,'admin1','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','administrator@gmail.com',''),(3,'admin2','6460662e217c7a9f899208dd70a2c28abdea42f128666a9b78e6c0c064846493','administrator@gmail.com',''),(4,'hello','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','adfas@asd',''),(5,'hi','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','asdf@as.com',''),(6,'admin7','481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5','admin7@gmail.com',''),(9,'hoang3','8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92','hoangcool96@gmail.com','');

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `codeAuthority` varchar(200) NOT NULL,
  `nameAuthority` varchar(200) NOT NULL,
  PRIMARY KEY (`codeAuthority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `authority` */

insert  into `authority`(`codeAuthority`,`nameAuthority`) values ('Ad','Admin'),('Ge','Guest');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `codeCompany` varchar(200) NOT NULL,
  `nameCompany` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codeCompany`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`codeCompany`,`nameCompany`,`description`) values ('cc0001','Coca-Cola',NULL),('kfc0001','KFC',NULL),('lt0001',' Lotteria ',NULL),('mc0001','McDonald’s',NULL),('ps0001','PepsiCo',NULL),('tn0001','Trung Nguyên',NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `fullname` varchar(400) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mobile` char(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`id`,`email`,`fullname`,`address`,`mobile`) values (1,'administrator@gmail.com','Nguyễn Văn A','Hà Nội','0123654123'),(2,'administrator@gmail.com','Nguyễn Văn B','Hà Nội','0123657896'),(3,'administrator@gmail.com','Nguyễn Văn C','Hà Nội','0123658521'),(4,'adfas@asd','asfas','asfa','1042'),(5,'asdf@as.com','asfda','asdf','12042'),(6,'admin7@gmail.com','âf','asfda','1242364584'),(9,'hoangcool96@gmail.com','Trần Đăng Hoàng','Ninh Bình','964696150');

/*Table structure for table `orderdetail` */

DROP TABLE IF EXISTS `orderdetail`;

CREATE TABLE `orderdetail` (
  `codeOrderDetail` int(11) NOT NULL AUTO_INCREMENT,
  `codeOrder` int(11) NOT NULL,
  `codeProduct` int(11) NOT NULL,
  `nameProduct` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_total` int(11) NOT NULL,
  PRIMARY KEY (`codeOrderDetail`),
  KEY `codeOrder` (`codeOrder`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`codeOrder`) REFERENCES `orders` (`codeOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `orderdetail` */

insert  into `orderdetail`(`codeOrderDetail`,`codeOrder`,`codeProduct`,`nameProduct`,`quantity`,`price`,`price_total`) values (1,1,12,'Gà rán KFC',1,40000,40000),(2,1,9,'Bánh mì V+',1,35000,35000),(3,2,12,'Gà rán KFC',1,40000,40000),(4,2,9,'Bánh mì V+',1,35000,35000),(5,3,11,'McDonald\'s',1,100000,100000),(6,3,10,'Phở 10 Lý Quốc Sư',1,120000,120000),(7,4,11,'McDonald\'s',1,100000,100000),(8,4,3,'Bún hải sản',1,35000,35000),(9,5,10,'Phở 10 Lý Quốc Sư',1,120000,120000),(10,6,2,'Combo ăn vặt 1',1,20000,20000),(11,6,3,'Bún hải sản',1,35000,35000),(12,7,12,'Gà rán KFC',1,40000,40000),(13,8,12,'Gà rán KFC',1,40000,40000),(14,8,11,'McDonald\'s',1,100000,100000);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `codeOrder` int(11) NOT NULL AUTO_INCREMENT,
  `dateOrder` datetime DEFAULT NULL,
  `receiveddate` datetime DEFAULT NULL,
  `fullname` varchar(450) NOT NULL,
  `address` varchar(450) NOT NULL,
  `email` char(200) NOT NULL,
  `price_order` int(11) NOT NULL,
  `confirm` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`codeOrder`),
  KEY `id` (`id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`codeOrder`,`dateOrder`,`receiveddate`,`fullname`,`address`,`email`,`price_order`,`confirm`,`id`) values (1,'2018-07-31 00:00:00','2018-08-07 00:00:00','asfas','asfa','adfas@asd',75000,NULL,4),(2,'2018-07-31 00:00:00','2018-08-07 00:00:00','asfas','asfa','adfas@asd',75000,NULL,4),(3,'2018-07-31 00:00:00','2018-08-07 00:00:00','asfas','asfa','adfas@asd',220000,NULL,4),(4,'2018-08-06 00:00:00','2018-08-13 00:00:00','Nguyễn Văn A','Hà Nội','administrator@gmail.com',135000,NULL,1),(5,'2018-08-06 00:00:00','2018-08-13 00:00:00','asfas','asfa','adfas@asd',120000,NULL,4),(6,'2018-08-06 00:00:00','2018-08-13 00:00:00','Nguyễn Văn A','Hà Nội','administrator@gmail.com',55000,NULL,1),(7,'2018-08-26 00:00:00','2018-09-02 00:00:00','Trần Đăng Hoàng','Hà Nội','hoangcool96@gmail.com',40000,NULL,9),(8,'2018-08-26 00:00:00','2018-09-02 00:00:00','Trần Đăng Hoàng','Hà Nội','hoangcool96@gmail.com',140000,NULL,9);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `codeProduct` int(11) NOT NULL AUTO_INCREMENT,
  `nameProduct` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `numberOfpro` int(11) NOT NULL,
  `image` varchar(300) NOT NULL,
  `codeSP` varchar(200) NOT NULL,
  `codeCompany` varchar(200) NOT NULL,
  PRIMARY KEY (`codeProduct`),
  KEY `codeSP` (`codeSP`),
  KEY `codeCompany` (`codeCompany`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`codeSP`) REFERENCES `producttype` (`codeSP`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`codeCompany`) REFERENCES `company` (`codeCompany`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`codeProduct`,`nameProduct`,`price`,`numberOfpro`,`image`,`codeSP`,`codeCompany`) values (2,'Combo ăn vặt 1',20000,20,'Combo ăn vặt 1.jpg','CB001','kfc0001'),(3,'Bún hải sản',35000,20,'Bún hải sản.jpg','BU001','tn0001'),(4,'Bún ngan Bà Hằng',30000,20,'Bún ngan.jpg','BU001','tn0001'),(5,'Bún đậu mẹt',40000,20,'Bún đậu mẹt.jpg','BU001','tn0001'),(6,'Master Tea',50000,20,'Master Tea.jpg','TE001','lt0001'),(7,'Chè thạch găng',15000,20,'Chè thạch găng.jpg','TE001','mc0001'),(8,'Mr.Pizza - Korea No.1',80000,20,'Mr.Pizza - Korea No.1.jpg','BA001','cc0001'),(9,'Bánh mì V+',35000,20,'Bánh mì V+.jpg','BA001','ps0001'),(10,'Phở 10 Lý Quốc Sư',120000,20,'Phở Lý Quốc Sư.jpg','BU001','lt0001'),(11,'McDonald\'s',100000,20,'McDonald\'s.jpg','CB001','mc0001'),(12,'Gà rán KFC',40000,20,'Gà rán KFC.jpg','CB001','kfc0001');

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `codeSP` varchar(200) NOT NULL,
  `nameSP` varchar(200) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`codeSP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `producttype` */

insert  into `producttype`(`codeSP`,`nameSP`,`description`) values ('BA001','Bánh',NULL),('BU001','Bún',NULL),('CB001','Combo',NULL),('ST01','Sinh Tố',NULL),('TE001','Trà',NULL);

/*Table structure for table `wishlist` */

DROP TABLE IF EXISTS `wishlist`;

CREATE TABLE `wishlist` (
  `codeWishList` int(11) NOT NULL AUTO_INCREMENT,
  `dateWishList` datetime DEFAULT NULL,
  `receiveddate` datetime DEFAULT NULL,
  `fullname` varchar(450) NOT NULL,
  `address` varchar(450) NOT NULL,
  `email` char(200) NOT NULL,
  `price_wishlist` int(11) NOT NULL,
  `confirm` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `statuss` int(11) DEFAULT '0',
  PRIMARY KEY (`codeWishList`),
  KEY `id` (`id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wishlist` */

/*Table structure for table `wishlistdetail` */

DROP TABLE IF EXISTS `wishlistdetail`;

CREATE TABLE `wishlistdetail` (
  `codeWishListDetail` int(11) NOT NULL AUTO_INCREMENT,
  `codeWishList` int(11) NOT NULL,
  `codeProduct` int(11) NOT NULL,
  `nameProduct` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_total` int(11) NOT NULL,
  PRIMARY KEY (`codeWishListDetail`),
  KEY `codeWishList` (`codeWishList`),
  CONSTRAINT `wishlistdetail_ibfk_1` FOREIGN KEY (`codeWishList`) REFERENCES `wishlist` (`codeWishList`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wishlistdetail` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
