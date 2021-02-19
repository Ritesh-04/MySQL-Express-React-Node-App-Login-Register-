-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 05:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplilearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `password`, `active`) VALUES
(1, 'ritesh.lpu04@gmail.com', 'Ritesh Kumar', 'Password@123', 0),
(2, 'abhishek@123.com', 'Abhishek Kumar', 'password@123', 0),
(3, 'vikash@123.com', 'Vikash Kumar', 'password@123', 0),
(4, 'diwakar@gmail.com', 'Diwaker', 'Password@123', 0),
(5, 'atul@gmail.com', 'Atul', 'Password@123', 0),
(6, 'abhay@gmail.com', 'Abhay', '$2a$08$hJu3/lKKx0etCi4BNc6QCeqW6tDs9YVhiLPmVdNQ0AiAwUMmoSTOG', 0),
(7, 'pra@12.com', 'Prashant', '$2a$08$sUpHjX/sk5ciIMHeMqxQR.Y1r5TauOouyHTSIfJ1ai.GCMGjzrvXa', 0),
(8, 'test@123', 'Test', '$2a$08$2mEAjPXgaYQzkjvhXTxiteA5poM/EMIW47Lxlmxnor5/QCmjHN8bu', 0),
(9, 'user@123', 'NewUser', 'user@123', 0),
(10, 'pankaj@123.com', 'Pankaj', 'password@123', 0),
(11, 'arvind@gmail.com', 'Arvind', 'password@123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
