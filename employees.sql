-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2018 at 11:15 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mis`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `empId` int(11) NOT NULL,
  `empCode` varchar(20) NOT NULL,
  `empName` varchar(20) NOT NULL,
  `empType` varchar(20) NOT NULL,
  `empRole` varchar(20) NOT NULL,
  `empExpYear` varchar(20) NOT NULL,
  `joinDate` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `KeySkills` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empId`, `empCode`, `empName`, `empType`, `empRole`, `empExpYear`, `joinDate`, `mobile`, `email`, `gender`, `KeySkills`) VALUES
(1, 'CS516', 'Sultan Ahamad', 'Developer', 'web developer', '', '', '', '', '', ''),
(2, 'CS516', 'Sultan Ahamad', 'Developer', 'web developer', '', '', '', '', '', ''),
(3, 'CS518', 'Sultan Ahamad', 'Developer', 'web developer', '', '', '', '', '', ''),
(4, '12', 'a', 'Full-time', 'Software Developer', '1', '2017-10-16T08:03:32.', '514231345', 'a@gmail.com', 'male', ''),
(5, 'cs514', 'Ram Anuja', 'Full-time', 'Product Mgr', '2', '2017-10-18T13:56:10.', '9865324512', 'ram.@gmail.com', 'male', ''),
(6, 'CS512', 'Renu', 'Part-time', 'Team Lead/Tech Lead', '2', '2017-10-19T05:45:51.', '9378152478', 'romika@gmail.com', 'female', ''),
(7, '', '', '', '', '', '2017-10-24T05:58:29.', '', '', '', ''),
(8, '34436', '34634', 'Full-time', 'Software Developer', '1', '2017-10-24T06:07:38.', '34346346', '3646@gmail.com', 'male', ''),
(9, 'xzxczv', 'cxzvxcv', 'Full-time', '', '', '2017-10-24T06:19:02.', '', '', '', ''),
(10, 'tertert', '', '', '', '', '2017-10-24T06:40:05.', '', '', '', ''),
(11, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(12, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(13, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(14, '', '', '', '', '', '2017-10-24T06:52:01.', '', '', '', ''),
(15, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(16, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(17, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(18, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(19, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(20, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(21, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', 'keyskills'),
(22, '', '', '', '', '', '2017-10-24T07:03:19.', 'hgjghj', 'ghjghjhg', '', 'angular,css,design'),
(23, 'cs123', 'Raju', 'Full-time', 'Software Developer', '2', '2017-10-19T07:06:29.', '9345821042', 'raju@gmail.com', 'male', 'angular,css,design,html,ia,javascript'),
(24, 'CS522', 'Ram Anuja', 'Full-time', 'Product Mgr', '6', '2017-10-27T07:53:25.', '9818154012', 'ram.r@gmail.com', 'male', 'angular,design,html,javascript,mech,meteor,plumbing,python,rails,repair,react,ruby,ux'),
(25, '', '', '', '', '', '2017-10-24T07:56:26.', '', '', '', ''),
(26, '', '', '', '', '', '2017-10-24T07:58:20.', '', '', '', ''),
(27, '', '', '', '', '', '2017-10-24T08:02:31.', '', '', '', ''),
(28, '', '', '', '', '', '2017-10-24T08:03:44.', '', '', '', ''),
(29, '', '', '', '', '', '2017-10-24T08:04:11.', '', '', '', ''),
(30, '', '', '', '', '', '2017-10-24T08:04:15.', '', '', '', ''),
(31, '', '', '', '', '', '2017-10-24T08:05:24.', '', '', '', ''),
(32, 'CS897', 'Shuruthi', 'Full-time', 'System Analyst', '4', '2017-10-19T09:34:02.', '9865325632', 'shuruthi@gmail.com', 'female', 'css,ember,ia,javascript,meteor,node'),
(33, 'CS897', 'Shuruthi', 'Full-time', 'System Analyst', '4', '2017-10-19T09:34:02.', '9865325632', 'shuruthi@gmail.com', 'female', 'css,ember,ia,javascript,meteor,node'),
(34, '', '', '', '', '', '2017-10-24T09:42:46.', '', '', '', ''),
(35, '', '', '', '', '', '2017-10-24T09:42:46.', '', '', '', ''),
(36, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(37, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(38, 'CS512', 'Ahitisham', 'Full-time', 'Software Developer', '2', '2017-10-11T13:28:05.', '9738187015', 'ahitisham.a@gmail.co', 'male', 'angular,design,ember,ia,javascript,meteor'),
(39, 'CS218', 'Ravu', 'Full-time', 'Software Developer', '1', '2017-10-10T06:47:04.', '39858421571', 'sdfd@', 'male', 'angular,design,ia'),
(40, '', '', '', '', '', '2017-10-25T06:48:43.', '', '', '', 'angular,design,html,javascript'),
(41, '', '', '', '', '', '2017-10-25T06:49:32.', '', '', '', 'design,ember,ia,mech,html'),
(42, '', '', '', '', '', '2017-10-25T06:49:56.', '', '', '', 'css,ember,ia,javascript'),
(43, '', '', '', '', '', '2017-10-25T06:49:56.', '', '', '', 'css,ember,ia,javascript'),
(44, '', '', '', '', '', '2017-10-25T06:52:09.', '', '', '', ''),
(45, '', '', '', '', '', '2017-10-25T06:52:54.', '', '', '', ''),
(46, '', '', '', '', '', '2017-10-25T06:52:54.', '', '', '', ''),
(47, '', '', '', '', '', '2017-10-25T06:52:54.', '', '', '', ''),
(48, '', '', '', '', '', '2017-10-25T06:52:54.', '', '', '', ''),
(49, '', '', '', '', '', '2017-10-25T07:26:52.', '', '', '', ''),
(50, '', '', '', '', '', '2018-01-29T10:25:53.', '', '', '', ''),
(51, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(52, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(53, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(54, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(55, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(56, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(57, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(58, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(59, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(60, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(61, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(62, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(63, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(64, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(65, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(66, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(67, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(68, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(69, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(70, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(71, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(72, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(73, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(74, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(75, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(76, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(77, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(78, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(79, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(80, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(81, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(82, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(83, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(84, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(85, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(86, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(87, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(88, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(89, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(90, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(91, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(92, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(93, '33', 'Gulfsa', 'Full-time', 'Software Developer', '3', '2018-01-17T12:31:19.', '3659823125', 'nagma.n@gmail.com', 'female', 'css,html,design,ember,javascript,mech,meteor'),
(94, 'TEST', 'TEST', 'Full-time', 'Software Developer', '2', '2017-10-27T06:49:17.', 'TEST', 'TEST', 'male', ''),
(95, '1', '', '', '', '', '2018-02-05T07:00:21.', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `empId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
