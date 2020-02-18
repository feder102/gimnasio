-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: dbgym
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (12,7,'Funcional pesado',3,1,'2019-12-03');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (7,'Pase libre'),(8,'Tres veces por semana'),(9,'dos veces por semana');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule`
--

DROP TABLE IF EXISTS `class_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  `assign_staff_mem` int(11) DEFAULT NULL,
  `assistant_staff_member` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `days` varchar(200) DEFAULT NULL,
  `start_time` varchar(30) DEFAULT NULL,
  `end_time` varchar(30) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_schedule`
--

LOCK TABLES `class_schedule` WRITE;
/*!40000 ALTER TABLE `class_schedule` DISABLE KEYS */;
INSERT INTO `class_schedule` VALUES (5,'Pilates',2,0,'Old location','[\'Sunday\']','12:00:PM','3:15:PM',1,'2016-08-22'),(6,'Zumba',2,NULL,'New Location','[\"Tuesday\",\"Thursday\"]','8:30:PM','10:30:PM',1,'2016-08-22'),(8,'Funcional',2,NULL,'-','[\"Monday\",\"Wednesday\",\"Friday\"]','8:00:PM','9:00:PM',1,'2019-12-03'),(9,'Hit',2,3,'Parque cerrado','[\"Tuesday\",\"Thursday\"]','10:00:PM','11:00:PM',1,'2019-12-03');
/*!40000 ALTER TABLE `class_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedule_list`
--

DROP TABLE IF EXISTS `class_schedule_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_schedule_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_schedule_list`
--

LOCK TABLES `class_schedule_list` WRITE;
/*!40000 ALTER TABLE `class_schedule_list` DISABLE KEYS */;
INSERT INTO `class_schedule_list` VALUES (1,8,'[\"Monday\",\"Wednesday\",\"Friday\"]','7:00:PM','8:00:PM'),(2,8,'[\"Monday\",\"Wednesday\",\"Friday\"]','8:00:PM','9:00:PM'),(3,9,'[\"Tuesday\",\"Thursday\"]','10:00:PM','11:00:PM');
/*!40000 ALTER TABLE `class_schedule_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_setting`
--

DROP TABLE IF EXISTS `general_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `start_year` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `office_number` varchar(20) DEFAULT NULL,
  `country` text,
  `email` varchar(100) DEFAULT NULL,
  `date_format` varchar(15) DEFAULT NULL,
  `calendar_lang` text,
  `gym_logo` varchar(200) DEFAULT NULL,
  `cover_image` varchar(200) DEFAULT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `chest` varchar(100) DEFAULT NULL,
  `waist` varchar(100) DEFAULT NULL,
  `thing` varchar(100) DEFAULT NULL,
  `arms` varchar(100) DEFAULT NULL,
  `fat` varchar(100) DEFAULT NULL,
  `member_can_view_other` int(11) DEFAULT NULL,
  `staff_can_view_own_member` int(11) DEFAULT NULL,
  `enable_sandbox` int(11) DEFAULT NULL,
  `paypal_email` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `enable_alert` int(11) DEFAULT NULL,
  `reminder_days` varchar(100) DEFAULT NULL,
  `reminder_message` varchar(255) DEFAULT NULL,
  `enable_message` int(11) DEFAULT NULL,
  `left_header` varchar(100) DEFAULT NULL,
  `footer` varchar(100) DEFAULT NULL,
  `system_installed` int(11) DEFAULT NULL,
  `enable_rtl` int(11) DEFAULT '0',
  `datepicker_lang` text,
  `time_zone` varchar(20) NOT NULL DEFAULT 'UTC',
  `system_version` text,
  `sys_language` varchar(20) NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_setting`
--

LOCK TABLES `general_setting` WRITE;
/*!40000 ALTER TABLE `general_setting` DISABLE KEYS */;
INSERT INTO `general_setting` VALUES (1,'MAS Fitness','2019','address','8899665544','ar','nayrevil@gmail.com','d/m/Y','es','1575550766_769308.png','cover-image.png','KG','Centimeter','Inches','Inches','Inches','Inches','Percentage',0,1,0,'your_id@paypal.com','ARS',1,'5','Hello GYM_MEMBERNAME,\r\n      Your Membership  GYM_MEMBERSHIP  started at GYM_STARTDATE and it will expire on GYM_ENDDATE.\r\nThank You.',1,'MAS Fitness','Copyright © 2019-2020. All rights reserved.',1,0,'es','UTC','12','es');
/*!40000 ALTER TABLE `general_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_accessright`
--

DROP TABLE IF EXISTS `gym_accessright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_accessright` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` text,
  `action` text,
  `menu` text,
  `menu_icon` text,
  `menu_title` text,
  `member` int(11) DEFAULT NULL,
  `staff_member` int(11) DEFAULT NULL,
  `accountant` int(11) DEFAULT NULL,
  `page_link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_accessright`
