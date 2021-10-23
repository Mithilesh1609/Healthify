
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` varchar(5) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `block_no` varchar(5) DEFAULT NULL,
  `street` varchar(20) DEFAULT NULL,
  `landmark` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `p_id` varchar(5) DEFAULT NULL,
  `o_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
