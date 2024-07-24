-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 01:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(52, 31, 28, 'Rohu or Carpo Fish', 300, 1, 'Screenshot 2024-07-19 005711.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 31, 'Sakshi', '1234567890', 'sakshi@gmail.com', 'paypal', 'flat no. #445 Guru Nanak Nagar Patiala Punjab India - 147001', ', Dragonfruit ( 1 )', 100, '18-Jul-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(24, 'Dragonfruit', 'fruits', 'Dragon fruit is a tropical fruit that’s low in calories and high in fiber.Very Good for diabetic people.', 100, 'dragonfruit.jpeg'),
(25, 'Organic eggs', 'eggs', 'Organic eggs are produced by hens fed rations that were grown without most conventional pesticides, fungicides etc.', 190, 'Screenshot 2024-07-19 004809.png'),
(26, 'Conventional Eggs', 'eggs', 'Eggs laid by hens living in cages with access to feed, water, and security. ', 120, 'Screenshot 2024-07-19 005134.png'),
(27, 'Cage-free eggs', 'eggs', 'Eggs laid by hens at indoor floor operations, sometimes called free-roaming. ', 150, 'Screenshot 2024-07-19 005306.png'),
(28, 'Rohu or Carpo Fish', 'fish', 'A species of the carp family, rohu fish is a delicacy in the eastern states of India, especially in West Bengal and Bihar.', 300, 'Screenshot 2024-07-19 005711.png'),
(29, 'Rani or Pink Perch', 'fish', 'As the name suggests, this pink perch generally has pinkish-red skin, small in size, and is less oily.', 400, 'Screenshot 2024-07-19 005825.png'),
(30, 'Chicken', 'meat', 'To prepare chicken for consumption, you can grill it, bake it, steam it, roast it, or fry it. ', 250, 'Screenshot 2024-07-19 010055.png'),
(31, 'Turkey', 'meat', 'Turkey is a large poultry bird that is in the same white meat category as chicken. Turkey Meat is a slightly darker.', 400, 'Screenshot 2024-07-19 010308.png'),
(32, 'Goose', 'meat', 'Cooked goose is also a good source of vitamin B6, niacin, riboflavin, and vitamin B12.', 500, 'Screenshot 2024-07-19 010437.png'),
(33, 'Strawberry', 'fruits', 'Strawberries are a popular type of fruit known for their vibrant red color and sweet, juicy flavor.', 100, 'Screenshot 2024-07-19 010703.png'),
(34, 'Red Apple', 'fruits', 'Red apples are one of the most widely consumed fruits worldwide. These have a thin red skin surrounding.', 50, 'Screenshot 2024-07-19 010847.png'),
(35, 'Green Grapes', 'fruits', 'Green grapes are a type of green berry with sweet, juicy flavors. These have a crisp, firm texture.', 80, 'Screenshot 2024-07-19 010950.png'),
(36, 'Potatoes', 'vegitables', 'Potatoes (Solanum tuberosum) are a starchy root vegetable that are among the most popular varieties of vegetable.', 20, 'Screenshot 2024-07-19 011143.png'),
(37, 'Beetroot', 'vegitables', 'Beets (or, beetroot) is another example of a delicious root vegetable that is extremely good for you.', 50, 'Screenshot 2024-07-19 011253.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'Surbhi', 'surbhi@gmail.com', 'ecf1443377f77e5654fa2e41c1e8ea36', 'user', 'candidate4.jpg');
(31, 'SurbhiKhosla', 'khoslasurbhi@gmail.com', 'ecf1443377f77e5654fa2e41c1e8ea36', 'user', 'candidate4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(51, 31, 33, 'Strawberry', 100, 'Screenshot 2024-07-19 010703.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
