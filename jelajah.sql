-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 09, 2023 at 12:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jelajah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_dob` date NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_addr` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_isActive` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_pass`, `user_gender`, `user_dob`, `user_email`, `user_phone`, `user_addr`, `user_image`, `user_isActive`) VALUES
(13, 'New User', '698d51a19d8a121ce581499d7b701668', 'Male', '2023-11-21', 'NewUser@gmail.com', '010101010101', 'aaa', 'Profile-Picture-39570.jpg', 'True'),
(14, 'Modified User3', '698d51a19d8a121ce581499d7b701668', 'Male', '2023-11-24', 'ModifiedUser2@gmail.com', '112112112112', 'yes', 'Profile-Picture-83517.jpg', 'False'),
(15, 'Registerd User', '698d51a19d8a121ce581499d7b701668', 'Male', '0000-00-00', 'RegUser1@gmail.com', '', '', 'Profile-Picture-79682.jpg', 'True'),
(16, 'Registerd User2', '698d51a19d8a121ce581499d7b701668', 'Male', '0000-00-00', 'RegUser2@gmail.com', '', '', 'Profile-Picture-29394.jpg', 'True'),
(17, 'New User2', '698d51a19d8a121ce581499d7b701668', '', '0000-00-00', 'NewUser2@gmail.com', '', '', '', 'True'),
(18, 'Created User1', '698d51a19d8a121ce581499d7b701668', 'Male', '0000-00-00', 'CreatedUser1@gmail.com', '', '', 'Profile-Picture-82108.png', 'True'),
(20, 'Sus User1', '698d51a19d8a121ce581499d7b701668', 'Male', '0000-00-00', 'SusUser23@gmail.com', '20000000000', '', 'Profile-Picture-13925.jpg', 'True'),
(21, 'Carlene Very Very Short', '698d51a19d8a121ce581499d7b701668', 'Male', '0000-00-00', 'CarleneVeryVeryShort@gmail.com', '', '                        ', 'Profile-Picture-1478.gif', 'True'),
(22, 'Tester User5', '698d51a19d8a121ce581499d7b701668', 'Male', '2023-12-23', 'TesterUser123@gmail.com', '(+62) 81808037817', 'user1house', 'Profile-Picture-92763.png', 'True'),
(23, 'New RegUser1', '698d51a19d8a121ce581499d7b701668', '', '0000-00-00', 'NewRegUser1@gmail.com', '', '', '', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_cart`
--

CREATE TABLE `tb_user_cart` (
  `user_cart_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `workshop_id` varchar(100) NOT NULL,
  `cart_guests` int(5) NOT NULL,
  `cart_time` time(6) NOT NULL,
  `cart_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user_cart`
--

INSERT INTO `tb_user_cart` (`user_cart_id`, `user_id`, `workshop_id`, `cart_guests`, `cart_time`, `cart_date`) VALUES
(1, '13', '1', 4, '13:55:00.000000', '2023-12-26'),
(2, '13', '2', 7, '13:24:00.000000', '2023-12-12'),
(3, '13', '12', 8, '15:24:00.000000', '2023-12-29'),
(4, '13', '11', 2, '12:23:00.000000', '2023-12-20'),
(5, '13', '2', 1, '14:07:00.000000', '2023-11-30'),
(8, '17', '1', 6, '15:35:00.000000', '2023-12-21'),
(10, '18', '2', 8, '14:35:00.000000', '2023-12-27'),
(17, '19', '1', 4, '00:00:00.000000', '0000-00-00'),
(18, '19', '2', 4, '00:00:00.000000', '0000-00-00'),
(19, '19', '1', 8, '21:22:00.000000', '2023-12-30'),
(20, '20', '1', 5, '00:00:00.000000', '0000-00-00'),
(21, '13', '1', 5, '23:31:00.000000', '2023-12-29'),
(25, '21', '2', 5, '00:00:00.000000', '0000-00-00'),
(27, '22', '2', 5, '17:28:00.000000', '2023-12-22'),
(28, '13', '12', 1, '00:00:00.000000', '0000-00-00'),
(29, '21', '15', 5, '15:15:00.000000', '2023-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_wishlist`
--

CREATE TABLE `tb_user_wishlist` (
  `wishlist_id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `workshop_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user_wishlist`
--

INSERT INTO `tb_user_wishlist` (`wishlist_id`, `user_id`, `workshop_id`) VALUES
(11, 18, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_workshop`
--

CREATE TABLE `tb_workshop` (
  `workshop_id` int(100) NOT NULL,
  `workshop_name` varchar(100) NOT NULL,
  `workshop_addr` varchar(100) NOT NULL,
  `workshop_duration` int(10) NOT NULL,
  `workshop_date` date NOT NULL,
  `workshop_time` time(6) NOT NULL,
  `workshop_desc_l` varchar(500) NOT NULL,
  `workshop_desc_g` varchar(500) NOT NULL,
  `workshop_price` int(20) NOT NULL,
  `workshop_isActive` varchar(10) NOT NULL,
  `workshop_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_workshop`
--

INSERT INTO `tb_workshop` (`workshop_id`, `workshop_name`, `workshop_addr`, `workshop_duration`, `workshop_date`, `workshop_time`, `workshop_desc_l`, `workshop_desc_g`, `workshop_price`, `workshop_isActive`, `workshop_type`) VALUES
(1, 'Workshop A', 'aaa', 200, '2023-11-15', '10:50:00.000000', 'aaa', 'aaa', 200, 'True', 'Crafting'),
(2, 'Workshop A', 'aaa', 200, '2023-11-15', '10:50:00.000000', 'aaa', 'aaa', 200, 'True', 'Crafting'),
(3, 'Workshop B', 'aab', 600, '2023-11-01', '14:04:00.000000', 'abba', 'abba', 600, 'True', 'Crafting'),
(4, 'Workshop C', 'aab', 500, '2023-11-30', '13:08:00.000000', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bono', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bono', 200, 'True', 'Crafting'),
(5, 'Workshop D', 'abba', 200, '2023-10-26', '00:25:00.000000', 'aaa', 'aaa', 200000, 'True', 'Crafting'),
(6, 'Workshop E', 'abba', 500, '2023-12-13', '01:25:00.000000', 'aaaaa', 'aaaaa', 300000, 'True', 'Crafting'),
(7, 'Workshop E', 'abba', 1200, '2023-12-27', '00:26:00.000000', '60000', '12345', 60000, 'True', 'Crafting'),
(8, 'Workshop E2', 'aab', 222, '2023-12-20', '01:31:00.000000', 'alot', 'alot', 600000, 'True', 'Crafting'),
(9, 'Workshop E5', 'abba', 1111, '2023-12-19', '02:33:00.000000', 'a123', '123', 500000, 'True', 'Crafting'),
(10, 'Workshop E2', 'aab', 1241255, '2023-12-18', '21:32:00.000000', 'aaa', 'aaa', 600000, 'True', 'Crafting'),
(11, 'Workshop A123', 'abba', 333, '2023-12-22', '01:32:00.000000', 'a123', 'a123', 500000, 'True', 'Crafting'),
(12, 'Cooking Workshop A', 'adda', 112, '2023-12-28', '00:42:00.000000', 'yes', 'yes', 20000, 'True', 'Cooking'),
(13, 'Cooking Workshop B', '1234', 20, '2023-12-13', '00:46:00.000000', '111', '111', 10000, 'True', 'Cooking'),
(14, 'Workshop E22', 'aaa', 200, '2023-12-06', '18:31:00.000000', '111', '111', 600000, 'True', 'Cooking'),
(15, 'The Workshop', 'a workshop address', 500, '2023-12-13', '12:56:00.000000', 'a workshop description', 'another workshop description', 60000, 'True', 'Cooking');

-- --------------------------------------------------------

--
-- Table structure for table `tb_workshop_images`
--

CREATE TABLE `tb_workshop_images` (
  `workshop_id` int(100) NOT NULL,
  `workshop_image` varchar(100) NOT NULL,
  `workshop_image_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_workshop_images`
--

INSERT INTO `tb_workshop_images` (`workshop_id`, `workshop_image`, `workshop_image_id`) VALUES
(1, 'Profile-Picture-64508.png', 5),
(1, 'Profile-Picture-62042.png', 6),
(2, 'Profile-Picture-44816.png', 7),
(12, 'Profile-Picture-5970.png', 8),
(3, 'Profile-Picture-52639.png', 9),
(2, 'Profile-Picture-76712.png', 10),
(14, 'Profile-Picture-59282.png', 11),
(14, 'Profile-Picture-39495.png', 12),
(14, 'Profile-Picture-10006.png', 13),
(4, 'Profile-Picture-94454.png', 14),
(1, 'Profile-Picture-68926.png', 15),
(15, 'Profile-Picture-90087.png', 16),
(15, 'Profile-Picture-2814.png', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tb_user_cart`
--
ALTER TABLE `tb_user_cart`
  ADD PRIMARY KEY (`user_cart_id`);

--
-- Indexes for table `tb_user_wishlist`
--
ALTER TABLE `tb_user_wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- Indexes for table `tb_workshop`
--
ALTER TABLE `tb_workshop`
  ADD PRIMARY KEY (`workshop_id`);

--
-- Indexes for table `tb_workshop_images`
--
ALTER TABLE `tb_workshop_images`
  ADD PRIMARY KEY (`workshop_image_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_user_cart`
--
ALTER TABLE `tb_user_cart`
  MODIFY `user_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_user_wishlist`
--
ALTER TABLE `tb_user_wishlist`
  MODIFY `wishlist_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_workshop`
--
ALTER TABLE `tb_workshop`
  MODIFY `workshop_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_workshop_images`
--
ALTER TABLE `tb_workshop_images`
  MODIFY `workshop_image_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
