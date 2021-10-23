
-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` varchar(5) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `bdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `contact_no` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `coupon_count` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `fname`, `mname`, `lname`, `city`, `state`, `country`, `bdate`, `age`, `contact_no`, `email`, `coupon_count`, `username`, `password`) VALUES
('C_1', 'Prince', 'Amarshibhai', 'Dalsaniya', 'Rajkot', 'Gujarat', 'India', '2001-09-14', 18, '9558867506', 'prince.d@ahduni.edu.in', 2, 'p', 'pri'),
('C_2', 'Mithilesh', 'Parthbhai', 'Thakkar', 'Gandhinagar', 'Gujarat', 'India', '2001-09-16', 18, '9265571914', 'mithilesh.t@ahduni.edu.in', 2, 'm', 'mit'),
('C_3', 'Yagnik', 'Bharatbhai', 'Hingarajiya', 'Rajkot', 'Gujarat', 'India', '2000-05-06', 19, '8469551870', 'yagnik.h@ahduni.edu.in', 2, 'y', 'yh');
