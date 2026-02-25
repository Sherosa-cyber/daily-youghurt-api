-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Shem_Hyrax`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Stacy Owade', '2026-02-05', 55000, 1),
(2, 'Moriyama Kun ', '2026-02-10', 405000, 2),
(7, 'micky mouse', '2026-02-27', 6000, 2),
(9, 'gracie adams', '2026-02-28', 57000, 1),
(13, 'micky mouse', '2026-02-27', 225000, 2),
(16, 'Lana Del Ray ', '2026-02-22', 788000, 3),
(17, 'gracie adams', '2026-02-28', 57000, 1),
(18, 'Jessie Murph ', '2026-01-26', 576000, 2),
(19, 'Lana Del Ray ', '2026-02-22', 788000, 3),
(22, 'Billie Eillish ', '2026-01-27', 225000, 1),
(23, 'Solace Orchid ', '2026-01-29', 282000, 3),
(25, 'Austen Williams', '2026-01-30', 762000, 2),
(27, 'Kadenza Stephanie', '2026-01-24', 762000, 3),
(29, 'Angel Makena', '2026-01-22', 99000, 1),
(31, 'James Kariuki', '2026-01-01', 10000, 1),
(33, 'Ann Kariuki', '2026-01-02', 20000, 2),
(36, 'Shill Magova', '2026-01-04', 40000, 1),
(38, 'Ian Kageha', '2026-01-05', 50000, 2),
(39, 'Shill Magova', '2026-01-04', 40000, 1),
(41, 'Ian Kageha', '2026-01-05', 50000, 2),
(42, 'Ileon Vevet', '2026-01-07', 70000, 1),
(44, 'Zhao Lusi', '2026-01-08', 80000, 2),
(45, 'Ileon Vevet', '2026-01-07', 70000, 1),
(47, 'Zhao Lusi', '2026-01-08', 80000, 2),
(48, 'Bianca Davis', '2026-01-10', 55000, 1),
(50, 'Bianca Davis', '2026-01-10', 55000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(1, 'sneakers', 'Beautiful and posh', 100000, 'sneakers-5578127_1920.jpg'),
(2, 'Wrist watch', 'Beautiful and posh', 10000, 'wrist-watch-2159351_1280.jpg'),
(3, 'Game pad', 'Wireless ', 5000, 'delite.webp'),
(4, 'Tshirts', 'Pocket friendly', 5000, 'tshirt-8726716_1920.jpg'),
(5, 'Footware', 'Clasic looks', 7000, 'oxford-shoes-6078951_1920.jpg'),
(6, 'Game pad', 'Wireless', 5000, 'Dualsense controller spiderman.jpg'),
(7, 'Game CDS', 'G.T.A 5', 1500, 'gta5.jpg'),
(8, 'Women shoes', 'cheap', 1000, 'womens-shoes-178162_1920.jpg'),
(9, 'Men shoes', 'cheap', 1000, 'shoes-6336173_1920.jpg'),
(10, 'Play station', 'ps5', 50000, 'Ps5 standard.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'Expora', '0341', 'explora@gmail.com', '011478528369'),
(3, 'Mike Karim', '0952', 'Karim@gmail.com', '0114781233'),
(4, 'Ferolyn Salan', '0999', 'salan@gmail.com', '0118781233'),
(5, 'Benson Mrasia', '0876', 'mrasia@gmail.com', '0725493452'),
(6, 'Benson Mrasia', '0876', 'mrasia@gmail.com', '0725493452'),
(7, 'Mike Karim', '0952', 'Karim@gmail.com', '0114781233');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
