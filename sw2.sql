-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2016 at 10:21 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sw2`
--

-- --------------------------------------------------------

--
-- Table structure for table `followrs`
--

CREATE TABLE IF NOT EXISTS `followrs` (
  `idfollw` int(11) NOT NULL,
  `idowners` int(11) NOT NULL,
  `namefollow` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(300) NOT NULL,
  `lat` double DEFAULT NULL,
  `long` double DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `lat`, `long`) VALUES
(1, 'mohamed', 'mhmdsamir@gmail.com', '123', 30.0310036, 31.2127736),
(2, 'mohamed', 'mhmdsamir1@gmail.com', '123', 0, NULL),
(3, 'mohamed', 'mhmdsamir91@gmail.com', '123456789', NULL, NULL),
(4, 'mohamed', 'mhmdsamir92@gmail.com', '123456789', NULL, NULL),
(5, 'mohamed', 'm.samir', '123456789', 30, 31),
(6, 'Omar', 'omar', '123', NULL, NULL),
(7, '5', 'ahmed', 'sjkksf', NULL, NULL),
(8, 'ahmws', 'afssf', 'sjk', NULL, NULL),
(9, 'kjdjgdg', 'afssfkjkdjgkgdjkdgjk', 'sjkjldfjd', NULL, NULL),
(10, 'hamda', 'iyiuggd', '5555555555555555', NULL, NULL),
(11, 'ahmedhamdy', 'ahmed@adad', '9876543', NULL, NULL),
(12, 'mohsedm', 'ahmed@adadsf', '9876543', NULL, NULL),
(13, 'mohsedm', 'ahmed@adadsf', '9876543', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `followrs`
--
ALTER TABLE `followrs`
  ADD KEY `id` (`idfollw`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_place_id` (`lat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
