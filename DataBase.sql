/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - vehicle
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vehicle` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vehicle`;

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `bookingid` int(4) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(20) DEFAULT NULL,
  `veh_no` varchar(10) DEFAULT NULL,
  `booking_date` varchar(20) DEFAULT NULL,
  `booking_time` varchar(20) DEFAULT NULL,
  `excp_duration` varchar(20) DEFAULT NULL,
  `return_date` varchar(20) DEFAULT NULL,
  `return_time` varchar(30) DEFAULT NULL,
  `payble_amt` float DEFAULT NULL,
  `dsc_amt` float DEFAULT NULL,
  `booking_date_time` varchar(50) DEFAULT NULL,
  `return_date_time` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookingid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`bookingid`,`cust_id`,`veh_no`,`booking_date`,`booking_time`,`excp_duration`,`return_date`,`return_time`,`payble_amt`,`dsc_amt`,`booking_date_time`,`return_date_time`) values (1,'8809609198','UP32GX7391','20/10/2023','10PM','10hrs','25/10/2024','12pm',20000,100,'Thu Sep 21 12:17:34 IST 2023','Sat Sep 23 03:12:31 IST 2023'),(2,'8809609198','UP3250','20/12/2024','12 pm','5 hour','25/12/2024','10pm',5000,200,'Thu Apr 18 03:05:53 IST 2024','Thu Apr 18 03:08:10 IST 2024');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `mobile` decimal(10,0) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `aadhar` decimal(12,0) DEFAULT NULL,
  `dlno` varchar(30) DEFAULT NULL,
  `mail` varchar(30) DEFAULT NULL,
  `addr` varchar(30) DEFAULT NULL,
  `alt_mob` decimal(10,0) DEFAULT NULL,
  `ref_name` varchar(30) DEFAULT NULL,
  `ref_num` decimal(10,0) DEFAULT NULL,
  `rel` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`mobile`,`name`,`aadhar`,`dlno`,`mail`,`addr`,`alt_mob`,`ref_name`,`ref_num`,`rel`) values ('8809609198','Sujeet kumar','903920944727','BR0920221119','Sujeetkumar89980@gmail.com','Lucknow','6200967872','Vikram','129','1'),('8840957084','arpita','123456789567','BR09','charpita@gmail.com','lucknow','9984158533','sittu','1234567893','1'),('6393115908','Ravi Paswan','1213141516','GK31','Ravi@123','Gorakhpur','1234567890','Sujeet','123','1'),('8228832801','bajrangi','191817161514','MU10','Bajrangi@123','Bihar','987654321','Ravi','109','1'),('6200967972','Vikram','1312141516','BR0912','vikram@123','Bgs','8809709198','Sujeet','100','1'),('8809609198','Sujeet kumar','903920944727','BR0920221119','Sujeetkumar89980@gmail.com','Lucknow','6200967872','Vikram','129','1');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`password`) values ('admin','admin');

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `vehicle_number` varchar(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `catg` varchar(30) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `own_mob` decimal(10,0) DEFAULT NULL,
  `own_addr` varchar(30) DEFAULT NULL,
  `rent_amt` decimal(10,0) DEFAULT NULL,
  `dsc` varchar(30) DEFAULT NULL,
  `veh_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vehicle` */

insert  into `vehicle`(`vehicle_number`,`name`,`catg`,`color`,`owner`,`own_mob`,`own_addr`,`rent_amt`,`dsc`,`veh_status`) values ('UP32GX7391','Sujeet kumar','Bike','Blue','Sujeet kumar','8809609198','Lucknow','500','20%','1'),('UP3250','BMW','Car','blue','Vikram','6200967872','Lko','5000','10%','1'),('UP3252','Alto','car','White','Bajrangi','8228832801','Bihar','200','2000','1'),('UP3255','Verna','Car','black','Ravi','6393115908','Gorakhpur','5000','1000','1'),('BR091212','Hondacity','car','blue','sujeet','8809609198','lko','500','10%','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
