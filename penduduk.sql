-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2018 at 11:39 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penduduk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Diki Alfarabi Hadi', 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `desa_id` int(11) NOT NULL,
  `desa_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`desa_id`, `desa_nama`) VALUES
(1, 'Harapan Baru'),
(4, 'Tanjung Kleng'),
(6, 'Tanjung Pura Bakti'),
(7, 'Semerbak Harum');

-- --------------------------------------------------------

--
-- Table structure for table `dusun`
--

CREATE TABLE `dusun` (
  `dusun_id` int(11) NOT NULL,
  `dusun_nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dusun`
--

INSERT INTO `dusun` (`dusun_id`, `dusun_nama`) VALUES
(3, 'Keramat Jaya'),
(7, 'Jerami'),
(8, 'Rawa Itik'),
(9, 'Ayam Jantan');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `warga_id` int(11) NOT NULL,
  `warga_nama` varchar(50) NOT NULL,
  `warga_ktp` int(20) NOT NULL,
  `warga_jk` varchar(10) NOT NULL,
  `warga_desa` int(11) NOT NULL,
  `warga_dusun` int(11) NOT NULL,
  `warga_rt` varchar(5) NOT NULL,
  `warga_rw` varchar(5) NOT NULL,
  `warga_status` varchar(15) NOT NULL,
  `warga_pendidikan` varchar(5) NOT NULL,
  `warga_agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`warga_id`, `warga_nama`, `warga_ktp`, `warga_jk`, `warga_desa`, `warga_dusun`, `warga_rt`, `warga_rw`, `warga_status`, `warga_pendidikan`, `warga_agama`) VALUES
(3, 'Samson', 2147483647, 'Laki-laki', 7, 8, '02', '03', 'Kawin', 'S1', 'Islam'),
(4, 'Junaidi', 1224253636, 'Laki-laki', 4, 7, '033', '098', 'Kawin', 'SMP', 'Islam'),
(5, 'Reza', 231234234, 'Laki-laki', 1, 7, '03', '02', 'Kawin', 'SMA', 'Kristen'),
(6, 'Dahrul Faid', 23423234, 'Laki-laki', 1, 7, '03', '09', 'Kawin', 'S2', 'Islam'),
(7, 'Aisyah', 2423434, 'Perempuan', 1, 8, '04', '01', 'Kawin', 'SD', 'Islam'),
(8, 'Karnaidi', 827263373, 'Laki-laki', 7, 9, '02', '02', 'Kawin', 'SMA', 'Budha'),
(9, 'Feby', 87232343, 'Laki-laki', 1, 9, '08', '09', 'Kawin', 'SMP', 'Hindu'),
(10, 'Sigurupampa', 2147483647, 'Laki-laki', 1, 7, '03', '09', 'Kawin', 'S2', 'Islam'),
(11, 'Fahmi', 82277227, 'Laki-laki', 7, 3, '08', '09', 'Kawin', 'SMA', 'Islam'),
(12, 'Zulfikar', 712323423, 'Laki-laki', 7, 9, '08', '09', 'Kawin', 'SMA', 'Islam'),
(13, 'Ola Ramli', 534676868, 'Perempuan', 1, 9, '08', '09', 'Kawin', 'SMA', 'Islam'),
(14, 'Bustanul Arifin', 2147483647, 'Laki-laki', 1, 7, '08', '09', 'Kawin', 'SMA', 'Kristen'),
(15, 'Nurul Laila', 2147483647, 'Perempuan', 1, 7, '08', '09', 'Kawin', 'SMA', 'Kristen'),
(17, 'Sahibuu', 2147483647, 'Perempuan', 4, 9, '08', '09', 'Kawin', 'SMA', 'Hindu'),
(18, 'Johnson Thomson', 2147483647, 'Laki-laki', 6, 6, '08', '09', 'Kawin', 'SMA', 'Islam'),
(19, 'Mumu', 235241115, 'Laki-laki', 6, 7, '08', '09', 'Kawin', 'SMA', 'Islam'),
(20, 'Andi A.L', 2147483647, 'Laki-laki', 7, 8, '08', '09', 'Kawin', 'SMA', 'Budha'),
(21, 'Popogi', 2147483647, 'Perempuan', 7, 9, '08', '09', 'Kawin', 'SMA', 'Budha'),
(22, 'Rosdi', 2147483647, 'Laki-laki', 7, 7, '08', '09', 'Kawin', 'SMA', 'Budha'),
(23, 'Umam Faluti', 1011029262, 'Laki-laki', 7, 7, '08', '09', 'Kawin', 'SMA', 'Islam'),
(24, 'Zulfikar', 712323423, 'Laki-laki', 7, 9, '08', '09', 'Kawin', 'SMA', 'Islam'),
(25, 'Ola Ramli', 534676868, 'Perempuan', 1, 9, '08', '09', 'Kawin', 'SMA', 'Islam'),
(26, 'Bustanul Arifin', 2147483647, 'Laki-laki', 1, 7, '08', '09', 'Kawin', 'SMA', 'Kristen'),
(27, 'Nurul Laila', 2147483647, 'Perempuan', 1, 7, '08', '09', 'Kawin', 'SMA', 'Kristen'),
(30, 'Johnson Thomson', 2147483647, 'Laki-laki', 6, 6, '08', '09', 'Kawin', 'SMA', 'Islam'),
(33, 'Popogi', 2147483647, 'Perempuan', 7, 9, '08', '09', 'Kawin', 'SMA', 'Budha'),
(34, 'Rosdi', 2147483647, 'Laki-laki', 7, 7, '08', '09', 'Kawin', 'SMA', 'Budha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`desa_id`);

--
-- Indexes for table `dusun`
--
ALTER TABLE `dusun`
  ADD PRIMARY KEY (`dusun_id`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`warga_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `desa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dusun`
--
ALTER TABLE `dusun`
  MODIFY `dusun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `warga_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
