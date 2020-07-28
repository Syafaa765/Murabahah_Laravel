-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2019 at 03:12 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-latihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_03_121142_create__data__nasabah_table', 1),
(4, '2019_07_11_050410_create_table__nasabah', 2),
(5, '2019_07_11_074707_create_table__datarekening', 3),
(6, '2019_07_11_174833_create_table__permohonan', 4),
(7, '2019_07_02_040416_create_table__pembiayaan', 5),
(8, '2019_07_12_185128_create_table__pembiayaan', 6),
(9, '2019_07_14_051623_create_table__angsuran', 7),
(10, '2019_07_14_070321_create_table__angsuran', 8),
(11, '2019_07_15_160625_create_table__pembiayaan', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table__angsuran`
--

CREATE TABLE `table__angsuran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Angsuran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_Pembiayaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_angsuran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penyetor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atas_nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angsuran_ke` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sisa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table__angsuran`
--

INSERT INTO `table__angsuran` (`id`, `id_Angsuran`, `id_Pembiayaan`, `tgl_angsuran`, `nama_penyetor`, `atas_nama`, `angsuran_ke`, `nominal`, `sisa`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'ANG001', 'PEM001', '07/21/2019', 'hoerudin', 'Syafa\'atul Ummah K.A', '1', '1530000', '4590000', 'belum lunas', 4, '2019-07-21 02:04:59', '2019-07-21 02:04:59'),
(8, 'ANG002', 'PEM001', '07/24/2019', 'hoerudin', 'Syafa\'atul Ummah K.A', '2', '3060000', '3060000', 'belum lunas', 4, '2019-07-21 02:05:14', '2019-07-21 02:05:14'),
(9, 'ANG003', 'PEM001', '07/21/2019', 'hoerudin', 'Syafa\'atul Ummah K.A', '3', '4590000', '1530000', 'belum lunas', 4, '2019-07-21 02:05:28', '2019-07-21 02:05:28'),
(10, 'ANG004', 'PEM001', '07/24/2019', 'hoerudin', 'Syafa\'atul Ummah K.A', '4', '6120000', '0', 'lunas', 4, '2019-07-21 02:06:11', '2019-07-21 02:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `table__datarekening`
--

CREATE TABLE `table__datarekening` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Nasabah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_Rekening` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jns_simpanan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_buka` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo_awal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table__datarekening`
--

INSERT INTO `table__datarekening` (`id`, `id_Nasabah`, `no_Rekening`, `nama_lengkap`, `jns_simpanan`, `tgl_buka`, `saldo_awal`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NAS001', '0008001', 'Syafa\'atul Ummah K.A', 'Murabahah', '07/13/2019', '50.000', 'Aktif', '2019-07-12 11:06:28', '2019-07-15 20:15:05'),
(2, 'NAS002', '0008002', 'Tsania HM', 'Murabahah', '07/16/2019', '50.000', 'Aktif', '2019-07-15 20:14:26', '2019-07-20 07:59:56'),
(4, 'NAS003', '0008003', 'lia', 'Murabahah', '07/20/2019', '50000', 'Aktif', '2019-07-20 07:56:10', '2019-07-20 07:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `table__pembiayaan`
--

CREATE TABLE `table__pembiayaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Permohonan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_Pembiayaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jns_simpanan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_permohonan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_dana` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `margin` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_margin` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jangka_waktu` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angsuran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table__pembiayaan`
--

INSERT INTO `table__pembiayaan` (`id`, `id_Permohonan`, `id_Pembiayaan`, `nama_lengkap`, `jns_simpanan`, `tgl_permohonan`, `jml_dana`, `margin`, `total_margin`, `jangka_waktu`, `angsuran`, `status`, `created_at`, `updated_at`) VALUES
(3, 'PER001', 'PEM001', 'Syafa\'atul', 'Murabahah', '07/16/2019', '6000000', '2', '6120000', '4', '1530000', 'Belum Lunas', '2019-07-15 19:01:27', '2019-07-21 02:03:18');

-- --------------------------------------------------------

--
-- Table structure for table `table__permohonan`
--

CREATE TABLE `table__permohonan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Permohonan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_Rekening` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pengajuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegunaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_dana` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jaminan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table__permohonan`
--

INSERT INTO `table__permohonan` (`id`, `id_Permohonan`, `no_Rekening`, `nama_lengkap`, `tgl_pengajuan`, `kegunaan`, `jml_dana`, `jaminan`, `created_at`, `updated_at`) VALUES
(2, 'PER001', '0008001', 'Syafa\'atul Ummah K.A', '07/13/2019', 'Beli laptop', '5000000', 'BPKB', '2019-07-12 23:07:47', '2019-07-15 08:57:44'),
(4, 'PER002', '0008002', 'wawan', '07/16/2019', 'Beli kios', '1000000', 'BPKB', '2019-07-15 20:16:00', '2019-07-15 20:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` enum('Admin','Manager','Teller','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `alamat` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `akses`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lia', 'liaamalya91@gmail.com', NULL, '$2y$10$fu0.hkPBhZvkxfvfxgvF9uWx85AsYNqBlzvczZB5l2yIdKRTT7piO', 'Manager', 'Bogor', NULL, '2019-02-03 05:20:13', '2019-02-03 05:20:13'),
(2, 'Tsania', 'syafaamay@yahoo.co.id', NULL, '$2y$10$rbfHZx12t0xNbVadZtGMg.e8jrOIi.r6zkwpcch.eivKaHgSV.o1a', 'Admin', 'Bogor', 'ydRtiXDTTccFjolO7Zm4A1oNmKOSXyyfCbnrlDtdnj9ns6vNqWNiG5FmPEJb', '2019-03-13 08:13:08', '2019-03-13 08:13:08'),
(3, 'Admin', 'syafaamay@gmail.com', NULL, '$2y$10$7FqWa1PTPf1spIn9eA8B1OhfBnQijMhWnjb/NbUwguHgMjU4droUG', 'Admin', 'Bogor', 'sssfPePY9jXpOUthcJS2S1PaGqv6ro9076R03gQcDNM4HYSrJG0pnQNXIcCK', '2019-07-12 10:01:28', '2019-07-13 07:57:10'),
(4, 'Teller', 'liaamalya90@gmail.com', NULL, '$2y$10$f6QEhpdHk74Da2c1Sz1.Wew8mkyf5jKsui9IkvdGU2DlUCDY/YbX2', 'Teller', 'Pati', NULL, '2019-07-13 22:05:51', '2019-07-13 22:05:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `table__angsuran`
--
ALTER TABLE `table__angsuran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_Angsuran` (`id_Angsuran`),
  ADD KEY `table__angsuran_user_id_foreign` (`user_id`);

--
-- Indexes for table `table__datarekening`
--
ALTER TABLE `table__datarekening`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_Nasabah` (`id_Nasabah`),
  ADD UNIQUE KEY `no_Rekening` (`no_Rekening`);

--
-- Indexes for table `table__pembiayaan`
--
ALTER TABLE `table__pembiayaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_Permohonan` (`id_Permohonan`),
  ADD UNIQUE KEY `id_Pembiayaan` (`id_Pembiayaan`);

--
-- Indexes for table `table__permohonan`
--
ALTER TABLE `table__permohonan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_Rekening` (`no_Rekening`),
  ADD UNIQUE KEY `id_Permohonan` (`id_Permohonan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `table__angsuran`
--
ALTER TABLE `table__angsuran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table__datarekening`
--
ALTER TABLE `table__datarekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table__pembiayaan`
--
ALTER TABLE `table__pembiayaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table__permohonan`
--
ALTER TABLE `table__permohonan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table__pembiayaan`
--
ALTER TABLE `table__pembiayaan`
  ADD CONSTRAINT `table__pembiayaan_ibfk_1` FOREIGN KEY (`id_Permohonan`) REFERENCES `table__permohonan` (`id_Permohonan`);

--
-- Constraints for table `table__permohonan`
--
ALTER TABLE `table__permohonan`
  ADD CONSTRAINT `table__permohonan_ibfk_1` FOREIGN KEY (`no_Rekening`) REFERENCES `table__datarekening` (`no_Rekening`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
