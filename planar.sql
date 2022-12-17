-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2022 at 11:09 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `planar`
--
CREATE DATABASE IF NOT EXISTS `planar` DEFAULT CHARACTER SET utf32 COLLATE utf32_bin;
USE `planar`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf32_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf32_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf32_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add collections', 7, 'add_collections'),
(26, 'Can change collections', 7, 'change_collections'),
(27, 'Can delete collections', 7, 'delete_collections'),
(28, 'Can view collections', 7, 'view_collections'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add items', 9, 'add_items'),
(34, 'Can change items', 9, 'change_items'),
(35, 'Can delete items', 9, 'delete_items'),
(36, 'Can view items', 9, 'view_items'),
(37, 'Can add contact', 8, 'add_contact'),
(38, 'Can change contact', 8, 'change_contact'),
(39, 'Can delete contact', 8, 'delete_contact'),
(40, 'Can view contact', 8, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf32_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf32_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf32_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf32_bin NOT NULL,
  `email` varchar(254) COLLATE utf32_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$gng6pbdanMYq35ez9Xj7k7$Rnlx3ezWiYnM/bujzsk1rjLLQbrqUp/ERjlhp7YDdQs=', '2022-12-16 17:59:54.022047', 0, 'bob', 'vegan', 'bob', 'bob@mail.com', 0, 1, '2022-12-16 10:58:28.675403');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf32_bin DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf32_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf32_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf32_bin NOT NULL,
  `model` varchar(100) COLLATE utf32_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'shop', 'collections'),
(8, 'shop', 'contact'),
(9, 'shop', 'items');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf32_bin NOT NULL,
  `name` varchar(255) COLLATE utf32_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-14 15:41:38.958519'),
(2, 'auth', '0001_initial', '2022-12-14 15:41:48.214004'),
(3, 'admin', '0001_initial', '2022-12-14 15:41:49.629948'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-14 15:41:49.660889'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-14 15:41:49.693874'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-14 15:41:50.273728'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-14 15:41:51.010587'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-14 15:41:51.119653'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-14 15:41:51.149166'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-14 15:41:53.831284'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-14 15:41:53.855838'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-14 15:41:53.887726'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-14 15:41:53.998540'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-14 15:41:54.098761'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-14 15:41:54.207580'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-14 15:41:54.236916'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-14 15:41:54.333278'),
(18, 'sessions', '0001_initial', '2022-12-14 15:41:54.693232'),
(19, 'shop', '0001_initial', '2022-12-14 15:41:55.497213'),
(20, 'shop', '0002_feedback_phone', '2022-12-16 13:01:29.286758'),
(21, 'shop', '0003_rename_feedback_contact', '2022-12-16 13:34:54.313268'),
(22, 'shop', '0004_alter_collections_up_date_alter_items_up_date', '2022-12-16 13:57:38.017647');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf32_bin NOT NULL,
  `session_data` longtext COLLATE utf32_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pzqu6sn9jjuwa42h3lyclhqsw4xu76kx', '.eJxVjMsKwjAQRX8lzLoEE9u0ceneDxArYdKZPnwk0LS4EP_dFhR0cTf3nnue4HCeejcnHt1AsAMF2W_nsblyWAe6YOiibGKYxsHLFZGfNclDJL7tP-yfoMfUL2-jlNU-J81trqlq29Iyamu3VlHJlaeqVLZhU-SGNojKF6gZraHKKzbbZpXeOSXsOC2606kG5y4phm9bQyY2mdBLajjGWeDIIsSHuMWuYxJDEJiEj17WcD7D6w06RFGM:1p6Ezy:4gi5FmZy1WA6fhDsN0L1zass7UCUiBvUHo5urTxz8xE', '2022-12-30 17:59:54.100829');

-- --------------------------------------------------------

--
-- Table structure for table `shop_collections`
--

CREATE TABLE IF NOT EXISTS `shop_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `desc` varchar(5000) COLLATE utf32_bin NOT NULL,
  `img` varchar(100) COLLATE utf32_bin DEFAULT NULL,
  `up_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `shop_collections`
--

INSERT INTO `shop_collections` (`id`, `name`, `desc`, `img`, `up_date`) VALUES
(4, 'Minimal Bedroom Black and White', 'Minimal Bedroom Black and White', 'collections/br4.jpg', '2022-12-16 16:21:19.202575'),
(5, 'Living Room Modern Black', 'Living Room Modern Black', 'collections/lr4.jpg', '2022-12-16 16:22:07.739561'),
(6, 'Study Room B&W Modern', 'Study Room B&W Modern', 'collections/st1.webp', '2022-12-16 17:56:21.497094'),
(7, 'Living Room Minimal White Stone', 'Living Room Minimal White Stone', 'collections/lr6.png', '2022-12-16 17:57:06.662481'),
(8, 'Minimal Bedroom Modern White', 'Minimal Bedroom Modern White', 'collections/br2.jpg', '2022-12-16 18:01:04.063161');

-- --------------------------------------------------------

--
-- Table structure for table `shop_contact`
--

CREATE TABLE IF NOT EXISTS `shop_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf32_bin DEFAULT NULL,
  `email` longtext COLLATE utf32_bin DEFAULT NULL,
  `msg` longtext COLLATE utf32_bin DEFAULT NULL,
  `phone` longtext COLLATE utf32_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone` (`phone`(768)),
  KEY `phone_2` (`phone`(768)),
  KEY `phone_3` (`phone`(768))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `shop_contact`
--

INSERT INTO `shop_contact` (`id`, `name`, `email`, `msg`, `phone`) VALUES
(1, 'User One', 'one@user', 'Message 1 one', '0198389380298');

-- --------------------------------------------------------

--
-- Table structure for table `shop_items`
--

CREATE TABLE IF NOT EXISTS `shop_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `desc` varchar(5000) COLLATE utf32_bin NOT NULL,
  `img` varchar(100) COLLATE utf32_bin DEFAULT NULL,
  `up_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
