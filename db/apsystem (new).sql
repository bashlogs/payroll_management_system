-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 12:59 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'admin', '$2y$10$fCOiMky4n5hCJx3cpsG20Od4wHtlkCLKmO6VLobJNRIg9ooHTkgjK', 'admin', ' ', 'admin.jpeg', '2018-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
`id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `status` int(1) NOT NULL,
  `time_out` time NOT NULL,
  `num_hr` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `date`, `time_in`, `status`, `time_out`, `num_hr`) VALUES
(13, 1, '2018-04-27', '08:00:00', 1, '17:00:00', 8),
(14, 1, '2018-04-28', '08:00:00', 1, '17:00:00', 8),
(15, 1, '2018-05-04', '08:00:00', 1, '17:00:00', 8),
(16, 1, '2018-05-02', '08:00:00', 1, '17:00:00', 8),
(17, 1, '2018-05-01', '08:00:00', 1, '17:00:00', 8),
(18, 1, '2018-05-03', '08:00:00', 1, '17:00:00', 8),
(74, 1, '2018-04-30', '08:00:00', 1, '16:44:23', 7.7333333333333),
(75, 3, '2018-04-18', '08:00:00', 1, '17:00:00', 8),
(76, 4, '2018-04-19', '08:00:00', 1, '17:00:00', 8),
(77, 4, '2018-04-27', '08:00:00', 1, '17:00:00', 7),
(78, 4, '2018-04-28', '08:00:00', 1, '17:00:00', 8),
(79, 4, '2018-05-01', '08:30:00', 1, '17:00:00', 8),
(80, 4, '2018-05-03', '08:00:00', 1, '17:00:00', 0),
(81, 4, '2018-05-05', '08:00:00', 1, '17:00:00', 9),
(83, 4, '2018-05-31', '08:00:00', 1, '18:00:00', 8),
(84, 4, '2018-05-18', '08:00:00', 1, '17:00:00', 7),
(85, 4, '2018-05-09', '09:00:00', 1, '18:00:00', 8),
(86, 5, '2023-04-15', '11:00:00', 0, '19:00:00', 5),
(87, 5, '2023-05-16', '11:15:00', 0, '21:00:00', 4.75),
(88, 5, '2023-05-31', '07:00:00', 1, '21:00:00', 7.75),
(89, 5, '2023-05-23', '09:00:00', 0, '21:00:00', 7),
(90, 4, '2023-05-01', '12:00:00', 0, '20:00:00', 5),
(91, 4, '2023-04-28', '09:00:00', 1, '12:00:00', 3),
(92, 10, '2023-03-17', '12:15:00', 0, '20:30:00', 5.75),
(93, 10, '2023-03-02', '09:15:00', 1, '20:15:00', 8),
(94, 10, '2023-05-01', '22:15:00', 0, '21:15:00', 3.25),
(95, 10, '2023-04-28', '09:15:00', 1, '19:15:00', 8),
(96, 10, '2023-02-14', '12:15:00', 0, '22:15:00', 5.75),
(97, 5, '2023-02-06', '09:30:00', 0, '22:00:00', 6.5),
(98, 1, '2023-02-15', '12:15:00', 0, '14:15:00', 2),
(99, 3, '2023-02-15', '11:15:00', 0, '21:45:00', 4.75),
(100, 4, '2023-02-15', '08:15:00', 1, '19:15:00', 8),
(101, 3, '2023-02-21', '08:45:00', 0, '21:15:00', 7.25),
(102, 10, '2023-02-17', '09:15:00', 1, '22:15:00', 8),
(103, 9, '2023-05-01', '09:15:00', 0, '21:30:00', 7.75),
(104, 9, '2023-04-28', '10:00:00', 0, '21:45:00', 7),
(105, 9, '2023-01-11', '09:15:00', 0, '18:00:00', 7.75),
(106, 4, '2023-01-16', '08:15:00', 1, '19:15:00', 8),
(107, 3, '2023-01-11', '08:00:00', 1, '15:15:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cashadvance`
--

CREATE TABLE IF NOT EXISTS `cashadvance` (
`id` int(11) NOT NULL,
  `date_advance` date NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashadvance`
--

INSERT INTO `cashadvance` (`id`, `date_advance`, `employee_id`, `amount`) VALUES
(2, '2023-05-02', '1', 1000),
(3, '2023-05-02', '1', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE IF NOT EXISTS `deductions` (
`id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deductions`
--

INSERT INTO `deductions` (`id`, `description`, `amount`) VALUES
(1, 'SSS', 100),
(2, 'Pagibig', 150),
(3, 'PhilHealth', 150);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `firstname`, `lastname`, `address`, `birthdate`, `contact_info`, `gender`, `position_id`, `schedule_id`, `photo`, `created_on`) VALUES
(1, 'ABC123456789', 'Vaishnavi', 'Arthamwar', 'Nanded City', '2003-12-25', '9823582454', 'Female', 1, 2, 'desktop.jpg', '2018-04-28'),
(3, 'DYE473869250', 'Rohit', 'Jyoti', 'Hadapsar', '2003-10-21', '09123456789', 'Female', 2, 2, '', '2018-04-30'),
(4, 'JIE625973480', 'Akshay', 'Chame', 'Latur', '2003-10-15', '09468029840', 'Male', 2, 3, '', '2018-04-30'),
(5, 'JPK368470195', 'Mayur', 'Khadde', 'Pune', '2004-05-16', '9468029823', 'Male', 4, 2, '', '2023-05-01'),
(6, 'ZFX379684215', 'Shrutika', 'Gade', 'Pune\r\n', '2003-10-10', '9888829823', 'Female', 5, 2, '', '2023-05-01'),
(7, 'VXP157039684', 'Varad ', 'Uplainchwar', 'Pune', '2003-10-01', '9552829823', 'Male', 4, 3, '', '2023-05-01'),
(8, 'PVL674328059', 'Gourav', 'Suram', 'Pune', '2002-05-16', '9552829098', 'Male', 1, 4, '', '2023-05-01'),
(9, 'GEB538247091', 'Vaidehi', 'Ligde', 'Pune', '2003-05-10', '8768029840', 'Female', 6, 3, '', '2023-05-01'),
(10, 'PYZ671342508', 'Rutuja', 'Chavan', 'Pune', '2003-07-08', '9552826767', 'Female', 5, 4, '', '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `overtime`
--

CREATE TABLE IF NOT EXISTS `overtime` (
`id` int(11) NOT NULL,
  `employee_id` varchar(15) NOT NULL,
  `hours` double NOT NULL,
  `rate` double NOT NULL,
  `date_overtime` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `overtime`
--

INSERT INTO `overtime` (`id`, `employee_id`, `hours`, `rate`, `date_overtime`) VALUES
(1, '3', 4.25, 100, '2023-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
`id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `description`, `rate`) VALUES
(1, 'Programmer', 100),
(2, 'Writer', 50),
(3, 'Graphic Designer', 150),
(4, 'Web Developer', 180),
(5, 'Photographer', 100),
(6, 'Videographer', 120);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
`id` int(11) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `time_in`, `time_out`) VALUES
(1, '07:00:00', '16:00:00'),
(2, '08:15:00', '17:00:00'),
(3, '09:00:00', '18:00:00'),
(4, '10:00:00', '19:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashadvance`
--
ALTER TABLE `cashadvance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime`
--
ALTER TABLE `overtime`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `cashadvance`
--
ALTER TABLE `cashadvance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `overtime`
--
ALTER TABLE `overtime`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
