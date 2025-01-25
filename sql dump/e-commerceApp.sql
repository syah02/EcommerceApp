-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2025 at 09:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerceApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `bid` int(11) DEFAULT NULL,
  `bname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`bid`, `bname`) VALUES
(1, 'samsung'),
(2, 'sony'),
(3, 'lenovo'),
(4, 'acer'),
(5, 'onida');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Name` varchar(100) DEFAULT NULL,
  `bname` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `pprice` int(11) DEFAULT NULL,
  `pquantity` int(11) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(11) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cname`) VALUES
(1, 'laptop'),
(2, 'tv'),
(3, 'mobile'),
(4, 'watch');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Email_Id` varchar(100) DEFAULT NULL,
  `Contact_No` int(11) DEFAULT NULL,
  `Message` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Name` varchar(100) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Email_Id` varchar(100) DEFAULT NULL,
  `Contact_No` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `laptop`
-- (See below for the actual view)
--
CREATE TABLE `laptop` (
`bname` varchar(50)
,`cname` varchar(50)
,`pname` varchar(50)
,`pprice` int(11)
,`pquantity` int(11)
,`pimage` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mobile`
-- (See below for the actual view)
--
CREATE TABLE `mobile` (
`bname` varchar(50)
,`cname` varchar(50)
,`pname` varchar(50)
,`pprice` int(11)
,`pquantity` int(11)
,`pimage` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_Id` int(11) NOT NULL,
  `Customer_Name` varchar(100) DEFAULT NULL,
  `Customer_City` varchar(45) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Total_Price` int(11) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Date` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `bname` varchar(50) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `pprice` int(11) DEFAULT NULL,
  `pquantity` int(11) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `pprice` int(11) DEFAULT NULL,
  `pquantity` int(11) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `pname`, `pprice`, `pquantity`, `pimage`, `bid`, `cid`) VALUES
