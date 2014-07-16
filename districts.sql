-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2009 at 01:54 AM
-- Server version: 5.1.36
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `moh_sptkp`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` varchar(2) NOT NULL,
  `code` varchar(3) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `state_id`, `code`, `description`) VALUES
(1, '1', '01', 'BATU PAHAT'),
(2, '1', '02', 'JOHOR BAHRU'),
(3, '1', '03', 'KLUANG'),
(4, '1', '04', 'KOTA TINGGI'),
(5, '1', '05', 'MERSING'),
(6, '1', '06', 'MUAR'),
(7, '1', '07', 'PONTIAN'),
(8, '1', '08', 'SEGAMAT'),
(9, '1', '09', 'RENGIT'),
(10, '1', '10', 'KULAI'),
(11, '1', '11', 'PENGERANG'),
(12, '1', '12', 'TANGKAK'),
(13, '1', '13', 'LABIS'),
(14, '8', '01', 'BATANG PADANG'),
(15, '8', '02', 'HILIR PERAK'),
(16, '8', '03', 'HULU PERAK'),
(17, '8', '04', 'KERIAN'),
(18, '8', '05', 'KINTA IPOH'),
(19, '8', '06', 'KUALA KANGSAR'),
(20, '8', '07', 'LARUT & MATANG'),
(21, '8', '08', 'MANJUNG'),
(22, '8', '09', 'PERAK TENGAH'),
(23, '8', '10', 'SELAMA'),
(24, '8', '11', 'SLIM RIVER'),
