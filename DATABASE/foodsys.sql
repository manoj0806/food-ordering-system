-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 08:29 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'BEVERAGES'),
(10, 'Brunch');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dish` varchar(200) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `message` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`purchaseid`, `customer`, `email`, `dish`, `phone`, `message`, `datetime`) VALUES
(20, 'Manoj Babu GR', 'abc@gmail.com', 'Biryani', '9688888888', 9, '2020-12-22 11:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(29, 4, 'IDLI', 50, 'upload/idli_1608620044.jpg'),
(30, 4, 'MASALA DOSA', 60, 'upload/masala dosa_1608620083.jpg'),
(32, 4, 'PURI', 80, 'upload/POORI_1608620177.jpg'),
(33, 4, 'THATTE IDLI', 40, 'upload/tatte idli_1608620226.jpg'),
(35, 5, 'BIRYANI', 120, 'upload/biryani_1608620381.jpg'),
(36, 5, 'FULL MEALS', 80, 'upload/full meals_1608620417.jpg'),
(38, 5, 'FULL MEALS(NON-VEG)', 200, 'upload/NON VEG MEALS_1608620777.jpg'),
(39, 5, 'RAGI BALL', 60, 'upload/ragi ball_1608620812.jpg'),
(40, 6, 'BIRYANI', 120, 'upload/biryani_1608620874.jpg'),
(42, 6, 'EGG FRIED RICE', 80, 'upload/EGG FRIED RICE_1608621041.jpg'),
(45, 6, 'RAGI BALL', 80, 'upload/ragi ball_1608621166.jpg'),
(46, 6, 'GOBI MANCHURIAN', 40, 'upload/GOBI_1608621201.jpg'),
(48, 7, 'MANGO JUICE', 40, 'upload/MANGO JUICE_1608621319.jpg'),
(49, 7, 'STRAWBERRY LASSI', 60, 'upload/STRAWBERRY_1608621453.jpg'),
(50, 7, 'COCA COLA', 20, 'upload/cocacola_1608621498.jpg'),
(51, 7, 'LASSI', 49, 'upload/lassi_1608621557.jpg'),
(52, 10, 'SUNDAY BRUNCH', 90, 'upload/sundaybrunch_1608621609.jpg'),
(53, 10, 'BURGER', 140, 'upload/BURGER_1608621677.jpg'),
(54, 10, 'RAVA KESARI', 40, 'upload/rava kesari_1608621715.jpg'),
(55, 10, 'VADA', 20, 'upload/vada_1608621768.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(16, 'Affan', 600, '2020-12-22 11:29:40'),
(17, 'Manoj Babu GR', 500, '2020-12-22 11:30:10'),
(18, 'Jashwanth', 375, '2020-12-22 11:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 3),
(17, 10, 15, 2),
(18, 11, 15, 2),
(19, 12, 16, 1),
(20, 14, 27, 4),
(21, 15, 26, 3),
(22, 16, 22, 1),
(23, 17, 19, 2),
(24, 18, 21, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
