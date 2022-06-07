-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 06:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bangun-datar`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangun`
--

CREATE TABLE `bangun` (
  `id` int(11) NOT NULL,
  `nama_bangun` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bangun`
--

INSERT INTO `bangun` (`id`, `nama_bangun`, `url`) VALUES
(1, 'Segitiga', 'segitiga'),
(2, 'Persegi', 'persegi'),
(3, 'Lingkaran', 'lingkaran');

-- --------------------------------------------------------

--
-- Table structure for table `perhitungan`
--

CREATE TABLE `perhitungan` (
  `id_perhitungan` int(11) NOT NULL,
  `nilai_1` varchar(10) NOT NULL,
  `nilai_2` varchar(10) NOT NULL,
  `nilai_3` varchar(10) NOT NULL,
  `luas` varchar(11) NOT NULL,
  `id_bangun` int(11) NOT NULL,
  `time_record` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perhitungan`
--

INSERT INTO `perhitungan` (`id_perhitungan`, `nilai_1`, `nilai_2`, `nilai_3`, `luas`, `id_bangun`, `time_record`) VALUES
(1, '2', '4', '', '4', 1, '2022-06-04 05:53:34'),
(3, '7', '22/7', '', '154', 3, '2022-06-04 18:33:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangun`
--
ALTER TABLE `bangun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD PRIMARY KEY (`id_perhitungan`),
  ADD KEY `fk_bangun` (`id_bangun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangun`
--
ALTER TABLE `bangun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perhitungan`
--
ALTER TABLE `perhitungan`
  MODIFY `id_perhitungan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `perhitungan`
--
ALTER TABLE `perhitungan`
  ADD CONSTRAINT `fk_bangun` FOREIGN KEY (`id_bangun`) REFERENCES `bangun` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
