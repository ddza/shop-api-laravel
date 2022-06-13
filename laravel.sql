-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 01:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `men_collection`
--

CREATE TABLE `men_collection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `men_collection`
--

INSERT INTO `men_collection` (`id`, `name`, `img_url`, `price`) VALUES
(1, 'Camo Down Vest', 'https://i.ibb.co/xJS0T3Y/camo-vest.png', '325.00'),
(16, 'Floral T-shirt', 'https://i.ibb.co/qMQ75QZ/floral-shirt.png', '20.00'),
(17, 'Black & White Longsleeve', 'https://i.ibb.co/55z32tw/long-sleeve.png', '25.00'),
(18, 'Pink T-shirt', 'https://i.ibb.co/RvwnBL8/pink-shirt.png', '25.00'),
(19, 'Jean Long Sleeve', 'https://i.ibb.co/VpW4x5t/roll-up-jean-shirt.png', '40.00'),
(20, 'Burgundy T-shirt', 'https://i.ibb.co/mh3VM1f/polka-dot-shirt.png', '25.00'),
(21, 'Black Jean Shearling', 'https://i.ibb.co/XzcwL5s/black-shearling.png', '125.00'),
(22, 'Blue Jean Jacket', 'https://i.ibb.co/mJS6vz0/blue-jean-jacket.png', '90.00'),
(23, 'Brown Shearling', 'https://i.ibb.co/s96FpdP/brown-shearling.png', '165.00'),
(24, 'Timberlands', 'https://i.ibb.co/Mhh6wBg/timberlands.png', '200.00'),
(25, 'Air Jordan Limited', 'https://i.ibb.co/w4k6Ws9/nike-funky.png', '190.00'),
(26, 'Nike Brown High Tops', 'https://i.ibb.co/fMTV342/nike-brown.png', '160.00'),
(27, 'Nike Red High Tops', 'https://i.ibb.co/QcvzydB/nikes-red.png', '160.00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_26_142348_create_collection_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test1@gmail.com', '$2y$10$Wvs75G/YAe/l5vCnPV4YJ.3jcQHLLGiMBwnKAJHAmZ1JaLTfCxD.W', '2022-05-08 12:35:23'),
('test3@gmail.com', '$2y$10$eNlZp5eAZoPoF5rnN1KIIekjrKKIROo5MecMPQvWlyMfTL6mxkEP6', '2022-05-14 11:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 6, 'apptoken', '2f5586f5030034395f6b45f80b1951500315cab8d19e3d0d0236bdb349327499', '[\"*\"]', NULL, '2022-04-02 09:52:24', '2022-04-02 09:52:24'),
(27, 'App\\Models\\User', 8, 'apptoken', 'e91f34c93d5603a90d04140a819ca037f6c5af8b413c196664e9610118bb33b0', '[\"*\"]', NULL, '2022-04-03 10:56:05', '2022-04-03 10:56:05'),
(28, 'App\\Models\\User', 9, 'apptoken', '08cab9314ed2b67c0a3be03f9bc3ef83f633f742fca818c648acbdab6beceef8', '[\"*\"]', NULL, '2022-04-03 11:20:33', '2022-04-03 11:20:33'),
(60, 'App\\Models\\User', 10, 'apptoken', 'ad987b62721cb2dd23f619cec496689d5b19d307bec275a8277692a25160d203', '[\"*\"]', NULL, '2022-04-09 06:46:53', '2022-04-09 06:46:53'),
(71, 'App\\Models\\User', 12, 'apptoken', '8b5ccbef71ba3438d92ba3e218e8c5406f63fa2fa666baf819099b5fe711aaab', '[\"*\"]', NULL, '2022-04-09 12:52:55', '2022-04-09 12:52:55'),
(72, 'App\\Models\\User', 13, 'apptoken', 'e21864a40e1ef47c57e6b98f52226013b9ad058eab251877ed5d80619d02543d', '[\"*\"]', NULL, '2022-04-09 12:53:52', '2022-04-09 12:53:52'),
(74, 'App\\Models\\User', 14, 'apptoken', 'cf3ae6d39cc68ae0c0519bef31acda7a0e232b958d2b925683bdd0cab073ebb5', '[\"*\"]', NULL, '2022-04-10 07:49:07', '2022-04-10 07:49:07'),
(113, 'App\\Models\\User', 16, 'apptoken', '330c1eaabd7ec65feb2113c7990532f4f3e94c0da65ab5816dfdf9fcd092793f', '[\"*\"]', NULL, '2022-04-30 13:57:41', '2022-04-30 13:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'test1', 'test1@gmail.com', NULL, '$2y$10$DZfEIoTm1nyzEHq4n3x9aeJ/bKdfxIi8f/YFfXMNGwLOdTtFCJ402', NULL, '2022-03-27 09:33:52', '2022-03-27 09:33:52'),
(6, 'test1', 'test2@gmail.com', NULL, '$2y$10$4Bs9eTevdgQgNUnyTtVNquZHKZepX/JYG3jUZ5q2QDD8qdraQM6EC', NULL, '2022-04-02 09:52:24', '2022-04-02 09:52:24'),
(7, 'test1', 'test3@gmail.com', NULL, '$2y$10$0d9pFuXuQDmY.Gs4qgypgevZrPPXh9RdylvcVNpTmwxqWdnSs7I36', '1NIlhyTyueASyrX4klwKXEd72B5HkCD4eylkOyEiLj167Etf8g0JWlSEu546', '2022-04-03 10:51:22', '2022-05-08 13:11:43'),
(8, 'a@a.com', 'a@a.com', NULL, '$2y$10$6jSoVtClHvX92.vNfvC.EepcOR.rbXnN7EfAOMmOsYaeplFQWsQZG', NULL, '2022-04-03 10:56:05', '2022-04-03 10:56:05'),
(9, 's@gmai.com', 's@gmai.com', NULL, '$2y$10$vugtOuGigH7DYgYjozIx9uMxWQeAThf.ulCsdEtrbZIyploNMQTke', NULL, '2022-04-03 11:20:33', '2022-04-03 11:20:33'),
(10, 'da', 'da@gamil.com', NULL, '$2y$10$MxwlRqE/772g10vTX6b08OkaAUJuXZJ5w2DkNIPJw1PRSkTNB8kPu', NULL, '2022-04-09 06:46:15', '2022-04-09 06:46:15'),
(11, 'dar', 'dar@gmail.com', NULL, '$2y$10$gTiMAm62A93Dt28/YJh9K.co/IPZ2xPlcSVPdOaH4jHndHtMbE23i', NULL, '2022-04-09 07:45:47', '2022-04-09 07:45:47'),
(12, 'szc', 'sdc@asf.com', NULL, '$2y$10$6L3B/q1QSTOt/hGGqGzQmerZj54Nd9Pkzbh4Z0AFe7mtcfgSN4nsK', NULL, '2022-04-09 12:52:55', '2022-04-09 12:52:55'),
(13, 'sa', 'sa@gmail.com', NULL, '$2y$10$z/nIFge6CQAgvUoxLsjOsOzUFLxHWtbElY55YgfKkclQEXJegfcey', NULL, '2022-04-09 12:53:52', '2022-04-09 12:53:52'),
(14, 'test3', 'test@gmail.com', NULL, '$2y$10$Wfu2dGkeFb3tnaKaSHEgouv9bohe5zqB1caoSxqc5LQHLp1EtGKwS', NULL, '2022-04-10 07:49:07', '2022-04-10 07:49:07'),
(15, 'tr', 'tr@gmail.com', NULL, '$2y$10$sGBizkheZQiAjE/sayxI7.rtyFbtk7BpP1p4LUTRZzCx02Lv3lboa', NULL, '2022-04-10 10:54:38', '2022-04-10 10:54:38'),
(16, 'fe', 'fe@gamil.com', NULL, '$2y$10$saRA7IaEUTuxocQMmNKOIuDB0FZCH3Te5V6zHKwEJAx5JQd7Ku7hO', NULL, '2022-04-30 13:57:41', '2022-04-30 13:57:41'),
(17, 'test5', 'test5@gmail.com', NULL, '$2y$10$2O/CXMs4n5k/SzWF/bg0re676WCzy3INtMN6R.D/OKjN.8F7p.7HS', '2Lj3TqvSrt0Oo09M7dFtSGZfWbgoMx1UnVlWvSOhityHsYnNgwhVhe0SBqiU', '2022-05-14 08:33:38', '2022-05-14 14:37:04'),
(18, 't', 't@gmail.com', NULL, '$2y$10$HT5suaVuUhZvt.acW26/HeftrhQde/b674C7ZDHwB/jK8K2Ekzt8G', NULL, '2022-05-14 08:57:58', '2022-05-14 08:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `women_collection`
--

CREATE TABLE `women_collection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `women_collection`
--

