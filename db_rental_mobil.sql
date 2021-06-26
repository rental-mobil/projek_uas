-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2021 at 10:09 AM
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
-- Database: `db_rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_mobil`
--

CREATE TABLE `tb_mobil` (
  `id_mobil` varchar(40) DEFAULT NULL,
  `nama_mobil` varchar(40) DEFAULT NULL,
  `merek_mobil` varchar(40) DEFAULT NULL,
  `bm_mobil` varchar(40) DEFAULT NULL,
  `harga_rental` int(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `id_pengembalian` varchar(40) DEFAULT NULL,
  `id_rental` varchar(40) DEFAULT NULL,
  `id_penyewa` varchar(50) DEFAULT NULL,
  `id_mobil` varchar(50) DEFAULT NULL,
  `tgl_rental` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `lama` int(30) DEFAULT NULL,
  `total_bayar` int(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` varchar(40) DEFAULT NULL,
  `nama_penyewa` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` varchar(40) DEFAULT NULL,
  `no_ktp` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rental`
--

CREATE TABLE `tb_rental` (
  `id_rental` varchar(40) DEFAULT NULL,
  `id_penyewa` varchar(50) DEFAULT NULL,
  `id_mobil` varchar(50) DEFAULT NULL,
  `nama_penyewa` varchar(40) DEFAULT NULL,
  `nama_mobil` varchar(30) DEFAULT NULL,
  `harga_rental` int(20) DEFAULT NULL,
  `tgl_rental` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
