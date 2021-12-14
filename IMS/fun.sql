-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 05:56 PM
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
-- Database: `fun`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `brand_status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `category_id`, `brand_name`, `brand_status`) VALUES
(25, 27, 'Besus', 'active'),
(26, 27, 'QKZ', 'active'),
(27, 27, 'Remix', 'active'),
(28, 21, 'Suzuki', 'active'),
(29, 21, 'Hero', 'active'),
(30, 18, 'Bangla', 'active'),
(31, 21, 'English', 'active'),
(32, 26, 'Canon', 'active'),
(33, 26, 'Sony', 'active'),
(34, 31, 'Duronto', 'active'),
(35, 31, 'Phonix', 'active'),
(36, 22, 'Tesla', 'active'),
(37, 22, 'Ford', 'active'),
(38, 23, 'T-shirt', 'active'),
(39, 36, 'Chair', 'active'),
(40, 34, 'Google', 'active'),
(41, 34, 'Apple', 'active'),
(42, 35, 'Sunglass', 'active'),
(43, 17, 'Rezer', 'active'),
(44, 33, 'Motol', 'active'),
(45, 16, 'Asus', 'active'),
(46, 16, 'HP', 'active'),
(47, 16, 'Lenovo', 'active'),
(48, 29, 'Apple', 'active'),
(49, 30, 'Rayban', 'active'),
(50, 28, 'Sata', 'active'),
(51, 19, 'Windows', 'active'),
(52, 32, 'Bata', 'active'),
(53, 32, 'Apex', 'active'),
(54, 20, 'Ram', 'active'),
(55, 20, 'Cooling Fan', 'active'),
(56, 15, 'iPhone', 'active'),
(57, 15, 'Samsung', 'active'),
(58, 15, 'Oppo', 'active'),
(59, 15, 'Realme', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `category_status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_status`) VALUES
(15, 'Mobile', 'active'),
(16, 'Laptop', 'active'),
(17, 'Headphone', 'active'),
(18, 'Books', 'active'),
(19, 'Software', 'active'),
(20, 'PC Component', 'active'),
(21, 'Bike', 'active'),
(22, 'Car', 'active'),
(23, 'Fashion', 'active'),
(24, 'TV', 'active'),
(25, 'Fan', 'active'),
(26, 'Camera', 'active'),
(27, 'Audio', 'active'),
(28, 'Storage', 'active'),
(29, 'Watch', 'active'),
(30, 'Sunglass', 'active'),
(31, 'Cycle', 'active'),
(32, 'Shoes', 'active'),
(33, 'Helmet', 'active'),
(34, 'Gift Cards', 'active'),
(35, 'Groceries', 'active'),
(36, 'Furniture', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_order`
--

