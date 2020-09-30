-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 11:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamil_patel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'kamil5844', 'kamil123'),
(3, 'kamil', 'kamil123'),
(5, 'root', 'root1047');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `Email`, `Password`) VALUES
(1, 'kamilpatel.002@gmail.com', 'kamil5844'),
(2, 'vaibhavpatel2892@gmail.com', 'vaibhavpatel.123'),
(3, 'anjalibarad104@gmail.com', 'anjalibarad.123'),
(4, 'shwetangpatel2015@gmail.com', 'shwet.123'),
(5, 'tammanaprajapati@gmail.com', 'tanu@gmail.com'),
(6, 'deepjani1999@gmail.com', 'deepjani.1999'),
(7, 'hardikmandora@gmail.com', 'hardik123'),
(8, 'janakthakkar.2015@gmail.com', 'janakthakkar.6076'),
(9, 'shivamjha@gmail.com', 'shivu3452'),
(10, 'royalcharm4@gmail.com', 'chaitu2263');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fname` char(25) NOT NULL,
  `lname` char(25) NOT NULL,
  `contact` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_profile_id`, `user_id`, `fname`, `lname`, `contact`) VALUES
(1, 1, 'kamil', 'patel', 9601639725),
(8, 2, 'Vaibhav', 'Patel', 8200298828),
(9, 3, 'Anjali', 'Barad', 1646254893),
(10, 4, 'Shwetang', 'Patel', 8652456518),
(11, 5, 'Tammana', 'Prajapati', 8645236549),
(12, 6, 'Deep', 'Jani', 9654782135),
(13, 7, 'Hardik', 'Mandora', 7532146587),
(14, 8, 'Janak', 'Thakkar', 9554863254),
(15, 9, 'Shivam', 'Jha', 8651697324),
(16, 10, 'Chaitali', 'Soni', 7284964626);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
