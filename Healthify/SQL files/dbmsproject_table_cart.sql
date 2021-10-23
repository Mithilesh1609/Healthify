
-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `customer_id` varchar(5) NOT NULL,
  `r_id` varchar(5) NOT NULL,
  `food_id` varchar(5) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`customer_id`, `r_id`, `food_id`, `quantity`) VALUES
('C_1', 'R_7', 'F_010', 1),
('C_1', 'R_7', 'F_020', 2),
('C_2', 'R_1', 'F_016', 1),
('C_2', 'R_1', 'F_019', 3);

--
-- Triggers `cart`
--
DELIMITER $$
CREATE TRIGGER `prevent_duplication_cart` BEFORE INSERT ON `cart` FOR EACH ROW IF (EXISTS(SELECT * FROM cart WHERE food_id = NEW.food_id AND r_id = NEW.r_id AND customer_id = NEW.customer_id)) THEN
    SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'It is already in your Cart!!';
END IF
$$
DELIMITER ;
