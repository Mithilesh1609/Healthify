
-- --------------------------------------------------------

--
-- Table structure for table `order_content`
--

CREATE TABLE `order_content` (
  `o_id` varchar(5) NOT NULL,
  `r_id` varchar(5) DEFAULT NULL,
  `food_id` varchar(5) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
