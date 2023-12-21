-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 04 Des 2023 pada 02.35
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cek_pos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabangs`
--

CREATE TABLE `cabangs` (
  `id` int NOT NULL,
  `id_cabang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_cabang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_barang` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cabangs`
--

INSERT INTO `cabangs` (`id`, `id_cabang`, `nama_cabang`, `alamat`, `jumlah_barang`, `created_at`, `updated_at`) VALUES
(1, 'CBG123', 'Cabang Bandung', 'Jl JL', 102, NULL, NULL),
(2, 'CBG540', 'Cabang Banyumas', 'Banyumas Selatan', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `id` int NOT NULL,
  `Gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`id`, `Gambar`) VALUES
(1, 'bj.jpg'),
(3, 'celana.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fix_detail_order`
--

CREATE TABLE `fix_detail_order` (
  `id` int NOT NULL,
  `id_transaction` int NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `total` int NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fix_detail_order`
--

INSERT INTO `fix_detail_order` (`id`, `id_transaction`, `id_barang`, `id_cabang`, `id_user`, `nama_barang`, `kategori`, `harga`, `jumlah`, `total`, `satuan`, `created_at`) VALUES
(242, 661, '1478550', 'CBG123', '1', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2022-10-14 09:21:48'),
(243, 661, '2184300', 'CBG123', '1', 'Kecap', 'Makanan', 3000, 1, 3000, 'pcs', '2022-10-14 09:21:48'),
(244, 661, '23123123', 'CBG123', '1', 'Telor', 'Mie', 11000, 1, 11000, 'bks', '2022-10-14 09:21:48'),
(245, 2859, '1478550', 'CBG123', '1', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2022-10-15 06:46:23'),
(246, 2859, '23123123', 'CBG123', '1', 'Telor', 'Mie', 11000, 1, 11000, 'bks', '2022-10-15 06:46:23'),
(247, 1415, '1478550', 'CBG123', '1', 'mie geprek pedas', 'Mie', 120000, 1, 120000, 'bks', '2022-10-15 07:51:04'),
(248, 1415, '23123123', 'CBG123', '1', 'Telor', 'Mie', 11000, 1, 11000, 'bks', '2022-10-15 07:51:04'),
(249, 7801, '2184300', 'CBG540', '12', 'Kecap', 'Makanan', 3000, 1, 3000, 'pcs', '2023-11-30 04:15:01'),
(250, 1188, '2184300', 'CBG540', '12', 'Kecap', 'Makanan', 3000, 3, 9000, 'pcs', '2023-11-30 04:17:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
('KTG1110', 'Sampo', '2022-08-14 19:46:53', '2022-08-14 19:46:53'),
('KTG150', 'Mie', '2022-08-14 19:46:25', '2022-08-14 19:46:25'),
('KTG1530', 'Minuman', '2022-08-14 19:39:59', '2022-08-14 19:39:59'),
('KTG1860', 'Alat', '2022-08-14 19:45:00', '2022-08-14 19:45:00'),
('KTG2190', 'Sabun', '2022-08-14 19:47:09', '2022-08-14 19:47:09'),
('KTG2490', 'Rokok', '2022-08-14 19:39:26', '2022-08-14 19:39:26'),
('KTG2940', 'Elektronik', '2022-08-14 19:46:03', '2022-08-14 19:46:03'),
('KTG360', 'Parfum', '2022-08-14 19:47:18', '2022-08-14 19:47:18'),
('KTG390', 'Makanan', '2022-10-11 21:30:21', '2022-10-11 21:30:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_09_023529_create_sessions_table', 1),
(7, '2022_08_09_044527_create_products_table', 1),
(8, '2022_08_10_035731_create_kategoris_table', 1),
(9, '2022_08_11_071212_create_satuans_table', 1),
(10, '2022_08_11_080151_create_cabangs_table', 1),
(11, '2022_08_11_095506_create_supliers_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` int NOT NULL,
  `id_barang` int NOT NULL,
  `id_cabang` varchar(30) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `jumlah` int NOT NULL,
  `total` int NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('heydaristo@gmail.com', '$2y$10$NwcnY5cLhQpSWtz0iIHjIeVIMioIor4rH3jNQFmBc9nyVKS/bKEKu', '2023-11-29 20:54:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_barang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `profit` int NOT NULL,
  `stok` int NOT NULL,
  `satuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cabang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_suplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_penjualan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_pembelian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `barcode`, `nama_barang`, `gambar`, `kategori`, `harga_beli`, `harga_jual`, `profit`, `stok`, `satuan`, `id_cabang`, `keterangan`, `id_suplier`, `kode_penjualan`, `kode_pembelian`, `created_at`, `updated_at`) VALUES
('1478550', NULL, 'mie geprek pedas', NULL, 'Mie', 100000, 120000, 20000, 66, 'bks', 'CBG123', NULL, 'SPL1950', NULL, NULL, '2022-08-14 20:04:10', '2022-08-14 20:04:10'),
('2184300', NULL, 'Kecap', NULL, 'Makanan', 2000, 3000, 1000, 89, 'pcs', 'CBG540', NULL, 'SPL1950', NULL, NULL, '2022-10-14 02:13:56', '2022-10-14 02:13:56'),
('23123123', NULL, 'Telor', NULL, 'Mie', 10000, 11000, 1000, 6, 'bks', 'CBG123', 'asdasda', 'SPL1950', 'asd', 'asd', '2022-10-02 20:25:15', '2022-10-02 20:25:15'),
('299280', NULL, 'mie ayam bawang', NULL, 'Mie', 90000, 100000, 10000, 48, 'bks', 'CBG123', NULL, 'SPL1440', NULL, NULL, '2022-08-14 20:01:19', '2022-08-14 20:01:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuans`
--

CREATE TABLE `satuans` (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_satuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_asli` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `satuans`
--

INSERT INTO `satuans` (`id`, `nama_satuan`, `nama_asli`, `created_at`, `updated_at`) VALUES
('STN1950', 'pcs', 'picis', '2022-08-14 19:52:01', '2022-08-14 19:52:01'),
('STN30', 'bks', 'Bungkus', '2022-08-14 19:51:32', '2022-08-14 19:51:32'),
('STN420', 'btl', 'Botol', '2022-08-14 19:53:04', '2022-08-14 19:53:04'),
('STN780', 'kds', 'Kardus', '2022-08-14 19:53:25', '2022-08-14 19:53:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4CjqbyJNgIZPFK3vrjJSqTJvt4PVlA7qUZPiZsyR', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 13; 2201117TY) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.5414.123 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQmhCd05iSDk3MFFXNnNpU1VqUVRuZ1BrSGMzUGxnUnRFRE5vTUtLaCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo3NDoiaHR0cDovL2UyNzctMjAwMS00NDhhLTQwMDMtMmRiYy1lMTQ0LTEwMmQtOGY1My1jZC5uZ3Jvay1mcmVlLmFwcC9kYXNoYm9hcmQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo3NDoiaHR0cDovL2UyNzctMjAwMS00NDhhLTQwMDMtMmRiYy1lMTQ0LTEwMmQtOGY1My1jZC5uZ3Jvay1mcmVlLmFwcC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1701344040),
('AqbKRTur3a5sqxNkhKjiuZACtofl9FGIPQU9nbmP', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTERMaUtSM0F4eWlHTGVMd1Z6RDlac2FOVml6VHJrTVVrbFVDNWtvZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjt9', 1701657078),
('HWtbl391ASO3WiSszCaWto54mMcLlYNdheOIHZjF', 12, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-G980F Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.3396.87 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicnZteGQ0c3kwbVhDQlZISFhtcjhHT283MVpqdVZ3SGtQNlI3b2ZndyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjt9', 1701319550),
('p3KuRxA0csDrhQEzVrL3ies1F9snS8ZJlaMhXr36', 13, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUGRFNURhc3ZjU1dYNzdSSm91anRpUk8wMnp2NHFxNHhDNGZLdXpSNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzQ6Imh0dHA6Ly9lMjc3LTIwMDEtNDQ4YS00MDAzLTJkYmMtZTE0NC0xMDJkLThmNTMtY2Qubmdyb2stZnJlZS5hcHAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTM7fQ==', 1701319487),
('QeL8scUpukYdGCOPwnYt3mLemoy1DXGSdmxCbQ7K', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUR1emYyQ091VnpCV05LcHZBUWNBZmJ4RTlIYjhQbXBwYVVLdmZFciI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1701346658);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supliers`
--

CREATE TABLE `supliers` (
  `id` bigint UNSIGNED NOT NULL,
  `id_suplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_suplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_suplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tlp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supliers`
--

INSERT INTO `supliers` (`id`, `id_suplier`, `nama_suplier`, `alamat_suplier`, `tlp`, `created_at`, `updated_at`) VALUES
(1, 'SPL1440', 'Dani', 'Bandung', '085797887711', '2022-08-14 19:55:56', '2022-08-14 19:55:56'),
(2, 'SPL1950', 'Lukman', 'Jakarta', '089636337580', '2022-08-14 19:56:16', '2022-08-14 19:56:16'),
(4, 'SPL630', 'Dimas', 'Demak', '081231231232', '2023-11-29 21:17:20', '2023-11-29 21:17:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int NOT NULL,
  `id_transaction` varchar(20) NOT NULL,
  `id_cabang` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL,
  `total` int NOT NULL,
  `cash` int NOT NULL,
  `cashback` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`id`, `id_transaction`, `id_cabang`, `id_user`, `total`, `cash`, `cashback`, `created_at`) VALUES
(131, '661', 'CBG123', '1', 134000, 150000, 16000, '2022-10-14 09:21:48'),
(132, '2859', 'CBG540', '1', 131000, 150000, 19000, '2022-10-15 06:48:40'),
(133, '1415', 'CBG123', '1', 131000, 150000, 19000, '2022-10-15 07:51:04'),
(134, '7801', 'CBG540', '12', 3000, 5000, 2000, '2023-11-30 04:15:01'),
(135, '1188', 'CBG540', '12', 9000, 10000, 1000, '2023-11-30 04:17:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cabang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_level` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `jenis_kelamin`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `id_cabang`, `user_level`, `created_at`, `updated_at`) VALUES
(1, 'hakim', 'danilukman2206@gmail.com', 'L', NULL, '$2y$10$IOlviLj4YyhLY4Y5Z9/fkO7WDD7KmwboEsJvwJ7vkMMdnYTdk6kfi', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG123', '1', '2022-08-14 01:26:31', '2022-08-14 01:26:31'),
(8, 'lukman', 'admin@admin.com', 'P', NULL, '$2y$10$a3uvZQlB3NBZDhiCS2O8JOcGQcJSVQRWLq4zNCwsZNMJTeRETCQRi', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG540', '2', '2022-08-14 01:38:13', '2022-08-14 01:38:13'),
(12, 'Heydaristo Zhahir Razaq', 'heydaristo@gmail.com', 'L', NULL, '$2y$10$BeOc9AA7cTll34ICUsVjfOkXbtVQP4CNRjW2ZM63NURB37TXCMvi.', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG540', '1', '2023-11-29 20:51:29', '2023-11-29 20:51:29'),
(13, 'Heydar kasir', 'heydarkasir@gmail.com', 'L', NULL, '$2y$10$es79j1WyOkIW/uX1TV9s.eS.31AnlFxHuDFM.SCTTDRvEOoDGKZWm', NULL, NULL, NULL, NULL, NULL, NULL, 'CBG540', '2', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `satuans`
--
ALTER TABLE `satuans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `file`
--
ALTER TABLE `file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fix_detail_order`
--
ALTER TABLE `fix_detail_order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supliers`
--
ALTER TABLE `supliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
