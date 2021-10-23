
-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` varchar(5) NOT NULL,
  `r_id` varchar(5) DEFAULT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `food_id` varchar(5) DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
