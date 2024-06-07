-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 09, 2024 lúc 06:08 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thitracnghiem`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `macauhoi` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `dokho` tinyint(4) NOT NULL,
  `mamonhoc` int(10) UNSIGNED NOT NULL,
  `machuong` int(10) UNSIGNED NOT NULL,
  `nguoitao` int(10) UNSIGNED NOT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`macauhoi`, `noidung`, `dokho`, `mamonhoc`, `machuong`, `nguoitao`, `trangthai`) VALUES
(31, 'Máy tính là gì ? Các chức năng nâng cao ?', 3, 568279, 47, 485827, 1),
(32, 'PHP là gì ?', 1, 568279, 47, 485827, 0),
(34, 'JS là gì?', 1, 568279, 47, 485827, 1),
(35, 'Python môn gì ?', 1, 535541, 49, 485827, 1),
(36, 'HTNL ?', 1, 535541, 49, 485827, 1),
(37, 'sôs', 2, 568279, 47, 485827, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cautraloi`
--

CREATE TABLE `cautraloi` (
  `macautl` int(10) UNSIGNED NOT NULL,
  `macauhoi` int(10) UNSIGNED NOT NULL,
  `noidungtl` varchar(500) NOT NULL,
  `dapandung` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdethi`
--

CREATE TABLE `chitietdethi` (
  `id` int(10) UNSIGNED NOT NULL,
  `made` int(10) UNSIGNED NOT NULL,
  `macauhoi` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietketqua`
--

CREATE TABLE `chitietketqua` (
  `id` int(10) UNSIGNED NOT NULL,
  `ketqua_id` int(10) UNSIGNED NOT NULL,
  `macauhoi` int(10) UNSIGNED NOT NULL,
  `dapanchon` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnhom`
--

CREATE TABLE `chitietnhom` (
  `id` int(10) UNSIGNED NOT NULL,
  `manhom` int(10) UNSIGNED NOT NULL,
  `manguoidung` int(10) UNSIGNED NOT NULL,
  `hienthi` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietquyen`
--

CREATE TABLE `chitietquyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhomquyen_id` int(10) UNSIGNED NOT NULL,
  `chucnang_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hanhdong` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietquyen`
--

INSERT INTO `chitietquyen` (`id`, `nhomquyen_id`, `chucnang_id`, `created_at`, `updated_at`, `hanhdong`) VALUES
(1, 1, 2, NULL, NULL, 'create'),
(2, 1, 2, NULL, NULL, 'delete'),
(3, 1, 2, NULL, NULL, 'update'),
(4, 1, 2, NULL, NULL, 'view'),
(5, 1, 3, NULL, NULL, 'create'),
(6, 1, 3, NULL, NULL, 'delete'),
(7, 1, 3, NULL, NULL, 'update'),
(8, 1, 3, NULL, NULL, 'view'),
(9, 1, 4, NULL, NULL, 'create'),
(10, 1, 4, NULL, NULL, 'delete'),
(11, 1, 4, NULL, NULL, 'update'),
(12, 1, 4, NULL, NULL, 'view'),
(13, 1, 5, NULL, NULL, 'create'),
(14, 1, 5, NULL, NULL, 'delete'),
(15, 1, 5, NULL, NULL, 'update'),
(16, 1, 5, NULL, NULL, 'view'),
(17, 1, 6, NULL, NULL, 'create'),
(18, 1, 6, NULL, NULL, 'delete'),
(19, 1, 6, NULL, NULL, 'update'),
(20, 1, 6, NULL, NULL, 'view'),
(21, 1, 7, NULL, NULL, 'create'),
(22, 1, 7, NULL, NULL, 'delete'),
(23, 1, 7, NULL, NULL, 'update'),
(24, 1, 7, NULL, NULL, 'view'),
(25, 1, 8, NULL, NULL, 'create'),
(26, 1, 8, NULL, NULL, 'delete'),
(27, 1, 8, NULL, NULL, 'update'),
(28, 1, 8, NULL, NULL, 'view'),
(29, 1, 9, NULL, NULL, 'create'),
(30, 1, 9, NULL, NULL, 'delete'),
(31, 1, 9, NULL, NULL, 'update'),
(32, 1, 9, NULL, NULL, 'view'),
(33, 1, 12, NULL, NULL, 'create'),
(34, 1, 12, NULL, NULL, 'delete'),
(35, 1, 12, NULL, NULL, 'update'),
(36, 1, 12, NULL, NULL, 'view'),
(37, 2, 2, NULL, NULL, 'create'),
(38, 2, 2, NULL, NULL, 'delete'),
(39, 2, 2, NULL, NULL, 'update'),
(40, 2, 2, NULL, NULL, 'view'),
(41, 2, 3, NULL, NULL, 'create'),
(42, 2, 3, NULL, NULL, 'delete'),
(43, 2, 3, NULL, NULL, 'update'),
(44, 2, 3, NULL, NULL, 'view'),
(45, 2, 4, NULL, NULL, 'create'),
(46, 2, 4, NULL, NULL, 'delete'),
(47, 2, 4, NULL, NULL, 'update'),
(48, 2, 4, NULL, NULL, 'view'),
(49, 2, 5, NULL, NULL, 'create'),
(50, 2, 5, NULL, NULL, 'delete'),
(51, 2, 5, NULL, NULL, 'update'),
(52, 2, 5, NULL, NULL, 'view'),
(53, 2, 10, NULL, NULL, 'join'),
(54, 2, 11, NULL, NULL, 'join'),
(55, 2, 12, NULL, NULL, 'create'),
(56, 2, 12, NULL, NULL, 'delete'),
(57, 2, 12, NULL, NULL, 'update'),
(58, 2, 12, NULL, NULL, 'view'),
(59, 3, 10, NULL, NULL, 'join'),
(60, 3, 11, NULL, NULL, 'join');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietthongbao`
--

CREATE TABLE `chitietthongbao` (
  `id` int(10) UNSIGNED NOT NULL,
  `thongbao_id` int(10) UNSIGNED NOT NULL,
  `manhom` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuong`
--

CREATE TABLE `chuong` (
  `machuong` int(10) UNSIGNED NOT NULL,
  `tenchuong` varchar(255) NOT NULL,
  `mamonhoc` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuong`
--

INSERT INTO `chuong` (`machuong`, `tenchuong`, `mamonhoc`, `created_at`, `updated_at`) VALUES
(47, 'Chương quản trị mạng máy tính', 568279, '2023-11-01 09:08:50', '2023-11-07 04:44:54'),
(49, 'Chương 1 : Giải tích', 535541, '2023-11-02 02:04:09', '2023-11-02 02:50:40'),
(51, 'Chương 1: Nhập môn web cơ bản', 344917, '2023-11-02 02:47:24', '2023-11-02 02:47:24'),
(52, 'Chương 3 :Thực hành', 344917, '2023-11-02 02:48:20', '2023-11-02 02:49:41'),
(53, 'Chương 2: Nhập môn web nâng cao', 344917, '2023-11-02 02:48:51', '2023-11-02 02:48:51'),
(54, 'Chương 2 QTM', 568279, '2023-11-08 07:07:38', '2023-11-08 07:07:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucchucnang`
--

CREATE TABLE `danhmucchucnang` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenchucnang` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucchucnang`
--

INSERT INTO `danhmucchucnang` (`id`, `tenchucnang`, `icon`, `url`) VALUES
(1, 'Cài đặt', 'fa-solid fa-gear', 'cai-dat'),
(2, 'Quản lý câu hỏi', 'fa-solid fa-circle-question', 'quan-ly-cau-hoi'),
(3, 'Quản lý chương', 'fa-solid fa-list-check', 'quan-ly-chuong'),
(4, 'Quản lý đề thi', 'fa-solid fa-pen-to-square', 'quan-ly-de-thi'),
(5, 'Quản lý học phần', 'fa-solid fa-list-ol', 'quan-ly-hoc-phan'),
(6, 'Quản lý môn học', 'fa-solid fa-list-ul', 'quan-ly-mon-hoc'),
(7, 'Quản lý người dùng', 'fa-solid fa-user', 'quan-ly-nguoi-dung'),
(8, 'Quản lý nhóm quyền', 'fa-solid fa-key', 'quan-ly-nhom-quyen'),
(9, 'Quản lý phân công', 'fa-solid fa-users', 'quan-ly-phan-cong'),
(10, 'Tham gia học phần', 'fa-solid fa-users', 'tham-gia-hoc-phan'),
(11, 'Tham gia thi', 'fa-solid fa-link', 'tham-gia-thi'),
(12, 'Thông báo', 'fa-solid fa-globe', 'thong-bao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dethi`
--

CREATE TABLE `dethi` (
  `made` int(10) UNSIGNED NOT NULL,
  `monthi` int(11) DEFAULT NULL,
  `nguoitao` int(11) DEFAULT NULL,
  `tende` varchar(255) DEFAULT NULL,
  `thoigiantao` datetime DEFAULT NULL,
  `thoigianthi` int(11) DEFAULT NULL,
  `thoigianbatdau` datetime DEFAULT NULL,
  `thoigianketthuc` datetime DEFAULT NULL,
  `hienthibailam` int(11) DEFAULT NULL,
  `xemdiemthi` int(11) DEFAULT NULL,
  `xemdapan` int(11) DEFAULT NULL,
  `troncauhoi` int(11) DEFAULT NULL,
  `trondapan` int(11) DEFAULT NULL,
  `loaide` int(11) DEFAULT NULL,
  `mucdo` int(11) DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detudong`
--

CREATE TABLE `detudong` (
  `id` int(10) UNSIGNED NOT NULL,
  `made` int(10) UNSIGNED NOT NULL,
  `machuong` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `giaodethi`
--

CREATE TABLE `giaodethi` (
  `id` int(10) UNSIGNED NOT NULL,
  `made` int(10) UNSIGNED NOT NULL,
  `manhom` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `id` int(10) UNSIGNED NOT NULL,
  `made` tinyint(4) NOT NULL,
  `manguoidung` int(10) UNSIGNED NOT NULL,
  `diemthi` double NOT NULL,
  `thoigianvaothi` datetime NOT NULL,
  `thoigianlambai` tinyint(4) NOT NULL,
  `socaudung` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_09_18_081620_danhmucchucnang', 1),
(5, '2023_09_18_081736_create_nhomquyen', 1),
(6, '2023_09_18_101008_create_chitietquyen', 1),
(7, '2023_09_18_103410_create_users', 1),
(8, '2023_09_18_110546_create_monhoc', 1),
(9, '2023_09_18_110611_create_nhom', 1),
(10, '2023_09_18_120523_create_chitietnhom', 1),
(11, '2023_09_18_145653_create_thongbao', 1),
(12, '2023_09_18_150450_create_chitietthongbao', 1),
(13, '2023_09_18_153646_create_dethi', 1),
(14, '2023_09_18_153739_create_giaodethi', 1),
(15, '2023_09_18_163150_create_ketqua', 1),
(16, '2023_09_18_171040_create_chuong', 1),
(17, '2023_09_18_171057_create_cauhoi', 1),
(18, '2023_09_18_172040_create_cautraloi', 1),
(19, '2023_09_18_172502_create_chitietdethi', 1),
(20, '2023_09_18_175400_create_chitietketqua', 2),
(21, '2023_09_18_175749_create_detudong', 2),
(22, '2023_09_18_175943_create_phancong', 3),
(23, '2023_10_02_110442_edit', 4),
(24, '2023_10_06_114409_edit', 5),
(25, '2023_10_06_115527_edit', 6),
(26, '2023_10_06_134103_edit', 7),
(27, '2023_10_06_143717_edit', 8),
(28, '2023_10_06_144907_edit', 9),
(29, '2023_10_07_161807_edit', 10),
(30, '2023_10_08_075713_create_sessions_table', 11),
(31, '2014_10_12_200000_add_two_factor_columns_to_users_table', 12),
(32, '2023_10_12_141245_edit', 13),
(33, '2023_10_13_070854_edit', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `mamonhoc` int(10) UNSIGNED NOT NULL,
  `tenmonhoc` varchar(255) NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `monhoc`
--

INSERT INTO `monhoc` (`mamonhoc`, `tenmonhoc`, `trangthai`, `created_at`, `updated_at`) VALUES
(162398, 'Nhập môn C++', 0, '2023-10-27 01:40:10', '2023-11-08 07:51:36'),
(344917, 'Lập trình Web Cơ bản', 1, '2023-10-26 02:52:06', '2023-10-26 02:52:06'),
(441823, 'GDCD', 1, '2023-11-02 04:02:28', '2023-11-02 04:05:15'),
(453456, 'Hệ quản trị cơ sở dữ liệu', 0, '2023-10-26 02:40:14', '2023-10-26 02:40:14'),
(512358, 'Lý luận chính trị', 1, '2023-11-08 07:45:41', '2024-01-08 06:07:59'),
(535541, 'Giải tích', 1, '2023-10-27 20:01:44', '2023-10-27 20:01:44'),
(568279, 'Quản trị mạng máy tính', 0, '2023-10-26 18:26:15', '2023-10-26 19:46:33'),
(597242, 'Tiếng anh chuyên nghành', 1, '2023-10-26 20:15:39', '2023-10-26 20:15:39'),
(643181, 'Lịch Sử Đảng', 1, '2023-10-27 01:36:54', '2023-10-27 01:36:54'),
(726414, 'Triết học', 0, '2023-10-27 01:36:19', '2023-10-27 01:36:19'),
(734688, 'Lập trình Python', 0, '2023-10-26 18:25:08', '2023-10-26 19:45:46'),
(748587, 'Toán cao cấp', 1, '2023-10-27 01:32:28', '2023-10-27 01:32:28'),
(764146, 'Tiếng Anh B1', 1, '2023-10-27 01:40:55', '2023-10-27 01:40:55'),
(796117, 'Lập trình HĐT', 0, '2023-10-26 19:47:09', '2023-10-26 19:47:09'),
(874684, 'Kỹ thuật lập trình', 1, '2023-10-27 01:39:55', '2023-10-27 01:39:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom`
--

CREATE TABLE `nhom` (
  `manhom` int(10) UNSIGNED NOT NULL,
  `tennhom` varchar(255) NOT NULL,
  `mamoi` varchar(7) NOT NULL,
  `siso` tinyint(4) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `namehoc` tinyint(4) NOT NULL,
  `hocky` tinyint(4) NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `hienthi` tinyint(4) NOT NULL,
  `magv` int(11) NOT NULL,
  `mamonhoc_id` int(10) UNSIGNED NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomquyen`
--

CREATE TABLE `nhomquyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `tennhomquyen` varchar(255) NOT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomquyen`
--

INSERT INTO `nhomquyen` (`id`, `tennhomquyen`, `trangthai`) VALUES
(1, 'Admin', 1),
(2, 'Giảng viên', 1),
(3, 'Học sinh', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(225, 'App\\Models\\User', 305286, 'token_name', 'ffb37e868a8247578a07bacdec19ed425c3b1ca8db83df45b3600e0d66f2dfbf', '[\"*\"]', '2023-10-23 20:34:33', NULL, '2023-10-23 09:30:28', '2023-10-23 20:34:33'),
(239, 'App\\Models\\User', 485827, 'token_name', 'bfa0c066369190846ef6b8bd869239d664e34e9cf3acf53a9f4a8b2af2ddcaf1', '[\"*\"]', '2024-01-09 00:02:00', NULL, '2024-01-08 05:43:56', '2024-01-09 00:02:00'),
(240, 'App\\Models\\User', 305286, 'token_name', '1b302493e9c63d426968b3cd3eb689de2da359e329d1144f7faaabb68b85d504', '[\"*\"]', '2024-01-11 00:03:32', NULL, '2024-01-11 00:03:31', '2024-01-11 00:03:32'),
(241, 'App\\Models\\User', 305286, 'token_name', '3a83a4373ed6ac525dcc176aa4bea92c1c0dbac6f4eccc7a75feee32318507ec', '[\"*\"]', '2024-01-11 00:07:28', NULL, '2024-01-11 00:07:27', '2024-01-11 00:07:28'),
(244, 'App\\Models\\User', 305286, 'token_name', '012c1f87cb2dba8cf9b83fdfd2595372fd176bf2987a521c2360fb5ebb3e7113', '[\"*\"]', '2024-01-21 01:30:47', NULL, '2024-01-11 00:14:33', '2024-01-21 01:30:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong`
--

CREATE TABLE `phancong` (
  `id` int(10) UNSIGNED NOT NULL,
  `mamonhoc` int(10) UNSIGNED NOT NULL,
  `manguoidung` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `id` int(10) UNSIGNED NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `nguoitao` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gioitinh` tinyint(4) DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `sodienthoai` varchar(255) DEFAULT NULL,
  `nhomquyen_id` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `publicId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `hoten`, `email`, `gioitinh`, `ngaysinh`, `avatar`, `matkhau`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `sodienthoai`, `nhomquyen_id`, `created_at`, `updated_at`, `publicId`) VALUES
(305286, 'Thuận', 'thuan@gmail.com', 1, '2023-10-23', 'https://res.cloudinary.com/thodo2001/image/upload/v1696843290/User_ThiTracNghiem/ifjcmfzc1wds0lfv8jsm.jpg', '$2y$10$ckwVgGTvciAxo/SIlnxY6eEsgzowz3/muxKQrw7pPWkvUBja0ExEy', NULL, NULL, NULL, '0935809011', 3, '2023-10-09 02:21:31', '2023-10-09 02:21:31', 'User_ThiTracNghiem/ifjcmfzc1wds0lfv8jsm'),
(413415, 'TMS', 'tms@gmail.com', NULL, NULL, NULL, '$2y$10$mXSIXvNGZ/ykMxHV1ghF7eLX8Qfx4HrtKfhXdl65d89sE4mBVS42u', NULL, NULL, NULL, NULL, 3, '2024-01-21 00:46:16', '2024-01-21 00:46:16', NULL),
(485827, 'A Thơ', 'tho45@gmail.com', 1, '2001-11-21', 'https://res.cloudinary.com/thodo2001/image/upload/v1697120947/User_ThiTracNghiem/nqypnmmo2nkmblvzb9ln.jpg', '$2y$10$Wch4VYnwZelmtg/Pqoyrw.aR0qVfY5xn1OalWPAAMoYke7xLZ.Usa', NULL, NULL, NULL, '0935809011', 1, '2023-10-12 07:29:10', '2023-10-12 07:29:10', 'User_ThiTracNghiem/nqypnmmo2nkmblvzb9ln'),
(657008, 'Long', 'long@gmail.com', 2, '2023-10-12', 'https://res.cloudinary.com/thodo2001/image/upload/v1696843827/User_ThiTracNghiem/yhcwejsqhldpsxvfr649.jpg', '$2y$10$r5UnGgtdnOKW4IhOlYOuWeRnbeMAkUxOCkunE3g0RKTXjbo9XPbWO', NULL, NULL, NULL, '0935809011', 2, '2023-10-09 02:30:28', '2023-10-09 02:30:28', 'User_ThiTracNghiem/yhcwejsqhldpsxvfr649');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`macauhoi`),
  ADD KEY `cauhoi_mamonhoc_foreign` (`mamonhoc`),
  ADD KEY `cauhoi_machuong_foreign` (`machuong`);

--
-- Chỉ mục cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD PRIMARY KEY (`macautl`),
  ADD KEY `cautraloi_macauhoi_foreign` (`macauhoi`);

--
-- Chỉ mục cho bảng `chitietdethi`
--
ALTER TABLE `chitietdethi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietdethi_made_foreign` (`made`),
  ADD KEY `chitietdethi_macauhoi_foreign` (`macauhoi`);

--
-- Chỉ mục cho bảng `chitietketqua`
--
ALTER TABLE `chitietketqua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietketqua_ketqua_id_foreign` (`ketqua_id`),
  ADD KEY `chitietketqua_macauhoi_foreign` (`macauhoi`),
  ADD KEY `chitietketqua_dapanchon_foreign` (`dapanchon`);

--
-- Chỉ mục cho bảng `chitietnhom`
--
ALTER TABLE `chitietnhom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietnhom_manhom_foreign` (`manhom`),
  ADD KEY `chitietnhom_manguoidung_foreign` (`manguoidung`);

--
-- Chỉ mục cho bảng `chitietquyen`
--
ALTER TABLE `chitietquyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietquyen_nhomquyen_id_foreign` (`nhomquyen_id`),
  ADD KEY `chitietquyen_chucnang_id_foreign` (`chucnang_id`);

--
-- Chỉ mục cho bảng `chitietthongbao`
--
ALTER TABLE `chitietthongbao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitietthongbao_thongbao_id_foreign` (`thongbao_id`),
  ADD KEY `chitietthongbao_manhom_foreign` (`manhom`);

--
-- Chỉ mục cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD PRIMARY KEY (`machuong`),
  ADD KEY `chuong_mamonhoc_foreign` (`mamonhoc`);

--
-- Chỉ mục cho bảng `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dethi`
--
ALTER TABLE `dethi`
  ADD PRIMARY KEY (`made`);

--
-- Chỉ mục cho bảng `detudong`
--
ALTER TABLE `detudong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detudong_made_foreign` (`made`),
  ADD KEY `detudong_machuong_foreign` (`machuong`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giaodethi`
--
ALTER TABLE `giaodethi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giaodethi_made_foreign` (`made`),
  ADD KEY `giaodethi_manhom_foreign` (`manhom`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ketqua_manguoidung_foreign` (`manguoidung`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`mamonhoc`);

--
-- Chỉ mục cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`manhom`),
  ADD KEY `nhom_mamonhoc_id_foreign` (`mamonhoc_id`);

--
-- Chỉ mục cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phancong_mamonhoc_foreign` (`mamonhoc`),
  ADD KEY `phancong_manguoidung_foreign` (`manguoidung`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_nhomquyen_id_foreign` (`nhomquyen_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `macauhoi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  MODIFY `macautl` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdethi`
--
ALTER TABLE `chitietdethi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietketqua`
--
ALTER TABLE `chitietketqua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietnhom`
--
ALTER TABLE `chitietnhom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietquyen`
--
ALTER TABLE `chitietquyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `chitietthongbao`
--
ALTER TABLE `chitietthongbao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuong`
--
ALTER TABLE `chuong`
  MODIFY `machuong` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `dethi`
--
ALTER TABLE `dethi`
  MODIFY `made` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detudong`
--
ALTER TABLE `detudong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giaodethi`
--
ALTER TABLE `giaodethi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `nhom`
--
ALTER TABLE `nhom`
  MODIFY `manhom` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT cho bảng `phancong`
--
ALTER TABLE `phancong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_machuong_foreign` FOREIGN KEY (`machuong`) REFERENCES `chuong` (`machuong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cauhoi_mamonhoc_foreign` FOREIGN KEY (`mamonhoc`) REFERENCES `monhoc` (`mamonhoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD CONSTRAINT `cautraloi_macauhoi_foreign` FOREIGN KEY (`macauhoi`) REFERENCES `cauhoi` (`macauhoi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdethi`
--
ALTER TABLE `chitietdethi`
  ADD CONSTRAINT `chitietdethi_macauhoi_foreign` FOREIGN KEY (`macauhoi`) REFERENCES `cauhoi` (`macauhoi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietdethi_made_foreign` FOREIGN KEY (`made`) REFERENCES `dethi` (`made`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietketqua`
--
ALTER TABLE `chitietketqua`
  ADD CONSTRAINT `chitietketqua_dapanchon_foreign` FOREIGN KEY (`dapanchon`) REFERENCES `cautraloi` (`macautl`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietketqua_ketqua_id_foreign` FOREIGN KEY (`ketqua_id`) REFERENCES `ketqua` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietketqua_macauhoi_foreign` FOREIGN KEY (`macauhoi`) REFERENCES `cauhoi` (`macauhoi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietnhom`
--
ALTER TABLE `chitietnhom`
  ADD CONSTRAINT `chitietnhom_manguoidung_foreign` FOREIGN KEY (`manguoidung`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietnhom_manhom_foreign` FOREIGN KEY (`manhom`) REFERENCES `nhom` (`manhom`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietquyen`
--
ALTER TABLE `chitietquyen`
  ADD CONSTRAINT `chitietquyen_chucnang_id_foreign` FOREIGN KEY (`chucnang_id`) REFERENCES `danhmucchucnang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietquyen_nhomquyen_id_foreign` FOREIGN KEY (`nhomquyen_id`) REFERENCES `nhomquyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietthongbao`
--
ALTER TABLE `chitietthongbao`
  ADD CONSTRAINT `chitietthongbao_manhom_foreign` FOREIGN KEY (`manhom`) REFERENCES `nhom` (`manhom`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietthongbao_thongbao_id_foreign` FOREIGN KEY (`thongbao_id`) REFERENCES `thongbao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chuong`
--
ALTER TABLE `chuong`
  ADD CONSTRAINT `chuong_mamonhoc_foreign` FOREIGN KEY (`mamonhoc`) REFERENCES `monhoc` (`mamonhoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `detudong`
--
ALTER TABLE `detudong`
  ADD CONSTRAINT `detudong_machuong_foreign` FOREIGN KEY (`machuong`) REFERENCES `chuong` (`machuong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detudong_made_foreign` FOREIGN KEY (`made`) REFERENCES `dethi` (`made`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giaodethi`
--
ALTER TABLE `giaodethi`
  ADD CONSTRAINT `giaodethi_made_foreign` FOREIGN KEY (`made`) REFERENCES `dethi` (`made`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giaodethi_manhom_foreign` FOREIGN KEY (`manhom`) REFERENCES `nhom` (`manhom`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `ketqua_manguoidung_foreign` FOREIGN KEY (`manguoidung`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD CONSTRAINT `nhom_mamonhoc_id_foreign` FOREIGN KEY (`mamonhoc_id`) REFERENCES `monhoc` (`mamonhoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD CONSTRAINT `phancong_mamonhoc_foreign` FOREIGN KEY (`mamonhoc`) REFERENCES `monhoc` (`mamonhoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phancong_manguoidung_foreign` FOREIGN KEY (`manguoidung`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_nhomquyen_id_foreign` FOREIGN KEY (`nhomquyen_id`) REFERENCES `nhomquyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
