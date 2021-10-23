
-- --------------------------------------------------------

--
-- Table structure for table `cupons`
--

CREATE TABLE `cupons` (
  `cupon_id` varchar(5) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `coupon_discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cupons`
--

INSERT INTO `cupons` (`cupon_id`, `description`, `coupon_discount`) VALUES
('BDAY', 'Get 80% discount on your Birthday', 80),
('FIRST', 'Get 15% discount on your first 2 order', 15),
('PAYTM', 'Get 25% discount on paying by PayTm', 25);
