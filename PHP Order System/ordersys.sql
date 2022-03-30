-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 03:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ordersys`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(100) NOT NULL,
  `categoryname` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `categoryname`) VALUES
(9, 'Softdrink'),
(10, 'Khmer Food'),
(11, 'Fast Food'),
(12, 'Sea Food'),
(13, 'China Food'),
(14, 'Thai Food'),
(15, 'sweet'),
(16, 'Coffee'),
(17, 'noodle'),
(18, 'Bread'),
(19, 'Tea'),
(20, 'Beer softdrink');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(100) NOT NULL,
  `category_id` int(100) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `category_id`, `productname`, `price`, `image`, `qty`) VALUES
(58, 9, 'Coca', '3', 'Uea1f6900c29b453f9b97ccc6e0394edfF.jpg', ''),
(59, 9, 'Pesi', '2', '2-pepsi-can-png-image-thumb.png', ''),
(60, 9, 'String Red', '2', 'H10a231bd85714617b05582d04f22ea54K.jpg', ''),
(61, 9, 'water', '1', '8846002481698.jpg', ''),
(62, 16, 'Coffee Late', '3', 'latte-coffee-white-coffee-cup-with-plate-spoon-white-background-with-clipping-path_49558-297.jpg', ''),
(64, 16, 'cappuccino', '3', 'cup-coffee-with-blade-wheat-drawn-foam.jpg', ''),
(66, 16, 'Coffee', '1.5', 'latte-coffee-white-coffee-cup-with-plate-spoon-white-background-with-clipping-path_49558-297.jpg', ''),
(67, 19, 'Tea', '1', '22222.jpg', ''),
(68, 20, 'ABC', '2', 'images.jpg', ''),
(69, 20, 'Anchor', '2', 'anchor_smooth_320ml.jpg', ''),
(70, 12, 'បង្គារ', '15', 'lobster_PNG14254.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `name`, `gender`, `tel`, `username`, `password`) VALUES
(1, 'Soun Saravuth', 'Male', '011412625', 'Admin', '88889999'),
(2, 'chantha', 'Male', '098765544', 'admin', '99998888'),
(3, 'Som Sofiya', 'Female', '012807244', 'User', '123'),
(4, 'Dalin', 'Female', '0908277224', 'User', '1122');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`category_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD CONSTRAINT `FK_PRODUCTCATE` FOREIGN KEY (`category_id`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
