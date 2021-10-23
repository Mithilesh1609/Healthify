
-- --------------------------------------------------------

--
-- Table structure for table `favourite_restaurant`
--

CREATE TABLE `favourite_restaurant` (
  `customer_id` varchar(5) NOT NULL,
  `r_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite_restaurant`
--

INSERT INTO `favourite_restaurant` (`customer_id`, `r_id`) VALUES
('C_1', 'R_5'),
('C_1', 'R_7'),
('C_2', 'R_1'),
('C_2', 'R_6');

--
-- Triggers `favourite_restaurant`
--
DELIMITER $$
CREATE TRIGGER `prevent_duplication_favourite_restaurant` BEFORE INSERT ON `favourite_restaurant` FOR EACH ROW IF (EXISTS(SELECT * FROM favourite_food WHERE r_id = NEW.r_id AND customer_id = NEW.customer_id)) THEN
    SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'It is already in your favourite list!!';
END IF
$$
DELIMITER ;
