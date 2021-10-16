-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2021 at 08:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `role`, `email`, `mobile`, `status`) VALUES
(1, 'admin', 'admin', 0, '', '', 1),
(2, 'aditya', 'aditya', 1, 'aditya@gmail.com', '1234567890', 1),
(3, 'amit', 'amit', 1, 'amit@gmail.com', '1234567890', 1),
(5, 'vishal', 'vishal', 1, 'vishal@gmail.com', '1234567890', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(1, 'Clothing & accessories', 1),
(2, 'Electronics', 1),
(3, 'Furniture', 1),
(4, 'jewellery', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(1, 'Aditya', 'aditya@gmail.com', '1234567890', 'Test Query', '2021-09-24 01:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_master`
--

CREATE TABLE `coupon_master` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_type` varchar(10) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_master`
--

INSERT INTO `coupon_master` (`id`, `coupon_code`, `coupon_value`, `coupon_type`, `cart_min_value`, `status`) VALUES
(1, 'First50', 1000, 'Rupee', 1500, 1),
(2, 'First60', 20, 'Percentage', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `length` float NOT NULL,
  `breadth` float NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `mihpayid` varchar(20) NOT NULL,
  `ship_order_id` int(11) NOT NULL,
  `ship_shipment_id` int(11) NOT NULL,
  `payu_status` varchar(10) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `length`, `breadth`, `height`, `weight`, `txnid`, `mihpayid`, `ship_order_id`, `ship_shipment_id`, `payu_status`, `added_on`) VALUES
(1, 1, 'test', 'test', 110076, 'COD', 164299, 'Success', 3, 0, 0, 0, 0, 'eaad21770607ee0b25ba', '', 0, 0, '', '2020-05-15 10:29:38'),
(3, 1, 'Delhi', 'Delhi', 110076, 'COD', 10, 'pending', 2, 0, 0, 0, 0, '8834142e7821c1889b33', '', 0, 0, '', '2020-05-20 07:44:24'),
(4, 1, 'delhi', 'delhi', 110076, 'COD', 12000, 'pending', 2, 0, 0, 0, 0, '1bf668ba03dc15833001', '', 0, 0, '', '2020-05-20 07:56:44'),
(5, 1, 'Delhi', 'Delhi', 110076, 'payu', 16998, 'pending', 3, 0, 0, 0, 0, '8b1b93a4b63e0b2307a0', '', 0, 0, '', '2020-05-20 08:10:37'),
(6, 1, 'Dlhi', 'Dlhi', 110076, 'payu', 16998, 'success', 1, 0, 0, 0, 0, 'da1f0fd6ae533d8a2f70', '403993715521005867', 0, 0, '', '2020-05-20 08:22:27'),
(7, 3, 'Patna', 'Patna', 110076, 'COD', 1560, 'pending', 3, 0, 0, 0, 0, '36f4e1a258f5649996b5', '', 0, 0, '', '2020-05-22 11:24:46'),
(8, 3, 'aa', 'aa', 0, 'COD', 1900, 'pending', 3, 0, 0, 0, 0, '54a9bf67d824479004a4', '', 0, 0, '', '2020-05-22 11:27:17'),
(9, 1, 'Delhi', 'Delhi', 110076, 'COD', 1900, 'pending', 4, 0, 0, 0, 0, '62d6625c440ecc84aa78', '', 0, 0, '', '2020-05-22 09:58:57'),
(10, 1, 'Sarita Vihar', 'Delhi', 110076, 'COD', 150, 'pending', 3, 0, 0, 0, 0, '3532b3a4441fa64e2918', '', 0, 0, '', '2020-05-23 10:45:15'),
(11, 1, 'Sarita Vihar', 'Delhi', 110076, 'COD', 50, 'pending', 3, 20, 20, 20, 2.5, '1fbc5a06bfa6e2299f79', '', 0, 0, '', '2020-05-25 06:49:19'),
(16, 1, 'Sarita Vihar', 'delhi', 110076, 'COD', 1560, 'pending', 4, 20, 20, 20, 2.5, 'af5421697c0e596ca7f9', '', 38845635, 38565829, '', '2020-05-25 06:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(1, 1, 2, 1, 155800),
(2, 1, 1, 1, 8499);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Shipped'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `sub_categories_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `added_by`, `status`) VALUES
(1, 2, 0, 'laptop', 60000, 40000, 14, '888628470_product 1.png', 'laptop', 'this laptop is for sale', 0, 'laptop', '', 'laptop', 0, 1),
(2, 3, 0, 'sofa', 1500, 1300, 15, '437002513_product 2.jpg', 'sofa', 'sofa in black color', 0, 'sofa', '', 'sofa', 0, 1),
(3, 1, 0, 'Top', 1500, 950, 14, '348722836_product 3.jpg', 'girl tshirt', 'girl tshirt in black color', 0, 'tshirt', '', 'tshirt', 0, 1),
(4, 3, 0, 'office chair', 2000, 1700, 18, '187170188_product 4.jpg', 'office chair', 'office chair in yellow color', 0, 'office chair', '', 'office chair', 0, 1),
(5, 4, 0, 'Full Shirt', 1000, 600, 13, '843042923_product 5.jpg', 'full shirt', 'full shirt for women', 0, 'full shirt', 'full shirt', 'full shirt', 0, 1),
(6, 2, 0, 'Samsung', 50000, 42999, 8, '579908065_product 6.jpg', 'samsung mobile', 'samsung mobile for sale', 0, 'samsung mobile', '', 'samsung mobile', 0, 1),
(7, 1, 0, 'Jeans', 2000, 1599, 6, '371360863_product 7.jpeg', 'Jeans', 'Jeans for Women', 0, 'Jeans', '', 'Jeans', 0, 1),
(8, 1, 0, 'chinos', 800, 599, 6, '436793926_product 8.jpg', 'chinos', 'chinos foe men', 0, 'chinos', '', 'chinos', 0, 1),
(9, 1, 0, 'aviator', 4000, 3699, 9, '886011589_product 9.jpg', 'aviator', 'aviator-black-glass', 0, 'aviator', '', 'aviator', 0, 1),
(10, 4, 0, 'Ear rings', 7000, 5000, 8, '234408331_product 10.jpeg', 'Ear rings', 'Ear rings for girls and women', 0, 'Ear rings', 'Ear rings', 'Ear rings', 0, 1),
(11, 2, 0, 'smart phone', 15000, 11999, 7, '733807883_product 11.jpg', 'smart phone', 'realme smart phone', 0, 'smart phone', '', 'smart phone', 0, 1),
(12, 1, 0, 'Full shirts', 800, 599, 4, '467698031_product 12.jpg', 'Full shirts for men', 'Full shirts for men', 0, 'Full shirts for men', '', 'Full shirts for men', 0, 1),
(13, 3, 0, 'Chair', 6000, 3999, 8, '239728206_product 13.jpg', 'chair', 'chair for office', 0, 'chair for office', '', 'chair for office', 0, 1),
(14, 1, 0, 'Sports Shoe', 1700, 1499, 9, '347251449_product 14.jpg', 'sports shoe', 'sports shoe of size 8 for men', 0, 'sports shoe', '', 'sports shoe', 0, 1),
(15, 1, 0, 'shirts', 2000, 1599, 12, '112548032_product 15.jpg', 'shirts', 'shirts for men', 0, 'shirts', '', 'shirts', 0, 1),
(16, 2, 0, 'iPhone 13 pro max', 159000, 125999, 5, '147706632_product 16.jpg', 'iphone 13 pro max', 'iphone 13 pro max', 0, 'iphone 13 pro max', '', 'iphone 13 pro max', 0, 1),
(17, 1, 0, 'kurte', 1000, 799, 6, '836846897_product 17.jpeg', 'kurte for girl', 'kurte for girl', 0, 'kurte for girl', '', 'kurte for girl', 0, 1),
(18, 2, 0, 'Dslr Camera', 50000, 43999, 8, '777513235_product 18.jpg', 'Dslr camera', 'Dslr camera', 0, 'Dslr camera', '', 'Dslr camera', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `sub_categories` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `categories_id`, `sub_categories`, `status`) VALUES
(1, 1, 'T-Shirt', 1),
(2, 1, 'Trouser', 1),
(3, 1, 'Shirt', 1),
(4, 2, 'Laptop', 1),
(5, 2, 'smart phone', 1),
(6, 3, 'sofa', 1),
(7, 3, 'chair', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(1, 'Aditya', 'admin', 'aditya@gmail.com', '1234567890', '2021-09-24 01:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(16, 1, 4, '2020-05-13 08:54:24'),
(17, 1, 6, '2020-05-15 12:53:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