CREATE TABLE `inventory_order` (
  `inventory_order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `inventory_order_total` double(10,2) NOT NULL,
  `inventory_order_date` date NOT NULL,
  `inventory_order_name` varchar(255) NOT NULL,
  `inventory_order_address` text NOT NULL,
  `payment_status` enum('cash','credit') NOT NULL,
  `inventory_order_status` varchar(100) NOT NULL,
  `inventory_order_created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_order`
--

INSERT INTO `inventory_order` (`inventory_order_id`, `user_id`, `inventory_order_total`, `inventory_order_date`, `inventory_order_name`, `inventory_order_address`, `payment_status`, `inventory_order_status`, `inventory_order_created_date`) VALUES
(27, 14, 80940.00, '2021-12-14', 'a', 'a', 'cash', 'active', '2021-12-13'),
(28, 14, 1632.00, '2021-12-08', 'b', 'b', 'cash', 'active', '2021-12-13'),
(29, 14, 9888.00, '2021-12-09', 'c', 'c', 'credit', 'active', '2021-12-13'),
(30, 14, 122400.00, '2021-12-10', 'd', 'd', 'cash', 'active', '2021-12-13'),
(31, 14, 16320.00, '2021-12-10', 'e', 'e', 'credit', 'active', '2021-12-13'),
(32, 17, 128520.00, '2021-12-09', 'f', 'f', 'credit', 'active', '2021-12-13'),
(33, 17, 183600.00, '2021-12-12', 'v', 'v', 'credit', 'active', '2021-12-13'),
(34, 17, 244800.00, '2021-12-11', 'z', 'z', 'cash', 'active', '2021-12-13'),
(35, 17, 230720.00, '2021-12-13', 'w', 'w', 'credit', 'active', '2021-12-13'),
(36, 17, 73440.00, '2021-12-05', 'q', 'q', 'cash', 'active', '2021-12-13'),
(37, 18, 56424.00, '2021-12-15', 'a', 'a', 'cash', 'active', '2021-12-13'),
(38, 18, 24480.00, '2021-12-13', 'f', 'f', 'credit', 'active', '2021-12-13'),
(39, 18, 12750.00, '2021-12-12', 'g', 'g', 'cash', 'active', '2021-12-13'),
(40, 18, 15450.00, '2021-12-11', 'j', 'j', 'cash', 'active', '2021-12-13'),
(41, 18, 2856.00, '2021-12-12', 'l', 'l', 'credit', 'active', '2021-12-13'),
(42, 15, 2464.00, '2021-12-12', 'm', 'm', 'cash', 'active', '2021-12-13'),
(43, 15, 27540.00, '2021-12-10', 'o', 'o', 'credit', 'active', '2021-12-13'),
(44, 15, 2040.00, '2021-12-12', 'd', 'd', 'credit', 'active', '2021-12-13'),
(45, 15, 8262.00, '2021-12-13', 'r', 'r', 'credit', 'active', '2021-12-13'),
(46, 15, 122400.00, '2021-12-12', 'q', 'q', 'cash', 'active', '2021-12-13'),
(47, 15, 57680.00, '2021-12-11', 'k', 'k', 'cash', 'active', '2021-12-13'),
(48, 20, 605880.00, '2021-12-13', 'p', 'p', 'credit', 'active', '2021-12-13'),
(49, 20, 638600.00, '2021-12-12', 'd', 'd', 'credit', 'active', '2021-12-13'),
(50, 20, 527360.00, '2021-12-13', 'z', 'z', 'credit', 'active', '2021-12-13'),
(51, 20, 73440.00, '2021-12-12', 'w', 'w', 'cash', 'active', '2021-12-13'),
(52, 20, 85680.00, '2021-12-14', 'm', 'm', 'credit', 'active', '2021-12-13'),
(53, 21, 99999999.99, '2021-12-12', 'a', 'a', 'cash', 'active', '2021-12-13'),
(54, 21, 42840.00, '2021-12-11', 'y', 'y', 'credit', 'active', '2021-12-13'),
(55, 21, 61200.00, '2021-12-06', 'k', 'k', 'credit', 'active', '2021-12-13'),
(56, 21, 27540.00, '2021-12-05', 'x', 'x', 'credit', 'active', '2021-12-13'),
(57, 21, 15300.00, '2021-12-06', 'f', 'f', 'cash', 'active', '2021-12-13'),
(58, 22, 49980.00, '2021-12-13', 's', 's', 'cash', 'active', '2021-12-13'),
(59, 22, 6592.00, '2021-12-14', 't', 't', 'credit', 'active', '2021-12-13'),
(60, 22, 2448.00, '2021-12-20', 'o', 'o', 'credit', 'active', '2021-12-13'),
(61, 22, 231750.00, '2021-12-15', 'q', 'q', 'cash', 'active', '2021-12-13'),
(62, 23, 48960.00, '2021-12-13', 'g', 'g', 'credit', 'active', '2021-12-13'),
(63, 23, 2040.00, '2021-12-08', 'y', 'y', 'credit', 'active', '2021-12-13'),
(64, 23, 73440.00, '2021-12-22', 'h', 'h', 'cash', 'active', '2021-12-13'),
(65, 19, 12360.00, '2021-12-14', 'a', 'a', 'cash', 'active', '2021-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_order_product`
--

CREATE TABLE `inventory_order_product` (
  `inventory_order_product_id` int(11) NOT NULL,
  `inventory_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_order_product`
--

INSERT INTO `inventory_order_product` (`inventory_order_product_id`, `inventory_order_id`, `product_id`, `quantity`, `price`, `tax`) VALUES
(3, 1, 1, 10, 141.00, 12.00),
(4, 1, 3, 4, 800.00, 5.00),
(5, 2, 2, 3, 350.00, 12.00),
(6, 2, 17, 2, 60.00, 12.00),
(7, 3, 15, 1, 125.00, 5.00),
(8, 3, 17, 2, 60.00, 12.00),
(12, 4, 18, 4, 90.00, 12.00),
(13, 4, 20, 3, 100.00, 18.00),
(14, 4, 1, 5, 141.00, 12.00),
(15, 5, 4, 2, 550.00, 12.00),
(16, 5, 10, 1, 150.00, 18.00),
(17, 6, 8, 5, 15.00, 18.00),
(18, 6, 7, 2, 210.00, 12.00),
(19, 7, 16, 7, 175.00, 5.00),
(23, 8, 19, 5, 120.00, 18.00),
(24, 8, 11, 5, 85.00, 12.00),
(25, 8, 12, 5, 60.00, 12.00),
(26, 9, 13, 3, 200.00, 18.00),
(27, 9, 9, 2, 400.00, 12.00),
(28, 10, 9, 3, 400.00, 12.00),
(29, 10, 11, 4, 85.00, 12.00),
(30, 11, 6, 6, 250.00, 15.00),
(31, 11, 12, 2, 60.00, 12.00),
(32, 12, 2, 4, 350.00, 12.00),
(33, 12, 7, 2, 210.00, 12.00),
(34, 13, 18, 3, 90.00, 12.00),
(35, 13, 7, 1, 210.00, 12.00),
(36, 13, 8, 2, 15.00, 18.00),
(37, 14, 6, 2, 250.00, 15.00),
(38, 14, 13, 1, 200.00, 18.00),
(39, 14, 16, 1, 175.00, 5.00),
(40, 14, 17, 3, 60.00, 12.00),
(41, 15, 2, 5, 350.00, 12.00),
(42, 16, 4, 4, 550.00, 12.00),
(43, 16, 13, 1, 200.00, 18.00),
(46, 17, 21, 2, 500.00, 18.00),
(47, 17, 3, 5, 800.00, 5.00),
(48, 17, 7, 1, 210.00, 12.00),
(49, 0, 23, 5, 30.00, 12.00),
(50, 0, 12, 5, 60.00, 12.00),
(51, 0, 16, 5, 175.00, 5.00),
(52, 0, 6, 5, 250.00, 15.00),
(53, 0, 16, 5, 175.00, 5.00),
(54, 0, 7, 5, 210.00, 12.00),
(55, 0, 7, 5, 210.00, 12.00),
(56, 0, 7, 5, 210.00, 12.00),
(57, 25, 14, 5, 250.00, 18.00),
(58, 25, 11, 5, 85.00, 12.00),
(79, 26, 16, 6, 175.00, 5.00),
(80, 26, 7, 5, 210.00, 12.00),
(81, 27, 51, 2, 30000.00, 4.00),
(82, 27, 50, 3, 6000.00, 3.00),
(83, 28, 37, 2, 800.00, 2.00),
(84, 29, 38, 3, 3200.00, 3.00),
(85, 30, 43, 2, 60000.00, 2.00),
(86, 31, 33, 2, 8000.00, 2.00),
(87, 32, 42, 2, 63000.00, 2.00),
(88, 33, 30, 3, 60000.00, 2.00),
(89, 34, 27, 4, 60000.00, 2.00),
(90, 35, 31, 4, 56000.00, 3.00),
(91, 36, 34, 6, 12000.00, 2.00),
(92, 37, 40, 12, 3600.00, 2.00),
(93, 37, 50, 2, 6000.00, 3.00),
(94, 38, 49, 3, 8000.00, 2.00),
(95, 39, 24, 5, 2500.00, 2.00),
(96, 40, 39, 6, 2500.00, 3.00),
(97, 41, 36, 7, 400.00, 2.00),
(98, 42, 4, 4, 550.00, 12.00),
(99, 43, 52, 6, 4500.00, 2.00),
(100, 44, 25, 4, 500.00, 2.00),
(101, 45, 29, 45, 180.00, 2.00),
(102, 46, 43, 2, 60000.00, 2.00),
(103, 47, 35, 70, 800.00, 3.00),
(104, 48, 28, 3, 187000.00, 8.00),
(105, 49, 44, 5, 124000.00, 3.00),
(106, 50, 46, 4, 128000.00, 3.00),
(107, 51, 34, 6, 12000.00, 2.00),
(108, 52, 41, 12, 7000.00, 2.00),
(109, 53, 32, 45, 2000000.00, 15.00),
(110, 54, 41, 6, 7000.00, 2.00),
(111, 55, 34, 5, 12000.00, 2.00),
(112, 56, 52, 6, 4500.00, 2.00),
(113, 57, 24, 6, 2500.00, 2.00),
(114, 58, 41, 7, 7000.00, 2.00),
(115, 59, 35, 8, 800.00, 3.00),
(116, 60, 36, 6, 400.00, 2.00),
(117, 61, 48, 3, 75000.00, 3.00),
(118, 62, 33, 6, 8000.00, 2.00),
(119, 63, 25, 4, 500.00, 2.00),
(120, 64, 29, 400, 180.00, 2.00),
(121, 65, 50, 2, 6000.00, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_description` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_unit` varchar(150) NOT NULL,
  `product_base_price` double(10,2) NOT NULL,
  `product_tax` decimal(4,2) NOT NULL,
  `product_minimum_order` double(10,2) NOT NULL,
  `product_enter_by` int(11) NOT NULL,
  `product_status` enum('active','inactive') NOT NULL,
  `product_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `brand_id`, `product_name`, `product_description`, `product_quantity`, `product_unit`, `product_base_price`, `product_tax`, `product_minimum_order`, `product_enter_by`, `product_status`, `product_date`) VALUES
(24, 27, 25, 'D02 Wireless Headphone', 'Sport Bluetooth Headphone', 40, 'Unit', 2500.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(25, 27, 26, 'DM 7', 'Best in price', 200, 'Unit', 500.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(26, 27, 27, 'RX-0', 'Wired long lasting', 100, 'Unit', 1200.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(27, 21, 29, 'CD-80', '80CC engine', 12, 'Unit', 60000.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(28, 21, 28, 'Gixxer', '160 CC carburetor version', 14, 'Unit', 187000.00, '8.00', 0.00, 14, 'active', '2021-12-13'),
(29, 18, 30, 'Misir Ali', 'All file 1-16', 24, 'Unit', 180.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(30, 26, 32, 'Alpha 7', 'Mirror lense', 5, 'Unit', 60000.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(31, 26, 32, '700D', 'Kit with 55mm', 12, 'Unit', 56000.00, '3.00', 0.00, 14, 'active', '2021-12-13'),
(32, 22, 37, 'Model A7', '1996-2000 version', 4, 'Unit', 2000000.00, '15.00', 0.00, 14, 'active', '2021-12-13'),
(33, 31, 34, 'Desh', 'Desh 7 with ultra', 40, 'Unit', 8000.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(34, 31, 35, 'B6_7', 'Old model', 45, 'Unit', 12000.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(35, 23, 38, 'Easy winter', 'S,M,L,XL', 400, 'Unit', 800.00, '3.00', 0.00, 14, 'active', '2021-12-13'),
(36, 36, 39, 'RFL', 'Rocking Chair', 63, 'Unit', 400.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(37, 34, 41, '10$ Gift Card', 'Us family', 6, 'Unit', 800.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(38, 34, 40, '20$ Card', 'Eu version', 12, 'Unit', 3200.00, '3.00', 0.00, 14, 'active', '2021-12-13'),
(39, 35, 42, 'Rayban_T7', 'Black', 45, 'Unit', 2500.00, '3.00', 0.00, 14, 'active', '2021-12-13'),
(40, 17, 43, 'RGB_R', 'Free 2 clips', 3, 'Unit', 3600.00, '2.00', 0.00, 15, 'active', '2021-12-13'),
(41, 33, 44, 'GSkill', 'Green', 36, 'Unit', 7000.00, '2.00', 0.00, 15, 'active', '2021-12-13'),
(42, 16, 45, '570DD', 'Ram 8gb, Rayzen 5 ', 9, 'Unit', 63000.00, '2.00', 0.00, 15, 'active', '2021-12-13'),
(43, 16, 46, '360\" portable ', 'ram 16gb, 1TB,core i5', 12, 'Unit', 60000.00, '2.00', 0.00, 15, 'active', '2021-12-13'),
(44, 16, 47, 'Lenovo IdeaPad Slim', '3i Celeron N4020 15.6\" HD Laptop with Windows 10', 30, 'Unit', 124000.00, '3.00', 0.00, 15, 'active', '2021-12-13'),
(45, 16, 47, 'Lenovo IdeaPad', 'Slim 3 Ryzen 3 3250U 15.6\" FHD Laptop', 45, 'Unit', 63000.00, '3.00', 0.00, 16, 'active', '2021-12-13'),
(46, 15, 56, 'iPhone 13Pro', '256GB', 14, 'Unit', 128000.00, '3.00', 0.00, 16, 'active', '2021-12-13'),
(47, 15, 56, 'iPhone 11', '64 gb version', 17, 'Unit', 69000.00, '2.00', 0.00, 16, 'active', '2021-12-13'),
(48, 15, 58, 'Reno 6', '256 gb', 17, 'Unit', 75000.00, '3.00', 0.00, 16, 'active', '2021-12-13'),
(49, 20, 54, 'Cosier ', '8GB ', 45, 'Unit', 8000.00, '2.00', 0.00, 14, 'active', '2021-12-13'),
(50, 19, 51, '11 pro', 'Genius ', 15, 'Unit', 6000.00, '3.00', 0.00, 14, 'active', '2021-12-13'),
(51, 29, 48, 'Watch 4 ', 'mini', 45, 'Unit', 30000.00, '4.00', 0.00, 14, 'active', '2021-12-13'),
(52, 28, 50, 'SSD 128gb', 'Terabox ', 23, 'Unit', 4500.00, '2.00', 0.00, 14, 'active', '2021-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_type` enum('master','user') NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_email`, `user_password`, `user_name`, `user_type`, `user_status`) VALUES
(11, 'a@a', '$2y$10$U62tXcR58Kf7lW22KQ9wOegYYZQ9iKNmZZ104PCDHgyToChQo3.QO', 'a', 'user', 'Active'),
(12, 'b@b', '$2y$10$E2myT0TWsT4jjJONAdRVmONCmmKBFWIOEcbacQ6c36PxW73I2ISe6', 'b', 'master', 'Active'),
(13, 'emran@gmail.com', '$2y$08$z8IQeHygaLBtl78Q8wm00uyiYu9L30ZaMce4r2HlFAdr/.lXowLni', 'emran', 'master', 'Active'),
(14, 'a@gmail.com', '$2y$08$e4cC64.hqH6laWYie5xZCu4Dl7o6gHZgiQcEGKdXOsAuY8CTIkLS2', 'abc', 'master', 'Active'),
(15, 'b@gmail.com', '$2y$08$sdV2GoN646gjbG1D1lXsEeKtFsfz9Tg3ZoXpvnP8ND9.EgRewOwRC', 'b', 'master', 'Active'),
(16, 'c@gmail.com', '$2y$08$4OS0tfdHwL/fe3af8VbGV.C.xr.WgkYBhya9cEBwnYh/9jI9pPoMO', 'c', 'master', 'Active'),
(17, 'd@gmail.com', '$2y$08$AitLjS/VPfAaarGZluPjXeVPF7jsYE80Z6aIuJefLe6w0Sa80XNYu', 'd', 'user', 'Active'),
(18, 'e@gmail.com', '$2y$08$ZrynUqQ2eW1ej4wS07hoEeMaB1dEVHW97LOp1b9ziBjKtGixYlWcq', 'e', 'user', 'Active'),
(19, 'f@gmail.com', '$2y$08$.eeNyEqHtDfR.TT59Bkx3ujwBjlTlbEHkG5.aAaI4q8NMvk/Vhobq', 'f', 'user', 'Active'),
(20, 'g@gmail.com', '$2y$08$kh9uwaZLUMFTz.X35C/6UuGiQN169iEB8pkDdOfVEwIxR18b.QN9K', 'g', 'user', 'Active'),
(21, 'h@gmail.com', '$2y$08$gPHc4bOb6R9QnnfahNCYeeUWbVG6RLgp3aNEQJGha2QiGlj3vLG6G', 'h', 'user', 'Active'),
(22, 'i@gmail.com', '$2y$08$kL64Bk9SLcwswYZhGpYOeuRRwOVcA3rcn3Et6S3qKc34xWYE5JJ7y', 'i', 'user', 'Active'),
(23, 'j@gmail.com', '$2y$08$ApLLOYxEJFFwzridA3GG/u4G0XTsycAnX8BT6MJih/lkgnCsvfG4O', 'j', 'user', 'Active'),
(24, 'k@gmail.com', '$2y$08$Ys5E0iiNP7a4c0slfd6FUe7aW5pPgiHuo5vKg31Tx1cO1qmjrd25C', 'k', 'user', 'Inactive'),
(25, 'emran2300@gmail.com', '$2y$08$DNbNihEpFuLh2tuYT4ySQekE8BHx6Aj1w4.coRK5o7EUhsEaBHd2a', 'Mohammodullah Emran', 'master', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD PRIMARY KEY (`inventory_order_id`);

--
-- Indexes for table `inventory_order_product`
--
ALTER TABLE `inventory_order_product`
  ADD PRIMARY KEY (`inventory_order_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `inventory_order`
--
ALTER TABLE `inventory_order`
  MODIFY `inventory_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `inventory_order_product`
--
ALTER TABLE `inventory_order_product`
  MODIFY `inventory_order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
