
-- --------------------------------------------------------

--
-- Table structure for table `favourite_food`
--

CREATE TABLE `favourite_food` (
  `food_id` varchar(5) NOT NULL,
  `customer_id` varchar(5) NOT NULL,
  `r_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite_food`
--

INSERT INTO `favourite_food` (`food_id`, `customer_id`, `r_id`) VALUES
('F_014', 'C_2', 'R_6'),
('F_015', 'C_1', 'R_1'),
('F_016', 'C_1', 'R_7'),
('F_016', 'C_2', 'R_1'),
('F_019', 'C_2', 'R_1'),
('F_020', 'C_1', 'R_7'),
('F_020', 'C_2', 'R_4');

--
-- Triggers `favourite_food`
--
DELIMITER $$
CREATE TRIGGER `prevent_duplication_favourite_food` BEFORE INSERT ON `favourite_food` FOR EACH ROW IF (EXISTS(SELECT * FROM favourite_food WHERE food_id = NEW.food_id AND r_id = NEW.r_id AND customer_id = NEW.customer_id)) THEN
    SIGNAL SQLSTATE VALUE '45000' SET MESSAGE_TEXT = 'It is already in your favourite list!!';
END IF
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `prevent_wrong_entries_favorite_food` BEFORE INSERT ON `favourite_food` FOR EACH ROW IF NOT EXISTS(SELECT * from menu m WHERE m.food_id = NEW.food_id AND m.r_id = NEW.r_id) THEN
	SIGNAL SQLSTATE VALUE '45001' SET MESSAGE_TEXT = 'This restaurant dont sell this food item. Sorry !!';
END IF
$$
DELIMITER ;
