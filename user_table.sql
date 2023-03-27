-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2023 at 05:17 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20369768_blood_donations`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `number` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `city`, `blood_group`, `password`, `number`, `timestamp`) VALUES
(2, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:16:47'),
(3, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:16:56'),
(4, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:17:00'),
(5, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:17:11'),
(6, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:17:12'),
(7, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:17:12'),
(8, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:17:22'),
(9, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:17:25'),
(10, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:18:46'),
(11, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:18:50'),
(12, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:19:16'),
(13, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:19:19'),
(14, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:19:23'),
(15, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:19:36'),
(16, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:24:07'),
(17, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:24:17'),
(18, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:24:25'),
(19, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:25:16'),
(20, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:35:16'),
(21, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:35:26'),
(22, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:37:33'),
(23, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:47:57'),
(24, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:48:06'),
(25, 'name', 'city', 'B+', 'passw', '123', '2023-02-28 07:48:14'),
(27, '', '', '', '', '', '2023-02-28 08:02:48'),
(28, '', '', '', '', '', '2023-02-28 08:04:05'),
(29, '', '', '', '', '', '2023-02-28 08:04:09'),
(30, '', '', '', '', '', '2023-02-28 08:11:18'),
(31, '', '', '', '', '', '2023-02-28 08:11:22'),
(32, '', '', '', '', '', '2023-02-28 08:21:43'),
(33, '', '', '', '', '', '2023-02-28 08:21:44'),
(34, '', '', '', '', '', '2023-02-28 08:22:00'),
(35, '', '', '', '', '', '2023-02-28 08:22:21'),
(36, '', '', '', '', '', '2023-02-28 08:52:15'),
(37, '', '', '', '', '', '2023-02-28 08:52:18'),
(38, '', '', '', '', '', '2023-02-28 08:52:21'),
(39, '', '', '', '', '', '2023-02-28 08:52:25'),
(40, '', '', '', '', '', '2023-02-28 08:52:28'),
(41, '', '', '', '', '', '2023-02-28 08:54:52'),
(42, '', '', '', '', '', '2023-02-28 08:54:56'),
(43, '', '', '', '', '', '2023-02-28 08:55:00'),
(44, '', '', '', '', '', '2023-02-28 08:55:03'),
(45, '', '', '', '', '', '2023-02-28 08:58:12'),
(46, '', '', '', '', '', '2023-02-28 08:58:15'),
(47, '', '', '', '', '', '2023-02-28 08:58:19'),
(48, '', '', '', '', '', '2023-02-28 08:58:22'),
(49, '', '', '', '', '', '2023-02-28 08:58:25'),
(50, '', '', '', '', '', '2023-02-28 08:58:28'),
(51, '', '', '', '', '', '2023-03-27 16:25:34'),
(52, '', '', '', '', '', '2023-03-27 16:25:47'),
(53, 'Esther Muchemi ', 'Nairobi ', 'A+', 'ahdkoenndgj', '0717100715', '2023-03-27 16:41:45'),
(54, 'Esther Muchemi ', 'Nairobi ', 'A+', 'ahdkoenndgj', '0717100715', '2023-03-27 16:41:50'),
(55, 'Esther Muchemi ', 'Nairobi ', 'A+', 'ahdkoenndgj', '0717100715', '2023-03-27 16:41:54'),
(56, 'Esther Muchemi ', 'Nairobi ', 'A+', 'ahdkoenndgj', '0717100715', '2023-03-27 16:41:57'),
(57, 'Esther Muchemi ', 'Nairobi ', 'B+', 'gjdkdkoebb', '0717100718', '2023-03-27 16:48:11'),
(58, 'Esther Muchemi ', 'Nairobi ', 'B+', '', '0717100718', '2023-03-27 16:48:21'),
(59, 'Esther Muchemi ', 'Nairobi ', 'B-', '', '0717100715', '2023-03-27 16:48:59'),
(60, 'Esther Muchemi ', 'Nakuru', 'B-', '', '0717100715', '2023-03-27 16:49:10'),
(61, 'Esther Muchemi ', 'Nakuru', 'B-', 'dtuj789', '0717100715', '2023-03-27 16:49:17'),
(62, 'Esther Muchemi ', 'Nairobi', 'O+', 'fjeoleb', '0717100715', '2023-03-27 17:06:51'),
(63, 'Esther Muchemi ', 'Nairobi', 'O+', 'fjeoleb', '0717100715', '2023-03-27 17:06:55'),
(64, 'Esther Muchemi ', 'Nairobi ', 'A+', 'gheklxbk', '0717100715', '2023-03-27 17:13:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
