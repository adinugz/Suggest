-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 16, 2023 at 01:29 AM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_komentar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

DROP TABLE IF EXISTS `tbl_komentar`;
CREATE TABLE IF NOT EXISTS `tbl_komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `komentar` text,
  `parent_id` int(11) DEFAULT NULL,
  `tanggal_komen` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`id`, `nama`, `komentar`, `parent_id`, `tanggal_komen`) VALUES
(1, 'Galih Anggoro Prasetya', 'Halo ada orang?', 0, '2023-01-16 08:09:28'),
(2, 'Anonim 1', 'Ada nih saya.', 1, '2023-01-16 08:09:41'),
(3, 'Anonim 2', 'Ada nih, hadir.', 1, '2023-01-16 08:09:57'),
(4, 'Anonim 3', 'Testing aplikasi sistem komentar.', 0, '2023-01-16 08:10:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