INSERT INTO `women_collection` (`id`, `name`, `img_url`, `price`) VALUES
(1, 'Blue Tanktop', 'https://i.ibb.co/7CQVJNm/blue-tank.png', '25.00'),
(3, 'Floral Blouse', 'https://i.ibb.co/4W2DGKm/floral-blouse.png', '20.00'),
(4, 'Floral Dress', 'https://i.ibb.co/KV18Ysr/floral-skirt.png', '80.00'),
(5, 'Red Dots Dress', 'https://i.ibb.co/N3BN1bh/red-polka-dot-dress.png', '80.00'),
(6, 'Striped Sweater', 'https://i.ibb.co/KmSkMbH/striped-sweater.png', '45.00'),
(7, 'Yellow Track Suit', 'https://i.ibb.co/v1cvwNf/yellow-track-suit.png', '135.00'),
(8, 'White Blouse', 'https://i.ibb.co/qBcrsJg/white-vest.png', '20.00'),
(9, 'Brown Brim', 'https://i.ibb.co/ZYW3VTp/brown-brim.png', '25.00'),
(10, 'Blue Beanie', 'https://i.ibb.co/ypkgK0X/blue-beanie.png', '18.00'),
(11, 'Green Beanie', 'https://i.ibb.co/YTjW3vF/green-beanie.png', '18.00'),
(12, 'Red Beanie', 'https://i.ibb.co/bLB646Z/red-beanie.png', '18.00'),
(13, 'Blue Snapback', 'https://i.ibb.co/X2VJP2W/blue-snapback.png', '16.00'),
(14, 'Basic Tee', 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-01.jpg', '35.00'),
(15, 'Basic Tee', 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-02.jpg', '25.00'),
(16, 'Basic Tee', 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-03.jpg', '30.00'),
(17, 'Basic Tee', 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-04.jpg', '30.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `men_collection`
--
ALTER TABLE `men_collection`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `women_collection`
--
ALTER TABLE `women_collection`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `men_collection`
--
ALTER TABLE `men_collection`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `women_collection`
--
ALTER TABLE `women_collection`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
