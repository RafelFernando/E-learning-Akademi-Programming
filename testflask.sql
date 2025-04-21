-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2024 at 11:58 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testflask`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`, `email`, `image`) VALUES
(1, 'naruto', '123', 'Naruto Uzumaki', 'naruto@gmail.com', 'imphen_new.png'),
(3, 'anton', '123', 'anton', 'anton@gmail.com', '2c8e9851-b1de-4992-a199-af94e3a7264b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('ef1a8f98d363');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` int NOT NULL,
  `playlist_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
(12, 12),
(14, 13),
(13, 12),
(14, 12),
(10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int NOT NULL,
  `konten_id` int NOT NULL,
  `user_id` int NOT NULL,
  `komentar` varchar(1000) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `konten_id`, `user_id`, `komentar`, `tanggal`) VALUES
(38, 17, 14, 'mantulll', '2024-11-04 07:01:49'),
(39, 20, 14, 'semangat kak', '2024-11-04 07:03:17'),
(41, 10, 13, 'hhhh', '2024-11-04 07:37:00'),
(43, 10, 10, 'tes', '2024-11-05 12:54:33'),
(45, 10, 10, 'tesyu', '2024-11-06 03:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nomor` varchar(15) NOT NULL,
  `pesan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `nomor`, `pesan`) VALUES
(1, 'Romadona', 'dona@gmail.com', '12345678', 'saya dona teroris as'),
(2, 'RAFEL FERNANDO', 'rafel1@gmail.com', '8957248', 'mantap'),
(3, 'Enda Afiandika', 'enda@gmail.com', '08957248947', 'Materi banyakin data science'),
(4, 'Enda Afiandika', 'enda@gmail.com', '08957248947', 'mantap , adain quiz juga'),
(5, 'Enda Afiandika', 'enda@gmail.com', '08957248947', 'mantap, adain quiz kak'),
(6, 'RAFEL FERNANDO', 'rafel1@gmail.com', '08957248947', 'tes 1'),
(7, 'RAFEL FERNANDO', 'rafel1@gmail.com', '08957248', 'tes 2'),
(10, 'Nabilah Maimunnah', 'nabilahmaemunah38@gmail.com', '081567876543', 'sistem lumayan lemott'),
(11, 'jjjjj', 'jjjjj@gmail.com', '78787', 'kjjjjjj'),
(12, 'nabilah', 'nabilahmaemunah38@gmail.com', '08176557762', 'eror yang banyak');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `playlist_id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id`, `tutor_id`, `playlist_id`, `judul`, `deskripsi`, `video`, `thumbnail`, `tanggal`, `status`) VALUES
(10, 8, 12, '1. Pengenalan Kotlin', 'Belajar kotlin dari dasar sampai mahir', 'uploads/01. Pengenalan Kotlin.mp4', 'uploads/kotlin1.jpg', '2024-10-20 00:00:00', 'Activate'),
(11, 8, 12, '2. Program Hello World', 'Belajar kotlin dari dasar hingga mahir', 'uploads/02. Program Hello World.mp4', 'uploads/kotlin2.jpg', '2024-10-20 00:00:00', 'Activate'),
(12, 8, 12, '3. Tipe Data Number', 'Belajar kotlin dari dasar hingga mahir', 'uploads/03. Tipe Data Number.mp4', 'uploads/kotlin3.jpg', '2024-10-20 00:00:00', 'Activate'),
(13, 8, 12, '4. Tipe Data Character', 'Belajar kotlin dari dasar sampai mahir', 'uploads/04. Tipe Data Character.mp4', 'uploads/kotlin4.jpg', '2024-10-20 00:00:00', 'Activate'),
(14, 8, 12, '5. Tipe Data Boolean', 'Belajar kotlin dari dasar sampai mahir', 'uploads/05. Tipe Data Boolean.mp4', 'uploads/kotlin5.jpg', '2024-10-20 00:00:00', 'Activate'),
(15, 9, 13, '1. Apa itu python', 'Belajar python dari dasar sampai mahir', 'uploads/02.Belajar Python [Dasar] - 01 - Apa Itu Python.mp4', 'uploads/python.jpg', '2024-10-20 00:00:00', 'Activate'),
(16, 9, 13, '2. Instalasi Python', 'Belajar python dari dasar sampai mahir', 'uploads/04.Belajar Python [Dasar] - 02a - Installasi Python dan VS Code di Windows.mp4', 'uploads/python2.jpg', '2024-10-20 00:00:00', 'Activate'),
(17, 9, 13, '3. Cara Kerja Program dan Bytecode', 'Belajar python dari dasar sampai mahir', 'uploads/05.Belajar Python [Dasar] - 03 - Cara Kerja Program dan bytecode.mp4', 'uploads/python3.jpg', '2024-10-20 00:00:00', 'Activate'),
(18, 9, 13, '4. Mengenal Variabel', 'Belajar python dari dasar sampai mahir', 'uploads/06.Belajar Python [Dasar] - 04 - Mengenal Variabel.mp4', 'uploads/python4.jpg', '2024-10-20 00:00:00', 'Activate'),
(19, 9, 13, '5. Tipe Data', 'Belajar python dari dasar sampai mahir', 'uploads/07.Belajar Python [Dasar] - 05 - Tipe Data.mp4', 'uploads/python5.jpg', '2024-10-20 00:00:00', 'published'),
(20, 1, 14, '1. Perkenalan', 'Belajar laravel 11 dari dasar sampai mahir', 'uploads/videoplayback.mp4', 'uploads/laravel111.jpg', '2024-10-20 00:00:00', 'Activate'),
(21, 1, 14, '2. Instalasi dan Konfigurasi', 'Belajar laravel 11 dari dasar sampai mahir', 'uploads/videoplayback (1).mp4', 'uploads/laravel112.jpg', '2024-10-20 00:00:00', 'Activate'),
(22, 1, 14, '3. Struktur Folder', 'Belajar laravel 11 dari dasar sampai mahir', 'uploads/videoplayback (2).mp4', 'uploads/laravel113.jpg', '2024-10-20 00:00:00', 'Activate'),
(23, 1, 14, '4. Blade Templating Engine', 'Belajar laravel 11 dari dasar sampai mahir', 'uploads/videoplayback (3).mp4', 'uploads/laravel114.jpg', '2024-10-20 00:00:00', 'Activate'),
(24, 1, 14, '5. Blade Component', 'Belajar laravel 11 dari dasar sampai mahir', 'uploads/videoplayback (4).mp4', 'uploads/laravel115.jpg', '2024-10-20 00:00:00', 'published'),
(25, 9, 13, '6. Casting Tipe Data', 'Belajar python dari dasar sampai mahir', 'uploads/08.Belajar Python [Dasar] - 06 - Casting Tipe Data.mp4', 'uploads/python6.jpg', '2024-11-03 00:00:00', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `user_id` int NOT NULL,
  `konten_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`user_id`, `konten_id`) VALUES
