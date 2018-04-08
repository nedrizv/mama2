-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 10:59 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mama_brass`
--
CREATE DATABASE IF NOT EXISTS `mama_brass` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mama_brass`;

-- --------------------------------------------------------

--
-- Table structure for table `ezl_account`
--

DROP TABLE IF EXISTS `ezl_account`;
CREATE TABLE `ezl_account` (
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  `description_type` enum('Sale','Pay','Return','Discount') DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `account_date` date NOT NULL,
  `created_on` datetime NOT NULL,
  `user_id` int(6) NOT NULL,
  `balance` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezl_account`
--

INSERT INTO `ezl_account` (`account_id`, `customer_id`, `account_no`, `description_type`, `amount`, `account_date`, `created_on`, `user_id`, `balance`) VALUES
(1, 1, 'R001', 'Sale', 1000, '2017-08-02', '2017-08-10 06:52:00', 1, 0),
(2, 1, 'R0032', 'Pay', 500, '2017-08-06', '2017-08-10 06:52:46', 1, 0),
(3, 1, 'R0036', 'Return', 200, '2017-08-10', '2017-08-10 06:53:20', 1, 0),
(4, 11, '2334', 'Sale', 2000, '2017-09-01', '2017-09-01 15:27:07', 1, 0),
(5, 11, '65443', 'Sale', 6000, '2017-09-02', '2017-09-01 15:29:50', 1, 0),
(6, 11, '543', 'Pay', 7910, '2017-09-05', '2017-09-01 15:31:15', 1, 0),
(7, 11, '234234', '', 90, '2017-09-12', '2017-09-03 12:23:06', 1, 0),
(8, 1, '213', '', 100, '2017-09-15', '2017-09-05 21:27:56', 1, 0),
(9, 1, '123', '', 700, '2017-09-22', '2017-09-05 21:30:02', 1, 0),
(10, 2, '111', 'Discount', 100, '2017-09-20', '2017-09-05 21:38:24', 1, 0),
(11, 2, '1', 'Discount', 1, '2017-09-06', '2017-09-05 21:46:29', 1, 12),
(12, 2, '1212', 'Discount', 100, '2017-09-19', '2017-09-05 21:50:17', 1, 0),
(13, 2, '1212', 'Discount', 100, '2017-09-19', '2017-09-05 21:50:18', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ezl_customer`
--

DROP TABLE IF EXISTS `ezl_customer`;
CREATE TABLE `ezl_customer` (
  `customer_id` int(11) NOT NULL,
  `company_name` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `tel_no` varchar(30) NOT NULL,
  `mob_no` varchar(15) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezl_customer`
--

INSERT INTO `ezl_customer` (`customer_id`, `company_name`, `address`, `tel_no`, `mob_no`, `contact_person`, `created_on`, `updated_on`, `user_id`) VALUES
(1, 'Ezeelive Technologies Pvt Ltd', '302, Datta Business Park, Evershine, Vasai East', '', '9822117730', 'Rajeev Sharma', '2017-08-09 23:44:11', '2017-08-09 23:47:03', 1),
(2, 'Company 1', 'Andheri', '9879879889', '98979879898', 'Sayed', '2017-09-01 11:26:55', '2017-09-01 11:26:55', 1),
(3, 'A ltd', '', '', '9876543219', 'zaman', '2017-09-01 11:34:56', '2017-09-01 11:35:40', 1),
(4, 'A ltd', 'mumbai', '1234567', '9876543210', 'zaman', '2017-09-01 11:34:56', '2017-09-01 11:38:04', 1),
(5, 'A ltd', '', '', '9876543210', 'zaman', '2017-09-01 11:34:57', '2017-09-01 11:34:57', 1),
(6, 'A ltd', '', '', '9876543210', 'zaman', '2017-09-01 11:34:57', '2017-09-01 11:34:57', 1),
(7, 'A ltd', '', '', '9876543210', 'zaman', '2017-09-01 11:34:58', '2017-09-01 11:34:58', 1),
(8, 'kt ', 'test', '', '9876567', 'test1', '2017-09-01 11:39:08', '2017-09-01 11:39:08', 1),
(9, 'sytel', '', '', '98765433', 'pasd', '2017-09-01 11:40:00', '2017-09-01 11:40:00', 1),
(10, 'asdas', '', '', '23423423423', 'asdasd', '2017-09-01 11:41:29', '2017-09-01 11:41:29', 1),
(11, 'AL SAAD TRADING EST', 'MADINATUL OMMAL AREA. DAMMAM', '016267718819', '0286662770', 'MOHANa', '2017-09-01 15:18:03', '2017-09-01 15:18:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ezl_user`
--

DROP TABLE IF EXISTS `ezl_user`;
CREATE TABLE `ezl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `title` enum('Mr.','Mrs.','Ms.','Dr.','Prof.') NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(50) NOT NULL,
  `auth_key` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_parent` int(6) NOT NULL,
  `user_type` varchar(45) NOT NULL DEFAULT '',
  `dob` varchar(45) NOT NULL DEFAULT '',
  `age` varchar(45) NOT NULL DEFAULT '',
  `department_id` int(6) NOT NULL DEFAULT '0',
  `place_id` int(5) UNSIGNED NOT NULL DEFAULT '0',
  `blood_group_id` varchar(45) NOT NULL DEFAULT '',
  `gender` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ezl_user`
--

INSERT INTO `ezl_user` (`user_id`, `username`, `password`, `title`, `name`, `address`, `contact_no`, `email`, `status`, `profile_image`, `auth_key`, `created_at`, `updated_at`, `is_parent`, `user_type`, `dob`, `age`, `department_id`, `place_id`, `blood_group_id`, `gender`) VALUES
(1, 'admin', '123456', 'Mr.', 'Naved Rizvi', 'Ghatkopar', '98234234444', 'naweed.rizvi@gmail.com', 1, 'photo.jpg', NULL, '2017-07-26 00:00:00', '2018-04-08 13:35:02', 0, '', '', '', 0, 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ezl_account`
--
ALTER TABLE `ezl_account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `ezl_customer`
--
ALTER TABLE `ezl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `ezl_user`
--
ALTER TABLE `ezl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ezl_account`
--
ALTER TABLE `ezl_account`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ezl_customer`
--
ALTER TABLE `ezl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ezl_user`
--
ALTER TABLE `ezl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
