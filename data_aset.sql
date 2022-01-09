-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2021 pada 01.51
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_aset`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `historykeeper`
--

CREATE TABLE `historykeeper` (
  `id_data` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `no_id` varchar(100) DEFAULT NULL,
  `user_keep` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `historykeeper`
--

INSERT INTO `historykeeper` (`id_data`, `name`, `fullname`, `no_id`, `user_keep`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, '2021-08-26 00:44:07', '2021-08-26 00:44:07'),
(2, NULL, NULL, NULL, NULL, '2021-08-26 00:44:16', '2021-08-26 00:44:16'),
(3, NULL, NULL, NULL, NULL, '2021-08-26 00:44:39', '2021-08-26 00:44:39'),
(4, NULL, NULL, NULL, NULL, '2021-08-26 00:45:50', '2021-08-26 00:45:50'),
(5, NULL, NULL, NULL, NULL, '2021-08-26 00:45:52', '2021-08-26 00:45:52'),
(6, NULL, NULL, NULL, NULL, '2021-08-26 00:45:55', '2021-08-26 00:45:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
(6, '2021_07_02_035123_create_products_table', 1),
(7, '2021_07_02_051144_create_new_products_table', 1),
(8, '2021_07_09_061323_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_a` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_b` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_c` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_d` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_e` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_f` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_g` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_vaksin_cov` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosis_satu_cov` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosis_dua_cov` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `fullname`, `area_a`, `area_b`, `area_c`, `area_d`, `area_e`, `area_f`, `area_g`, `instansi`, `no_id`, `image`, `card_status`, `created_at`, `exp_date`, `updated_at`, `no_vaksin_cov`, `dosis_satu_cov`, `dosis_dua_cov`) VALUES
(5, '1268438071', 'IWAN SJARIFUDDIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0001/P4H/0221', '01 IWAN SJARIFUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(6, '1269063671', 'WAHYUDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/02/0221', '02 WAHYUDI.jpg', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(7, '428219866', 'FANNY HERLING TAMBARITJI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/03/0221', '03 FANNY HERLING T.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(8, '429230346', 'M. FARID MUJIONO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/04/0221', '04 M FARID MUJIONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(9, '428925626', 'ANDI MUSTAFA A.H', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/05/0221', '05 ANDI MUSTAFA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(10, '424540970', 'YUDAWIRA MARIONO S', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/06/0221', '06 YUDA WIRA M.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(11, '428984282', 'SYAFRUDDIN ABDUL KADIR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/07/0221', '07 SYAFRUDDIN A.K..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(12, '443498218', 'SUDJATMOKO DJATI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/08/0221', '08 SUDJATMOKO DJATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(13, '1251835927', 'ANDI MUHAMMAD RIZAL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/09/0221', '09 ANDI M RIZAL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(14, '1251227671', 'MUHAMMAD BADRUM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/10/0221', '10 M BADRUM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(15, '443824490', 'ANDRE RICHO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/11/0221', '11 ANDRE RICHO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(16, '1251714359', 'RAHARJA SAMIYANA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/12/0221', '12 RAHARJA SAMIYANA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(17, '1251430391', 'NUR MUHAMMAD', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/13/0221', '13 NUR MUHAMMAD.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(18, '443094650', 'MOHAMMAD NURI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/14/0221', '14 MOHAMMAD NURI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(19, '443651930', 'RANDO SOEKARNO PUTRA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/15/0221', '15 RANDO SOEKARNO P.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(20, '1251219719', 'MUH.NATSIR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/16/0221', '16 MUH NATSIR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(21, '429292602', 'RASYIDIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/17/0221', '17 RASYIDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(22, '1251693303', 'SULHAJJI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/18/0221', '18 SULHAJI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(23, '443047498', 'ABENTINUS S', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/19/0221', '19 ABENTINUS S.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(24, '429166394', 'ACHMAD EFFENDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/20/0221', '20 ACHMAD EFFENDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(25, '429454442', 'AGUS N', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/21/0221', '21 AGUS N.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(26, '1251956583', 'AGUS PRASETYO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/22/0221', '22 AGUS PRASETYO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(27, '427263722', 'AGUS SUWA RD', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/23/0221', '23 AGUS SUWA RD.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(28, '1268633367', 'ALI AKBAR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/24/0221', '24 ALI AKBAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(29, '443133482', 'ANDI ASWAN BASO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/25/0221', '25 ANDI ASWAN BASO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(30, '1269173159', 'ANDI NURALIM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/26/0221', '26 ANDI NURALIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(31, '1268749239', 'ANDI PATONANGI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/27/0221', '27 ANDI PATONAGI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(32, '1252016647', 'ANTON', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/28/0221', '28 ANTON.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(33, '428307626', 'ARDIANSYAH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/29/0221', '29 ARDIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(34, '443722330', 'ARDHYANSYAH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/30/0221', '30 ARDHYANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(36, '1251574007', 'AWAL MA\'ARUF', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/32/0221', '32 AWAL MA\'ARUF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(37, '443357498', 'ARIF', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/33/0221', '33 ARIF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(38, '425529642', 'ARIFIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/34/0221', '34 ARIFIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(39, '424361066', 'BENNY CHRISTIAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/35/0221', '35 BENNY CHRISTIAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(40, '425476570', 'BUDI SAHARA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/36/0221', '36 BUDI SAHARA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(42, '425119386', 'DADANG SUBAGYO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/38/0221', '38 DADANG SUBAGYO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(43, '1269155767', 'DAMIATI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/39/0221', '39 DAMIATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(44, '425341626', 'DEDY', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/40/0221', '40 DEDY.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(45, '443359866', 'DWI SENO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/41/0221', '41 DWI SENO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(46, '443318234', 'EKO HARIANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/42/0221', '42 EKO HARIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(47, '424288554', 'EKO MISRIANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/43/0221', '43 EKO MISRIANTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(48, '425443850', 'FENDY FORTUNATUS', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/44/0221', '44 FENDY FORTUNATUS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(49, '444106890', 'GINA RIFQIA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/45/0221', '45 GINA RIFQIA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(50, '443495914', 'HAIRIL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/46/0221', '46 HAIRIL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(51, '424367274', 'HARY SEMUDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/47/0221', '47 HADI SEMUDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(52, '424480874', 'HARTO DJATMIKO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/48/0221', '48 HARTO DJATMIKO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(53, '429131946', 'HARMINTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/49/0221', '49 HARMINTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(54, '424561546', 'HARYADI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/50/0221', '50 HARYADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(55, '425284650', 'HARYONO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/51/0221', '51 HARYONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(56, '1269035287', 'HERYANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/52/0221', '52 HERYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(57, '1251214439', 'HORMARNANI P', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/53/0221', '53 HORMARNANI P.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(58, '424449290', 'HUSAINI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/54/0221', '54 HUSAINI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(59, '443260170', 'IQBAL KASIM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/55/0221', '55 IQBAL KASIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(60, '1251020295', 'ISMET WARSITO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/56/0221', '56 ISMET WARSITO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(61, '1251574071', 'IVAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/57/0221', '57 IVAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(62, '425408026', 'IZYATUNNISA TANRA PUJI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/58/0221', '58 IZYATUNNISA TANRA PUJI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(63, '429251450', 'JAYA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/59/0221', '59 JAYA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(64, '1251264247', 'JIMMY BILLY', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/60/0221', '60 JIMMY BILLY.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(65, '1251685687', 'JOHNNY SIRAIT', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/61/0221', '61 JOHNNY SIRAIT.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(66, '1251382791', 'KRISTIAN PANE', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/62/0221', '62 KRISTIAN PANE.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(67, '1251047911', 'KURNIAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/63/0221', '63 KURNIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(68, '425196346', 'LA EDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/64/0221', '64 LA EDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(69, '1250998679', 'LA RAHA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/65/0221', '65 LA RAHA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(70, '424813098', 'LANGGENG', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/66/0221', '66 LANGGENG.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(71, '443956890', 'LUKAS ANDREAS', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/67/0221', '67 LUKAS ANDREAS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(72, '443130682', 'M YUSUF RASYID', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/68/0221', '68 M YUSUF RASYID.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(73, '424596522', 'MAFUD MARSAOLY', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/69/0221', '69 MAHFUD MARSAOLI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(74, '429212122', 'MANSUR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/70/0221', '70 MANSUR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(75, '428630058', 'MASDAR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/71/0221', '71 MASDAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(76, '443297818', 'MUCHLISIN ASJNAWI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/72/0221', '72 MUCHLISIN ASJNAWI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(77, '443506138', 'MUSTARI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/73/0221', '73 MUSTARI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(78, '1269029943', 'NATANAEL H. B. PASARIBU', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/74/0221', '74 NATANAEL H. B..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(79, '443649626', 'NOVA RINA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/75/0221', '75 NOVA RINA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(80, '444191754', 'NURBAITI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/76/0221', '76 NURBIATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(81, '1268109383', 'OKTAVIANUS LAGONDA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/77/0221', '77 OKTAVIANUS L.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(82, '424479306', 'BUDI SETIAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/78/0221', '78 BUDI SETIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(83, '1268400183', 'SUMARNO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/79/0221', '79 SUMARNO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(84, '1251366263', 'PONIRAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/80/0221', '80 PONIRAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(85, '443590362', 'PUTRI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/81/0221', '81 PUTRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(86, '1250924359', 'RAHMAT RAMDANI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/82/0221', '82 RAHMAT RAMADHANI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(87, '443756906', 'RAMLI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/83/0221', '83 RAMLI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(88, '443171658', 'RINO JUNAIDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/84/0221', '84 RINO JUNAIDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(89, '428927034', 'RIZLAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/85/0221', '85 RIZLAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(90, '1251452055', 'ROBY DOWANSIBA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/86/0221', '86 ROBY DOWANSIBA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(91, '1268091159', 'RONY TANDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/87/0221', '87 RONY TANDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(92, '429251626', 'SAMAMI HUSADA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/88/0221', '88 SUMAMI HUSADA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(93, '429137802', 'SAMSUL ALAM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/89/0221', '89 SAMSUL ALAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(94, '1251153223', 'SAPRIANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/90/0221', '90 SAPRIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(95, '429043338', 'SARDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/91/0221', '91 SARDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(96, '1251976775', 'SRI AGUNG SUKARNO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/92/0221', '92 SRI AGUNG SUKARA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(97, '443015594', 'SUTRISNO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/93/0221', '93 SUTRISNO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(98, '443034314', 'SUWARDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/94/0221', '94 SUWARDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(99, '442914058', 'SYARIFUDIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/95/0221', '95 SYARIFUDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(100, '424412538', 'TASLIM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/96/0221', '96 TASLIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(101, '443675674', 'TAUFIQ', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/97/0221', '97 TAUFIQ.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(102, '425386362', 'TIMBUL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/98/0221', '98 TIMBUL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(103, '429364330', 'TITUS SULLE SAMPE', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/99/0221', '99 TITUS SULLE SAMPE.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(104, '441995786', 'VITA LEWU', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/100/0221', '100 VITA LEWU.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(105, '1250881719', 'WAHYU ROMADHONI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/101/0221', '101 WAHYU ROMADHONI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(106, '429163626', 'WAWAN HERMAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/102/0221', '102 WAWAN HERMAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(107, '424426794', 'YAN PONG DATU', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/103/0221', '103 YAN PONG DATU.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(108, '425000746', 'YULIANUS HADI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/104/0221', '104 YULIANUS HADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(109, '429166506', 'ZAINUDDIN SALEH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/105/0221', '105 ZAINUDDIN SALEH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(111, '428759722', 'ARYO WRATSONGKO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/107/0221', '107 ARYO WRATSONGKO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(112, '424360362', 'IKBAL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/108/0221', '108 IKBAL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(113, '424489754', 'MAXIEMILIAAN ROTINSULU', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/109/0221', '109 MAXIEMILIAAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(114, '424512874', 'BRAM MAMBRASAR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/110/0221', '110 BRAM MAMBRASAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(115, '443012218', 'HASNA TUTI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/111/0221', '111 HASNA TUTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(116, '424949850', 'MOH. AGUS SETIAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/112/0221', '112 M AGUS SETIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(117, '424300154', 'NUR KASIM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/113/0221', '113 NUR KASIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(118, '424419706', 'RAMSON S', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/114/0221', '114 RAMSON S.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(119, '425293962', 'SULAIMAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/115/0221', '115 SULAIMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(120, '443281322', 'WAHYUDI ABK', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/116/0221', '116 WAHYUDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(121, '1250970663', 'WICAKSONO DIMAS', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/117/0221', '117 WICAKSONO DIMAS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(122, '424897626', 'YUDHISTIRA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/118/0221', '118 YUDISTIRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(123, '424248714', 'NAHARUDIN', '0', '1', '0', '0', '0', '0', '1', 'PT. GSL', 'ISPS/B73/421', '1. NAHARUDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(124, '424869018', 'WIBOWO HARTONO', '0', '1', '0', '0', '0', '0', '1', 'PT. GSL', 'ISPS/B74/421', '2. WIBOWO HARTANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(125, '428276218', 'RIKI SUPRIYANTO', '1', '0', '0', '1', '1', '0', '1', 'PT. PELAYARAN M.R', 'ISPS/B91/421', '1. RIKI SUPRIYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(126, '443492602', 'ANDRIANSYAH', '0', '1', '0', '0', '0', '0', '1', 'PT. RARA DUTA A.B', 'ISPS/B92/421', '1. ANDRIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(127, '424394922', 'MANSUR', '0', '1', '0', '0', '0', '0', '1', 'PT. BAG', 'ISPS/B28/421', '', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(128, '1252043927', 'HAIRUDIN', '0', '1', '0', '0', '0', '0', '1', 'PT. BAG', 'ISPS/B32/421', '28 HAIRUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(129, '443563930', 'MUH FADLY H.', '0', '1', '0', '0', '0', '0', '1', 'PT. BAG', 'ISPS/B33/421', '29 MUH FADLY HAMZAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(130, '429169722', 'MUH ARIEF', '0', '1', '0', '0', '0', '0', '1', 'PT. BAG', 'ISPS/B34/421', '30 MUHAMMAD ARIEF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(131, '443306250', 'REYNALDI F.', '0', '1', '0', '0', '0', '0', '1', 'PT. BAG', 'ISPS/B35/421', '31 REYNALDI F.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(132, '1269035335', 'M. ARIF GF', '0', '1', '0', '0', '0', '0', '1', 'PT. BAG', 'ISPS/B36/421', '32.M.ARIF GF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(133, '424385946', 'ZAINAL', '1', '1', '0', '0', '0', '0', '1', 'PT. ZBS', 'ISPS/B68/421', '64. ZAINAL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(134, '424973114', 'M. BUSRAM M', '1', '1', '0', '0', '0', '0', '1', 'PT. ZBS', 'ISPS/B69/421', '65. M. BUSRAM M.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(135, '444206074', 'DARMANSYAH', '1', '1', '0', '0', '0', '0', '1', 'PT. ZBS', 'ISPS/B96/521', '3. DARMANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(136, '443572618', 'ALOYSIUS HARTANTO', '1', '1', '0', '0', '0', '0', '1', 'PT. MITRA BARUNA N', 'ISPS/B96/521', '1. ALOYSIUS HARTANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(137, '443382730', 'NONA RORING', '1', '1', '0', '0', '0', '0', '1', 'PT.ALATAS', 'ISPS/B44/421', '40. NONA RORING.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(138, '443513226', 'HENDRI PASARIBU', '1', '1', '1', '0', '0', '0', '1', 'PT.ALATAS', 'ISPS/B45/421', '41. HENDRI PASARIBU.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(139, '444202058', 'ZANDRA PIKA', '1', '1', '1', '0', '0', '0', '1', 'PT. SPARTA S.S', 'ISPS/B41/421', '37. ZANDRA PIKA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(140, '443114202', 'ANDI SUWARJO', '1', '1', '1', '0', '0', '0', '1', 'PT. SPARTA S.S', 'ISPS/B42/421', '38. ANDI SUJARWO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(141, '380004762', 'AGUS SAIRI', '1', '1', '1', '0', '0', '0', '1', 'PT. SPARTA S.S', 'ISPS/B43/421', '39. AGUS SAIRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(142, '424574906', 'ARIEF SETIAWAN ', '1', '1', '0', '0', '0', '0', '1', 'PT. SPARTA S.S', 'ISPS/B50/421', '46 ARIEF SETIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(143, '424491754', 'AGUNG PRASTIONO', '1', '1', '0', '0', '0', '0', '1', 'PT. SPARTA S.S', 'ISPS/B51/421', '47 AGUNG PRASTIONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(144, '1251658279', 'JUWADI M.', '0', '1', '0', '0', '0', '0', '1', 'PT. TIRTA S.C', 'ISPS/B37/421 ', '33 JUWADI MAHENDRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(145, '429494538', 'HUSNI IBRAHIM', '0', '1', '0', '0', '0', '0', '1', 'PT. TIRTA S.C', 'ISPS/B38/421', '34 HUSNI IBRAHIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(146, '429078586', 'ARNOLD T.', '0', '1', '0', '0', '0', '0', '1', 'PT. TIRTA S.C', 'ISPS/B39/421', '35 ARNOLD TAMBUWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(147, '424803706', 'YUNUS DWI N.', '0', '1', '0', '0', '0', '0', '1', 'PT. TIRTA S.C', 'ISPS/B40/421', '36 YUNUS DWI NURCAHYO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(148, '443449130', 'HUSYANI', '1', '1', '1', '0', '0', '0', '1', 'PT. KARANA LINE', 'ISPS/B30/421', '26 HUSYAINI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(149, '443219258', 'WAWAN H.', '0', '1', '0', '0', '0', '0', '1', 'PT. KARANA LINE', 'ISPS/B31/421', '27 WAWAN HERMAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(150, '1268891959', 'NURMA', '1', '1', '1', '0', '0', '0', '1', 'PT. BAHARI EKA N.', 'ISPS/B29/421', '25 NURMA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(153, '424461866', 'SUMANTO,SE', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D2/221', '02 SUMANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(154, '424301146', 'CECEP GIAN S,SE', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D3/221', '03 CECEP GIAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(155, '1251582967', 'TEGUH WIRAWAN,Amd', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D4/221', '04 TEGUH WIRAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(156, '425458218', 'ABIDIN', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D5/221', '05 ABIDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(157, '428480058', 'NOVI KURNIAWAN', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D6/221', '06 NOVI KURNIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(158, '443412202', 'YUSUF Amd', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D7/221', '07 YUSUF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(159, '429025210', 'AMIN MARGO S.', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D8/221', '08 AMIN MARGO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(160, '1251801687', 'ASMA EDY .Spd', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D9/221', '09 ASMA EDY.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(161, '428513514', 'TEGUH HERIYONO, SH', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D10/221', '10 TEGUH HERIYONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(162, '428744682', 'AGUNG P', '1', '1', '0', '1', '0', '0', '1', 'PT. DARMA LAUTAN UTAMA', 'ISPS/0D11/221', '11 AGUNG PURNAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(163, '1268582935', 'SYAKARIAH', '1', '1', '0', '1', '0', '0', '1', 'PT. BARUNA PERSADA', 'ISPS/0D12/221', '12 SYAKARIAH ( PT BARUNA PERSADA).JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(164, '424282378', 'FADLY REGAR', '0', '1', '0', '0', '0', '0', '1', 'PT. SERASI SHIPPING', 'ISPS/0D13/421', '01 EDGAR RIADY LUKAS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(165, '425181482', 'EDGAR RIADY LUKAS', '0', '1', '0', '0', '0', '0', '1', 'PT. SERASI SHIPPING', 'ISPS/0D14/421', '02 FADLY REGAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(166, '428701610', 'SUWARDI', '0', '1', '0', '0', '0', '0', '1', 'PT. PENASCOP MARITIM', 'ISPS/0D15/421', '01 SUWARDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(167, '425106186', 'PONIMAN', '0', '1', '0', '0', '0', '0', '1', 'PT. PENASCOP MARITIM', 'ISPS/0D16/421', '02 PONIMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(168, '425054938', 'FERDIAN', '0', '1', '0', '0', '0', '0', '1', 'PT. PERTAMINA TRANS K.', 'ISPS/0D17/421', '13 FERDIAN PRAYOGO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(169, '424414906', 'RONY SETYAWAN', '0', '1', '0', '0', '0', '0', '1', 'PT. PERTAMINA TRANS K.', 'ISPS/0D18/421', '14 RONY SETYAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(170, '428837402', 'ARI KRISTANTO', '0', '1', '0', '0', '0', '0', '1', 'PT. PERTAMINA TRANS K.', 'ISPS/0D19/421', '15 ARI KRISTANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(171, '425096394', 'DANIEL .D', '0', '1', '0', '0', '0', '0', '1', 'PT. PERTAMINA TRANS K.', 'ISPS/0D20/421', '16 DANIEL. D.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(172, '424771274', 'IBRAHIM SURYA L.A.T', '0', '1', '0', '0', '0', '0', '1', 'PT. PERTAMINA TRANS K.', 'ISPS/0D21/421', '17 IBRAHIM SURYA L.A.T.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(173, '424641418', 'FAJAR SATRIONO', '0', '1', '0', '0', '0', '0', '1', 'PT. BAHARI TIRTA JAYA', 'ISPS/0D22/421', '18 FAJAR SATRIONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(174, '429011370', 'UUN UNAENAH', '0', '1', '0', '0', '0', '0', '1', 'PT. BAHARI TIRTA JAYA', 'ISPS/0D23/421', '19 UUN UNAENAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(175, '428943082', 'FIKRI RAMADHAN', '0', '1', '0', '0', '0', '0', '1', 'PT. BAHARI TIRTA JAYA', 'ISPS/0D24/421', '20 FIKRI RAMADHAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(176, '429111226', 'CANDRA HARIANTO', '0', '1', '0', '0', '0', '0', '1', 'PT.BARUNA NUSANTARA', 'ISPS/0D25/421', '21 CANDRA HARIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(177, '429109610', 'AGUSTINUS ABIMANYU', '0', '1', '0', '0', '0', '0', '1', 'PT.BARUNA NUSANTARA', 'ISPS/0D26/421', '22 AGUSTINUS ABIMANYU.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(178, '424354986', 'LIRANDA DWI A', '1', '1', '1', '1', '1', '1', '1', 'PT. ROSLIRANDA S.A', 'ISPS/B61/421', '57. LIRANDA DWI A.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(179, '443459802', 'TUGIMAN', '0', '1', '0', '0', '0', '0', '1', 'PT.INDO DHARMA TRANSPORT', 'ISPS/B62/421', '58. TUGIMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(180, '424574586', 'UMAR DANIS', '0', '1', '0', '0', '0', '0', '1', 'PT.INDO DHARMA TRANSPORT', 'ISPS/B63/421', '59. UMAR DANIS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(181, '425325354', 'DIMAS ANDIKA S.', '0', '1', '0', '0', '0', '0', '1', 'PT.INDO DHARMA TRANSPORT', 'ISPS/B64/421', '60. DIMAS ANDIKA S..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(182, '424620234', 'DEDEN', '0', '1', '0', '0', '0', '0', '1', 'PT.BULL', 'ISPS/B27/421', '23 DEDEN ARIF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(183, '1251366375', 'YOGIE ESA VIBHUTI', '0', '1', '0', '0', '0', '0', '1', 'PT.BULL', 'ISPS/B46/421', '42.YOGIE ESA VIBHUTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(184, '1251757447', 'HENRY D.', '0', '1', '0', '0', '0', '0', '1', 'PT.BULL', 'ISPS/B47/421', '43.HENRY D..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(185, '429178666', 'SUHEB', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B70/421', '66. SUHEB.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(186, '429239354', 'ROHIN', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B71/421', '67. ROHIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(187, '1268360743', 'H. DARWIN', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B72/421', '68. H. DARWIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(188, '424942746', 'ADI SURENDRO', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B75/421', '71. ADI SURENDRO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(189, '424383482', 'PURWADI', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B76/421', '72. PURWADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(190, '424840938', 'ISMED MULYADI', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B77/421', '73. ISMED MULYADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(191, '424833818', 'M. ESA FAISAL', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B78/421', '74. M. ESA FAISAL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(192, '443584938', 'DIMAS ARIO R.', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B79/421', '75. DIMAS ARIO R..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(193, '425334122', 'ASEP YAYAT HIDAYAT', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B80/421', '76. ASEP YAYAT H..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(194, '443241386', 'M. RUSDIANSYAH', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B81/421', '77. M. RUDIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(195, '443582490', 'IDA BAGUS PUTU', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B82/421', '78. IDA BAGUS PUTU.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(196, '425200634', 'IZWAN SYAH', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B83/421', '79. IZWAN SYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(197, '425497738', 'FIRZAN SEPTIAWAN', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B84/421', '80. FIRZAN SEPTIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(198, '428935306', 'M. ILYAS', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B85/421', '81. M. ILYAS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(199, '425215002', 'RICKY MALBER S.', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B86/421', '82. RICKY MALBER S..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(200, '424799482', 'WIDO PUTRA', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B87/421', '83. WIDO PUTRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(201, '424587226', 'SATRIYAHADI', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B88/421', '84. SATRIYAHADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(202, '424871370', 'ERWIN JULIO K.', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B89/421', '85. ERWIN JULIO K..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(203, '425415898', 'DARMA PUTRA', '1', '1', '0', '0', '0', '0', '1', 'PT. PELNI', 'ISPS/B90/421', '86. DARMA PUTRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(204, '443353690', 'Dr. M. ZAINUL MUKHOROBIN, MMRS', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K1/0221', '01 Dr. M ZAINUL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(205, '1268142567', 'RATNA SARI DEWI, ST., M.KES', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K2/0221', '02 RATNA SARI DEWI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(206, '429109114', 'KRISTANTO SUTOPO, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K3/0221', '03 KRISTANTO SUTOPO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(207, '1268792055', 'NOORYADI SETIAWAN, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K4/0221', '04 NOORYADI SETIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(208, '1268091271', 'RUSLI, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K5/0221', '05 RUSLI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(209, '428314538', 'HARZAN KHAIR', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K6/0221', '06 HARZAN KHAIR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2');
INSERT INTO `products` (`id`, `name`, `fullname`, `area_a`, `area_b`, `area_c`, `area_d`, `area_e`, `area_f`, `area_g`, `instansi`, `no_id`, `image`, `card_status`, `created_at`, `exp_date`, `updated_at`, `no_vaksin_cov`, `dosis_satu_cov`, `dosis_dua_cov`) VALUES
(210, '424866618', 'FRISKA UTAMI, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K7/0221', '07 FRISKA UTAMI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(211, '425485162', 'MASLIANA, S.Sos', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K8/0221', '08 MASLIANA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(212, '424270746', 'WIDJANARKO HADI TJAHJAWAN, SE', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K9/0221', '09 WIDJANARKO HADI TJAHJAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(213, '424813482', 'EDWARD REGOMAL T', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K10/0221', '10 EDWARD REGOMAL T.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(214, '425335194', 'ENI WIJAYANTI, AMF', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K11/0221', '11 ENI WIJAYANTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(215, '424384634', 'ARESTU LAILYA, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K12/0221', '12 ARESTU LAILYA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(216, '429283946', 'DERITA EMA SUSANTI, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K13/0221', '13 DERITA ERMA SUSANTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(217, '424840730', 'FIRMA NAWANG WULAN, SE', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K14/0221', '14 FIRMA NAWANG WULAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(218, '424360490', 'SYUKRIYANI DJUHARI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K15/0221', '15 SYUKRIYANI DJUHARI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(219, '425280234', 'DADDY INSAFI, SE', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K16/0221', '16 DADDY INSAFI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(220, '428416298', 'ERIKA NAZARANI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K17/0221', '17 ERIKA NAZARANI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(221, '425332762', 'SULLI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K18/0221', '18 SULLI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(222, '443451178', 'MUHAMMAD SALAHUDDIN ABDURROHIM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K19/0221', '19 MUHAMMAD SALAHUDDIN ABDURROHIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(223, '425294266', 'dr. EKA RACHMAWATI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K20/0221', '20 Dr. EKA RACHMAWATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(224, '425457018', 'dr. IQBAL MUHAMMAD', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K21/0221', '21 Dr. IQBAL MUHAMMAD.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(225, '443787818', 'ARIANI B TOMBI, S.Si.Apt', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K22/0221', '22 ARIANI B TOMBI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(226, '443789130', 'SUMIYATI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K23/0221', '23 SUMIYATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(227, '1269294103', 'ABDURRAKHMAN, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K24/0221', '24 ABDURRAKHMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(228, '1268797591', 'BUDI HARYADI, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K25/0221', '25 BUDI HARYADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(229, '424815930', 'SUGENG RIYANTO, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K26/0221', '26 SUGENG RIYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(230, '425125802', 'DWI EFFENDI WIJAYANTO, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K27/0221', '27 DWI EFFENDI WIJAYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(231, '442458554', 'OCKTO FRANSISCA SIDABARIBA, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K28/0221', '28 OCKTO FRANSISCA SIDABARIBA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(232, '424625578', 'SAHIBUL FADILLAH', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K29/0221', '29 SAHIBUL FADILLAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(233, '424591802', 'THUKUL PRASIDDHA HANDAYANI, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K30/0221', '30 THUKUL PRASIDDHA HANDAYANI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(234, '424217098', 'SETYOWATI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K31/0221', '31 SETYOWATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(235, '1251549255', 'SRI LENY LISUALLO', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K32/0221', '32 SRI LENY LISUALLO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(236, '424309226', 'HADI WILIANTO', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K33/0221', '33 HADI WILIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(237, '1268507367', 'MAEMUNA, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K34/0221', '34 MAEMUNA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(238, '443304202', 'ICHROMY AKBAR', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K35/0221', '35 ICHROMY AKBAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(239, '425156282', 'FARY MISDINOOR ARIANTO', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K36/0221', '36 FARY MISDINOOR ARIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(240, '424871338', 'WINDA AGUS TRISNAWATI, SKM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K37/0221', '37 WINDA AGUS TRISNAWATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(241, '424815914', 'ASMULIATI, S.Fam', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K38/0221', '38 ASMULIATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(242, '424861994', 'GUNAWAN HARI SUSANTO', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K39/0221', '39 GUNAWAN HARI SUSANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(243, '424432858', 'EDWAN MARYADI', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K40/0221', '40 EDWAN MARYADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(244, '425018714', 'AMURDAR YUSALAM', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K41/0221', '41 AMURDAR YUSALAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(245, '424248666', 'AGUS EKA PUTRA', '1', '1', '1', '1', '1', '1', '1', 'KANTOR KESEHATAN PELABUHAN', 'ISPS/0K42/0221', '42 AGUS EKA PUTRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(246, '444106362', 'ANDREAS PRIYO W', '0', '1', '0', '0', '0', '0', '1', 'PT. WASESA', 'ISPS/B48/421', '44. ANDREAS PRIYO W..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(247, '443220074', 'ANDRIAN DWI F', '0', '1', '0', '0', '0', '0', '1', 'PT. WASESA', 'ISPS/B49/421', '45. ANDRIAN DWI F..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(248, '425100570', 'R.E PEBRI RUSTIAWAN', '1', '1', '1', '0', '0', '0', '1', 'PT. SAMUDRA SHIPPING', 'ISPS/B65/421', '61. R.E PEBRI RUSTIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(249, '428271402', 'ERFANDI', '1', '1', '1', '0', '0', '0', '1', 'PT. SAMUDRA SHIPPING', 'ISPS/B66/421', '62. ERFANDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(250, '429068794', 'MAHDI SANTOSO', '1', '1', '1', '0', '0', '0', '1', 'PT. SAMUDRA SHIPPING', 'ISPS/B67/421', '63. MAHDI SANTOSO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(255, '443554218', 'KEVIN', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B52/421', '48. KEVIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(256, '425198794', 'AGUS', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B53/421', '49. AGUS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(257, '429151658', 'IIN', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B54/421', '50. IIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(258, '425511018', 'JANUAR Y.M.', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B55/421', '51. JANUAR Y.M..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(259, '424768826', 'ILHAM', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B56/421', '52. ILHAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(260, '429372586', 'RODJOSH TOBING', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B57/421', '53. RODJOSH TOBING.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(261, '424262250', 'IBRAM', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B58/421', '54. IBRAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(262, '425492186', 'ROBBY ANUNGRAH A.', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B59/421', '55. ROBBY ANUGRAH A..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(263, '425086474', 'PUTU FIRWANDA S.', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B60/421', '56. PUTU FIRWANDA S..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(264, '429155098', 'RAKHA S.P', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B93/421', '57.RAKHA S.P.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(265, '444125866', 'FERIZAL', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B94/421', '58.FERIZAL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(266, '444046634', 'RIFKY', '1', '1', '1', '1', '1', '1', '1', 'IMIGRASI', 'ISPS/B95/421', '59.RIFKY.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(267, '428475274', 'ASMAR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A01/221', '01 SAMAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(268, '443197754', 'DAHARUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A02/221', '02 DAHRUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(269, '429180506', 'MANSHOR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A03/221', '03 MANSHOR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(270, '429491802', 'RHANDY SETIAWAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A04/221', '04 RHANDY SETIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(271, '444063162', 'KAMARUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A05/221', '05 KAMARUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(272, '428854170', 'ZULKIPLI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A06/221', '06 ZULKIPLI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(273, '429211290', 'ASKA M', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A07/221', '07 ASKA M.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(274, '443005978', 'DADANG GARDIANA', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A08/221', '08 DADANG GARDIANA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(275, '1268387095', 'ASTANG', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A09/221', '09 ASTANG.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(276, '428334570', 'MAHYUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A10/221', '10 MAHYUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(277, '429047402', 'YUDIANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A11/221', '11 YUDIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(278, '428853818', 'AMIR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A12/221', '12 AMIR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(279, '1251765847', 'ABDUL MAJID', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A13/221', '13 ABDUL MAJID.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(280, '443564362', 'PENDI MIRHAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A14/221', '14 PENDI MIRHAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(281, '429129946', 'NUR ALAM', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A15/221', '15 NUR ALAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(282, '1268588663', 'RIYANTO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A16/221', '16 RIYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(284, '1251693223', 'HALIM DG GIO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A18/221', '18 HALIM DG GIO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(285, '429244202', 'JUSMAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A19/221', '19 JUSMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(286, '429533738', 'ABRAHAM', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A20/221', '20 ABRAHAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(287, '1268673671', 'AGUNG MULYADI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A21/221', '21 AGUNG MULYADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(288, '1250936487', 'SUHARTONO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A22/221', '22 SUHARTONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(289, '424448330', 'ABDUL RAHMAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A23/221', '23 ANDUL RAHMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(290, '429041514', 'HERMAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A24/221', '24 HERMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(291, '1251710327', 'AGUS MIFTAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A25/221', '25 AGUS MIFTAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(292, '1251572055', 'YUSTITO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A26/221', '26 YUSTITO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(293, '428620346', 'FEDIE DG KULIE', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A27/221', '27 FEDIE DG KULIE.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(294, '429056106', 'SYARIFUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A28/221', '28 SYARIFUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(295, '1268937671', 'WAWAN IRDIANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A29/221', '29 WAWAN IRDIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(296, '1269193383', 'ABD RAHIM', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A30/221', '30 ABD RAHIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(297, '443215754', 'SYAIFUL', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A31/221', '31 SYAIFUL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(298, '443223818', 'ARIANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A32/221', '32 ARIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(299, '428264730', 'SARTO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A33/221', '33 SARTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(300, '428748586', 'SANDI SANTOMI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A34/221', '34 SANDI SANTOMI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(301, '1251911095', 'MUSTAFA', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A35/221', '35 MUSTAFA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(302, '428744730', 'SUNDONO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A36/221', '36 SUNDONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(303, '428746986', 'NUR ALIM', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A37/221', '37 NUR ALIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(304, '443212122', 'GATOT SUSANTO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A38/221', '38 GATOT SUSANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(305, '1269270103', 'ANDIKA SAPUTRA', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A39/221', '39 ANDIKA SAPUTRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(306, '1251298647', 'SALAMA', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A40/221', '40 SALAMA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(307, '424458090', 'ASMAR ARSYAD', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A41/221', '41 ASMAR ARSYAD.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(308, '429414762', 'ALIBAS ABDULLAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A42/221', '42 ALIBAS ABDULLAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(309, '1269305335', 'FIKRIADI BACHTIAR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A43/221', '43 FIKRIADI BACHTIAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(310, '1250816855', 'IRWANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A44/221', '44 IRWANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(311, '429032746', 'FAISAL DANIEL', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A45/221', '45 FAISAL DANIEL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(312, '443814858', 'ERFANI RAKHMAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A46/221', '46 ERFANI RAKHMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(313, '1251214919', 'ARDHANTO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A47/221', '47 ARDHANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(314, '1251612103', 'NURDIMAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A48/221', '48 NURDIMAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(315, '1268591863', 'AGUS SALIM NUR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A49/221', '49 AGUS SALIM NUR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(316, '425161034', 'IBRAHIM', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A50/221', '50 IBRAHIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(317, '1250999255', 'BACHTIAR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A51/221', '51 BACHTIAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(318, '428816218', 'SYAMSUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A52/221', '52 SYAMSUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(319, '429064442', 'JUFRI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A53/221', '53 JUFRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(320, '428352282', 'DG RUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A54/221', '54 DG RUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(321, '1250718503', 'HAMZAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A55/221', '55 HAMZAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(322, '1250803687', 'SAMUDDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A56/221', '56 SAMUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(323, '1251024391', 'MUSATAFA M', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A57/221', '57 MUSTAFA M.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(324, '1251902423', 'ABDUL ASIS', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A58/221', '58 ABDUL ASIS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(325, '444066202', 'DIDING AHMAD ROYANI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A59/221', '59 DIDING AHMAD ROYANI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(326, '1268609287', 'SANDY RAHMADIANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A60/221', '60 SANDY RAHMADIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(327, '428682298', 'SYAHRONI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A61/221', '61 SYAHRONI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(328, '443316202', 'SYAMSURI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A62/221', '62 SYAMSURI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(329, '428475962', 'M MASLAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A63/221', '63 M MASLAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(330, '429211770', 'SURATNO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A64/221', '64 SURATNO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(331, '424492458', 'M DEDDY HARIANTO S.E', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A65/221', '65 M DEDDY HARIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(332, '429138042', 'MUHAMMAD YASMIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A66/221', '66 M YASMIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(333, '425334714', 'JASRI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A67/221', '67 JASRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(334, '424950650', 'SUGIANTO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A68/221', '68 SUGIANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(338, '428734682', 'RUDIANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A72', '72 RUDIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(339, '424457114', 'WAWAN SETIAWAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A73', '73 WAWAN SETIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(340, '429078714', 'ARSAD', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A74', '74 ARSAD.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(341, '424299082', 'SYAMSUDIN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A75', '75 SYAMSUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(342, '424591610', 'ANDI TRI KURNIAWAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A76', '76 ANDI TRI KURNIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(343, '428313946', 'ANDI KALLO', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A77', '77 ANDI KALO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(344, '429211194', 'LILIK MUHAMMAD RIFA\'I', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A78', '78 LILIK M RIFA\'I.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(345, '428899962', 'ARDI ASMAWAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A79', '79 ARDI ASMAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(346, '424467674', 'RICKY ANDRIAN', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A80', '80 RICKY ANDRIAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(347, '425333562', 'RUSLI NUR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A81', '81 RUSLI NUR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(348, '429414538', 'RIZKY K.', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A82', '82 RIZKY K.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(349, '428361978', 'RANDI APRIANSYAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A83', '83 RANDI APRIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(350, '428324682', 'ASLIANSYAH DJAPAR', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A84', '84 ASLIANSYAH DJAPAR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(351, '429264986', 'RISMAN SIRAIT', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A85', '85 RISMAN SIRAIT.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(352, '424868954', 'NUNUK SUHARTINAH', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A86', '86 NUNUK SUHARTINAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(353, '428746730', 'ERVI ARDIA', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A87', '87 EVI ARDIA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(354, '1269099303', 'NUR SALIM', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A88', '88 NUR SALIM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(355, '1251508871', 'M HUSNI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A89', '89 M HUSNI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(356, '429210330', 'SYARIFUDIN R', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A90', '90 SYARIFUDIN R..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(357, '443297866', 'HASYIM M', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A91', '91 HASYIM M.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(358, '425365354', 'TRISNAWATI', '1', '0', '0', '1', '1', '1', '1', 'APTRINDO', 'ISPS/A92', '84 TRISNAWATI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(361, '428877978', 'ILSI PRASETYANINGSIH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C1/221', '1 ILSI PRASTYANINGSIH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(362, '1269303959', 'M. BAKRY', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C2/221', '2 H BAKRY.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(363, '443055162', 'REZA SAPUTRA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C3/221', '3 REZA SAPUTRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(364, '443799994', 'MUSTARI CV', '1', '1', '1', '1', '1', '1', '1', 'CV.MUTIAH UTAMA', 'ISPS/0C4/221', '04 MUSTARI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(365, '443190250', 'ALIF', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C5/221', '5 ALIF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(366, '429107866', 'ALI BABA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C6/221', '6 ALI BABA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(367, '1251017431', 'FUGER LINDA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C7/221', '7 FUGER LINDA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(368, '428844122', 'PRIYADI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C8/221', '8 PRIYADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(370, '1268386823', 'AHMAD SYAHRUL ( SKM )', '1', '1', '1', '1', '1', '1', '1', 'PT SKM', 'ISPS/C10/221', '10 AHMAD SYAHRUL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(371, '425387466', 'BENY RAHARJA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C11/221', '11 BENNY RAHARJA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(372, '1251326375', 'ASRUL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C12/221', '12 ASRUL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(373, '428868634', 'RESKY AGUS S', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C13/221', '13 RESKU AGUS S.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(374, '427665050', 'AGUS RIYANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C14/221', '14 AGUS RIYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(375, '428328346', 'DJAKA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C15/221', '15 DJAKA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(376, '428999194', 'M. BAKTI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C16/221', '16 M BAKTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(377, '425332826', 'RIDHO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C17/221', '17 RIDHO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(378, '440303642', 'ADE SETIYONO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C18/221', '18 ADE SETIYONO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(379, '424774794', 'NUR HIDAYAT', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C19/221', '19 NUR HIDAYAT.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(380, '425333066', 'HERI KURNIAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C20/221', '20 HERI KURNIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(381, '425291066', 'WIWIN RAMAYANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C21/221', '21 WIWIN RAMAYANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(382, '425139770', 'MANSYUR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C22/221', '22. MANSYUR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(383, '429277354', 'AZIS', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C23/221', '23. AZIS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(384, '424426138', 'BAKRI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C24/221', '24. BAKRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(385, '428748138', 'YULIUS PAKKOMBONG', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C25/221', '25. YULIUS PAKKOMBONG.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(386, '428837690', 'IBNU MULKAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C26/221', '26. IBNU MULKAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(387, '428992826', 'M. ANDRI GUNAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C27/221', '27. M. ANDRI GUNAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(388, '429209642', 'ANDI MALIK MAULANA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C28/221', '28. ANDI MALIK MAULANA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(389, '425424986', 'JEFRICO SETYAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C29/221', '29. JEFRICO SETYAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(390, '424404090', 'FENJI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C30/221', '30. FENJI SETYAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(391, '424378714', 'RADLI K', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C31/221', '31. RADLI K.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(392, '424515898', 'BAMBANG EKO K', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C32/221', '32. BAMBANG EKO K.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(393, '427951690', 'EDI SANTOSO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C33/221', '33. EDI SANTOSO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(394, '429180810', 'RESKY SANJAYA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C34/221', '34. RESKY SANJAYA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(395, '424956554', 'AGUS PURWANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C35/221', '35. AGUS PURWANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(396, '424548010', 'SUHERI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C36/221', '36. SUHERI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(397, '424956602', 'ROBBY GOBEL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C37/221', '37. ROBBY GOBEL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(398, '425033722', 'KADRI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C38/221', '38. KADRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(399, '425198778', 'KASMIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C39/221', '39. KASMIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(400, '443296890', 'ARIEF', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C40/221', '40. ARIEF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(401, '1269365159', 'A. RIZKY .P.', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C41/221', '41. A. RIZKY. P..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(402, '443112378', 'FERRY J.', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C42/221', '42. FERRY J..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(403, '425139882', 'ABDUL GAFFAR RASAURI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C43/221', '43. ABDUL GAFFAR RASAURI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(404, '424759274', 'SURATNO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C44/221', '44. SURATNO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(405, '425470602', 'ABRAHAM MUSTAMU', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C45/221', '45. ABRAHAM MUSTAMU.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(406, '424790890', 'ANWAR LIMPO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C46/221', '46. ANWAR LIMPO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(407, '424387306', 'HERI PURNOMO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C47/221', '47. HERI PURNOMO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(408, '425225498', 'SUWADI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C48/221', '48. SUWADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(409, '425425082', 'IYAI SETIAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C49/221', '49. IYAL SETYAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(410, '424794298', 'M. TAUFAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C50/221', '50. M. TAUFAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(411, '425405482', 'PAOZAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C51/221', '51. PAOZAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(412, '424426682', 'M. SIDIQ', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C52/221', '52. M. SIDIQ.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(413, '424949802', 'M. ADAM', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C53/221', '53. M. ADAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(414, '424970202', 'YANUAR .BJ', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C54/221', '54. YANUAR. BJ.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(415, '425393210', 'IKHWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C55/221', '55. IKHWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(416, '425004698', 'DENI ARI SANDY', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C56/221', '56. DENI ARISANDY.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(417, '429100890', 'REYNANDITO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C57/221', '57. REYNANDITO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(419, '443142682', 'TULUSTIAWAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C59/221', '59. TULUSTIAWAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(420, '443209402', 'ALFIN RAMADHAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C60/221', '60 ALFIN RAMADHAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(421, '429296362', 'TOMI HIDAYAT', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C61/221', '61. TOMI HIDAYAT.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(422, '444202106', 'SYAHRIL SYARIFUDDIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C62/221', '62. SYAHRIL SYARIFUDDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2');
INSERT INTO `products` (`id`, `name`, `fullname`, `area_a`, `area_b`, `area_c`, `area_d`, `area_e`, `area_f`, `area_g`, `instansi`, `no_id`, `image`, `card_status`, `created_at`, `exp_date`, `updated_at`, `no_vaksin_cov`, `dosis_satu_cov`, `dosis_dua_cov`) VALUES
(423, '444090650', 'FAISAL AMRI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C63/221', '63. FAISAL AMIRI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(424, '443303034', 'MAHSUR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C64/221', '64. MASUR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(425, '428447658', 'MUH YUSUF', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C65/221', '65. MUH. YUSUF.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(426, '429115018', 'MUH. GUFRAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C66/221', '66. MUH. GUFRAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(427, '443518730', 'RIAN APRIANSYAH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C67/221', '67. RIAN APRIANSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(428, '443087578', 'IWAYAN SUARTANA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C68/221', '68. IWAYAN SUARTANA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(429, '444104138', 'FRANKLIN ROMPAH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C69/221', '69. FRANKLIN ROMPAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(430, '425298618', 'SUSIRAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C70/221', '70. SUSIRAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(431, '428837130', 'MEDI SUSANTO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C71/221', '71. MEDI SUSANTO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(432, '443765802', 'HEFRIADI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C72/221', '72. HEFRIADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(433, '428275114', 'RAMSYAH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C73/221', '73 RAMSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(434, '443306090', 'ADE RIA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C74/221', '74 ADE RIA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(435, '424759690', 'NURFITA DESYASTUTI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C75/221', '75 NURFITA DESYASTUTI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(436, '428391226', 'SYAHRIAL AFFANDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C76/221', '76 SYAHRIAL AFFANDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(437, '1251462999', 'LISA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C77/221', '77 LISA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(438, '1252016423', 'JUNAIDI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C78/221', '78 JUNAIDI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(439, '425160314', 'YULIUS ', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C79/221', '79 YULIUS.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(440, '424979930', 'ARDILLAH SYAPUTRA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C80/221', '80 ARDILLAH SYAPUTRA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(441, '424227258', 'FAIZAL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C81/221', '81 FAIZAL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(442, '424425738', 'NUR RACHMAN HIDAYAT', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C82/221', '82 NUR RACHMAN H.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(443, '424674154', 'MUDASSIR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C83/221', '83 MUDASSIR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(445, '', '', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C85', '', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(446, '425403466', 'FARIED FAHRIZIL', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C86/221', '86 FARIED FAHRIZIL.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(447, '444219114', 'TEGUH PRIBADI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C87/221', '87 TEGUH PRIBADI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(448, '1268631783', 'EKO DIRHAMSYAH', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C88/221', '88 EKO DIRHAMSYAH.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(449, '429042090', 'EMILIANA R.', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C89/221', '89 EMILIANA R..JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(450, '364908730', 'REZSITA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C90/221', '90 REZSITA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(451, '425111610', 'NOVIANNY THALIA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C91/221', '91 NOVIANNY THALIA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(452, '1268974471', 'AKBAR HASAN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C92/221', '91 SURYA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(453, '425171450', 'SURYA TRINUARI H', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C93/221', '92 AKBAR HASAN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(454, '424307290', 'NASIR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C94/221', '94 NASIR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(455, '424283130', 'RACHMAT ASHARI', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C95/221', '95 RACHMAT ASHARI.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(456, '425110074', 'ANSAR LIMPO', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C96', '96. ANSAR LIMPO.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(457, '424868666', 'NASIR', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C97', '97. NASIR.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(458, '428983178', 'UDIN', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C98', '98. UDIN.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(459, '428716458', 'WAHYU YOGA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/C99', '99.WAHYU YOGA.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(460, '428579114', 'MUH. ILHAM SAPUTRA', '1', '1', '1', '1', '1', '1', '1', 'PT PELINDO IV', 'ISPS/0C100', '100.MUH.ILHAM.JPG', 'SUDAH AMBIL', '2021-08-24 18:48:58', '2021-12-31', '2021-08-24 18:48:58', '3901943321', 'Sudah Dosis 1', 'Sudah Dosis 2'),
(480, '8928924727487823', 'erik terbaru bosss', '1', '0', '0', '0', '0', '0', '0', 'PT. PELINDO IV', '8193782174822438', '20211208080742.png', 'BELUM AMBIL', '2021-12-08 00:07:42', '2021-12-31', '2021-12-08 00:07:42', NULL, '0', '0'),
(483, 'https://www.youtube.com/watch?v=zeYOs-B5vhE', 'tester', '1', '0', '0', '0', '0', '0', '0', 'PT. PELINDO IV', '00091922332', '20211208091523.png', 'BELUM AMBIL', '2021-12-08 01:15:23', '2021-12-31', '2021-12-08 01:15:23', NULL, '0', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('I4APjimj8gVDTfEt1t7f1nrRPgwtum92IzcvZr2c', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoib291eWNxcGN3ZUJWbUJrMUVseUtuTXBwUXcyMFJ0VXNzZVVaSmVhaSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvc2Nhbj9hcmVhX2lkPWFyZWFfYyZ0ZXJtPWl3YW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkLnFob1lzb0lRLlRSN2tqQmtsaGhjLkYyVkxMSTAuaThxQ3l3LlJMUlR0RTV0bTZkOFRDcE8iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJC5xaG9Zc29JUS5UUjdrakJrbGhoYy5GMlZMTEkwLmk4cUN5dy5STFJUdEU1dG02ZDhUQ3BPIjt9', 1638955232);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_level` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `user_level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(8, 'testing', 'testing@testing.com', NULL, '$2y$10$.qhoYsoIQ.TR7kjBklhhc.F2VLLI0.i8qCyw.RLRTtE5tm6d8TCpO', 'admin', NULL, NULL, NULL, NULL, NULL, '2021-08-22 21:42:04', '2021-08-22 21:42:04'),
(10, 'testing3', 'testing3@testing.com', NULL, '$2y$10$VRKSyykKAUYYceAqDWXLNewd2yFbLGjsZO3XUoxGlKKy9j5j.of5K', 'user', NULL, NULL, NULL, NULL, NULL, '2021-08-22 21:43:55', '2021-08-22 21:43:55'),
(12, 'Eko Setio W', 'ekosetio14@gmail.com', NULL, '$2y$10$/6SWF.xWO3X5RH7jsJZWdesKujKrC/DuqE4kMYmaNo2DA27zYYp8m', 'admin', NULL, NULL, NULL, NULL, NULL, '2021-12-01 23:16:21', '2021-12-01 23:16:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `historykeeper`
--
ALTER TABLE `historykeeper`
  ADD PRIMARY KEY (`id_data`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `historykeeper`
--
ALTER TABLE `historykeeper`
  MODIFY `id_data` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
