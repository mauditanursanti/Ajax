-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2019 at 06:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `title`, `isi`, `tanggal`) VALUES
(13, 'Brokoli', 'Mengandunglemak (4.5 g), energi 32 (kal), protein (0.3 g), karbohidrat (5.9 g), vitamin A (2.499 SI), vitamin B1 (0.17 mg), B2 (0.32 mg), B3 (0.9 mg), asamfolat (130 mkg), vitamin C (113 mg), B6 (0.21 mg), vitamin E (1 mg), kalium (381.9 mg), natrium (15 mg), kalsium (103 mg), seng (0.65 mg), seng (0.65 mg), fosfor 78 mg), megnesium (18.5 mg).Berkhasiat membangkitkan sistem kekebalan, melawan kanker, melawan penyakit jantung dan infeksi, membantu sistem pencernaan, mempercantik kulit, membantu wanita hamil, memperkuat sistem sarap bagi bu dan bayi, dan membantu penderita depresi.', '2019-03-05 20:25:24'),
(14, 'Kangkung', 'Mengandung serat (2 g), Besi (2.3 mg), Natrium (7 mg), energi (28 kcal), protein 3.4 g), lemak (0.7 g), kalsium (67 mg), phospor (54 mg), vitamin C (17 mg), B1 (0.07), B2 (0.36), B6 (2 mg), dan sejumlah senyawa 3 fitokimia yang berguna bagi tubuh.\r\nKangkung berkhasiat mengobati anemia, menurunkan kolesterol, anti diabetes, anti penuaan, mencegah radikal bebas dan meningkatkan kekebalan tubuh.\r\n', '2019-02-28 01:23:28'),
(15, 'Bayam', 'Mengandung kalori, (36 kcal), vitamin A (6.090 SI) vitamin B (0.08 mg), vitamin C (80 mg) protein (3.5 g), fosfor (67 mg), besi (3.9 mg), kalsium (265 mg), serta air garam (86.9 mg) dan sejumlah lutein dan asam folat.Berkhasiat mencegah bayi lahir cacat, mencegah penyakit jantung, mencegah anemia, melawan sel kanker, membantu penglihatan, anti inflamasi, menurunkan kolesterol, anti diabetes, baik bagi tulang, baik untuk pencernaan, meningkatkan kekebalan tubuh dan banyak lagi khasiatnya.', '2019-03-11 21:08:33'),
(16, 'Kubis', 'Mengandung fosfor (60 mg), mineral, kalsium (27 mg), potasium (229 mg), zatbesi (0.9), sodium (8 mg), vitamin A, B komplek, C (73 mg), dan sejumlah nutrisi, mangan, khrom, dan anti oksidan penting bagi kesehatan.Berkhasiat melawan kanker, baik untuk pencernaan, meningkatkan kekebalan, baik bagi tulang gigi, system saraf, ginjal dan jantung, melawan influenza, dan kesehatan kulit.', '2019-03-12 10:59:08'),
(17, 'Seledri', 'Seledri mengandung energi (20 kal), protein (1.0), lemak (0.1 g), fosfor (40 mg), zatbesi (1.0 mg), vitamin A (130 SI), vitamin b1 (1.02 mg), karbohidrat (4.6 g), kalsium (50 mg), vitamin C (11 mg), 1ir (93.0 g).Berkhasiat peluruh kencing, peluruh haid, menurunkan tekanan darah, penghenti pendarahan, karminatif, pembersih darah (detoks), anti kanker, anti kejang, menghentikan sel kanker, memperbaiki persendian, tulang dan jaringan ikat, serta menghambat pertumbuhan sel tumor.', '2019-03-12 10:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `usia` int(100) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `biografi` text NOT NULL,
  `gender` varchar(20) NOT NULL,
  `website` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `usia`, `nim`, `jurusan`, `biografi`, `gender`, `website`, `email`, `level`) VALUES
(51, 'maudita', '7737600cfc6c35c8d2e03cc708a633b2', 17, '0903', 'Sistem Informasi', 'mao', 'Perempuan', 'www.facebook.com', 'dnjk@yahoo.com', 'admin'),
(52, 'yolo', '4fded1464736e77865df232cbcb4cd19', 12, '090', 'Teknik Informatika', 'yolo', 'Laki - Laki', 'www.facebook.com', 'dnjk@yahoo.com', 'manager'),
(53, 'Maudita Nursanti', '501f53f13cce1d7e5e98bd1f40667b46', 17, '09031281823063', 'Sistem Komputer', 'maudita UNSRI 18', 'Perempuan', 'www.com', 'user.maudita@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
