
-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `r_id` varchar(5) NOT NULL,
  `r_name` varchar(20) DEFAULT NULL,
  `r_rating` float DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`r_id`, `r_name`, `r_rating`, `contact_no`, `website`, `email`) VALUES
('R_1', 'Mocha', 4.9, '9725200002', 'https://www.mocha.co.in/locations/mocha-ahmedabad.html', 'franchise@mocha.co.in'),
('R_2', 'Buttercupp', 4.3, '7940325838', 'https://www.zomato.com/ahmedabad/buttercupp-vastrapur', NULL),
('R_3', 'Old School', 4.5, '9825841001', 'https://www.zomato.com/ahmedabad/old-school-satellite', 'oldschooleatery@gmail.com'),
('R_4', 'Sasuji', 4.1, '7926405066', 'https://sasuji.in/', 'sasuji@sasuji.in'),
('R_5', 'Farki', 4.7, '7490947402', 'http://farki.in/', 'info@farki.in'),
('R_6', 'Domino\'s Pizza', 3.8, '7930113800', 'https://www.dominos.co.in/', 'guestcaredominos@jublfood.com'),
('R_7', 'Nini\'s Kitchen', 4.5, '8860640879', 'https://nrai.org/contact-us/', 'info@nrai.org');
