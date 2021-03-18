/*
SQLyog - Free MySQL GUI v5.17
Host - 5.5.27 : Database - inv
*********************************************************************
Server version : 5.5.27
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `inv`;

USE `inv`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `aditem` */

DROP TABLE IF EXISTS `aditem`;

CREATE TABLE `aditem` (
  `Item_name` varchar(20) DEFAULT NULL,
  `Item_code` varchar(20) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `purchase_price` varchar(20) DEFAULT NULL,
  `closing_stock` varchar(20) DEFAULT NULL,
  `Reorder_value` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aditem` */

insert into `aditem` (`Item_name`,`Item_code`,`mfg_date`,`exp_date`,`company`,`location`,`batch`,`purchase_price`,`closing_stock`,`Reorder_value`) values ('dyper','201','2019-01-01','2019-09-10','cipla','row3','s8','90','20','60');
insert into `aditem` (`Item_name`,`Item_code`,`mfg_date`,`exp_date`,`company`,`location`,`batch`,`purchase_price`,`closing_stock`,`Reorder_value`) values ('dyper','201','2019-01-01','2019-09-10','cipla','row3','s8','90','20','60');
insert into `aditem` (`Item_name`,`Item_code`,`mfg_date`,`exp_date`,`company`,`location`,`batch`,`purchase_price`,`closing_stock`,`Reorder_value`) values ('dyper','201','2019-01-01','2019-09-10','cipla','row3','s8','90','20','60');
insert into `aditem` (`Item_name`,`Item_code`,`mfg_date`,`exp_date`,`company`,`location`,`batch`,`purchase_price`,`closing_stock`,`Reorder_value`) values ('srg','111','2019-02-02','2019-05-05','dfge','srgsg','fsgsgr','22','55','88');
insert into `aditem` (`Item_name`,`Item_code`,`mfg_date`,`exp_date`,`company`,`location`,`batch`,`purchase_price`,`closing_stock`,`Reorder_value`) values ('gdhg','111','2019-05-05','2019-02-06','fvederet','ethbr','etb','22','55','66');
insert into `aditem` (`Item_name`,`Item_code`,`mfg_date`,`exp_date`,`company`,`location`,`batch`,`purchase_price`,`closing_stock`,`Reorder_value`) values ('ukegdc','33','2019-05-05','2019-02-03','rgtr','ryhry','ryhrtju','11','22','33');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert into `login` (`username`,`password`,`role`) values ('aura123','1234','admin');
insert into `login` (`username`,`password`,`role`) values ('virus123','4321','admin');
insert into `login` (`username`,`password`,`role`) values ('utk999','8893','manager');

/*Table structure for table `newbill` */

DROP TABLE IF EXISTS `newbill`;

CREATE TABLE `newbill` (
  `Amount` int(10) DEFAULT NULL,
  `Customer_name` varchar(20) DEFAULT NULL,
  `Item_name` varchar(20) DEFAULT NULL,
  `Batch` varchar(20) DEFAULT NULL,
  `Company` varchar(20) DEFAULT NULL,
  `Bill_no` varchar(20) DEFAULT NULL,
  `Delivery_add` varchar(50) DEFAULT NULL,
  `Contact_no` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Item_code` varchar(30) DEFAULT NULL,
  `Exp_date` date DEFAULT NULL,
  `Payment_method` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `newbill` */

insert into `newbill` (`Amount`,`Customer_name`,`Item_name`,`Batch`,`Company`,`Bill_no`,`Delivery_add`,`Contact_no`,`Date`,`Item_code`,`Exp_date`,`Payment_method`) values (50,'yash','cotton','d2','himalaya','110','kota','96729402','2019-01-01','311','2019-06-07','other');
insert into `newbill` (`Amount`,`Customer_name`,`Item_name`,`Batch`,`Company`,`Bill_no`,`Delivery_add`,`Contact_no`,`Date`,`Item_code`,`Exp_date`,`Payment_method`) values (50,'yash','cotton','d2','himalaya','110','kota','96729402','2019-01-01','311','2019-06-07','other');

/*Table structure for table `newcust` */

DROP TABLE IF EXISTS `newcust`;

CREATE TABLE `newcust` (
  `Customer_name` varchar(200) DEFAULT NULL,
  `Mobile_no` varchar(200) DEFAULT NULL,
  `Phone_no` varchar(200) DEFAULT NULL,
  `Email_id` varchar(200) DEFAULT NULL,
  `Fax` varchar(200) DEFAULT NULL,
  `Delivery_Add` varchar(200) DEFAULT NULL,
  `Transporter` varchar(200) DEFAULT NULL,
  `Bank_acc` varchar(200) DEFAULT NULL,
  `Ifsc` varchar(200) DEFAULT NULL,
  `Referance` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `newcust` */

insert into `newcust` (`Customer_name`,`Mobile_no`,`Phone_no`,`Email_id`,`Fax`,`Delivery_Add`,`Transporter`,`Bank_acc`,`Ifsc`,`Referance`) values ('yash','9672940694','2405647','ronak@gamil.com','2454547','kota talwandi','shivaji','55562532','SBI8893','new');
insert into `newcust` (`Customer_name`,`Mobile_no`,`Phone_no`,`Email_id`,`Fax`,`Delivery_Add`,`Transporter`,`Bank_acc`,`Ifsc`,`Referance`) values ('yash','9672940694','2405647','ronak@gamil.com','2454547','kota talwandi','shivaji','55562532','SBI8893','new');

/*Table structure for table `vendnew` */

DROP TABLE IF EXISTS `vendnew`;

CREATE TABLE `vendnew` (
  `Date` date DEFAULT NULL,
  `Vendor_name` varchar(20) DEFAULT NULL,
  `Contact_no` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Item_code` varchar(20) DEFAULT NULL,
  `Item_rate` varchar(20) DEFAULT NULL,
  `Company_name` varchar(30) DEFAULT NULL,
  `Amount_due` varchar(30) DEFAULT NULL,
  `Pay_mode` varchar(20) DEFAULT NULL,
  `Bill_no` varchar(20) DEFAULT NULL,
  `Acc_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vendnew` */

insert into `vendnew` (`Date`,`Vendor_name`,`Contact_no`,`Email`,`Fax`,`Address`,`Item_code`,`Item_rate`,`Company_name`,`Amount_due`,`Pay_mode`,`Bill_no`,`Acc_no`) values ('2019-05-05','Dawaghar','12434','Dawa@gmail.com','263585','Talwandi,kota','200','400','flamingo','0','cash','1001','8965');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
