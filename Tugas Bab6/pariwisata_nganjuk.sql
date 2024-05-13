-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 13, 2024 at 06:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisata_nganjuk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_agen perjalanan`
--

CREATE TABLE `tb_agen perjalanan` (
  `id_Agen Perjalan` int NOT NULL,
  `id_wisatawan` int NOT NULL,
  `Hotel` varchar(20) NOT NULL,
  `Makapai_Penerbangan` varchar(50) NOT NULL,
  `Tempat _Wisata` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` int NOT NULL,
  `id_Agen Perjalanan` int NOT NULL,
  `id_wisatawan` int NOT NULL,
  `Paket_Wisata` varchar(20) NOT NULL,
  `Destinasi_Wisata` varchar(50) NOT NULL,
  `Data_Pembayaran` varchar(15) NOT NULL,
  `Ulasan_Wisatawan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisatawan`
--

CREATE TABLE `tb_wisatawan` (
  `id_wisatawan` int NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Sandi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_agen perjalanan`
--
ALTER TABLE `tb_agen perjalanan`
  ADD PRIMARY KEY (`id_Agen Perjalan`),
  ADD KEY `id_Wisataawan` (`id_wisatawan`);

--
-- Indexes for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_Agen Perjalanan` (`id_Agen Perjalanan`),
  ADD KEY `id_wisatawan` (`id_wisatawan`);

--
-- Indexes for table `tb_wisatawan`
--
ALTER TABLE `tb_wisatawan`
  ADD PRIMARY KEY (`id_wisatawan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_agen perjalanan`
--
ALTER TABLE `tb_agen perjalanan`
  ADD CONSTRAINT `tb_agen perjalanan_ibfk_1` FOREIGN KEY (`id_wisatawan`) REFERENCES `tb_wisatawan` (`id_wisatawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_ibfk_1` FOREIGN KEY (`id_wisatawan`) REFERENCES `tb_wisatawan` (`id_wisatawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pemesanan_ibfk_2` FOREIGN KEY (`id_Agen Perjalanan`) REFERENCES `tb_agen perjalanan` (`id_Agen Perjalan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
