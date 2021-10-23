-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2021 at 08:21 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `collect_user`
--

CREATE TABLE `collect_user` (
  `id` int(11) NOT NULL,
  `cfullname` varchar(255) NOT NULL,
  `cemail` varchar(100) NOT NULL,
  `cuname` varchar(100) NOT NULL,
  `cpass` varchar(100) NOT NULL,
  `cphone` varchar(100) NOT NULL,
  `ctype` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collect_user`
--

INSERT INTO `collect_user` (`id`, `cfullname`, `cemail`, `cuname`, `cpass`, `cphone`, `ctype`) VALUES
(1, 'Mohammodullah', 'emran@gmail.com', 'emran', '123', '45165846', 'admin'),
(4, 'Ekram Emran', 'emran2300@gmail.com', 'ekram1', '123', '+8801679674667', 'admin'),
(6, 'marlin', 'marlin@gmail.com', 'marlin', '123', '1259846', 'user'),
(9, 'ffgf', 'abc@gmail.com', 'ab', '123', '654658', 'user'),
(10, 'oli', 'oli@gmail.com', 'oli', '123', '6584652', 'admin'),
(11, 'ali', 'ali@gmail.com', 'ali', '123', '65431', 'admin'),
(12, 'sam', 'sam@gmail.com', 'sam', '123', '968745312', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_amount` int(11) NOT NULL,
  `p_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `p_name`, `p_amount`, `p_price`) VALUES
(3, 'iPhone', 40, 50000),
(4, 'Vivo', 5, 8000),
(6, 'Xiaomi', 50, 50000),
(9, 'iPhone 13 Pro Max', 25, 15550),
(12, 'iphone', 25, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `user_name`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'Main'),
(2, 'user', 'user', 'Simple');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collect_user`
--
ALTER TABLE `collect_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collect_user`
--
ALTER TABLE `collect_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
