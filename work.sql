-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2022 at 11:27 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocations`
--

CREATE TABLE `allocations` (
  `id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocations`
--

INSERT INTO `allocations` (`id`, `employee_id`, `company_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2022-05-11 15:41:43', '2022-05-11 15:41:43'),
(2, 1, 1, '2022-05-11 15:42:59', '2022-05-11 15:42:59'),
(3, 1, 1, '2022-05-11 16:26:37', '2022-05-11 16:26:37'),
(4, 1, 2, '2022-05-11 16:26:37', '2022-05-11 16:26:37'),
(5, 1, 1, '2022-05-11 16:41:59', '2022-05-11 16:41:59'),
(6, 1, 1, '2022-05-11 16:43:07', '2022-05-11 16:43:07'),
(7, 7, 9, '2022-05-11 23:13:45', '2022-05-11 23:13:45'),
(8, 7, 8, '2022-05-11 23:13:45', '2022-05-11 23:13:45'),
(9, 7, 9, '2022-05-11 23:16:03', '2022-05-11 23:16:03'),
(10, 7, 9, '2022-05-11 23:18:48', '2022-05-11 23:18:48'),
(11, 7, 10, '2022-05-11 23:19:23', '2022-05-11 23:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `city`, `createdAt`, `updatedAt`) VALUES
(1, 'work', 'siliguri', '2022-05-11 14:23:50', '2022-05-11 14:23:50'),
(8, 'fskjfd', 'ksndkns', '2022-05-11 20:33:41', '2022-05-11 20:33:41'),
(9, 'fskjfd', 'ksndkns', '2022-05-11 20:34:03', '2022-05-11 20:34:03'),
(10, 'fskjfd', 'ksndkns', '2022-05-11 20:34:30', '2022-05-11 20:34:30'),
(11, 'fskjfd', 'ksndkns', '2022-05-11 20:34:49', '2022-05-11 20:34:49'),
(12, 'dsjndjs', 'jsndjns', '2022-05-11 20:36:28', '2022-05-11 20:36:28'),
(13, 'dsjndjs', 'jsndjns', '2022-05-11 20:37:04', '2022-05-11 20:37:04'),
(14, 'dsjndjs', 'jsndjns', '2022-05-11 20:37:09', '2022-05-11 20:37:09'),
(15, 'dsjndjs', 'jsndjns', '2022-05-11 20:37:10', '2022-05-11 20:37:10'),
(16, 'dsjndjs', 'jsndjns', '2022-05-11 20:37:10', '2022-05-11 20:37:10'),
(17, 'dsjndjs', 'jsndjns', '2022-05-11 20:37:10', '2022-05-11 20:37:10'),
(18, 'dsjndjs', 'jsndjns', '2022-05-11 20:37:28', '2022-05-11 20:37:28'),
(19, 'dsjndjs', 'jsndjns', '2022-05-11 20:38:02', '2022-05-11 20:38:02'),
(20, 'dsjndjs', 'jsndjns', '2022-05-11 20:38:18', '2022-05-11 20:38:18'),
(21, 'dsjndjs', 'jsndjns', '2022-05-11 20:38:21', '2022-05-11 20:38:21'),
(22, 'dsjndjs', 'jsndjns', '2022-05-11 20:38:40', '2022-05-11 20:38:40'),
(23, 'jbjhbjkkj', 'jbkjbkj', '2022-05-11 20:38:55', '2022-05-11 20:38:55'),
(24, 'jbjhbjkkj', 'jbkjbkj', '2022-05-11 20:39:18', '2022-05-11 20:39:18'),
(25, 'jbjhbjkkj', 'jbkjbkj', '2022-05-11 20:39:19', '2022-05-11 20:39:19'),
(26, 'jnsjfnjsndf', 'sjndfjfnsjdns', '2022-05-11 20:40:46', '2022-05-11 20:40:46'),
(27, 'jdnfjdnf', 'jsndkjsn', '2022-05-11 20:44:17', '2022-05-11 20:44:17'),
(28, 'sjdnkjsn', 'jsbdjs', '2022-05-11 20:44:53', '2022-05-11 20:44:53'),
(29, 'sjnjnfs', 'sndjnsd', '2022-05-11 20:57:50', '2022-05-11 20:57:50'),
(30, 'cksncknsc', 'jsndsdc', '2022-05-11 20:58:05', '2022-05-11 20:58:05'),
(31, 'cjsnjdndsd', 'jsnjdnjsnd', '2022-05-11 20:58:13', '2022-05-11 20:58:13'),
(32, 'sdkjsd', 'jns', '2022-05-11 21:19:27', '2022-05-11 21:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `createdAt`, `updatedAt`) VALUES
(1, 'rupan', 'rupan@gmail.com', 7908988240, '2022-05-11 15:04:26', '2022-05-11 15:04:26'),
(2, 'sjbdkjbs', 'jsdjbskjd', 76876876, '2022-05-11 21:00:07', '2022-05-11 21:00:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allocations`
--
ALTER TABLE `allocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allocations`
--
ALTER TABLE `allocations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
