
-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `i_id` varchar(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `carbs` float DEFAULT NULL,
  `fat` float DEFAULT NULL,
  `fiber` float DEFAULT NULL,
  `protine` float DEFAULT NULL,
  `calory` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`i_id`, `name`, `carbs`, `fat`, `fiber`, `protine`, `calory`) VALUES
('101', 'panner', 2, 20, 0, 23, 265),
('102', 'Kaju', 30, 44, 5, 18, 553),
('103', 'curd', 3.4, 4.3, 0, 11, 98),
('104', 'potato', 17, 10, 1.6, 2, 77),
('105', 'carrot', 4.5, 1, 2.8, 1, 41),
('106', 'pea', 14, 0.4, 5.7, 5, 81),
('107', 'rice', 52, 10, 2, 5, 65),
('108', 'dal_fry', 24, 5.3, 4, 10.2, 191.4),
('109', 'tomato', 0, 0, 1.3, 0.9, 18),
('110', 'onion', 9, 0.1, 2.5, 1.1, 40),
('111', 'pepperoni', 0, 44, 0, 23, 494),
('112', 'cheese', 1.3, 33, 0, 25, 371),
('113', 'sambhar', 2, 14, 4.1, 4, 112),
('114', 'coconut chutney', 13.6, 33.2, 11, 3.6, 349),
('115', 'olive oil', 0, 100, 0, 0, 884),
('116', 'yeast', 18, 1.9, 0, 8, 325),
('117', 'peanut', 16, 49, 9, 26, 568),
('118', 'coco powder', 57.9, 13.7, 0, 19.6, 228),
('119', 'chocolate', 28, 11, 1.2, 3.8, 216),
('120', 'chocochips', 61, 27, 0, 5, 519),
('121', 'flour', 76, 1, 2.7, 10, 370),
('122', 'sugar', 100, 0, 0, 0.1, 379),
('123', 'milk', 11.7, 7.9, 0.8, 7.7, 149),
('124', 'cream', 3.7, 19, 0, 2.7, 196),
('125', 'pineapple', 13, 0.1, 1.4, 0.5, 50),
('126', 'vanilla', 13, 0.1, 0, 0.1, 288),
('127', 'strawberry', 8, 0.3, 2, 0.7, 33),
('128', 'banana', 23, 0.39, 2.6, 1.1, 89),
('129', 'butter', 0.1, 81, 0, 0.9, 717),
('130', 'oreo cookie', 21, 6, 1, 1, 140),
('131', 'egg yolks', 0, 4.5, 0, 2.7, 55),
('132', 'dosa', 18.6, 0.2, 1.5, 2.8, 86),
('133', 'vada', 8.9, 5.2, 1.8, 3.6, 94),
('134', 'idlli', 7.2, 0.1, 0.3, 1, 33),
('135', 'chappati', 15, 0.4, 0.5, 3, 70),
('136', 'butter Naan', 14.1, 3, 0.1, 2.2, 93);
