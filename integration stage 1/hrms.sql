-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2019 at 02:48 PM
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
-- Table structure for table `admin_login_creds`
--

CREATE TABLE `admin_login_creds` (
  `e_ID` int(11) NOT NULL,
  `username` text,
  `Password` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login_creds`
--

INSERT INTO `admin_login_creds` (`e_ID`, `username`, `Password`) VALUES
(1000133, '1994sayantansen@gmail.com', 123);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `e_id` int(11) NOT NULL,
  `RFID_num` int(11) NOT NULL,
  `Date` date NOT NULL,
  `In_Time` time DEFAULT '00:00:00',
  `Out_Time` time DEFAULT '00:00:00',
  `Work_hours` time NOT NULL DEFAULT '00:00:00',
  `Punch_In` time NOT NULL DEFAULT '00:00:00',
  `Punch_Out` time NOT NULL DEFAULT '00:00:00',
  `Punch_hours` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`e_id`, `RFID_num`, `Date`, `In_Time`, `Out_Time`, `Work_hours`, `Punch_In`, `Punch_Out`, `Punch_hours`) VALUES
(0, 0, '0000-00-00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00', '00:00:00'),
(1006, 0, '2019-05-28', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '08:00:00'),
(1007, 0, '2019-05-08', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '00:00:00'),
(1008, 0, '2019-05-29', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '01:00:00'),
(1009, 0, '2019-05-29', '09:00:00', '19:00:00', '10:00:00', '10:00:00', '00:00:00', '-10:00:00'),
(1010, 0, '2019-05-29', '11:00:00', '12:00:00', '01:00:00', '10:00:00', '11:00:00', '01:00:00'),
(1011, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:30:00', '09:30:00'),
(1012, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '16:00:00', '06:00:00'),
(1013, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:00:00', '09:00:00'),
(1014, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:03:00', '09:03:00'),
(1015, 0, '2019-05-29', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '15:00:00', '00:00:00'),
(1016, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:00:00', '09:00:00'),
(1026, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '17:00:00', '07:00:00'),
(1029, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '06:34:00', '10:34:00', '04:00:00'),
(1030, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1031, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1032, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '11:00:00', '18:00:00', '07:00:00'),
(1034, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1035, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '11:00:00', '01:00:00'),
(1036, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1037, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:00:00', '09:00:00'),
(1038, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1039, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1040, 0, '2019-05-09', '06:00:00', '09:20:00', '00:00:00', '20:04:00', '23:00:00', '00:00:00'),
(1041, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '18:00:00', '08:00:00'),
(1042, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '07:08:00', '15:08:00', '08:00:00'),
(1043, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '07:10:00', '13:10:00', '06:00:00'),
(1050, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:00:00', '09:00:00'),
(1052, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '10:20:00', '00:20:00'),
(1053, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '20:00:00', '10:00:00'),
(1055, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '10:20:00', '00:20:00'),
(1056, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '12:00:00', '18:00:00', '06:00:00'),
(1060, 0, '2019-05-30', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '15:00:00', '05:00:00'),
(1061, 0, '2019-05-31', '12:00:00', '13:00:00', '05:00:00', '09:00:00', '15:00:00', '06:00:00'),
(1066, 0, '2019-05-31', '11:00:00', '19:00:00', '48:00:00', '10:00:00', '17:00:00', '07:00:00'),
(1069, 0, '2019-05-31', '10:00:00', '17:00:00', '42:00:00', '10:00:00', '15:00:00', '05:00:00'),
(1070, 0, '2019-05-31', '10:00:00', '15:00:00', '45:00:00', '10:00:00', '15:00:00', '05:00:00'),
(1000254, 0, '2019-05-31', '00:00:00', '00:00:00', '00:00:00', '10:00:00', '19:00:00', '09:00:00');

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
(1000258, 'Vikas', 'Vasisht', 'rockervicky5@gmail.com', 'rockervicky5@gmail.com', '2019-05-14', 'Trainee Engg', 2147483647, 'IIOT', 'Akash'),
(1000420, 'kumkum', 'barik', 'kumxs@gmail.com', 'kum@gmail.com', '2019-05-08', 'Trainee Engg', 45178562, 'IIOT', 'akash'),
(1222, 'kumkum', 'barik', '', '', '2019-05-25', 'Trainee Engg', 451785621, 'IIOT', ''),
(4114141, 'kumkum', 'barik', 'kumxs@gmail.com', 'kum@gmail.com', '2019-05-17', 'Trainee Engg', 414141414, 'IIOT', 'akash'),
(4585, 'kumkum', 'barik', 'kumxs@gmail.com', 'kum@gmail.com', '2019-05-18', 'Trainee Engg', 85785785, 'IIOT', 'akash'),
(5585, 'kumkum', 'barik', '', 'kum@gmail.com', '2019-05-15', 'Trainee Engg', 45178562, 'IIOT', ''),
(121, 'kumkum', '', 'kumxs@gmail.com', 'kum@gmail.com', '2019-05-09', 'Trainee Engg', 45178562, 'IIOT', 'akash'),
(1000254, 'kumkum', 'barik', 'kumxs@gmail.com', 'kum@gmail.com', '2019-05-08', 'Trainee Engg', 45178562, 'IIOT', 'akash'),
(420420, 'rwdf', 'fgfg', 'kumxs@gmail.com', 'fff@gmail.com', '2018-08-08', 'Trainee Engg', 2147483647, 'IIOT', 'akash'),
(1201, 'rwdf', 'fgfg', 'kumxs@gmail.com', 'fff@gmail.com', '2019-05-04', 'Trainee Engg', 85785785, 'IIOT', 'akash');

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
(1001, 'male', 'A+ve', 'post kambagi', '', 'Karnataka', 'Vijayapur', 586125),
(4144, 'male', 'A+ve', 'post kambagi', '', 'Karnataka', 'Vijayapur', 586125),
(85282, 'male', 'A+ve', 'post kambagi', '', 'Karnataka', 'Vijayapur', 586125),
(120212, 'male', 'A+ve', 'post kambagi', '', 'Karnataka', 'Vijayapur', 586125),
(785785, 'male', 'A+ve', 'post kambagi', '', 'Karnataka', 'Vijayapur', 586125),
(1000226, 'female', 'A+ve', 'BTM 1st stage', 'Btm', 'Bengluru', 'Karnataka', 560068),
(1000253, 'female', 'A+ve', '33rd cross', 'mangamma colony', 'Bhubaneswar', 'Odissa', 583458),
(1000254, 'male', 'B+ve', 'post kambagi ', 'hanuman colony', 'Vijayapur', 'Karnataka', 586125),
(1000255, 'male', 'B+ve', 'post kambagi', '', 'Karnataka', 'Vijayapur', 586125),
(1000259, 'female', 'AB-ve', '60th cross', 'ramaiah nagar ks layout', 'Bengluru', 'Karnataka', 548120),
(1000271, 'male', 'A+ve', '32 2nd cross', 'ramaiah nagar ks layout', 'Bengluru', 'Karnataka', 560078),
(1000286, 'female', 'O-ve', '32 cross', 'kormangala', 'Chennai', 'Tamilanadu', 563147),
(1000293, 'female', 'O+ve', 'gbs nagar', 'jagatpur', 'cuttack', 'odisha', 754021),
(1000296, 'female', 'AB+ve', '8th cross', 'BTM layout', 'Bengluru', 'Karnataka', 589125),
(1000386, 'male', 'O+ve', '212 ashoka residency', 'kormangala', 'Bengluru', 'Karnataka', 560095),
(1000789, 'male', 'A+ve', 'redeem systems', 'gbpalya', 'Karnataka', 'bangalore', 586125);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login_creds`
--
ALTER TABLE `admin_login_creds`
  ADD PRIMARY KEY (`e_ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `per_details`
--
ALTER TABLE `per_details`
  ADD PRIMARY KEY (`e_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