(11, 10),
(14, 10),
(10, 15),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id` int NOT NULL,
  `nama_metode` varchar(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id`, `nama_metode`, `nomor`, `atas_nama`) VALUES
(1, 'Dana', '089657248947', 'PT. Akademi Programming'),
(2, 'BCA Tranfer', '3311190976798', 'PT. Akademi Programming');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` int NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `harga` int NOT NULL,
  `durasi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `nama_paket`, `deskripsi`, `harga`, `durasi`) VALUES
(1, 'Paket 1', '- 24 jam akses nonton video \r\n- Video pembelajaran menarik\r\n- 7 hari akses materi', 10000, 7),
(2, 'Paket 2', '- 24 jam akses nonton video \r\n- Video pembelajaran menarik \r\n- 30 hari akses materi', 150000, 30),
(3, 'Paket 3', '- 24 jam akses nonton video \r\n- Video pembelajaran menarik \r\n- 365 hari akses materi', 1000000, 365);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `akses` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `username`, `password`, `akses`) VALUES
(2, 'RAFEL FERNANDO', 'rafelgg', '123', '0'),
(3, 'RAFEL FERNANDO', 'enda', '123', '0'),
(4, 'rahmat', 'aurel', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int NOT NULL,
  `tutor_id` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `judul`, `deskripsi`, `thumbnail`, `tanggal`, `status`) VALUES
