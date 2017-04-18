-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2017 at 09:22 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `belajar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'dinar', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_hp` bigint(20) NOT NULL,
  `asal_smp` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `nama`, `alamat`, `no_hp`, `asal_smp`) VALUES
(2, 'niar', 'mojokerto', 798786765656, 'sawojajar'),
(4, 'Luthfi syarifa', 'madiun', 81234567, 'SMP 2 Madiun'),
(6, 'Annisa Rahmawati', 'Srengat', 85654654654, 'SMP 1 SRENGAT'),
(7, 'Iche Putri herawati', 'Luweng', 87857654, 'SMP 1 SRENGAT');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id_user`,`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `username`, `password`) VALUES
(1, 'asdsadsad', 'asdasd@gmail.com', 'asadasdsa', 'c89519ed5a5e351d36d2519e244cfbd7');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
