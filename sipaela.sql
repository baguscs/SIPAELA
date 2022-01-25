-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 10:04 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipaela`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_settings`
--

CREATE TABLE `master_settings` (
  `id` int(11) NOT NULL,
  `nama_aplikasi` varchar(112) DEFAULT NULL,
  `deskripsi_aplikasi` text DEFAULT NULL,
  `kouta_parkir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_settings`
--

INSERT INTO `master_settings` (`id`, `nama_aplikasi`, `deskripsi_aplikasi`, `kouta_parkir`) VALUES
(1, 'SIP AE LA', 'aaa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `parking`
--

CREATE TABLE `parking` (
  `id` int(11) NOT NULL,
  `nopol` varchar(112) NOT NULL,
  `category` varchar(112) NOT NULL,
  `type` varchar(112) NOT NULL,
  `biaya` bigint(11) NOT NULL DEFAULT 0,
  `waktu_masuk` timestamp NOT NULL DEFAULT current_timestamp(),
  `waktu_keluar` timestamp NULL DEFAULT NULL,
  `status` varchar(112) DEFAULT 'IN'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parking`
--

INSERT INTO `parking` (`id`, `nopol`, `category`, `type`, `biaya`, `waktu_masuk`, `waktu_keluar`, `status`) VALUES
(1, '123', 'Mahasiswa', 'Motor', 0, '2022-01-22 12:48:51', NULL, 'IN'),
(2, '234', 'Mahasiswa', 'Motor', 0, '2022-01-22 12:51:28', '2022-01-22 12:53:33', 'OUT'),
(3, '456', 'Mahasiswa', 'Motor', 0, '2022-01-22 12:53:51', '2022-01-22 13:04:40', 'OUT'),
(4, '568', 'Umum', 'Mobil', 5000, '2022-01-22 13:05:54', '2022-01-22 13:06:25', 'OUT');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(122) NOT NULL,
  `username` varchar(122) NOT NULL,
  `password` varchar(122) NOT NULL,
  `jabatan` varchar(112) NOT NULL,
  `status` varchar(122) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `jabatan`, `status`, `created_at`) VALUES
(3, 'Bagus', 'admin', 'admin', 'admin', '1', '2022-01-22 11:42:57'),
(4, 'Dimas Aditiya', 'pegawai', 'kasir', 'pegawai', '1', '2022-01-22 11:44:40'),
(5, 'Didan', 'loyal', 'loyal', 'pegawai', '1', '2022-01-22 11:46:47'),
(6, 'deni', 'deni', 'deni', 'PEGAWAI', '1', '2022-01-22 12:41:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_settings`
--
ALTER TABLE `master_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking`
--
ALTER TABLE `parking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_settings`
--
ALTER TABLE `master_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parking`
--
ALTER TABLE `parking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