(12, 8, 'Kotlin', 'Belajar pemrograman kotlin dari dasar sampai mahir', 'uploads/kotlin.jpg', '2024-10-20 00:00:00', 'Activate'),
(13, 9, 'Python Dasar', 'Belajar pemrograman python dari dasar sampai mahir', 'uploads/python.jpg', '2024-10-20 00:00:00', 'Activate'),
(14, 1, 'Laravel 12', 'Belajar laravel 11 dari dasar sampai mahir', 'uploads/laravel111.jpg', '2024-10-20 00:00:00', 'Activate'),
(15, 9, 'Java', 'Belajar java dari dasar sampai mahir', 'uploads/java.jpg', '2024-11-03 00:00:00', 'Activate');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `paket_id` int NOT NULL,
  `metodebayar_id` int NOT NULL,
  `tanggal_mulai` datetime DEFAULT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `user_id`, `paket_id`, `metodebayar_id`, `tanggal_mulai`, `tanggal_selesai`, `status`) VALUES
(33, 14, 2, 2, '2024-11-04 15:30:41', '2024-12-04 15:30:41', 'aktif'),
(34, 13, 1, 1, '2024-11-05 09:17:53', '2024-11-12 09:17:53', 'aktif'),
(36, 15, 2, 1, '2024-11-05 10:10:45', '2024-12-05 10:10:45', 'aktif'),
(38, 10, 3, 1, '2024-11-06 10:35:44', '2025-11-06 10:35:44', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_akses`
--

CREATE TABLE `transaksi_akses` (
  `pelanggan_id` int NOT NULL,
  `tanggal_mulai` datetime NOT NULL,
  `tanggal_selesai` datetime NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi_akses`
--

INSERT INTO `transaksi_akses` (`pelanggan_id`, `tanggal_mulai`, `tanggal_selesai`, `id`) VALUES
(3, '2024-09-20 23:48:06', '2024-09-21 23:48:06', 2),
(4, '2024-09-22 23:48:50', '2025-09-22 23:48:50', 3),
(2, '2024-09-23 00:02:43', '2024-09-30 00:02:43', 4),
(3, '2024-09-23 00:03:02', '2024-09-30 00:03:02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `nama`, `pekerjaan`, `email`, `password`, `image`) VALUES
(1, 'Sandika Galih', 'Dosen Unpas', 'sandikagalih@gmail.com', 'sandika123', 'sandikagalih.jpg'),
(8, 'Eko Kurniawan Khannedy', 'Senior Principal R&D Engineer Blibli.com', 'ekokurniawan@gmail.com', 'eko123', 'eko.jpg'),
(9, 'Faqihza Mukhlish', 'Junior Lecturer at Institut Teknologi Bandung', 'faqihza@gmail.com', 'faqihza123', 'faqihza.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `image`) VALUES
(10, 'rafel', '123', 'RAFEL FERNANDO', 'rafel1@gmail.com', '20230908_182244_-_Copy.png'),
(11, 'dona', '123', 'Romadona', 'dona@gmail.com', 'dona.jpg'),
(12, 'aurel', '123', 'Aurel Ardhelia', 'aurel@gmail.com', 'IMG_20220121_191725_202.jpg'),
(13, 'enda', 'enda123', 'Enda Afiandika', 'enda@gmail.com', 'download_1.png'),
(14, 'nabiah ', 'nabilah.123', 'Nabilah Maimunnah', 'nabilahmaemunah38@gmail.com', 'kos2.jpg'),
(15, 'roma', '123', 'roma', 'roma@gmail.com', 'imphen.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `metodebayar_id` (`metodebayar_id`),
  ADD KEY `paket_id` (`paket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transaksi_akses`
--
ALTER TABLE `transaksi_akses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaksi_akses`
--
ALTER TABLE `transaksi_akses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`metodebayar_id`) REFERENCES `metode_pembayaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_akses`
--
ALTER TABLE `transaksi_akses`
  ADD CONSTRAINT `transaksi_akses_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
