
-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE `food_item` (
  `food_id` varchar(5) NOT NULL,
  `food_name` varchar(30) DEFAULT NULL,
  `category_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_item`
--

INSERT INTO `food_item` (`food_id`, `food_name`, `category_id`) VALUES
('F_001', 'Butter Cup icecream', 'Cat_1'),
('F_002', 'Chocochip cookie icecream', 'Cat_1'),
('F_003', 'Chocolate icecream', 'Cat_1'),
('F_004', 'Cookie and cream icecream', 'Cat_1'),
('F_005', 'Malted Vanilla with peanut ice', 'Cat_1'),
('F_006', 'Tin Roof icecream', 'Cat_1'),
('F_007', 'vada sambhar', 'Cat_2'),
('F_008', 'Idlli sambhar', 'Cat_2'),
('F_009', 'Dosa', 'Cat_2'),
('F_010', 'Masala dosa', 'Cat_2'),
('F_011', 'Maysore masala dosa', 'Cat_2'),
('F_012', 'Pepprtoni and Pink Sauce Pizza', 'Cat_3'),
('F_013', 'Chicago style pizza', 'Cat_3'),
('F_014', 'Nepolian style pizza', 'Cat_3'),
('F_015', 'Roman style pizza', 'Cat_3'),
('F_016', 'Paneer Kofta Naan', 'Cat_4'),
('F_017', 'Paneer Bhurji Naan', 'Cat_4'),
('F_018', 'Paneer Kofta Chappati', 'Cat_5'),
('F_019', 'Paneer Bhurji Chappati', 'Cat_5'),
('F_020', 'Dal rice', 'Cat_5');
