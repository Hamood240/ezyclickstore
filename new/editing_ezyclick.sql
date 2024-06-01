-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 06:02 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `editing_ezyclick`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`user_id`, `user_name`, `user_password`) VALUES
(3, 'asad', 'asad123'),
(4, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(250) NOT NULL,
  `p_names` varchar(250) NOT NULL,
  `cus_name` varchar(250) NOT NULL,
  `contact_no` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `details` varchar(250) NOT NULL,
  `zip_code` int(250) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `p_names`, `cus_name`, `contact_no`, `email`, `address`, `country`, `details`, `zip_code`, `time`, `quantity`) VALUES
(26, 'Where the Crawdads Sing ', 'asad', '0354563411221', 'asadlakhani@gmail.com', 'north', 'pakistan', 'DFDFGSDFG', 76700, '2022-09-07 15:09:54', 2),
(27, 'The Silent Patient', 'asad', '0354563411221', 'asadlakhani@gmail.com', 'north', 'pakistan', 'DFDFGSDFG', 76700, '2022-09-07 15:09:54', 2),
(28, 'The Girl on the Train', 'asad', '0354563411221', 'asadlakhani@gmail.com', 'north', 'pakistan', 'DFDFGSDFG', 76700, '2022-09-07 15:09:54', 2),
(29, 'House of Leaves', 'asad', '0354563411221', 'asadlakhani@gmail.com', 'north', 'pakistan', 'DFDFGSDFG', 76700, '2022-09-07 15:09:54', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `product_type` varchar(250) NOT NULL,
  `price` int(250) NOT NULL,
  `c_price` int(250) NOT NULL,
  `details` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `image`, `product_type`, `price`, `c_price`, `details`, `brand`, `tags`) VALUES
(33, 'The Silent Patient', '1662557458_the silent patient.jpg', 'thrill', 2000, 5000, 'The Silent Patient is a 2019 psychological thrille', 'Novel by Alex Michaelides', 'new books ; book ,The Silent Patient'),
(34, 'Gone Girl', '1662557595_th2.jpg', 'thril', 5000, 6000, 'Gone Girl is a 2012 crime thriller novel by Americ', 'Novel by Gillian Flynn', 'new books , book ,Gone Girl , thrill'),
(35, 'Verity', '1662557677_th3.jpg', 'thrill', 5000, 7000, 'Ew York Times BestsellerUSA Today BestsellerThe\r\nG', 'Book by Colleen Hoover', 'Verity , new books , book  , thrill'),
(36, 'The Girl on the Train', '1662557751_1662531343_th4.jpg', 'thrill', 4000, 8000, 'The Girl on the Train is a 2015 psychological thri', 'Novel by Paula Hawkins', 'The Girl on the Train , new books , book  , thrill'),
(37, 'House of Leaves', '1662557828_1662531598_hr1.jpg', 'horror', 4000, 5500, 'House of Leaves is the debut novel by American aut', 'Novel by Mark Z. Danielewski', 'House of Leaves , new books , book  , horror'),
(38, 'The Haunting of Hill House', '1662557914_1662532838_h2.jpg', 'horror', 8000, 10000, 'The Haunting of Hill House is a 1959 gothic horror', 'Novel by Shirley Jackson', 'The Haunting of Hill House ,new books , book  , ho'),
(39, 'The Shining', '1662558050_1662533012_h3.jpg', 'horror', 5000, 7000, 'The Shining is a 1977 horror novel by American aut', 'Novel by Stephen King', 'The Shining , new books , book  , horror'),
(40, 'Dracula', '1662558107_1662533203_h4.jpg', 'horror', 10000, 15000, 'Dracula is a novel by Bram Stoker, published in 18', 'Novel by Bram Stoker', 'Dracula , new books , book  , horror'),
(41, 'Guns, Germs, and Steel', '1662558192_1662533514_ht1.jpg', 'HISTORY', 6000, 7500, 'Guns, Germs, and Steel: The Fates of Human Societi', 'Book by Jared Diamond', 'Guns, Germs, and Steel , new books , book  , histo'),
(42, 'New Revelations of the Americas Before', '1662558266_1662533789_ht2.jpeg', 'history', 8000, 9000, '1491: New Revelations of the Americas Before Colum', 'Charles C. Mann', '1491: New Revelations of the Americas Before ,new '),
(43, 'Genghis Khan', '1662558386_1662534298_ht3.jpg', 'HISTORY', 4000, 6000, 'Genghis Khan and the Making of the Modern World is', 'Jack Weatherford', 'Genghis Khan , new books , book  , history'),
(44, 'Pride and Prejudice', '1662558472_f1.jpg', 'FICTION', 8000, 10000, 'Pride and Prejudice is an 1813 novel of manners by', 'Novel by Jane Austen', 'Pride and Prejudice , new books , book  , FICTION'),
(45, 'Nineteen Eighty-Four', '1662558525_1662535049_f2.jpg', 'FICTION', 12000, 15000, 'Nineteen Eighty-Four is a dystopian social science', 'Novel by George Orwell', 'Nineteen Eighty-Four , new books , book  , FICTION'),
(46, 'Where the Crawdads Sing ', '1662558597_f4.jpg', 'FICTION', 4500, 8500, 'Where the Crawdads Sing is a 2018 coming-of-age mu', 'Delia Owens', 'Where the Crawdads Sing , new books , book  , FICT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
