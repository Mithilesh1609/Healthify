
-- --------------------------------------------------------

--
-- Table structure for table `cupon_transaction`
--

CREATE TABLE `cupon_transaction` (
  `id` varchar(5) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `t_date` datetime DEFAULT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
