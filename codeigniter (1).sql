-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 06:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `c_code` varchar(10) NOT NULL DEFAULT '+91',
  `phone` bigint(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `user_id`, `username`, `password`, `c_code`, `phone`, `email`, `role`, `status`, `created`) VALUES
(1, '63a197782e57e', 'paul@blazon.in', 'f865b53623b121fd34ee5426c792e5c33af8c227', '+91', 7094792554, 'paul@blazon.in', 'admin', '1', '2022-12-20 16:37:06.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ap_company`
--

CREATE TABLE `ap_company` (
  `company_id` varchar(50) NOT NULL,
  `created` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ap_company`
--

INSERT INTO `ap_company` (`company_id`, `created`) VALUES
('1', '2022-12-25 12:36:39.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ap_userprofile`
--

CREATE TABLE `ap_userprofile` (
  `profile_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `company_id` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `pemail` varchar(100) NOT NULL,
  `pphone` varchar(50) NOT NULL,
  `pgender` varchar(50) NOT NULL,
  `pdob` varchar(50) NOT NULL,
  `pimage` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ap_users`
--

CREATE TABLE `ap_users` (
  `user_id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `countrycode` varchar(10) NOT NULL DEFAULT '+91',
  `phone` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(15) NOT NULL,
  `otp` bigint(10) NOT NULL,
  `otpstatus` varchar(15) NOT NULL,
  `verifiedstatus` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `company_id` varchar(100) NOT NULL,
  `created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ap_users`
--

INSERT INTO `ap_users` (`user_id`, `name`, `email`, `countrycode`, `phone`, `password`, `role`, `otp`, `otpstatus`, `verifiedstatus`, `status`, `company_id`, `created`) VALUES
('163a875f5eb35c163a875f5eb35d', 'Paul D', 'paulthevictory@gmail.com', '+91', '6369021751', '$2y$10$3HrXkEUFnh2DhWWbNmZpFOkRvBDf6qqC6bl.BKAxdykcpU81QOkKa', 'user', 0, 'verified', 'true', '0', '1', '2022-12-25 21:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `session_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `ipaddress` varchar(50) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `platform` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` bigint(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `intime` varchar(25) NOT NULL,
  `outtime` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`session_id`, `user_id`, `ipaddress`, `browser`, `platform`, `username`, `phone`, `role`, `intime`, `outtime`, `status`) VALUES
('63a8811c46c4f63a8811c46c51', '163a875f5eb35c163a875f5eb35d', '::1', ' ', 'Unknown Platform', 'paulthevictory@gmail.com', 6369021751, 'user', '2022-12-25 22:28:04', '', 'o'),
('63a88962f1e2d63a88962f1e2e', '163a875f5eb35c163a875f5eb35d', '::1', ' ', 'Unknown Platform', 'paulthevictory@gmail.com', 6369021751, 'user', '2022-12-25 23:03:22', '', 'o');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `ap_company`
--
ALTER TABLE `ap_company`
  ADD UNIQUE KEY `company_id` (`company_id`);

--
-- Indexes for table `ap_userprofile`
--
ALTER TABLE `ap_userprofile`
  ADD UNIQUE KEY `profile_id` (`profile_id`);

--
-- Indexes for table `ap_users`
--
ALTER TABLE `ap_users`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