(5, 'sonysmart', 50000, 1, 'sonywatch.webp', 2, 4),
(6, 'GalaxyBook', 45000, 1, 'samsunglaptop.jpg', 1, 1),
(7, 'smarttv', 28000, 1, 'onidatv.jpg', 5, 2),
(8, 'smartphone', 15000, 1, 'lenovomobile.webp', 3, 3),
(9, 'aspire', 52000, 1, 'acerlaptop.jpg', 4, 1),
(10, 'Braviass', 52, 1, 'sonytv.jpg', 2, 2),
(11, 'GalaxyWatch', 22000, 1, 'galaxywatch.webp', 1, 4),
(14, 'kdl', 45000, 1, 'sony kdl.jpg', 2, 2),
(15, 'series a7', 21000, 1, 'acer series a7.jpg', 4, 2),
(17, 'leo', 31000, 1, 'onida leo.jpg', 5, 2),
(18, 'crystal', 42000, 1, 'samsung crystal.webp', 1, 2),
(19, 'Aspire 7', 55000, 1, 'acer aspire7.jpg', 4, 1),
(20, 'ideapad', 37000, 1, 'lenovo ideapad.jpg', 3, 1),
(21, 'legion', 51000, 1, 'lenovo legion.jpg', 3, 1),
(22, 'Galaxy Z Fold3', 66000, 1, 'Galaxy z fold3.jpg', 1, 3),
(23, 'Galaxy S22', 55000, 1, 'Samsung galaxy s22.webp', 1, 3),
(24, 'Xperia 1v', 56000, 1, 'sony xperia 1v.jpg', 2, 3),
(26, 'A850', 14500, 1, 'lenovo a850.jpg', 3, 3),
(27, 'Galaxy watch1', 8000, 1, 'galaxy watch.jpg', 1, 4),
(28, 'Galaxy Watch2', 95000, 1, 'galaxy watch4.jpg', 1, 4),
(29, 'Smart Fit', 11000, 1, 'smart fit.jpg', 3, 4),
(30, 'Sony Smart2', 12000, 1, 'sony smart2.webp', 2, 4),
(31, 'Gaming Predator', 120000, 1, 'Acer Predator.jpg', 4, 1),
(32, 'Liquid', 16000, 1, 'Acer liquid.jpg', 4, 3),
(33, 'Neo QLED', 46000, 1, 'Samsung neo Qled.webp', 1, 2),
(34, 'VAIO', 53000, 1, 'Sony Vaio.jpg', 2, 1),
(35, 'Xperia Z', 32000, 1, 'sonyxperiaz.png', 2, 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `tv`
-- (See below for the actual view)
--
CREATE TABLE `tv` (
`bname` varchar(50)
,`cname` varchar(50)
,`pname` varchar(50)
,`pprice` int(11)
,`pquantity` int(11)
,`pimage` varchar(200)
);

-- --------------------------------------------------------

--
-- Table structure for table `usermaster`
--

CREATE TABLE `usermaster` (
  `Name` varchar(100) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usermaster`
--

INSERT INTO `usermaster` (`Name`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewlist`
-- (See below for the actual view)
--
CREATE TABLE `viewlist` (
`bname` varchar(50)
,`cname` varchar(50)
,`pname` varchar(50)
,`pprice` int(11)
,`pquantity` int(11)
,`pimage` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `watch`
-- (See below for the actual view)
--
CREATE TABLE `watch` (
`bname` varchar(50)
,`cname` varchar(50)
,`pname` varchar(50)
,`pprice` int(11)
,`pquantity` int(11)
,`pimage` varchar(200)
);

-- --------------------------------------------------------

--
-- Structure for view `laptop`
--
DROP TABLE IF EXISTS `laptop`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e-commerceapp`.`laptop`  AS SELECT `e-commerceapp`.`brand`.`bname` AS `bname`, `e-commerceapp`.`category`.`cname` AS `cname`, `e-commerceapp`.`product`.`pname` AS `pname`, `e-commerceapp`.`product`.`pprice` AS `pprice`, `e-commerceapp`.`product`.`pquantity` AS `pquantity`, `e-commerceapp`.`product`.`pimage` AS `pimage` FROM ((`e-commerceapp`.`brand` join `e-commerceapp`.`product` on(`e-commerceapp`.`brand`.`bid` = `e-commerceapp`.`product`.`bid`)) join `e-commerceapp`.`category` on(`e-commerceapp`.`product`.`cid` = `e-commerceapp`.`category`.`cid`)) WHERE `e-commerceapp`.`category`.`cid` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `mobile`
--
DROP TABLE IF EXISTS `mobile`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e-commerceapp`.`mobile`  AS SELECT `e-commerceapp`.`brand`.`bname` AS `bname`, `e-commerceapp`.`category`.`cname` AS `cname`, `e-commerceapp`.`product`.`pname` AS `pname`, `e-commerceapp`.`product`.`pprice` AS `pprice`, `e-commerceapp`.`product`.`pquantity` AS `pquantity`, `e-commerceapp`.`product`.`pimage` AS `pimage` FROM ((`e-commerceapp`.`brand` join `e-commerceapp`.`product` on(`e-commerceapp`.`brand`.`bid` = `e-commerceapp`.`product`.`bid`)) join `e-commerceapp`.`category` on(`e-commerceapp`.`product`.`cid` = `e-commerceapp`.`category`.`cid`)) WHERE `e-commerceapp`.`category`.`cid` = 3 ;

-- --------------------------------------------------------

--
-- Structure for view `tv`
--
DROP TABLE IF EXISTS `tv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e-commerceapp`.`tv`  AS SELECT `e-commerceapp`.`brand`.`bname` AS `bname`, `e-commerceapp`.`category`.`cname` AS `cname`, `e-commerceapp`.`product`.`pname` AS `pname`, `e-commerceapp`.`product`.`pprice` AS `pprice`, `e-commerceapp`.`product`.`pquantity` AS `pquantity`, `e-commerceapp`.`product`.`pimage` AS `pimage` FROM ((`e-commerceapp`.`brand` join `e-commerceapp`.`product` on(`e-commerceapp`.`brand`.`bid` = `e-commerceapp`.`product`.`bid`)) join `e-commerceapp`.`category` on(`e-commerceapp`.`product`.`cid` = `e-commerceapp`.`category`.`cid`)) WHERE `e-commerceapp`.`category`.`cid` = 2 ;

-- --------------------------------------------------------

--
-- Structure for view `viewlist`
--
DROP TABLE IF EXISTS `viewlist`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e-commerceapp`.`viewlist`  AS SELECT `e-commerceapp`.`brand`.`bname` AS `bname`, `e-commerceapp`.`category`.`cname` AS `cname`, `e-commerceapp`.`product`.`pname` AS `pname`, `e-commerceapp`.`product`.`pprice` AS `pprice`, `e-commerceapp`.`product`.`pquantity` AS `pquantity`, `e-commerceapp`.`product`.`pimage` AS `pimage` FROM ((`e-commerceapp`.`brand` join `e-commerceapp`.`product` on(`e-commerceapp`.`brand`.`bid` = `e-commerceapp`.`product`.`bid`)) join `e-commerceapp`.`category` on(`e-commerceapp`.`product`.`cid` = `e-commerceapp`.`category`.`cid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `watch`
--
DROP TABLE IF EXISTS `watch`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `e-commerceapp`.`watch`  AS SELECT `e-commerceapp`.`brand`.`bname` AS `bname`, `e-commerceapp`.`category`.`cname` AS `cname`, `e-commerceapp`.`product`.`pname` AS `pname`, `e-commerceapp`.`product`.`pprice` AS `pprice`, `e-commerceapp`.`product`.`pquantity` AS `pquantity`, `e-commerceapp`.`product`.`pimage` AS `pimage` FROM ((`e-commerceapp`.`brand` join `e-commerceapp`.`product` on(`e-commerceapp`.`brand`.`bid` = `e-commerceapp`.`product`.`bid`)) join `e-commerceapp`.`category` on(`e-commerceapp`.`product`.`cid` = `e-commerceapp`.`category`.`cid`)) WHERE `e-commerceapp`.`category`.`cid` = 4 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
