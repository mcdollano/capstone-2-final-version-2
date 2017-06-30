-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2017 at 10:25 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wooden-hanger`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_brand` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_description`, `item_image`, `item_price`, `item_category`, `item_quantity`, `item_brand`) VALUES
(1, 'Herschel 1 Black', 'Black Herschel Backpack', 'item_images/herschel_black.jpg', 3500, 'Bags', 0, 'Herschel'),
(2, 'Herschel Camo', 'Camouflage Herschel', 'item_images/herschel_camo.jpg', 4000, 'Bags', 0, 'Herschel'),
(3, 'Herschel Crosshatch', 'Herschel Grey Backpack Crosshatch', 'item_images/herschel_crosshatch.jpg', 4000, 'Bags', 0, 'Herschel'),
(4, 'Herschel Floria', 'Floral Backpack', 'item_images/herschel_floria.jpg', 3000, 'Bags', 0, 'Herschel'),
(5, 'Herschel Lucite', 'Neon Green Herschel', 'item_images/herschel_lucite.jpg', 3800, 'Bags', 0, 'Herschel'),
(6, 'Michael Kors Watch', 'Smart Watch', 'item_images/michaelkores_watch1.png', 3500, 'Watches', 0, 'Michael Kors'),
(7, 'Michael Kors Watch', 'Smart Watch', 'item_images/michaelkores_watch1.png', 3500, 'Watches', 0, 'Michael Kors'),
(8, 'ahsdjahsjdhajsdh', 'asdjhasjdhajshasd', 'item_images/michaelkors_watch.png', 0, 'Watches', 4, 'Michael Kors');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `required_date` date NOT NULL,
  `shipped_date` date NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(24) NOT NULL,
  `user_username` varchar(24) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_number` int(24) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_role` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_username`, `user_password`, `user_number`, `user_address`, `user_role`) VALUES
(1, '', '', '', 'admin', 'secret', 0, '', 'regular'),
(2, '', '', '', 'asda', 'asd', 0, '', 'regular'),
(3, 'as', 'as', 'as', 'asda', 'asd', 0, '', 'regular'),
(4, 'haha', 'haha', 'haha', 'haha', 'haha', 0, '', 'regular'),
(5, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 0, '', 'regular'),
(6, 'mark', 'dollano', 'hahaha', 'mark', 'dollano', 0, '', 'regular'),
(7, 'markmark', 'markmark', 'markmark', 'markmark', '57fcccd96609f97a735090e4', 0, '', 'regular'),
(8, 'markmark', 'markmark', 'markmark', 'markmark', '57fcccd96609f97a735090e4aa1c74dcb02c95e6', 0, '', 'regular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`order_id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
