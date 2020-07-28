-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2020 pada 14.28
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_murabahah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
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
(11, '2019_07_15_160625_create_table__pembiayaan', 9),
(12, '2019_07_22_012159_create_table__nasabahh', 10),
(13, '2019_07_31_080720_create_table_permohonann', 11),
(14, '2019_08_09_110752_create_table__pembelian', 12),
(15, '2019_08_09_113111_create_table__pembelian', 13),
(16, '2019_12_07_033211_create_table__companies', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_permohonann`
--

CREATE TABLE `table_permohonann` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Permohonan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_Rekening` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_pengajuan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegunaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_dana` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jaminan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_permohonann`
--

INSERT INTO `table_permohonann` (`id`, `id_Permohonan`, `no_Rekening`, `nama_lengkap`, `tgl_pengajuan`, `kegunaan`, `jml_dana`, `jaminan`, `created_at`, `updated_at`) VALUES
(7, 'PER001', '0008001', 'Syafa\'atul Ummah K.A', '01/23/2020', 'Beli laptop', '5000000', 'BPKB', '2020-01-23 07:10:46', '2020-01-23 07:10:46'),
(8, 'PER002', '0008002', 'lia', '01/24/2020', 'Beli laptop', '5000000', 'KTP', '2020-01-23 19:49:42', '2020-01-23 19:49:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table__angsuran`
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
-- Dumping data untuk tabel `table__angsuran`
--

INSERT INTO `table__angsuran` (`id`, `id_Angsuran`, `id_Pembiayaan`, `tgl_angsuran`, `nama_penyetor`, `atas_nama`, `angsuran_ke`, `nominal`, `sisa`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ANG001', 'PEM001', '01/24/2020', 'wawan', 'Syafa\'atul Ummah K.A', '1', '2550000', '2550000', 'belum lunas', 4, '2020-01-23 19:45:09', '2020-01-23 19:45:09'),
(2, 'ANG002', 'PEM001', '01/24/2020', 'wawan', 'Syafa\'atul Ummah K.A', '2', '5100000', '0', 'lunas', 4, '2020-01-23 19:45:29', '2020-01-23 19:45:29'),
(5, 'ANG004', 'PEM002', '01/24/2020', 'lia', 'lia', '1', '4080000', '0', 'lunas', 4, '2020-01-23 19:56:17', '2020-01-23 19:56:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table__companies`
--

CREATE TABLE `table__companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table__datarekening`
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
-- Dumping data untuk tabel `table__datarekening`
--

INSERT INTO `table__datarekening` (`id`, `id_Nasabah`, `no_Rekening`, `nama_lengkap`, `jns_simpanan`, `tgl_buka`, `saldo_awal`, `status`, `created_at`, `updated_at`) VALUES
(15, 'NAS001', '0008001', 'Syafa\'atul Ummah K.A', 'Murabahah', '01/23/2020', '50000', 'Aktif', '2020-01-23 07:10:14', '2020-01-23 07:10:14'),
(17, 'NAS002', '0008002', 'lia', 'Murabahah', '01/24/2020', '50000', 'Aktif', '2020-01-23 19:49:14', '2020-01-23 19:49:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table__nasabahh`
--

CREATE TABLE `table__nasabahh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Nasabah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jns_identitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_identitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_pos` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_Lahir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pernikahan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan_terakhir` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibuKandung` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ktp` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table__nasabahh`
--

INSERT INTO `table__nasabahh` (`id`, `id_Nasabah`, `nama_lengkap`, `jns_identitas`, `no_identitas`, `alamat`, `kode_pos`, `no_hp`, `email`, `tempat_Lahir`, `tgl_lahir`, `jenis_kelamin`, `status_pernikahan`, `pendidikan_terakhir`, `pekerjaan`, `nama_ibuKandung`, `ktp`, `created_at`, `updated_at`) VALUES
(8, 'NAS001', 'Syafa\'atul Ummah K.A', 'SIM', '09974331123', 'Bogor', '0989', '08966304131', 'liaamalya90@gmail.com', 'Pati', '01/23/2020', 'Perempuan', 'Kawin', 'SMP', 'Mahasiswa', 'Siti', NULL, '2020-01-23 07:09:49', '2020-01-23 07:09:49'),
(9, 'NAS002', 'lia', 'SIM', '0997433112', 'Bogor', '1122', '089552304231', 'admin1@gmail.com', 'Pati', '01/16/2020', 'Perempuan', 'Blom Kawin', 'SMP', 'Mahasiswa', 'Siti', NULL, '2020-01-23 19:47:56', '2020-01-23 19:47:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table__pembelian`
--

CREATE TABLE `table__pembelian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Pembiayaan` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Harga` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `struk` text COLLATE utf8mb4_unicode_ci,
  `ktp` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table__pembelian`
--

INSERT INTO `table__pembelian` (`id`, `id_Pembiayaan`, `nama_barang`, `kategori`, `alamat`, `Harga`, `struk`, `ktp`, `created_at`, `updated_at`) VALUES
(18, 'PEM001', 'laptop', 'konsumtif', 'Dmall depok', '50000000', 'ok/GPqG56eX01qBmA3wbEQBb5IoZlB7A4bmUuNz7hJS.jpeg', NULL, '2020-01-23 07:12:35', '2020-01-23 07:12:35'),
(19, 'PEM002', 'asus', 'konsumtif', 'Dmall Depok', '5000000', 'ok/HwhMSmicsmykmFGNjFff0gWck3ZkGQ7yfs4Ql3ZD.jpeg', NULL, '2020-01-23 19:51:49', '2020-01-23 19:51:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table__pembiayaan`
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
-- Dumping data untuk tabel `table__pembiayaan`
--

INSERT INTO `table__pembiayaan` (`id`, `id_Permohonan`, `id_Pembiayaan`, `nama_lengkap`, `jns_simpanan`, `tgl_permohonan`, `jml_dana`, `margin`, `total_margin`, `jangka_waktu`, `angsuran`, `status`, `created_at`, `updated_at`) VALUES
(28, 'PER001', 'PEM001', 'Syafa\'atul Ummah K.A', 'Murabahah', '01/23/2020', '5000000', '2', '5100000', '3', '1700000', 'Belum Lunas', NULL, '2020-01-26 22:02:56'),
(30, 'PER002', 'PEM002', 'lia', 'Murabahah', '01/24/2020', '4000000', '2', '4080000', '1', '4080000', 'Belum Lunas', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` enum('Admin','Manager','Teller','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `alamat` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `akses`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Tsania', 'syafaamay@yahoo.co.id', NULL, '$2y$10$rbfHZx12t0xNbVadZtGMg.e8jrOIi.r6zkwpcch.eivKaHgSV.o1a', 'Admin', 'Bogor', 'ydRtiXDTTccFjolO7Zm4A1oNmKOSXyyfCbnrlDtdnj9ns6vNqWNiG5FmPEJb', '2019-03-13 08:13:08', '2019-03-13 08:13:08'),
(3, 'Admin', 'syafaamay@gmail.com', NULL, '$2y$10$7OC.YBUf.p1ov9i9YDAi7.7EKPZ8SvJxZb43EioVsfsMdnloIoA8K', 'Admin', 'Bogor', 'dWx45QVE3v9LUXS7mTP4wiqYwAHsoRJCMv7BU6tr4vnSahSvKlAZrVxuXMvO', '2019-07-12 10:01:28', '2019-07-13 07:57:10'),
(4, 'Teller', 'liaamalya90@gmail.com', NULL, '$2y$10$f6QEhpdHk74Da2c1Sz1.Wew8mkyf5jKsui9IkvdGU2DlUCDY/YbX2', 'Teller', 'Pati', NULL, '2019-07-13 22:05:51', '2019-07-13 22:05:51'),
(5, 'Manager', 'manager@gmail.com', NULL, '$2y$10$jilIGWv55u.ZDrxv7NSPqOUZ2.pkqQK8.B22GE8y0OYXj6d3smscq', 'Manager', NULL, NULL, '2019-07-21 18:35:11', '2019-07-21 18:35:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `table_permohonann`
--
ALTER TABLE `table_permohonann`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table__angsuran`
--
ALTER TABLE `table__angsuran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_Angsuran` (`id_Angsuran`),
  ADD KEY `table__angsuran_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `table__companies`
--
ALTER TABLE `table__companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table__companies_email_unique` (`email`);

--
-- Indeks untuk tabel `table__datarekening`
--
ALTER TABLE `table__datarekening`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_Nasabah` (`id_Nasabah`),
  ADD UNIQUE KEY `no_Rekening` (`no_Rekening`);

--
-- Indeks untuk tabel `table__nasabahh`
--
ALTER TABLE `table__nasabahh`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table__pembelian`
--
ALTER TABLE `table__pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table__pembiayaan`
--
ALTER TABLE `table__pembiayaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_Permohonan` (`id_Permohonan`),
  ADD UNIQUE KEY `id_Pembiayaan` (`id_Pembiayaan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `table_permohonann`
--
ALTER TABLE `table_permohonann`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `table__angsuran`
--
ALTER TABLE `table__angsuran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `table__companies`
--
ALTER TABLE `table__companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `table__datarekening`
--
ALTER TABLE `table__datarekening`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `table__nasabahh`
--
ALTER TABLE `table__nasabahh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `table__pembelian`
--
ALTER TABLE `table__pembelian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `table__pembiayaan`
--
ALTER TABLE `table__pembiayaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
