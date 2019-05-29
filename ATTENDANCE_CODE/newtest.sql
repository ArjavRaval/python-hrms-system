-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 01:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `e_id` int(11) NOT NULL,
  `RFID_num` int(11) NOT NULL,
  `Date` date NOT NULL,
  `In_Time` time NOT NULL DEFAULT '00:00:00',
  `Out_Time` time NOT NULL DEFAULT '00:00:00',
  `Work_hours` time NOT NULL DEFAULT '00:00:00',
  `Punch_In` time NOT NULL DEFAULT '00:00:00',
  `Punch_Out` time NOT NULL DEFAULT '00:00:00',
  `Punch_hours` time NOT NULL DEFAULT '00:00:00',
  `Total` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`e_id`, `RFID_num`, `Date`, `In_Time`, `Out_Time`, `Work_hours`, `Punch_In`, `Punch_Out`, `Punch_hours`, `Total`) VALUES
(1006, 0, '2019-05-28', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '08:00:00', '00:00:00'),
(1007, 0, '2019-05-08', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '00:00:00', '00:00:00'),
(1008, 0, '2019-05-29', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '01:00:00', '00:00:00'),
(1009, 0, '2019-05-29', '09:00:00', '19:00:00', '10:00:00', '10:00:00', '00:00:00', '-10:00:00', '03:00:00'),
(1010, 0, '2019-05-29', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '01:00:00', '00:00:00'),
(1011, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:30:00', '09:30:00', '00:00:00'),
(1012, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '16:00:00', '00:00:00', '00:00:00'),
(1013, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:00:00', '09:00:00', '00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`e_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
