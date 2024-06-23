-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 23, 2024 lúc 10:14 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Chưa phân loại', 'sequi-alias-et-necessitatibus-consequatur-repudiandae-esse-vel', 10, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 'Thế giới', 'amet-eius-blanditiis-eos-sit-voluptates-voluptatum-a', 8, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(3, 'Xã hội', 'est-voluptates-alias-atque-nam-quas-est', 11, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(4, 'Kinh tế', 'aliquid-sapiente-velit-sint-deserunt-consequatur-cum', 4, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(5, 'Văn hóa', 'et-quas-eius-vero-et-eum-eos-reprehenderit', 12, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 'Giáo dục', 'laudantium-atque-libero-fuga', 9, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 'Thể thao', 'et-eum-impedit-exercitationem-ab-consequatur-fugit', 4, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(8, 'Giải trí', 'ipsam-quia-labore-magni', 11, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(9, 'Pháp luật', 'enim-aut-quia-qui-sapiente-dolor', 11, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 'Công nghệ', 'nemo-ducimus-nisi-quia-provident-ab-omnis', 11, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(11, 'Khoa học', 'asperiores-voluptate-sit-sit-aut', 13, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(12, 'Đời sống', 'aliquid-iure-quo-eum-veniam-dolorem-ipsum', 4, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(13, 'Xe cộ', 'nihil-velit-id-asperiores-consequatur-officia', 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(14, 'Nhà đất', 'sapiente-nemo-molestiae-unde', 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `the_comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `the_comment`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Eos ut sint voluptates aperiam inventore cupiditate. Voluptatum voluptate placeat accusamus alias itaque et ducimus.', 12, 14, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(5, 'Similique reprehenderit dolorem voluptas. Quas reiciendis qui dolorem ut. Qui sed deserunt natus nam aspernatur qui optio. Cupiditate sit corrupti vel alias.', 7, 26, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 'Dolor iste nostrum sed suscipit impedit. Eum omnis nihil ducimus voluptate repellendus. Sed illum nemo repellendus incidunt eum enim.', 6, 17, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 'Nulla est doloribus saepe. Praesentium hic ad ex in. Sunt aspernatur nulla ab quos quas qui consectetur. Quod necessitatibus aspernatur unde velit omnis enim ullam.', 12, 8, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(8, 'Nobis expedita quo ut perspiciatis. Molestiae provident aut voluptas neque. Et voluptatum in amet illum rerum dolores quod.', 10, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(9, 'Doloribus quaerat ut voluptatibus cumque veniam eaque adipisci. Beatae quis cum saepe. Rem aut sed sed. Tenetur hic officiis magnam enim quia incidunt laboriosam vitae.', 12, 5, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 'Provident alias ut sit officiis eveniet occaecati consequatur. Voluptatibus laudantium libero et sapiente fugit sed quis dolores. Ducimus ut officia sed itaque alias.', 6, 18, '2024-06-22 10:37:21', '2024-06-22 10:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `name`, `extension`, `path`, `imageable_id`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'voluptas', 'jpg', 'images/3.jpg', 1, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 'aut', 'jpg', 'images/15.jpg', 2, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(3, 'aspernatur', 'jpg', 'images/4.jpg', 3, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(4, 'perspiciatis', 'jpg', 'images/15.jpg', 4, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(5, 'distinctio', 'jpg', 'images/5.jpg', 5, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 'assumenda', 'jpg', 'images/8.jpg', 6, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 'a', 'jpg', 'images/2.jpg', 7, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(8, 'veritatis', 'jpg', 'images/5.jpg', 8, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(9, 'maxime', 'jpg', 'images/3.jpg', 9, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 'id', 'jpg', 'images/16.jpg', 10, 'App\\Models\\User', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(11, 'giaoduc.webp', 'webp', 'images/KZTUePkUIHAMcVPqTsopfQ1zXrjyfE7SLdTqtIgF.webp', 1, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:38:32'),
(12, 'theothao.png', 'png', 'images/FFGZVIB4kupKA8giR3xmnxnVcFsoxT82uvR9b2pL.png', 2, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:15:15'),
(13, 'xahoi.jpg', 'jpg', 'images/hpKJCeBYt8RX8zRlE4GBc68gXgJDHlHXunkTyVJS.jpg', 3, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:17:30'),
(14, 'xeco.webp', 'webp', 'images/k33Z73EuHuMy61fV6FcxwzquVriivQT07rdylK4w.webp', 4, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:28:02'),
(15, 'thegioi.jpg', 'jpg', 'images/mNRH3o3yvMAAaGbwVFqoWJve6t2B74pvYhlvHH3X.jpg', 5, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:30:25'),
(16, 'khoahoc.jpg', 'jpg', 'images/1GEaUrAcB33cL6Y1AO229gB4kWeV4zRf41MyWgi7.jpg', 6, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:32:15'),
(17, 'giaitri.jpg', 'jpg', 'images/5sfCNx9bDcKqrAXniAK4MQgxQetamchRQ2NI7Jpk.jpg', 7, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:33:05'),
(18, 'congnghe.webp', 'webp', 'images/9OBKdNS70hO9OYWZ8qpDb5uKcb2vj95tlc4qpW45.jpg', 8, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:40:32'),
(19, 'midu.jpg', 'jpg', 'images/PSWAFypwRO1Nm6oFNuGilyTuBlGRcZa6HHOHStOd.jpg', 9, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:33:53'),
(20, 'kinhte.jpg', 'jpg', 'images/A3uPa00S6E9L86AWIGvbcm9WZlPlSX6Ihcpmq85v.jpg', 10, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:35:38'),
(21, 'eligendi', 'jpg', 'images/1.jpg', 11, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(22, 'sint', 'jpg', 'images/7.jpg', 12, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(23, 'phapluat.jpg', 'jpg', 'images/v9RATR6qPq2qKKR24aUAXpKGurVtfQr2mlZCaWH5.jpg', 13, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:43:51'),
(24, 'vanhoa.webp', 'webp', 'images/shc29GR0Stt0By7UFeC3kyaSaOoNetvXqdMVxhZi.webp', 14, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-23 01:37:01'),
(25, 'in', 'jpg', 'images/4.jpg', 15, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(26, 'labore', 'jpg', 'images/9.jpg', 16, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(27, 'praesentium', 'jpg', 'images/18.jpg', 17, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(28, 'aliquid', 'jpg', 'images/19.jpg', 18, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(29, 'et', 'jpg', 'images/17.jpg', 19, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(30, 'quidem', 'jpg', 'images/5.jpg', 20, 'App\\Models\\Post', '2024-06-22 10:37:21', '2024-06-22 10:37:21');

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
(17, '2013_05_03_112149_create_roles_table', 1),
(18, '2014_10_12_000000_create_users_table', 1),
(19, '2014_10_12_100000_create_password_resets_table', 1),
(20, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2022_05_02_162532_create_categories_table', 1),
(23, '2022_05_03_164455_create_posts_table', 1),
(24, '2022_05_04_174339_create_post_tag_table', 1),
(25, '2022_05_04_175145_create_tags_table', 1),
(26, '2022_05_11_161202_create_comments_table', 1),
(27, '2022_05_11_173654_create_images_table', 1),
(28, '2022_05_21_072028_create_contacts_table', 1),
(29, '2022_06_04_173802_create_permissions_table', 1),
(30, '2022_06_04_174608_create_pivot_table_permissions_roles', 1),
(31, '2022_06_10_174744_create_settings_table', 1),
(32, '2022_06_25_050749_create_newsletter_migration', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 'admin.upload_tinymce_image', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(3, 'admin.posts.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(4, 'admin.posts.create', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(5, 'admin.posts.store', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 'admin.posts.show', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 'admin.posts.edit', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(8, 'admin.posts.update', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(9, 'admin.posts.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 'admin.posts.to_slug', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(11, 'admin.categories.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(12, 'admin.categories.create', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(13, 'admin.categories.store', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(14, 'admin.categories.show', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(15, 'admin.categories.edit', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(16, 'admin.categories.update', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(17, 'admin.categories.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(18, 'admin.tags.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(19, 'admin.tags.show', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(20, 'admin.tags.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(21, 'admin.comments.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(22, 'admin.comments.create', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(23, 'admin.comments.store', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(24, 'admin.comments.edit', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(25, 'admin.comments.update', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(26, 'admin.comments.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(27, 'admin.roles.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(28, 'admin.roles.create', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(29, 'admin.roles.store', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(30, 'admin.roles.edit', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(31, 'admin.roles.update', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(32, 'admin.roles.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(33, 'admin.users.index', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(34, 'admin.users.create', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(35, 'admin.users.store', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(36, 'admin.users.show', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(37, 'admin.users.edit', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(38, 'admin.users.update', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(39, 'admin.users.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(40, 'admin.contacts', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(41, 'admin.contacts.destroy', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(42, 'admin.setting.edit', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(43, 'admin.setting.update', '2024-06-22 10:37:21', '2024-06-22 10:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 2, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(3, 3, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(4, 4, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(5, 5, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 6, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 7, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(8, 8, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(9, 9, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 10, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(11, 11, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(12, 12, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(13, 13, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(14, 14, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(15, 15, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(16, 16, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(17, 17, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(18, 18, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(19, 19, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(20, 20, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(21, 21, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(22, 22, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(23, 23, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(24, 24, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(25, 25, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(26, 26, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(27, 27, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(28, 28, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(29, 29, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(30, 30, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(31, 31, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(32, 32, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(33, 33, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(34, 34, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(35, 35, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(36, 36, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(37, 37, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(38, 38, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(39, 39, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(40, 40, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(41, 41, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(42, 42, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(43, 43, 2, '2024-06-22 10:37:21', '2024-06-22 10:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `user_id`, `category_id`, `views`, `approved`, `created_at`, `updated_at`) VALUES
(1, 'Điểm thi THPT 2024', 'diem-thi-thpt-2024', 'Điểm thi THPT 2024', '<h2 class=\"detail-sapo\" data-role=\"sapo\">Ng&agrave;y 23.6, Ph&ograve;ng GD-ĐT quận 7 (TP.HCM) c&ocirc;ng bố điểm khảo s&aacute;t v&agrave; điểm chuẩn tr&uacute;ng tuyển lớp 6 Trường THCS Nguyễn Hữu Thọ.</h2>\r\n<div class=\"detail-cmain\">\r\n<div class=\"detail-content afcbc-body\" data-role=\"content\" data-io-article-url=\"https://thanhnien.vn/cong-bo-diem-chuan-trung-tuyen-lop-6-truong-nong-nhat-quan-7-tphcm-185240623110406073.htm\">\r\n<div data-check-position=\"body_start\">&nbsp;</div>\r\n<figure class=\"VCSortableInPreviewMode adbro_style\">\r\n<div><a class=\"detail-img-lightbox\" title=\"Học sinh tham dự khảo s&aacute;t v&agrave;o lớp 6 Trường THCS Nguyễn Hữu Thọ ng&agrave;y 15.6 vừa qua\" href=\"https://images2.thanhnien.vn/528068263637045248/2024/6/23/edit-nth-17191153033381045376565.jpeg\" target=\"_blank\" rel=\"noopener\" data-fancybox=\"img-lightbox\"><img id=\"img_97693948606259200\" class=\"lightbox-content\" title=\"C&ocirc;ng bố điểm chuẩn tr&uacute;ng tuyển lớp 6 trường \'n&oacute;ng\' nhất quận 7, TP.HCM- Ảnh 1.\" src=\"https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/6/23/edit-nth-17191153033381045376565.jpeg\" alt=\"C&ocirc;ng bố điểm chuẩn tr&uacute;ng tuyển lớp 6 trường \'n&oacute;ng\' nhất quận 7, TP.HCM- Ảnh 1.\" width=\"998\" height=\"771\" loading=\"lazy\" data-author=\"\" data-original=\"https://images2.thanhnien.vn/528068263637045248/2024/6/23/edit-nth-17191153033381045376565.jpeg\" data-adbro-processed=\"true\"></a>\r\n<div id=\"adbro\" class=\"adbro-animated adbro-md\">\r\n<div class=\"adbro-disney\">\r\n<div class=\"adbro-disney__container\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</figure>\r\n<p>Theo đ&oacute;, Ph&ograve;ng GD-ĐT quận 7 hướng dẫn phụ huynh học sinh sử dụng m&atilde; định danh của học sinh để tra cứu kết quả&nbsp;<a class=\"link-inline-content\" title=\"điểm khảo s&aacute;t\" href=\"https://thanhnien.vn/da-co-diem-khao-sat-lop-6-cua-3-truong-nong-nhat-tpthu-duc-185240622092041349.htm\" data-rel=\"follow\">điểm khảo s&aacute;t</a>&nbsp;v&agrave; điểm tr&uacute;ng tuyển lớp 6 Trường THCS Nguyễn Hữu Thọ tại địa chỉ https://tuyensinhdaucap.hcm.edu.vn/dang-ky-khao-sat-6.</p>\r\n<p>Đồng thời, căn cứ v&agrave;o kết quả&nbsp;<a class=\"link-inline-content\" title=\"khảo s&aacute;t lớp 6\" href=\"https://thanhnien.vn/gan-4500-thi-sinh-tham-gia-khao-sat-lop-6-truong-hot-cua-tphcm-185240615095452806.htm\" data-rel=\"follow\">khảo s&aacute;t lớp 6</a>&nbsp;của học sinh, Ph&ograve;ng GD-ĐT quận 7 c&ocirc;ng bố&nbsp;<a class=\"link-inline-content\" title=\"điểm chuẩn tr&uacute;ng tuyển lớp 6\" href=\"https://thanhnien.vn/tuyen-sinh-lop-6-truong-dinh-thien-ly-tphcm-theo-hinh-thuc-nao-185240620121410867.htm\" data-rel=\"follow\">điểm chuẩn tr&uacute;ng tuyển lớp 6</a> Trường THCS Nguyễn Hữu Thọ l&agrave; 50,5.<img class=\"aries_aspectRatio\"></p>\r\nPhụ huynh l&agrave;m thủ tục nhập học cho học sinh tr&uacute;ng tuyển tại Trường THCS Nguyễn Hữu Thọ trong 2 ng&agrave;y 30.6 v&agrave; 1.7.\r\n<p>Phụ huynh học sinh nếu c&oacute; nhu cầu ph&uacute;c khảo, tải đơn tr&ecirc;n cổng th&ocirc;ng tin điện tử của Ph&ograve;ng GD-ĐT quận 7 v&agrave; nộp trực tiếp tại Trường THCS Nguyễn Hữu Thọ từ 14 giờ ng&agrave;y 23.6 đến 16 giờ ng&agrave;y 24.6. Dự kiến c&ocirc;ng bố điểm ph&uacute;c khảo v&agrave;o ng&agrave;y 27.6.</p>\r\n<p>Năm học 2024-2025 l&agrave; năm đầu ti&ecirc;n Ph&ograve;ng GD-ĐT quận 7 thực hiện việc tuyển sinh lớp 6 Trường THCS Nguyễn Hữu Thọ th&ocirc;ng qua b&agrave;i khảo s&aacute;t đ&aacute;nh gi&aacute; năng lực.</p>\r\n<div class=\"dable_placeholder\">&nbsp;</div>\r\n</div>\r\n</div>', 14, 6, 2, 1, '2024-06-22 10:37:21', '2024-06-23 03:06:26'),
(2, 'Euro ngày 23/6: CĐV nhí nói dối bố để xuống sân ôm Ronaldo', 'euro-ngay-236-cdv-nhi-noi-doi-bo-de-xuong-san-om-ronaldo', 'Euro ngày 23/6: CĐV nhí nói dối bố để xuống sân ôm Ronaldo', '<ul class=\"list-live width_common\" data-relative-time=\"2024-06-23\" data-server-time=\"2024-06-23\">\r\n<li id=\"block-1719116320\" class=\"block-item\" data-datetime=\"2024-06-23\" data-block-id=\"130366\" data-share=\"https://vnexpress.net/share/share-block/id/4761578/blockid/130366\">\r\n<div class=\"header-block\">\r\n<h2 class=\"title-block-live\">Tại sao truyền h&igrave;nh&nbsp;kh&ocirc;ng chiếu cảnh CĐV lao v&agrave;o s&acirc;n chụp ảnh&nbsp;c&ugrave;ng Ronaldo?</h2>\r\n</div>\r\n<div class=\"content-block\">\r\n<p class=\"Normal\">Trận Bồ Đ&agrave;o Nha thắng Thổ Nhĩ Kỳ 3-0 v&agrave;o tối 22/6 bốn lần gi&aacute;n đoạn v&igrave; CĐV lao v&agrave;o s&acirc;n để tiếp cận Ronaldo. Tuy nhi&ecirc;n, chỉ kh&aacute;n giả tr&ecirc;n s&acirc;n biết l&yacute; do trận đấu tạm ngừng, bởi h&igrave;nh ảnh về c&aacute;c CĐV \"đột nhập xuống s&acirc;n\" kh&ocirc;ng được ph&aacute;t qua truyền h&igrave;nh.</p>\r\n<p class=\"Normal\">Tại sao những khoảnh khắc th&uacute; vị n&agrave;y kh&ocirc;ng được ph&aacute;t s&oacute;ng cho kh&aacute;n giả xem? C&acirc;u trả lời l&agrave; do quy định của UEFA nghi&ecirc;m cấm việc chiếu những cảnh tượng như vậy. \"Ch&uacute;ng t&ocirc;i chỉ ph&aacute;t s&oacute;ng những g&igrave; li&ecirc;n quan đến trận đấu. Ch&uacute;ng t&ocirc;i kh&ocirc;ng muốn khuyến kh&iacute;ch những h&agrave;nh vi như đốt ph&aacute;o s&aacute;ng hay lao v&agrave;o s&acirc;n v&agrave; do đ&oacute; sẽ kh&ocirc;ng ph&aacute;t những h&igrave;nh ảnh đ&oacute;\", một ph&aacute;t ng&ocirc;n vi&ecirc;n của UEFA cho biết.</p>\r\n<p class=\"Normal\">UEFA đ&atilde; &aacute;p dụng quy định n&agrave;y từ những giải đấu trước. V&igrave; vậy, kh&aacute;n giả truyền h&igrave;nh đ&atilde; kh&ocirc;ng được chứng kiến khoảnh khắc đ&aacute;ng nhớ giữa Ronaldo v&agrave; CĐV c&ograve;n c&aacute;c b&igrave;nh luận vi&ecirc;n cũng chỉ biết suy đo&aacute;n l&yacute; do trọng t&agrave;i tạm ngừng trận đấu.</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-size=\"true\">\r\n<div class=\"fig-picture\"><picture data-inimage=\"done\"><source srcset=\"https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WCwCjELEKugvXCTKBnQCNg 1x, https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IRA-QBhWvv6KEgF3PukpPw 1.5x, https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=KHfFSpdoKc-G8RJP-8nJQA 2x\" data-srcset=\"https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WCwCjELEKugvXCTKBnQCNg 1x, https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=IRA-QBhWvv6KEgF3PukpPw 1.5x, https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=KHfFSpdoKc-G8RJP-8nJQA 2x\"><img class=\"lazy lazied\" src=\"https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WCwCjELEKugvXCTKBnQCNg\" alt=\"Screenshot-2024-06-23-at-14-59-2132-7366\" loading=\"lazy\" data-src=\"https://vcdn1-thethao.vnecdn.net/2024/06/23/Screenshot-2024-06-23-at-14-59-2132-7366-1719129903.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=WCwCjELEKugvXCTKBnQCNg\" data-ll-status=\"loaded\"></picture>\r\n<div class=\"embed-container-ads\">&nbsp;</div>\r\n</div>\r\n<figcaption>\r\n<p class=\"Image\">Một CĐV bị bảo vệ t&oacute;m lại khi xin chụp ảnh với Ronaldo. Ảnh:&nbsp;<em>AFP</em></p>\r\n</figcaption>\r\n</figure>\r\n</div>\r\n<div class=\"social-block flexbox\" data-share=\"https://vnexpress.net/share/share-block/id/4761578/blockid/130366\"><span class=\"txt-share\">Chia sẻ:</span><a class=\"fb flexbox\" data-share-type=\"facebook\">Facebook</a><a class=\"tw flexbox\" data-share-type=\"twitter\">Twitter</a><a class=\"copylink flexbox\" data-share-type=\"copy\">Sao ch&eacute;p li&ecirc;n kết</a></div>\r\n</li>\r\n<li id=\"block-1719116140\" class=\"block-item\" data-datetime=\"2024-06-23\" data-block-id=\"130365\" data-share=\"https://vnexpress.net/share/share-block/id/4761578/blockid/130365\">\r\n<div class=\"header-block\">\r\n<h2 class=\"title-block-live\">CĐV Scotland qua đời khi dự Euro 2024</h2>\r\n</div>\r\n<div class=\"content-block\">\r\n<p class=\"Normal\">Một bầu kh&ocirc;ng kh&iacute; tang thương bao tr&ugrave;m l&ecirc;n người h&acirc;m mộ Scotland khi một CĐV của họ đ&atilde; bất ngờ qua đời tại Dusseldorf. Người đ&agrave;n &ocirc;ng xấu số được x&aacute;c định l&agrave; Colin King, 57 tuổi. &Ocirc;ng đến Munich để theo d&otilde;i trận mở m&agrave;n của Scotland, thua Đức 1-5 v&agrave;o thứ S&aacute;u tuần trước. Theo th&ocirc;ng tin từ nh&oacute;m CĐV \"The Tartan Army\", &ocirc;ng King đ&atilde; l&aacute;i xe từ Munich đến Dusseldorf v&agrave;o đ&ecirc;m Chủ nhật rồi đi ngủ v&agrave;o s&aacute;ng sớm thứ Hai. Đ&aacute;ng tiếc, &ocirc;ng đ&atilde; kh&ocirc;ng bao giờ tỉnh lại.</p>\r\n<p class=\"Normal\">\"Colin l&agrave; một CĐV cuồng nhiệt của Scotland. Thật kh&ocirc;ng may, &ocirc;ng ấy đ&atilde; ra đi trong giấc ngủ v&agrave;o đ&ecirc;m thứ Hai\", \"The Tartan Army\" chia buồn tr&ecirc;n mạng x&atilde; hội. Gia đ&igrave;nh &ocirc;ng King v&agrave; người h&acirc;m mộ Scotland dự kiến sẽ d&agrave;nh một ph&uacute;t mặc niệm cho &ocirc;ng ở ph&uacute;t thứ 4 trong trận đấu giữa Scotland v&agrave; Thụy Sĩ v&agrave;o tối nay, 23/6. \"The Tartan Army\" k&ecirc;u gọi người h&acirc;m mộ Scotland c&oacute; mặt tr&ecirc;n s&acirc;n vận động d&agrave;nh tặng tr&agrave;ng ph&aacute;o tay cho &ocirc;ng King, người ra đi sau khi ho&agrave;n th&agrave;nh giấc mơ chứng kiến đội tuyển con cưng thi đấu tại Euro 2024.</p>\r\n</div>\r\n</li>\r\n</ul>', 15, 7, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:15:15'),
(3, 'Cải tạo hồ tôm bỏ hoang thành công viên đẹp nhất Phan Thiết', 'cai-tao-ho-tom-bo-hoang-thanh-cong-vien-dep-nhat-phan-thiet', 'Cải tạo hồ tôm bỏ hoang thành công viên đẹp nhất Phan Thiết', '<h1 class=\"title-detail\">Cải tạo hồ t&ocirc;m bỏ hoang th&agrave;nh c&ocirc;ng vi&ecirc;n đẹp nhất Phan Thiết</h1>\r\n<p class=\"description\"><span class=\"location-stamp\">B&Igrave;NH THUẬN</span>Hồ nước bỏ hoang rộng hơn 4 ha kề s&ocirc;ng C&agrave; Ty, phường Ph&uacute; T&agrave;i, được cải tạo th&agrave;nh c&ocirc;ng vi&ecirc;n đẹp nhất Phan Thiết, phục vụ người d&acirc;n, du kh&aacute;ch.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Ng&agrave;y 21/6, &ocirc;ng Đỗ Minh Tr&iacute;, Gi&aacute;m đốc Ban Quản l&yacute; dự &aacute;n đầu tư x&acirc;y dựng TP Phan Thiết, cho biết sau một năm thi c&ocirc;ng đến nay dự &aacute;n cải tạo hồ Văn Th&aacute;nh l&agrave;m c&ocirc;ng vi&ecirc;n đi bộ đ&atilde; ho&agrave;n th&agrave;nh, sẽ đưa v&agrave;o sử dụng ng&agrave;y 30/6.</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\">\r\n<div class=\"fig-picture\" data-href=\"\" data-target=\"\" data-inimage=\"done\"><img src=\"https://vcdn1-vnexpress.vnecdn.net/2024/06/21/ho-van-thanh-01-jpg-1718900745-9420-1718905143.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=jRIj9XIuGNyPAVHSJUuDrg\" alt=\"Hồ Văn Th&aacute;nh v&agrave; c&ocirc;ng vi&ecirc;n vừa được chỉnh trang nằm gần s&ocirc;ng C&agrave; Ty, phường Ph&uacute; T&agrave;i. Ảnh:\" data-natural-h=\"1350\" data-natural-width=\"2400\"></div>\r\n</figure>\r\n<p class=\"Normal\">Dự &aacute;n được đầu tư với tổng vốn hơn 14,8 tỷ đồng từ ng&acirc;n s&aacute;ch th&agrave;nh phố, nhằm xử l&yacute; t&igrave;nh trạng &ocirc; nhiễm m&ocirc;i trường, tạo cảnh quan đ&ocirc; thị v&agrave; m&ocirc;i trường xanh, sạch, đẹp quanh khu vực hồ t&ocirc;m bỏ hoang từ l&acirc;u. Tổng diện t&iacute;ch cải tạo l&agrave; 5,5 ha, gồm: 4 ha hồ Văn Th&aacute;nh; 1,5 ha c&ocirc;ng vi&ecirc;n, đường giao th&ocirc;ng v&agrave; b&atilde;i đất hoang gần hồ ph&iacute;a s&ocirc;ng C&agrave; Ty.</p>\r\n<p class=\"Normal\">Đơn vị thi c&ocirc;ng xử l&yacute; r&aacute;c ứ đọng, b&ugrave;n thối trong l&ograve;ng hồ, tạo cảnh quan quanh bờ hồ chu vi hơn 800 m, l&aacute;t gạch terazzo ở vỉa h&egrave; v&agrave; lối đi dạo quanh hồ với chiều rộng 2,5-5m; bố tr&iacute; hố thu nước, gia cố m&aacute;i taluy quanh hồ bằng b&ecirc;t&ocirc;ng.</p>\r\n<p class=\"Normal\">C&acirc;y xanh được trồng quanh hồ tạo cảnh quan, b&oacute;ng m&aacute;t, c&ugrave;ng hệ thống điện chiếu s&aacute;ng, đ&egrave;n led đổi m&agrave;u quanh bờ hồ tạo hiệu ứng thẩm mỹ v&agrave;o ban đ&ecirc;m, phục vụ kh&aacute;ch bộ h&agrave;nh h&oacute;ng m&aacute;t, tập thể dục.</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\">\r\n<div class=\"fig-picture\" data-href=\"\" data-target=\"\"><img src=\"https://vcdn1-vnexpress.vnecdn.net/2024/06/21/ho-van-thanh-phuong-phu-tai-tp-5742-7603-1718905143.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Lcfdw1mIx_bpXrYRz23qAg\" alt=\"Hố nước v&agrave; b&atilde;i đất hoang kề đ&oacute; đ&atilde; được cải tạo, xử l&yacute; vệ sinh, tạo cảnh quan v&agrave; đường đi bộ xung quanh sạch đẹp. Ảnh: Việt Quốc\" data-natural-h=\"1350\" data-natural-width=\"2399\"></div>\r\n<figcaption>\r\n<p class=\"Image\">Hố Văn Th&aacute;nh sau khi được cải tạo, l&aacute;t gạch, mở rộng đường xung quanh, ng&agrave;y 19/6. Ảnh:&nbsp;<em>Việt Quốc</em></p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"Normal\">C&aacute;c tuyến đường xunh quan c&ocirc;ng vi&ecirc;n như Nguyễn Viết Xu&acirc;n, V&otilde; Văn Tần, Trương Gia Hội... cũng được cải tạo, mở rộng, l&aacute;t đ&aacute; l&agrave;m mới vỉa h&egrave;. Một b&atilde;i để xe rộng 600 m2 cũng được thiết kế... Khu c&ocirc;ng vi&ecirc;n gần 10.000 m2 cũng được cải tạo: l&aacute;t lại gạch mới, l&agrave;m lại bồn trồng c&acirc;y, trồng bổ sung cỏ v&agrave; c&acirc;y xanh.</p>\r\n<p class=\"Normal\">Văn Th&aacute;nh l&agrave; địa danh xuất hiện từ rất sớm trong lịch sử h&igrave;nh th&agrave;nh Phan Thiết. Thời triều Nguyễn, quan đầu tỉnh đ&atilde; cho x&acirc;y dựng tr&ecirc;n khu đất gần bờ s&ocirc;ng l&agrave;ng Ph&uacute; T&agrave;i một văn bia ghi c&ocirc;ng đức của Th&aacute;nh Hiền (Đức Khổng Tử), n&ecirc;n nơi đ&acirc;y được gọi l&agrave; \"Văn Th&aacute;nh\". Văn bia đ&atilde; mất trong thời chiến tranh.</p>\r\n<p class=\"Normal\">Từ năm 1997, TP Phan Thiết đ&atilde; di dời h&agrave;ng ngh&igrave;n hộ d&acirc;n ở c&aacute;c cụm d&acirc;n cư v&agrave; nh&agrave; chồ chen ch&uacute;c gần bến Cồn Ch&agrave; v&agrave; ven s&ocirc;ng C&agrave; Ty (thuộc c&aacute;c phường Hưng Long, B&igrave;nh Hưng, Đức Thắng) l&ecirc;n khu vực n&agrave;y, h&igrave;nh th&agrave;nh khu đ&ocirc; thị mới.</p>\r\n</article>', 16, 3, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:17:30'),
(4, 'Choáng ngợp với dàn siêu xe của đội tuyển Anh tại EURO 2024', 'choang-ngop-voi-dan-sieu-xe-cua-doi-tuyen-anh-tai-euro-2024', 'Các cầu thủ Anh nổi tiếng với thú chơi siêu xe, sở hữu nhiều chiếc ôtô đắt đỏ như Lamborghini Huracan, Rolls-Royce Cullinan, Bentley Continental GT...', '<p class=\"the-article-summary\">C&aacute;c cầu thủ Anh nổi tiếng với th&uacute; chơi si&ecirc;u xe, sở hữu nhiều chiếc &ocirc;t&ocirc; đắt đỏ như Lamborghini Huracan, Rolls-Royce Cullinan, Bentley Continental GT...</p>\r\n<div class=\"the-article-body\">\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Thủ m&ocirc;n Jordan Pickford đ&atilde; được nh&igrave;n thấy ngồi sau tay l&aacute;i của một trong những chiếc xe phổ biến nhất với giới cầu thủ hiện nay, Lamborghini Urus. Chiếc xe c&oacute; khả năng đạt tốc độ tối đa 300 km/h v&agrave; tăng tốc 0-100 km/h trong 3,5 gi&acirc;y. Xe c&oacute; gi&aacute; 188.000 bảng Anh (240.000 USD). Ảnh: iCelebTV.</span></div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\"><img class=\"unveil\" title=\"cầu thủ anh ảnh 1\" src=\"https://photo.znews.vn/w860/Uploaded/mdf_uswreo/2024_06_23/NINTCHDBPICT000486957356.jpg\" alt=\"cau thu anh anh 1\" width=\"3000\" height=\"1997\" data-title=\"cầu thủ anh ảnh 1\"></td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption\">\r\n<p>Thủ m&ocirc;n&nbsp;<strong>Jordan Pickford</strong>&nbsp;đ&atilde; được nh&igrave;n thấy ngồi sau tay l&aacute;i của một trong những chiếc xe phổ biến nhất với giới cầu thủ hiện nay,&nbsp;<strong>Lamborghini Urus</strong>. Chiếc xe c&oacute; khả năng đạt tốc độ tối đa 300 km/h v&agrave; tăng tốc 0-100 km/h trong 3,5 gi&acirc;y. Xe c&oacute; gi&aacute;&nbsp;<strong>188.000 bảng Anh</strong>&nbsp;(<abbr class=\"rate-usd\">240.000 USD</abbr>). Ảnh:&nbsp;<em>iCelebTV.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Sau khi ho&agrave;n tất thương vụ chuyển nhượng lớn từ Tottenham Hotspur sang Manchester City với gi&aacute; 45 triệu bảng Anh v&agrave;o năm 2017, Kyle Walker đ&atilde; sắm chiếc &ocirc;t&ocirc; đắt nhất của m&igrave;nh, Lamborghini Huracan (gi&aacute; b&aacute;n 235.000 bảng Anh). Đ&acirc;y l&agrave; một trong những chiếc xe nhanh nhất h&agrave;nh tinh - c&oacute; khả năng đạt tốc độ 0-100 km/h chỉ trong 2,9 gi&acirc;y. Ảnh: The Sun.</span>\r\n<ul class=\"z-share-wrapper\">\r\n<li class=\"btnZalo blue zalo-share-button \" data-oaid=\"4564080408575020426\" data-layout=\"icon-text\" data-customize=\"true\" data-href=\"https://lifestyle.znews.vn/choang-ngop-voi-dan-sieu-xe-cua-doi-tuyen-anh-tai-euro-2024-post1482533.html?utm_source=zalo&amp;utm_medium=zalomsg&amp;utm_campaign=zingdesktop\">&nbsp;</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\"><img class=\"unveil\" src=\"https://photo.znews.vn/w1920/Uploaded/mdf_uswreo/2024_06_23/KH_17_01_WALKERS_CAR_OP_eb8ef7.jpg\" alt=\"cau thu anh anh 2\" width=\"1620\" height=\"1080\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption\">\r\n<p>Sau khi ho&agrave;n tất thương vụ chuyển nhượng lớn từ Tottenham Hotspur sang Manchester City với gi&aacute; 45 triệu bảng Anh v&agrave;o năm 2017,&nbsp;<strong>Kyle Walker&nbsp;</strong>đ&atilde; sắm chiếc &ocirc;t&ocirc; đắt nhất của m&igrave;nh,&nbsp;<strong>Lamborghini Huracan</strong>&nbsp;(gi&aacute; b&aacute;n&nbsp;<strong>235.000 bảng Anh</strong>). Đ&acirc;y l&agrave; một trong những chiếc xe nhanh nhất h&agrave;nh tinh - c&oacute; khả năng đạt tốc độ 0-100 km/h chỉ trong 2,9 gi&acirc;y. Ảnh:&nbsp;<em>The Sun.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Trong tuyển Anh, John Stones đang sở hữu một trong những chiếc xe đắt tiền nhất, Rolls-Royce Cullinan (gi&aacute; b&aacute;n 300.000 bảng Anh). C&aacute;c ng&ocirc;i sao thể thao bao gồm v&otilde; sĩ Andy Ruiz Jr v&agrave; Cristiano Ronaldo cũng chạy d&ograve;ng xe n&agrave;y. Xe c&oacute; khả năng đạt tốc độ 0-100 km/h trong 5 gi&acirc;y v&agrave; c&oacute; tốc độ tối đa l&agrave; 250 km/h. Ảnh: Cavendish Press.</span>\r\n<ul class=\"z-share-wrapper\">\r\n<li class=\"btnZalo blue zalo-share-button \" data-oaid=\"4564080408575020426\" data-layout=\"icon-text\" data-customize=\"true\" data-href=\"https://lifestyle.znews.vn/choang-ngop-voi-dan-sieu-xe-cua-doi-tuyen-anh-tai-euro-2024-post1482533.html?utm_source=zalo&amp;utm_medium=zalomsg&amp;utm_campaign=zingdesktop\">&nbsp;</li>\r\n<li>&nbsp;</li>\r\n</ul>\r\n</div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\"><img class=\"unveil\" src=\"https://photo.znews.vn/w1920/Uploaded/mdf_uswreo/2024_06_23/NINTCHDBPICT000556300131.jpg\" alt=\"cau thu anh anh 3\" width=\"1732\" height=\"1154\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption\">\r\n<p>Trong tuyển Anh,&nbsp;<strong>John Stones</strong>&nbsp;đang sở hữu một trong những chiếc xe đắt tiền nhất,&nbsp;<strong>Rolls-Royce Cullinan</strong>&nbsp;(gi&aacute; b&aacute;n&nbsp;<strong>300.000 bảng Anh</strong>). C&aacute;c ng&ocirc;i sao thể thao bao gồm v&otilde; sĩ Andy Ruiz Jr v&agrave; Cristiano Ronaldo cũng chạy d&ograve;ng xe n&agrave;y. Xe c&oacute; khả năng đạt tốc độ 0-100 km/h trong 5 gi&acirc;y v&agrave; c&oacute; tốc độ tối đa l&agrave; 250 km/h. Ảnh:&nbsp;<em>Cavendish Press.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Declan Rice của tuyển Anh đang chạy chiếc Range Rover c&oacute; gi&aacute; khoảng 75.000 bảng Anh. \"Đ&acirc;y thực sự l&agrave; chiếc xe ho&agrave;n hảo để l&aacute;i đi tập v&igrave; chỗ để ch&acirc;n rộng r&atilde;i v&agrave; sự thoải m&aacute;i\", SunSport nhận x&eacute;t. Ảnh: PA.</span></div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\"><img class=\"unveil\" src=\"https://photo.znews.vn/w1920/Uploaded/mdf_uswreo/2024_06_23/handout_photo_range_rover_sport.jpg\" alt=\"cau thu anh anh 4\" width=\"960\" height=\"640\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption default-caption\">\r\n<p><strong>Declan Rice</strong>&nbsp;của tuyển Anh đang chạy chiếc&nbsp;<strong>Range Rover</strong>&nbsp;c&oacute; gi&aacute; khoảng&nbsp;<strong>75.000 bảng Anh</strong>. \"Đ&acirc;y thực sự l&agrave; chiếc xe ho&agrave;n hảo để l&aacute;i đi tập v&igrave; chỗ để ch&acirc;n rộng r&atilde;i v&agrave; sự thoải m&aacute;i\",&nbsp;<em>SunSport</em>&nbsp;nhận x&eacute;t. Ảnh:&nbsp;<em>PA.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Jude Bellingham đang l&aacute;i BMW XM, chiếc xe được t&agrave;i trợ bởi CLB Real Madrid. Gi&aacute; b&aacute;n của xe l&agrave; khoảng 110.000 bảng Anh. Động cơ điện n&agrave;y c&oacute; thể đạt tốc độ 0-100 km/h chỉ trong 4,3 gi&acirc;y. Ảnh: Real Madrid.</span></div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\"><img class=\"unveil\" src=\"https://photo.znews.vn/w1920/Uploaded/mdf_uswreo/2024_06_23/16969257971111.jpg\" alt=\"cau thu anh anh 5\" width=\"1980\" height=\"1320\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption\">\r\n<p><strong>Jude Bellingham</strong>&nbsp;đang l&aacute;i&nbsp;<strong>BMW XM</strong>, chiếc xe được t&agrave;i trợ bởi CLB Real Madrid. Gi&aacute; b&aacute;n của xe l&agrave; khoảng&nbsp;<strong>110.000 bảng Anh</strong>. Động cơ điện n&agrave;y c&oacute; thể đạt tốc độ 0-100 km/h chỉ trong 4,3 gi&acirc;y. Ảnh:&nbsp;<em>Real Madrid.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Bukayo Saka đang sở hữu &ocirc;t&ocirc; Mercedes-Benz G-Class (gi&aacute; b&aacute;n 134.000 bảng Anh). G-Class nổi tiếng với vẻ ngo&agrave;i chắc chắn v&agrave; được sản xuất bằng phương ph&aacute;p lắp r&aacute;p th&acirc;n xe l&ecirc;n khung thay v&igrave; nguy&ecirc;n khối thường được sử dụng cho c&aacute;c d&ograve;ng xe sang hiện đại. Xe c&oacute; thể tăng tốc 0-100 km/h trong 4,5 gi&acirc;y đến 6,4 gi&acirc;y, t&ugrave;y thuộc v&agrave;o kiểu m&aacute;y. Ảnh: The Sun.</span></div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\"><img class=\"unveil\" src=\"https://photo.znews.vn/w1920/Uploaded/mdf_uswreo/2024_06_23/g500_stopped_unmade_road_g_89440.jpg\" alt=\"cau thu anh anh 6\" width=\"960\" height=\"635\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption\">\r\n<p><strong>Bukayo Saka</strong>&nbsp;đang sở hữu &ocirc;t&ocirc;&nbsp;<strong>Mercedes-Benz G-Class</strong>&nbsp;(gi&aacute; b&aacute;n&nbsp;<strong>134.000 bảng Anh</strong>). G-Class nổi tiếng với vẻ ngo&agrave;i chắc chắn v&agrave; được sản xuất bằng phương ph&aacute;p lắp r&aacute;p th&acirc;n xe l&ecirc;n khung thay v&igrave; nguy&ecirc;n khối thường được sử dụng cho c&aacute;c d&ograve;ng xe sang hiện đại. Xe c&oacute; thể tăng tốc 0-100 km/h trong 4,5 gi&acirc;y đến 6,4 gi&acirc;y, t&ugrave;y thuộc v&agrave;o kiểu m&aacute;y. Ảnh:&nbsp;<em>The Sun.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\"z-photoviewer-wrapper \r\n             \r\n            z-has-caption \r\n            \" align=\"center\">\r\n<div class=\"z-photo-backdrop\">&nbsp;</div>\r\n<div class=\"z-img-popup\">\r\n<div class=\"z-img-popup-overlay\">\r\n<div class=\"z-photo-caption\"><span class=\"z-desc\">Tiền đạo Harry Kane từng xuất hiện sau tay l&aacute;i của Bentley Continental GT, Range Rover Sport, Jaguar F-Pace. Thời gian gần đ&acirc;y, anh thường xuy&ecirc;n sử dụng chiếc Bentley Continental GT (gi&aacute; b&aacute;n khoảng 183.000 bảng Anh). Xe c&oacute; nội thất sang trọng, bao gồm cả ghế bọc da thoải m&aacute;i. Về hiệu suất, xe c&oacute; tốc độ tối đa 340 km/h v&agrave; được sản xuất tại Anh với động cơ V12. Ảnh: Zhe Jr.</span></div>\r\n<div class=\"z-img-container\">\r\n<div class=\"z-img-container-inner\">\r\n<div class=\"z-img-sub-inner\">\r\n<div class=\"z-lazyimage-container\">\r\n<div class=\"z-img\"><img class=\"unveil\" src=\"https://photo.znews.vn/w1920/Uploaded/mdf_uswreo/2024_06_23/bentley_continental_gt_display_2.jpg\" alt=\"cau thu anh anh 7\" width=\"959\" height=\"640\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<button class=\"z-close-btn\"></button></div>\r\n</div>\r\n<table class=\"picture\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"pic\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"pCaption caption\">\r\n<p>Tiền đạo&nbsp;<strong>Harry Kane</strong>&nbsp;từng xuất hiện sau tay l&aacute;i của Bentley Continental GT, Range Rover Sport, Jaguar F-Pace. Thời gian gần đ&acirc;y, anh thường xuy&ecirc;n sử dụng chiếc&nbsp;<strong>Bentley Continental GT</strong>&nbsp;(gi&aacute; b&aacute;n khoảng&nbsp;<strong>183.000 bảng Anh</strong>). Xe c&oacute; nội thất sang trọng, bao gồm cả ghế bọc da thoải m&aacute;i. Về hiệu suất, xe c&oacute; tốc độ tối đa 340 km/h v&agrave; được sản xuất tại Anh với động cơ V12. Ảnh:&nbsp;<em>Zhe Jr.</em></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 17, 13, 1, 1, '2024-06-22 10:37:21', '2024-06-23 03:07:26'),
(5, '150.000 người Israel biểu tình, yêu cầu giải tán chính phủ', '150000-nguoi-israel-bieu-tinh-yeu-cau-giai-tan-chinh-phu', '150.000 người Israel biểu tình, yêu cầu giải tán chính phủ', '<p class=\"Normal\">D&ograve;ng người biểu t&igrave;nh vẫy cờ Israel v&agrave; h&ocirc; vang khẩu hiệu phản đối ch&iacute;nh phủ của Thủ tướng Benjamin Netanyahu khi k&eacute;o về đại lộ ch&iacute;nh ở thủ đ&ocirc; Tel Aviv. Nhiều người c&ograve;n cầm theo biểu ngữ c&oacute; d&ograve;ng chữ \"Thủ tướng tội phạm\" v&agrave; \"Dừng chiến tranh\".</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\">\r\n<div class=\"fig-picture\" data-href=\"\" data-target=\"\" data-inimage=\"done\"><img src=\"https://vcdn1-vnexpress.vnecdn.net/2024/06/23/AFP-20240622-34YD92L-v1-Previe-1287-1564-1719099378.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=K-gNF2ztVssKIpSqxZZcEQ\" alt=\"Người biểu t&igrave;nh cầm biểu ngữ phản đối Thủ tướng Benjamin Netanyahu ở thủ đ&ocirc; Tel Aviv, Israel ng&agrave;y 22/6. Ảnh: AFP\" data-damid=\"118181\" data-natural-h=\"799\" data-natural-width=\"1200\">\r\n<div class=\"embed-container-ads\">&nbsp;</div>\r\n</div>\r\n<figcaption>\r\n<p class=\"Image\">Người biểu t&igrave;nh cầm biểu ngữ phản đối Thủ tướng Benjamin Netanyahu ở thủ đ&ocirc; Tel Aviv, Israel ng&agrave;y 22/6. Ảnh:&nbsp;<em>AFP</em></p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"Normal\">Một số kh&aacute;c nằm tr&ecirc;n mặt đất phủ đầy sơn đỏ tại Quảng trường D&acirc;n chủ để phản đối những g&igrave; họ cho l&agrave; \"c&aacute;i chết của nền d&acirc;n chủ\" ở Israel dưới thời Thủ tướng Netanyahu.</p>\r\n<p class=\"Normal\">Ph&aacute;t biểu trước đ&aacute;m đ&ocirc;ng biểu t&igrave;nh, cựu gi&aacute;m đốc cơ quan an ninh nội địa Shin Bet của Israel Yuval Diskin chỉ tr&iacute;ch &ocirc;ng Netanyahu l&agrave; \"thủ tướng tệ nhất\" của quốc gia n&agrave;y.</p>\r\n<p class=\"Normal\">Nhiều người cũng b&agrave;y tỏ thất vọng với li&ecirc;n minh c&aacute;nh hữu của Israel, trong đ&oacute; c&oacute; Bộ trưởng An ninh Itamar Ben Gvir v&agrave; nhiều người theo chủ nghĩa d&acirc;n tộc cực hữu. Họ c&aacute;o buộc li&ecirc;n minh k&eacute;o d&agrave;i cuộc chiến ở Gaza, g&acirc;y nguy hiểm cho an ninh đất nước v&agrave; t&iacute;nh mạng của c&aacute;c con tin bị Hamas giữ.</p>\r\n<p class=\"Normal\">Yoram, hướng dẫn vi&ecirc;n du lịch 50 tuổi, cho biết &ocirc;ng tham gia biểu t&igrave;nh h&agrave;ng tuần v&igrave; tin rằng Israel cần tổ chức bầu cử mới.</p>\r\n<p class=\"Normal\">\"T&ocirc;i thực sự hy vọng ch&iacute;nh phủ hiện tại sẽ sụp đổ. Nếu ch&uacute;ng ta đợi tới cuộc bầu cử theo kế hoạch v&agrave;o năm 2026, đ&oacute; sẽ kh&ocirc;ng phải l&agrave; cuộc bầu cử d&acirc;n chủ\", &ocirc;ng n&oacute;i.</p>', 18, 2, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:30:25'),
(6, 'Thực hư về sông thủy ngân trong mộ Tần Thủy Hoàng', 'thuc-hu-ve-song-thuy-ngan-trong-mo-tan-thuy-hoang', 'Thực hư về sông thủy ngân trong mộ Tần Thủy Hoàng', '<p class=\"description\">Do yếu tố an to&agrave;n, giới khảo cổ chưa c&oacute; c&aacute;ch n&agrave;o biết chắc s&ocirc;ng thủy ng&acirc;n c&oacute; thực sự tồn tại trong mộ ho&agrave;ng đế Tần Thủy Ho&agrave;ng như nh&agrave; sử học Tư M&atilde; Thi&ecirc;n m&ocirc; tả hay kh&ocirc;ng.</p>\r\n<article class=\"fck_detail \">\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\">\r\n<div class=\"fig-picture\" data-href=\"\" data-target=\"\" data-inimage=\"done\"><img src=\"https://vcdn1-vnexpress.vnecdn.net/2024/06/23/VNE-Mer-8291-1719122907.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=U3zHShmNu7CrPO8GyZ9qTg\" alt=\"Đội qu&acirc;n đất nung trong mộ Tần Thủy Ho&agrave;ng. Ảnh: Wikimedia\" data-natural-h=\"450\" data-natural-width=\"750\">\r\n<div class=\"embed-container-ads\">&nbsp;</div>\r\n</div>\r\n<figcaption>\r\n<p class=\"Image\">Đội qu&acirc;n đất nung trong mộ Tần Thủy Ho&agrave;ng. Ảnh:&nbsp;<em>Wikimedia</em></p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"Normal\">Những tượng đất nung nổi tiếng chỉ l&agrave; một phần trong lăng mộ khổng lồ của Tần Thủy Ho&agrave;ng, ho&agrave;ng đế đầu ti&ecirc;n thống nhất Trung Quốc, người trị v&igrave; từ năm 221 đến năm 210 trước C&ocirc;ng nguy&ecirc;n. Tr&ecirc;n thực tế, tổ hợp nằm c&aacute;ch th&agrave;nh phố T&acirc;y An ở t&acirc;y bắc Trung Quốc 30 km về ph&iacute;a đ&ocirc;ng, chứa hơn 400 ng&ocirc;i mộ, bao phủ khu vực rộng 60 km2. Hơn 500.000 thợ l&agrave;m việc ở đ&oacute; suốt 38 năm, theo kế hoạch chi tiết nhằm m&ocirc; phỏng to&agrave;n bộ Trung Quốc, theo&nbsp;<em>Labrujulaverde.</em></p>\r\n<p class=\"Normal\">Buồng trung t&acirc;m, nơi đặt mộ của ho&agrave;ng đế, kh&ocirc;ng bao giờ được mở. Theo kiến nghị của c&aacute;c nh&agrave; khảo cổ l&agrave;m việc tại di chỉ, ch&iacute;nh phủ Trung Quốc kh&ocirc;ng cho ph&eacute;p mở buồng n&agrave;y v&agrave; kiểm tra cho tới khi c&oacute; c&ocirc;ng nghệ để bảo vệ an to&agrave;n bất cứ thứ g&igrave; b&ecirc;n trong khỏi bị hư hỏng. Nhiều khả năng cần nhiều năm, thập kỷ hoặc thế kỷ để điều đ&oacute; c&oacute; thể xảy ra.</p>\r\n<p class=\"Normal\">Những g&igrave; ch&uacute;ng ta biết về bố tr&iacute; b&ecirc;n trong ng&ocirc;i mộ l&agrave; nhờ nh&agrave; sử học Tư M&atilde; Thi&ecirc;n, nga đẻ của ng&agrave;nh sử học Trung Quốc sống từ năm 145 đến năm 86 trước C&ocirc;ng nguy&ecirc;n. Bộ Sử k&yacute; được khởi xướng bởi cha &ocirc;ng l&agrave; Tư M&atilde; Đ&agrave;m v&agrave; được Tư M&atilde; Thi&ecirc;n ho&agrave;n th&agrave;nh năm 91 trước C&ocirc;ng nguy&ecirc;n, khoảng 5 năm trước khi &ocirc;ng qua đời. T&aacute;c phẩm kể về qu&aacute; tr&igrave;nh x&acirc;y dựng lăng mộ, ch&ocirc;n chiến binh đất nung v&agrave; cung cấp dữ liệu như số thợ tham gia c&ocirc;ng tr&igrave;nh vĩ đại n&agrave;y.</p>\r\n<p class=\"Normal\">Khi c&aacute;c sử gia phương T&acirc;y kiểm tra ghi ch&eacute;p của Tư M&atilde; Thi&ecirc;n, họ tỏ ra ho&agrave;i nghi t&iacute;nh x&aacute;c thực của bộ Sử k&yacute;. Tuy nhi&ecirc;n, ph&aacute;t hiện khảo cổ trong v&agrave;i thập kỷ gần đ&acirc;y x&aacute;c nhận nhiều m&ocirc; tả trong bộ Sử k&yacute; như chiến binh đất nung v&agrave; vị tr&iacute; c&aacute;c ng&ocirc;i mộ. Ng&agrave;y nay, những nh&agrave; khảo cổ lưu &yacute; tới ghi ch&eacute;p của Tư M&atilde; Thi&ecirc;n đến mức họ kh&ocirc;ng d&aacute;m mở ng&ocirc;i mộ của Tần Thủy Ho&agrave;ng.</p>\r\n<p class=\"Normal\">Tuy kh&ocirc;ng ai biết ch&iacute;nh x&aacute;c c&oacute; g&igrave; b&ecirc;n trong mộ, theo Tư M&atilde; Thi&ecirc;n, trong cung điện lớn hơn cả s&acirc;n b&oacute;ng đ&aacute; dưới l&ograve;ng đất, c&oacute; bản sao thu nhỏ của Trung Quốc thời đ&oacute;, bao gồm hơn 100 d&ograve;ng s&ocirc;ng, hồ nước v&agrave; biển. Trong thế giới thu nhỏ n&agrave;y, một lượng lớn thủy ng&acirc;n được sử dụng thay cho nước để m&ocirc; phỏng d&ograve;ng chảy của s&ocirc;ng ng&ograve;i.</p>\r\n<p class=\"Normal\">V&agrave;o thập ni&ecirc;n 1980, nh&oacute;m nghi&ecirc;n cứu ở Viện kh&aacute;m ph&aacute; địa vật l&yacute; v&agrave; địa h&oacute;a học Trung Quốc ph&aacute;t hiện đất xung quanh ng&ocirc;i mộ chứa nồng độ thủy ng&acirc;n cao hơn đ&aacute;ng kể do với khu vực xung quanh. Trong khi ở những nơi hẻo l&aacute;nh, đất thường chứa trung b&igrave;nh 30 ppb (phần tỷ) thủy ng&acirc;n, mức trung b&igrave;nh trong lăng mộ l&agrave; 250 ppb, thậm ch&iacute; cao tới 1.500 ppb ở một số chỗ. Nhiều nh&agrave; khảo cổ l&agrave;m việc tại di chỉ cho rằng s&ocirc;ng thủy ng&acirc;n c&oacute; khả năng tồn tại. Đặc biệt, c&aacute;c kiểm tra cuối c&ugrave;ng nhằm đo điện trở suất của đất h&eacute; lộ một đặc điểm địa h&igrave;nh th&uacute; vị. Dị thường pha xảy ra khi d&ograve;ng điện được phản chiếu bởi một bề mặt dẫn điện như kim loại.</p>\r\n<p class=\"Normal\">Ngo&agrave;i ra, ph&acirc;n t&iacute;ch sự ph&acirc;n bố của lượng thủy ng&acirc;n h&eacute; lộ nồng độ cao nhất ở ph&iacute;a đ&ocirc;ng bắc v&agrave; ph&iacute;a nam, trong khi g&oacute;c ph&iacute;a t&acirc;y bắc c&oacute; nồng độ rất thấp. Kết quả đối chiếu sự ph&acirc;n bố n&agrave;y tr&ecirc;n bản đồ Trung Quốc tr&ugrave;ng với vị tr&iacute; hai d&ograve;ng s&ocirc;ng lớn l&agrave; s&ocirc;ng Ho&agrave;ng H&agrave; v&agrave; s&ocirc;ng Dương Tử, c&oacute; thể nh&igrave;n thấy từ kinh đ&ocirc; H&agrave;m Dương của nh&agrave; Tần, c&aacute;ch lăng mộ khoảng 30 km.</p>\r\n<p class=\"Normal\">Theo Yinglan Zhang, người chỉ đạo c&aacute;c cuộc khai quật từ năm 1998 đến năm 2007, c&oacute; nhiều đồ tạo t&aacute;c v&agrave; cổ vật kh&aacute;c trong buồng trung t&acirc;m v&agrave; những ng&ocirc;i mộ kh&aacute;c xung quanh, vượt ngo&agrave;i tr&iacute; tưởng tượng của con người. Nhưng &ocirc;ng cho rằng sự ph&acirc;n bố của thủy ng&acirc;n c&oacute; thể kh&ocirc;ng phải yếu tố chỉ dẫn đ&aacute;ng tin cậy. Căn buồng c&oacute; thể sụp đổ từ h&agrave;ng ngh&igrave;n năm trước, như mộ chứa đội qu&acirc;n đất nung Thủy ng&acirc;n c&oacute; thể bay hơi v&agrave; ngấm v&agrave;o đất trong nhiều thế kỷ.</p>\r\n<p class=\"Normal\">C&aacute;c chiến binh đất nung được t&igrave;m thấy b&ecirc;n ngo&agrave;i 2 km tường bao quanh buồng trung t&acirc;m. B&ecirc;n trong tường c&oacute; nhiều t&ograve;a nh&agrave; chứa thức ăn v&agrave; đồ vật kh&aacute;c m&agrave; ho&agrave;ng đế c&oacute; thể cần ở thế giới b&ecirc;n kia. C&oacute; thể ho&agrave;ng đế kh&ocirc;ng được ch&ocirc;n cất một m&igrave;nh. Tư M&atilde; Thi&ecirc;n cho biết nhiều quan lại được ch&ocirc;n c&ugrave;ng Tần Thủy Ho&agrave;ng, d&ugrave; kh&ocirc;ng r&otilde; họ c&ograve;n sống hay đ&atilde; chết v&agrave;o thời điểm đ&oacute;. Nhiều t&ograve;a nh&agrave; v&agrave; đồ vật mạ v&agrave;ng v&agrave; bạc pha thủy ng&acirc;n, một tập tục phổ biến thời đ&oacute;.</p>\r\n<p class=\"Normal\">Nếu đ&uacute;ng thủy ng&acirc;n được d&ugrave;ng cho mục đ&iacute;ch trang tr&iacute;, c&aacute;c chuy&ecirc;n gia nghi ngờ khối lượng phải rất lớn. Dựa tr&ecirc;n ước t&iacute;nh về lượng thủy ng&acirc;n sản xuất, họ suy đo&aacute;n thợ x&acirc;y đ&atilde; d&ugrave;ng khoảng 100 tấn, xấp xỉ 7m3 thủy ng&acirc;n.</p>\r\n</article>', 19, 11, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:32:15');
INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `user_id`, `category_id`, `views`, `approved`, `created_at`, `updated_at`) VALUES
(7, 'Vợ chồng NSƯT Nguyệt Hằng, Anh Tuấn khoe nhà mới, có cả thang máy', 'vo-chong-nsut-nguyet-hang-anh-tuan-khoe-nha-moi-co-ca-thang-may', 'Vợ chồng NSƯT Nguyệt Hằng, Anh Tuấn khoe nhà mới, có cả thang máy', '<h2 class=\"content-detail-sapo sm-sapo-mb-0\">Căn nh&agrave; mới của vợ chồng NSƯT Nguyệt Hằng, Anh Tuấn c&oacute; thiết kế hiện đại, được b&agrave;i tr&iacute; gọn g&agrave;ng v&agrave; đầy đủ tiện nghi.</h2>\r\n<div id=\"maincontent\" class=\"maincontent main-content\">\r\n<p>Cặp đ&ocirc;i diễn vi&ecirc;n Anh Tuấn -&nbsp;<a href=\"https://vietnamnet.vn/nguyet-hang-tag5490845484457988960.html\">Nguyệt Hằng</a>&nbsp;kh&aacute; quen mặt với kh&aacute;n giả m&agrave;n ảnh Việt. Ngo&agrave;i đời, cả hai c&oacute; 4 người con, trong đ&oacute; b&eacute; &uacute;t sinh năm 2018. Nữ diễn vi&ecirc;n<em>&nbsp;Đừng l&agrave;m mẹ c&aacute;u</em>&nbsp;thỉnh thoảng chia sẻ h&igrave;nh ảnh cuộc sống ri&ecirc;ng tr&ecirc;n trang c&aacute; nh&acirc;n, đặc biệt l&agrave; cơ ngơi mới sau khi chuyển nh&agrave; v&agrave;o đầu năm 2024.</p>\r\n<p>Đ&acirc;y l&agrave; lần thứ 3 vợ chồng Nguyệt Hằng mua nh&agrave;. \"Lại một lần liều lĩnh! Chiếc nh&agrave; nho nhỏ, hạnh ph&uacute;c to to... Gần 30 năm kể từ khi bắt đầu b&eacute;n duy&ecirc;n, si m&ecirc; nhau, rồi y&ecirc;u, rồi cưới... Đ&acirc;y l&agrave; lần thứ 3 &ocirc;ng x&atilde; liều lĩnh rồi đấy nh&eacute;!\", nữ diễn vi&ecirc;n h&agrave;i hước chia sẻ.</p>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=0&amp;s=NTsawO8Gjw3e_2TnhBr58w\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=0&amp;s=NTsawO8Gjw3e_2TnhBr58w\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=0&amp;s=NTsawO8Gjw3e_2TnhBr58w\" alt=\"nguyet hang anh tuan 01.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=0&amp;s=NTsawO8Gjw3e_2TnhBr58w\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=0&amp;s=NTsawO8Gjw3e_2TnhBr58w\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=260&amp;s=gJxCmBQONA4pmN1ZKoQUbg\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-01-2729.jpg?width=260&amp;s=gJxCmBQONA4pmN1ZKoQUbg\" data-lg-id=\"8769d55b-e8cb-4862-b1a0-aaf3913b507d\"></picture>\r\n<figcaption><em>Vợ chồng Nguyệt Hằng v&agrave; Anh Tuấn hạnh ph&uacute;c trong căn nh&agrave; mới.</em></figcaption>\r\n</figure>\r\n<p>Căn nh&agrave; mới hiện đại, gọn g&agrave;ng v&agrave; tiện nghi. Ph&ograve;ng kh&aacute;ch rộng c&oacute; sofa, kệ tivi v&agrave; tủ gi&agrave;y. Tường treo ảnh kỷ niệm của gia đ&igrave;nh. Ph&ograve;ng bếp hiện đại với đầy đủ tủ bếp, tủ lạnh, b&agrave;n ăn. Gam m&agrave;u trắng v&agrave; xanh tạo cảm gi&aacute;c tho&aacute;ng m&aacute;t cho kh&ocirc;ng gian nấu nướng của gia đ&igrave;nh.</p>\r\n<figure class=\"vnn-figure-image-gallery\">\r\n<table id=\"1717414269241\" class=\"ck-photo-collage vnn-template-noneditable image table-d-table\" data-id=\"70daa863d99f48528e9cd2ed80fb243b\">\r\n<tbody>\r\n<tr>\r\n<td><picture><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-02-2730.jpg?width=0&amp;s=pjdp_ZnhnWcBlSwE2508tg\" alt=\"\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-02-2730.jpg?width=0&amp;s=pjdp_ZnhnWcBlSwE2508tg\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-02-2730.jpg?width=0&amp;s=pjdp_ZnhnWcBlSwE2508tg\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-02-2730.jpg?width=260&amp;s=y35G8sGneEY5g_10UgypUA\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-02-2730.jpg?width=260&amp;s=y35G8sGneEY5g_10UgypUA\" data-lg-id=\"0df47c10-71a5-4e52-b913-5e269ad926c6\"></picture></td>\r\n<td><picture><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-03-2731.jpg?width=0&amp;s=XngE614ROViIdA8Wc7M4tw\" alt=\"\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-03-2731.jpg?width=0&amp;s=XngE614ROViIdA8Wc7M4tw\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-03-2731.jpg?width=0&amp;s=XngE614ROViIdA8Wc7M4tw\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-03-2731.jpg?width=260&amp;s=Pi4A8rFNeUG70V_5P6Q5RQ\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-03-2731.jpg?width=260&amp;s=Pi4A8rFNeUG70V_5P6Q5RQ\" data-lg-id=\"5c64143f-2313-465a-a515-40486c718dfc\"></picture></td>\r\n<td><picture><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-04-2732.jpg?width=0&amp;s=pPIRyrpXv_ve2ix46rNhvQ\" alt=\"\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-04-2732.jpg?width=0&amp;s=pPIRyrpXv_ve2ix46rNhvQ\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-04-2732.jpg?width=0&amp;s=pPIRyrpXv_ve2ix46rNhvQ\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-04-2732.jpg?width=260&amp;s=i0TVxpWDa1AHyThIR5s_xg\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-04-2732.jpg?width=260&amp;s=i0TVxpWDa1AHyThIR5s_xg\" data-lg-id=\"d27bda12-95fe-4677-aae4-75dc5012b9bc\"></picture></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figcaption>Căn nh&agrave; được thiết kế hiện đại với ph&ograve;ng kh&aacute;ch trang bị đầy đủ tiện nghi. Hệ thống thang m&aacute;y gi&uacute;p mọi người tiện di chuyển.</figcaption>\r\n</figure>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=0&amp;s=HxC4Yxd32FoXxKeSYSjTIw\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=0&amp;s=HxC4Yxd32FoXxKeSYSjTIw\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=0&amp;s=HxC4Yxd32FoXxKeSYSjTIw\" alt=\"nguyet hang anh tuan 05.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=0&amp;s=HxC4Yxd32FoXxKeSYSjTIw\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=0&amp;s=HxC4Yxd32FoXxKeSYSjTIw\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=260&amp;s=HABmheUiT8QoludZ9krP-w\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-05-2733.jpg?width=260&amp;s=HABmheUiT8QoludZ9krP-w\" data-lg-id=\"ef58eebe-0688-461b-b2d5-da6a1fc61a3a\"></picture>\r\n<figcaption><em>Ph&ograve;ng bếp ấm c&uacute;ng l&agrave; nơi gia đ&igrave;nh nữ diễn vi&ecirc;n sum họp, ăn uống b&ecirc;n nhau.</em></figcaption>\r\n</figure>\r\n<p>S&acirc;n thượng rộng r&atilde;i l&agrave; điểm nhấn của căn nh&agrave;, nơi gia đ&igrave;nh thư gi&atilde;n v&agrave; tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh. Vợ chồng Nguyệt Hằng trồng c&acirc;y, hoa v&agrave; nu&ocirc;i chim cảnh. Đặc biệt, vợ chồng Anh Tuấn - Nguyệt Hằng đ&atilde; lắp th&ecirc;m thang m&aacute;y để tiện cho việc di chuyển.</p>\r\n<p>Chia sẻ về cơ ngơi mới, Nguyệt Hằng cảm th&aacute;n: \"Nh&agrave; m&igrave;nh cũng phải cảm ơn &ocirc;ng b&agrave; nội - ngoại, anh chị em v&agrave; bạn b&egrave; th&acirc;n đ&atilde; hỗ trợ v&agrave; \'th&oacute;t tim\' c&ugrave;ng mỗi lần liều lĩnh của vợ chồng. D&ugrave; sao cũng phải cảm ơn &ocirc;ng x&atilde; đ&atilde; gi&uacute;p vợ liều c&ugrave;ng, mới c&oacute; th&agrave;nh quả n&agrave;y. Y&ecirc;u thương lắm\".</p>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=0&amp;s=iShfmbyzmyk78dcB8kMr8g\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=0&amp;s=iShfmbyzmyk78dcB8kMr8g\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=0&amp;s=iShfmbyzmyk78dcB8kMr8g\" alt=\"nguyet hang anh tuan 06.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=0&amp;s=iShfmbyzmyk78dcB8kMr8g\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=0&amp;s=iShfmbyzmyk78dcB8kMr8g\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=260&amp;s=xnfPwIgPjboON_pCcPXu2Q\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/4/nguyet-hang-anh-tuan-06-2734.jpg?width=260&amp;s=xnfPwIgPjboON_pCcPXu2Q\" data-lg-id=\"7dda1e0b-f64a-4c5e-9064-8c9759f3290e\"></picture>\r\n<figcaption><em>S&acirc;n thượng gần gũi với thi&ecirc;n nhi&ecirc;n của vợ chồng Nguyệt Hằng.</em></figcaption>\r\n</figure>\r\n<p>Trước khi chuyển về căn nh&agrave; hiện tại, vợ chồng Nguyệt Hằng - Anh Tuấn từng ở căn hộ chỉ rộng&nbsp;10,2m2.</p>\r\n<p>\"C&aacute;i tổ ấm \'hờ\' đầu ti&ecirc;n l&agrave; nh&agrave; 10,2m2 ở Trịnh Ho&agrave;i Đức. Lần liều đầu ti&ecirc;n sau khi về chung được 7 năm l&agrave; nh&agrave; 17,8m2 ở phố Đội Cấn, rồi v&igrave; th&ecirc;m cu T&iacute;t n&ecirc;n lại liều mua dự &aacute;n căn hộ 111m2 v&agrave; ở đ&oacute; lại \'t&ograve;i\' th&ecirc;m c&ocirc; B&uacute;n\", Nguyệt Hằng kể.</p>\r\n</div>', 20, 8, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:33:05'),
(8, 'iPad Pro OLED đang là tiền đề để Apple phát triển các dòng sản phẩm khác của họ?', 'ipad-pro-oled-dang-la-tien-de-de-apple-phat-trien-cac-dong-san-pham-khac-cua-ho', 'iPad Pro OLED đang là tiền đề để Apple phát triển các dòng sản phẩm khác của họ?', '<p>Tại sự kiện Let Loose diễn ra v&agrave;o đầu th&aacute;ng 5/2024, Apple đ&atilde; ch&iacute;nh thức giới thiệu mẫu iPad Pro mới với thiết kế tinh tế hơn v&agrave; m&agrave;n h&igrave;nh OLED, n&acirc;ng cao trải nghiệm hiển thị cho người d&ugrave;ng. Phi&ecirc;n bản mới n&agrave;y bao gồm hai k&iacute;ch cỡ 13 inch v&agrave; 11 inch, với thiết kế mỏng nhất từ trước đến nay của Apple, chỉ 5,1 mm đối với mẫu 13 inch v&agrave; 5,3 mm đối với mẫu 11 inch.</p>\r\n<p>Kh&ocirc;ng dừng lại ở đ&oacute;, c&ocirc;ng ty c&ograve;n trang bị cho m&aacute;y lớp phủ nano thật sự rất hữu dụng trong nhiều t&igrave;nh huống. Với tất cả những điều đ&oacute;, Apple dường như đang c&oacute; kế hoạch sử dụng iPad Pro 2024 l&agrave;m thiết bị ti&ecirc;n phong về mặt t&iacute;nh năng cho c&aacute;c sản phẩm kh&aacute;c của họ.</p>\r\n<p><strong>Khởi động lại cuộc đua l&agrave;m mỏng thiết bị</strong></p>\r\n<p>C&oacute; thể n&oacute;i iPad Pro 2024 đ&atilde; đ&aacute;nh dấu sự quay trở lại của Apple trong nhiệm vụ tạo ra c&aacute;c thiết bị mỏng nhẹ nhất. Trước đ&acirc;y, trong qu&aacute; tr&igrave;nh \"b&agrave;o mỏng\" sản phẩm, c&ocirc;ng ty đ&atilde; tạo ra những sự cố đ&aacute;ng tiếc như iPhone dễ d&agrave;ng bị bẻ cong, hay MacBook Pro bị thiếu c&aacute;c cổng kết nối v&agrave; lỗi b&agrave;n ph&iacute;m.</p>\r\n<p class=\"VCSortableInPreviewModeWrapper\">&nbsp;</p>\r\n<div class=\"VCSortableInPreviewMode\">\r\n<div><a class=\"detail-img-lightbox\" title=\"iPad Pro 2024 13 inch c&oacute; độ mỏng đ&aacute;ng nể\" href=\"https://genk.mediacdn.vn/139269124445442048/2024/6/20/photo-1718884307941-17188843083101887480973.jpg\" target=\"_blank\" rel=\"noopener\" data-fancybox-group=\"detail-img-lightbox\" data-fancybox=\"detail-img-lightbox\"><img class=\"lightbox-content\" title=\"iPad Pro OLED đang l&agrave; tiền đề để Apple ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm kh&aacute;c của họ?- Ảnh 1.\" src=\"https://genk.mediacdn.vn/139269124445442048/2024/6/20/photo-1718884307941-17188843083101887480973.jpg\" alt=\"iPad Pro OLED đang l&agrave; tiền đề để Apple ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm kh&aacute;c của họ?- Ảnh 1.\" width=\"1840\" height=\"1224\" loading=\"lazy\" data-original=\"https://genk.mediacdn.vn/139269124445442048/2024/6/20/photo-1718884307941-17188843083101887480973.jpg\"></a></div>\r\n<div class=\"PhotoCMS_Caption PhotoCMS_Author\">\r\n<p data-placeholder=\"Nhập ch&uacute; th&iacute;ch ảnh\">iPad Pro 2024 13 inch c&oacute; độ mỏng đ&aacute;ng nể</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Theo th&ocirc;ng tin từ tay b&uacute;t Mark Gurman của Bloomberg, người từng đưa ra c&aacute;c r&ograve; rỉ ch&iacute;nh x&aacute;c về sản phẩm Apple, th&igrave; c&ocirc;ng ty đang l&ecirc;n kế hoạch cho một chiếc iPhone 17 \"mỏng hơn đ&aacute;ng kể\" v&agrave; cũng đang nghi&ecirc;n cứu giảm độ d&agrave;y của MacBook Pro v&agrave; Apple Watch.</p>\r\n<p>Khi Apple ra mắt iPad Pro M4, họ đ&atilde; l&agrave;m một điều m&agrave; tưởng chừng như đ&atilde; dừng lại v&agrave;o năm 2016: quảng c&aacute;o về độ mỏng của thiết bị. iPad Pro mới kh&ocirc;ng chỉ mỏng hơn m&agrave; c&ograve;n thực sự l&agrave; thiết bị mỏng nhất m&agrave; Apple từng sản xuất. Thậm ch&iacute; c&ograve;n mỏng hơn cả iPod Shuffle v&agrave; Nano.</p>\r\n<p class=\"VCSortableInPreviewModeWrapper\">&nbsp;</p>\r\n<div class=\"VCSortableInPreviewMode\">\r\n<div><a class=\"detail-img-lightbox\" title=\"iPad Pro 2024 lần đầu ti&ecirc;n sử dụng m&agrave;n h&igrave;nh OLED, gi&uacute;p m&aacute;y c&oacute; thể mỏng hơn v&agrave; tăng chất lượng hiển thị\" href=\"https://genk.mediacdn.vn/139269124445442048/2024/6/20/photo-1718884309606-1718884310533302162302.jpg\" target=\"_blank\" rel=\"noopener\" data-fancybox-group=\"detail-img-lightbox\" data-fancybox=\"detail-img-lightbox\"><img class=\"lightbox-content\" title=\"iPad Pro OLED đang l&agrave; tiền đề để Apple ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm kh&aacute;c của họ?- Ảnh 2.\" src=\"https://genk.mediacdn.vn/139269124445442048/2024/6/20/photo-1718884309606-1718884310533302162302.jpg\" alt=\"iPad Pro OLED đang l&agrave; tiền đề để Apple ph&aacute;t triển c&aacute;c d&ograve;ng sản phẩm kh&aacute;c của họ?- Ảnh 2.\" width=\"1788\" height=\"1186\" loading=\"lazy\" data-original=\"https://genk.mediacdn.vn/139269124445442048/2024/6/20/photo-1718884309606-1718884310533302162302.jpg\"></a></div>\r\n<div class=\"PhotoCMS_Caption PhotoCMS_Author\">\r\n<p data-placeholder=\"Nhập ch&uacute; th&iacute;ch ảnh\">iPad Pro 2024 lần đầu ti&ecirc;n sử dụng m&agrave;n h&igrave;nh OLED, gi&uacute;p m&aacute;y c&oacute; thể mỏng hơn v&agrave; tăng chất lượng hiển thị</p>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Một phần độ mỏng n&agrave;y đạt được cũng l&agrave; nhờ Apple lần đầu ti&ecirc;n chuyển sang sử dụng m&agrave;n h&igrave;nh OLED tr&ecirc;n iPad thay cho LCD v&agrave; Mini LED trước đ&oacute;. iPad Pro M4 được trang bị m&agrave;n h&igrave;nh OLED Tandem, c&ograve;n được gọi l&agrave; Ultra Retina XDR, mang đến chất lượng hiển thị vượt trội. C&ocirc;ng nghệ m&agrave;n h&igrave;nh n&agrave;y sử dụng hai lớp OLED chồng l&ecirc;n nhau, gi&uacute;p tăng cường độ s&aacute;ng v&agrave; độ tương phản của m&agrave;n h&igrave;nh.</p>\r\n<p>Với khả năng hiển thị m&agrave;u đen s&acirc;u, độ s&aacute;ng tối đa l&ecirc;n đến 1.600 nits khi xem nội dung HDR v&agrave; dải m&agrave;u rộng. Đ&aacute;ng ch&uacute; &yacute;, Apple cho biết iPad Pro OLED m&agrave;n h&igrave;nh lớn hơn l&agrave; thiết bị mỏng nhất m&agrave; h&atilde;ng từng sản xuất.</p>\r\n<p>Nhưng kh&aacute;c với qu&aacute; khứ, Apple đ&atilde; kh&ocirc;ng l&agrave;m mỏng thiết bị bằng mọi gi&aacute; v&agrave; dẫn đến c&aacute;c sự cố ảnh hưởng đến người d&ugrave;ng. Khi nghe đến một thiết bị \"si&ecirc;u mỏng\", th&igrave; hai lo lắng chủ yếu sẽ l&agrave; thời lượng pin v&agrave; độ cứng c&aacute;p.</p>\r\n<p>Theo trải nghiệm của t&ocirc;i, chiếc iPad Pro M4 c&oacute; thời lượng pin rất ấn tượng, m&aacute;y cho khả năng hoạt động li&ecirc;n tục với cường độ cao trong một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng cần sạc lại.</p>', 21, 10, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:40:32'),
(9, 'Dàn sao tưng bừng góp mặt ở lễ vu quy của Midu và chồng thiếu gia kém tuổi', 'dan-sao-tung-bung-gop-mat-o-le-vu-quy-cua-midu-va-chong-thieu-gia-kem-tuoi', 'Dàn sao tưng bừng góp mặt ở lễ vu quy của Midu và chồng thiếu gia kém tuổi', '<h2 class=\"content-detail-sapo sm-sapo-mb-0\">S&aacute;ng 23/6, lễ vu quy của diễn vi&ecirc;n Midu v&agrave; chồng thiếu gia Minh Đạt ch&iacute;nh thức diễn ra trước sự chứng kiến của hai b&ecirc;n gia đ&igrave;nh, bạn b&egrave;, đồng nghiệp th&acirc;n thiết.</h2>\r\n<div id=\"maincontent\" class=\"maincontent main-content\">\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=0&amp;s=tP5F3s_tsxtNZR4LOMI5EA\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=0&amp;s=tP5F3s_tsxtNZR4LOMI5EA\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=0&amp;s=tP5F3s_tsxtNZR4LOMI5EA\" alt=\"IMG_1734.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=0&amp;s=tP5F3s_tsxtNZR4LOMI5EA\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=0&amp;s=tP5F3s_tsxtNZR4LOMI5EA\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=260&amp;s=aDnn_xtufKNJ4vObVzbfrQ\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1734-959.jpg?width=260&amp;s=aDnn_xtufKNJ4vObVzbfrQ\" data-lg-id=\"90a85f9f-5af6-4a62-8ad3-5b90a9da9dc7\"></picture>\r\n<figcaption><em>S&aacute;ng 23/6, lễ vu quy của diễn vi&ecirc;n&nbsp;<a href=\"https://vietnamnet.vn/midu-tag16895055152713849714.html\">Midu</a>&nbsp;v&agrave; chồng thiếu gia Minh Đạt đ&atilde; diễn ra trong sự ch&uacute;c ph&uacute;c hai b&ecirc;n gia đ&igrave;nh, bạn b&egrave;, đồng nghiệp th&acirc;n thiết.&nbsp;</em></figcaption>\r\n</figure>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=0&amp;s=0StzKtH9cjJ8V_yXkB6mtA\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=0&amp;s=0StzKtH9cjJ8V_yXkB6mtA\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=0&amp;s=0StzKtH9cjJ8V_yXkB6mtA\" alt=\"IMG_1738.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=0&amp;s=0StzKtH9cjJ8V_yXkB6mtA\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=0&amp;s=0StzKtH9cjJ8V_yXkB6mtA\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=260&amp;s=601CffKIbRQYAJbuv-8Rpw\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1738-960.jpg?width=260&amp;s=601CffKIbRQYAJbuv-8Rpw\" data-lg-id=\"d934df87-0fb2-47d2-b3e9-0a32a47a7d4a\"></picture>\r\n<figcaption><em>Nhiều bạn b&egrave;, đồng nghiệp của Midu trong showbiz tham gia hội ph&ugrave; d&acirc;u, ph&ugrave; rể. C&aacute;c người đẹp gồm Dương Ho&agrave;ng Yến, Ho&agrave;ng Yến Chibi, Jun Phạm, T&uacute; Hảo, Phương Mỹ Chi... x&uacute;ng x&iacute;nh &aacute;o d&agrave;i, c&oacute; mặt tại nh&agrave; c&ocirc; d&acirc;u từ sớm.&nbsp;</em></figcaption>\r\n</figure>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=0&amp;s=Exc2eC1eBDSEYh52mP-N_g\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=0&amp;s=Exc2eC1eBDSEYh52mP-N_g\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=0&amp;s=Exc2eC1eBDSEYh52mP-N_g\" alt=\"IMG_1732.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=0&amp;s=Exc2eC1eBDSEYh52mP-N_g\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=0&amp;s=Exc2eC1eBDSEYh52mP-N_g\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=260&amp;s=TbbdW8xd8c2K9JCHHN3oAw\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1732-961.jpg?width=260&amp;s=TbbdW8xd8c2K9JCHHN3oAw\" data-lg-id=\"4dacf8b4-d5d4-4e4a-b494-f5327eac222a\"></picture>\r\n<figcaption><em>D&agrave;n b&ecirc; tr&aacute;p nh&agrave; trai bảnh bao quy tụ diễn vi&ecirc;n Otis, Hải Nam, Tiko Tiến C&ocirc;ng, MC Trần Anh Huy, Quang Bảo, Quang Huy, Minh X&ugrave;...</em></figcaption>\r\n</figure>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=0&amp;s=OUtxvgz_FsJp8Yw65dpjfg\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=0&amp;s=OUtxvgz_FsJp8Yw65dpjfg\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=0&amp;s=OUtxvgz_FsJp8Yw65dpjfg\" alt=\"IMG_1735.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=0&amp;s=OUtxvgz_FsJp8Yw65dpjfg\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=0&amp;s=OUtxvgz_FsJp8Yw65dpjfg\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=260&amp;s=BCal8r8xpTX_Yg3fU1o1wg\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1735-962.jpg?width=260&amp;s=BCal8r8xpTX_Yg3fU1o1wg\" data-lg-id=\"c19bc853-229e-4e39-8136-809fe8b3eb50\"></picture>\r\n<figcaption><em>Midu c&ugrave;ng &ecirc;-k&iacute;p đ&atilde; chuẩn bị nhiều th&aacute;ng cho ng&agrave;y trọng đại. Đội ngũ của NTK Dũng Nguyễn gấp r&uacute;t ho&agrave;n thiện 40 mẫu &aacute;o d&agrave;i cho lễ vu quy của Midu c&ugrave;ng thiếu gia Minh Đạt. Trong đ&oacute;, 29 mẫu &aacute;o d&agrave;i được may ri&ecirc;ng cho d&agrave;n b&ecirc; tr&aacute;p.&nbsp;</em></figcaption>\r\n</figure>\r\n<figure class=\"image vnn-content-image\"><picture><source srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=0&amp;s=o4vqLMIqdAPc7zYULeH16Q\" media=\"(max-width: 1023px)\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=0&amp;s=o4vqLMIqdAPc7zYULeH16Q\"><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=0&amp;s=o4vqLMIqdAPc7zYULeH16Q\" alt=\"IMG_1741.jpg\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=0&amp;s=o4vqLMIqdAPc7zYULeH16Q\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=0&amp;s=o4vqLMIqdAPc7zYULeH16Q\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=260&amp;s=Bm-GyhRQhdkNuNOLVBGXqw\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1741-963.jpg?width=260&amp;s=Bm-GyhRQhdkNuNOLVBGXqw\" data-lg-id=\"eb61e499-8cef-411a-8923-a7d943162dec\"></picture>\r\n<figcaption><em>D&agrave;n b&ecirc; tr&aacute;p nh&agrave; trai tạo d&aacute;ng chụp h&igrave;nh dễ thương trước khi c&ugrave;ng ch&uacute; rể Minh Đạt mang s&iacute;nh lễ tới nh&agrave; c&ocirc; d&acirc;u Midu ở Quận 2 (TPHCM).</em></figcaption>\r\n</figure>\r\n<figure class=\"vnn-figure-image-gallery\">\r\n<table id=\"1719109996356\" class=\"ck-photo-collage vnn-template-noneditable image table-d-table\" data-id=\"443b3caa2dc64395b050c35458e0eabe\">\r\n<tbody>\r\n<tr>\r\n<td><picture><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/dan-sao-tung-bung-gop-mat-o-le-vu-quy-cua-midu-va-chong-thieu-gia-kem-tuoi-964.jpg?width=0&amp;s=S4dUccVjV52gS4iCQ32-xg\" alt=\"\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/dan-sao-tung-bung-gop-mat-o-le-vu-quy-cua-midu-va-chong-thieu-gia-kem-tuoi-964.jpg?width=0&amp;s=S4dUccVjV52gS4iCQ32-xg\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/dan-sao-tung-bung-gop-mat-o-le-vu-quy-cua-midu-va-chong-thieu-gia-kem-tuoi-964.jpg?width=0&amp;s=S4dUccVjV52gS4iCQ32-xg\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/dan-sao-tung-bung-gop-mat-o-le-vu-quy-cua-midu-va-chong-thieu-gia-kem-tuoi-964.jpg?width=260&amp;s=tP9KLuQhUPhfOb9W632eqg\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/dan-sao-tung-bung-gop-mat-o-le-vu-quy-cua-midu-va-chong-thieu-gia-kem-tuoi-964.jpg?width=260&amp;s=tP9KLuQhUPhfOb9W632eqg\" data-lg-id=\"4b60eaa6-d6cb-4707-b606-a692dbe1e50b\"></picture></td>\r\n<td><picture><img class=\" lazy-loaded\" src=\"data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\" srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1739-965.jpg?width=0&amp;s=3wRbCBjkbFQJN19ciQ1u4A\" alt=\"\" data-original=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1739-965.jpg?width=0&amp;s=3wRbCBjkbFQJN19ciQ1u4A\" data-srcset=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1739-965.jpg?width=0&amp;s=3wRbCBjkbFQJN19ciQ1u4A\" data-thumb-small-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1739-965.jpg?width=260&amp;s=0RBhDYKtQ8BA6ueywhM6pg\" data-thumb-src=\"https://static-images.vnncdn.net/vps_images_publish/000001/000003/2024/6/23/img-1739-965.jpg?width=260&amp;s=0RBhDYKtQ8BA6ueywhM6pg\" data-lg-id=\"1389f00a-56e7-422f-b464-db028c638625\"></picture></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<figcaption><em>MC Trần Anh Huy chia sẻ tr&ecirc;n trang c&aacute; nh&acirc;n: \"Đi rước c&ocirc; bạn th&acirc;n về nh&agrave; chồng\".&nbsp;</em></figcaption>\r\n</figure>\r\n</div>', 22, 8, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:33:53'),
(10, 'Nvidia mất hơn 200 tỷ USD vốn hóa trong 2 phiên', 'nvidia-mat-hon-200-ty-usd-von-hoa-trong-2-phien', 'Nvidia mất hơn 200 tỷ USD vốn hóa trong 2 phiên', '<p class=\"description\">Hai phi&ecirc;n cổ phiếu mất gi&aacute; li&ecirc;n tiếp khiến vốn h&oacute;a Nvidia lao dốc, ng&agrave;y c&agrave;ng c&aacute;ch xa vị tr&iacute; c&ocirc;ng ty gi&aacute; trị nhất thế giới.</p>\r\n<article class=\"fck_detail \">\r\n<p class=\"Normal\">Chốt phi&ecirc;n giao dịch 21/6, cổ phiếu<a href=\"https://vnexpress.net/chu-de/nvidia-1979\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-KinhDoanh_QuocTe-4761294&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Nvidia&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">&nbsp;Nvidia</a>&nbsp;giảm 3,2%. Tổng cộng hai phi&ecirc;n qua, m&atilde; n&agrave;y mất 6,7%, khiến vốn h&oacute;a h&atilde;ng chip Mỹ bốc hơi hơn 220 tỷ USD.</p>\r\n<p class=\"Normal\">Hiện tại, gi&aacute; trị thị trường của Nvidia l&agrave; 3.100 tỷ USD, xếp sau&nbsp;<a href=\"https://vnexpress.net/chu-de/apple-inc-1541\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-KinhDoanh_QuocTe-4761294&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Apple&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">Apple</a>&nbsp;(3.200 tỷ USD) v&agrave;&nbsp;<a href=\"https://vnexpress.net/chu-de/microsoft-1553\" rel=\"dofollow\" data-itm-source=\"#vn_source=Detail-KinhDoanh_QuocTe-4761294&amp;vn_campaign=Box-InternalLink&amp;vn_medium=Link-Microsoft&amp;vn_term=Desktop&amp;vn_thumb=0\" data-itm-added=\"1\">Microsoft</a>&nbsp;(3.300 tỷ USD). Chỉ sau v&agrave;i ng&agrave;y l&ecirc;n ng&ocirc;i c&ocirc;ng ty gi&aacute; trị nhất thế giới, Nvidia đ&atilde; để mất vị tr&iacute; n&agrave;y v&agrave; l&ugrave;i về thứ 3.</p>\r\n<div id=\"sis_outstream__c\" data-set=\"dfp\">\r\n<div id=\"video_outstream\">\r\n<div class=\"txt_ads\">Advertisement</div>\r\n<div id=\"sis_outstream\" data-google-query-id=\"CMSAnNao8YYDFSbIFgUdY0UEdA\">\r\n<div id=\"google_ads_iframe_/27973503/OV.Vnexpress/Desktop/Outstream/kinhdoanh/kinhdoanh.quocte.detail_0__container__\"><iframe id=\"google_ads_iframe_/27973503/OV.Vnexpress/Desktop/Outstream/kinhdoanh/kinhdoanh.quocte.detail_0\" tabindex=\"0\" title=\"3rd party ad content\" name=\"google_ads_iframe_/27973503/OV.Vnexpress/Desktop/Outstream/kinhdoanh/kinhdoanh.quocte.detail_0\" width=\"660\" height=\"360\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" allow=\"attribution-reporting\" aria-label=\"Advertisement\" data-google-container-id=\"4\" data-load-complete=\"true\"></iframe></div>\r\n</div>\r\n</div>\r\n</div>\r\n<p class=\"Normal\">Tr&ecirc;n<em>&nbsp;Bloomberg</em>, c&aacute;c nh&agrave; đầu tư cho biết họ kh&ocirc;ng nhận thấy c&oacute; l&yacute; do n&agrave;o mang t&iacute;nh nền tảng khiến m&atilde; n&agrave;y bị b&aacute;n th&aacute;o trong 2 phi&ecirc;n qua. Tuy nhi&ecirc;n, diễn biến n&agrave;y cho thấy sức tăng mạnh của cổ phiếu Nvidia (200% chỉ trong một năm qua) đang khiến h&atilde;ng dễ tổn thương thế n&agrave;o trước c&aacute;c đợt điều chỉnh đột ngột.</p>\r\n<p class=\"Normal\">\"Sự rung lắc bất thường tr&ecirc;n thị trường với cổ phiếu c&aacute;c c&ocirc;ng ty lớn c&oacute; thể thổi bay h&agrave;ng trăm triệu, thậm ch&iacute; h&agrave;ng trăm tỷ USD vốn h&oacute;a của họ. C&ograve;n về Nvidia, t&ocirc;i kh&ocirc;ng thấy họ c&oacute; vấn đề g&igrave;\", Russ Mould - Gi&aacute;m đốc đầu tư tại AJ Bell nhận x&eacute;t.</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\">\r\n<div class=\"fig-picture\" data-href=\"\" data-target=\"\" data-inimage=\"done\"><img src=\"https://vcdn1-kinhdoanh.vnecdn.net/2024/06/22/a1-4641-1719035693.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sLvdLNgCAtrdbquPpjlI_g\" alt=\"Logo Nvidia tại triển l&atilde;m Computex 2024, h&ocirc;m 4/6 tại Đ&agrave;i Loan. Ảnh: Khương Nha\" data-damid=\"116106\" data-natural-h=\"900\" data-natural-width=\"1500\">\r\n<div class=\"embed-container-ads\">&nbsp;</div>\r\n</div>\r\n<figcaption>\r\n<p class=\"Image\">Logo Nvidia tại triển l&atilde;m Computex 2024, h&ocirc;m 4/6 tại Đ&agrave;i Loan. Ảnh:&nbsp;<em>Khương Nha</em></p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"Normal\">Một số nh&agrave; ph&acirc;n t&iacute;ch đ&atilde; dự b&aacute;o trước diễn biến n&agrave;y. Trong bản đ&aacute;nh gi&aacute; h&ocirc;m 19/6, Bank of America cho rằng \"cổ phiếu Nvidia tăng thẳng đứng khiến m&atilde; n&agrave;y dễ tổn thương nếu nh&agrave; đầu tư b&aacute;n chốt lời\".</p>\r\n<p class=\"Normal\">D&ugrave; vậy, họ cho rằng biến động sẽ chỉ diễn ra trong ngắn hạn. Bank of America vẫn khuyến nghị nh&agrave; đầu tư mua m&atilde; n&agrave;y. Gi&aacute; mục ti&ecirc;u của họ trong một năm tới l&agrave; 150 USD. Trong khi gi&aacute; cổ phiếu Nvidia hiện tại l&agrave; 125 USD.</p>\r\n<p class=\"Normal\">C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch tại Melius Research c&ograve;n lạc quan hơn, khi cho rằng cổ phiếu Nvidia sẽ l&ecirc;n 160 USD. Đ&acirc;y l&agrave; lần thứ 5 họ n&acirc;ng dự b&aacute;o trong năm nay.</p>\r\n<p class=\"Normal\">T&iacute;nh to&aacute;n của&nbsp;<em>Fortune</em> cho thấy nếu bỏ 1.000 USD mua cổ phiếu Nvidia c&aacute;ch đ&acirc;y 10 năm, hiện tại, nh&agrave; đầu tư giờ sẽ c&oacute; 300.000 USD.</p>\r\n</article>', 23, 4, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:35:38'),
(11, 'Maiores odio temporibus doloribus.', 'vel-sed-vero-rerum-quas-aut', 'Repudiandae dolores qui distinctio omnis libero accusantium.', 'Aut aliquam qui beatae illo ipsum perspiciatis nobis. Doloribus ratione dolorem sed harum est consectetur. Id neque soluta qui. Sit dolorem quae et nihil asperiores.', 24, 5, 0, 1, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(12, 'Nisi nulla sit eos.', 'quidem-harum-impedit-corrupti-dolorem-quaerat-qui', 'Perferendis aut odio qui sit qui aut.', 'Perspiciatis consectetur eum harum rem cupiditate. Quis sed aspernatur sunt sed. Alias voluptas eligendi ullam et numquam totam. Ut non quibusdam laborum consequatur quia accusantium.', 25, 14, 0, 1, '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(13, 'Công ty Du lịch Giang Điền bị tình nghi lừa đảo 1.000 tỷ đồng', 'cong-ty-du-lich-giang-dien-bi-tinh-nghi-lua-dao-1000-ty-dong', 'Công ty Du lịch Giang Điền bị tình nghi lừa đảo 1.000 tỷ đồng', '<p class=\"Normal\">Dự &aacute;n Khu d&acirc;n cư mật độ thấp v&agrave; du lịch sinh th&aacute;i Giang Điền tại huyện Trảng Bom rộng 110 ha. Trong đ&oacute;, khu A rộng 37 ha l&agrave; du lịch sinh th&aacute;i, khu B v&agrave; C l&agrave; dự &aacute;n d&acirc;n cư rộng 81 ha nằm b&ecirc;n cạnh s&ocirc;ng Bu&ocirc;ng, đối diện khu du lịch.</p>\r\n<figure class=\"tplCaption action_thumb_added\" data-href=\"\" data-target=\"\">\r\n<div class=\"fig-picture\" data-href=\"\" data-target=\"\" data-inimage=\"done\"><img src=\"https://vcdn1-vnexpress.vnecdn.net/2024/06/23/anh-1-JPG-1688654149-2482-1719123562.jpg?w=0&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=aVZAVVfd2wr8DrYLIOdqZA\" alt=\"Dự &aacute;n khu d&acirc;n cư mật độ thấp v&agrave; du lịch sinh th&aacute;i Giang Điền\" data-natural-h=\"1350\" data-natural-width=\"2400\">\r\n<div class=\"embed-container-ads\">&nbsp;</div>\r\n</div>\r\n<figcaption>\r\n<p class=\"Image\">Dự &aacute;n khu d&acirc;n cư mật độ thấp v&agrave; du lịch sinh th&aacute;i Giang Điền. Ảnh:&nbsp;<em>Phước Tuấn</em></p>\r\n</figcaption>\r\n</figure>\r\n<p class=\"Normal\">Theo C&ocirc;ng an Đồng Nai, C&ocirc;ng ty Cổ phần Du lịch Giang Điền chưa được cơ quan c&oacute; thẩm quyền chấp thuận chủ trương đầu tư, giao đất, chuyển đổi mục đ&iacute;ch sử dụng đất, cấp ph&eacute;p x&acirc;y dựng v&agrave; chưa đủ điều kiện b&aacute;n đất nền tại khu B v&agrave; khu C của dự &aacute;n.</p>\r\n<p class=\"Normal\">Tuy nhi&ecirc;n, c&ocirc;ng ty đ&atilde; trực tiếp v&agrave; th&ocirc;ng qua c&aacute;c c&ocirc;ng ty m&ocirc;i giới bất động sản để quảng b&aacute;, giới thiệu sản phẩm v&agrave; k&yacute; kết hợp đồng b&aacute;n đất nền tại dự &aacute;n tr&ecirc;n. Việc n&agrave;y bị cho l&agrave; đưa ra th&ocirc;ng tin gian dối, kh&ocirc;ng đ&uacute;ng sự thật về ph&aacute;p l&yacute; dự &aacute;n để khuyến kh&iacute;ch kh&aacute;ch h&agrave;ng mua đất nền, x&acirc;y nh&agrave; mẫu.</p>\r\n<p class=\"Normal\">Ngo&agrave;i ra, c&ocirc;ng ty c&ograve;n cam kết sau khi k&yacute; hợp đồng từ 12 th&aacute;ng đến 24 th&aacute;ng sẽ b&agrave;n giao giấy chứng nhận quyền sử dụng đất cho kh&aacute;ch h&agrave;ng. Từ đ&oacute;, c&aacute;c kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng, k&yacute; hợp đồng v&agrave; thanh to&aacute;n gi&aacute; trị hợp đồng theo tiến độ m&agrave; c&ocirc;ng ty y&ecirc;u cầu.</p>\r\n<p class=\"Normal\">Từ năm 2010 đến năm 2018, C&ocirc;ng ty Cổ phần Du lịch Giang Điền đ&atilde; k&yacute; khoảng 1.267 hợp đồng mua b&aacute;n với c&aacute;c kh&aacute;ch h&agrave;ng, nh&agrave; đầu tư, để thu về số tiền đặc biệt lớn (hơn 1.000 tỷ đồng).</p>', 26, 9, 0, 1, '2024-06-22 10:37:21', '2024-06-23 01:43:51'),
(14, 'Diễn viên Ngọc Anh tiết lộ tin vui có em bé, Hồ Ngọc Hà - Kim Lý chúc mừng sinh nhật cậu cả', 'dien-vien-ngoc-anh-tiet-lo-tin-vui-co-em-be-ho-ngoc-ha---kim-ly-chuc-mung-sinh-nhat-cau-ca', 'Diễn viên Ngọc Anh tiết lộ tin vui có em bé, Hồ Ngọc Hà - Kim Lý chúc mừng sinh nhật cậu cả', '<div class=\"VCSortableInPreviewMode LayoutAlbumWrapper alignJustify active\">\r\n<div class=\"LayoutAlbumContent\">\r\n<div class=\"LayoutAlbumRow\">\r\n<figure class=\"LayoutAlbumItem\"><a class=\"fancybox\" title=\"\" href=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/w1366-h2048-94592899742090214949105.jpg\" rel=\"lightbox\" data-title=\"\" data-thumbnail=\"https://cdn-images.vtv.vn/thumb_w/660/66349b6076cb4dee98746cf1/2024/06/23/w1366-h2048-94592899742090214949105.jpg\"><img title=\"\" src=\"https://cdn-images.vtv.vn/thumb_w/660/66349b6076cb4dee98746cf1/2024/06/23/w1366-h2048-94592899742090214949105.jpg\" alt=\"\"></a></figure>\r\n<figure class=\"LayoutAlbumItem\"><a class=\"fancybox\" title=\"\" href=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/tin-sao-viet-22-6-38-ngoisaovn-w1366-h2048-68898986061078626951307.jpg\" rel=\"lightbox\" data-title=\"\" data-thumbnail=\"https://cdn-images.vtv.vn/thumb_w/660/66349b6076cb4dee98746cf1/2024/06/23/tin-sao-viet-22-6-38-ngoisaovn-w1366-h2048-68898986061078626951307.jpg\"><img title=\"\" src=\"https://cdn-images.vtv.vn/thumb_w/660/66349b6076cb4dee98746cf1/2024/06/23/tin-sao-viet-22-6-38-ngoisaovn-w1366-h2048-68898986061078626951307.jpg\" alt=\"\"></a></figure>\r\n</div>\r\n</div>\r\n<div class=\"LayoutAlbumCaptionWrapper\">\r\n<p class=\"LayoutAlbumCaption\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Diễn vi&ecirc;n Ngọc Anh g&acirc;y bất ngờ khi tiết lộ c&oacute; tin vui bầu b&iacute; sau &iacute;t th&aacute;ng theo chồng về dinh. \"C&ocirc; ỏng 5 th&aacute;ng!\", c&ocirc; viết. Dưới phần b&igrave;nh luận, kh&aacute;n giả v&agrave; bạn b&egrave; đ&atilde; gửi lời ch&uacute;c mừng tới nữ diễn vi&ecirc;n.</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b9504251e27900a72642\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 2.\" src=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/ho-ngoc-ha-52438210626125789874300.jpeg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 2.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/ho-ngoc-ha-52438210626125789874300.jpeg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Hồ Ngọc H&agrave; v&agrave; Kim L&yacute; đ&atilde; tổ chức một bữa tiệc đơn giản c&ugrave;ng lời ngọt ng&agrave;o gửi gắm đến con trai Subeo: \"14 năm được l&agrave;m mẹ của con thật hạnh ph&uacute;c v&agrave; c&oacute; &yacute; nghĩa trong đời. Ch&uacute;c con lu&ocirc;n b&igrave;nh an nh&eacute; cậu cả\".</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b94f4251e27900a72640\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 3.\" src=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/w1638-h2048-55113456942036215509732.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 3.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/w1638-h2048-55113456942036215509732.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Đ&ocirc;ng Nhi đ&atilde; đăng tải bộ ảnh b&ecirc;n con g&aacute;i trong dịp &aacute;i nữ tr&ograve;n 4 tuổi. \"Winnie của mẹ đ&atilde; c&oacute; 4 năm đầu đời hồn nhi&ecirc;n, vui vẻ, đầy ắp tiếng cười, cũng c&oacute; những kỷ niệm ốm đau, kh&oacute; chịu, rơi nước mắt nhưng con g&aacute;i của mẹ vẫn lu&ocirc;n mạnh mẽ v&agrave; thật hiểu chuyện\", nữ ca sĩ viết.</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b94f4251e27900a7263f\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 4.\" src=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/1536-h2048-32595838144945566313890.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 4.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/1536-h2048-32595838144945566313890.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Bảo Anh gia nhập hội nghiện con: \"Sống một đời c&oacute; l&atilde;i, l&atilde;i nguy&ecirc;n chiếc em b&eacute; t&igrave;nh cảm xỉu l&ecirc;n xỉu xuống n&agrave;y của t&ocirc;i\".</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b94f4251e27900a7263e\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 5.\" src=\"https://cdn-images.vtv.vn/thumb_w/640/66349b6076cb4dee98746cf1/2024/06/23/448797114-3176466179153114-4195694291612313064-n-02373164963219599713660.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 5.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/448797114-3176466179153114-4195694291612313064-n-02373164963219599713660.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">MC Mai Phương trở lại với vai tr&ograve; BTV, MC truyền h&igrave;nh sau 2 th&aacute;ng sinh con. Người đẹp lấy lại v&oacute;c d&aacute;ng rất nhanh ch&oacute;ng.</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b94f4251e27900a72641\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 6.\" src=\"https://cdn-images.vtv.vn/thumb_w/640/66349b6076cb4dee98746cf1/2024/06/23/448848320-7802829246405136-470945430363802476-n-2512-14497069651514681218800.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 6.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/448848320-7802829246405136-470945430363802476-n-2512-14497069651514681218800.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Diễn vi&ecirc;n Anh Đức đăng ảnh c&ugrave;ng bạn g&aacute;i Anh Phạm, k&egrave;m th&ocirc;ng tin th&ocirc;ng b&aacute;o về lễ cưới của cặp đ&ocirc;i sẽ diễn ra ng&agrave;y 26/7.</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b9504251e27900a72645\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 7.\" src=\"https://cdn-images.vtv.vn/thumb_w/640/66349b6076cb4dee98746cf1/2024/06/23/448704069-1000623278141091-3811399758742354270-n-54068456121343372373423.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 7.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/448704069-1000623278141091-3811399758742354270-n-54068456121343372373423.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Hoa hậu Th&ugrave;y Ti&ecirc;n lần đầu bước sang lĩnh vực điện ảnh. C&ocirc; sẽ tham gia bộ phim kinh dị c&oacute; t&ecirc;n \"Linh mi&ecirc;u\", diễn xuất b&ecirc;n cạnh nghệ sĩ Hồng Đ&agrave;o.</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b9504251e27900a72644\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 8.\" src=\"https://cdn-images.vtv.vn/thumb_w/640/66349b6076cb4dee98746cf1/2024/06/23/dat-ngoc-han-11-7894-1719029333-26143251393305636354187.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 8.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/dat-ngoc-han-11-7894-1719029333-26143251393305636354187.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Hoa hậu Ngọc H&acirc;n v&agrave; &ocirc;ng x&atilde; Ph&uacute; Đạt lần đầu tiết lộ h&igrave;nh ảnh trong buổi lễ đăng k&yacute; kết h&ocirc;n ở Arab Saudi 5 năm trước.</p>\r\n</div>\r\n</div>\r\n<div class=\"VCSortableInPreviewMode active\">\r\n<div><img id=\"img_6677b9504251e27900a72646\" title=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 9.\" src=\"https://cdn-images.vtv.vn/thumb_w/640/66349b6076cb4dee98746cf1/2024/06/23/448737549-2412747505585536-9221745216370007613-n-2349-23088247936511186226881.jpg\" alt=\"Diễn vi&ecirc;n Ngọc Anh tiết lộ tin vui c&oacute; em b&eacute;, Hồ Ngọc H&agrave; - kim L&yacute; ch&uacute;c mừng sinh nhật cậu cả - Ảnh 9.\" width=\"\" height=\"\" data-original=\"https://cdn-images.vtv.vn/66349b6076cb4dee98746cf1/2024/06/23/448737549-2412747505585536-9221745216370007613-n-2349-23088247936511186226881.jpg\"></div>\r\n<div class=\"PhotoCMS_Caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Kh&aacute;c hẳn với vẻ quyền lực, trang nghi&ecirc;m tr&ecirc;n phim &ldquo;Trạm cứu hộ tr&aacute;i tim&rdquo;, NSND Thu H&agrave; ngo&agrave;i đời trẻ trung, tr&agrave;n đầy năng lượng v&agrave; được nhiều kh&aacute;n giả khen l&agrave; \"người đẹp kh&ocirc;ng tuổi\".</p>\r\n</div>\r\n</div>', 27, 5, 1, 1, '2024-06-22 10:37:21', '2024-06-23 02:42:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 2, 10, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 6, 6, NULL, NULL),
(7, 7, 6, NULL, NULL),
(8, 8, 5, NULL, NULL),
(9, 9, 2, NULL, NULL),
(10, 10, 5, NULL, NULL),
(11, 11, 8, NULL, NULL),
(12, 12, 10, NULL, NULL),
(13, 13, 6, NULL, NULL),
(14, 14, 1, NULL, NULL),
(21, 1, 11, NULL, NULL),
(22, 1, 12, NULL, NULL),
(23, 2, 13, NULL, NULL),
(24, 2, 14, NULL, NULL),
(25, 3, 15, NULL, NULL),
(26, 3, 16, NULL, NULL),
(27, 3, 17, NULL, NULL),
(28, 4, 18, NULL, NULL),
(29, 4, 19, NULL, NULL),
(30, 5, 20, NULL, NULL),
(31, 6, 21, NULL, NULL),
(32, 7, 22, NULL, NULL),
(33, 7, 23, NULL, NULL),
(34, 9, 24, NULL, NULL),
(35, 10, 25, NULL, NULL),
(36, 14, 26, NULL, NULL),
(37, 14, 27, NULL, NULL),
(38, 8, 28, NULL, NULL),
(39, 8, 29, NULL, NULL),
(40, 13, 30, NULL, NULL),
(41, 13, 31, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'user', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 'admin', '2024-06-22 10:37:21', '2024-06-22 10:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_first_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_second_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_first_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_second_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_our_mission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_our_vision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_services` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `about_first_text`, `about_second_text`, `about_first_image`, `about_second_image`, `about_our_mission`, `about_our_vision`, `about_services`, `created_at`, `updated_at`) VALUES
(1, 'Ut sed aut dolorem minus ipsum qui. Eos omnis quibusdam corporis quibusdam. Dolor fuga voluptatem beatae qui eius.', 'Veritatis assumenda dolore et odio dolores. Voluptas qui aut quae voluptatem et.', 'setting/about-img-1.jpg', 'setting/about-img-2.jpg', 'Labore eveniet officia ut a sequi distinctio aperiam. Sint mollitia expedita magni accusamus veritatis. Sint deleniti nihil eligendi est ut atque praesentium at. Dolores nemo dolore excepturi.', 'Aliquid nostrum deleniti voluptas iste animi. Laboriosam ut repellat commodi vel quisquam illo facilis. Qui velit et est vero.', 'Quis corporis animi quasi et distinctio quam. Nobis dolore est earum nihil consequatur velit. Quaerat corrupti est harum vitae fuga libero rerum. Numquam numquam cupiditate minus harum quia enim sed.', '2024-06-22 10:37:21', '2024-06-22 10:37:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'neque', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 'consectetur', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 'et', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 'est', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 'dolorum', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(11, 'thpt', '2024-06-22 18:19:12', '2024-06-22 18:19:12'),
(12, '2024', '2024-06-22 18:19:12', '2024-06-22 18:19:12'),
(13, 'thethao', '2024-06-23 01:15:15', '2024-06-23 01:15:15'),
(14, 'euro', '2024-06-23 01:15:15', '2024-06-23 01:15:15'),
(15, 'doisong', '2024-06-23 01:17:30', '2024-06-23 01:17:30'),
(16, 'xahoi', '2024-06-23 01:17:30', '2024-06-23 01:17:30'),
(17, 'caitao', '2024-06-23 01:17:30', '2024-06-23 01:17:30'),
(18, 'euro', '2024-06-23 01:28:02', '2024-06-23 01:28:02'),
(19, 'xeco', '2024-06-23 01:28:02', '2024-06-23 01:28:02'),
(20, 'israel', '2024-06-23 01:30:25', '2024-06-23 01:30:25'),
(21, 'song', '2024-06-23 01:32:15', '2024-06-23 01:32:15'),
(22, 'giaitri', '2024-06-23 01:33:05', '2024-06-23 01:33:05'),
(23, 'nguyethang', '2024-06-23 01:33:05', '2024-06-23 01:33:05'),
(24, 'midu', '2024-06-23 01:33:53', '2024-06-23 01:33:53'),
(25, 'nvidia', '2024-06-23 01:35:38', '2024-06-23 01:35:38'),
(26, 'ngocanh', '2024-06-23 01:37:01', '2024-06-23 01:37:01'),
(27, 'mangbau', '2024-06-23 01:37:01', '2024-06-23 01:37:01'),
(28, 'apple', '2024-06-23 01:40:32', '2024-06-23 01:40:32'),
(29, 'ipadpro', '2024-06-23 01:40:32', '2024-06-23 01:40:32'),
(30, 'luadao', '2024-06-23 01:43:51', '2024-06-23 01:43:51'),
(31, 'diengiang', '2024-06-23 01:43:51', '2024-06-23 01:43:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lelah Glover', 'jdubuque@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'z7py2xJ9Tu', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(2, 'Danial Borer', 'ashly64@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'MNYnOqMiGU', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(3, 'Prof. Kelli Spencer', 'collier.jeffry@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'WnrESidGz8', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(4, 'Queen Kirlin', 'jerde.preston@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'ZrNWJvxz3f', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(5, 'Ora Satterfield Sr.', 'bertram33@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'kJB2icVhzY', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(6, 'Miss Kayla Monahan PhD', 'anabelle.ratke@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'BCvlTRWrjN', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(7, 'Amie Bartell', 'ojohnson@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'mv5BVixmfk', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(8, 'Astrid Mayer', 'nikita32@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'TZt7q6Hiea', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(9, 'Willa O\'Reilly DDS', 'floyd18@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'gL26uauteS', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(10, 'Ms. Ottilie Huels DDS', 'ryan.brandy@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, '0sBFLflPS6', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(11, 'Hồ Anh Tuấn', 'duongvankhai2022001@gmail.com', '2024-06-22 10:37:21', '$2y$10$PpiZg/Cz2ywjB1Ysbgsq4.SwYgjEfsFQCgj/01Zss/PvH3vjjmDza', 1, 2, '08aJ1Sxnat', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(12, 'Nguyễn Hải Dương', 'nguyenhaiduong@gmail.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 2, '7N99cJMnaF', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(13, 'Võ Anh Quân', 'voanhquan@gmail.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 2, 'R45HR3YLI2', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(14, 'Jaylen Cummings DVM', 'lauren.damore@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'yR1MHPv5sc', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(15, 'Fae Cole I', 'taryn22@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'CeOrfVc8sa', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(16, 'Helen Glover', 'santina.steuber@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'h5T7gF3HE7', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(17, 'Lonny Wolff DDS', 'smith.amalia@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'XrVpCP0T08', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(18, 'Dejuan Torp', 'deangelo.rowe@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'tQzKY1W5tA', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(19, 'Cordia Quigley', 'tmorar@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'Bh9zvW86uG', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(20, 'Alan Grady', 'carlo.dibbert@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'ei2whSNVMq', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(21, 'Mrs. Phoebe Reichert PhD', 'kdurgan@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'lC8X4fTe5Y', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(22, 'Miss Nelda Reichel IV', 'daniel.donavon@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'VGkIxYPWSs', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(23, 'Una Lemke', 'abernathy.mona@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'k5JtL3Fwem', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(24, 'Brielle Fadel', 'walsh.patricia@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'LaGXC6M5zb', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(25, 'Renee Gislason', 'hyundt@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'DoFvBYETn6', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(26, 'Verdie Gulgowski', 'hayley.crist@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, '8A5G6pt89u', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(27, 'Dr. Willy Streich', 'brisa.zemlak@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'DWlhr95V8t', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(28, 'Cindy McDermott', 'hmoore@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'eRl6YxWJ0E', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(29, 'Raegan Casper', 'kulas.theodora@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'FNxK00JjrQ', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(30, 'Blanca Powlowski', 'ngleichner@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'p7pZeSSlU7', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(31, 'Ada Schowalter', 'lgaylord@example.org', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, '6RtF1QzWHb', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(32, 'Ally Auer', 'angelo49@example.net', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'djK248OQob', '2024-06-22 10:37:21', '2024-06-22 10:37:21'),
(33, 'Ransom Predovic', 'charlene.leannon@example.com', '2024-06-22 10:37:21', '$2y$10$sc8vjkSQi1f.emITGxriiuvC6oaijjxNouLP/4g.QYvagRwh4NW2y', 1, 1, 'TBuzasWE9L', '2024-06-22 10:37:21', '2024-06-22 10:37:21');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
