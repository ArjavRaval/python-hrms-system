-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 01:05 PM
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
-- Database: `hrms`
--

-- --------------------------------------------------------

--
-- Table structure for table `org_details`
--

CREATE TABLE `org_details` (
  `e_id` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `per_email` varchar(30) NOT NULL,
  `org_email` varchar(30) NOT NULL,
  `DOJ` date NOT NULL,
  `desig_id` varchar(30) NOT NULL,
  `ph_num` int(12) NOT NULL,
  `depart_id` varchar(30) NOT NULL,
  `report_man` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_details`
--

INSERT INTO `org_details` (`e_id`, `First_Name`, `Last_Name`, `per_email`, `org_email`, `DOJ`, `desig_id`, `ph_num`, `depart_id`, `report_man`) VALUES
(1000226, 'bhavya', 'chalapathi', 'bhavya@gmail.com', 'bhavya@redeemsystems.com', '2018-01-01', '6', 456789132, '5', 'Akash'),
(1000253, 'sruthi', 'venkatesan', 'sruthi@gmail.com', 'sruthi@redeemsystems.com', '2018-11-20', '6', 654613211, '5', 'Akash'),
(1000271, 'Vikas', 'Vasisht', 'vikas.vasisht666@gmail.com', 'vikas.vasisht@redeemsystems.co', '2018-12-31', '6', 953848030, '5', 'Akash'),
(1000272, 'Don', 'Jose', 'donjose@gmail.com', 'donjose@redeemsystems.com', '2019-05-02', '0', 807, '0', 'Akash'),
(1000272, 'Vikas', 'deshpande', 'rockervicky5@gmail.com', 'rockervicky5@gmail.com', '2019-05-02', '0', 2147483647, '0', 'Akash'),
(0, '', '', '', '', '0000-00-00', '0', 0, '0', ''),
(1000272, 'Vikas', 'deshpande', 'rockervicky5@gmail.com', 'rockervicky5@gmail.com', '2019-05-02', 'Trainee Engg', 2147483647, 'IIOT', 'Akash'),
(1000272, 'Vikas', 'Vasisht', 'rockervicky5@gmail.com', 'rockervicky5@gmail.com', '2019-05-02', 'Trainee Engg', 2147483647, 'IIOT', 'Akash'),
(1000258, 'Vikas', 'Vasisht', 'rockervicky5@gmail.com', 'rockervicky5@gmail.com', '2019-05-14', 'Trainee Engg', 2147483647, 'IIOT', 'Akash');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
