-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2017 at 09:27 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_testkoneksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE IF NOT EXISTS `tb_akun` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`username`, `password`) VALUES
('doxa', '1235'),
('yusril', '1234'),
('dinar', '1234'),
('dinar', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE IF NOT EXISTS `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id`, `username`, `password`) VALUES
(1, 'dinar', 'nanda'),
(2, 'lala', 'lala'),
(3, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE IF NOT EXISTS `t_barang` (
  `id_barang` int(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_barang` int(255) NOT NULL,
  `jumlah_barang` int(255) NOT NULL,
  `total_harga` int(255) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `harga_barang`, `jumlah_barang`, `total_harga`) VALUES
(222, 'Buku tulis kiki', 20000, 1, 20000),
(656, 'buku warna', 3500, 24, 84000),
(666, 'Penghapus', 500, 20, 10000),
(888, 'Al quan', 55000, 1, 55000),
(988, 'buku dongeng', 50000, 1, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE IF NOT EXISTS `t_siswa` (
  `NIS` int(11) NOT NULL,
  `NamaSiswa` varchar(80) NOT NULL,
  `JenisKelamin` enum('L','P') NOT NULL,
  `TempatLahir` varchar(50) NOT NULL,
  `TanggalLahir` varchar(50) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Alamat` text NOT NULL,
  PRIMARY KEY (`NIS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`NIS`, `NamaSiswa`, `JenisKelamin`, `TempatLahir`, `TanggalLahir`, `Kelas`, `Email`, `Alamat`) VALUES
(656, 'lala', 'P', 'Blitar', '2017-03-02', 'XI R 1', 'lala@gg', 'Jl. Coleksono'),
(666, 'qori', 'P', 'ngawi', '2017-03-02', 'XI R 1', 'qori@gg', 'malnag');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
