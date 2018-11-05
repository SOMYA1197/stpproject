-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2018 at 05:51 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `mobile`, `created_at`, `updated_at`, `status`) VALUES
(1, 'somya', 'pass', 'somya@gmail.com', '9672005097', 0, 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `date` varchar(255) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `payment_mode`, `date`, `description`) VALUES
(1, '500', 'paytm', '0000-00-00', 'advance payment'),
(2, '100', 'paytm', '2018-07-13', 'dmndsfjg'),
(3, '100', 'paytm', '2018-07-12', 'ewdhuiwe'),
(4, '100', 'paytm', '2018-07-19', 'dghdfsfd'),
(5, '100', 'paytm', '2018-07-20', 'bhjhfngk'),
(6, '100', 'paytm', '2018-07-14', 'nbmglbkdj'),
(7, '100', 'paytm', '2018-07-11', 'mj nklfvj'),
(8, '100', 'paytm', '2018-07-12', 'jfjfidj'),
(9, '100', 'paytm', '2018-07-19', 'fhfk'),
(10, '100', 'paytm', '2018-07-21', 'hsddfsjhfkj');

-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE `student_reg` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `second_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `area` varchar(100) NOT NULL,
  `pincode` int(20) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `class` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `created_at` int(100) NOT NULL,
  `updated_at` int(100) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_reg`
--

INSERT INTO `student_reg` (`id`, `first_name`, `second_name`, `username`, `password`, `email`, `mobile`, `area`, `pincode`, `avatar`, `class`, `gender`, `created_at`, `updated_at`, `status`) VALUES
(1, 'nubul', 'mushahary', 'nubul', 'pass', 'nubulmachary@gmail.com', '9876543210', 'Guwahati', 781017, 'admin.png', 'BCA', 'male', 0, 0, 'active'),
(2, 'somya', '', 'somya', '123', 'somyavashistha@gmail.com', '9672005097', 'jaipur', 302033, 'somya.png', 'mca', '', 0, 0, 'active'),
(5, 'annu', 'jatt', 'annu', '12345', 'annu@gmail.com', '9672005097', 'haryana', 302033, 'annu.jpg', 'b.tech', 'female', 0, 0, 'active'),
(6, 'somya', 'vashisth', 'somya vashisth', '12345', 'somya@gmail.com', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(7, 'somya', 'vashisth', 'somya vashisth', '12345', '', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(8, 'somya', 'vashisth', 'somya vashisth', '12345', 'somya@gmail.com', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(9, 'somya', 'vashisth', 'somya vashisth', '12345', '', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(10, 'somya', 'vashisth', 'somya vashisth', '12345', '', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(11, 'somya', 'vashisth', 'somya vashisth', '12345', '', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(12, 'somya', 'vashisth', 'somya vashisth', '12345', '', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(13, 'somya', 'vashisth', 'somya vashisth', '12345', '', '9672005097', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(14, 'rishita', 'sharma', 'rishi', 'rishi', '', '8239323203', 'jaipur', 302033, '', 'mca', 'on', 0, 0, 'active'),
(15, 'vikas', 'malik', 'vikas malik', 'vikas', '', '9672005097', 'gurugram', 2200, '', 'b.tech', 'on', 0, 0, 'active'),
(16, 'rishita', 'sharma', 'rishi', 'rishi', 'rishi@gmail.com', '9546875448', 'jaipur', 302033, 'rishi.jpg', 'bca', 'on', 0, 0, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_reg`
--

CREATE TABLE `tutor_reg` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `second_name` varchar(1000) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `area` varchar(100) NOT NULL,
  `pin_code` int(30) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `age` varchar(100) NOT NULL,
  `experience` varchar(100) NOT NULL,
  `expertise` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_reg`
--

INSERT INTO `tutor_reg` (`id`, `first_name`, `second_name`, `username`, `password`, `email`, `mobile_no`, `area`, `pin_code`, `avatar`, `age`, `experience`, `expertise`, `qualification`, `gender`, `resume`, `created_at`, `updated_at`, `status`) VALUES
(1, 'ashish', 'yadav', 'ashishyadav', 'pass', 'ashishyadav@gmail.com', '457893245', 'gurugram', 201245, 'ashish.jpg', '27', '7years', 'it', 'mca', 'male', 'hgjh', 0, 0, 'active'),
(2, 'nubul', 'mushahary', 'nubsy', '12345', 'nubsy@gmail.com', '124578965', 'guaahati', 781017, 'nubsy.jpg', '24', '4years', 'full stag', 'bca', 'ma', '', 0, 0, ''),
(3, 'vikas', 'malik', 'vikas malik', 'vikas', 'vikasmalik@gmail.com', '9125745475', 'gurugram', 2200, 'annu.jpg', '21', '2years', 'python', 'btech', 'on', 'vikas.jpg', 0, 0, 'active'),
(4, 'somya', 'vashisth', 'somya vashisth', 'somya', 'somyavashistha@gmail.com', '9672005097', 'jaipur', 302033, 'somya.jpg', '21', '5 years', 'it', 'mca', 'on', 'somya.jpg', 0, 0, 'active'),
(5, 'anustha', 'choudhary', 'anusstha', 'annu', 'annu@gmail.com', '9545415465', 'palwal', 121102, 'annu.jpg', '20', '2Years', 'digital marketing', 'b.tech', 'on', 'annu.jpg', 0, 0, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_reg`
--
ALTER TABLE `student_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_reg`
--
ALTER TABLE `tutor_reg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_reg`
--
ALTER TABLE `student_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tutor_reg`
--
ALTER TABLE `tutor_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
