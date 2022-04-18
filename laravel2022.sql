-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 02:26 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) NOT NULL,
  `c_name` varchar(30) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `c_name`, `employee_id`, `created_at`, `updated_at`) VALUES
(10, 'microsoft', 1, '2022-04-15 11:52:51', '2022-04-15 11:52:51'),
(11, 'google', 2, '2022-04-15 11:52:51', '2022-04-15 11:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'peter', 'peter@gmail.com', '2022-04-15 11:49:16', '2022-04-15 11:49:16'),
(2, 'bruce', 'bruce@gmail.com', '2022-04-15 11:49:16', '2022-04-15 11:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Anil', 'anil@gmail.com', 'faridabad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Rahul', 'rahul@gmail.com', 'Ballabgarh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Anoop', 'anoop@gmail.com', 'Palwal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Shiv', 'shiv@gmai.com', 'Sihi Gate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'dinesh', 'dinesh@gmail.com', 'NIT-5', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'shivam', 'shivam@gmail.com', 'sec 64', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Deepak', 'Deepak@gmail.com', 'Delhi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'john', 'hohn@gmail.com', 'Korea', '2022-04-05 18:30:00', '2022-04-05 18:30:00'),
(11, 'subham', 'subham@gmail.com', 'Shri nager', '2022-04-06 07:36:25', '2022-04-06 07:36:25'),
(12, 'tilok', 'tilok@gmail.com', 'Tigaon', '2022-04-15 06:55:32', '2022-04-15 01:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`) VALUES
(1, 'Anil', 'anil@gmail.com', 'Faridabad'),
(2, 'Rahul', 'rahul@gmail.com', 'Ballabgarh'),
(3, 'Anoop', 'anoop@gmail.com', 'Palwal'),
(4, 'Shiv', 'shiv@gmai.com', 'Sihi Gate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
