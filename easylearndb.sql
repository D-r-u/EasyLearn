/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - easylearn
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`easylearn` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `easylearn`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add login',7,'add_login'),
(26,'Can change login',7,'change_login'),
(27,'Can delete login',7,'delete_login'),
(28,'Can view login',7,'view_login'),
(29,'Can add question',8,'add_question'),
(30,'Can change question',8,'change_question'),
(31,'Can delete question',8,'delete_question'),
(32,'Can view question',8,'view_question'),
(33,'Can add staff',9,'add_staff'),
(34,'Can change staff',9,'change_staff'),
(35,'Can delete staff',9,'delete_staff'),
(36,'Can view staff',9,'view_staff'),
(37,'Can add test',10,'add_test'),
(38,'Can change test',10,'change_test'),
(39,'Can delete test',10,'delete_test'),
(40,'Can view test',10,'view_test'),
(41,'Can add user',11,'add_user'),
(42,'Can change user',11,'change_user'),
(43,'Can delete user',11,'delete_user'),
(44,'Can view user',11,'view_user'),
(45,'Can add test questions',12,'add_testquestions'),
(46,'Can change test questions',12,'change_testquestions'),
(47,'Can delete test questions',12,'delete_testquestions'),
(48,'Can view test questions',12,'view_testquestions'),
(49,'Can add staff_ complaints',13,'add_staff_complaints'),
(50,'Can change staff_ complaints',13,'change_staff_complaints'),
(51,'Can delete staff_ complaints',13,'delete_staff_complaints'),
(52,'Can view staff_ complaints',13,'view_staff_complaints'),
(53,'Can add reviews',14,'add_reviews'),
(54,'Can change reviews',14,'change_reviews'),
(55,'Can delete reviews',14,'delete_reviews'),
(56,'Can view reviews',14,'view_reviews'),
(57,'Can add result',15,'add_result'),
(58,'Can change result',15,'change_result'),
(59,'Can delete result',15,'delete_result'),
(60,'Can view result',15,'view_result'),
(61,'Can add complaints',16,'add_complaints'),
(62,'Can change complaints',16,'change_complaints'),
(63,'Can delete complaints',16,'delete_complaints'),
(64,'Can view complaints',16,'view_complaints');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(16,'myapp','complaints'),
(7,'myapp','login'),
(8,'myapp','question'),
(15,'myapp','result'),
(14,'myapp','reviews'),
(9,'myapp','staff'),
(13,'myapp','staff_complaints'),
(10,'myapp','test'),
(12,'myapp','testquestions'),
(11,'myapp','user'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2023-12-02 11:45:56.235920'),
(2,'auth','0001_initial','2023-12-02 11:45:56.879756'),
(3,'admin','0001_initial','2023-12-02 11:45:57.020892'),
(4,'admin','0002_logentry_remove_auto_add','2023-12-02 11:45:57.036511'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-12-02 11:45:57.052132'),
(6,'contenttypes','0002_remove_content_type_name','2023-12-02 11:45:57.162350'),
(7,'auth','0002_alter_permission_name_max_length','2023-12-02 11:45:57.224841'),
(8,'auth','0003_alter_user_email_max_length','2023-12-02 11:45:57.272164'),
(9,'auth','0004_alter_user_username_opts','2023-12-02 11:45:57.287785'),
(10,'auth','0005_alter_user_last_login_null','2023-12-02 11:45:57.334650'),
(11,'auth','0006_require_contenttypes_0002','2023-12-02 11:45:57.350270'),
(12,'auth','0007_alter_validators_add_error_messages','2023-12-02 11:45:57.354775'),
(13,'auth','0008_alter_user_username_max_length','2023-12-02 11:45:57.413202'),
(14,'auth','0009_alter_user_last_name_max_length','2023-12-02 11:45:57.460489'),
(15,'auth','0010_alter_group_name_max_length','2023-12-02 11:45:57.522979'),
(16,'auth','0011_update_proxy_permissions','2023-12-02 11:45:57.522979'),
(17,'auth','0012_alter_user_first_name_max_length','2023-12-02 11:45:57.586273'),
(18,'myapp','0001_initial','2023-12-02 11:45:58.559267'),
(19,'sessions','0001_initial','2023-12-02 11:45:58.622621'),
(20,'myapp','0002_reviews_type','2023-12-12 10:43:14.713977'),
(21,'myapp','0003_auto_20240210_1458','2024-02-10 09:28:30.857348');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('cnsf32y27pw0ofavwyyu2x45131myii8','.eJyVVV1vGzcQ_CuEnuUgNoIizkthBE1RoA4CJ0VRQC8UudKxvSMvXJ4Uteh_7yzJO50-3CSAbZhHcnZ3dnb4z6J1dvHm9uVy8Vkn-pIWbxYr_3ujk7KBWKWGVKLYqdVw9_L29YdIulu3lFf3KtKGokrhx5V3PsVgB5Nc8CpE1WNPG1wOGeNt8JxcGmR75WsEV_DZbb3bOKM9zodN_jYGEuTEyoSuD5584ovLYYjHa_MwuCqfegp9mw_84q3T030daaqOlfMnYbHAER62W-KUd7xOQ5zicAJZCMBhR5GQ_xKJGKdbxwn_krlRQ6vjUlnqgok6OaO0tyCsH9atMyUL8mqvSxkWeAKubegLhSVQztmf1_UeYbs1qL_7Yalu71_dn7PSN64NHPrm8D9A0r6WTCKL8itbU4NngKB42yTp5JoUdX2j2f2NS-tDRh54omUfoq1K-TgyU6VyRnBWjKWe8Ke2PWeoSEcP7NREiQqiI5qAhmygKblxo8Y7x052-IJfJOuZYsrXz5KpvXk2GVm-ukOHHkawCd66gseI8y2xyEjraySQVlkWtZStmZZqV0Q7lA7HkOPozXCfRulcLUG4wQRlURYi0SVITlHtcEPaLnElsyqHI763h3F_ORcJQNnZXGRJwzTBHYcME4UuXMxUQMgdoVwOhZdwLg8T0LYe49y6v0j9OUCJhpZYQcrpsFT0eUCX0iGPygZTQxHTf0BJJ7LFTkfx6AR9DDvH2GEQd2ED4_Exuxs15Qfgd2rwVpqadKueHHR-4jDbQUftEx3LEep2ziJRnkSaSRmTkGKvoCLWr6VOwf8kxPixVHgnbaOsKlEQiCCdz57oJ5bB2yPBKtvr8_dOTfw9oxiJXEd4xiCQNrPkLTgkzmfZeRlE4xKm33Pj-hHyqrlPGj7L79JruQn7YrguwV_WwSIkilvDZ8zcyrIsZsntdDsQXzi6FeCSs-bexUymVAbMTcB9FKI2GkcjX3s4RjmPg29a7bqS4IW40CJL0e1IBBu6kzdHcNTH3x4fH57-UPj309ffUj7K7JufU_UiI090YsqShjt977ui8HPxsFTwn0FmIxdgC6J8oRqklLE4VWbJ3oTYh8L81cfhuh8__fTwKCVUmFNDRirFbfIdlvjZn5DA4Fqrhl7p-XvbB3gJPLFVfOBEHY5BIy2H02Pl3R7PnHE5vXb8nF3dYHYSlT6d2hbEN8uhElfw80J4qVhSCwqC-j0PUeSJ8jE2mwjnCdjaN840qtOwTVABregW3i3bM0QBnCzUcW0QUCOq3QmqdWyi65yvI7GmtCfgjTOtXqz84t__APhTpfo:1rhkzq:3nGHTxMjpksc46arSst8vE0QRikiQler0rU0JwsMdjI','2024-03-20 06:43:22.516912'),
('hpu5gqrgfh2xv4dbl8d2qrgfv7p6zekt','.eJyVVV1vJDUQ_CvWPm9OJDohci8oQhxCIgjlDiGkffHaPTuGGXvO7dllQfx3qm3P7OxH4JCSKB7b1d3V1eW_Vp2zq3f39-vVJ53oj7R6t9r4X1qdlA3EKrWkEsVebcaHL-6_-imS7rcd5dWjitRQVCl8vfHOpxjsaJILXoWoBuxpg8shY3wTPCeXRtne-BrBFXx2O-8aZ7TH-dDkb1MgQU6sTOiH4Mknvrocxni6tgyDq_JpoDB0-cD33jo939eR5upYOX8WFgsc4XG3I055x-s0xjkOJ5CFABz2FAn5r5GIcbpznPAvmTs1djqulaU-mKiTM0p7C8KGcds5U7Igrw66lGGBJ-DahqFQWALlnP1lXT8ibL8F9Q9frtX949vHS1aG1nWBw9Ae_wVI2teRSWRRfmVrbvACEBTv2iSd3JKifmg1uz9xaXvMyCPPtBxCtFUpHyZmqlQuCM6KsTQQ_tS25wwV6eiBndooUUF0RBPQkAaakht3arpz6mSPL_hFsp4ppnz9Ipnam1eTkeXbB3ToaQKb4a0reIw4nxOLjLS-RgJplWVRS9laaKl2RbRD6XgKOY3eAvdlks7NEoQbTFAWZSESXYLkFNUOt6TtGlcyq3I44nt3nPbXS5EAlJ3NRZY0TBvcacgwUejC1UwFhNwTyuVQeAmX8jABbRswzp37ndRvI5RoaI0VpJyOa0WfRnQpHfOoNJgaipj-I0o6ky12eoonJxhi2DvGDoO4KxuYjk_Z3ak5PwC_V6O30tSkO_XioPMzh9mNOmqf6FSOULd3FonyLNJMypSEFHsDFbF-KHUK_kchxk-lwjtpF2VViYJABOly9kQ_sQzeAQlW2d6ev_dq5u8VxUjkOsILBoHULJK34JA4n2XnZRCNS5h-z60bJsib5j5r-CK_a6_lNhyK4boEf9kGi5AobgufMUsry7JYJLfX3Uh85ehWgEvOmgcXM5lSGTCbgPsoRDUaRyPfejgmOU-Dbzrt-pLglbjQIkvR7UkEG_qzN0dw1Iefn5-fXn5V-Pfjf7-lfJLZZz-n6k1GnunElCUNd_q_74rCz9XDUsG_A5mtXIAtiPKFapBSxuJcmSV7E-IQCvM3H4fbfvzy7dOzlFBhzg0ZqRS3yXdY4md_QgKj66waB6WX7-0Q4CXwxE7xkRP1OAaNdBzOj5V3ezpzweX82vFrdnWH2UlU-nRuWxDfIodKXMHPC-GlYkktKAjq9zxGkSfKx9g0Ec4TsHVonWlVr2GboAJa0R28W7YXiAI4W6jj2iCgRlS7F1Tr2ETXO19HYkvpQMCbZlq92fjV3_8AAm6l-w:1rhiDq:s3AK6ScrqWwWVl_ZR6cgRFd04kw2BJSI1DT4QTJ1zd8','2024-03-20 03:45:38.881507'),
('r5ntxcsa1x99f5g07d0q2s208pna3xe4','.eJxtkEFLxDAQhf_KI-elVG96ES_iZWWxiAi5pG1qhk0nmkRqFf-7k7a4exBymDzyvvcm38pTr66V2ql3k-1nllnzswuYTALxjeY3Eylp1ozmab-_fXyBjHfRcudwiDZRbznjgbrgxdKYeAxf82bHoZgxOctwdhFNSnKIJa1HhftVPZL3cheHQWci2jC2aAWYi5bF21GeEYaNKOJlXV-tACeA1krEX6DwO1tswmPBJnCYNnoYzenh4l95BilLqZIxho_IxK8YQoQrC9Bgd7JGOC_bzuI5K1qh2XbcKo_U996eSi_fkP77h2WdixqVZvXzC4zOiNA:1rZqOX:NcG8texy-oePfKIoM0ZsC44WIceWyYgSQo60_mMWkdw','2024-02-27 10:52:09.416074'),
('sbs1hit1qw6ocxtk1vk3mxyf9unxvld3','.eJztVk2P2zYQ_SsDX3JxFs0iCLK5FEGKAgWaIthNURTwhSJHFgOKVEjKrlv0v_cNacmfu9defLAhipo3M2_eDPnPwlmz-HC_XDSLD4uV_6NTmUzgRLljyhx7evUlsuobx68ocsuRcvhx5WXb-hyDGXW2wVOINGBfaZgF2f0UfMo2j7K78ntoW4GTXXvbWq08Pg9teTe5AbjNSYd-CJ59The2YYwHq2Mv-7AGDoMrH_zijVWzvWSTEPSJN0rjes0pl5de5THO0CmrLNGksOHIiHgJ39oqZ1PGI-vRqbg03AcdVbaalDegaBgbZ_XsVQGwkGVYuQRsIH4bEbPmJTnbcMy7JfH3Ebh5Jxgt0DiChF0FYU9bVXM32JHwlAlDZb2GWhL152T8hsB7OKD7d0t68_D24ZhK0LjukHaghon7oVPJ_s2Gml1BHNPMwzZEQ6vx_oc3758mKsry4ZxMKZ03PDD-UNkDBz3e4Icn28NHdSoMxoNH63WIQxAqD4md-N5z_6xvWb69RxE-Tv7mCGZJHwE-TqW6ioe1gUCLAgq9BIZQHmLHOiPsjpVZwkR4lG8jXrvdtL08rgswE-rvZw3rLthZw8_ptYQKtn0bIPhquFFu5DSxc2Z5hZKfZnXOsEMMG5vAcQIrFz1EUF_PMSHbDcN7CjGXigHs59EbKWVWjh4t1FN689eqYaS2HlVUPnOtsHCysWYU1ecuCk20PQlg6tdpjUSuuzgt4Zk0r7R0F7Z4IzrPkHYTjOUEZw0krmnorAspDF1ttiOHldxLhzMwxL-jLTsnk1DqDFAjm6n0vkqDrfKdK9QG4Fu_bhVWMV2bWuLvq2jCoTlq2BdFgWwMR7sBs20MfeHxZNoJCD39_vnzx8c_CY9fp-ldpT5lsJd6meNJivTyGL8M5I4uhgq9PJuujCagSHxHhXh-jEnqe7KR_HmlK9AZc_ol5o7aBltlELdWhhBrtRcWTh9qYlDmNUEx2BvCIKOelNY85HJmMaSAU0weoTENBQmNgUqrIqzaj9-C9bD_FPo--C3mf-5k2kEJtS66jQwRW-fK0sCsGk4eyzApelojBXK8ttn2Su-kODgHKY5OKnlHT7uUua9s1bEGIrfwhFMNn7btYd7Ug00-7dgZCpVTaY6iT7ExNitIHUpIOlqUU2ZBacc95eU0k6_3RxnZfnDoMlKUaiTF9_EMkIBQN4dTRhzaSO2IThpCRvfJZM9if7fyi-XiOwL8K99uJLcbye1GcruR3G4ktxvJ7UZyu5H8fzeSf_8DGCVFMw:1rWBuI:oMEmnD7Vld0ubPZmHI7cfZR3JxK5S8yD3eEgAdgmYEI','2024-02-17 09:01:50.377242'),
('sung6wybh12fzou65jey2cv3bebp62a1','.eJyVVV2PHDUQ_CvWPu9F5BQhLi_ohEiExCF0CUJI--K1e3YMM_bE7dllQfx3qm3P7OzHQSLdnc5ju7q7urr896pzdvX2fr36pBP9mVZvVxv_a6uTsoFYpZZUotirzXj_1etvfo6k-21HefWgIjUUVQrfbrzzKQY7muSCVyGqAXva4HLIGN8Fz8mlUbY3vkZwBZ_dzrvGGe1xPjT52xRIkBMrE_ohePKJry6HMZ6uLcPgqnwaKAxdPvCDt07P93WkuTpWzp-FxQJHeNztiFPe8TqNcY7DCWQhAIc9RUL-ayRinO4cJ_xL5k6NnY5rZakPJurkjNLegrBh3HbOlCzIq4MuZVjgCbi2YSgUlkA5Z39Z108I229B_f3Xa_X64c3DJStD67rAYWiP_wEk7evIJLIov7I1N3gBCIp3bZJObklRP7Sa3V-4tD1m5JFnWg4h2qqUDxMzVSoXBGfFWBoIf2rbc4aKdPTATm2UqCA6ogloSANNyY07Nd05dbLHF_wiWc8UU75-kUztzYvJyPLNPTr0OIHN8NYVPEacz4lFRlpfI4G0yrKopWwttFS7ItqhdDyFnEZvgfs8SedmCcINJiiLshCJLkFyimqHW9J2jSuZVTkc8b07TvvrpUgAys7mIksapg3uNGSYKHThaqYCQu4J5XIovIRLeZiAtg0Y5879Qer3EUo0tMYKUk7HtaJPI7qUjnlUGkwNRUz_ESWdyRY7PcWTEwwx7B1jh0HclQ1Mx6fs7tScH4DfqdFbaWrSnXp20PmZw-xGHbVPdCpHqNs7i0R5FmkmZUpCir2Bilg_ljoF_6MQ46dS4Z20i7KqREEggnQ5e6KfWAbvgASrbG_P3zs18_eCYiRyHeEFg0BqFslbcEicz7LzMojGJUy_59YNE-RNc581fJHftddyGw7FcF2Cv2yDRUgUt4XPmKWVZVksktvrbiS-cnQrwCVnzYOLmUypDJhNwH0UohqNo5FvPRyTnKfBN512fUnwSlxokaXo9iSCDf3ZmyM46sMvT0-Pz78p_Pvx_99SPsnss59T9Sojz3RiypKGO33pu6Lwc_WwVPD3ILOVC7AFUb5QDVLKWJwrs2RvQhxCYf7m43Dbj5-_f3ySEirMuSEjleI2-Q5L_OxPSGB0nVXjoPTyvR0CvASe2Ck-cqIex6CRjsP5sfJuT2cuuJxfO37Jru4wO4lKn85tC-Jb5FCJK_h5IbxULKkFBUH9nsco8kT5GJsmwnkCtg6tM63qNWwTVEAruoN3y_YCUQBnC3VcGwTUiGr3gmodm-h65-tIbCkdCHjTTKtXG7_6518drKXL:1rZTJZ:sk2UvXbMurLZUM6LA0wWkVU20Z6ATadnZjbyZN00o5g','2024-02-26 10:13:29.675501'),
('vsxoy4fqqdlxssxfxbasbnwj90rdv2pc','eyJsaWQiOjF9:1rJn9I:_pJcHBjb0e4YcWRxVqKEWrkBrj0gBMxsTIrMM081ipk','2024-01-14 04:10:04.536404');

/*Table structure for table `myapp_complaints` */

DROP TABLE IF EXISTS `myapp_complaints`;

CREATE TABLE `myapp_complaints` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `complaint` varchar(300) NOT NULL,
  `reply` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_complaints_LOGIN_id_c25b97b0_fk_myapp_login_id` (`LOGIN_id`),
  CONSTRAINT `myapp_complaints_LOGIN_id_c25b97b0_fk_myapp_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_complaints` */

insert  into `myapp_complaints`(`id`,`date`,`complaint`,`reply`,`status`,`LOGIN_id`) values 
(1,'2023-12-01','Complaint','Reply to gen complaint','replied',3),
(2,'2023-12-02','complaint 1','Replied\r\n','replied',4),
(4,'2023-12-12','Complaint 2','','pending',4),
(5,'2023-12-23','usr complaints','','pending',8),
(6,'2024-02-21','not a single fault found','','pending',10),
(7,'2024-03-05','Complaint 1\r\n','reply1','replied',11);

/*Table structure for table `myapp_login` */

DROP TABLE IF EXISTS `myapp_login`;

CREATE TABLE `myapp_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_login` */

insert  into `myapp_login`(`id`,`username`,`password`,`type`) values 
(1,'drupad','password1','admin'),
(2,'goutham','password','user'),
(3,'navanath','nava123','staff'),
(4,'goutham1','goutham1234','staff'),
(8,'shivak','shiva1234','user'),
(9,'navu','password','staff'),
(10,'john','password1','user'),
(11,'karthik','password1','staff'),
(12,'ayson','ayson234','user'),
(13,'abcd','dcba','user');

/*Table structure for table `myapp_question` */

DROP TABLE IF EXISTS `myapp_question`;

CREATE TABLE `myapp_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `question` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_question_LOGIN_id_a4052152_fk_myapp_login_id` (`LOGIN_id`),
  CONSTRAINT `myapp_question_LOGIN_id_a4052152_fk_myapp_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_question` */

insert  into `myapp_question`(`id`,`question`,`answer`,`LOGIN_id`) values 
(1,'{\'answer\': \'Alan\', \'question\': \'What was the name of the child who was sitting near the tree?\'}','{\'answer\': \'Alan\', \'question\': \'What was the name of the child who was sitting near the tree?\'}',9),
(2,'What was the name of the child who was sitting near the tree?','Alan',9),
(3,'What was the name of the child who was sitting near the tree?','Alan',9),
(4,'What did a man ask Alan?','directions to the Church',9),
(5,'What does the term ‘Preamble’ refer to?','introduction or preface to the Constitution',3),
(6,'What is the significance of the Preamble?','its components',3),
(7,'What is the source of the Constitution?','the people of India',3),
(8,'What are the terms in the Preamble that suggest the nature of the state?','sovereign, socialist, sec- ular, democratic and republic',3),
(9,'When was the date of adoption of the Indian Constitution?','November 26, 1949',3),
(10,'What is the philosophy of the Indian Constitution reflected in?','the Preamble',3),
(11,'What is sought to be emphasized by the use of the word ‘Sovereign’ in the Preamble?','independence of India earned through struggle for inde- pendence',3),
(12,'What amendment inserted the word ‘Socialist’ in the Preamble?','the 42nd Amendment',3),
(13,'What did the same amendment inserted the word ‘Secular’ to reflect?','secular nature of Indian society',3),
(14,'What does the word ‘Republic’ in the Preamble indicate?','India has an elected head, though indirectly elected, the Indian President is the choice of the peo- ple of India',3),
(15,'Who have resorted to the use of the concepts like justice, liberty, equality and fraternity?','Constitution framers',3),
(16,'What provisions do the Constitution framers have re- sorted to?','F undamental Rights',3),
(17,'What is guaranteed to the individuals through the provision of F undamental Rights?','Liberty',3),
(18,'The unity and integrity of the nation is sought to be secured by what?','the use of the word ‘F raternity’ in the Preamble and by the provisions of fundamental duties and single citizenship in the Constitution',3),
(19,'What does the use of the words in the Preamble show that it embodies?','basic philosophy and fundamental values',3),
(20,'What are the dreams and aspirations of?','founding fathers of the Constitution',3),
(21,'Who did the claim that the Constitution is derived from?','the people',3),
(22,'What is my name?','karthik',11),
(23,'What is my name?','hello',11),
(24,'What does the term ‘Preamble’ refer to?','introduction or preface to the Constitution',11),
(25,'What is the significance of the Preamble?','its components',11),
(26,'What is the source of the Constitution?','the people of India',11),
(27,'What are the terms in the Preamble that suggest the nature of the state?','sovereign, socialist, sec- ular, democratic and republic',11),
(28,'When was the date of adoption of the Indian Constitution?','November 26, 1949',11),
(29,'What is the philosophy of the Indian Constitution reflected in?','the Preamble',11),
(30,'What is sought to be emphasized by the use of the word ‘Sovereign’ in the Preamble?','independence of India earned through struggle for inde- pendence',11),
(31,'What amendment inserted the word ‘Socialist’ in the Preamble?','the 42nd Amendment',11),
(32,'What did the same amendment inserted the word ‘Secular’ to reflect?','secular nature of Indian society',11),
(33,'What does the word ‘Republic’ in the Preamble indicate?','India has an elected head, though indirectly elected, the Indian President is the choice of the peo- ple of India',11),
(34,'Who have resorted to the use of the concepts like justice, liberty, equality and fraternity?','Constitution framers',11),
(35,'What provisions do the Constitution framers have re- sorted to?','F undamental Rights',11),
(36,'What is guaranteed to the individuals through the provision of F undamental Rights?','Liberty',11),
(37,'The unity and integrity of the nation is sought to be secured by what?','the use of the word ‘F raternity’ in the Preamble and by the provisions of fundamental duties and single citizenship in the Constitution',11),
(38,'What does the use of the words in the Preamble show that it embodies?','basic philosophy and fundamental values',11),
(39,'What are the dreams and aspirations of?','founding fathers of the Constitution',11),
(40,'Who did the claim that the Constitution is derived from?','the people',11),
(41,'What does the term ‘Preamble’ refer to?','introduction or preface to the Constitution',11),
(42,'What is the significance of the Preamble?','its components',11),
(43,'What is the source of the Constitution?','the people of India',11),
(44,'What are the terms in the Preamble that suggest the nature of the state?','sovereign, socialist, sec- ular, democratic and republic',11),
(45,'When was the date of adoption of the Indian Constitution?','November 26, 1949',11),
(46,'What is the philosophy of the Indian Constitution reflected in?','the Preamble',11),
(47,'What is sought to be emphasized by the use of the word ‘Sovereign’ in the Preamble?','independence of India earned through struggle for inde- pendence',11),
(48,'What amendment inserted the word ‘Socialist’ in the Preamble?','the 42nd Amendment',11),
(49,'What did the same amendment inserted the word ‘Secular’ to reflect?','secular nature of Indian society',11),
(50,'What does the word ‘Republic’ in the Preamble indicate?','India has an elected head, though indirectly elected, the Indian President is the choice of the peo- ple of India',11),
(51,'Who have resorted to the use of the concepts like justice, liberty, equality and fraternity?','Constitution framers',11),
(52,'What provisions do the Constitution framers have re- sorted to?','F undamental Rights',11),
(53,'What is guaranteed to the individuals through the provision of F undamental Rights?','Liberty',11),
(54,'The unity and integrity of the nation is sought to be secured by what?','the use of the word ‘F raternity’ in the Preamble and by the provisions of fundamental duties and single citizenship in the Constitution',11),
(55,'What does the use of the words in the Preamble show that it embodies?','basic philosophy and fundamental values',11),
(56,'What are the dreams and aspirations of?','founding fathers of the Constitution',11),
(57,'Who did the claim that the Constitution is derived from?','the people',11),
(58,'What does the term ‘Preamble’ refer to?','introduction or preface to the Constitution',11),
(59,'What is the significance of the Preamble?','its components',11),
(60,'What is the source of the Constitution?','the people of India',11),
(61,'What are the terms in the Preamble that suggest the nature of the state?','sovereign, socialist, sec- ular, democratic and republic',11),
(62,'When was the date of adoption of the Indian Constitution?','November 26, 1949',11),
(63,'What is the philosophy of the Indian Constitution reflected in?','the Preamble',11),
(64,'What is sought to be emphasized by the use of the word ‘Sovereign’ in the Preamble?','independence of India earned through struggle for inde- pendence',11),
(65,'What amendment inserted the word ‘Socialist’ in the Preamble?','the 42nd Amendment',11),
(66,'What did the same amendment inserted the word ‘Secular’ to reflect?','secular nature of Indian society',11),
(67,'What does the word ‘Republic’ in the Preamble indicate?','India has an elected head, though indirectly elected, the Indian President is the choice of the peo- ple of India',11),
(68,'Who have resorted to the use of the concepts like justice, liberty, equality and fraternity?','Constitution framers',11),
(69,'What provisions do the Constitution framers have re- sorted to?','F undamental Rights',11),
(70,'What is guaranteed to the individuals through the provision of F undamental Rights?','Liberty',11),
(71,'The unity and integrity of the nation is sought to be secured by what?','the use of the word ‘F raternity’ in the Preamble and by the provisions of fundamental duties and single citizenship in the Constitution',11),
(72,'What does the use of the words in the Preamble show that it embodies?','basic philosophy and fundamental values',11),
(73,'What are the dreams and aspirations of?','founding fathers of the Constitution',11),
(74,'Who did the claim that the Constitution is derived from?','the people',11),
(75,'What does the term ‘Preamble’ refer to?','introduction or preface to the Constitution',11),
(76,'What is the significance of the Preamble?','its components',11),
(77,'What is the source of the Constitution?','the people of India',11),
(78,'What are the terms in the Preamble that suggest the nature of the state?','sovereign, socialist, sec- ular, democratic and republic',11),
(79,'When was the date of adoption of the Indian Constitution?','November 26, 1949',11),
(80,'What is the philosophy of the Indian Constitution reflected in?','the Preamble',11),
(81,'What is sought to be emphasized by the use of the word ‘Sovereign’ in the Preamble?','independence of India earned through struggle for inde- pendence',11),
(82,'What amendment inserted the word ‘Socialist’ in the Preamble?','the 42nd Amendment',11),
(83,'What did the same amendment inserted the word ‘Secular’ to reflect?','secular nature of Indian society',11),
(84,'What does the word ‘Republic’ in the Preamble indicate?','India has an elected head, though indirectly elected, the Indian President is the choice of the peo- ple of India',11),
(85,'Who have resorted to the use of the concepts like justice, liberty, equality and fraternity?','Constitution framers',11),
(86,'What provisions do the Constitution framers have re- sorted to?','F undamental Rights',11),
(87,'What is guaranteed to the individuals through the provision of F undamental Rights?','Liberty',11),
(88,'The unity and integrity of the nation is sought to be secured by what?','the use of the word ‘F raternity’ in the Preamble and by the provisions of fundamental duties and single citizenship in the Constitution',11),
(89,'What does the use of the words in the Preamble show that it embodies?','basic philosophy and fundamental values',11),
(90,'What are the dreams and aspirations of?','founding fathers of the Constitution',11),
(91,'Who did the claim that the Constitution is derived from?','the people',11),
(92,'What does the term ‘Preamble’ refer to?','introduction or preface to the Constitution',11),
(93,'What is the significance of the Preamble?','its components',11),
(94,'What is the source of the Constitution?','the people of India',11),
(95,'What are the terms in the Preamble that suggest the nature of the state?','sovereign, socialist, sec- ular, democratic and republic',11),
(96,'When was the date of adoption of the Indian Constitution?','November 26, 1949',11),
(97,'What is the philosophy of the Indian Constitution reflected in?','the Preamble',11),
(98,'What is sought to be emphasized by the use of the word ‘Sovereign’ in the Preamble?','independence of India earned through struggle for inde- pendence',11),
(99,'What amendment inserted the word ‘Socialist’ in the Preamble?','the 42nd Amendment',11),
(100,'What did the same amendment inserted the word ‘Secular’ to reflect?','secular nature of Indian society',11),
(101,'What does the word ‘Republic’ in the Preamble indicate?','India has an elected head, though indirectly elected, the Indian President is the choice of the peo- ple of India',11),
(102,'Who have resorted to the use of the concepts like justice, liberty, equality and fraternity?','Constitution framers',11),
(103,'What provisions do the Constitution framers have re- sorted to?','F undamental Rights',11),
(104,'What is guaranteed to the individuals through the provision of F undamental Rights?','Liberty',11),
(105,'The unity and integrity of the nation is sought to be secured by what?','the use of the word ‘F raternity’ in the Preamble and by the provisions of fundamental duties and single citizenship in the Constitution',11),
(106,'What does the use of the words in the Preamble show that it embodies?','basic philosophy and fundamental values',11),
(107,'What are the dreams and aspirations of?','founding fathers of the Constitution',11),
(108,'Who did the claim that the Constitution is derived from?','the people',11);

/*Table structure for table `myapp_result` */

DROP TABLE IF EXISTS `myapp_result`;

CREATE TABLE `myapp_result` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mark` bigint(20) NOT NULL,
  `TEST_id` bigint(20) NOT NULL,
  `USER_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_result_TEST_id_d80908d7_fk_myapp_test_id` (`TEST_id`),
  KEY `myapp_result_USER_id_2a0dd949_fk_myapp_user_id` (`USER_id`),
  CONSTRAINT `myapp_result_TEST_id_d80908d7_fk_myapp_test_id` FOREIGN KEY (`TEST_id`) REFERENCES `myapp_test` (`id`),
  CONSTRAINT `myapp_result_USER_id_2a0dd949_fk_myapp_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_result` */

insert  into `myapp_result`(`id`,`mark`,`TEST_id`,`USER_id`) values 
(3,0,4,3),
(5,1,9,7),
(6,1,10,3);

/*Table structure for table `myapp_reviews` */

DROP TABLE IF EXISTS `myapp_reviews`;

CREATE TABLE `myapp_reviews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `review` varchar(300) NOT NULL,
  `rating` varchar(5) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  `type` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_reviews_LOGIN_id_3b1cda10_fk_myapp_login_id` (`LOGIN_id`),
  CONSTRAINT `myapp_reviews_LOGIN_id_3b1cda10_fk_myapp_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_reviews` */

insert  into `myapp_reviews`(`id`,`date`,`review`,`rating`,`LOGIN_id`,`type`) values 
(1,'2023-12-02','review','9',2,''),
(2,'2023-12-12','    review 1','3',4,'staff'),
(3,'2023-12-23','    usr review','5',8,'user'),
(4,'2023-12-23','    usr1 reviews','5',8,'user'),
(5,'2024-02-18','    very useful and user friendly','5',2,'staff'),
(6,'2024-02-21','    ','5',11,'staff');

/*Table structure for table `myapp_staff` */

DROP TABLE IF EXISTS `myapp_staff`;

CREATE TABLE `myapp_staff` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(300) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `housename` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `state` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `proof` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  `current_institution` varchar(100) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_staff_LOGIN_id_73bde0f5_fk_myapp_login_id` (`LOGIN_id`),
  CONSTRAINT `myapp_staff_LOGIN_id_73bde0f5_fk_myapp_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_staff` */

insert  into `myapp_staff`(`id`,`name`,`gender`,`dob`,`photo`,`mail`,`phone`,`housename`,`place`,`district`,`pincode`,`state`,`qualification`,`proof`,`status`,`current_institution`,`LOGIN_id`) values 
(2,'Navanath','male','0000-00-00','','abdd@gmail.com',349874050394,'hno121','Kotooli','Kozhikode',617006,'kerala','degree','','approved','',3),
(3,'Febin','male','2022-01-27','','sfjsjfn@gmail.com',3498734073,'sdj','adll','Kozhikode',693282,'Kerala','degree','','rejected','',1),
(4,'sHANIL','MALE','2023-12-15','','sdlsjdh@gmail.com',948049842,'dfss','dalkm','KKD',52344,'Kerala','PG','','approved','',2),
(5,'Goutham s','male','2023-12-01','/media/stf_photos/20231205-154723-1.jpg','ffxbdqgf443',143215444,'ghghfjhh','gdgcghfg','gfgfhgfgfh',43453,'gfaxfgas','fhjghghgh','/media/stf_proof/20231205-154723-2.jpg','approved','fdfdfdgdgff',4),
(6,'Navanath','Male','2024-01-11','/media/stf_photos/20240128-101700-1.jpg','navu@gmail.com',9847362514,'263','koot','Kozhikode',673006,'Kerala','BSc','/media/stf_proof/20240128-101700-2.jpg','approved','St. Joseph\'s College',9),
(7,'karthik','Male','2003-11-20','/media/stf_photos/20240220-235706-1.jpg','karthik@gmail.com',7234662234,'abcd','ramanattukara','Kozhikode',673005,'kerela','BSc cs','/media/stf_proof/20240220-235706-2.jpg','approved','St. Joseph\'s College',11);

/*Table structure for table `myapp_staff_complaints` */

DROP TABLE IF EXISTS `myapp_staff_complaints`;

CREATE TABLE `myapp_staff_complaints` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `STAFF_id` bigint(20) NOT NULL,
  `USER_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_staff_complaints_STAFF_id_50f623c1_fk_myapp_staff_id` (`STAFF_id`),
  KEY `myapp_staff_complaints_USER_id_170794ff_fk_myapp_user_id` (`USER_id`),
  CONSTRAINT `myapp_staff_complaints_STAFF_id_50f623c1_fk_myapp_staff_id` FOREIGN KEY (`STAFF_id`) REFERENCES `myapp_staff` (`id`),
  CONSTRAINT `myapp_staff_complaints_USER_id_170794ff_fk_myapp_user_id` FOREIGN KEY (`USER_id`) REFERENCES `myapp_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_staff_complaints` */

insert  into `myapp_staff_complaints`(`id`,`complaint`,`status`,`date`,`STAFF_id`,`USER_id`) values 
(1,'Staff Complaint','pending','2023-12-02',2,3),
(2,'complaint against staff1','pending','2023-12-23',5,6);

/*Table structure for table `myapp_test` */

DROP TABLE IF EXISTS `myapp_test`;

CREATE TABLE `myapp_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `testname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `STAFF_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_test_STAFF_id_eac79acd_fk_myapp_staff_id` (`STAFF_id`),
  CONSTRAINT `myapp_test_STAFF_id_eac79acd_fk_myapp_staff_id` FOREIGN KEY (`STAFF_id`) REFERENCES `myapp_staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_test` */

insert  into `myapp_test`(`id`,`testname`,`date`,`time`,`STAFF_id`) values 
(1,'test 1','2023-12-20','17:00:00.000000',5),
(2,'test 1','2024-02-28','09:30:00.000000',6),
(4,'UG test 1','2024-02-17','10:30:00.000000',2),
(5,'UG test 2','2024-02-24','14:18:00.000000',2),
(8,'UG test 7','2024-02-21','10:25:00.000000',7),
(9,'ug test 8','2024-03-05','22:33:00.000000',7),
(10,'UG TEST 9','2024-03-06','11:55:00.000000',7),
(11,'tt','2024-03-06','12:10:00.000000',7),
(12,'ttt','2024-03-06','12:12:00.000000',4);

/*Table structure for table `myapp_testquestions` */

DROP TABLE IF EXISTS `myapp_testquestions`;

CREATE TABLE `myapp_testquestions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL,
  `TEST_id` bigint(20) NOT NULL,
  `question` varchar(300) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_testquestions_TEST_id_d1646c74_fk_myapp_test_id` (`TEST_id`),
  CONSTRAINT `myapp_testquestions_TEST_id_d1646c74_fk_myapp_test_id` FOREIGN KEY (`TEST_id`) REFERENCES `myapp_test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_testquestions` */

insert  into `myapp_testquestions`(`id`,`option1`,`option2`,`option3`,`option4`,`correct_answer`,`TEST_id`,`question`,`type`) values 
(1,'opt1','opt2','opt3','opt4','opt3',4,'What is meant by SCTP','typed'),
(2,'opt1','opt2','opt3','opt4','opt1',4,'what is meant by Deadlock','typed'),
(3,'O1','opt2','opt3','o4','opt2',5,'','typed'),
(7,'process control block','programe control block','process control batch','program control batch','opt1',8,'what is the full form of PCB?','typed'),
(8,'Natural Login Portal','Natural Language Processing','Natural Language programming','Normal Language Processing','opt2',8,'What is the full form of NLP','typed'),
(9,'sfssfsfd','sdfgd','dgdfgegg','sgddg','opt1',8,'','typed'),
(10,'fsdfs','efs','dfs','sfs','opt1',9,'','typed'),
(11,'wfsdsd','sdsdfsdfsd','sdsdffs','sdsdfv','opt2',9,'','typed'),
(12,'A','B','C','D','opt1',10,'','typed'),
(13,'Answer 1','o2','o3','opt4','opt1',11,'','typed'),
(14,'opt1','programe control block','answer3','sgddg','opt2',12,'what is the full form of PCB?','typed');

/*Table structure for table `myapp_user` */

DROP TABLE IF EXISTS `myapp_user`;

CREATE TABLE `myapp_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(300) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `place` varchar(100) NOT NULL,
  `current_education_status` varchar(100) NOT NULL,
  `LOGIN_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_user_LOGIN_id_da832ded_fk_myapp_login_id` (`LOGIN_id`),
  CONSTRAINT `myapp_user_LOGIN_id_da832ded_fk_myapp_login_id` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_user` */

insert  into `myapp_user`(`id`,`name`,`gender`,`dob`,`photo`,`mail`,`phone`,`place`,`current_education_status`,`LOGIN_id`) values 
(3,'Goutham','male','2003-12-20','','abcd@gmail.com',9866747685,'Kozhikode','Degree',2),
(6,'Shiva a karthik','male','2023-12-08','/media/usr_photos/20231223-102312-1.jpg','shivaak@gmail.com',2342343422,'vadakara','Devagiri',8),
(7,'john','male','2003-10-29','/media/usr_photos/20240220-235507-1.jpg','john@gmail.com',6353563623,'adivaaram','Devagiri',10),
(8,'sundararajan','Male','1966-05-22','/media/usr_photos/20240223-210448-1.jpg','ass@gmail.com',45354345556,'vengeri','madappally clg',12);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
