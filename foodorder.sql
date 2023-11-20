-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 05:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('ayesha', 'Ayesha', 'ayeshazia@gmail.com', '21344', 'karachi', 'abc');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Prawns', 700, 'Fresh and delicious prawns perfect for winters!', 6, 'images/jp.jpg', 'ENABLE'),
(59, 'Masala Fish', 60, 'Fish fresh from the sea marinated in our special spices!', 6, 'images/mf.jpg', 'ENABLE'),
(60, 'Seekh Boti', 1100, 'This boti with the perfect blend of spice is the perfect meal for those who love something hot!', 6, 'images/sb.jpg', 'ENABLE'),
(61, 'Tikka Boti', 80, 'Our good old tikka boti is loved by all for its taste and aroma!', 6, 'images/tb.jpg', 'ENABLE'),
(62, 'Mutton Chops', 1200, 'Our special chops marinated in a delish sauce will make you chop chop!', 6, 'images/mc.jpg', 'ENABLE'),
(63, 'Stir Fried Rice', 75, 'Served with your choice of gravy!', 6, 'images/vfr.jpg', 'ENABLE'),
(65, 'Vegetable Fried Rice', 25, '- Served with your choice of gravy', 6, 'images/vf.jpg', 'ENABLE'),
(66, 'Chicken Chowmein', 500, 'Egg fried noodles with the perfect amount of veggies as you like!', 6, 'images/cc.jpg', 'ENABLE'),
(68, 'Chicken Manchurian', 600, 'Our good old saucy, chicken gravy that you will surely love!', 6, 'images/cm.jpg', 'ENABLE'),
(69, 'Chicken Broast', 1000, 'Our special deep fried chicken will make you forget kentucky!', 6, 'images/cbbb.jpg', 'ENABLE'),
(70, 'Chicken Nuggets', 20, 'A treat for the both the little ones and adults!', 6, 'images/cnnn.jpg', 'ENABLE'),
(71, 'Chicken Wing', 400, 'The wings with the perfect crisp and taste you have been longing for!', 6, 'images/cwww.jpg', 'ENABLE'),
(72, 'Jumbo Fries', 45, 'Potatoes done right with our special dips and masala on top!', 6, 'images/jff.jpg', 'ENABLE'),
(73, 'Thunder Sauce Burger', 35, 'Burger with our special chipotle home-made sauce!', 6, 'images/tsb.jpg', 'ENABLE'),
(75, 'Chicken Handi', 60, 'Butter, malai and everything nice!', 6, 'images/chh.jpg', 'ENABLE'),
(77, 'Katakat', 200, 'A treat for the desi and meat lovers!', 6, 'images/kk.jpg', 'ENABLE'),
(78, 'Matka Biryani', 75, 'Biryani but with a twist(matka) that you can\'t resist!', 2, 'images/mb.jpg', 'ENABLE'),
(80, 'Paneer Handi', 750, 'This paneer handi is a must-have for people who love paneer in their food!', 6, 'images/pr.jpg', 'ENABLE'),
(89, 'Momos', 123, 'Want some dumplings, we have them!', 7, 'images/momo.jpg', 'ENABLE'),
(90, 'Lasagna', 2000, 'Layers of meat and cheese for you to fall in love with!', 7, 'images/lasagna.jpg', 'ENABLE'),
(91, 'Lemon Mocktail', 560, 'Mocktail served on the rocks!', 7, 'images/lm.jpg', 'ENABLE'),
(92, 'Mint Lemonade', 500, 'Lemon Squeezy! ', 7, 'images/ml.jpg', 'ENABLE'),
(93, 'Boba Tea', 600, 'Popping bobas!', 7, 'images/bt.jpg', 'ENABLE'),
(94, 'Hot Chocolate', 400, 'Chocolatey goodness with marshamallows on top!', 7, 'images/hc.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('ayesha', 'Ayesha', 'ayeshazia@gmail.com', '2129', 'dashsah', 'xyz'),
('cinderella', 'queen', 'cin40856@gmail.com', '9487810674', 'north-nazimabad, karachi', 'die'),
('haris', 'harisRauf', 'hr123@gmail.com', '8903079750', 'xyz,karachi', 'abc'),
('ravi', 'Ravia', 'ravia@gmail.com', 'as', 'saisi', 'abc'),
('shahidjai07', 'shahid', 'shahid@gmail.com', '9541258761', 'lahore', 'kill');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(118, 66, 'Chicken Chowmein', 500, 1, '2022-12-08', 'ayesha', 6);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(2, 'soman Restaurant', 'soman@restaurant.com', '9887546821', 'karachi', 'aditi068'),
(6, 'Le food', 'lefood234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le food', 'ravi'),
(7, 'ayesha', 'aa@gmai.com', 'aa', 'aa', 'ayesha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
