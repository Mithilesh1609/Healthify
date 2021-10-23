
-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `p_id` varchar(5) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `o_id` varchar(5) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payable` float DEFAULT NULL,
  `saved` float DEFAULT NULL,
  `p_mode` varchar(20) DEFAULT NULL,
  `offer_id` varchar(5) DEFAULT NULL,
  `coupon_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
