-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 15, 2017 at 03:24 PM
-- Server version: 5.7.19-log
-- PHP Version: 7.2.0RC3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accounts`
--

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE `tool` (
  `id` int(11) NOT NULL,
  `icon` varchar(45) NOT NULL,
  `pic` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `website` varchar(45) NOT NULL,
  `privacy` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `toolkit`
--

CREATE TABLE `toolkit` (
  `id` int(11) NOT NULL,
  `tool` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(11) NOT NULL,
  `pic` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `avatar` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `avatar`) VALUES
(17, 'kev', 'kev@yahoo.com', 'c6f057b86584942e415435ffb1fa93d4', 'images/infosec.png'),
(19, 'uuu', 'uuu@the', 'c6f057b86584942e415435ffb1fa93d4', 'images/infosec.png');

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `idusers2` int(11) NOT NULL,
  `name` varchar(75) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`idusers2`, `name`, `gender`, `dob`, `email`, `username`, `password`, `role`) VALUES
(31, 'Terry Willams', 'Female', '1999-01-01', 'TWilliams@gmail.com', 'Twill', 'b59c67bf196a4758191e42f76670ceba', 'student'),
(33, 'Rob Davis', 'Male', '1999-02-23', 'Rob@gmailcom', 'Rob', '934b535800b1cba8f96a5d72f72f1611', 'student'),
(36, 'John Smith', 'Male', '1998-04-19', 'jsm@yahoo.com', 'jsm', '2be9bd7a3434f7038ca27d1918de58bd', 'student'),
(38, 'dgr', 'Other', '2017-10-25', 'df@sdsdfsdf', 'df', 'eff7d5dba32b4da32d9a67a519434d3f', 'student'),
(41, '', '', '', '', 'root', '46588ac960d40cacc4eb72f085a8fb17', 'student'),
(50, '', 'Male', '2017-10-10', 'ttt@sdf', 'root12', '46588ac960d40cacc4eb72f085a8fb17', 'student'),
(51, 'Raya', 'Female', '1985-12-21', 'yrtdtxrtxrxxe@fdgfdgdfg', 'rumi', '1f36c15d6a3d18d52e8d493bc8187cb9', 'student'),
(57, '', 'Male', '2017-10-02', 'ffddf@fddfdfdf', 'rootdfffffffffffffffffffffff', '46588ac960d40cacc4eb72f085a8fb17', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tool`
--
ALTER TABLE `tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolkit`
--
ALTER TABLE `toolkit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`idusers2`),
  ADD UNIQUE KEY `idusers2_UNIQUE` (`idusers2`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tool`
--
ALTER TABLE `tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toolkit`
--
ALTER TABLE `toolkit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `idusers2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
