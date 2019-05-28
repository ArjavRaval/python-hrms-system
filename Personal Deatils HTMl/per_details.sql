-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2019 at 07:35 AM
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
-- Table structure for table `per_details`
--

CREATE TABLE `per_details` (
  `e_id` int(11) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Blood_Grp` varchar(255) NOT NULL,
  `Addr_Line_1` varchar(255) NOT NULL,
  `Addr_Line_2` varchar(255) NOT NULL,
  `State` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `PIN` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `per_details`
--

INSERT INTO `per_details` (`e_id`, `Gender`, `Blood_Grp`, `Addr_Line_1`, `Addr_Line_2`, `State`, `City`, `PIN`) VALUES
(1000271, 'male', 'A+ve', '32 2nd cross', 'ramaiah nagar ks layout', 'Bengluru', 'Karnataka', 560078),
(1000253, 'female', 'A+ve', '33rd cross', 'mangamma colony', 'Bhubaneswar', 'Odissa', 583458),
(1000386, 'male', 'O+ve', '212 ashoka residency', 'kormangala', 'Bengluru', 'Karnataka', 560095),
(1000296, 'female', 'AB+ve', '8th cross', 'BTM layout', 'Bengluru', 'Karnataka', 589125),
(1000254, 'male', 'B+ve', 'post kambagi ', 'hanuman colony', 'Vijayapur', 'Karnataka', 586125),
(1000226, 'female', 'A+ve', 'BTM 1st stage', 'Btm', 'Bengluru', 'Karnataka', 560068),
(1000286, 'female', 'O-ve', '32 cross', 'kormangala', 'Chennai', 'Tamilanadu', 563147);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
