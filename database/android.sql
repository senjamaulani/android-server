-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2017 at 04:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `android`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_belanja`
--

CREATE TABLE IF NOT EXISTS `barang_belanja` (
`id_barangbelanja` int(5) NOT NULL,
  `id_skedul` int(5) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` int(50) NOT NULL,
  `harga_sementara` int(50) NOT NULL,
  `harga_realisasi` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_belanja`
--

INSERT INTO `barang_belanja` (`id_barangbelanja`, `id_skedul`, `nama_barang`, `harga_barang`, `harga_sementara`, `harga_realisasi`) VALUES
(1, 1, 'hehe', 50000, 5000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `skedul`
--

CREATE TABLE IF NOT EXISTS `skedul` (
`id_skedul` int(5) NOT NULL,
  `id_user` int(25) NOT NULL,
  `nama_skedul` varchar(100) NOT NULL,
  `tanggal` int(2) NOT NULL,
  `bulan` int(2) NOT NULL,
  `tahun` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skedul`
--

INSERT INTO `skedul` (`id_skedul`, `id_user`, `nama_skedul`, `tanggal`, `bulan`, `tahun`) VALUES
(1, 1, 'pulang kampung', 30, 6, 2017),
(6, 1, 'lkajsd', 2, 2, 2222),
(7, 1, 'asdsd', 1, 18, 2017),
(8, 1, 'asdsd', 1, 18, 2017),
(9, 27, 'asdasdd', 1, 19, 2017),
(10, 1, 'hehe', 1, 12, 2017),
(11, 1, 'save', 1, 19, 2017),
(12, 1, 'valentine', 2, 14, 2017),
(13, 1, 'embuh', 2, 25, 2017),
(14, 1, 'kjkjkjkjk', 2, 7, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id_user` int(25) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `username`, `password`) VALUES
(1, 'senja maulani', 'asenjamaulani@gmail.com', 'senja', 'senja'),
(5, 'nanang', 'nanang@gml.com', 'nanang', 'nanang'),
(6, 'Satrio Wisnugroho', 'wwisnuu@gmail.com', 'wisnugroasd', '9684e24c686f9bcbb645a493ae677cc9'),
(23, 'anna', 'anna@gmail.com', 'anna', 'anna'),
(24, 'galih', 'galih@andyan.com', 'galih', 'galih'),
(25, 'aan', 'aan', 'aan', 'aan'),
(26, 'miftahul', 'miftahul@gmail.com', 'miftahul', 'miftahul'),
(27, 'pembeli', 'pembeli@gmail.com', 'pembeli', 'pembeli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_belanja`
--
ALTER TABLE `barang_belanja`
 ADD PRIMARY KEY (`id_barangbelanja`), ADD KEY `id_skedul` (`id_skedul`);

--
-- Indexes for table `skedul`
--
ALTER TABLE `skedul`
 ADD PRIMARY KEY (`id_skedul`), ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id_user`), ADD UNIQUE KEY `email` (`email`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_belanja`
--
ALTER TABLE `barang_belanja`
MODIFY `id_barangbelanja` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skedul`
--
ALTER TABLE `skedul`
MODIFY `id_skedul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang_belanja`
--
ALTER TABLE `barang_belanja`
ADD CONSTRAINT `barang_belanja_ibfk_1` FOREIGN KEY (`id_skedul`) REFERENCES `skedul` (`id_skedul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `skedul`
--
ALTER TABLE `skedul`
ADD CONSTRAINT `skedul_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
