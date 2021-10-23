
-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` varchar(5) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `r_id` varchar(5) NOT NULL,
  `given_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `description`, `r_id`, `given_discount`) VALUES
('OF_1', 'Get 40% off on orders with minimum order amount 200', 'R_1', 40),
('OF_1', 'Get 40% off on orders with minimum order amount 200', 'R_4', 40),
('OF_1', 'Get 40% off on orders with minimum order amount 200', 'R_7', 40),
('OF_2', 'Free delivery on selected restaurants', 'R_2', -10),
('OF_2', 'Free delivery on selected restaurants', 'R_6', -10);
