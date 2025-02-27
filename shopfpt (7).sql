-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 04:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopfpt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `confirm` enum('No','Yes') NOT NULL DEFAULT 'No',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `vendor_id`, `mobile`, `email`, `password`, `image`, `confirm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Huy Super', 'admin', 0, '0398730223', 'admin@admin.com', '$2y$10$XndLSQL9.tpS90I51LcY5eFvN1ey/f1sgNGGVLn89cPyKfmVedl9e', '32965.png', 'No', 1, NULL, '2023-09-11 20:48:31'),
(2, 'Huy Đẹp Traii', 'vendor', 1, '0398730223', 'huy@admin.com', '$2a$12$V.MbvuKSWpgtyrfZ3Pdb0.x3exI/h2OtrRcFjOhwiGKRmQPgJu0J2', '84111.jpg', 'No', 1, NULL, '2023-10-17 09:33:08'),
(15, 'Testvendor', 'vendor', 17, '0932989898', 'vendor1@vendor.com', '$2y$10$azhuFI97VFk88B2f3RgF9OS5gC1dEjkkHK0j1k4rVDIYHdqkLvjuK', '', 'No', 1, '2023-09-16 02:39:57', '2023-10-17 09:33:14'),
(16, 'vendor1', 'vendor', 18, '03987222', 'vendor1@gmail.com', '$2y$10$lnXt8XR9UQAkdK6PZgFOVeIwim1tPA97M8f017fkzRmqNFtJz6XRm', NULL, 'No', 1, '2024-02-29 05:41:01', '2024-02-29 05:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `type`, `link`, `title`, `alt`, `status`, `created_at`, `updated_at`) VALUES
(1, '67179.jpg', 'Slider', 'spring1-collection', 'Spring1', 'Spring1', 1, NULL, '2025-01-05 00:04:38'),
(2, '70865.jpg', 'Slider', 'spring2-collection', 'Spring2', 'Spring2', 1, NULL, '2025-01-05 00:04:55'),
(3, '76165.jpg', 'Slider', 'spring3-collection', 'Spring332', 'Spring3', 1, NULL, '2025-01-05 00:05:10'),
(8, '52096.jpg', 'Fix', 'haha', 'haha', 'haha', 1, '2023-09-12 19:27:59', '2025-01-05 00:05:49'),
(9, '41079.webp', 'Fix', 'haha', 'haha', 'haha', 1, '2023-09-12 19:28:38', '2023-09-12 19:28:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arrow', 1, NULL, NULL),
(2, 'Samsung', 1, NULL, NULL),
(3, 'Apple', 1, NULL, NULL),
(4, 'Lenovo', 1, NULL, NULL),
(5, 'Asus', 1, NULL, NULL),
(6, 'Acer', 1, NULL, '2023-09-09 15:22:47'),
(8, 'MI', 1, '2023-09-09 15:28:20', '2023-09-09 16:08:08'),
(14, 'Oppo', 1, '2023-10-08 10:28:46', '2023-10-08 10:28:46'),
(15, 'huy', 1, '2025-01-08 13:28:11', '2025-01-08 13:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(27, 'a781473d72b5f5ee1d75c7171447e635', 0, 23, '128GB', 1, '2023-10-18 01:04:34', '2023-10-18 01:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_image` varchar(255) DEFAULT NULL,
  `category_discount` float DEFAULT 0,
  `description` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(16, 0, 1, 'Apple', '', 0, NULL, 'Apple', 'apple', 'apple', 'apple', 1, '2023-10-08 10:08:14', '2023-10-08 10:09:10'),
