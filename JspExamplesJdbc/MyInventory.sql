-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.13-rc-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema myinventory
--

CREATE DATABASE IF NOT EXISTS myinventory;
USE myinventory;

--
-- Definition of table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `categoryId` int(10) unsigned NOT NULL auto_increment,
  `categoryName` varchar(45) NOT NULL,
  `categoryDetails` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`categoryId`,`categoryName`,`categoryDetails`) VALUES 
 (1,'electronics','laptop'),
 (2,'mobiles','lapy'),
 (3,'garments','lappy'),
 (8,'category 1','category details one');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


--
-- Definition of table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerId` int(10) unsigned NOT NULL auto_increment,
  `customerName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY  USING BTREE (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customerId`,`customerName`,`email`,`dob`) VALUES 
 (1,'rohit','rohit@gmail.com','2014-12-12'),
 (2,'kami','kami@abc.com','1994-03-12'),
 (3,'semi','semi@gmail.com','1994-04-21'),
 (4,'Rohit Ahuja','rohit@gmail.com','2016-02-09'),
 (5,'Aman','aman@gmail.com','2016-09-08');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


--
-- Definition of table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `odId` int(10) unsigned NOT NULL auto_increment,
  `orderId` int(10) unsigned NOT NULL,
  `productId` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY  USING BTREE (`odId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` (`odId`,`orderId`,`productId`,`quantity`,`price`) VALUES 
 (1,4,1,5,50000),
 (2,0,0,0,0),
 (4,2,1,4,50000),
 (5,2,3,4,500),
 (6,2,3,4,500),
 (7,2,3,4,500),
 (8,2,3,4,500),
 (9,2,3,4,500),
 (10,13,3,4,500),
 (11,13,3,4,500),
 (12,13,3,4,500),
 (13,13,3,4,500),
 (14,13,3,4,500),
 (15,14,10,2,8000),
 (16,14,1,1,5000),
 (17,15,10,2,8000),
 (18,15,1,1,5000);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;


--
-- Definition of table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(10) unsigned NOT NULL auto_increment,
  `orderDate` date NOT NULL,
  `customerId` int(10) unsigned NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY  USING BTREE (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`orderId`,`orderDate`,`customerId`,`amount`) VALUES 
 (1,'2015-10-23',1,5000),
 (2,'2015-10-23',2,0),
 (3,'2015-10-23',3,0),
 (4,'2015-10-23',4,0),
 (5,'2015-10-23',1,0),
 (6,'2015-10-23',1,500),
 (7,'2015-10-23',4,500),
 (8,'2015-10-23',5,500),
 (9,'2015-10-23',6,500),
 (10,'2015-10-27',7,500),
 (11,'2015-10-27',8,15500),
 (12,'2015-10-27',9,15500),
 (13,'2015-10-27',10,15500),
 (14,'2016-09-02',1,21000),
 (15,'2016-09-02',1,21000);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


--
-- Definition of table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `productId` int(10) unsigned NOT NULL auto_increment,
  `productName` varchar(45) NOT NULL,
  `productPrice` float NOT NULL,
  `stockInHand` int(10) unsigned NOT NULL,
  `reorderLevel` int(10) unsigned NOT NULL,
  `categoryId` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`productId`,`productName`,`productPrice`,`stockInHand`,`reorderLevel`,`categoryId`) VALUES 
 (1,'mobile',5000,15,5,3),
 (2,'tshirt',950,20,1,1),
 (3,'skirt',550,11,3,1),
 (4,'shirt',990,51,6,1),
 (5,'suit',1500,30,10,1),
 (6,'frize',250000,51,5,2),
 (7,'washing machine',200000,52,5,2),
 (8,'Television',280000,26,6,2),
 (9,'air condistioner',7880,35,5,2),
 (10,'microwave',8000,51,5,2),
 (11,'samsung',15000,51,5,3),
 (12,'nokia',10000,45,5,3),
 (13,'micromax',5000,35,5,3),
 (14,'motorolla',9000,45,5,3),
 (16,'sumsung',2000,13,2,3),
 (17,'sumsung',2000,59,2,3),
 (18,'sumsung',2000,16,2,3),
 (19,'sumsung',2000,15,2,3),
 (20,'sumsung',2000,19,2,3),
 (21,'sumsung',2000,13,2,3),
 (22,'nokia',2000,55,2,3),
 (23,'nokia',2000,81,2,3),
 (24,'nokia',2000,1,2,401),
 (25,'nokia',2000,1,2,401),
 (26,'nokia',2000,1,2,401),
 (27,'nokia',2000,1,2,401),
 (28,'nokia',2000,1,2,401);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