--

LOCK TABLES `gym_accessright` WRITE;
/*!40000 ALTER TABLE `gym_accessright` DISABLE KEYS */;
INSERT INTO `gym_accessright` VALUES (1,'StaffMembers','','staff_member','staff-member.png','Staff Member',0,1,1,'/staff-members/staff-list'),(2,'Membership','','membership','membership-type.png','Membership Type',1,1,0,'/membership/membership-list'),(3,'GymGroup','','group','group.png','Group',0,1,0,'/gym-group/group-list'),(4,'GymMember','','member','member.png','Member',1,1,1,'/gym-member/member-list'),(5,'Activity','','activity','activity.png','Activity',1,1,0,'/activity/activity-list'),(6,'ClassSchedule','','class-schedule','class-schedule.png','Class Schedule',1,1,0,'/class-schedule/class-list'),(7,'GymAttendance','','attendance','attendance.png','Attendance',0,1,0,'/gym-attendance/attendance'),(8,'GymAssignWorkout','','assign-workout','assigne-workout.png','Assigned Workouts',1,1,0,'/gym-assign-workout/workout-log'),(9,'GymDailyWorkout','','workouts','workout.png','Workouts',1,1,0,'/gym-daily-workout/workout-list'),(10,'GymAccountant','','accountant','accountant.png','Accountant',0,1,1,'/gym-accountant/accountant-list'),(11,'MembershipPayment','','membership_payment','fee.png','Fee Payment',1,0,1,'/membership-payment/payment-list'),(12,'MembershipPayment','','income','payment.png','Income',0,0,1,'/membership-payment/income-list'),(13,'MembershipPayment','','expense','payment.png','Expense',0,0,1,'/membership-payment/expense-list'),(14,'GymProduct','','product','products.png','Product',0,1,1,'/gym-product/product-list'),(15,'GymStore','','store','store.png','Store',0,1,1,'/gym-store/sell-record'),(16,'GymNewsletter','','news_letter','newsletter.png','Newsletter',0,1,0,'/gym-newsletter/setting'),(17,'GymMessage','','message','message.png','Message',1,1,1,'/gym-message/compose-message'),(18,'GymNotice','','notice','notice.png','Notice',1,1,1,'/gym-notice/notice-list'),(19,'Report','','report','report.png','Report',0,1,1,'/reports/membership-report'),(20,'GymNutrition','','nutrition','nutrition-schedule.png','Nutrition Schedule',0,1,0,'/gym-nutrition/nutrition-list'),(21,'GymReservation','','reservation','reservation.png','Reservation',1,1,1,'/gym-reservation/reservation-list'),(22,'GymProfile','','account','account.png','Account',1,1,1,'/GymProfile/view_profile'),(23,'GymSubscriptionHistory','','subscription_history','subscription_history.png','Subscription History',1,0,0,'/GymSubscriptionHistory/');
/*!40000 ALTER TABLE `gym_accessright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_assign_workout`
--

DROP TABLE IF EXISTS `gym_assign_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_assign_workout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `description` text,
  `direct_assign` tinyint(1) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_assign_workout`
--

LOCK TABLES `gym_assign_workout` WRITE;
/*!40000 ALTER TABLE `gym_assign_workout` DISABLE KEYS */;
INSERT INTO `gym_assign_workout` VALUES (1,5,'2019-12-03','2019-12-10',1,'Un atleta de punta a punta',0,'2019-12-03',1),(2,5,'2019-12-02','2019-12-16',2,'',0,'2019-12-03',1);
/*!40000 ALTER TABLE `gym_assign_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_attendance`
--

DROP TABLE IF EXISTS `gym_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `attendance_by` int(11) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_attendance`
--

LOCK TABLES `gym_attendance` WRITE;
/*!40000 ALTER TABLE `gym_attendance` DISABLE KEYS */;
INSERT INTO `gym_attendance` VALUES (1,5,8,'2019-12-04','Present',1,'member'),(2,7,8,'2019-12-04','Present',1,'member'),(3,3,NULL,'2019-12-01','Present',1,'staff_member');
/*!40000 ALTER TABLE `gym_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_daily_workout`
--

DROP TABLE IF EXISTS `gym_daily_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_daily_workout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workout_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `record_date` date DEFAULT NULL,
  `result_measurment` varchar(50) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `time_of_workout` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `note` text,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_daily_workout`
--

LOCK TABLES `gym_daily_workout` WRITE;
/*!40000 ALTER TABLE `gym_daily_workout` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_daily_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_event_place`
--

DROP TABLE IF EXISTS `gym_event_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_event_place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_event_place`
--

LOCK TABLES `gym_event_place` WRITE;
/*!40000 ALTER TABLE `gym_event_place` DISABLE KEYS */;
INSERT INTO `gym_event_place` VALUES (1,'Salon 1',NULL),(2,'Salon 2',NULL);
/*!40000 ALTER TABLE `gym_event_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_group`
--

DROP TABLE IF EXISTS `gym_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_group`
--

LOCK TABLES `gym_group` WRITE;
/*!40000 ALTER TABLE `gym_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_income_expense`
--

DROP TABLE IF EXISTS `gym_income_expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_income_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_type` varchar(100) DEFAULT NULL,
  `invoice_label` varchar(100) DEFAULT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `entry` text,
  `payment_status` varchar(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_income_expense`
--

LOCK TABLES `gym_income_expense` WRITE;
/*!40000 ALTER TABLE `gym_income_expense` DISABLE KEYS */;
INSERT INTO `gym_income_expense` VALUES (1,'income','entrego','5','[{\"entry\":\"Lo dejo arriba de la mesa\",\"amount\":\"200\"}]','Part Paid',200,1,'2019-12-02'),(2,'expense',NULL,'Compro gatorade','[{\"entry\":\"Compro antes de la clase\",\"amount\":\"100\"}]','Unpaid',100,1,'2019-12-01'),(3,'expense',NULL,'Coca cola','[{\"entry\":\"Coca 2ltrs\",\"amount\":\"2000\"},{\"entry\":\"Coca 1Ltrs\",\"amount\":\"1000\"}]','Paid',3000,1,'2019-12-04');
/*!40000 ALTER TABLE `gym_income_expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_interest_area`
--

DROP TABLE IF EXISTS `gym_interest_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_interest_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_interest_area`
--

LOCK TABLES `gym_interest_area` WRITE;
/*!40000 ALTER TABLE `gym_interest_area` DISABLE KEYS */;
INSERT INTO `gym_interest_area` VALUES (1,'Aerobica');
/*!40000 ALTER TABLE `gym_interest_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_levels`
--

DROP TABLE IF EXISTS `gym_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_levels`
--

LOCK TABLES `gym_levels` WRITE;
/*!40000 ALTER TABLE `gym_levels` DISABLE KEYS */;
INSERT INTO `gym_levels` VALUES (1,'Intenso'),(2,'Super intenso'),(3,'Liviano');
/*!40000 ALTER TABLE `gym_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_measurement`
--

DROP TABLE IF EXISTS `gym_measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `result_measurment` varchar(100) DEFAULT NULL,
  `result` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `result_date` date DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_measurement`
--

LOCK TABLES `gym_measurement` WRITE;
/*!40000 ALTER TABLE `gym_measurement` DISABLE KEYS */;
INSERT INTO `gym_measurement` VALUES (1,'Weight',80,5,'2019-12-05','measurement.png',1,'2019-12-03');
/*!40000 ALTER TABLE `gym_measurement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_member`
--

DROP TABLE IF EXISTS `gym_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activated` int(11) DEFAULT NULL,
  `role_name` text,
  `member_id` text,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `member_type` text,
  `role` int(11) DEFAULT NULL,
  `s_specialization` varchar(255) DEFAULT NULL,
  `gender` text,
  `birth_date` date DEFAULT NULL,
  `assign_class` int(11) DEFAULT NULL,
  `assign_group` varchar(150) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `chest` varchar(10) DEFAULT NULL,
  `waist` varchar(10) DEFAULT NULL,
  `thing` varchar(10) DEFAULT NULL,
  `arms` varchar(10) DEFAULT NULL,
  `fat` varchar(10) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `assign_staff_mem` int(11) DEFAULT NULL,
  `intrested_area` int(11) DEFAULT NULL,
  `g_source` int(11) DEFAULT NULL,
  `referrer_by` int(11) DEFAULT NULL,
  `inquiry_date` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `selected_membership` varchar(100) DEFAULT NULL,
  `membership_status` text,
  `membership_valid_from` date DEFAULT NULL,
  `membership_valid_to` date DEFAULT NULL,
  `first_pay_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `alert_sent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_member`
--

LOCK TABLES `gym_member` WRITE;
/*!40000 ALTER TABLE `gym_member` DISABLE KEYS */;
INSERT INTO `gym_member` VALUES (1,NULL,'administrator',NULL,'Admin','','',NULL,NULL,NULL,'male','2016-07-01',NULL,NULL,'null','null','t','123123','123123123','','admin@admin.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin','$2y$10$bvA4oXvDFEy5gmRSgurLQOipACMgu4qcGC.N/dkgszKVLeCpLaRkG','logo.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-11',NULL),(2,NULL,'staff_member','','Sergio','','Romero','',1,NULL,'male','2016-08-10',NULL,'','Address line','City','','','2288774455','','sergio@sergio.com','','','','','','','','sergio','','logo.png',0,0,0,0,'0000-00-00','0000-00-00','','','0000-00-00','0000-00-00','0000-00-00',0,'2016-08-22',0),(3,NULL,'staff_member',NULL,'Federico','Cesar','Castiglione',NULL,2,'[\"1\"]','male','1990-01-02',NULL,NULL,'Gobernador Justo Castro 355','Rawson',NULL,NULL,'2644286464','2645317435','fede_102@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fede','$2y$10$eDcMHIeGHFQOFcOQEZVS.OoUpCgjQEnn781JYCdFezbrbpiBRy38e','1575369202_558890.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-03',NULL),(4,NULL,'accountant',NULL,'Clara','','Bustos',NULL,NULL,NULL,'female','1992-12-03',NULL,NULL,'Cap','Capita',NULL,NULL,'2645232332','','clara@hotmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'clara','$2y$10$m652d9xvz2ks36pwKp/rKebKll1/SGMFbFxzL.YuoeB7P0xSCQclu','logo.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-12-03',NULL),(5,1,'member','M50319','Cristian','Pipa','Martinez','Member',NULL,NULL,'male','2019-01-02',NULL,'\"\"','a','v','c','5425','2645222222','','feee@gmail.com','90','100','15','15','13','3','25','cristian','$2y$10$o8rN48.evWj2CjaXiTPHSuZpXID9GzRo.rnhalM/IaF7zf6FmfDci','logo.png',3,1,NULL,3,NULL,NULL,'3','Continue','2020-02-01','2020-02-03','2020-01-01',NULL,'2019-12-03',NULL),(6,NULL,'administrator',NULL,'Admin','','',NULL,NULL,NULL,'male','2016-07-01',NULL,NULL,'null','null','t','123123','123123123','','admin@admin.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fede','$2y$10$xyauNC6yqBFT8zYx8XEvZOs8JypId8a/wnU0p8sNOLCn6ceg6JgcK','logo.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-12-04',NULL),(7,1,'member','M70419','Marta','','Mercado','Member',NULL,NULL,'female','1985-04-12',NULL,'[\"1\"]','q','w','e','5425','264589654','','asd@gmail.com','50','176','90','60','90','133','1','marta','$2y$10$/32IWVbqQuMWLa7TbOVCeupz.Uu0X3xAeA2Jh2l8lWeB8HfhYiXCu','1575466090_438547.png',3,1,NULL,NULL,NULL,'2019-05-12','1','Continue','2019-06-12','2020-05-01','2019-06-12',NULL,'2019-12-04',NULL),(8,NULL,'member','M80519','Prueba','Prue','Pruebita','Member',NULL,NULL,'male','1990-10-12',NULL,'[\"1\"]','aaa','vvv','Rawson','5425','2645317433','','feede_102@hotmail.com','','','','','','','','prueba','$2y$10$j/Zj1xf7MwcLIX6zuh53zeFLICSkxJSV120Sv9v5aNnEtySb/dQlq','1575544804_141676.png',3,1,NULL,NULL,NULL,NULL,'2','Prospect','2019-05-12','2020-04-01','1970-01-01',NULL,'2019-12-05',NULL);
/*!40000 ALTER TABLE `gym_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_member_class`
--

DROP TABLE IF EXISTS `gym_member_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_member_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `assign_class` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_member_class`
--

LOCK TABLES `gym_member_class` WRITE;
/*!40000 ALTER TABLE `gym_member_class` DISABLE KEYS */;
INSERT INTO `gym_member_class` VALUES (8,7,8),(9,7,9),(14,8,8),(15,8,9),(22,5,8),(23,5,9);
/*!40000 ALTER TABLE `gym_member_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_message`
--

DROP TABLE IF EXISTS `gym_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `subject` varchar(150) DEFAULT NULL,
  `message_body` text,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_message`
--

LOCK TABLES `gym_message` WRITE;
/*!40000 ALTER TABLE `gym_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_newsletter`
--

DROP TABLE IF EXISTS `gym_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_newsletter`
--

LOCK TABLES `gym_newsletter` WRITE;
/*!40000 ALTER TABLE `gym_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_notice`
--

DROP TABLE IF EXISTS `gym_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(100) DEFAULT NULL,
  `notice_for` text,
  `class_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_notice`
--

LOCK TABLES `gym_notice` WRITE;
/*!40000 ALTER TABLE `gym_notice` DISABLE KEYS */;
INSERT INTO `gym_notice` VALUES (1,'No hay clases','all',8,'2019-12-03','2019-12-05','Porque no hay luz',1);
/*!40000 ALTER TABLE `gym_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_nutrition`
--

DROP TABLE IF EXISTS `gym_nutrition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_nutrition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `day` varchar(50) DEFAULT NULL,
  `breakfast` text,
  `midmorning_snack` text,
  `lunch` text,
  `afternoon_snack` text,
  `dinner` text,
  `afterdinner_snack` text,
  `start_date` varchar(20) DEFAULT NULL,
  `expire_date` varchar(20) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_nutrition`
--

LOCK TABLES `gym_nutrition` WRITE;
/*!40000 ALTER TABLE `gym_nutrition` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_nutrition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_nutrition_data`
--

DROP TABLE IF EXISTS `gym_nutrition_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_nutrition_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(30) DEFAULT NULL,
  `nutrition_time` varchar(30) DEFAULT NULL,
  `nutrition_value` text,
  `nutrition_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_nutrition_data`
--

LOCK TABLES `gym_nutrition_data` WRITE;
/*!40000 ALTER TABLE `gym_nutrition_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_nutrition_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_product`
--

DROP TABLE IF EXISTS `gym_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_product`
--

LOCK TABLES `gym_product` WRITE;
/*!40000 ALTER TABLE `gym_product` DISABLE KEYS */;
INSERT INTO `gym_product` VALUES (1,'Termo y Mate',1500,20,1,'2019-12-04'),(2,'Gorras',225,99,1,'2019-12-04');
/*!40000 ALTER TABLE `gym_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_reservation`
--

DROP TABLE IF EXISTS `gym_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `start_time` varchar(20) DEFAULT NULL,
  `end_time` varchar(20) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_reservation`
--

LOCK TABLES `gym_reservation` WRITE;
/*!40000 ALTER TABLE `gym_reservation` DISABLE KEYS */;
INSERT INTO `gym_reservation` VALUES (1,'Lanzamiento','2019-12-06','7:00:PM','8:00:PM',1,1,'2019-12-03'),(2,'Lanzamiento del mes','2020-01-01','10:00:AM','12:00:AM',1,1,'2019-12-04');
/*!40000 ALTER TABLE `gym_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_roles`
--

DROP TABLE IF EXISTS `gym_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_roles`
--

LOCK TABLES `gym_roles` WRITE;
/*!40000 ALTER TABLE `gym_roles` DISABLE KEYS */;
INSERT INTO `gym_roles` VALUES (1,'Yoga'),(2,'Funcional');
/*!40000 ALTER TABLE `gym_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_source`
--

DROP TABLE IF EXISTS `gym_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_source`
--

LOCK TABLES `gym_source` WRITE;
/*!40000 ALTER TABLE `gym_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_store`
--

DROP TABLE IF EXISTS `gym_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sell_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_store`
--

LOCK TABLES `gym_store` WRITE;
/*!40000 ALTER TABLE `gym_store` DISABLE KEYS */;
INSERT INTO `gym_store` VALUES (1,5,'2019-12-04',2,NULL,1,1);
/*!40000 ALTER TABLE `gym_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_user_workout`
--

DROP TABLE IF EXISTS `gym_user_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_user_workout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_workout_id` int(11) DEFAULT NULL,
  `workout_name` int(11) DEFAULT NULL,
  `sets` int(11) DEFAULT NULL,
  `reps` int(11) DEFAULT NULL,
  `kg` float DEFAULT NULL,
  `rest_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_user_workout`
--

LOCK TABLES `gym_user_workout` WRITE;
/*!40000 ALTER TABLE `gym_user_workout` DISABLE KEYS */;
/*!40000 ALTER TABLE `gym_user_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_workout_data`
--

DROP TABLE IF EXISTS `gym_workout_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_workout_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_name` varchar(15) DEFAULT NULL,
  `workout_name` varchar(100) DEFAULT NULL,
  `sets` int(11) DEFAULT NULL,
  `reps` int(11) DEFAULT NULL,
  `kg` float DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `workout_id` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_workout_data`
--

LOCK TABLES `gym_workout_data` WRITE;
/*!40000 ALTER TABLE `gym_workout_data` DISABLE KEYS */;
INSERT INTO `gym_workout_data` VALUES (1,'Monday','12',10,20,60,60,2,'2019-12-03',NULL),(2,'Wednesday','12',10,20,60,60,2,'2019-12-03',NULL),(3,'Friday','12',10,20,60,60,2,'2019-12-03',NULL);
/*!40000 ALTER TABLE `gym_workout_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installment_plan`
--

DROP TABLE IF EXISTS `installment_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installment_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installment_plan`
--

LOCK TABLES `installment_plan` WRITE;
/*!40000 ALTER TABLE `installment_plan` DISABLE KEYS */;
INSERT INTO `installment_plan` VALUES (4,0,'Month');
/*!40000 ALTER TABLE `installment_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_label` varchar(100) DEFAULT NULL,
  `membership_cat_id` int(11) DEFAULT NULL,
  `membership_length` int(11) DEFAULT NULL,
  `membership_class_limit` varchar(20) DEFAULT NULL,
  `limit_days` int(11) DEFAULT NULL,
  `limitation` varchar(20) DEFAULT NULL,
  `install_plan_id` int(11) DEFAULT NULL,
  `membership_amount` double DEFAULT NULL,
  `membership_class` varchar(255) DEFAULT NULL,
  `installment_amount` double DEFAULT NULL,
  `signup_fee` double DEFAULT NULL,
  `gmgt_membershipimage` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `membership_description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (1,'Plata',8,30,'Limited',3,'per_week',4,400,'[\"5\",\"6\",\"8\",\"9\"]',30,500,'1575557523_102127.png','2016-08-22',1,'<p>Solamente podra acceder 3 veces por semana<br></p>'),(2,'Oro',7,30,'Unlimited',NULL,NULL,4,400,'[\"8\",\"9\"]',30,700,'1575557511_273226.png','2016-08-22',1,'<p>El pase libre cuenta con la posibilidad de ingresar en cualquier clase<br></p>'),(3,'Bronce',9,30,'Limited',2,'per_week',4,1000,'[\"5\",\"6\",\"8\",\"9\"]',30,400,'1575557497_800443.png','2016-08-22',1,'<p>Podra tomar dos clases por semana</p>');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_activity`
--

DROP TABLE IF EXISTS `membership_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_activity`
--

LOCK TABLES `membership_activity` WRITE;
/*!40000 ALTER TABLE `membership_activity` DISABLE KEYS */;
INSERT INTO `membership_activity` VALUES (1,12,1,1,'2019-12-03'),(2,12,2,1,'2019-12-03'),(3,12,3,1,'2019-12-03');
/*!40000 ALTER TABLE `membership_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_history`
--

DROP TABLE IF EXISTS `membership_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `selected_membership` int(11) DEFAULT NULL,
  `assign_staff_mem` int(11) DEFAULT NULL,
  `intrested_area` int(11) DEFAULT NULL,
  `g_source` int(11) DEFAULT NULL,
  `referrer_by` int(11) DEFAULT NULL,
  `inquiry_date` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `membership_valid_from` date DEFAULT NULL,
  `membership_valid_to` date DEFAULT NULL,
  `first_pay_date` date DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_history`
--

LOCK TABLES `membership_history` WRITE;
/*!40000 ALTER TABLE `membership_history` DISABLE KEYS */;
INSERT INTO `membership_history` VALUES (1,5,2,3,1,NULL,3,'1970-01-01','1970-01-01','2019-12-03','2020-01-02','2019-12-03','2019-12-03'),(2,5,3,NULL,NULL,NULL,NULL,NULL,NULL,'2020-01-02','2020-02-01',NULL,'2019-12-03'),(3,7,1,3,1,NULL,NULL,'1970-01-01','2019-12-05','2019-12-06','2020-01-05','2019-12-06','2019-12-04'),(4,8,2,NULL,1,NULL,NULL,NULL,NULL,'2019-12-05','2020-01-04',NULL,'2019-12-05');
/*!40000 ALTER TABLE `membership_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_payment`
--

DROP TABLE IF EXISTS `membership_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_payment` (
  `mp_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL,
  `membership_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `membership_status` varchar(50) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`mp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_payment`
--

LOCK TABLES `membership_payment` WRITE;
/*!40000 ALTER TABLE `membership_payment` DISABLE KEYS */;
INSERT INTO `membership_payment` VALUES (1,5,2,700,900,'2019-12-03','2020-01-02','Continue','0','2019-12-03',NULL),(2,5,3,400,400,'2020-01-02','2020-02-01','Continue','0','2019-12-03',NULL),(3,7,1,500,500,'2019-12-06','2020-01-05','Continue','0','2019-12-04',NULL),(4,8,2,700,0,'2019-12-05','2020-01-04',NULL,'0','2019-12-05',NULL);
/*!40000 ALTER TABLE `membership_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_payment_history`
--

DROP TABLE IF EXISTS `membership_payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership_payment_history` (
  `payment_history_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mp_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `paid_by_date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `trasaction_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_history_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_payment_history`
--

LOCK TABLES `membership_payment_history` WRITE;
/*!40000 ALTER TABLE `membership_payment_history` DISABLE KEYS */;
INSERT INTO `membership_payment_history` VALUES (1,1,900,'Cash','2019-12-03',1,NULL),(2,2,400,'Cheque','2019-12-04',1,NULL),(3,3,300,'Bank Transfer','2019-12-04',1,NULL),(4,3,200,'Cash','2019-12-04',1,NULL);
/*!40000 ALTER TABLE `membership_payment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Profesor');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-18 17:26:11
