-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 09:27 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futurevision`
--

-- --------------------------------------------------------

--
-- Table structure for table `cadastralworks`
--

CREATE TABLE `cadastralworks` (
  `id` int(11) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `design_type` varchar(50) NOT NULL,
  `engineering_diagram` varchar(100) NOT NULL,
  `picture_of_instrument` varchar(100) NOT NULL,
  `ownerid_commercial_register` varchar(100) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cadastralworks`
--

INSERT INTO `cadastralworks` (`id`, `service_type`, `mobile_number`, `email`, `customer_name`, `design_type`, `engineering_diagram`, `picture_of_instrument`, `ownerid_commercial_register`, `note`) VALUES
(1, 'Other', 13123132, 'test2@gmail.com', 'test', 'Classic', 'uploads/Lecture - 03.pdf', 'uploads/Lecture - 01 & 02.pdf', 'uploads/WhatsApp Image 2021-10-21 at 2.35.51 AM.jpeg', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile_number`, `email`, `address`, `message`) VALUES
(1, 'testing', 123213, 'test2@gmail.com', 'test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `design`
--

CREATE TABLE `design` (
  `id` int(11) NOT NULL,
  `land_area` int(11) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `engineering_diagram` varchar(100) NOT NULL,
  `picture_of_instrument` varchar(100) NOT NULL,
  `ownerid_commercial_register` varchar(100) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `design`
--

INSERT INTO `design` (`id`, `land_area`, `service_type`, `mobile_number`, `email`, `customer_name`, `engineering_diagram`, `picture_of_instrument`, `ownerid_commercial_register`, `note`) VALUES
(1, 2332, 'Storehouse', 123123, 'test2@gmail.com', 'test', 'uploads/Lecture - 01 & 02.pdf', 'uploads/Lecture - 03.pdf', 'uploads/Lecture - 04.pdf', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `interiordesign`
--

CREATE TABLE `interiordesign` (
  `Id` int(11) NOT NULL,
  `landarea` int(11) NOT NULL,
  `servicetype` varchar(50) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `customername` varchar(100) NOT NULL,
  `designtype` varchar(20) NOT NULL,
  `engineeringdiagram` varchar(255) NOT NULL,
  `otherattachment` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interiordesign`
--

INSERT INTO `interiordesign` (`Id`, `landarea`, `servicetype`, `mobilenumber`, `email`, `customername`, `designtype`, `engineeringdiagram`, `otherattachment`, `note`) VALUES
(1, 20, 'Villa', 112, 'test2@gmail.com', 'test', 'Modern', 'uploads/Lecture -7.pdf', 'uploads/Lecture -3.pdf', 'test'),
(2, 32, 'Duplex', 1231312, 'test3@gmail.com', '2test', 'Classic', 'uploads/Mid Term (Question Paper).pdf', 'uploads/Mid Term.pdf', 'test2'),
(3, 20, 'Commercial Building', 123123, 'test3@gmail.com', 'test3', 'Classic', 'uploads/Mirza Abdullah Baig.pdf', 'uploads/Mirza Abdullah Baig (changes).pdf', 'test3');

-- --------------------------------------------------------

--
-- Table structure for table `sort`
--

CREATE TABLE `sort` (
  `id` int(11) NOT NULL,
  `land_area` int(11) NOT NULL,
  `service_type` varchar(50) NOT NULL,
  `mobile_number` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `customer_name` int(100) NOT NULL,
  `license_photo` varchar(255) NOT NULL,
  `picture_of_instrument` varchar(255) NOT NULL,
  `orderid_commercial_register` varchar(255) NOT NULL,
  `engineering_diagram` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sort`
--

INSERT INTO `sort` (`id`, `land_area`, `service_type`, `mobile_number`, `email`, `customer_name`, `license_photo`, `picture_of_instrument`, `orderid_commercial_register`, `engineering_diagram`, `note`) VALUES
(1, 2332, 'Land Sort', 323123, 'test3@gmail.com', 0, 'uploads/Mirza Abdullah Baig (changes).pdf', 'uploads/Mirza Abdullah Baig.pdf', 'uploads/Mid Term.pdf', 'uploads/Mid Term (Question Paper).pdf', 'test3'),
(2, 2332, 'Land Sort', 323123, 'test3@gmail.com', 0, 'uploads/Mirza Abdullah Baig (changes).pdf', 'uploads/Mirza Abdullah Baig.pdf', 'uploads/Mid Term.pdf', 'uploads/Mid Term (Question Paper).pdf', 'test3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastralworks`
--
ALTER TABLE `cadastralworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `design`
--
ALTER TABLE `design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interiordesign`
--
ALTER TABLE `interiordesign`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sort`
--
ALTER TABLE `sort`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastralworks`
--
ALTER TABLE `cadastralworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `design`
--
ALTER TABLE `design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interiordesign`
--
ALTER TABLE `interiordesign`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sort`
--
ALTER TABLE `sort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
