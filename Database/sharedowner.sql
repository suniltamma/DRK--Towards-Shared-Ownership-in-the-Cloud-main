/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.16-nt : Database - cloudshare
*********************************************************************
Server version : 5.0.16-nt
*/


create database if not exists `cloudshare`;

USE `cloudshare`;

/*Table structure for table `cloudservice` */

DROP TABLE IF EXISTS `cloudservice`;

CREATE TABLE `cloudservice` (
  `sid` int(10) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `name1` varchar(100) default NULL,
  `ram` varchar(100) default NULL,
  `storage` int(100) default NULL,
  `support` varchar(100) default NULL,
  `sts` varchar(20) default 'no',
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloudservice` */

insert into `cloudservice` values 
(3,'6342594','alex','2500',2536024,'24h','no'),
(4,'6408616','mounika','1024',1037091,'24 hours','no'),
(9,'4260678','meghana','20480',655360000,'25','no'),
(10,'6573535','sravani','2048',65524012,'24','no');

/*Table structure for table `filedetails` */

DROP TABLE IF EXISTS `filedetails`;

CREATE TABLE `filedetails` (
  `fid` int(100) NOT NULL auto_increment,
  `id` varchar(10) default NULL,
  `name` varchar(50) default NULL,
  `fname` varchar(50) default NULL,
  `file` longblob,
  `size` bigint(20) default NULL,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filedetails` */

insert into `filedetails` values 
(8,'11','sravani','smdatatwo.txt','This is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next yearThis is a sample data to test my project in the cloud so that i can show the execution process in the next year',11988);

/*Table structure for table `oreq` */

DROP TABLE IF EXISTS `oreq`;

CREATE TABLE `oreq` (
  `sid` int(100) NOT NULL auto_increment,
  `fid` int(100) default NULL,
  `id` int(100) default NULL,
  `name` varchar(100) default NULL,
  `reqowner` varchar(100) default NULL,
  `fname` varchar(100) default NULL,
  `skey` varchar(100) default NULL,
  `readperm` varchar(100) default 'no',
  `writeperm` varchar(100) default 'no',
  `deleteperm` varchar(100) default 'no',
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `oreq` */

insert into `oreq` values 
(5,6,3,'alex','sravani','smdatatwo.txt','7495872','yes','yes','no'),
(7,8,11,'sravani','meghana','smdatatwo.txt','0312089','yes','yes','yes');

/*Table structure for table `ownerreg` */

DROP TABLE IF EXISTS `ownerreg`;

CREATE TABLE `ownerreg` (
  `ownerId` bigint(10) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `password` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `sharedkey` varchar(100) default NULL,
  PRIMARY KEY  (`ownerId`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ownerreg` */

insert into `ownerreg` values 
(3,'alex','alex','lx160cm@gmail.com','Male','9849098490','Telangana','6342594'),
(5,'mounika','0123','mounika@gmail.com','female','9398141453','Telangana','6408616'),
(10,'meghana','meghana','meghana@gmail.com','female','9852012254','Telangana','4260678'),
(11,'sravani','sravani','sravya.chandragiri@gmail.com','female','9849012345','TS','6573535');

/*Table structure for table `reqspace` */

DROP TABLE IF EXISTS `reqspace`;

CREATE TABLE `reqspace` (
  `rid` int(100) NOT NULL auto_increment,
  `rowner` varchar(100) default NULL,
  `raowner` varchar(100) default NULL,
  `requestedspace` bigint(200) default NULL,
  `rkey` varchar(100) default NULL,
  `requestedStatus` varchar(100) default 'no',
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reqspace` */

insert into `reqspace` values 
(5,'6342594','mounika',1000,'6342594','yes');

/*Table structure for table `userfreq` */

DROP TABLE IF EXISTS `userfreq`;

CREATE TABLE `userfreq` (
  `ofrid` int(10) NOT NULL auto_increment,
  `fid` int(100) default NULL,
  `fname` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `ruser` varchar(100) default NULL,
  `status` varchar(100) default NULL,
  PRIMARY KEY  (`ofrid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userfreq` */

/*Table structure for table `userreg` */

DROP TABLE IF EXISTS `userreg`;

CREATE TABLE `userreg` (
  `userId` bigint(10) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `password` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `gender` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `sharedkey` varchar(100) default NULL,
  `ownername` varchar(100) default NULL,
  PRIMARY KEY  (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreg` */

insert into `userreg` values 
(2,'junaid','junaid','ramu.datapoint@gmail.com','male','9874012345','Telangana','no','alex');
