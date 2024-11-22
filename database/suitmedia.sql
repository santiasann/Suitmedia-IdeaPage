-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2024 pada 11.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suitmedia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `image_path`, `title`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'banner.jpg', 'Ideas', 'Where All Our Great Things Begin', '2022-10-19 17:00:00', '2022-10-19 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(5, '2024_11_21_225708_create_banner_table', 1),
(11, '2024_11_21_230319_create_post_table', 2),
(13, '2014_10_12_000000_create_users_table', 3),
(14, '2014_10_12_100000_create_password_reset_tokens_table', 3),
(15, '2019_08_19_000000_create_failed_jobs_table', 3),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(17, '2024_11_22_083648_create_banners_table', 3),
(18, '2024_11_22_084613_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image_path`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(2, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(3, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(4, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(5, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(6, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(7, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(8, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(9, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(10, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(11, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(12, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(13, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(14, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27'),
(15, 'img1.jpg', 'Kenali Tingkat Influencer Berdasarkan Jumlah Followers', 'content', '2022-11-23 08:41:27', '2023-11-23 08:41:27'),
(16, 'img2.jpg', 'Jangan Asal Pilih Influencer, Berikut Cara Menyusun Strategi Influencer', 'content', '2023-11-25 08:41:27', '2023-11-25 08:41:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
