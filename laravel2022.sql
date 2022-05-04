-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2022 at 03:06 PM
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
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) NOT NULL,
  `c_name` varchar(30) NOT NULL,
  `member_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `c_name`, `member_id`, `created_at`, `updated_at`) VALUES
(10, 'microsoft', 1, '2022-04-15 11:52:51', '2022-04-15 11:52:51'),
(11, 'google', 2, '2022-04-15 11:52:51', '2022-04-15 11:52:51');

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
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `member_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 'mobile', 1, '2022-05-04 12:57:52', '2022-05-04 12:57:52'),
(2, 'laptop', 2, '2022-05-04 12:58:36', '2022-05-04 12:58:36'),
(3, 'smart watch', 2, '2022-05-04 12:58:36', '2022-05-04 12:58:36'),
(4, 'computer', 2, '2022-05-04 12:59:11', '2022-05-04 12:59:11'),
(5, 'ipad', 1, '2022-05-04 12:59:11', '2022-05-04 12:59:11');

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
(12, 'tilok', 'tilok@gmail.com', 'Tigaon', '2022-04-15 06:55:32', '2022-04-15 01:37:25'),
(14, 'pankaj', 'pankaj@gmail.com', 'sector-65', '2022-04-19 03:47:33', '2022-04-19 03:55:06'),
(15, 'abc', 'abc@gmail.com', 'Axz', '2022-04-19 03:54:31', '2022-04-19 03:54:31'),
(16, 'deepa', 'deepa@gmail.com', 'Uchai', '2022-04-19 03:56:03', '2022-04-19 03:56:03'),
(17, 'Mr. teeka', 'teeka@gmail.com', 'mandi, India', '2022-04-19 03:57:08', '2022-04-19 03:57:08'),
(18, 'Mr. sanju', 'sanju@gmail.com', 'sector-6, India', '2022-04-19 03:59:53', '2022-04-19 03:59:53'),
(19, 'Mr. Mr. dev', 'dev@gmail.com', 'dev D, India, India', '2022-05-04 06:23:17', '2022-05-04 06:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2022_04_18_112246_create_test_table', 1),
(11, '2022_04_18_115331_create_test1_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'YdflCiZL4Q', 'Uho4vwC@gmail.com', NULL, NULL),
(2, 'SjF8j6tNpG', 'e1KcphC@gmail.com', NULL, NULL),
(3, '7lh6vCgk2X', 'mumATnV@gmail.com', NULL, NULL),
(4, 'fhcxTzpovY', '1TUnEmG@gmail.com', NULL, NULL),
(5, 'NlVdWarcRp', 'Qx8lygA@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'anil', 'anil@gmail.com', 'Faridabad'),
(2, 'Rahul', 'rahul@gmail.com', 'Ballabgarh'),
(3, 'Anoop', 'anoop@gmail.com', 'Palwal'),
(4, 'Shiv', 'shiv@gmai.com', 'Sihi Gate');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
