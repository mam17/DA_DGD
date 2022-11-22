-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2022 lúc 09:46 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tiêu đề',
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mở đầu',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung',
  `created_date` datetime DEFAULT NULL COMMENT 'Ngày đăng',
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tác giả',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `intro`, `content`, `created_date`, `image`, `slug`, `author`, `created_at`, `updated_at`) VALUES
(1, '😍🥰LONG TƠ PLAZA  tuyển dụng 😍🥰', '😍🥰Hiện tại Siêu thị LONG TƠ PLAZA đang cần tuyển rất nhiều vị trí 😍🥰', '😍🥰Hiện tại Siêu thị LONG TƠ PLAZA đang cần tuyển các vị trí sau: 😍🥰\r\n\r\n1. Nhân viên thu ngân\r\n2. Nhân viên ngành hàng\r\n3. Nhân viên pha chế\r\n4. Nhân viên bể bơi (nam)\r\n\r\n👉Thời gian làm việc theo ca, 8 tiếng/01 ca, xoay ca theo tuần\r\n👉Thu nhập từ 4tr500-6tr500\r\n👉Không cần hồ sơ hoặc bằng cấp\r\n👉Phỏng vấn đi làm ngay\r\n\r\nLiên hệ: Anh Hoàng 036.242.1984 để được phỏng vấn !😍🥰', '2022-06-11 00:00:00', 'J0m20_td.jpg', 'long-to-plaza-tuyen-dung', 'Long', '2022-05-17 21:18:31', '2022-06-11 03:36:45'),
(2, '🥰😍Thông báo bốc thăm trúng thưởng', '🥰😍Kính mời bà con cô bác ghé xem để nhận quà ạ.🥰😍', '🥰😍Thông báo bốc thăm trúng thưởng siêu thị Long Tơ diễn ra từ 19h00-20h00 ngày 22/1/2022 trực tiếp trên fanpage LONG TƠ PLAZA. 🥰😍\r\nDo tình hình dịch bệnh nên siêu thị không tổ chức bốc thăm trực tiếp mà thay vào đó là bốc thăm trực tuyến qua livetream.\r\n\r\n🥰😍Kính mời bà con cô bác ghé xem để nhận quà ạ.🥰😍\r\n\r\nLịch livetream bốc thăm trúng thường ngày 22/01/2022 từ 18h30-20h30.💥⚡', '2022-02-22 00:00:00', '5blUr_blog8.jpg', 'thong-bao-boc-tham-trung-thuong', 'Long', '2022-05-17 21:24:49', '2022-06-11 03:37:14'),
(3, '🥰😍Đổi cũ lấy mới💥⚡', '.\r\n🥰😍Kính mời bà con cô bác ghé xem🥰😍', '🥰😍Thông báo đổi cũ lấy mới siêu thị Long Tơ diễn ra từ ngày 22/3/2022 đến 1/4/2022 tạ LONG TƠ PLAZA. 🥰😍\r\n\r\n\r\n🥰😍Kính mời bà con cô bác ghé xem để nhận quà ạ.🥰😍', '2022-03-22 00:00:00', 'mjUdb_chao.jpg', 'doi-cu-lay-moi', 'Long', '2022-05-17 21:32:16', '2022-06-11 03:37:37'),
(4, '😎BLACKFRIDAY - SĂN SALE HẤP DẪN 😎', '🥳Nhanh chân lên nào quý vị ơi !', '😎BLACKFRIDAY - SĂN SALE HẤP DẪN 😎\r\n\r\n🥳Giá cực sốc chỉ từ 23/11 đến 30/11. Nhanh chân lên nào quý vị ơi !\r\n\r\n👉Máy sấy tóc Panasonic giá chỉ có 69,000 đ/cái\r\n👉Khăn tắm Hàn giá chỉ có 35,500 đ/cái\r\n👉Nồi nấu cháo chậm Fujika FJ-KC2 2.5L giá chỉ có 159,000 đ/cái\r\n👉Khẩu trang 4 lớp Hải Hòa giá chỉ có 100.000/4 hộp\r\n\r\n______________________________\r\n🏢TRUNG TÂM THƯƠNG MẠI LONG TƠ PLAZA\r\n👉\"An tâm mua sắm, Giá rẻ mỗi ngay\"\r\n📍Tiểu khu lê xá 1, Đường Lam Sơn, Thị trấn Nông Cống, Thanh Hoá\r\n📞 hotline: 0964.888.289', '2021-11-23 00:00:00', '7YsFT_blog9.png', 'blackfriday-san-sale-hap-dan', 'Long', '2022-05-17 21:35:03', '2022-06-11 03:38:02'),
(5, 'Chào mừng ngày nhà giáo Việt Nam', 'Giảm giá tới 50%', '🥳Chào mừng ngày nhà giáo Việt Nam 20/11. Long Tơ Plaza ưu đãi lớn quý khách hàng đến mua với các gói giảm giá lên tới 50% cho các mặt hàng.\r\nNhanh chân lên nào quý vị ơi !!!!!!!!!!', '2021-11-20 00:00:00', 'moYA7_blog9.jpg', 'chao-mung-ngay-nha-giao-viet-nam', 'Long', '2022-05-17 21:40:03', '2022-06-11 03:38:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_bra` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name_bra`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Sunhouse', 'BoeKC_sun.jpg', 'sunhouse', '2022-06-11 03:12:55', '2022-06-11 03:12:55'),
(2, 'Panasonic', 'V0bfn_panasonic-logo.png', 'panasonic', '2022-06-11 03:33:28', '2022-06-11 03:33:28'),
(3, 'Sharp', 'JeBlF_sharp.jpg', 'sharp', '2022-06-11 03:33:45', '2022-06-11 03:33:45'),
(4, 'Electrolux', '8ptLW_Electrolux.jpg', 'electrolux', '2022-06-11 03:34:09', '2022-06-11 03:34:09'),
(5, 'Philips', '7ROys_philip.jpg', 'philips', '2022-06-11 03:34:28', '2022-06-11 03:34:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_cate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name_cate`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thiết bị điện gia dụng', 'thiet-bi-dien-gia-dung', '2022-06-11 03:13:08', '2022-06-11 03:13:08'),
(2, 'Đồ dùng nhà bếp', 'do-dung-nha-bep', '2022-06-11 03:32:33', '2022-06-11 03:32:33'),
(3, 'Vật dụng thông minh', 'vat-dung-thong-minh', '2022-06-11 03:32:47', '2022-06-11 03:32:47'),
(4, 'Thiết bị dọn dẹp nhà cửa', 'thiet-bi-don-dep-nha-cua', '2022-06-11 03:32:57', '2022-06-11 03:32:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_day` date NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `name`, `gender`, `birth_day`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 3, 'Long', 'Nam', '2000-10-17', 'dtlong@gmail.com', '0976737702', '2022-06-11 07:25:49', '2022-06-11 07:25:49'),
(2, 4, 'Duong Long', 'Nam', '2000-12-12', 'Như Thanh, Thanh Hóa', '0976737702', '2022-06-11 20:24:28', '2022-06-11 20:24:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_01_080753_create_products_table', 1),
(6, '2022_03_01_080900_create_categories_table', 1),
(7, '2022_03_01_080922_create_brands_table', 1),
(8, '2022_03_01_081015_create_orders_table', 1),
(9, '2022_03_01_081056_create_order-detail_table', 1),
(10, '2022_03_01_081131_create_blogs_table', 1),
(11, '2022_03_01_081213_create_customers_table', 1),
(12, '2022_03_01_081700_create_comments_table', 1),
(13, '2022_03_01_081718_create_slides_table', 1),
(14, '2022_03_01_090216_create_staffs_table', 1),
(15, '2022_03_03_083842_create_cart_table', 1),
(16, '2022_05_31_135449_create_product_images_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(11) UNSIGNED DEFAULT NULL,
  `customer_id` bigint(11) UNSIGNED NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `total_money` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `staff_id`, `customer_id`, `created_date`, `total_money`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-01-11 14:26:08', 1218000, 3, '2022-01-11 07:26:08', '2022-01-11 07:26:28'),
(2, 1, 1, '2022-02-19 14:26:44', 2480000, 3, '2022-02-19 07:26:44', '2022-02-19 07:48:14'),
(3, 1, 1, '2022-01-15 14:26:59', 540000, -1, '2022-01-15 07:26:59', '2022-01-15 07:48:06'),
(4, 1, 1, '2022-02-11 14:27:13', 1241000, 3, '2022-02-11 07:27:13', '2022-02-11 07:47:56'),
(5, 1, 1, '2022-03-11 14:27:31', 480000, 3, '2022-03-11 07:27:31', '2022-03-11 07:47:50'),
(6, 1, 1, '2022-03-14 14:27:55', 730000, 3, '2022-03-14 07:27:55', '2022-03-14 07:47:43'),
(7, 1, 1, '2022-06-11 14:28:13', 1341000, 3, '2022-06-11 07:28:13', '2022-06-11 07:47:36'),
(8, 1, 1, '2022-06-23 14:28:46', 9914000, -1, '2022-06-23 07:28:46', '2022-06-23 07:47:33'),
(9, 1, 1, '2022-06-24 14:29:04', 3758000, 3, '2022-06-24 07:29:04', '2022-06-24 07:47:23'),
(10, 1, 1, '2022-04-11 14:29:23', 1340000, 3, '2022-04-11 07:29:23', '2022-04-11 07:47:17'),
(11, 1, 1, '2022-05-11 14:49:14', 650000, -1, '2022-05-11 07:49:14', '2022-05-11 07:54:21'),
(12, 1, 1, '2022-04-21 14:49:59', 300000, 3, '2022-04-21 07:49:59', '2022-04-21 07:54:13'),
(13, 1, 1, '2022-05-22 14:50:16', 890000, 3, '2022-05-22 07:50:16', '2022-05-22 07:51:51'),
(14, 1, 1, '2022-04-19 14:50:39', 480000, 3, '2022-04-19 07:50:39', '2022-04-19 07:51:45'),
(15, 1, 1, '2022-06-03 14:50:56', 690000, 3, '2022-06-03 07:50:56', '2022-06-03 07:51:39'),
(16, 1, 1, '2022-06-06 22:20:27', 1241000, 3, '2022-06-06 07:51:17', '2022-06-06 15:28:38'),
(17, 1, 1, '2022-06-11 15:54:26', 1650000, -1, '2022-06-11 08:54:26', '2022-06-11 08:54:39'),
(18, 1, 1, '2022-06-11 15:55:02', 1860000, NULL, '2022-06-11 08:55:02', '2022-06-11 08:55:02'),
(19, 1, 2, '2022-06-12 03:25:08', 2436000, NULL, '2022-06-11 20:25:08', '2022-06-11 20:25:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(11) UNSIGNED NOT NULL,
  `product_id` bigint(11) UNSIGNED NOT NULL,
  `quanty` bigint(20) DEFAULT 0,
  `price` double DEFAULT 0,
  `totalprice` double DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quanty`, `price`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 1, 33, 1, 1218000, 0, '2022-06-11 07:26:08', '2022-06-11 07:26:08'),
(2, 2, 34, 1, 690000, 0, '2022-06-11 07:26:44', '2022-06-11 07:26:44'),
(3, 2, 35, 1, 1790000, 0, '2022-06-11 07:26:44', '2022-06-11 07:26:44'),
(4, 3, 31, 1, 540000, 0, '2022-06-11 07:26:59', '2022-06-11 07:26:59'),
(5, 4, 27, 1, 1241000, 0, '2022-06-11 07:27:13', '2022-06-11 07:27:13'),
(6, 5, 29, 1, 480000, 0, '2022-06-11 07:27:31', '2022-06-11 07:27:31'),
(7, 6, 30, 1, 730000, 0, '2022-06-11 07:27:55', '2022-06-11 07:27:55'),
(8, 7, 25, 1, 100000, 0, '2022-06-11 07:28:13', '2022-06-11 07:28:13'),
(9, 7, 27, 1, 1241000, 0, '2022-06-11 07:28:13', '2022-06-11 07:28:13'),
(10, 8, 19, 1, 2715000, 0, '2022-06-11 07:28:46', '2022-06-11 07:28:46'),
(11, 8, 12, 1, 7199000, 0, '2022-06-11 07:28:46', '2022-06-11 07:28:46'),
(12, 9, 20, 1, 3758000, 0, '2022-06-11 07:29:04', '2022-06-11 07:29:04'),
(13, 10, 2, 1, 1340000, 0, '2022-06-11 07:29:24', '2022-06-11 07:29:24'),
(14, 11, 32, 1, 650000, 0, '2022-06-11 07:49:14', '2022-06-11 07:49:14'),
(15, 12, 22, 1, 300000, 0, '2022-06-11 07:49:59', '2022-06-11 07:49:59'),
(16, 13, 26, 1, 890000, 0, '2022-06-11 07:50:16', '2022-06-11 07:50:16'),
(17, 14, 29, 1, 480000, 0, '2022-06-11 07:50:39', '2022-06-11 07:50:39'),
(18, 15, 34, 1, 690000, 0, '2022-06-11 07:50:56', '2022-06-11 07:50:56'),
(19, 16, 27, 1, 1241000, 0, '2022-06-11 07:51:17', '2022-06-11 07:51:17'),
(20, 17, 35, 1, 1790000, 0, '2022-06-11 08:54:26', '2022-06-11 08:54:26'),
(21, 18, 3, 1, 3200000, 0, '2022-06-11 08:55:02', '2022-06-11 08:55:02'),
(22, 19, 33, 2, 1218000, 0, '2022-06-11 20:25:08', '2022-06-11 20:25:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(11) UNSIGNED NOT NULL,
  `brand_id` bigint(11) UNSIGNED NOT NULL,
  `name_pr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` bigint(20) NOT NULL DEFAULT 0,
  `sold` bigint(20) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name_pr`, `slug`, `quantity`, `sold`, `price`, `discount`, `description`, `gift`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Bộ Nồi Inox 5 Đáy SUNHOUSE', 'bo-noi-inox-5-day-sunhouse', 39, 1, 1340000, 949000, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">✅THÔNG SỐ KỸ THUẬT ✨Màu sắc: Bạc ✨Chất liệu: Inox ✨Số nồi: 3 ✨Kích thước: - Đường kính lòng nồi: 16 - 20 - 24 cm ✨Bề mặt ngoài: Sáng bóng, bền đẹp, dễ dàng vệ sinh ✨ Khả năng chống dính: Không ✨Quai nồi: Quai Inox đinh tán chắc chắn, chịu lực tốt ✨Núm cầm: Núm Inox thiết kế tinh tế ✨Vung nồi: Vung kính trong suốt, cường lực siêu bền ✨Đáy nồi: Đáy từ, sử dụng trên mọi loại bếp ✨Đặc điểm khác: Giữ nhiệt tốt, tỏa nhiệt đều - Không bị oxi hóa, an toàn cho sức khỏe ✨Thương hiệu: SUNHOUSE ✨Xuất xứ: Việt Nam</span></div>', 'Không có', 'aUfyb_sp1.png', '0', '2022-06-11 03:47:50', '2022-06-11 07:29:24'),
(3, 1, 1, 'Nồi Chiên Không Dầu 6L', 'noi-chien-khong-dau-6l', 9, 1, 3200000, 1860000, '<p>📍THÔNG SỐ KỸ THUẬT</p>\r\n\r\n<p>Màu sắc: Đen – Bạc</p>\r\n\r\n<p>Chất liệu vỏ nồi: Inox - Nhựa PP siêu bền</p>\r\n\r\n<p>Chất liệu ruột nồi: Sắt mạ nhôm phủ lớp chống dính Teflon</p>\r\n\r\n<p>Dung tích: 6 L</p>\r\n\r\n<p>Công suất: 1700 W</p>\r\n\r\n<p>Điện áp: 220V~/ 50Hz</p>\r\n\r\n<p>Hẹn giờ: Có</p>\r\n\r\n<p>Màn hình: Không</p>\r\n\r\n<p>Bảng điều khiển: Núm xoay</p>', 'Găng tay giảm nhiệt', 'xWNk2_sp5.png', '1', '2022-06-11 03:49:44', '2022-06-11 08:55:02'),
(4, 1, 2, 'Bàn ủi hơi nước Panasonic NI', 'ban-ui-hoi-nuoc-panasonic-ni', 20, 0, 570000, 0, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>- Bàn ủi Panasonic NI-M250TPRA có công suất 1550W, làm nóng mặt đế nhanh, ủi thẳng quần áo mau</p>\r\n\r\n<p>- Mặt đế phủ Titanium chống dính, chống trầy xước, có độ bền cao, lướt nhẹ nhàng trên mọi chất liệu quần áo, vệ sinh đơn giản</p>\r\n\r\n<p>- Núm vặn chỉ dẫn nhiệt độ ủi phù hợp với từng loại vải, bạn quan sát và chỉnh đúng mức nhiệt cho loại quần áo mình cần ủi</p>\r\n\r\n<p>- Chế độ ủi hơi nước có chế độ phun hơi, phun tia mạnh mẽ giúp bạn ủi thẳng các nếp nhăn trên quần áo dễ dàng</p>\r\n\r\n<p>- Bàn ủi hơi nước có chức năng chống đóng cặn – tự làm sạch giữ cho bình chứa nước sạch sẽ, nước phun ra tinh khiết</p>\r\n\r\n<p>- Dây điện xoay 360 độ, người dùng di chuyển bàn ủi thuận tiện không sợ rối dây</p>\r\n\r\n<p>- Có đường rãnh cúc giúp bạn tiếp cận các khu vực khó ủi như cổ áo, nách áo, hàng cúc áo… dễ dàng.</p>', 'Không có', 'fVDxG_Screenshot 2022-06-10 162213.png', '0', '2022-06-11 03:51:45', '2022-06-11 03:51:45'),
(5, 1, 2, 'Máy Sấy Tóc Panasonic EH', 'may-say-toc-panasonic-eh', 30, 0, 290000, 0, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">ĐẶC ĐIỂM NỔI BẬT&nbsp;<br />\r\n-&nbsp;Màu sắc nhẹ nhàng, thiết kế nhỏ gọn và cầm rất vừa tay<br />\r\n- Trọng lượng rất nhẹ, bạn có thể cầm sử dụng máy thoải mái trong thời gian dài mà không có cảm giác mỏi tay<br />\r\n- Công suất 1000W cho luồng gió mạnh, giúp sấy tóc khô nhanh, an toàn, bảo vệ mái tóc của bạn không bị tổn thương vì nhiệt và tiết kiệm điện năng<br />\r\n- 2 tốc độ sấy trong đó có 1 chế độ sấy Turbo (sấy nhanh) với tốc độ cao sẽ giúp tóc bạn được sấy khô trong thời gian rất ngắn<br />\r\n- Máy sấy được trang bị một vòng cao su nhỏ dùng để treo móc lên tường sau khi sử dụng rất tiện lợi</span></div>', 'Không có', 'Mn7uk_Screenshot 2022-06-10 163230.png', '0', '2022-06-11 03:54:08', '2022-06-11 03:54:08'),
(6, 1, 2, 'Máy Sấy Tóc Ionity Panasonic', 'may-say-toc-ionity-panasonic', 20, 0, 870000, 0, '<p>THÔNG TIN KỸ THUẬT</p>\r\n\r\n<p>Ionity: Có</p>\r\n\r\n<p>Cài đặt: 3 tốc độ</p>\r\n\r\n<p>Chế độ: Chế độ sấy bảo vệ nhiệt, Chế độ sấy mát</p>\r\n\r\n<p>Công suất (ở 240V): 23000 W</p>\r\n\r\n<p>Số Watt thực tế: 2000W</p>\r\n\r\n<p>Có thể gấp gọn: Có</p>\r\n\r\n<p>Điện áp: 220-240 V</p>\r\n\r\n<p>Kích thước thân (R x C x S): 260 x 165 x 80 mm</p>\r\n\r\n<p>Trọng lượng: 600 g</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xuất xứ: Thái Lan</p>\r\n\r\n<p>Thương hiệu: Nhật Bản</p>', 'Không có', '18doJ_Screenshot 2022-06-10 162925.png', '0', '2022-06-11 03:57:53', '2022-06-11 03:57:53'),
(7, 1, 3, 'Nồi Cơm Điện Tử Sharp KS', 'noi-com-dien-tu-sharp-ks', 50, 0, 2010000, 1600000, '<p>• Nồi Cơm Điện Tử Sharp KS-COM185EV-SL</p>\r\n\r\n<p>• Dung tích: 1.8 lít</p>\r\n\r\n<p>• Công suất: 830W</p>\r\n\r\n<p>• Giữ ấm 12 giờ</p>\r\n\r\n<p>• Lồng nồi dày 1.8mm, chống dính</p>\r\n\r\n<p>• 10 chế độ : nấu nhanh, nấu chậm, hâm nóng, cơm trộn, nấu cháo, làm bánh, vệ sinh lòng nồi, giữ nóng, cài đặt thời gian, hấp</p>\r\n\r\n<p>• Mặt điều khiển LED</p>\r\n\r\n<p>• Nút bấm: dạng nhấn</p>\r\n\r\n<p>• Kích thước nồi cơm điện (RxSxC) mm:407 x 292 x 263</p>', 'Không có', 'XpC1Z_Screenshot 2022-06-10 165022.png', '0', '2022-06-11 03:59:56', '2022-06-11 03:59:56'),
(8, 1, 3, 'Nồi Chiên Không Dầu Sharp KF', 'noi-chien-khong-dau-sharp-kf', 20, 0, 1750000, 1590000, '<p>Nồi Chiên Không Dầu Sharp KF-AF42MV-ST [NEW 2021] Chống Dính 4.2L [Thép Không Gỉ, Công Suất: 1250-1450W, Công Nghệ Làm Nóng: Rapid hot air, Ngôn ngữ: Anh - Việt] - Bảo Hành Chính Hãng 15 Tháng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dung tích:&nbsp;Rổ chiên: 3.5 L;&nbsp;Nồi chiên: 4.2 L</p>\r\n\r\n<p>Công suất: 1250 - 1450W</p>\r\n\r\n<p>Công nghệ làm nóng: Rapid hot air</p>\r\n\r\n<p>Bảng điều khiển loại cơ/ Ngôn ngữ: Anh - Việt</p>\r\n\r\n<p>Chất liệu:&nbsp;Rổ chiên + Nồi chiên: chất phủ chống dính/ Độ dày: 0.4 mm</p>\r\n\r\n<p>Kích thước sản phẩm: 26 x 35 x 30.6cm /&nbsp;Cân nặng; 3.9kg</p>\r\n\r\n<p>Thực đơn: 1 nút cài đặt nhiệt độ từ 80 độc C đến 200 độ C; 1 nút điều chỉnh thời gian tối đa 60 phút</p>', 'Không có', 'mD5tS_Screenshot 2022-06-10 171057.png', '1', '2022-06-11 04:01:57', '2022-06-11 04:01:57'),
(9, 1, 3, 'Lò Vi Sóng Cơ Sharp R', 'lo-vi-song-co-sharp-r', 12, 0, 3030000, 2300000, '<p>Lò vi sóng cơ Sharp R-G225VN-BK 20 Lít</p>\r\n\r\n<p>Công suất vi sóng 700W/ Nướng 1000W</p>\r\n\r\n<p>Công suất tối đa của lò 1200W</p>\r\n\r\n<p>5 mức công suất.</p>\r\n\r\n<p>Chức năng hẹn giờ 30 phút.</p>\r\n\r\n<p>Kích thước nhỏ gọn và tiết kiệm không gian.&nbsp;Tay kéo mở cửa lò dễ thao tác.</p>\r\n\r\n<p>Có bảng điều khiển tiếng Anh - Việt.</p>\r\n\r\n<p>Thương hiệu: Nhật</p>\r\n\r\n<p>Sản xuất: Trung Quốc</p>', 'Không có', 'b3kcC_Screenshot 2022-06-10 165523.png', '0', '2022-06-11 04:03:36', '2022-06-11 04:03:36'),
(10, 3, 5, 'Máy hút bụi có hộc chứa Philips', 'may-hut-bui-co-hoc-chua-philips', 22, 0, 3499000, 2716000, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">Thông số kỹ thuật Luồng khí (tối đa): 37 l/s Công suất đầu vào (IEC): 1600 W Công suất đầu vào (tối đa): 1900 W Mức công suất âm thanh: 82 dB Công suất hút (tối đa): 370 W Chân không (tối đa): 33 kPa Dung tích chứa bụi: 1,5 L Kích thước sản phẩm (Dài x Rộng x Cao): 410 x 281 x 247 mm Trọng lượng của sản phẩm: 4,5 kg Kích thước đóng gói (Dài x Rộng x Cao): 525 x 320 x 315 mm</span></div>', 'Không có', 'Anzvf_Screenshot 2022-06-10 173527.png', '0', '2022-06-11 04:09:43', '2022-06-11 04:09:43'),
(11, 3, 5, 'Máy Lọc Không Khí Philips', 'may-loc-khong-khi-philips', 21, 0, 6890000, 5499000, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">Thông số kỹ thuật Tiêu thụ điện tối đa: 27 W Điện áp: 100-240 V Kích thước đóng gói (Dài x Rộng x Cao): 326*326*535 mm Trọng lượng của sản phẩm: 4,1 kg Kích thước sản phẩm (Dài x Rộng x Cao): 273 x 273 x 486 mm Trọng lượng, gồm cả hộp đóng gói: 5,4 kg Mức âm thanh tối thiểu (chế độ Ngủ): 15 dB Mức âm thanh tối đa (chế độ Turbo): 50 dB Chiều dài dây: 1,8 m Chế độ tự động: Có Chế độ Ngủ: Có Cài đặt tốc độ điều chỉnh bằng tay: 4 (Ngủ, Tốc độ 1, 2, Turbo) Phản hồi chất lượng không khí: Màu sắc, Số (PM2.5, IAI) Ánh sáng xung quanh tự động: Có</span></div>', 'Không có', 'oEVRR_Screenshot 2022-06-10 173916.png', '1', '2022-06-11 04:11:48', '2022-06-11 04:11:48'),
(12, 4, 5, 'Máy hút bụi không dây dạng cán', 'may-hut-bui-khong-day-dang-can', 12, 0, 7199000, 5499000, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">Thông số kỹ thuật Luồng khí (tối đa): Lên đến 800 l/ph Kiểu pin: Li-ion Điện áp pin: 18V Thời gian sạc: 5 giờ Thời gian chạy: 30 phút Thời gian chạy (tăng cường): 15 phút Mức công suất âm thanh: 80 dB Dung tích chứa bụi: 0,4L Trọng lượng của sản phẩm: 2,43 kg</span>', 'Không có', 'urGVs_Screenshot 2022-06-10 174124.png', '0', '2022-06-11 04:13:37', '2022-06-11 07:47:33'),
(13, 2, 1, 'Bộ Nồi Nhôm Anod SUNHOUSE', 'bo-noi-nhom-anod-sunhouse', 30, 0, 1132000, 699000, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">💥Thông số kỹ thuật - Màu sắc: Vàng - Chất liệu: Nhôm cao cấp nguyên chất, được xử lý công nghệ Anod - Số nồi: 3 - Kích thước: 16-20-24 (cm) - Độ dày thành nồi: 1.8/1.8/2.0 mm - Bề mặt bên ngoài: Trơn, chống xước - Quai nồi: Đinh tán, bọc nhựa cách nhiệt nhập khẩu từ HQ - Núm cầm: Bắt vít, bọc nhựa cách nhiệt nhập khẩu từ HQ - Vung nồi: Kính cường lực, chịu nhiệt dày 5mm - Đáy nồi: Phẳng rộng - Thương hiệu: SUNHOUSE - Xuất xứ: Việt Nam</span></div>', 'Không có', 'HJCAw_sp7.png', '0', '2022-06-11 04:19:08', '2022-06-11 04:19:08'),
(14, 2, 1, 'Chảo siêu bền đá Sunhouse', 'chao-sieu-ben-da-sunhouse', 33, 0, 330000, 0, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">*THÔNG SỐ KỸ THUẬT Màu sắc Ghi đen Chất liệu Hợp kim nhôm cao cấp Kích thước 30 cm Độ dày thành chảo 3mm Độ dày miệng chảo 6mm Bề mặt bên ngoài Phủ vân đá hoa cương marble Khả năng chống dính Có Tay cầm Bắt vít, phủ nhựa chịu nhiệt cao cấp Nắp chảo Không có Lòng chảo Chống dính Whitford (USA) phủ vân đá hoa cương Đáy từ Không Thương hiệu SUNHOUSE Xuất xứ Việt Nam </span></div>\r\n\r\n<div>&nbsp;</div>', 'Không có', 'dPf7U_sp8.png', '0', '2022-06-11 04:21:06', '2022-06-11 04:21:06'),
(15, 1, 2, 'Máy Ép Trái Cây Panasonic', 'may-ep-trai-cay-panasonic', 12, 0, 1370000, 0, '<p>Khi mô tơ bị quá tải hoặc máy hoạt động quá công suất, chế độ ngắt điện thông minh được kích hoạt làm động cơ tạm ngừng hoạt động, tránh khỏi các nguy cơ hỏng hóc ở động cơ máy, giúp kéo dài tuổi thọ sản phẩm. Ngoài ra, sản phẩm còn trang bị khóa 2 bên ngăn máy hoạt động khi chưa lắp đúng khớp đem đến sự an toàn cho người sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dung tích: 600 ml.</p>\r\n\r\n<p>Chất cối liệu: nhựa cao cấp.</p>\r\n\r\n<p>Lưỡi dao thép không gỉ.</p>\r\n\r\n<p>Tự ngắt điện nếu máy chạy quá tải.</p>\r\n\r\n<p>Cấu tạo máy dễ tháo lắp</p>\r\n\r\n<p>Bảo hành: 12 tháng</p>', 'Không có', 'fi9Nl_Screenshot 2022-06-10 164038.png', '1', '2022-06-11 04:26:49', '2022-06-11 04:27:11'),
(16, 1, 2, 'Nồi cơm điện tử Panasonic SR-CL', 'noi-com-dien-tu-panasonic-sr-cl', 22, 0, 2090000, 0, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">ĐẶC ĐIỂM NỔI BẬT<br />\r\n- Lòng nồi dày 2,2 mm giúp giữ nhiệt hoàn hảo, cung cấp nhiệt đồng đều đến từng hạt gạo và giúp cơm thơm hơn, giữ nguyên vị ngọt tự nhiên của gạo<br />\r\n- Bằng việc kết hợp thông minh giữa vật liệu truyền nhiệt và giữ nhiệt, quá trình nấu cơm trở nên lý tưởng và gần như hoàn hảo<br />\r\n- Menu tự động được thiết kế dựa trên các tùy chọn về độ cứng của cơm và các tùy chọn tốt hơn cho sức khỏe bằng việc điều chỉnh nhiệt thích hợp theo từng chế độ được chọn<br />\r\n- Màn hình LED trắng sáng trên mặt nồi giúp người dùng có thể quan sát rõ ràng vào bất cứ thời điểm nào trong ngày cũng như vận hành dễ dàng<br />\r\n- Nắp bên trong và lỗ thông hơi có thể dễ dàng tháo rời để vệ sinh rồi lắp lại</span></div>', 'Không có', 'GGsNb_Screenshot 2022-06-10 164346.png', '0', '2022-06-11 06:32:57', '2022-06-11 06:32:57'),
(17, 1, 2, 'Máy Đánh Trứng Để Bàn Panasonic', 'may-danh-trung-de-ban-panasonic', 12, 0, 1372000, 1270000, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">THÔNG SỐ KỸ THUẬT<br />\r\n- Máy đánh trứng cầm tay + Trọng lượng (xấp xỉ): 1,08 kg + Kích thước (xấp xỉ) R×S×C: 9,3 cm×19,5 cm×15,1 cm<br />\r\n- Máy đánh trứng để bàn + Trọng lượng (xấp xỉ): 1,91 kg + Kích thước (xấp xỉ) R×S×C: 19,8 cm×27 cm×35 cm<br />\r\nThương hiệu của: Nhật Bản<br />\r\nSản xuất tại: Trung Quốc Hãng: Panasonic</span></div>', 'Không có', '4CmZf_Screenshot 2022-06-10 164609.png', '1', '2022-06-11 06:35:39', '2022-06-11 06:35:39'),
(18, 1, 2, 'Máy Xay Sinh Tố Panasonic MX', 'may-xay-sinh-to-panasonic-mx', 33, 0, 850000, 0, '<p>ĐẶC ĐIỂM NỔI BẬT</p>\r\n\r\n<p>-Có 1 cối xay sinh tố và 1 cối xay khô phù hợp nhu cầu xay thực phẩm cơ bản trong gia đình.</p>\r\n\r\n<p>-Cối xay sinh tố dung tích lớn 1.5 lít xay được nhiều trái cây cùng lúc tiết kiệm điện, thời gian</p>\r\n\r\n<p>-Cối xay khô dung tích 50 g dùng để xay các loại hạt như tiêu, đậu, ngũ cốc…</p>\r\n\r\n<p>-Lưỡi dao bằng thép không gỉ cùng công suất mạnh mẽ 330 W giúp xay nhuyễn, trộn đều thực phẩm nhanh chóng</p>\r\n\r\n<p>-Có 2 tốc độ xay và chế độ tự làm sạch hiệu quả</p>\r\n\r\n<p>-Máy xay sinh tố chỉ hoạt động khi cối được lắp đúng khớp vào thân máy, tính năng tự ngắt điện khi quá nhiệt đảm bảo an toàn khi sử dụng.</p>\r\n\r\n<p>Kích thước: 355 x 205 x 335mm</p>', 'Không có', 'mI3Wf_Screenshot 2022-06-10 163813.png', '0', '2022-06-11 06:42:30', '2022-06-11 06:42:30'),
(19, 4, 2, 'Máy Hút Bụi Panasonic MC', 'may-hut-bui-panasonic-mc', 12, 0, 2715000, 2525000, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">ĐẶC ĐIỂM NỔI BẬT<br />\r\n- Mô-tơ hiệu suất cao hút bụi nhanh.<br />\r\n- Công suất đầu vào tối đa 1600 W.<br />\r\n- Công suất hút 350 W - Bộ lọc HEPA kép.<br />\r\n- Khoang chứa bụi lớn 1.2 lít.<br />\r\n- Ống hút bụi nhựa thu gọn, có thể kéo dài.<br />\r\n- Chiều dài dây nguồn 5 mét. </span>\r\n<div>&nbsp;</div>', 'Không có', 'VDLig_Screenshot 2022-06-10 171328.png', '0', '2022-06-11 06:45:04', '2022-06-11 07:47:33'),
(20, 1, 2, 'Lò Nướng Panasonic NB', 'lo-nuong-panasonic-nb', 8, 1, 3758000, 3480000, '<p>ĐẶC ĐIỂM SẢN PHẨM:</p>\r\n\r\n<p>Lò Nướng Panasonic NB-H3203KRA đa dạng: Có thể chọn nướng độc lập hoặc kết hợp hai thanh nhiệt cùng lúc, điều chỉnh nhiệt độ linh hoạt tùy vào công thức nấu ăn</p>\r\n\r\n<p>Nhiệt độ ổn định: Cửa kính cách nhiệt hai lớp chống thất thoát nhiệt, giúp giữ nhiệt lâu hơn &amp; nhiệt năng tỏa ra đều giúp món nướng vàng giòn và thơm ngon</p>\r\n\r\n<p>Tiện lợi sử dụng: Thiết kế khoang lò rộng và lựa chọn nhiệt độ nướng trải rộng, đáp ứng mọi nhu cầu sử dụng</p>\r\n\r\n<p>Dung tích: 32L</p>\r\n\r\n<p>Công suất: 1500W</p>\r\n\r\n<p>Thời gian bảo hành: 12 Tháng</p>', 'Không có', 'xeXMw_Screenshot 2022-06-10 163518.png', '1', '2022-06-11 06:46:58', '2022-06-11 07:29:04'),
(21, 2, 1, 'Bộ Nồi 5 Đáy SUNHOUSE MAMA', 'bo-noi-5-day-sunhouse-mama', 30, 0, 1132000, 699000, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">✅THÔNG SỐ KỸ THUẬT<br />\r\n✨Màu sắc: Bạc<br />\r\n✨Chất liệu: Inox<br />\r\n✨Số nồi: 3<br />\r\n✨Kích thước: - Đường kính lòng nồi: 16 - 20 - 24 cm<br />\r\n✨Bề mặt ngoài: Sáng bóng, bền đẹp, dễ dàng vệ sinh<br />\r\n✨ Khả năng chống dính: Không<br />\r\n✨Quai nồi: Quai Inox đinh tán chắc chắn, chịu lực tốt<br />\r\n✨Núm cầm: Núm Inox thiết kế tinh tế<br />\r\n✨Vung nồi: Vung kính trong suốt, cường lực siêu bền<br />\r\n✨Đáy nồi: Đáy từ, sử dụng trên mọi loại bếp<br />\r\n✨Đặc điểm khác: Giữ nhiệt tốt, tỏa nhiệt đều - Không bị oxi hóa, an toàn cho sức khỏe<br />\r\n✨Thương hiệu: SUNHOUSE<br />\r\n✨Xuất xứ: Việt Nam</span>', 'Không có', 'Szwxq_sp6.png', '1', '2022-06-11 06:52:59', '2022-06-11 07:20:04'),
(22, 2, 1, 'Chảo Sâu Vân Đá Stone Pro', 'chao-sau-van-da-stone-pro', 39, 1, 300000, 0, '<p>📍THÔNG SỐ KỸ THUẬT</p>\r\n\r\n<p>Mã sản phẩm: SHS20MRE</p>\r\n\r\n<p>Chất liệu: Nhôm</p>\r\n\r\n<p>Độ dày thành chảo: 2.4 mm</p>\r\n\r\n<p>Bề mặt bên ngoài: Sơn chịu nhiệt</p>\r\n\r\n<p>Tay cầm: Nhựa bakelit</p>\r\n\r\n<p>Lòng chảo: Chống dính vân đá</p>\r\n\r\n<p>Đáy chảo: Đáy từ</p>\r\n\r\n<p>Kích thước sản phẩm: Đường kính lòng nồi: 20 cm</p>\r\n\r\n<p>Chiều cao thân: 7 cm</p>\r\n\r\n<p>Khối lượng: 0.475 kg</p>\r\n\r\n<p>Thương hiệu: SUNHOUSE</p>\r\n\r\n<p>Xuất xứ: Việt Nam</p>', 'Không có', 'u2MW6_sp9.png', '0', '2022-06-11 06:55:38', '2022-06-11 07:49:59'),
(23, 1, 1, 'Ấm Siêu Tốc Inox SUNHOUSE HAPPY', 'am-sieu-toc-inox-sunhouse-happy', 40, 0, 120000, 0, '<p>✨ Thông số kỹ thuật</p>\r\n\r\n<p>Dung tích 1.5 lít</p>\r\n\r\n<p>Màu sắc Trắng bạc</p>\r\n\r\n<p>Thân ấm Thép không gỉ</p>\r\n\r\n<p>Điện áp 220V~/ 50Hz</p>\r\n\r\n<p>Công suất 1500W</p>\r\n\r\n<p>Nắp ấm Nhựa chịu nhiệt siêu bền</p>\r\n\r\n<p>Tay cầm Nhựa chịu nhiệt siêu bền</p>\r\n\r\n<p>Nút mở Nút ấn tại nắp</p>\r\n\r\n<p>Công tắc nguồn Nút bấm</p>\r\n\r\n<p>Rơ-le Tự động ngắt khi nước sôi hoặc cạn nước</p>\r\n\r\n<p>Đế tiếp điện Đế tiếp điện không dây xoay 360 độ</p>\r\n\r\n<p>Đèn báo Đèn tự động báo hiệu bật/tắt</p>\r\n\r\n<p>Vạch báo mức nước Không</p>\r\n\r\n<p>Thương hiệu HAPPY TIME</p>\r\n\r\n<p>Xuất xứ Trung Quốc</p>\r\n\r\n<p>Trọng lượng 0.74 kg</p>\r\n\r\n<p>Bảo hành 12 tháng</p>', 'Không có', 'zKBZh_Screenshot 2022-06-10 155630.png', '0', '2022-06-11 06:57:31', '2022-06-11 06:57:31'),
(24, 2, 1, 'Dao Gọt Hoa Quả SUNHOUSE', 'dao-got-hoa-qua-sunhouse', 55, 0, 37000, 0, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">THÔNG SỐ KỸ THUẬT<br />\r\n📍Chất liệu: Thép SUS420J2<br />\r\n📍Kích thước lưỡi dao: 10cm<br />\r\n📍Thương hiệu: SUNHOUSE<br />\r\n📍Xuất xứ: Việt Nam<br />\r\n📍Màu sắc: Bạc<br />\r\n📍 Công nghệ: Mài đơn đến 65% lưỡi dao<br />\r\n📍Độ cứng: 52±2HRC</span>', 'Không có', 'b3RK9_Screenshot 2022-06-10 160056.png', '0', '2022-06-11 06:59:05', '2022-06-11 06:59:05'),
(25, 2, 1, 'Bộ dao 2 chiếc Eco Family', 'bo-dao-2-chiec-eco-family', 42, 1, 100000, 0, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">Thông số kỹ thuật Tên sản phẩm Bộ dao 2 chiếc Eco Family Sunhouse KS-KN2E1 Nhóm sản phẩm Dao Eco Family Sunhouse Vật liệu Chất liệu Lưỡi dao: Thép SUS420J2 Chuôi dao: Nhựa PP Kích thước Lưỡi dao: - Gọt: 10±0,5 cm - Làm Bếp đa năng: 16.5±0,7 cm Thương hiệu SUNHOUSE Xuất xứ Việt Nam Màu sắc Lưỡi dao: Bạc Chuôi dao: Đen Độ cứng Lưỡi dao: 52±2 HRC</span>', 'Không có', 'xG1eG_Screenshot 2022-06-10 160317.png', '0', '2022-06-11 07:00:21', '2022-06-11 07:28:13'),
(26, 1, 1, 'Bếp Hồng Ngoại Đơn Sunhouse', 'bep-hong-ngoai-don-sunhouse', 22, 1, 890000, 580000, '<p>THÔNG SỐ KỸ THUẬT</p>\r\n\r\n<p>⏩Công suất: 2000W</p>\r\n\r\n<p>⏩Điện áp: 220V/ 50Hz</p>\r\n\r\n<p>⏩ Chế độ: Đun, Súp, Nướng, Rán, Hâm nóng</p>\r\n\r\n<p>⏩ Chất liệu: Kính cường lực, chịu nhiệt đến 600 độ C</p>\r\n\r\n<p>⏩ Kích thước mặt kính: 259 x 259 mm</p>\r\n\r\n<p>⏩ Loại nồi sử dụng: Tất cả các loại nồi</p>\r\n\r\n<p>⏩Bảng điều khiển: Phím bấm cơ</p>\r\n\r\n<p>⏩Chức năng: Có</p>\r\n\r\n<p>⏩Chức năng khóa trẻ em: Không</p>\r\n\r\n<p>⏩ Tự động ngắt khi quá tải: Có</p>\r\n\r\n<p>⏩ Phụ kiện đi kèm: Vỉ nướng</p>\r\n\r\n<p>⏩Kích thước: 360x290x65mm</p>\r\n\r\n<p>⏩ Bảo hành: 12 tháng</p>\r\n\r\n<p>⏩Xuất xứ: Trung Quốc</p>', 'Nồi lẩu tặng kèm', 'nnH4l_Screenshot 2022-06-10 155222.png', '1', '2022-06-11 07:01:39', '2022-06-11 07:50:16'),
(27, 1, 1, 'Máy xay sinh tố Sunhouse', 'may-xay-sinh-to-sunhouse', 20, 3, 1241000, 814000, '<p>Khóa an toàn: Có</p>\r\n\r\n<p>✅ Tốc độ: 2 tốc độ, 1 chế độ nhồi</p>\r\n\r\n<p>✅ Điện áp: 220V~/50Hz</p>\r\n\r\n<p>✅ Chức năng: Xay hoa quả, sinh tố + Xay thịt, cá, tôm + Xay thực phẩm khô</p>\r\n\r\n<p>✅ Chất liệu vỏ máy: Nhựa cao cấp</p>\r\n\r\n<p>✅ Chất liệu cối xay: Nhựa cao cấp</p>\r\n\r\n<p>✅ Màn hình: Không</p>\r\n\r\n<p>✅ Lưới lọc: Có</p>\r\n\r\n<p>✅ Lưỡi dao xay: Inox</p>\r\n\r\n<p>✅ Bảng điều khiển: Núm xoay</p>\r\n\r\n<p>✅ Phụ kiện đi kèm: 3 cối linh hoạt + 3 lưỡi dao riêng</p>\r\n\r\n<p>✅ Thương hiệu: SUNHOUSE</p>\r\n\r\n<p>✅ Bảo hành: 12 tháng</p>\r\n\r\n<p>✅ Xuất xứ: Trung Quốc</p>', 'Không có', 'AUVak_Screenshot 2022-06-10 160846.png', '0', '2022-06-11 07:04:49', '2022-06-11 07:51:17'),
(28, 1, 1, 'Máy xay sinh tố đa năng Sunhouse', 'may-xay-sinh-to-da-nang-sunhouse', 33, 0, 1516000, 1189000, '<p>Khóa an toàn: Có</p>\r\n\r\n<p>✅ Tốc độ: 2 tốc độ, 1 chế độ nhồi</p>\r\n\r\n<p>✅ Điện áp: 220V~/50Hz</p>\r\n\r\n<p>✅ Chức năng: Xay hoa quả, sinh tố + Xay thịt, cá, tôm + Xay thực phẩm khô</p>\r\n\r\n<p>✅ Chất liệu vỏ máy: Nhựa cao cấp</p>\r\n\r\n<p>✅ Chất liệu cối xay: Nhựa cao cấp</p>\r\n\r\n<p>✅ Màn hình: Không</p>\r\n\r\n<p>✅ Lưới lọc: Có</p>\r\n\r\n<p>✅ Lưỡi dao xay: Inox</p>\r\n\r\n<p>✅ Bảng điều khiển: Núm xoay</p>\r\n\r\n<p>✅ Phụ kiện đi kèm: 3 cối linh hoạt + 3 lưỡi dao riêng</p>\r\n\r\n<p>✅ Thương hiệu: SUNHOUSE</p>\r\n\r\n<p>✅ Bảo hành: 12 tháng</p>\r\n\r\n<p>✅ Xuất xứ: Trung Quốc</p>', 'Không có', 'XOiD0_Screenshot 2022-06-10 161134.png', '1', '2022-06-11 07:05:54', '2022-06-11 07:05:54'),
(29, 2, 3, 'Máy Vắt Cam Sharp EJ-J408-WH', 'may-vat-cam-sharp-ej-j408-wh', 38, 2, 480000, 370000, '<p>• Máy Vắt Cam Sharp EJ-J408-WH Tiết Kiệm Điện</p>\r\n\r\n<p>• Máy vắt cam kiểu dáng gọn đẹp, hiện đại, dùng đẹp trong mọi không gian.</p>\r\n\r\n<p>• Dùngép các loại trái cây họ cam như cam, quýt, chanh, bưởi.</p>\r\n\r\n<p>• Vắt êm, hiệu quả, tiết kiệm điện.</p>\r\n\r\n<p>• 1 đầu vắt bằng nhựa, lưới lọc bằng thép không gỉ.</p>\r\n\r\n<p>• Chất liệu nhựa cao cấp, có thể tháo rời.</p>\r\n\r\n<p>• Thương hiệu: Nhật</p>\r\n\r\n<p>• Sản xuất: Trung Quốc</p>', 'Không có', '0NuPv_Screenshot 2022-06-10 170007.png', '1', '2022-06-11 07:07:53', '2022-06-11 07:50:39'),
(30, 1, 3, 'Nồi cơm Sharp gài nắp', 'noi-com-sharp-gai-nap', 21, 1, 730000, 0, '<p>Nồi cơm điện tử Sharp 1.8L KS-COM186EV-GL Công Suất 830W - Hàng Chính Hãng Bảo Hành 15 Tháng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>• Dung tích: 1.8 lít</p>\r\n\r\n<p>• Công suất: 830W</p>\r\n\r\n<p>• Giữ ấm 12 giờ</p>\r\n\r\n<p>• Lồng nồi dày 1.8mm, chống dính</p>\r\n\r\n<p>• 10 chế độ : nấu nhanh, nấu chậm, hâm nóng, cơm trộn, nấu cháo, làm bánh, vệ sinh lòng nồi, giữ nóng, cài đặt thời gian, hấp</p>\r\n\r\n<p>• Mặt điều khiển LED</p>\r\n\r\n<p>• Nút bấm: dạng nhấn</p>\r\n\r\n<p>• Kích thước nồi cơm điện (RxSxC) mm:407 x 292 x 263</p>', 'Khay nhỏ', 'LHlHy_Screenshot 2022-06-10 165325.png', '0', '2022-06-11 07:10:53', '2022-06-11 07:27:55'),
(31, 1, 3, 'Bình đun siêu tốc Sharp 1.7 lít', 'binh-dun-sieu-toc-sharp-17-lit', 34, 0, 540000, 0, '<p>• Bình đun siêu tốc Sharp 1.7 lít EKJ-17EVPS-PK</p>\r\n\r\n<p>• Công suất lớn 1850-2200W</p>\r\n\r\n<p>• Nguồn điện220-240V/50-60Hz</p>\r\n\r\n<p>• Giúp châm nước dễ dàng, độ mở rộng giúp làm sạch dễ dàng và tránh tiếp xúc với hơi nước nóng</p>\r\n\r\n<p>• Bên trong thép không gỉ-bên ngoài bằng nhựa. Thiết kế hai lớp-hạn chế nóng bề mặt</p>\r\n\r\n<p>• Đế xoay 360;Chế độ an toàn;Nắp bật lò xo</p>\r\n\r\n<p>• Đèn báo hoạt động;Lưới lọc</p>\r\n\r\n<p>• Chiều dài dây nguồn (cm)70-75cm</p>\r\n\r\n<p>• Kích thước (RxSxC) (mm)150x222x256;Trọng lương (kg) 0.98kgs</p>', 'Không có', 'RffBU_Screenshot 2022-06-10 170629.png', '0', '2022-06-11 07:12:14', '2022-06-11 07:48:06'),
(32, 1, 4, 'Nồi cơm điện Electrolux 1.8L', 'noi-com-dien-electrolux-18l', 23, 0, 650000, 590000, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">THÔNG TIN SẢN PHẨM: Thương hiệu: Electrolux Model: E2RC1-320W Xuất xứ China (Trung Quốc) Bảo hành 24 tháng (02 năm) Công suất (W) 700 - 833W Tần số (Hz) 50Hz Điện áp (V) 220V Kiểu lắp đặt Để bàn Đèn báo hiệu LED Bảng điều khiển Nút gạt Màu sắc Trắng đen Dung tích (L) 1.8 Lít Chất liệu sản phẩm Kim loại - nhựa Chất liệu lòng nồi Hợp kim nhôm phủ chống dính Công nghệ sản phẩm Công nghệ nhiệt 1D Kiểu nắp Nắp rời Kích thước sản phẩm (D x R x C cm): 28.5 x 27.5 x 26 cm Trọng lượng sản phẩm (kg): 2.4 Kg</span>', 'Không có', '9WVjl_Screenshot 2022-06-10 172550.png', '1', '2022-06-11 07:14:04', '2022-06-11 07:54:21'),
(33, 1, 4, 'Bếp nấu điện từ Electrolux', 'bep-nau-dien-tu-electrolux', 9, 3, 1218000, 0, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">Bếp Điện Từ Electrolux ETD29KC thiết kế với bàn phím điều khiển cảm ứngi cùng màn hình Led hiển thị giúp người dùng thuận tiện và dễ dàng hơn với các thao tác chọn lựa đồng thời mang đến tính bền bỉ lâu dài cho quá trình sử dụng. Bếp có bề mặt được làm bằng chất liệu kính có khả năng chịu nhiệt, chịu lực , chống trầy và sáng bóng giúp bạn có thể nấu thức ăn trong thời gian dài mà không xảy ra tình trạng nứt vỡ và dễ dàng hơn với việc vệ sinh cho bếp sau khi sử dụng. Bếp được thiết kế chuyên dụng phù hợp với các loại nồi có đế nhiễm từ nhằm bảo vệ và duy trì tuổi thọ cho bếp, đồng thời làm tăng khả năng hoạt động cho bếp trong quá trình nấu nướng. Chức năng khóa an toàn khikích hoạt sẽ cóvô hiệu hóaphím điều khiển,tự động ngắt khi quá tải, đồ dùng không tương thích và khi nồi không có thức ăn bên trong hạn chế sự cố , Chức năng hẹn giờ sẽ giúp bạn không phải mất thời gian quan sát và canh chừng thức ăn được nấu và tiết kiệm điện năng.Công suất: 2000W Điều khiển cảm ứng Màn hình LED hiển thị Bề mặt kính chịu nhiệt Phù hợp với nồi có đế nhiễm từ</span></div>', 'Không có', 'dFBhN_Screenshot 2022-06-10 173108.png', '0', '2022-06-11 07:15:19', '2022-06-11 20:25:08'),
(34, 1, 4, 'Máy nướng bánh mì Electrolux', 'may-nuong-banh-mi-electrolux', 19, 2, 690000, 0, '<span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">THÔNG TIN CHI TIẾT: Thương hiệu: Electrolux Model: E2TS1-100W Loại lò nướng Máy nướng bánh mì Công suất 730 - 870 W Chức năng chínhNướng bánh mì Tiện ích Khay chứa vụnTùy chọn 7 mức cài đặt nhiệt độ3 chế độ lựa chọn rã đông, hâm nóng, hủy chọn Nhiệt độ 5 mức điều chỉnh Kích thước Ngang 29.8 cm - Cao 19 cm - Sâu 16 cm Khối lượng 1.93 kg Thương hiệu của Thuỵ Điển Sản xuất tại Trung Quốc Bảo hanh: 24 tháng</span>', 'Không có', 'WibsL_Screenshot 2022-06-10 172215.png', '0', '2022-06-11 07:16:28', '2022-06-11 07:50:56'),
(35, 2, 4, 'Bếp gas để bàn Electrolux', 'bep-gas-de-ban-electrolux', 14, 1, 1790000, 1650000, '<div style=\"text-align: justify;\"><span style=\"color:rgba(0, 0, 0, 0.8); font-family:helvetica neue,helvetica,arial,文泉驛正黑,wenquanyi zen hei,hiragino sans gb,儷黑 pro,lihei pro,heiti tc,微軟正黑體,microsoft jhenghei ui,microsoft jhenghei,sans-serif; font-size:14px\">THÔNG TIN CHI TIẾT: Thương hiệu: Electrolux Model: ETG727GKR Loại bếp: Bếp đôi Hệ thống đánh lửa: Đánh lửa Magneto bằng núm xoay Số bếp: 2 bếp Mặt bếp: Kính cường lực, chịu nhiệt cao Kiềng bếp: Kim loại sơn tĩnh điện, kiềng bếp có thể tháo rời được Chất liệu đầu đốt: Đồng thau cho lửa xanh Kiểu đầu đốt: Đầu đốt thông thường Công suất: 3 kW/h/lò Kích thước: Ngang 71 cm - Dọc 41 cm - Cao 11 cm Tiện ích: Mặt bếp dễ vệ sinhNấu nhanh không đen đáy nồi Khối lượng: 8.9 kg Kích thước lỗ đá: Không lắp âm Thương hiệu của: Thụy Điển Sản xuất tại: Trung Quốc Bảo hành: 24 tháng</span></div>', 'Không có', 'xku9j_Screenshot 2022-06-10 172821.png', '1', '2022-06-11 07:18:18', '2022-06-11 08:54:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(11) UNSIGNED NOT NULL,
  `pro_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `pro_image`, `created_at`, `updated_at`) VALUES
(5, 2, 'sp1.png', NULL, NULL),
(6, 2, 'sp2.png', NULL, NULL),
(7, 2, 'sp3.png', NULL, NULL),
(8, 2, 'sp4.png', NULL, NULL),
(9, 3, 'sp5.1.png', NULL, NULL),
(10, 3, 'sp5.2.png', NULL, NULL),
(11, 3, 'sp5.png', NULL, NULL),
(12, 4, 'Screenshot 2022-06-10 162213.png', NULL, NULL),
(13, 4, 'Screenshot 2022-06-10 162224.png', NULL, NULL),
(14, 4, 'Screenshot 2022-06-10 162237.png', NULL, NULL),
(15, 4, 'Screenshot 2022-06-10 162250.png', NULL, NULL),
(16, 5, 'Screenshot 2022-06-10 163230.png', NULL, NULL),
(17, 5, 'Screenshot 2022-06-10 163243.png', NULL, NULL),
(18, 5, 'Screenshot 2022-06-10 163253.png', NULL, NULL),
(19, 6, 'Screenshot 2022-06-10 162925.png', NULL, NULL),
(20, 6, 'Screenshot 2022-06-10 162939.png', NULL, NULL),
(21, 6, 'Screenshot 2022-06-10 162955.png', NULL, NULL),
(22, 7, 'Screenshot 2022-06-10 165022.png', NULL, NULL),
(23, 7, 'Screenshot 2022-06-10 165034.png', NULL, NULL),
(24, 7, 'Screenshot 2022-06-10 165045.png', NULL, NULL),
(25, 7, 'Screenshot 2022-06-10 165054.png', NULL, NULL),
(26, 8, 'Screenshot 2022-06-10 171057.png', NULL, NULL),
(27, 8, 'Screenshot 2022-06-10 171108.png', NULL, NULL),
(28, 8, 'Screenshot 2022-06-10 171119.png', NULL, NULL),
(29, 8, 'Screenshot 2022-06-10 171130.png', NULL, NULL),
(30, 9, 'Screenshot 2022-06-10 165745.png', NULL, NULL),
(31, 9, 'Screenshot 2022-06-10 165757.png', NULL, NULL),
(32, 9, 'Screenshot 2022-06-10 165807.png', NULL, NULL),
(33, 10, 'Screenshot 2022-06-10 171328.png', NULL, NULL),
(34, 10, 'Screenshot 2022-06-10 171339.png', NULL, NULL),
(35, 10, 'Screenshot 2022-06-10 171349.png', NULL, NULL),
(36, 10, 'Screenshot 2022-06-10 171400.png', NULL, NULL),
(37, 10, 'Screenshot 2022-06-10 171411.png', NULL, NULL),
(38, 11, 'Screenshot 2022-06-10 173916.png', NULL, NULL),
(39, 11, 'Screenshot 2022-06-10 173926.png', NULL, NULL),
(40, 11, 'Screenshot 2022-06-10 173934.png', NULL, NULL),
(41, 11, 'Screenshot 2022-06-10 173949.png', NULL, NULL),
(42, 12, 'Screenshot 2022-06-10 174124.png', NULL, NULL),
(43, 12, 'Screenshot 2022-06-10 174135.png', NULL, NULL),
(44, 12, 'Screenshot 2022-06-10 174143.png', NULL, NULL),
(45, 12, 'Screenshot 2022-06-10 174155.png', NULL, NULL),
(46, 13, 'sp7.1.png', NULL, NULL),
(47, 13, 'sp7.2.png', NULL, NULL),
(48, 13, 'sp7.3.png', NULL, NULL),
(49, 13, 'sp7.png', NULL, NULL),
(50, 14, 'sp8.1.png', NULL, NULL),
(51, 14, 'sp8.2.png', NULL, NULL),
(52, 14, 'sp8.3.png', NULL, NULL),
(53, 14, 'sp9.1.png', NULL, NULL),
(54, 15, 'Screenshot 2022-06-10 164038.png', NULL, NULL),
(55, 15, 'Screenshot 2022-06-10 164049.png', NULL, NULL),
(56, 15, 'Screenshot 2022-06-10 164101.png', NULL, NULL),
(57, 15, 'Screenshot 2022-06-10 164112.png', NULL, NULL),
(58, 16, 'Screenshot 2022-06-10 164359.png', NULL, NULL),
(59, 16, 'Screenshot 2022-06-10 164409.png', NULL, NULL),
(60, 16, 'Screenshot 2022-06-10 164419.png', NULL, NULL),
(61, 17, 'Screenshot 2022-06-10 164609.png', NULL, NULL),
(62, 17, 'Screenshot 2022-06-10 164621.png', NULL, NULL),
(63, 17, 'Screenshot 2022-06-10 164632.png', NULL, NULL),
(64, 17, 'Screenshot 2022-06-10 164641.png', NULL, NULL),
(65, 18, 'Screenshot 2022-06-10 163813.png', NULL, NULL),
(66, 18, 'Screenshot 2022-06-10 163828.png', NULL, NULL),
(67, 18, 'Screenshot 2022-06-10 163839.png', NULL, NULL),
(68, 19, 'Screenshot 2022-06-10 171328.png', NULL, NULL),
(69, 19, 'Screenshot 2022-06-10 171339.png', NULL, NULL),
(70, 19, 'Screenshot 2022-06-10 171349.png', NULL, NULL),
(71, 19, 'Screenshot 2022-06-10 171400.png', NULL, NULL),
(72, 19, 'Screenshot 2022-06-10 171411.png', NULL, NULL),
(73, 20, 'Screenshot 2022-06-10 163518.png', NULL, NULL),
(74, 20, 'Screenshot 2022-06-10 163529.png', NULL, NULL),
(75, 20, 'Screenshot 2022-06-10 163542.png', NULL, NULL),
(76, 20, 'Screenshot 2022-06-10 163553.png', NULL, NULL),
(77, 21, 'sp6.1.png', NULL, NULL),
(78, 21, 'sp6.2.png', NULL, NULL),
(79, 21, 'sp6.3.png', NULL, NULL),
(80, 21, 'sp6.png', NULL, NULL),
(81, 22, 'Screenshot 2022-06-10 155011.png', NULL, NULL),
(82, 22, 'Screenshot 2022-06-10 155028.png', NULL, NULL),
(83, 22, 'sp9.1.png', NULL, NULL),
(84, 22, 'sp9.png', NULL, NULL),
(85, 23, 'Screenshot 2022-06-10 155630.png', NULL, NULL),
(86, 23, 'Screenshot 2022-06-10 155644.png', NULL, NULL),
(87, 23, 'Screenshot 2022-06-10 155654.png', NULL, NULL),
(88, 23, 'Screenshot 2022-06-10 155704.png', NULL, NULL),
(89, 24, 'Screenshot 2022-06-10 160056.png', NULL, NULL),
(90, 24, 'Screenshot 2022-06-10 160110.png', NULL, NULL),
(91, 24, 'Screenshot 2022-06-10 160122.png', NULL, NULL),
(92, 24, 'Screenshot 2022-06-10 160133.png', NULL, NULL),
(93, 24, 'Screenshot 2022-06-10 160146.png', NULL, NULL),
(94, 25, 'Screenshot 2022-06-10 160317.png', NULL, NULL),
(95, 25, 'Screenshot 2022-06-10 160335.png', NULL, NULL),
(96, 25, 'Screenshot 2022-06-10 160347.png', NULL, NULL),
(97, 25, 'Screenshot 2022-06-10 160400.png', NULL, NULL),
(98, 25, 'Screenshot 2022-06-10 160412.png', NULL, NULL),
(99, 26, 'Screenshot 2022-06-10 155209.png', NULL, NULL),
(100, 26, 'Screenshot 2022-06-10 155222.png', NULL, NULL),
(101, 26, 'Screenshot 2022-06-10 155234.png', NULL, NULL),
(102, 26, 'Screenshot 2022-06-10 155246.png', NULL, NULL),
(103, 27, 'Screenshot 2022-06-10 160900.png', NULL, NULL),
(104, 27, 'Screenshot 2022-06-10 160913.png', NULL, NULL),
(105, 27, 'Screenshot 2022-06-10 160925.png', NULL, NULL),
(106, 28, 'Screenshot 2022-06-10 161109.png', NULL, NULL),
(107, 28, 'Screenshot 2022-06-10 161134.png', NULL, NULL),
(108, 28, 'Screenshot 2022-06-10 161145.png', NULL, NULL),
(109, 28, 'Screenshot 2022-06-10 161157.png', NULL, NULL),
(110, 28, 'Screenshot 2022-06-10 161209.png', NULL, NULL),
(111, 29, 'Screenshot 2022-06-10 170007.png', NULL, NULL),
(112, 29, 'Screenshot 2022-06-10 170018.png', NULL, NULL),
(113, 29, 'Screenshot 2022-06-10 170029.png', NULL, NULL),
(114, 29, 'Screenshot 2022-06-10 170042.png', NULL, NULL),
(115, 29, 'Screenshot 2022-06-10 170053.png', NULL, NULL),
(116, 30, 'Screenshot 2022-06-10 165054.png', NULL, NULL),
(117, 30, 'Screenshot 2022-06-10 165306.png', NULL, NULL),
(118, 30, 'Screenshot 2022-06-10 165316.png', NULL, NULL),
(119, 30, 'Screenshot 2022-06-10 165325.png', NULL, NULL),
(120, 30, 'Screenshot 2022-06-10 165336.png', NULL, NULL),
(121, 31, 'Screenshot 2022-06-10 170629.png', NULL, NULL),
(122, 31, 'Screenshot 2022-06-10 170639.png', NULL, NULL),
(123, 31, 'Screenshot 2022-06-10 170648.png', NULL, NULL),
(124, 31, 'Screenshot 2022-06-10 170701.png', NULL, NULL),
(125, 32, 'Screenshot 2022-06-10 172550.png', NULL, NULL),
(126, 32, 'Screenshot 2022-06-10 172559.png', NULL, NULL),
(127, 32, 'Screenshot 2022-06-10 172609.png', NULL, NULL),
(128, 33, 'Screenshot 2022-06-10 173108 - Copy.png', NULL, NULL),
(129, 33, 'Screenshot 2022-06-10 173108.png', NULL, NULL),
(130, 33, 'Screenshot 2022-06-10 173119 - Copy.png', NULL, NULL),
(131, 33, 'Screenshot 2022-06-10 173119.png', NULL, NULL),
(132, 34, 'Screenshot 2022-06-10 172215.png', NULL, NULL),
(133, 34, 'Screenshot 2022-06-10 172229.png', NULL, NULL),
(134, 34, 'Screenshot 2022-06-10 172238.png', NULL, NULL),
(135, 35, 'Screenshot 2022-06-10 172821.png', NULL, NULL),
(136, 35, 'Screenshot 2022-06-10 172832.png', NULL, NULL),
(137, 35, 'Screenshot 2022-06-10 172842.png', NULL, NULL),
(138, 35, 'Screenshot 2022-06-10 172852.png', NULL, NULL),
(139, 35, 'Screenshot 2022-06-10 172907.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_slide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `name_slide`, `image`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Thế giới đồ gia dụng', 'CHOov_pp1.jpg', 'the-gioi-do-gia-dung', 'Chào mừng bạn đến với chúng tôi', '2022-05-17 21:19:33', '2022-06-11 03:40:56'),
(3, 'Gian hàng của chúng tôi', 'g5qLr_tt2.jpg', 'gian-hang-cua-chung-toi', 'Gian hàng của chúng tôi', '2022-05-17 21:20:34', '2022-06-11 03:35:13'),
(4, 'Chào mừng quý khách', '6xGOV_slide.jpg', 'chao-mung-quy-khach', 'Hàng ngàn đồ gia dụng với giá ưu đãi', '2022-05-17 21:22:10', '2022-06-11 03:35:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staffs`
--

CREATE TABLE `staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_day` date NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staffs`
--

INSERT INTO `staffs` (`id`, `user_id`, `name`, `gender`, `birth_day`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Quản trị viên', 'Nam', '2022-06-11', '54 Triều Khúc, Thanh Xuân, Hà Nội', '0123456789', NULL, NULL),
(2, 2, 'Dương Thành Long', 'Nam', '2000-10-17', 'Như Thanh, Thanh Hóa', '0976737702', '2022-06-11 03:39:41', '2022-06-11 03:39:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 3,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, '$2y$10$/4p6MBGzDc4iAtH4Z8.NGOu14xQVJddBWdyDxwgoTuXlogmUyd5De', 1, NULL, NULL, NULL),
(2, 'mam@gmail.com', NULL, '$2y$10$EVZyPMn8XK94AP.lCGf.o.RjPNkmoaPeGYDaKQfroJuHQHfGAVQp.', 2, NULL, '2022-06-11 03:39:41', '2022-06-11 03:39:41'),
(3, 'dtlong@gmail.com', NULL, '$2y$10$wOHmyHWQMtLcMJaeWxz3zeuTxgsRPeMuQamL5Mtk8OyPjBAYm7dB.', 3, NULL, '2022-06-11 07:25:49', '2022-06-11 07:25:49'),
(4, 'duongthanhlong1710@gmail.com', NULL, '$2y$10$ME0z2L56/HES2xzw00Cge.iEzRxgEc8o.7Q1xrPyDFegU1kOYhTyW', 3, NULL, '2022-06-11 20:24:28', '2022-06-11 20:24:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`,`customer_id`),
  ADD KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`brand_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
