-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2026 at 06:48 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bansos_desa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bansos`
--

DROP TABLE IF EXISTS `bansos`;
CREATE TABLE IF NOT EXISTS `bansos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nama_prov` varchar(100) NOT NULL,
  `nama_kab` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tanggungan` int NOT NULL,
  `jumlah_anak` int NOT NULL,
  `penghasilan_per_bulan` decimal(12,2) NOT NULL,
  `status_kelayakan` enum('Layak','Tidak Layak') NOT NULL,
  `alasan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rule_id` int NOT NULL,
  `variable_name` varchar(50) NOT NULL,
  `operator` varchar(10) NOT NULL,
  `target_value` varchar(255) NOT NULL,
  `logical_operator` varchar(10) DEFAULT 'AND',
  PRIMARY KEY (`id`),
  KEY `fk_rule_condition` (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`id`, `rule_id`, `variable_name`, `operator`, `target_value`, `logical_operator`) VALUES
(1, 1, 'pekerjaan', 'IN', 'PNS,TNI,POLRI,BUMN', 'AND'),
(2, 2, 'dtks', '=', 'Tidak', 'AND'),
(3, 3, 'tmp_status', '=', 'SANGAT MISKIN', 'AND'),
(4, 3, 'sekolah', '=', 'Ya', 'AND'),
(5, 4, 'tmp_status', '=', 'MISKIN', 'AND'),
(6, 5, 'pekerjaan', '=', 'Tidak Kerja', 'AND'),
(7, 5, 'desil', 'IN', '5,6', 'AND'),
(8, 6, 'desil', 'IN', '7,8,9,10', 'AND'),
(9, 7, 'tmp_status', '=', 'SANGAT MISKIN', 'AND'),
(10, 7, 'pekerjaan', '=', 'Tidak Kerja', 'AND');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(100) NOT NULL,
  `priority_order` int NOT NULL,
  `conclusion_variable` varchar(50) NOT NULL,
  `conclusion_value` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `rule_name`, `priority_order`, `conclusion_variable`, `conclusion_value`, `description`) VALUES
(1, 'Aturan Profesi Mapan', 1, 'rekomendasi', 'TIDAK LAYAK', 'Penerima profesi mapan tidak berhak menerima bantuan'),
(2, 'Aturan DTKS', 1, 'rekomendasi', 'TIDAK LAYAK', 'Tidak terdaftar DTKS'),
(3, 'PKH Pendidikan', 3, 'rekomendasi', 'LAYAK TERIMA PKH PENDIDIKAN', 'Keluarga miskin dengan anak sekolah'),
(4, 'Bantuan Sembako (BPNT)', 3, 'rekomendasi', 'LAYAK TERIMA BPNT', 'Keluarga miskin penerima sembako'),
(5, 'BLT Dana Desa', 3, 'rekomendasi', 'LAYAK TERIMA BLT DANA DESA', 'Warga tidak bekerja'),
(6, 'Aturan Ekonomi Mampu', 1, 'rekomendasi', 'TIDAK LAYAK', 'Ekonomi dianggap mampu'),
(7, 'PKH Lansia', 3, 'rekomendasi', 'LAYAK TERIMA PKH LANSIA', 'Keluarga miskin dengan lansia');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conditions`
--
ALTER TABLE `conditions`
  ADD CONSTRAINT `fk_rule_condition` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
