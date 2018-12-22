-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 05:09 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbdetailpenerimaan`
--

CREATE TABLE `tbdetailpenerimaan` (
  `Iddetailpenerimaan` varchar(10) NOT NULL,
  `IdJenisZakat` varchar(10) NOT NULL,
  `IdPenerimaan` int(10) NOT NULL,
  `Nominal` int(30) NOT NULL,
  `IdRekening` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbjeniszakat`
--

CREATE TABLE `tbjeniszakat` (
  `IdJenisZakat` varchar(10) NOT NULL,
  `NamaZakat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbkategori`
--

CREATE TABLE `tbkategori` (
  `IdKategori` varchar(10) NOT NULL,
  `NamaKategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbmustahiq`
--

CREATE TABLE `tbmustahiq` (
  `IdMustahiq` varchar(10) NOT NULL,
  `NamaMustahiq` varchar(30) NOT NULL,
  `TglLahir` date NOT NULL,
  `JenisKelamin` varchar(10) NOT NULL,
  `Alamat` text NOT NULL,
  `Pendapatanbulanan` varchar(20) NOT NULL,
  `IdKategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmustahiq`
--

INSERT INTO `tbmustahiq` (`IdMustahiq`, `NamaMustahiq`, `TglLahir`, `JenisKelamin`, `Alamat`, `Pendapatanbulanan`, `IdKategori`) VALUES
('MQ001', 'ajun junaedi', '0000-00-00', 'Laki-laki', 'asal palsu', '30000', 'Miskin');

-- --------------------------------------------------------

--
-- Table structure for table `tbmuzaki`
--

CREATE TABLE `tbmuzaki` (
  `IdMuzaki` varchar(10) NOT NULL,
  `NamaMuzaki` varchar(30) NOT NULL,
  `TglLahir` date NOT NULL,
  `JenisKelamin` varchar(12) NOT NULL,
  `AlamatMuzaki` text NOT NULL,
  `No_Telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbmuzaki`
--

INSERT INTO `tbmuzaki` (`IdMuzaki`, `NamaMuzaki`, `TglLahir`, `JenisKelamin`, `AlamatMuzaki`, `No_Telp`) VALUES
('M001', 'Ade Hermawan', '1996-06-29', 'Laki-laki', 'Warungkiara 2', '08100000000'),
('M002', 'Adi', '0000-00-00', 'Laki - lak', 'warung adang', '9349303536');

-- --------------------------------------------------------

--
-- Table structure for table `tbpenerimaanzakat`
--

CREATE TABLE `tbpenerimaanzakat` (
  `IdPenerimaan` varchar(10) NOT NULL,
  `TglPenerimaan` varchar(20) NOT NULL,
  `IdMuzaki` varchar(10) NOT NULL,
  `Keterangan` text NOT NULL,
  `IdUser` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbpenyaluranzakat`
--

CREATE TABLE `tbpenyaluranzakat` (
  `IdPenyaluranZakat` varchar(10) NOT NULL,
  `TglPenyaluran` date NOT NULL,
  `IdMustahiq` varchar(10) NOT NULL,
  `Nominal` varchar(30) NOT NULL,
  `Keterangan` text NOT NULL,
  `IdUser` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `IdUser` varchar(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NamaLengkap` varchar(30) NOT NULL,
  `No_telp` varchar(12) NOT NULL,
  `Level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
