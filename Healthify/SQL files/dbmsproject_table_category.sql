
-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` varchar(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `name`) VALUES
('Cat_1', 'Dessert'),
('Cat_2', 'SouthIndian'),
('Cat_3', 'Italian'),
('Cat_4', 'Punjabi'),
('Cat_5', 'Gujarati');
