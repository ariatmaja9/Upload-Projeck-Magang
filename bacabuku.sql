-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2024 pada 03.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bacabuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_10_24_000617_buat_tb_user', 1),
(3, '2023_10_24_005349_buat_tb_peminjam', 1),
(4, '2023_11_05_094523_buat_tb_anggota', 1),
(5, '2023_11_21_004529_buat_tb_kategori', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_member` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(16) NOT NULL,
  `level` varchar(16) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_member`, `nama`, `username`, `password`, `alamat`, `no_telepon`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Ari Atmaja', 'ari', '$2y$10$niMU3q7AFTDk5BxcIR0PP.vxztd7B//rn80cI2wtYrEK0qYl/s6cy', 'Ubud', '082194359207', 'user', NULL, '2024-01-07 00:22:10'),
(2, 'Admin', 'admin', '$2y$10$D9Nrf.3gcRmbmGyQjZoO.us2NChThEejK9GRi5zAn0ZkxRcYV3HeS', 'admin', 'admin', 'admin', NULL, '2024-01-07 00:18:44'),
(3, 'Hendrawan', 'hendra', '$2y$10$3ig71EFEI0zhIMx6pFGV5.c5rew7n71q.fiJIrDKmuRA8oXZyGSbe', 'Mengwi', '082456725712', 'user', '2024-01-06 03:28:59', '2024-01-06 03:28:59'),
(4, 'Natalee', 'nann', '$2y$10$ct5FqLmxS7kLLWPkN7hJxeuQZ3y8oiFqjjRz46H5sfGRuDFmqq1P6', 'Lumintang', '082456725332', 'user', '2024-01-06 04:07:59', '2024-01-06 17:29:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `id_kategori` bigint(20) NOT NULL,
  `tahun_terbit` varchar(100) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `id_kategori`, `tahun_terbit`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Attack On Titan', 'Hajime', 1, '2012', '2204aot.jpg', NULL, '2024-01-06 03:19:44'),
(2, 'Naruto', 'Ajinomoto', 1, '2000', '1371naruto.jpg', NULL, '2024-01-06 03:20:55'),
(3, 'Shadow Garden', 'Cid', 1, '2023', NULL, NULL, NULL),
(4, 'Bahasa Indonesia', 'Puspa Dewi', 3, '2012', '5512bindo.jpg', NULL, '2024-01-06 03:21:11'),
(5, 'Bahasa Jepang', 'Sugiono', 3, '2000', NULL, NULL, NULL),
(6, 'Bahasa Jerman', 'Anto', 3, '2015', NULL, NULL, NULL),
(7, 'Bahasa Inggris', 'Juliet', 3, '2016', '4751105747.jpg', NULL, '2024-01-06 03:21:30'),
(8, 'Manajen Bisnis', 'Jojo', 2, '2023', NULL, NULL, NULL),
(9, 'E Bisnis', 'Messi', 2, '2023', NULL, NULL, NULL),
(10, 'Bisnis Digital', 'Ega', 3, '2001', '2401CV.AriAtmaja.pdf', NULL, '2024-09-17 17:13:01'),
(15, 'Bahasa Balii2', 'Dibya', 3, '2012', '2525Screenshot (136).png', '2024-09-17 03:09:56', '2024-09-17 03:12:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Komik', NULL, NULL),
(2, 'Ekonomi', NULL, NULL),
(3, 'Bahasa', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjam`
--

CREATE TABLE `tb_peminjam` (
  `id_pinjam` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) NOT NULL,
  `id_member` bigint(20) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status_pinjam` varchar(100) NOT NULL,
  `denda` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_peminjam`
--

INSERT INTO `tb_peminjam` (`id_pinjam`, `id_buku`, `id_member`, `tanggal_pinjam`, `tanggal_kembali`, `status_pinjam`, `denda`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-01-06', '2024-02-06', 'belum_selesai', '0', '2024-01-06 03:22:06', '2024-01-06 03:22:06'),
(2, 1, 1, '2024-01-06', '2024-02-06', 'belum_selesai', '0', '2024-01-06 03:22:27', '2024-01-06 03:22:27'),
(3, 3, 1, '2024-01-06', '2024-02-06', 'belum_selesai', '0', '2024-01-06 03:22:55', '2024-01-06 03:22:55'),
(4, 5, 1, '2024-01-07', '2024-02-07', 'belum_selesai', '0', '2024-01-06 03:23:37', '2024-01-06 03:23:37'),
(5, 4, 1, '2024-01-09', '2024-02-09', 'belum_selesai', '0', '2024-01-06 03:24:10', '2024-01-06 03:24:10'),
(6, 7, 1, '2023-11-07', '2024-02-13', 'selesai', '0', '2024-01-06 16:36:24', '2024-01-06 16:36:24'),
(7, 6, 4, '2024-01-07', '2024-02-07', 'belum_selesai', '0', '2024-01-06 16:38:27', '2024-01-06 16:38:27'),
(8, 2, 1, '2023-11-07', '2023-12-19', 'selesai', '25000', '2024-01-06 17:37:11', '2024-01-06 17:37:11'),
(10, 10, 1, '2024-01-07', '2024-02-14', 'belum_selesai', '0', '2024-01-07 00:21:35', '2024-01-07 00:21:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `tb_anggota_id_member_unique` (`id_member`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD UNIQUE KEY `tb_buku_id_buku_unique` (`id_buku`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_peminjam`
--
ALTER TABLE `tb_peminjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD UNIQUE KEY `tb_peminjam_id_pinjam_unique` (`id_pinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
