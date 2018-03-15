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
-- Create schema persons
--

CREATE DATABASE IF NOT EXISTS persons;
USE persons;

--
-- Definition of table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `name` varchar(45) default NULL,
  `position` varchar(45) default NULL,
  `salary` int(10) unsigned default NULL,
  `office` varchar(45) default NULL,
  `phone` varchar(45) default NULL,
  `startDate` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` (`name`,`position`,`salary`,`office`,`phone`,`startDate`) VALUES 
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Manish Jain','Developer',12000,'Indrapuri','9893075987','2006-01-01'),
 ('Jitendra Raghuwanshi','Developer',12000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Sushil Patel','Developer',12000,'Indrapuri','9893068644','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Ajay Raisinghani','Developer',12000,'M.P.Nagar','9893068644','2006-01-01'),
 ('Manish Jain','Developer',12000,'Indrapuri','9893075987','2006-01-01'),
 ('Manish Jain','Developer',12000,'Indrapuri','9893075987','2006-01-01'),
 ('Manish Jain','Developer',12000,'Indrapuri','9893075987','2006-01-01'),
 ('Manish Jain','Developer',12000,'Indrapuri','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01'),
 ('Rohit Ahuja','Director',10000,'M.P.Nagar','9893075987','2006-01-01');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
