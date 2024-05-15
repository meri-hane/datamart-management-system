-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 04:44 AM
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
-- Database: `emp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `adminPassword` varchar(100) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `dep` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `jd` date DEFAULT NULL,
  `l_name` varchar(255) DEFAULT NULL,
  `sal` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `adminPassword`, `admin_name`, `admin_password`, `dep`, `des`, `mail`, `f_name`, `jd`, `l_name`, `sal`) VALUES
(1, 'admin', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'abcd', '123456', 'efgh', '78910', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `id` int(11) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `adminPassword` varchar(100) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`id`, `adminName`, `adminPassword`, `admin_name`, `admin_password`) VALUES
(1, 'myadmin', '123456', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin2`
--

CREATE TABLE `admin2` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin2`
--

INSERT INTO `admin2` (`id`, `admin_name`, `admin_password`) VALUES
(1, 'abcd', '123');

-- --------------------------------------------------------

--
-- Table structure for table `employees_table`
--

CREATE TABLE `employees_table` (
  `id` bigint(20) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `price` bigint(100) NOT NULL,
  `productivity` date DEFAULT NULL,
  `item` bigint(100) DEFAULT NULL,
  `category` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `expiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees_table`
--

INSERT INTO `employees_table` (`id`, `prod_name`, `price`, `productivity`, `item`, `category`, `des`, `expiry`) VALUES
(1, 'Selecta Milks', 129, '2024-05-01', 12, 'Dairy', 'Developer', '2024-05-31'),
(2, 'Fishda', 0, '2024-05-01', 12, 'Meat', 'Developer', '2024-05-15'),
(5, 'fruits', 129, '2024-05-01', 12, 'Dairy', 'd', '2024-05-31'),
(6, 'rice', 1, '2024-05-03', 123, 'Baking', 'Developer', '2024-05-25'),
(7, 'sugar', 50, '2024-05-01', 129, 'Baking', 'Developer', '2024-05-01'),
(8, 'Chicken', 129, '2024-05-01', 12, 'Dairy', 'd', '2024-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `myproduct`
--

CREATE TABLE `myproduct` (
  `id` bigint(20) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `sal` varchar(100) NOT NULL,
  `dep` varchar(100) NOT NULL,
  `des` varchar(100) NOT NULL,
  `jd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myproduct`
--

INSERT INTO `myproduct` (`id`, `prod_name`, `l_name`, `mail`, `sal`, `dep`, `des`, `jd`) VALUES
(1, 'fish', 'asdadasd', 'asdasd', 'dsada', 'dasda', 'dasda', '2024-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `price` bigint(20) DEFAULT NULL,
  `prodDate` date NOT NULL,
  `expiryDate` date NOT NULL,
  `items` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productName`, `price`, `prodDate`, `expiryDate`, `items`, `category`) VALUES
(1, 'COW MILK', 123, '2024-05-01', '2024-05-02', '12', 'DAIRY');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `expiry_date`, `items`, `price`, `prod_name`, `prod_date`) VALUES
(1, 'Analyst', '2024-05-31', 'IT', 199, 'Milks', '2024-05-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin2`
--
ALTER TABLE `admin2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_table`
--
ALTER TABLE `employees_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myproduct`
--
ALTER TABLE `myproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees_table`
--
ALTER TABLE `employees_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myproduct`
--
ALTER TABLE `myproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
