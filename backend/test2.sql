-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2017 at 09:20 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test2`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `Dept_Id` int(4) NOT NULL,
  `Dept_Name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dept_Id`, `Dept_Name`) VALUES
(1, 'SAP'),
(2, 'JAVA'),
(3, '.NET'),
(4, 'Mainframe'),
(5, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `Emp_Id` int(6) NOT NULL,
  `Emp_Name` varchar(30) NOT NULL,
  `Role_Id` int(4) NOT NULL,
  `Dept_Id` int(4) NOT NULL,
  `DoJ` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_Id`, `Emp_Name`, `Role_Id`, `Dept_Id`, `DoJ`) VALUES
(1, 'Kd', 4, 4, '2015-11-29 12:33:15'),
(3, 'Agnivesh', 5, 2, '2015-11-29 12:39:12'),
(4, 'Harshit', 2, 5, '2015-11-29 13:23:57'),
(5, 'On Demand', 1, 4, '2015-11-29 13:26:28'),
(6, 'khalid', 2, 4, '2017-08-16 06:10:04'),
(7, 'subham', 2, 4, '2017-08-21 05:48:21'),
(26, 'shuruti', 2, 1, '2017-08-21 09:58:11'),
(27, 'Santosh', 3, 1, '2017-08-21 10:17:04'),
(28, 'Santosh1', 3, 1, '2017-08-21 10:22:10'),
(29, 'Ahitisham', 2, 3, '2017-09-18 05:41:09'),
(30, 'Sultan', 1, 3, '2017-09-18 09:11:39'),
(36, 'radha', 1, 2, '2017-09-20 08:46:32'),
(37, 'kumar', 4, 4, '2017-10-04 06:11:53'),
(38, 'testere', 1, 2, '2017-10-04 07:34:08'),
(39, 'ramesh', 1, 2, '2017-10-04 09:02:09');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `Role_Id` int(4) NOT NULL,
  `Role_Name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Role_Id`, `Role_Name`) VALUES
(1, 'Associate'),
(2, 'Senior Associate'),
(3, 'Consultant'),
(4, 'Lead Consultant'),
(5, 'Senior Consultant');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL,
  `first_name` varchar(22) NOT NULL,
  `last_name` varchar(22) NOT NULL,
  `gender` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `company_name` varchar(22) NOT NULL,
  `phone_no` varchar(22) NOT NULL,
  `about` text NOT NULL,
  `active` bit(1) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `first_name`, `last_name`, `gender`, `email`, `company_name`, `phone_no`, `about`, `active`, `created_date`, `modified_date`) VALUES
(1, 'ahitisham', 'ahamad', 'male', 'ahitisham.a@gmail.com', 'caritor soltuions', '9738187015', '', b'0', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ahitisham', 'ahamad', 'male', 'ahitisham.a@gmail.com', 'caritor soltuions', '9738187015', '', b'1', '2017-08-03 00:00:00', '2017-08-24 00:00:00'),
(3, 'sultan', 'ahamd', 'male', 'sultan.a@gmail.com', 'ags infotech', '9612457825', '', b'0', '2017-08-14 16:09:19', '0000-00-00 00:00:00'),
(4, 'sultan', 'ahamd', 'male', 'sultan.a@gmail.com', 'ags infotech', '9612457825', '', b'0', '2017-08-14 16:09:24', '0000-00-00 00:00:00'),
(5, 'iliyas', 'ahamd', 'male', 'iliyas.i@gmail.com', 'ags info tech', '9305458242', '', b'0', '2017-08-14 16:10:28', '2017-08-14 16:10:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`) VALUES
(1, 'ahitisham'),
(2, 'sultan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_Id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_Id`),
  ADD KEY `Dept_Id` (`Dept_Id`),
  ADD KEY `Role_Id` (`Role_Id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Role_Id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Dept_Id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emp_Id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Role_Id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `emp_dept_mapping` FOREIGN KEY (`Dept_Id`) REFERENCES `department` (`Dept_Id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_role_mapping` FOREIGN KEY (`Role_Id`) REFERENCES `role` (`Role_Id`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
