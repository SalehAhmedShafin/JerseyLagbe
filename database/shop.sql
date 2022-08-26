
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Germany', 'ADIDAS', 12.00, './assets/products/1.jpg', Now()), -- NOW()
(2, 'Argentina', 'ADIDAS', 122.00, './assets/products/2.jpg', NOW()),
(3, 'Arsenal Home', 'ADIDAS', 122.00, './assets/products/3.jpg', NOW()),
(4, 'Arsenal Away', 'PUMA', 122.00, './assets/products/4.jpg', NOW()),
(5, 'Atletico Madrid Home', 'ADIDAS', 122.00, './assets/products/5.jpg', NOW()),
(6, 'Arsenal', 'PUMA', 122.00, './assets/products/6.jpg', NOW()),
(7, 'Tottenham Home', 'PUMA', 122.00, './assets/products/8.jpg', NOW()),
(8, 'Barcelona Home', 'ADIDAS', 122.00, './assets/products/10.jpg', NOW()),
(9, 'Real Madrid Home', 'ADIDAS', 152.00, './assets/products/11.jpg', NOW()),
(10, 'Real Madrid Away', 'ADIDAS', 152.00, './assets/products/12.jpg', NOW()),
(11, 'Manchester City Home', 'ADIDAS', 152.00, './assets/products/13.jpg', NOW()),
(12, 'Inter Milan', 'ADIDAS', 152.00, './assets/products/14.jpg', NOW()),
(13, 'Manchester City Away', 'PUMA', 152.00, './assets/products/15.jpg', NOW());

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Shafin', 'Ahmed', '2022-03-28 13:07:17'),
(2, 'Saleh', 'Ahmed', '2022-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