(17, 0, 1, 'Samsung', '', 0, 'Samsung', 'Samsung', 'Samsung', 'Samsung', 'Samsung', 1, '2023-10-08 10:08:56', '2023-10-08 10:08:56'),
(18, 0, 1, 'Oppo', '', 0, 'Oppo', 'Oppo', 'Oppo', 'Oppo', 'Oppo', 1, '2023-10-08 10:09:30', '2023-10-08 10:09:30'),
(19, 0, 7, 'Lenovo', '', 0, 'Lenovo', 'Lenovo', 'Lenovo', 'Lenovo', 'Lenovo', 1, '2023-10-08 10:10:38', '2023-10-08 10:10:38'),
(20, 0, 7, 'Dell', '', 0, 'Dell', 'Dell', 'Dell', 'Dell', 'Dell', 1, '2023-10-08 10:10:56', '2023-10-08 10:10:56'),
(21, 0, 7, 'Asus', '', 0, 'Asus', 'Asus', 'Asus', 'Asus', 'Asus', 1, '2023-10-08 10:11:22', '2023-10-08 10:11:22'),
(22, 0, 8, 'Coolpad', '', 0, 'Coolpad', 'Coolpad', 'Coolpad', 'Coolpad', 'Coolpad', 1, '2023-10-08 10:12:08', '2023-10-08 10:12:08'),
(23, 0, 8, 'Apple', '', 0, NULL, 'Apple', 'Apple', 'Apple', 'Apple', 1, '2023-10-08 10:13:17', '2023-10-08 10:13:17'),
(24, 0, 8, 'Xiaomi', '', 0, 'Xiaomi', 'Xiaomi', 'Xiaomi', 'Xiaomi', 'Xiaomi', 1, '2023-10-08 10:14:54', '2023-10-08 10:14:54'),
(25, 0, 12, 'Havit', '', 0, 'Havit', 'Havit', 'Havit', 'Havit', 'Havit', 1, '2023-10-08 10:16:00', '2023-10-08 10:16:00'),
(26, 0, 12, 'ProOne', '', 0, 'ProOne', 'ProOne', 'ProOne', 'ProOne', 'ProOne', 1, '2023-10-08 10:16:19', '2023-10-08 10:16:19'),
(27, 0, 12, 'Airpod', '', 0, 'Airpod', 'Airpod', 'Airpod', 'Airpod', 'Airpod', 1, '2023-10-08 10:17:39', '2023-10-08 10:17:39'),
(28, 0, 15, 'Samsung', '', 0, 'Samsung', 'Samsung', 'Samsung', 'Samsung', 'Samsung', 1, '2023-10-08 10:18:22', '2023-10-08 10:18:22'),
(29, 0, 15, 'Apple Watch', '', 0, 'Apple Watch', 'Apple Watch', 'Apple Watch', 'Apple Watch', 'Apple Watch', 1, '2023-10-08 10:18:48', '2023-10-08 10:18:48'),
(30, 0, 15, 'Rolex', '', 0, 'Rolex', 'Rolex', 'Rolex', 'Rolex', 'Rolex', 1, '2023-10-08 10:19:17', '2023-10-08 10:19:17'),
(31, 0, 16, 'Gaming', '', 10, 'aa', 'aasa', 'aaa', 'sâsas', 'asas', 1, '2023-10-17 09:34:28', '2023-10-17 09:34:28'),
(32, 0, 1, 'Iphone', '19439.jpg', 10, 'asas', 'assaa', 'asasa', 'asas', 'assaa', 1, '2023-11-08 17:57:44', '2023-11-08 17:57:44'),
(33, 0, 17, 'loa nhỏ', '52511.jpg', 12, 'sss', 'sss', 'sss', 'sss', 'ss', 1, '2024-05-22 19:49:28', '2024-05-22 19:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `coupon_option` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `categories` text NOT NULL,
  `brands` text NOT NULL,
  `users` text NOT NULL,
  `coupon_type` varchar(255) NOT NULL,
  `amount_type` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `vendor_id`, `coupon_option`, `coupon_code`, `categories`, `brands`, `users`, `coupon_type`, `amount_type`, `amount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(3, 0, 'Automatic', '27ohqQP2', '1,13,15,2,3,6,7,8,14', '1,2', 'user1@test.com,test1@test.com,test3@test.com', 'Multiple Times', 'Percentage', 15.00, '2023-09-30', 1, '2023-09-21 15:05:09', '2023-09-21 18:25:47'),
(4, 0, 'Manual', 'conchongu', '13,15,7,8,14', '1,2,3', 'test1@test.com,test3@test.com', 'Single Time', 'Fixed', 10000.00, '2023-09-30', 1, '2023-09-21 15:06:23', '2023-09-21 18:57:22'),
(7, 0, 'Manual', 'test', '1,13,15,7,8', '1,2', 'user1@test.com,test1@test.com,test3@test.com', 'Multiple Times', 'Percentage', 90.00, '2023-09-30', 1, '2023-09-21 17:45:25', '2023-09-21 18:56:31'),
(8, 17, 'Automatic', 'OMJ9bjRs', '1,13,15', '1,3', 'user1@test.com,test1@test.com', 'Multiple Times', 'Percentage', 10.00, '2023-09-30', 1, '2023-09-21 17:46:31', '2023-09-21 18:13:11'),
(9, 0, 'Automatic', 'l1H6t05O', '31', '2', 'test3@test.com', 'Multiple Times', 'Percentage', 50.00, '2023-10-28', 1, '2023-10-17 09:36:53', '2023-10-17 09:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `zipcode`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(2, 20, 'Huy Hoang', '755-cmt', 'HN', 'Thuong Tin', 'Viet Nam', '99655', '909999998922', 1, NULL, '2023-09-30 08:28:09'),
(5, 20, 'Minh', '755-nk', 'Hổ Chí Minh c', 'Gò Vấp', 'Vietnam', '71409', '0398730224', 1, '2023-10-17 09:28:43', '2023-10-17 09:28:43'),
(6, 20, 'aa', 'aa', 'aaaaaaaa', 'aaa', 'aaaaa', '1222', '12121', 1, '2024-05-22 19:55:45', '2024-05-22 19:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_30_220133_create_vendors_table', 2),
(7, '2023_08_30_221455_create_admins_table', 3),
(8, '2023_09_04_195148_create_vendors_business_details_table', 4),
(9, '2023_09_04_200139_create_vendors_bank_details', 5),
(10, '2023_09_07_203952_create_sections_table', 6),
(11, '2023_09_08_071216_create_categories_table', 7),
(12, '2023_09_09_090925_create_brands_table', 8),
(13, '2023_09_09_224136_create_products_table', 9),
(14, '2023_09_10_074956_create_products_attributes_table', 10),
(15, '2023_09_12_022049_create_products_images_table', 11),
(16, '2023_09_12_215045_create_banners_table', 12),
(17, '2023_09_13_015349_update_banners_table', 13),
(18, '2023_09_13_041033_update_products_table', 14),
(19, '2023_09_14_152506_create_products_filters_table', 15),
(20, '2023_09_14_152919_create_products_filters_values_table', 16),
(21, '2023_09_17_223939_create_recently_viewed_products_table', 17),
(22, '2023_09_18_193716_create_carts_table', 18),
(23, '2023_09_19_003820_add_columns_to_users', 19),
(24, '2023_09_20_030255_create_coupons_table', 20),
(25, '2023_09_22_032916_create_delivery_addresses_table', 21),
(26, '2023_09_23_201711_create_orders_table', 22),
(27, '2023_09_23_202431_create_orders_products_table', 23),
(28, '2023_09_24_164721_create_order_statuses_table', 24),
(29, '2023_09_24_174908_create_orders_logs_table', 25),
(30, '2023_09_24_180612_update_orders_table', 26),
(31, '2023_09_25_195335_create_payments_table', 27),
(32, '2023_09_27_164501_create_ratings_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_amount` float DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_gateway` varchar(255) NOT NULL,
  `grand_total` float NOT NULL,
  `courier_name` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `state`, `city`, `country`, `zipcode`, `mobile`, `email`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `payment_gateway`, `grand_total`, `courier_name`, `tracking_number`, `created_at`, `updated_at`) VALUES
(5, 20, 'Huy Hu', '755-nk', 'Go Vap', 'HCM', 'Viet Nam', '99675', '909999999922', 'test3@test.com', 0, '27ohqQP2', 4455000, 'Shipped', 'COD', 'COD', 25245000, 'J&T', '908736123', '2023-09-23 14:28:29', '2023-09-24 12:29:35'),
(6, 20, 'Huy Hoang', '755-cmt8', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, '27ohqQP2', 4455000, 'Pending', 'COD', 'COD', 25245000, '', '', '2023-09-23 14:38:52', '2023-09-24 10:14:41'),
(7, 20, 'Huy Hoang', '755-cmt8', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, '27ohqQP2', 4455000, 'New', 'COD', 'COD', 25245000, '', '', '2023-09-23 14:47:34', '2023-09-23 14:47:34'),
(9, 20, 'Huy Hu', '755-nk', 'Go Vap', 'HCM', 'Viet Nam', '99675', '909999999922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 1520000, '', '', '2023-09-23 17:35:10', '2023-09-23 17:35:10'),
(12, 20, 'Huy Hu', '755-nk', 'Go Vap', 'HCM', 'Viet Nam', '99675', '909999999922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 2634990, NULL, NULL, '2023-09-28 10:28:20', '2023-09-28 10:28:20'),
(13, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 16060000, NULL, NULL, '2023-09-30 08:28:31', '2023-09-30 08:28:31'),
(14, 20, 'Huy Hu', '755-nk', 'Go Vap', 'HCM', 'Viet Nam', '99675', '909999999922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 30900000, NULL, NULL, '2023-10-08 10:56:12', '2023-10-08 10:56:12'),
(15, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 61800000, NULL, NULL, '2023-10-13 23:02:22', '2023-10-13 23:02:22'),
(16, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 106880000, NULL, NULL, '2023-10-14 00:32:35', '2023-10-14 00:32:35'),
(17, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 104970000, NULL, NULL, '2023-10-17 09:29:41', '2023-10-17 09:29:41'),
(18, 20, 'Minh', '755-nk', 'Gò Vấp', 'Hổ Chí Minh c', 'Vietnam', '71409', '0398730224', 'test3@test.com', 0, NULL, NULL, 'Pending', 'COD', 'COD', 30900000, NULL, NULL, '2023-11-08 08:58:24', '2023-11-08 08:59:24'),
(19, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 34990000, NULL, NULL, '2023-11-08 18:03:23', '2023-11-08 18:03:23'),
(20, 20, 'Minh', '755-nk', 'Gò Vấp', 'Hổ Chí Minh c', 'Vietnam', '71409', '0398730224', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 40990000, NULL, NULL, '2024-03-14 22:42:41', '2024-03-14 22:42:41'),
(21, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 122970000, NULL, NULL, '2024-03-15 23:08:31', '2024-03-15 23:08:31'),
(22, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 36000, NULL, NULL, '2024-05-22 19:56:02', '2024-05-22 19:56:02'),
(23, 20, 'Minh', '755-nk', 'Gò Vấp', 'Hổ Chí Minh c', 'Vietnam', '71409', '0398730224', 'test3@test.com', 0, NULL, NULL, 'Pending', 'Prepaid', 'Paypal', 30900000, NULL, NULL, '2024-08-27 04:20:02', '2024-08-27 04:20:02'),
(24, 20, 'Minh', '755-nk', 'Gò Vấp', 'Hổ Chí Minh c', 'Vietnam', '71409', '0398730224', 'test3@test.com', 0, NULL, NULL, 'Pending', 'Prepaid', 'Paypal', 30900000, NULL, NULL, '2024-08-27 04:20:03', '2024-08-27 04:20:03'),
(25, 20, 'Huy Hoang', '755-cmt', 'Thuong Tin', 'HN', 'Viet Nam', '99655', '909999998922', 'test3@test.com', 0, NULL, NULL, 'New', 'COD', 'COD', 92700000, NULL, NULL, '2024-12-21 14:03:54', '2024-12-21 14:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders_logs`
--

CREATE TABLE `orders_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_logs`
--

INSERT INTO `orders_logs` (`id`, `order_id`, `order_item_id`, `order_status`, `created_at`, `updated_at`) VALUES
(11, 5, 5, 'Shipped', '2023-09-24 12:29:21', '2023-09-24 12:29:21'),
(12, 5, NULL, 'Shipped', '2023-09-24 12:29:35', '2023-09-24 12:29:35'),
(13, 18, NULL, 'Pending', '2023-11-08 08:59:24', '2023-11-08 08:59:24'),
(14, 18, 24, 'Pending', '2023-11-08 08:59:35', '2023-11-08 08:59:35'),
(15, 19, 25, 'Pending', '2023-11-08 18:05:33', '2023-11-08 18:05:33'),
(16, 19, 25, 'Pending', '2023-11-08 18:05:47', '2023-11-08 18:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL,
  `item_status` varchar(255) DEFAULT NULL,
  `courier_name` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `vendor_id`, `admin_id`, `product_id`, `product_code`, `product_name`, `product_color`, `product_size`, `product_price`, `product_qty`, `item_status`, `courier_name`, `tracking_number`, `created_at`, `updated_at`) VALUES
(5, 5, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '256GB', 14850000, 1, 'Shipped', 'GHN', '7626173', '2023-09-23 14:28:29', '2023-09-24 12:29:21'),
(6, 5, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '128GB', 14850000, 1, '', '', '', '2023-09-23 14:28:29', '2023-09-23 14:28:29'),
(7, 6, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '256GB', 14850000, 1, 'In Process', '', '', '2023-09-23 14:38:52', '2023-09-24 10:38:20'),
(8, 6, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '128GB', 14850000, 1, 'Pending', '', '', '2023-09-23 14:38:52', '2023-09-24 10:38:16'),
(9, 7, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '256GB', 14850000, 1, '', '', '', '2023-09-23 14:47:34', '2023-09-23 14:47:34'),
(10, 7, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '128GB', 14850000, 1, '', '', '', '2023-09-23 14:47:34', '2023-09-23 14:47:34'),
(12, 9, 20, 17, 15, 22, 'somi', 'Sơ Mi add by vendor', 'Blue', 'Medium', 1520000, 1, 'Pending', '', '', '2023-09-23 17:35:10', '2023-09-24 10:47:10'),
(13, 12, 20, 0, 1, 13, 'Inprison', 'Áo sơ mi', 'red', 'Small', 1209990, 1, NULL, NULL, NULL, '2023-09-28 10:28:20', '2023-09-28 10:28:20'),
(14, 12, 20, 17, 15, 22, 'somi', 'Sơ Mi add by vendor', 'Blue', 'Small', 1425000, 1, NULL, NULL, NULL, '2023-09-28 10:28:20', '2023-09-28 10:28:20'),
(15, 13, 20, 0, 1, 2, 'AS11', 'Asus 128GB', 'Blue', '256GB', 14850000, 1, NULL, NULL, NULL, '2023-09-30 08:28:31', '2023-09-30 08:28:31'),
(16, 13, 20, 0, 1, 13, 'Inprison', 'Áo sơ mi', 'red', 'Small', 1209990, 1, NULL, NULL, NULL, '2023-09-30 08:28:31', '2023-09-30 08:28:31'),
(17, 14, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 1, NULL, NULL, NULL, '2023-10-08 10:56:12', '2023-10-08 10:56:12'),
(18, 15, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 2, NULL, NULL, NULL, '2023-10-13 23:02:22', '2023-10-13 23:02:22'),
(19, 16, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '512GB', 40990000, 1, NULL, NULL, NULL, '2023-10-14 00:32:35', '2023-10-14 00:32:35'),
(20, 16, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '256GB', 34990000, 1, NULL, NULL, NULL, '2023-10-14 00:32:35', '2023-10-14 00:32:35'),
(21, 16, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 1, NULL, NULL, NULL, '2023-10-14 00:32:35', '2023-10-14 00:32:35'),
(22, 17, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '256GB', 34990000, 1, NULL, NULL, NULL, '2023-10-17 09:29:41', '2023-10-17 09:29:41'),
(23, 17, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '256GB', 34990000, 2, NULL, NULL, NULL, '2023-10-17 09:29:41', '2023-10-17 09:29:41'),
(24, 18, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 1, 'Pending', 'GHN', '7626173', '2023-11-08 08:58:24', '2023-11-08 08:59:35'),
(25, 19, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '256GB', 34990000, 1, 'Pending', 'GHN', '7626173', '2023-11-08 18:03:23', '2023-11-08 18:05:47'),
(26, 20, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '512GB', 40990000, 1, NULL, NULL, NULL, '2024-03-14 22:42:41', '2024-03-14 22:42:41'),
(27, 21, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '512GB', 40990000, 1, NULL, NULL, NULL, '2024-03-15 23:08:31', '2024-03-15 23:08:31'),
(28, 21, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '512GB', 40990000, 2, NULL, NULL, NULL, '2024-03-15 23:08:31', '2024-03-15 23:08:31'),
(29, 22, 20, 0, 1, 36, 'qwqq', 'abc', 'qq', '12', 9000, 4, NULL, NULL, NULL, '2024-05-22 19:56:02', '2024-05-22 19:56:02'),
(30, 23, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 1, NULL, NULL, NULL, '2024-08-27 04:20:02', '2024-08-27 04:20:02'),
(31, 24, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 1, NULL, NULL, NULL, '2024-08-27 04:20:03', '2024-08-27 04:20:03'),
(32, 25, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 2, NULL, NULL, NULL, '2024-12-21 14:03:54', '2024-12-21 14:03:54'),
(33, 25, 20, 0, 1, 23, 'IP15', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'Đen', '128GB', 30900000, 1, NULL, NULL, NULL, '2024-12-21 14:03:54', '2024-12-21 14:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_item_statuses`
--

CREATE TABLE `order_item_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item_statuses`
--

INSERT INTO `order_item_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 1, NULL, NULL),
(2, 'In Process', 1, NULL, NULL),
(3, 'Shipped', 1, NULL, NULL),
(4, 'Delivered', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending', 1, NULL, NULL),
(3, 'Cancelled', 1, NULL, NULL),
(4, 'In Process', 1, NULL, NULL),
(5, 'Shipped', 1, NULL, NULL),
(6, 'Partially Shipped', 1, NULL, NULL),
(7, 'Delivered', 1, NULL, NULL),
(8, 'Partially Delivered', 1, NULL, NULL),
(9, 'Paid', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_type` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_discount` float NOT NULL,
  `product_weight` int(11) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `product_video` varchar(255) DEFAULT NULL,
  `group_code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `dai` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `fabric` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `is_featured` enum('No','Yes') NOT NULL,
  `is_bestseller` enum('No','Yes') NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `section_id`, `category_id`, `brand_id`, `vendor_id`, `admin_id`, `admin_type`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_image`, `product_video`, `group_code`, `description`, `dai`, `card`, `ram`, `fabric`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `is_bestseller`, `status`, `created_at`, `updated_at`) VALUES
(23, 1, 16, 3, 0, 1, 'admin', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'IP15', 'Đen', 34990000, 0, 1500, '75525.webp', NULL, '100', 'Thiết kế khung viền từ titan chuẩn hàng không vũ trụ - Cực nhẹ, bền cùng viền cạnh mỏng cầm nắm thoải mái\r\nHiệu năng Pro chiến game thả ga - Chip A17 Pro mang lại hiệu năng đồ họa vô cùng sống động và chân thực\r\nThoả sức sáng tạo và quay phim chuyên nghiệp - Cụm 3 camera sau đến 48MP và nhiều chế độ tiên tiến\r\nNút tác vụ mới giúp nhanh chóng kích hoạt tính năng yêu thích của bạn', NULL, NULL, NULL, NULL, 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 'iphone', 'Yes', 'Yes', 1, '2023-10-08 10:26:09', '2023-10-08 10:26:09'),
(24, 1, 17, 2, 0, 1, 'admin', 'Samsung Galaxy S23 Ultra 256GB', 'S23Ultr', 'Đen', 21790000, 0, 1500, '17498.webp', NULL, '100', 'Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\nChiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\nNâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\nThiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', NULL, NULL, NULL, NULL, 'Samsung Galaxy S23 Ultra 256GB', 'Samsung Galaxy S23 Ultra 256GB', 'Samsung Galaxy S23 Ultra 256GB', 'Yes', 'Yes', 1, '2023-10-08 10:28:23', '2023-10-08 10:28:23'),
(25, 1, 18, 14, 0, 1, 'admin', 'OPPO Reno10 5G 8GB 256GB', 'reno10', 'Xanh', 10490000, 0, 1500, '91247.webp', NULL, '120', 'Chuyên gia chân dung thế hệ thứ 10 - Camera chân dung 32MP siêu nét, chụp xa từ 2X-5X không lo biến dạng khung hình\r\nThiết kế nổi bật, dẫn đầu xu hướng - Cạnh viền cong 3D, các phiên bản màu sắc phù hợp đa cá tính, thu hút mọi ánh nhìn\r\nĐa nhiệm mạnh mẽ hơn ai hết - RAM mở rộng đến 16GB, ROM 256GB mang đến trải nghiệm đa tác vụ thoải mái\r\nPin bất tận, sạc siêu tốc - pin 5000mAh và sạc nhanh 67W cùng chế độ tiết kiệm pin siêu tiện ích', NULL, NULL, NULL, NULL, 'OPPO Reno10 5G 8GB 256GB', 'OPPO Reno10 5G 8GB 256GB', 'OPPO Reno10 5G 8GB 256GB', 'Yes', 'Yes', 1, '2023-10-08 10:30:44', '2023-10-08 10:30:44'),
(26, 1, 16, 3, 0, 1, 'admin', 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 'ip14', 'Trắng', 26290000, 0, 1500, '24893.webp', NULL, '100', 'Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\nCấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\nLàm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\nPin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến', NULL, NULL, NULL, NULL, 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 'iPhone 14 Pro Max 128GB | Chính hãng VN/A', 'Yes', 'No', 1, '2023-10-08 10:38:02', '2023-10-08 10:38:02'),
(27, 1, 16, 3, 0, 1, 'admin', 'iPhone 13 128GB | Chính hãng VN/A', 'ip13', 'Xanh', 13990000, 5, 1500, '46875.webp', NULL, '100', 'Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao\r\nKhông gian hiển thị sống động - Màn hình 6.1\" Super Retina XDR độ sáng cao, sắc nét\r\nTrải nghiệm điện ảnh đỉnh cao - Camera kép 12MP, hỗ trợ ổn định hình ảnh quang học\r\nTối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 phút', NULL, NULL, NULL, NULL, 'iPhone 13 128GB | Chính hãng VN/A', 'iPhone 13 128GB | Chính hãng VN/A', 'iPhone 13 128GB | Chính hãng VN/A', 'No', 'Yes', 1, '2023-10-08 10:40:35', '2023-10-08 10:40:35'),
(28, 1, 16, 3, 0, 1, 'admin', 'iPhone 12 64GB | Chính hãng VN/A', 'ip12', 'Xanh', 9900000, 0, 1500, '35904.webp', NULL, '100', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', NULL, NULL, NULL, NULL, 'iPhone 12 64GB | Chính hãng VN/A', 'iPhone 12 64GB | Chính hãng VN/A', 'iPhone 12 64GB | Chính hãng VN/A', 'No', 'Yes', 1, '2023-10-08 10:42:58', '2023-10-08 10:43:33'),
(29, 1, 16, 3, 0, 1, 'admin', 'iPhone 11 64GB | Chính hãng VN/A', 'ip11', 'Xanh', 12450000, 0, 1500, '15017.webp', NULL, '100', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', NULL, NULL, NULL, NULL, 'iPhone 11 64GB | Chính hãng VN/A', 'iPhone 11 64GB | Chính hãng VN/A', 'iPhone 11 64GB | Chính hãng VN/A', 'Yes', 'Yes', 1, '2023-10-08 10:45:52', '2023-10-08 10:45:52'),
(30, 1, 16, 3, 0, 1, 'admin', 'iPhone X 64GB | Chính hãng VN/A', 'ipx', 'Xanh', 5690000, 5, 1500, '75816.webp', NULL, '100', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', NULL, NULL, NULL, NULL, 'iPhone x 64GB | Chính hãng VN/A', 'iPhone x 64GB | Chính hãng VN/A', 'iPhone x 64GB | Chính hãng VN/A', 'No', 'Yes', 1, '2023-10-08 10:46:55', '2023-10-08 10:46:55'),
(31, 1, 16, 3, 0, 1, 'admin', 'iPhone 13 256GB', 'ip13', 'Xanh', 23900000, 0, 1500, '49243.webp', NULL, '100', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', NULL, NULL, NULL, NULL, 'iPhone 13 256GB', 'iPhone 13 256GB', 'iPhone 13 256GB', 'Yes', 'Yes', 1, '2023-10-08 10:48:03', '2023-10-08 10:48:03'),
(32, 1, 16, 3, 0, 1, 'admin', 'iPhone 14 Pro Max 1TB | Chính hãng VN/A', 'ip14', 'Xanh', 35000000, 0, 1500, '86701.webp', NULL, '100', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', NULL, NULL, NULL, NULL, 'iPhone 14 Pro Max 1TB | Chính hãng VN/A', 'iPhone 14 Pro Max 1TB | Chính hãng VN/A', 'iPhone 14 Pro Max 1TB | Chính hãng VN/A', 'Yes', 'Yes', 1, '2023-10-08 10:49:34', '2023-10-08 10:49:34'),
(33, 1, 16, 3, 0, 1, 'admin', 'iPhone 12 128GB | Chính hãng VN/A', 'ip12', 'Xanh', 27900000, 5, 1500, '40486.webp', NULL, '100', 'Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\nRực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\nChụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\nBền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', NULL, NULL, NULL, NULL, 'iPhone 12 128GB | Chính hãng VN/A', 'iPhone 12 128GB | Chính hãng VN/A', 'iPhone 12 128GB | Chính hãng VN/A', 'Yes', 'Yes', 1, '2023-10-08 10:50:27', '2023-10-08 10:50:27'),
(37, 7, 21, 5, 0, 1, 'admin', 'Laptop', 's1', 'đen', 12000000, 1, 122, '43378.jpg', NULL, '2', 'aa', NULL, NULL, NULL, NULL, 'aaaa', 'aaaa', 'aaa', 'Yes', 'Yes', 1, '2025-01-05 00:07:30', '2025-01-05 00:07:30'),
(38, 16, 31, 2, 0, 1, 'admin', 'Màn hình', '1', 'đen', 56000000, 10, 122, '54386.png', NULL, '2', NULL, NULL, NULL, NULL, NULL, 'aaaa', 'aaaa', 'aaa', 'No', 'No', 1, '2025-01-05 00:09:51', '2025-01-05 00:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(15, 23, '128GB', 30900000, 1106, 'A', 1, '2023-10-08 10:54:59', '2024-12-21 14:03:54'),
(16, 23, '256GB', 34990000, 0, 'B', 1, '2023-10-08 10:54:59', '2023-11-08 18:03:23'),
(17, 23, '512GB', 40990000, 0, 'C', 1, '2023-10-08 10:54:59', '2024-03-15 23:08:31'),
(18, 34, '128GB', 15000000, 12, 'AA', 1, '2023-10-17 09:37:35', '2023-10-17 09:37:35'),
(19, 36, '12', 10000, 996, '11', 1, '2024-05-22 19:54:54', '2024-05-22 19:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `products_filters`
--

CREATE TABLE `products_filters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_ids` varchar(255) NOT NULL,
  `filter_name` varchar(255) NOT NULL,
  `filter_column` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_filters_values`
--

CREATE TABLE `products_filters_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filter_id` int(11) NOT NULL,
  `filter_value` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 26, 'x_m_24.webp98877.webp', 1, '2023-10-08 10:38:22', '2023-10-08 10:38:22'),
(7, 26, 'v_ng_18.webp94268.webp', 1, '2023-10-08 10:38:34', '2023-10-08 10:38:34'),
(8, 23, '4_186.webp13665.webp', 1, '2023-10-08 10:50:55', '2023-10-08 10:50:55'),
(9, 23, '5_157.webp3583.webp', 1, '2023-10-08 10:51:02', '2023-10-08 10:51:02'),
(10, 23, '6_129.webp9643.webp', 1, '2023-10-08 10:51:08', '2023-10-08 10:51:08'),
(11, 26, '6_129.webp57040.webp', 1, '2023-10-08 10:51:31', '2023-10-08 10:51:31'),
(12, 27, '1_252.webp14895.webp', 1, '2023-10-08 10:51:48', '2023-10-08 10:51:48'),
(13, 27, '6_129.webp54490.webp', 1, '2023-10-08 10:51:58', '2023-10-08 10:51:58'),
(14, 27, '3_224.webp35865.webp', 1, '2023-10-08 10:51:59', '2023-10-08 10:51:59'),
(15, 27, '2_241.webp1997.webp', 1, '2023-10-08 10:51:59', '2023-10-08 10:51:59'),
(16, 28, '5_157.webp23606.webp', 1, '2023-10-08 10:52:15', '2023-10-08 10:52:15'),
(17, 28, '6_129.webp73748.webp', 1, '2023-10-08 10:52:16', '2023-10-08 10:52:16'),
(18, 28, '3_224.webp1306.webp', 1, '2023-10-08 10:52:16', '2023-10-08 10:52:16'),
(19, 28, '2_241.webp87734.webp', 1, '2023-10-08 10:52:17', '2023-10-08 10:52:17'),
(20, 29, '4_186.webp64699.webp', 1, '2023-10-08 10:52:45', '2023-10-08 10:52:45'),
(21, 29, '5_157.webp45707.webp', 1, '2023-10-08 10:52:45', '2023-10-08 10:52:45'),
(22, 29, '6_129.webp76022.webp', 1, '2023-10-08 10:52:46', '2023-10-08 10:52:46'),
(23, 29, '3_224.webp88959.webp', 1, '2023-10-08 10:52:46', '2023-10-08 10:52:46'),
(24, 30, '5_157.webp51373.webp', 1, '2023-10-08 10:52:58', '2023-10-08 10:52:58'),
(25, 30, '6_129.webp98402.webp', 1, '2023-10-08 10:52:59', '2023-10-08 10:52:59'),
(26, 30, '3_224.webp38422.webp', 1, '2023-10-08 10:52:59', '2023-10-08 10:52:59'),
(27, 30, '2_241.webp34755.webp', 1, '2023-10-08 10:53:00', '2023-10-08 10:53:00'),
(28, 31, '5_157.webp89456.webp', 1, '2023-10-08 10:53:13', '2023-10-08 10:53:13'),
(29, 31, '6_129.webp42811.webp', 1, '2023-10-08 10:53:14', '2023-10-08 10:53:14'),
(30, 31, '3_224.webp1476.webp', 1, '2023-10-08 10:53:14', '2023-10-08 10:53:14'),
(31, 31, '2_241.webp31111.webp', 1, '2023-10-08 10:53:15', '2023-10-08 10:53:15'),
(32, 32, '5_157.webp47819.webp', 1, '2023-10-08 10:53:28', '2023-10-08 10:53:28'),
(33, 32, '6_129.webp11562.webp', 1, '2023-10-08 10:53:28', '2023-10-08 10:53:28'),
(34, 32, '3_224.webp58683.webp', 1, '2023-10-08 10:53:29', '2023-10-08 10:53:29'),
(35, 32, '2_241.webp33810.webp', 1, '2023-10-08 10:53:29', '2023-10-08 10:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(5, 20, 23, 'Điện thoại tốt nhưng mà không có CH Play :))', 5, 1, '2023-10-13 23:04:07', '2023-10-13 23:04:07'),
(6, 20, 34, 'k tốt', 1, 1, '2023-10-17 09:40:04', '2023-10-17 09:40:04'),
(9, 20, 26, 'tạm', 5, 1, '2025-01-08 08:53:07', '2025-01-08 08:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `recently_viewed_products`
--

CREATE TABLE `recently_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recently_viewed_products`
--

INSERT INTO `recently_viewed_products` (`id`, `product_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 13, 'e45c3c5fa474ea738b8b785adc4ff76e', NULL, NULL),
(2, 20, '9544c7b7efd8017ac8401ba10b7fee11', NULL, NULL),
(3, 14, '66077cf646a533d60f631f17b164c59c', NULL, NULL),
(4, 14, '2b595691f90bbafb57ed3d2fc1b13cd1', NULL, NULL),
(5, 13, '2b595691f90bbafb57ed3d2fc1b13cd1', NULL, NULL),
(6, 22, '2b595691f90bbafb57ed3d2fc1b13cd1', NULL, NULL),
(7, 20, '2b595691f90bbafb57ed3d2fc1b13cd1', NULL, NULL),
(8, 12, '2b595691f90bbafb57ed3d2fc1b13cd1', NULL, NULL),
(9, 13, 'cd2e95a452f4c00bd87ea741e4bad726', NULL, NULL),
(10, 2, 'a18b5ec794f8f03a805db3656c76ecf7', NULL, NULL),
(11, 21, 'a18b5ec794f8f03a805db3656c76ecf7', NULL, NULL),
(12, 2, '1a9a6c5a66e00a6b7df1c1f40d1975fb', NULL, NULL),
(13, 22, '1a9a6c5a66e00a6b7df1c1f40d1975fb', NULL, NULL),
(14, 18, '3080549455ac3d8b3c2fd799c71201e1', NULL, NULL),
(15, 21, '3080549455ac3d8b3c2fd799c71201e1', NULL, NULL),
(16, 20, '3080549455ac3d8b3c2fd799c71201e1', NULL, NULL),
(17, 22, '3080549455ac3d8b3c2fd799c71201e1', NULL, NULL),
(18, 14, '3080549455ac3d8b3c2fd799c71201e1', NULL, NULL),
(19, 16, '3080549455ac3d8b3c2fd799c71201e1', NULL, NULL),
(20, 21, '57ad33a2f79d679fc5022914f23b45d2', NULL, NULL),
(21, 22, '57ad33a2f79d679fc5022914f23b45d2', NULL, NULL),
(22, 13, '57ad33a2f79d679fc5022914f23b45d2', NULL, NULL),
(23, 22, '1192e9b6b25927ab2a886a01e2c2dd88', NULL, NULL),
(24, 13, '1192e9b6b25927ab2a886a01e2c2dd88', NULL, NULL),
(25, 14, '1192e9b6b25927ab2a886a01e2c2dd88', NULL, NULL),
(26, 20, '1192e9b6b25927ab2a886a01e2c2dd88', NULL, NULL),
(27, 22, '46c69ec7fd2858325b59eb12ea13cf62', NULL, NULL),
(28, 13, '46c69ec7fd2858325b59eb12ea13cf62', NULL, NULL),
(29, 14, '46c69ec7fd2858325b59eb12ea13cf62', NULL, NULL),
(30, 2, '46c69ec7fd2858325b59eb12ea13cf62', NULL, NULL),
(31, 23, 'e8821ee9ebcbcacdde5d2d289145c6f4', NULL, NULL),
(32, 26, 'e8821ee9ebcbcacdde5d2d289145c6f4', NULL, NULL),
(33, 32, 'e8821ee9ebcbcacdde5d2d289145c6f4', NULL, NULL),
(34, 33, '1fcdbaa41644aa60580f4b26fa9c9097', NULL, NULL),
(35, 23, '1fcdbaa41644aa60580f4b26fa9c9097', NULL, NULL),
(36, 29, '1fcdbaa41644aa60580f4b26fa9c9097', NULL, NULL),
(37, 23, 'fb2d46e63fe2b3fbf668cad5f8de9c46', NULL, NULL),
(38, 27, 'fb2d46e63fe2b3fbf668cad5f8de9c46', NULL, NULL),
(39, 26, 'fb2d46e63fe2b3fbf668cad5f8de9c46', NULL, NULL),
(40, 29, 'fb2d46e63fe2b3fbf668cad5f8de9c46', NULL, NULL),
(41, 28, 'fb2d46e63fe2b3fbf668cad5f8de9c46', NULL, NULL),
(42, 23, '45d350553b0c9365f5a5375d34d36c97', NULL, NULL),
(43, 23, '9bdf28ad78d8bf3f9fd8831b763ca707', NULL, NULL),
(44, 34, 'cd96008d477d88373e718893f1e7283b', NULL, NULL),
(45, 23, 'a781473d72b5f5ee1d75c7171447e635', NULL, NULL),
(46, 23, '0328e5a0eaafb21e1f175c999b5cdb5c', NULL, NULL),
(47, 23, '21939c011f4eb80965c0beedcc59b497', NULL, NULL),
(48, 26, '21939c011f4eb80965c0beedcc59b497', NULL, NULL),
(49, 23, 'dc704511f2cfdcf851f0230171aece7f', NULL, NULL),
(50, 35, 'dc704511f2cfdcf851f0230171aece7f', NULL, NULL),
(51, 26, 'dc704511f2cfdcf851f0230171aece7f', NULL, NULL),
(52, 27, 'dc704511f2cfdcf851f0230171aece7f', NULL, NULL),
(53, 28, 'dc704511f2cfdcf851f0230171aece7f', NULL, NULL),
(54, 32, 'dc704511f2cfdcf851f0230171aece7f', NULL, NULL),
(55, 23, '760dafd1de6a33181df3d00c9385a85f', NULL, NULL),
(56, 23, '07421a3f88ca0bee8cbca4708cf25248', NULL, NULL),
(57, 26, '07421a3f88ca0bee8cbca4708cf25248', NULL, NULL),
(58, 36, 'f63671deb750870b880253c3233a2b49', NULL, NULL),
(59, 23, '22a9fdcfe790f0e5c8d0f3bf86962f53', NULL, NULL),
(60, 33, '22a9fdcfe790f0e5c8d0f3bf86962f53', NULL, NULL),
(61, 32, '22a9fdcfe790f0e5c8d0f3bf86962f53', NULL, NULL),
(62, 23, 'e8bbc7132ba60d5cf8d8249e2bbcd661', NULL, NULL),
(63, 23, '872bf4024c442f9a72220ad6a1c7ff29', NULL, NULL),
(64, 37, 'd452064cd71feac4d8a3ea26038e0e29', NULL, NULL),
(65, 23, '2906058f8b448146f41043540cfa0d47', NULL, NULL),
(66, 26, '2906058f8b448146f41043540cfa0d47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 1, NULL, '2023-10-08 09:56:50'),
(7, 'Laptop', 1, NULL, '2023-09-09 14:43:32'),
(8, 'Máy tính bảng', 1, NULL, '2023-09-08 18:23:33'),
(12, 'Tai nghe', 1, '2023-09-08 22:27:26', '2023-09-12 14:27:02'),
(14, 'PC - Linh kiện', 1, '2023-10-08 09:57:32', '2023-10-08 09:57:32'),
(15, 'Đồng hồ', 1, '2023-10-08 09:57:56', '2023-10-08 09:57:56'),
(16, 'PC', 1, '2023-10-17 09:33:41', '2023-10-17 09:33:41'),
(17, 'loa', 1, '2024-05-22 19:48:16', '2024-05-22 19:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `zipcode`, `mobile`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Huy Admin', '', '', '', '', '', '', 'admin@gmaill.com', NULL, '$2y$10$BNITCG6wmisZsrCcXzPjNutx.frwXImrZ2fG2r7JYQLpD1HqDQkou', 0, NULL, '2023-08-29 13:26:20', '2023-08-29 13:26:20'),
(2, 'Huy', '', '', '', '', '', '', 'admin1@gmail.com', NULL, '$2y$10$dYAgHkdj6GTx7EJgLN6edu8udF8sqOOcqkeo00.gBc/SmbIUEKtO2', 0, NULL, '2023-08-29 13:28:05', '2023-08-29 13:28:05'),
(9, 'Huy sign', NULL, NULL, NULL, NULL, NULL, '09000000000', 'user1@test.com', NULL, '$2y$10$xDv/FR.un7rYeSFppuWkSurbkVSHeEKWqkvLOpRfquVfAsjWd6VoO', 1, NULL, '2023-09-18 18:35:50', '2023-09-21 20:25:45'),
(10, 'test2', NULL, NULL, NULL, NULL, NULL, '7676767676', 'test1@test.com', NULL, '$2y$10$FMRTuJFcLx/PwV1nxbGAWuysbmFi3Yir/a3uOiTzeNeNwJ/UZJtqu', 1, NULL, '2023-09-18 19:19:48', '2023-09-18 19:19:48'),
(20, 'test', '111', 'Hổ Chí Minh', 'Gò Vấp', 'Vietnam', '714099', '0398730224', 'test3@test.com', NULL, '$2y$10$X4XW.uOFfgsuxEbC.rC00.B.DQohpRtBzhNa6pEbEmgphf0Zx4Kgi', 1, NULL, '2023-09-19 15:48:48', '2023-09-19 17:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirm` enum('No','Yes') NOT NULL DEFAULT 'No',
  `commission` float DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `address`, `city`, `state`, `country`, `zipcode`, `mobile`, `email`, `confirm`, `commission`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Huy Đẹp Traii', '755-NK', 'HCM', 'Govap', 'VietNam', '71409', '0398730223', 'huy@admin.com', 'No', 0, 1, NULL, '2023-10-17 09:33:08'),
(17, 'Testvendor', '755', 'hcm', 'gv', 'vn', '123131', '0932989898', 'vendor1@vendor.com', 'No', 0, 1, '2023-09-16 02:39:56', '2023-10-17 09:33:14'),
(18, 'vendor1', NULL, NULL, NULL, NULL, NULL, '03987222', 'vendor1@gmail.com', 'No', NULL, 1, '2024-02-29 05:41:01', '2024-02-29 05:41:01');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_bank_details`
--

CREATE TABLE `vendors_bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_ifsc_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_bank_details`
--

INSERT INTO `vendors_bank_details` (`id`, `vendor_id`, `account_holder_name`, `bank_name`, `account_number`, `bank_ifsc_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyễn Hữu Huy', 'MB Bank', '0398730223', '912331233', NULL, '2023-09-15 20:01:26'),
(2, 17, 'con chó này', 'angrybank', '9999999999', '123123', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors_business_details`
--

CREATE TABLE `vendors_business_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `shop_address` varchar(255) DEFAULT NULL,
  `shop_city` varchar(255) DEFAULT NULL,
  `shop_state` varchar(255) DEFAULT NULL,
  `shop_country` varchar(255) DEFAULT NULL,
  `shop_zipcode` varchar(255) DEFAULT NULL,
  `shop_mobile` varchar(255) DEFAULT NULL,
  `shop_website` varchar(255) DEFAULT NULL,
  `shop_email` varchar(255) DEFAULT NULL,
  `address_proof` varchar(255) DEFAULT NULL,
  `address_proof_image` varchar(255) DEFAULT NULL,
  `business_license_number` varchar(255) DEFAULT NULL,
  `gst_number` varchar(255) DEFAULT NULL,
  `pan-number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors_business_details`
--

INSERT INTO `vendors_business_details` (`id`, `vendor_id`, `shop_name`, `shop_address`, `shop_city`, `shop_state`, `shop_country`, `shop_zipcode`, `shop_mobile`, `shop_website`, `shop_email`, `address_proof`, `address_proof_image`, `business_license_number`, `gst_number`, `pan-number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Đồng Niềng Shop', '755 Nguyễn Kiệm', 'Hổ Chí Minh c', 'Gò Vấp c', 'Việt Nam c', '71409 c', '0398730224', 'https://www.facebook.com/huyhuyhuy.qq', 'huy@admin.com', 'SHK', '82001.jpg', '9967154', '1231214', '4647534', NULL, '2023-09-15 19:53:56'),
(2, 17, 'shopsss', '755-Nk', 'hcm', 'gv', 'Vietnam', '762552', '0987898765', NULL, NULL, 'CCCD', '', '1231231', '312313', '12312312', NULL, '2023-09-15 23:20:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_logs`
--
ALTER TABLE `orders_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filters`
--
ALTER TABLE `products_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_filters_values`
--
ALTER TABLE `products_filters_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders_logs`
--
ALTER TABLE `orders_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products_filters`
--
ALTER TABLE `products_filters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_filters_values`
--
ALTER TABLE `products_filters_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recently_viewed_products`
--
ALTER TABLE `recently_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vendors_bank_details`
--
ALTER TABLE `vendors_bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors_business_details`
--
ALTER TABLE `vendors_business_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
