-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2023 pada 14.50
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_digital`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bimbings`
--

CREATE TABLE `bimbings` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `jenis_layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `konselor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari_tanggal` timestamp NULL DEFAULT NULL,
  `bidang_bimbingan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindak_lanjut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bimbings`
--

INSERT INTO `bimbings` (`id`, `id_sekolah`, `id_siswa`, `jenis_layanan`, `konselor`, `hari_tanggal`, `bidang_bimbingan`, `deskripsi`, `tujuan`, `tindak_lanjut`, `keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34, 'informasi', 'Pak Budi', '2022-03-23 06:39:00', 'karir', 'Mencari inspirasi untuk pekerjaan masa depan', 'memiliki masa depan yang baik', 'Dijelaskan peminatan untuk berkerja', 'Sukses Dunia Akhirat', '2022-03-15 23:42:09', '2022-03-15 23:42:09', NULL),
(2, 3, 740, 'Orientasi', '2', '2022-04-21 17:00:00', 'Pribadi', 'ass', 'asa', 'asa', NULL, '2022-04-20 10:01:52', '2022-04-20 10:03:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamus`
--

CREATE TABLE `buku_tamus` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `tamu_dari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari_tanggal` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keperluan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerima` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan_perilakus`
--

CREATE TABLE `catatan_perilakus` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tahun_akademik` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  `deskripsi_perilaku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari_tanggal` date DEFAULT NULL,
  `Point` int(11) DEFAULT NULL,
  `Keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `catatan_perilakus`
--

INSERT INTO `catatan_perilakus` (`id`, `id_sekolah`, `id_siswa`, `id_tahun_akademik`, `id_semester`, `deskripsi_perilaku`, `hari_tanggal`, `Point`, `Keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34, 1, 1, 'Sangat Nakal', '2022-03-01', 7, 'Suka Buat Onar', '2022-03-15 23:28:54', '2022-03-15 23:28:54', NULL),
(2, 3, 740, 1, 1, 'Nakalall', '2022-04-20', 6, 'Peringatan', '2022-04-20 08:52:23', '2022-04-20 08:52:23', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(3, 1, 1, 'Super Admin', 'super-admin', '2022-03-01 23:33:01', '2022-03-01 23:33:01'),
(4, 3, 1, 'asda', 'asda', '2022-03-17 09:27:00', '2022-03-17 09:27:00'),
(5, NULL, 1, 'sekolahs', 'sekolahs', '2022-03-17 09:27:15', '2022-03-17 09:29:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(63, 11, 'jabatan', 'text', 'Jabatan', 1, 1, 1, 1, 1, 1, '{}', 2),
(64, 11, 'status', 'radio_btn', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 3),
(66, 11, 'sekolah', 'text', 'Sekolah', 1, 1, 1, 1, 1, 1, '{}', 5),
(67, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(68, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(69, 14, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 14, 'semester', 'text', 'Semester', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 14, 'sekolah', 'text', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 14, 'status', 'radio_btn', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 5),
(73, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(74, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(75, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 15, 'tahun_akademik', 'text', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{}', 2),
(77, 15, 'sekolah', 'text', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 4),
(78, 15, 'status', 'radio_btn', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 5),
(80, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(81, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(83, 16, 'nama_sekolah', 'text', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(84, 16, 'namacp', 'text', 'Namacp', 0, 1, 1, 1, 1, 1, '{}', 3),
(85, 16, 'telpsekolah', 'text', 'Telpsekolah', 0, 1, 1, 1, 1, 1, '{}', 4),
(86, 16, 'telpcp', 'text', 'Telpcp', 0, 1, 1, 1, 1, 1, '{}', 5),
(87, 16, 'username', 'text', 'Username', 0, 0, 0, 1, 1, 0, '{}', 6),
(88, 16, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 0, '{}', 7),
(89, 16, 'status', 'radio_btn', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 8),
(92, 17, 'nama_ptk', 'text', 'Nama Ptk', 0, 1, 1, 1, 1, 1, '{}', 2),
(93, 17, 'nip', 'text', 'Nip', 0, 1, 1, 1, 1, 1, '{}', 3),
(94, 17, 'jabatan', 'text', 'Jabatan', 0, 1, 1, 1, 1, 1, '{}', 4),
(95, 17, 'sekolah', 'text', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 6),
(96, 17, 'status', 'radio_btn', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 8),
(98, 17, 'jk', 'radio_btn', 'Jenis Kelamin', 0, 1, 1, 1, 1, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Laki - Laki\",\"2\":\"Perempuan\"}}', 10),
(99, 17, 'username', 'text', 'Username', 0, 1, 1, 1, 1, 1, '{}', 11),
(100, 17, 'password', 'password', 'Password', 0, 0, 0, 1, 1, 1, '{}', 12),
(101, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 13),
(102, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(104, 18, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(105, 18, 'username', 'text', 'Username', 0, 1, 1, 1, 1, 1, '{}', 3),
(106, 18, 'password', 'text', 'Password', 0, 1, 1, 1, 1, 1, '{}', 4),
(108, 19, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(109, 19, 'jk', 'radio_btn', 'Jenis Kelamin', 1, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"1\":\"Laki - Laki\",\"2\":\"Perempuan\"}}', 3),
(110, 19, 'nisn', 'text', 'Nisn', 0, 1, 1, 1, 1, 1, '{}', 4),
(111, 19, 'sekolah', 'text', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 5),
(112, 19, 'status', 'radio_btn', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 7),
(114, 21, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 21, 'id_kelas', 'text', 'Kelas', 0, 1, 1, 1, 1, 1, '{}', 2),
(116, 21, 'id_siswa', 'text', 'Nama Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(117, 21, 'id_tahunakademik', 'text', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{}', 5),
(118, 21, 'id_semester', 'text', 'Semester', 0, 1, 1, 1, 1, 1, '{}', 7),
(119, 21, 'sekolah', 'text', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 8),
(120, 21, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(121, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(122, 21, 'kelassiswa_hasone_siswa_relationship', 'relationship', 'Nama Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"nisn\",\"label\":\"nama\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(123, 21, 'kelassiswa_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(124, 21, 'kelassiswa_belongsto_tahunakademik_relationship', 'relationship', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tahunakademiks\",\"table\":\"tahunakademiks\",\"type\":\"belongsTo\",\"column\":\"id_tahunakademik\",\"key\":\"id\",\"label\":\"tahun_akademik\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(125, 21, 'kelassiswa_belongsto_kela_relationship', 'relationship', 'kelas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Kelas\",\"table\":\"kelas\",\"type\":\"belongsTo\",\"column\":\"id_kelas\",\"key\":\"kelas\",\"label\":\"kelas\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(126, 21, 'kelassiswa_belongsto_semester_relationship', 'relationship', 'semesters', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Semesters\",\"table\":\"semesters\",\"type\":\"belongsTo\",\"column\":\"id_semester\",\"key\":\"id\",\"label\":\"semester\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(127, 19, 'siswa_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(128, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(130, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(131, 17, 'ptk_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(132, 17, 'ptk_belongsto_jabatan_relationship', 'relationship', 'Jabatan', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Jabatans\",\"table\":\"jabatans\",\"type\":\"belongsTo\",\"column\":\"jabatan\",\"key\":\"id\",\"label\":\"jabatan\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(133, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(134, 14, 'semester_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(135, 15, 'tahunakademik_belongsto_sekolah_relationship', 'relationship', 'sekolahs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(140, 11, 'jabatan_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(141, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(143, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(144, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(145, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(146, 1, 'user_belongstomany_role_relationship', 'relationship', 'roles', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(147, 1, 'user_belongsto_sekolah_relationship', 'relationship', 'Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(148, 1, 'sekolah', 'select_dropdown', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 12),
(150, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(151, 17, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(152, 15, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(153, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(154, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(155, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(156, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(157, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(158, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(159, 23, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(160, 23, 'tamu_dari', 'select_dropdown', 'Tamu Dari', 0, 1, 1, 1, 1, 1, '{\"default\":\"Option1\",\"options\":{\"Option1\":\"Silahkan Pilih\",\"Tamu Wali Siswa\":\"Tamu Wali Siswa\",\"Sekolah Lanjutan\":\"Sekolah Lanjutan\",\"Lain - Lain\":\"Lain - Lain\"}}', 3),
(161, 23, 'hari_tanggal', 'timestamp', 'Hari Tanggal', 0, 1, 1, 1, 1, 1, '{}', 4),
(162, 23, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 5),
(163, 23, 'keperluan', 'text', 'Keperluan', 0, 1, 1, 1, 1, 1, '{}', 6),
(164, 23, 'penerima', 'text', 'Penerima', 0, 1, 1, 1, 1, 1, '{}', 7),
(165, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(166, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(167, 23, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(168, 23, 'buku_tamu_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(169, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(170, 24, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(171, 24, 'id_siswa', 'text', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(172, 24, 'id_tahun_akademik', 'text', 'Id Tahun Akademik', 0, 1, 1, 1, 1, 1, '{}', 4),
(173, 24, 'id_semester', 'text', 'Id Semester', 0, 1, 1, 1, 1, 1, '{}', 5),
(174, 24, 'sakit', 'text', 'Sakit', 0, 1, 1, 1, 1, 1, '{}', 6),
(175, 24, 'izin', 'text', 'Izin', 0, 1, 1, 1, 1, 1, '{}', 7),
(176, 24, 'Keterangan', 'rich_text_box', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 8),
(177, 24, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(178, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(179, 24, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(180, 24, 'kehadiran_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(181, 24, 'kehadiran_belongsto_siswa_relationship', 'relationship', 'Nama Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(182, 24, 'kehadiran_belongsto_tahunakademik_relationship', 'relationship', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tahunakademiks\",\"table\":\"tahunakademiks\",\"type\":\"belongsTo\",\"column\":\"id_tahun_akademik\",\"key\":\"id\",\"label\":\"tahun_akademik\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(183, 24, 'kehadiran_belongsto_semester_relationship', 'relationship', 'Semester', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Semesters\",\"table\":\"semesters\",\"type\":\"belongsTo\",\"column\":\"id_semester\",\"key\":\"id\",\"label\":\"semester\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(184, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(185, 25, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(186, 25, 'id_siswa', 'text', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(187, 25, 'id_tahun_akademik', 'text', 'Id Tahun Akademik', 0, 1, 1, 1, 1, 1, '{}', 4),
(188, 25, 'id_semester', 'text', 'Id Semester', 0, 1, 1, 1, 1, 1, '{}', 5),
(189, 25, 'jenis_lomba', 'text', 'Jenis Lomba', 0, 1, 1, 1, 1, 1, '{}', 6),
(190, 25, 'tingkat', 'text', 'Tingkat', 0, 1, 1, 1, 1, 1, '{}', 7),
(191, 25, 'juara', 'text', 'Juara', 0, 1, 1, 1, 1, 1, '{}', 8),
(192, 25, 'bidang_lomba', 'radio_btn', 'Bidang Lomba', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"1\":\"Akademik\",\"2\":\"Non Akademik\"}}', 9),
(193, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(194, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(195, 25, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(196, 25, 'prestasi_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(197, 25, 'prestasi_belongsto_siswa_relationship', 'relationship', 'Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(198, 25, 'prestasi_belongsto_tahunakademik_relationship', 'relationship', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tahunakademiks\",\"table\":\"tahunakademiks\",\"type\":\"belongsTo\",\"column\":\"id_tahun_akademik\",\"key\":\"id\",\"label\":\"tahun_akademik\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(199, 25, 'prestasi_belongsto_semester_relationship', 'relationship', 'Semester', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Semesters\",\"table\":\"semesters\",\"type\":\"belongsTo\",\"column\":\"id_semester\",\"key\":\"id\",\"label\":\"semester\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(200, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(201, 26, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(202, 26, 'id_siswa', 'text', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(203, 26, 'id_tahun_akademik', 'text', 'Id Tahun Akademik', 0, 1, 1, 1, 1, 1, '{}', 4),
(204, 26, 'id_semester', 'text', 'Id Semester', 0, 1, 1, 1, 1, 1, '{}', 5),
(205, 26, 'deskripsi_perilaku', 'rich_text_box', 'Deskripsi Perilaku', 0, 1, 1, 1, 1, 1, '{}', 6),
(206, 26, 'hari_tanggal', 'date', 'Hari Tanggal', 0, 1, 1, 1, 1, 1, '{}', 7),
(207, 26, 'Point', 'text', 'Point', 0, 1, 1, 1, 1, 1, '{}', 8),
(208, 26, 'Keterangan', 'text', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 9),
(209, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(210, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(211, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(212, 26, 'catatan_perilaku_belongsto_sekolah_relationship', 'relationship', 'Nama Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(213, 26, 'catatan_perilaku_belongsto_siswa_relationship', 'relationship', 'Nama Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(214, 26, 'catatan_perilaku_belongsto_tahunakademik_relationship', 'relationship', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tahunakademiks\",\"table\":\"tahunakademiks\",\"type\":\"belongsTo\",\"column\":\"id_tahun_akademik\",\"key\":\"id\",\"label\":\"tahun_akademik\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(215, 26, 'catatan_perilaku_belongsto_semester_relationship', 'relationship', 'Semester', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Semesters\",\"table\":\"semesters\",\"type\":\"belongsTo\",\"column\":\"id_semester\",\"key\":\"id\",\"label\":\"semester\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(216, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(217, 27, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(218, 27, 'id_siswa', 'text', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(219, 27, 'hari_tanggal', 'timestamp', 'Hari Tanggal', 0, 1, 1, 1, 1, 1, '{}', 5),
(220, 27, 'deskripsi', 'text', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 6),
(221, 27, 'tujuan', 'text', 'Tujuan', 0, 1, 1, 1, 1, 1, '{}', 7),
(222, 27, 'tindak_lanjut', 'text', 'Tindak Lanjut', 0, 1, 1, 1, 1, 1, '{}', 8),
(223, 27, 'kunjungan_ke', 'text', 'Kunjungan Ke', 0, 1, 1, 1, 1, 1, '{}', 9),
(224, 27, 'petugas', 'text', 'Petugas', 0, 1, 1, 1, 1, 1, '{}', 10),
(225, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(226, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(227, 27, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 13),
(228, 27, 'home_visite_belongsto_ptk_relationship', 'relationship', 'Petugas', 0, 1, 1, 1, 1, 1, '{\"scope\":\"active\",\"model\":\"App\\\\Models\\\\Ptks\",\"table\":\"ptks\",\"type\":\"belongsTo\",\"column\":\"petugas\",\"key\":\"id\",\"label\":\"nama_ptk\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(229, 27, 'home_visite_belongsto_sekolah_relationship', 'relationship', 'Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(230, 27, 'home_visite_belongsto_siswa_relationship', 'relationship', 'Nama', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(231, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(232, 29, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(233, 29, 'hari_tanggal', 'timestamp', 'Hari Tanggal', 0, 1, 1, 1, 1, 1, '{}', 3),
(234, 29, 'nama_wali', 'text', 'Nama Wali', 0, 1, 1, 1, 1, 1, '{}', 4),
(235, 29, 'tujuan', 'text', 'Tujuan', 0, 1, 1, 1, 1, 1, '{}', 5),
(236, 29, 'deskripsi', 'text_area', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 6),
(237, 29, 'kunjungan_ke', 'text', 'Kunjungan Ke', 0, 1, 1, 1, 1, 1, '{}', 7),
(238, 29, 'tindak_lanjut', 'text_area', 'Tindak Lanjut', 0, 1, 1, 1, 1, 1, '{}', 8),
(239, 29, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(240, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(241, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(242, 29, 'referal_belongsto_sekolah_relationship', 'relationship', 'sekolahs', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(243, 27, 'nama_wali', 'text', 'Nama Wali', 0, 1, 1, 1, 1, 1, '{}', 4),
(244, 30, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(245, 30, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(246, 30, 'id_siswa', 'text', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(247, 30, 'hari_tanggal', 'timestamp', 'Hari Tanggal', 0, 1, 1, 1, 1, 1, '{}', 4),
(248, 30, 'nama_wali', 'text', 'Nama Wali', 0, 1, 1, 1, 1, 1, '{}', 5),
(249, 30, 'pihak_sekolah', 'text', 'Pihak Sekolah', 0, 1, 1, 1, 1, 1, '{}', 6),
(250, 30, 'tujuan', 'text', 'Tujuan', 0, 1, 1, 1, 1, 1, '{}', 7),
(251, 30, 'deskripsi', 'text_area', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 8),
(252, 30, 'tindak_lanjut', 'text_area', 'Tindak Lanjut', 0, 1, 1, 1, 1, 1, '{}', 9),
(253, 30, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(254, 30, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(255, 30, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 12),
(256, 30, 'konferensi_kasu_belongsto_sekolah_relationship', 'relationship', 'Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(257, 30, 'konferensi_kasu_belongsto_siswa_relationship', 'relationship', 'Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"buku_tamus\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(258, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(259, 41, 'id_sekolah', 'text', 'Id Sekolah', 0, 1, 1, 1, 1, 1, '{}', 2),
(260, 41, 'id_siswa', 'text', 'Id Siswa', 0, 1, 1, 1, 1, 1, '{}', 3),
(261, 41, 'jenis_layanan', 'select_dropdown', 'Jenis Layanan', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"orientasi\":\"orientasi\",\"informasi\":\"informasi\",\"penempatan penyaluran\":\"penempatan penyaluran\",\"pembelajaran\":\"pembelajaran\",\"penguasaan konten\":\"penguasaan konten\",\"konseling individu\":\"konseling individu\",\"konseling kelompok\":\"konseling kelompok\",\"bimbingan kelompok\":\"bimbingan kelompok\",\"konsultasi\":\"konsultasi\",\"mediasi\":\"mediasi\"}}', 4),
(262, 41, 'konselor', 'text', 'Konselor', 0, 1, 1, 1, 1, 1, '{}', 5),
(263, 41, 'hari_tanggal', 'timestamp', 'Hari Tanggal', 0, 1, 1, 1, 1, 1, '{}', 6),
(264, 41, 'bidang_bimbingan', 'select_dropdown', 'Bidang Bimbingan', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"pribadi\":\"pribadi\",\"sosial\":\"sosial\",\"belajar\":\"belajar\",\"karir\":\"karir\"}}', 7),
(265, 41, 'deskripsi', 'text_area', 'Deskripsi', 0, 1, 1, 1, 1, 1, '{}', 8),
(266, 41, 'tujuan', 'text', 'Tujuan', 0, 1, 1, 1, 1, 1, '{}', 9),
(267, 41, 'tindak_lanjut', 'text_area', 'Tindak Lanjut', 0, 1, 1, 1, 1, 1, '{}', 10),
(268, 41, 'keterangan', 'text_area', 'Keterangan', 0, 1, 1, 1, 1, 1, '{}', 11),
(269, 41, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(270, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(271, 41, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 14),
(272, 41, 'bimbing_belongsto_sekolah_relationship', 'relationship', 'Sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"id_sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(273, 41, 'bimbing_belongsto_siswa_relationship', 'relationship', 'Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id_siswa\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(274, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(275, 43, 'kelas', 'text', 'Kelas', 0, 1, 1, 1, 1, 1, '{}', 3),
(276, 43, 'status', 'radio_btn', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"options\":{\"1\":\"Aktif\",\"2\":\"Tidak Aktif\"}}', 4),
(277, 43, 'sekolah', 'text', 'Sekolah', 0, 1, 1, 1, 1, 1, '{}', 5),
(278, 43, 'level', 'number', 'Level', 0, 1, 1, 1, 1, 1, '{}', 6),
(279, 43, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(280, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(281, 43, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(282, 44, 'id', 'text', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(284, 44, 'id_prestasi', 'text', 'Prestasi', 0, 0, 1, 1, 1, 1, '{}', 3),
(285, 44, 'id_kehadiran', 'text', 'Kehadiran', 0, 0, 0, 0, 0, 0, '{}', 4),
(286, 44, 'id_perilaku', 'text', 'Perilaku', 0, 0, 1, 1, 1, 1, '{}', 5),
(287, 44, 'id_home_visite', 'text', 'Home Visit', 0, 0, 0, 0, 0, 0, '{}', 6),
(288, 44, 'id_konferensi_kasus', 'text', 'Konferensi Kasus', 0, 0, 1, 1, 1, 1, '{}', 7),
(289, 44, 'id_bimbingan', 'text', 'Bimbingan', 0, 0, 1, 1, 1, 1, '{}', 8),
(290, 44, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(291, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(292, 44, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 11),
(293, 44, 'rekam_belongsto_siswa_relationship', 'relationship', 'Siswa', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Siswas\",\"table\":\"siswas\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"nama\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(295, 44, 'rekam_belongsto_prestasi_relationship', 'relationship', 'Prestasi', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Prestasi\",\"table\":\"prestasis\",\"type\":\"belongsTo\",\"column\":\"id_prestasi\",\"key\":\"id\",\"label\":\"jenis_lomba\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(296, 44, 'rekam_belongsto_bimbing_relationship', 'relationship', 'Bimbingan Konseling', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Bimbing\",\"table\":\"bimbings\",\"type\":\"belongsTo\",\"column\":\"id_bimbingan\",\"key\":\"id\",\"label\":\"jenis_layanan\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(297, 44, 'rekam_belongsto_catatan_perilaku_relationship', 'relationship', 'Catatan Perilaku', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\CatatanPerilaku\",\"table\":\"catatan_perilakus\",\"type\":\"belongsTo\",\"column\":\"id_perilaku\",\"key\":\"id\",\"label\":\"deskripsi_perilaku\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(299, 44, 'rekam_belongsto_konferensi_kasu_relationship', 'relationship', 'Konferensi Kasus', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\KonferensiKasu\",\"table\":\"konferensi_kasus\",\"type\":\"belongsTo\",\"column\":\"id_konferensi_kasus\",\"key\":\"id\",\"label\":\"deskripsi\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(302, 1, 'user_belongsto_tahunakademik_relationship', 'relationship', 'Tahun Akademik', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tahunakademiks\",\"table\":\"tahunakademiks\",\"type\":\"belongsTo\",\"column\":\"tahunakademik\",\"key\":\"id\",\"label\":\"tahun_akademik\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(303, 1, 'user_belongsto_semester_relationship', 'relationship', 'Semester', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Semesters\",\"table\":\"semesters\",\"type\":\"belongsTo\",\"column\":\"semester\",\"key\":\"id\",\"label\":\"semester\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(304, 1, 'tahunakademik', 'text', 'Tahunakademik', 0, 1, 1, 1, 1, 1, '{}', 13),
(305, 1, 'semester', 'text', 'Semester', 0, 1, 1, 1, 1, 1, '{}', 14),
(306, 19, 'no_telp', 'text', 'No Telp', 1, 1, 1, 1, 1, 1, '{}', 5),
(307, 19, 'rekam_id', 'hidden', 'Rekam Id', 0, 0, 0, 0, 0, 0, '{}', 11),
(308, 43, 'kela_belongsto_sekolah_relationship', 'relationship', 'sekolah', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Sekolahs\",\"table\":\"sekolahs\",\"type\":\"belongsTo\",\"column\":\"sekolah\",\"key\":\"id\",\"label\":\"nama_sekolah\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(309, 24, 'alpa', 'text', 'Alpa', 0, 1, 1, 1, 1, 1, '{}', 8),
(310, 41, 'bimbing_belongsto_ptk_relationship', 'relationship', 'ptks', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Ptks\",\"table\":\"ptks\",\"type\":\"belongsTo\",\"column\":\"konselor\",\"key\":\"id\",\"label\":\"nama_ptk\",\"pivot_table\":\"bimbings\",\"pivot\":\"0\",\"taggable\":null}', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-02-16 00:06:30', '2022-03-18 09:50:46'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(11, 'jabatans', 'jabatans', 'Jabatan', 'Jabatan', NULL, 'App\\Models\\Jabatans', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"sekolah\",\"scope\":null}', '2022-02-23 22:56:29', '2022-03-18 20:37:23'),
(14, 'semesters', 'semesters', 'Semesters', 'Semester', NULL, 'App\\Models\\Semesters', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-23 23:36:14', '2022-03-18 19:46:09'),
(15, 'tahunakademiks', 'tahunakademiks', 'Tahunakademik', 'Tahun Akademik', NULL, 'App\\Models\\Tahunakademiks', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"sekolah\",\"scope\":null}', '2022-02-23 23:54:53', '2022-03-18 19:45:46'),
(16, 'sekolahs', 'sekolahs', 'Sekolah', 'Data Sekolah', 'voyager-study', 'App\\Models\\Sekolahs', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-24 00:01:22', '2022-03-18 21:29:22'),
(17, 'ptks', 'ptks', 'Ptk', 'Data PTK', NULL, 'App\\Models\\Ptks', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"sekolah\",\"scope\":null}', '2022-02-24 00:10:53', '2022-03-02 00:27:32'),
(18, 'penggunas', 'penggunas', 'Pengguna', 'Data Pengguna', NULL, 'App\\Models\\Penggunas', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-02-24 00:16:19', '2022-03-08 18:42:05'),
(19, 'siswas', 'siswas', 'Siswa', 'Data Siswa', NULL, 'App\\Models\\Siswas', NULL, 'App\\Http\\Controllers\\VoyagerSiswasController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"sekolah\",\"scope\":null}', '2022-02-24 00:21:04', '2022-03-18 10:34:25'),
(21, 'kelassiswas', 'kelassiswas', 'Data Kelas Siswa', 'Data Kelas Peserta Didik', NULL, 'App\\Models\\Kelassiswas', NULL, NULL, NULL, 0, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"sekolah\",\"scope\":null}', '2022-02-24 00:25:53', '2022-03-18 19:35:58'),
(23, 'buku_tamus', 'buku_tamus', 'Buku Tamu', 'Buku Tamus', NULL, 'App\\BukuTamu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 20:35:19', '2022-03-10 20:42:49'),
(24, 'kehadirans', 'kehadirans', 'Kehadiran', 'Kehadirans', NULL, 'App\\Kehadiran', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 20:47:41', '2022-04-20 08:21:14'),
(25, 'prestasis', 'prestasis', 'Prestasi', 'Prestasi', NULL, 'App\\Prestasi', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 20:56:23', '2022-03-10 20:58:07'),
(26, 'catatan_perilakus', 'catatan_perilakus', 'Catatan Perilaku', 'Catatan Perilaku', NULL, 'App\\CatatanPerilaku', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 21:01:44', '2022-03-18 09:57:13'),
(27, 'home_visites', 'home_visites', 'Home Visite', 'Home Visites', NULL, 'App\\HomeVisite', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 23:03:08', '2022-03-18 10:05:54'),
(29, 'referals', 'referals', 'Referal', 'Referals', NULL, 'App\\Referal', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 23:18:18', '2022-03-10 23:19:15'),
(30, 'konferensi_kasus', 'konferensi_kasus', 'Konferensi Kasus', 'Konferensi Kasus', NULL, 'App\\KonferensiKasu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-10 23:34:45', '2022-03-10 23:36:05'),
(41, 'bimbings', 'bimbings', 'Bimbing', 'Bimbings', NULL, 'App\\Bimbing', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-11 00:37:41', '2022-03-15 23:39:02'),
(43, 'kelas', 'kelas', 'Kelas', 'Kelas', NULL, 'App\\Models\\Kelas', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-11 01:24:27', '2022-03-18 20:35:13'),
(44, 'rekams', 'rekams', 'Rekam', 'Rekam', NULL, 'App\\Rekam', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-15 22:38:40', '2022-04-20 10:49:32');

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
-- Struktur dari tabel `home_visites`
--

CREATE TABLE `home_visites` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `hari_tanggal` timestamp NULL DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindak_lanjut` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kunjungan_ke` int(11) DEFAULT NULL,
  `petugas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `nama_wali` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_visites`
--

INSERT INTO `home_visites` (`id`, `id_sekolah`, `id_siswa`, `hari_tanggal`, `deskripsi`, `tujuan`, `tindak_lanjut`, `kunjungan_ke`, `petugas`, `created_at`, `updated_at`, `deleted_at`, `nama_wali`) VALUES
(1, 1, 34, '2022-01-31 18:18:00', 'test', 'test', 'test', 2, '1', '2022-03-17 11:18:52', '2022-03-17 11:18:52', NULL, '1'),
(2, 3, 740, '2022-04-19 17:00:00', 'B', 'A', 'C', 2, '5', '2022-04-20 09:15:23', '2022-04-20 09:15:23', NULL, 'Budi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jabatans`
--

INSERT INTO `jabatans` (`id`, `jabatan`, `status`, `sekolah`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kepsek', '1', '3', '2022-02-23 23:00:00', '2022-03-18 20:36:17', NULL),
(2, 'Guru BK', '1', '3', '2022-03-18 10:02:10', '2022-03-18 20:36:26', NULL),
(3, 'Satpam', '1', '3', '2022-03-18 21:34:08', '2022-03-18 21:34:08', NULL),
(4, 'Guru', '1', '3', '2022-03-24 22:58:07', '2022-03-24 22:59:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadirans`
--

CREATE TABLE `kehadirans` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tahun_akademik` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  `sakit` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `alpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kehadirans`
--

INSERT INTO `kehadirans` (`id`, `id_sekolah`, `id_siswa`, `id_tahun_akademik`, `id_semester`, `sakit`, `izin`, `alpa`, `Keterangan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34, 1, 1, 1, 0, NULL, '0', '2022-03-17 11:17:49', '2022-03-17 11:17:49', NULL),
(2, 3, 740, 1, 1, 2, 2, '1', '<ul><li>Test</li><li>sda</li></ul>', '2022-04-20 08:42:12', '2022-04-20 08:45:07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) NOT NULL,
  `kelas` varchar(5) DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  `sekolah` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `status`, `sekolah`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(23, NULL, NULL, 1, NULL, NULL, '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(24, 'MMA', '1', 1, 1, '2022-03-17 10:33:20', '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(25, 'MMA', '1', 1, NULL, '2022-03-17 10:33:32', '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(26, 'MMA', '1', 1, 1, '2022-03-17 10:34:12', '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(27, 'MMA', '1', 1, 2, '2022-03-17 10:34:25', '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(28, 'MMA', '1', 1, 1, '2022-03-17 10:34:41', '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(29, NULL, NULL, 1, NULL, NULL, '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(30, NULL, NULL, 1, NULL, NULL, '2022-03-17 10:45:17', '2022-03-17 10:45:17'),
(31, NULL, NULL, NULL, NULL, NULL, '2022-03-18 11:26:58', '2022-03-18 11:26:58'),
(32, NULL, NULL, NULL, NULL, NULL, '2022-03-18 11:26:58', '2022-03-18 11:26:58'),
(33, 'RPLV', '1', NULL, 1, '2022-03-17 19:09:30', '2022-03-18 11:26:58', '2022-03-18 11:26:58'),
(34, 'RPBDD', '1', NULL, 1, '2022-03-17 19:14:26', '2022-03-18 11:26:59', '2022-03-18 11:26:59'),
(35, NULL, NULL, NULL, NULL, '2022-03-18 11:09:55', '2022-03-18 11:26:59', '2022-03-18 11:26:59'),
(36, NULL, NULL, NULL, NULL, '2022-03-18 11:11:21', '2022-03-18 11:26:59', '2022-03-18 11:26:59'),
(37, NULL, NULL, NULL, NULL, NULL, '2022-03-18 11:26:59', '2022-03-18 11:26:59'),
(38, 'A', '1', NULL, 9, NULL, '2022-03-18 11:26:59', '2022-03-18 11:26:59'),
(39, 'A', '1', 3, 9, NULL, '2022-03-18 11:26:59', '2022-03-18 11:26:59'),
(40, 'A', '1', 3, 9, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(41, 'A', '1', 3, 8, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(42, 'A', '1', 3, 8, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(43, NULL, NULL, 3, NULL, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(44, NULL, NULL, 3, NULL, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(45, NULL, NULL, 3, NULL, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(46, NULL, NULL, 3, NULL, NULL, '2022-03-18 11:32:15', '2022-03-18 11:32:15'),
(47, NULL, NULL, 3, NULL, NULL, '2022-03-18 11:32:11', '2022-03-18 11:32:11'),
(48, 'B', '1', 3, 9, NULL, '2022-03-18 11:42:28', '2022-03-18 11:42:28'),
(49, 'B', '1', 3, 7, NULL, '2022-03-18 11:42:28', '2022-03-18 11:42:28'),
(50, 'B', '1', 3, 7, NULL, '2022-03-18 11:42:28', '2022-03-18 11:42:28'),
(51, 'A', '1', 3, 6, NULL, '2022-03-18 11:42:28', '2022-03-18 11:42:28'),
(52, 'C', '1', 3, NULL, NULL, '2022-03-18 11:42:28', '2022-03-18 11:42:28'),
(53, 'D', '1', 3, 7, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(54, 'D', '1', 3, 7, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(55, 'A', '1', 3, 4, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(56, 'A', '1', 3, 4, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(57, 'A', '1', 3, 4, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(58, 'A', '1', 3, 4, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(59, 'C', '1', 3, 1, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(60, 'C', '1', 3, 1, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(61, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(62, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(63, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(64, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(65, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(66, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(67, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(68, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(69, 'A', '1', 3, 3, NULL, '2022-03-18 11:55:06', '2022-03-18 11:55:06'),
(70, 'A', '1', 3, 1, NULL, '2022-03-18 11:55:14', '2022-03-18 11:55:14'),
(71, '9A', '1', NULL, 9, NULL, '2022-03-18 11:55:53', NULL),
(72, '9B', '1', 3, 9, NULL, NULL, NULL),
(73, '9C', '1', 3, 9, NULL, NULL, NULL),
(74, '9D', '1', 3, 9, NULL, NULL, NULL),
(75, '9E', '1', 3, 9, NULL, NULL, NULL),
(76, '9F', '1', 3, 9, NULL, NULL, NULL),
(77, '9G', '1', 3, 9, NULL, NULL, NULL),
(78, '9H', '1', 3, 9, NULL, NULL, NULL),
(79, '9A', '1', NULL, 9, '2022-03-18 18:55:58', '2022-03-18 18:55:58', NULL),
(80, '9A', '1', 3, 9, '2022-03-18 19:15:47', '2022-03-18 19:15:47', NULL),
(81, 'test', '1', 3, 9, '2022-03-18 19:55:18', '2022-03-18 19:55:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelassiswas`
--

CREATE TABLE `kelassiswas` (
  `id` bigint(20) NOT NULL,
  `id_kelas` varchar(20) DEFAULT NULL,
  `id_siswa` bigint(20) DEFAULT NULL,
  `id_tahunakademik` bigint(20) DEFAULT NULL,
  `id_semester` bigint(20) DEFAULT NULL,
  `sekolah` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelassiswas`
--

INSERT INTO `kelassiswas` (`id`, `id_kelas`, `id_siswa`, `id_tahunakademik`, `id_semester`, `sekolah`, `created_at`, `updated_at`) VALUES
(452, '9A', 71503339, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(453, '9A', 72768921, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(454, '9A', 68992675, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(455, '9A', 76084829, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(456, '9A', 58818499, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(457, '9A', 61013327, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(458, '9A', 77183219, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(459, '9A', 77575840, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(460, '9A', 64360613, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(461, '9A', 62331918, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(462, '9A', 63268162, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(463, '9A', 74871951, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(464, '9A', 68301923, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(465, '9A', 78359078, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(466, '9A', 74073617, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(467, '9A', 71934925, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(468, '9A', 75835773, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(469, '9A', 67606856, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(470, '9A', 75003627, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(471, '9A', 77682340, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(472, '9A', 61802602, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(473, '9A', 61982196, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(474, '9A', 64772639, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(475, '9A', 69166372, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(476, '9A', 67723424, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(477, '9A', 51441584, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(478, '9A', 61590596, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(479, '9A', 71832987, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(480, '9A', 64342212, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(481, '9A', 64252179, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(482, '9A', 72769633, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(483, '9A', 64763517, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(484, '9B', 77032980, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(485, '9B', 68775617, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(486, '9B', 73727858, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(487, '9B', 76561184, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(488, '9B', 63673993, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(489, '9B', 3076022859, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(490, '9B', 79218728, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(491, '9B', 66128989, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(492, '9B', 61976827, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(493, '9B', 76958321, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(494, '9B', 63940041, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(495, '9B', 71557365, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(496, '9B', 73383504, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(497, '9B', 67420866, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(498, '9B', 71736461, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(499, '9B', 77564480, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(500, '9B', 64988810, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(501, '9B', 75467148, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(502, '9B', 68588939, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(503, '9B', 71203905, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(504, '9B', 63832208, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(505, '9B', 71675247, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(506, '9B', 68279606, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(507, '9B', 74637007, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(508, '9B', 64296111, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(509, '9B', 66666747, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(510, '9B', 78216953, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(511, '9B', 61043178, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(512, '9B', 72723997, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(513, '9B', 73161881, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(514, '9B', 74466176, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(515, '9B', 73839888, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(516, '9C', 74910325, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(517, '9C', 66188909, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(518, '9C', 63486556, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(519, '9C', 72618519, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(520, '9C', 64339918, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(521, '9C', 65998399, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(522, '9C', 78218369, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(523, '9C', 68721541, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(524, '9C', 69411287, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(525, '9C', 63394705, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(526, '9C', 52530354, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(527, '9C', 139059806, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(528, '9C', 57731051, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(529, '9C', 66308407, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(530, '9C', 79139885, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(531, '9C', 62919285, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(532, '9C', 61625371, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(533, '9C', 62811158, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(534, '9C', 73783884, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(535, '9C', 79308816, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(536, '9C', 77474546, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(537, '9C', 72202257, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(538, '9C', 76210248, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(539, '9C', 74419396, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(540, '9C', 68885692, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(541, '9C', 64890672, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(542, '9C', 72633712, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(543, '9C', 67331833, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(544, '9C', 77942585, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(545, '9C', 135654264, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(546, '9C', 71140584, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(547, '9D', 74976781, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(548, '9D', 63403817, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(549, '9D', 62451161, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(550, '9D', 68619581, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(551, '9D', 72257637, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(552, '9D', 71641299, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(553, '9D', 73104531, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(554, '9D', 75402535, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(555, '9D', 67460231, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(556, '9D', 69563044, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(557, '9D', 68816813, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(558, '9D', 71729277, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(559, '9D', 63508832, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(560, '9D', 73848823, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(561, '9D', 69687053, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(562, '9D', 68609659, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(563, '9D', 64613398, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(564, '9D', 72861922, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(565, '9D', 58766382, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(566, '9D', 62507858, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(567, '9D', 64799965, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(568, '9D', 68365258, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(569, '9D', 53227317, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(570, '9D', 78004777, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(571, '9D', 63270339, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(572, '9D', 76923570, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(573, '9D', 69930308, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(574, '9D', 72974231, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(575, '9D', 72484196, 1, 1, '3', '2022-03-18 19:34:44', '2022-03-18 19:34:44'),
(576, '9D', 61320068, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(577, '9D', 62663179, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(578, '9D', 68772402, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(579, '9E', 73247489, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(580, '9E', 78233091, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(581, '9E', 69293391, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(582, '9E', 77506688, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(583, '9E', 64546744, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(584, '9E', 63379670, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(585, '9E', 76819008, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(586, '9E', 75886196, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(587, '9E', 71691062, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(588, '9E', 3076909700, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(589, '9E', 67941282, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(590, '9E', 71416208, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(591, '9E', 67751241, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(592, '9E', 67938938, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(593, '9E', 61172450, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(594, '9E', 78047761, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(595, '9E', 76878556, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(596, '9E', 67487918, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(597, '9E', 75537945, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(598, '9E', 75255128, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(599, '9E', 69359662, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(600, '9E', 61013367, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(601, '9E', 68749072, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(602, '9E', 63725940, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(603, '9E', 64572130, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(604, '9E', 63928983, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(605, '9E', 67422965, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(606, '9E', 63395809, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(607, '9E', 65871681, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(608, '9E', 68898676, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(609, '9E', 75592429, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(610, '9E', 69974369, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(611, '9F', 79613620, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(612, '9F', 74927845, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(613, '9F', 67163108, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(614, '9F', 75365455, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(615, '9F', 63325006, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(616, '9F', 72337506, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(617, '9F', 78293085, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(618, '9F', 77875654, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(619, '9F', 66813564, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(620, '9F', 72570896, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(621, '9F', 75836089, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(622, '9F', 73816368, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(623, '9F', 72147923, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(624, '9F', 75411318, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(625, '9F', 78841627, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(626, '9F', 75491178, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(627, '9F', 71814102, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(628, '9F', 69673767, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(629, '9F', 78995889, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(630, '9F', 68963033, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(631, '9F', 64502297, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(632, '9F', 65739276, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(633, '9F', 51071715, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(634, '9F', 75956424, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(635, '9F', 74197545, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(636, '9F', 62196569, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(637, '9F', 76830745, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(638, '9F', 68394508, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(639, '9F', 78573762, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(640, '9F', 63116007, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(641, '9F', 73205684, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(642, '9F', 59441909, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(643, '9G', 57204835, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(644, '9G', 71294345, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(645, '9G', 67731646, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(646, '9G', 69539400, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(647, '9G', 67128632, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(648, '9G', 69426535, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(649, '9G', 71883134, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(650, '9G', 66035682, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(651, '9G', 57929505, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(652, '9G', 76482107, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(653, '9G', 62320023, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(654, '9G', 138096609, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(655, '9G', 61505101, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(656, '9G', 77287588, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(657, '9G', 74240184, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(658, '9G', 62277430, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(659, '9G', 63749106, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(660, '9G', 66878583, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(661, '9G', 59442515, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(662, '9G', 64089912, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(663, '9G', 66485413, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(664, '9G', 64579904, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(665, '9G', 67303103, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(666, '9G', 63602807, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(667, '9G', 69453364, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(668, '9G', 62700966, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(669, '9G', 69280714, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(670, '9G', 75749422, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(671, '9G', 79618576, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(672, '9G', 58669939, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(673, '9G', 73208125, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(674, '9H', 76184954, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(675, '9H', 3078735161, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(676, '9H', 62489415, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(677, '9H', 62145661, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(678, '9H', 62621679, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(679, '9H', 69411016, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(680, '9H', 73953103, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(681, '9H', 68957201, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(682, '9H', 65242456, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(683, '9H', 64348301, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(684, '9H', 77318281, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(685, '9H', 72527047, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(686, '9H', 78413512, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(687, '9H', 61982952, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(688, '9H', 71867718, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(689, '9H', 77305235, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(690, '9H', 72123968, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(691, '9H', 66422777, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(692, '9H', 51046889, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(693, '9H', 77141154, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(694, '9H', 3061668611, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(695, '9H', 3076571356, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(696, '9H', 68357796, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(697, '9H', 78823756, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(698, '9H', 62438041, 1, 1, '3', '2022-03-18 19:34:45', '2022-03-18 19:34:45'),
(700, NULL, NULL, 1, 1, '3', '2022-03-18 21:37:58', '2022-03-18 21:37:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konferensi_kasus`
--

CREATE TABLE `konferensi_kasus` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `hari_tanggal` timestamp NULL DEFAULT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pihak_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindak_lanjut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `konferensi_kasus`
--

INSERT INTO `konferensi_kasus` (`id`, `id_sekolah`, `id_siswa`, `hari_tanggal`, `nama_wali`, `pihak_sekolah`, `tujuan`, `deskripsi`, `tindak_lanjut`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34, '2022-03-01 06:29:00', 'Budi Suherman', 'Menyatakan Mendapatkan Surat Peringatan 1', 'Peringatan', 'Suka membuat onar dan merusak fasilitas', 'Mendapat Surat Peringatan 1', '2022-03-15 23:30:49', '2022-03-15 23:30:49', NULL),
(2, 3, 740, '2022-04-19 17:00:00', 'Adi', 'Test', 'Test', 'Test', 'Test', '2022-04-20 09:30:24', '2022-04-20 09:30:24', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-02-16 00:06:30', '2022-02-16 00:06:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-02-16 00:06:30', '2022-02-16 00:06:30', 'voyager.dashboard', NULL),
(2, 1, 'Data Utama', '', '_self', 'voyager-images', '#000000', NULL, 10, '2022-02-16 00:06:30', '2022-03-07 21:27:57', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 9, '2022-02-16 00:06:30', '2022-03-07 21:27:57', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 8, '2022-02-16 00:06:30', '2022-03-07 21:27:57', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 14, '2022-02-16 00:06:30', '2022-03-11 00:41:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-02-16 00:06:30', '2022-02-23 20:14:17', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-02-16 00:06:30', '2022-02-23 20:55:08', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-02-16 00:06:30', '2022-02-23 20:55:08', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-02-16 00:06:30', '2022-02-23 20:55:08', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 15, '2022-02-16 00:06:30', '2022-03-11 00:41:06', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 13, '2022-02-16 00:08:57', '2022-03-07 21:27:57', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 11, '2022-02-16 00:08:57', '2022-03-07 21:27:57', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 12, '2022-02-16 00:08:58', '2022-03-07 21:27:57', 'voyager.pages.index', NULL),
(16, 1, 'Jabatans', '', '_self', 'voyager-list', '#000000', 19, 2, '2022-02-23 18:51:18', '2022-02-25 00:36:20', 'voyager.jabatans.index', 'null'),
(17, 1, 'Kelas', '', '_self', 'voyager-list', '#000000', 19, 1, '2022-02-23 19:06:44', '2022-02-25 00:36:01', 'voyager.kelas.index', 'null'),
(19, 1, 'Data Utama', '', '_self', 'voyager-categories', '#000000', NULL, 3, '2022-02-23 20:53:54', '2022-02-24 23:31:05', NULL, ''),
(20, 1, 'Data Sekolah', '', '_self', 'voyager-study', '#000000', NULL, 2, '2022-02-23 20:56:12', '2022-02-25 00:33:12', 'voyager.sekolahs.index', 'null'),
(21, 1, 'Tahun Akademik', '', '_self', 'voyager-list', '#000000', 19, 3, '2022-02-23 20:57:02', '2022-02-25 00:36:38', 'voyager.tahunakademiks.index', 'null'),
(22, 1, 'Semesters', '', '_self', 'voyager-list', '#000000', 19, 4, '2022-02-23 20:58:02', '2022-02-25 00:36:52', 'voyager.semesters.index', 'null'),
(23, 1, 'Data PTK', '', '_self', NULL, '#000000', 14, 1, '2022-02-23 20:59:47', '2022-02-24 00:11:34', 'voyager.ptks.index', 'null'),
(24, 1, 'Pengguna PTK', '', '_self', NULL, '#000000', 14, 2, '2022-02-23 21:00:47', '2022-02-24 00:17:00', 'voyager.penggunas.index', 'null'),
(25, 1, 'Data Peserta Didik', '', '_self', 'voyager-categories', '#000000', NULL, 5, '2022-02-23 21:55:00', '2022-02-24 23:31:48', NULL, ''),
(26, 1, 'Data Peserta Didik', '', '_self', NULL, '#000000', 25, 1, '2022-02-23 21:55:54', '2022-02-24 00:22:26', 'voyager.siswas.index', 'null'),
(27, 1, 'Kelas Peserta Didik', '', '_self', NULL, '#000000', 25, 2, '2022-02-23 21:56:37', '2022-02-24 00:26:48', 'voyager.kelassiswas.index', 'null'),
(29, 1, 'Rekam Non Akademik', '', '_self', NULL, '#000000', 25, 3, '2022-02-23 21:58:35', '2022-03-17 08:24:39', 'voyager.rekams.index', 'null'),
(30, 1, 'Data Non Akademik', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2022-02-23 21:59:27', '2022-03-07 21:27:57', NULL, ''),
(31, 1, 'Prestasi', '', '_self', NULL, '#000000', 30, 1, '2022-02-23 22:00:10', '2022-03-10 20:58:25', 'voyager.prestasis.index', 'null'),
(32, 1, 'Kehadiran', '', '_self', NULL, '#000000', 30, 2, '2022-02-23 22:00:41', '2022-03-10 20:48:11', 'voyager.kehadirans.index', 'null'),
(33, 1, 'Perilaku', '', '_self', NULL, '#000000', 30, 3, '2022-02-23 22:01:14', '2022-03-10 21:02:10', 'voyager.catatan_perilakus.index', 'null'),
(34, 1, 'Home Visite', '', '_self', NULL, '#000000', 30, 4, '2022-02-23 22:01:53', '2022-03-10 23:12:41', 'voyager.home_visites.index', 'null'),
(35, 1, 'Referal', '', '_self', NULL, '#000000', 30, 5, '2022-02-23 22:01:53', '2022-03-10 23:20:33', 'voyager.referals.index', 'null'),
(36, 1, 'Konferensi Kasus', '', '_self', NULL, '#000000', 30, 6, '2022-02-23 22:01:54', '2022-03-10 23:36:30', 'voyager.konferensi_kasus.index', 'null'),
(38, 1, 'Buku Tamu', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2022-02-23 22:04:32', '2022-03-10 20:34:45', 'voyager.buku_tamus.index', 'null'),
(62, 1, 'Bimbingan Konseling', '', '_self', NULL, '#000000', 30, 7, '2022-03-11 00:37:41', '2022-03-11 00:41:17', 'voyager.bimbings.index', 'null'),
(65, 1, 'Data PTK', '', '_self', 'voyager-person', '#000000', NULL, 4, '2022-03-17 08:24:26', '2022-03-17 08:25:18', 'voyager.ptks.index', 'null');

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
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(10, '2016_08_07_152421_add_table_cms_users', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(13, '2016_08_17_225409_add_status_cms_users', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2016_01_01_000000_add_voyager_user_fields', 2),
(31, '2016_01_01_000000_create_data_types_table', 2),
(32, '2016_05_19_173453_create_menu_table', 2),
(33, '2016_10_21_190000_create_roles_table', 2),
(34, '2016_10_21_190000_create_settings_table', 2),
(35, '2016_11_30_135954_create_permission_table', 2),
(36, '2016_11_30_141208_create_permission_role_table', 2),
(37, '2016_12_26_201236_data_types__add__server_side', 2),
(38, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(39, '2017_01_14_005015_create_translations_table', 2),
(40, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(41, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(42, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(43, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(44, '2017_08_05_000000_add_group_to_settings_table', 2),
(45, '2017_11_26_013050_add_user_role_relationship', 2),
(46, '2017_11_26_015000_create_user_roles_table', 2),
(47, '2018_03_11_000000_add_user_settings', 2),
(48, '2018_03_14_000000_add_details_to_data_types_table', 2),
(49, '2018_03_16_000000_make_settings_value_nullable', 2),
(50, '2016_01_01_000000_create_pages_table', 3),
(51, '2016_01_01_000000_create_posts_table', 3),
(52, '2016_02_15_204651_create_categories_table', 3),
(53, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-02-16 00:08:58', '2022-02-16 00:08:58');

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
-- Struktur dari tabel `penggunas`
--

CREATE TABLE `penggunas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penggunas`
--

INSERT INTO `penggunas` (`id`, `nama`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Andi S', 'andianjay', '132465', '2022-02-24 00:41:39', '2022-02-24 00:41:39'),
(2, 'Andi', 'andi123', '123123', '2022-02-25 01:27:48', '2022-02-25 01:27:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(2, 'browse_bread', NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(3, 'browse_database', NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(4, 'browse_media', NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(5, 'browse_compass', NULL, '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(6, 'browse_menus', 'menus', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(7, 'read_menus', 'menus', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(8, 'edit_menus', 'menus', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(9, 'add_menus', 'menus', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(10, 'delete_menus', 'menus', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(11, 'browse_roles', 'roles', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(12, 'read_roles', 'roles', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(13, 'edit_roles', 'roles', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(14, 'add_roles', 'roles', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(15, 'delete_roles', 'roles', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(16, 'browse_users', 'users', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(17, 'read_users', 'users', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(18, 'edit_users', 'users', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(19, 'add_users', 'users', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(20, 'delete_users', 'users', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(21, 'browse_settings', 'settings', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(22, 'read_settings', 'settings', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(23, 'edit_settings', 'settings', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(24, 'add_settings', 'settings', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(25, 'delete_settings', 'settings', '2022-02-16 00:06:30', '2022-02-16 00:06:30'),
(26, 'browse_categories', 'categories', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(27, 'read_categories', 'categories', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(28, 'edit_categories', 'categories', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(29, 'add_categories', 'categories', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(30, 'delete_categories', 'categories', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(31, 'browse_posts', 'posts', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(32, 'read_posts', 'posts', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(33, 'edit_posts', 'posts', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(34, 'add_posts', 'posts', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(35, 'delete_posts', 'posts', '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(36, 'browse_pages', 'pages', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(37, 'read_pages', 'pages', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(38, 'edit_pages', 'pages', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(39, 'add_pages', 'pages', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(40, 'delete_pages', 'pages', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(41, 'browse_jabatan', 'jabatan', '2022-02-23 18:51:18', '2022-02-23 18:51:18'),
(42, 'read_jabatan', 'jabatan', '2022-02-23 18:51:18', '2022-02-23 18:51:18'),
(43, 'edit_jabatan', 'jabatan', '2022-02-23 18:51:18', '2022-02-23 18:51:18'),
(44, 'add_jabatan', 'jabatan', '2022-02-23 18:51:18', '2022-02-23 18:51:18'),
(45, 'delete_jabatan', 'jabatan', '2022-02-23 18:51:18', '2022-02-23 18:51:18'),
(46, 'browse_kelas', 'kelas', '2022-02-23 19:06:44', '2022-02-23 19:06:44'),
(47, 'read_kelas', 'kelas', '2022-02-23 19:06:44', '2022-02-23 19:06:44'),
(48, 'edit_kelas', 'kelas', '2022-02-23 19:06:44', '2022-02-23 19:06:44'),
(49, 'add_kelas', 'kelas', '2022-02-23 19:06:44', '2022-02-23 19:06:44'),
(50, 'delete_kelas', 'kelas', '2022-02-23 19:06:44', '2022-02-23 19:06:44'),
(56, 'browse_jabatans', 'jabatans', '2022-02-23 22:56:29', '2022-02-23 22:56:29'),
(57, 'read_jabatans', 'jabatans', '2022-02-23 22:56:29', '2022-02-23 22:56:29'),
(58, 'edit_jabatans', 'jabatans', '2022-02-23 22:56:29', '2022-02-23 22:56:29'),
(59, 'add_jabatans', 'jabatans', '2022-02-23 22:56:29', '2022-02-23 22:56:29'),
(60, 'delete_jabatans', 'jabatans', '2022-02-23 22:56:29', '2022-02-23 22:56:29'),
(61, 'browse_tahunakademik', 'tahunakademik', '2022-02-23 23:22:46', '2022-02-23 23:22:46'),
(62, 'read_tahunakademik', 'tahunakademik', '2022-02-23 23:22:46', '2022-02-23 23:22:46'),
(63, 'edit_tahunakademik', 'tahunakademik', '2022-02-23 23:22:46', '2022-02-23 23:22:46'),
(64, 'add_tahunakademik', 'tahunakademik', '2022-02-23 23:22:46', '2022-02-23 23:22:46'),
(65, 'delete_tahunakademik', 'tahunakademik', '2022-02-23 23:22:46', '2022-02-23 23:22:46'),
(66, 'browse_semester', 'semester', '2022-02-23 23:24:14', '2022-02-23 23:24:14'),
(67, 'read_semester', 'semester', '2022-02-23 23:24:14', '2022-02-23 23:24:14'),
(68, 'edit_semester', 'semester', '2022-02-23 23:24:14', '2022-02-23 23:24:14'),
(69, 'add_semester', 'semester', '2022-02-23 23:24:14', '2022-02-23 23:24:14'),
(70, 'delete_semester', 'semester', '2022-02-23 23:24:14', '2022-02-23 23:24:14'),
(71, 'browse_semesters', 'semesters', '2022-02-23 23:36:14', '2022-02-23 23:36:14'),
(72, 'read_semesters', 'semesters', '2022-02-23 23:36:14', '2022-02-23 23:36:14'),
(73, 'edit_semesters', 'semesters', '2022-02-23 23:36:14', '2022-02-23 23:36:14'),
(74, 'add_semesters', 'semesters', '2022-02-23 23:36:14', '2022-02-23 23:36:14'),
(75, 'delete_semesters', 'semesters', '2022-02-23 23:36:14', '2022-02-23 23:36:14'),
(76, 'browse_tahunakademiks', 'tahunakademiks', '2022-02-23 23:54:54', '2022-02-23 23:54:54'),
(77, 'read_tahunakademiks', 'tahunakademiks', '2022-02-23 23:54:54', '2022-02-23 23:54:54'),
(78, 'edit_tahunakademiks', 'tahunakademiks', '2022-02-23 23:54:54', '2022-02-23 23:54:54'),
(79, 'add_tahunakademiks', 'tahunakademiks', '2022-02-23 23:54:54', '2022-02-23 23:54:54'),
(80, 'delete_tahunakademiks', 'tahunakademiks', '2022-02-23 23:54:54', '2022-02-23 23:54:54'),
(81, 'browse_sekolahs', 'sekolahs', '2022-02-24 00:01:22', '2022-02-24 00:01:22'),
(82, 'read_sekolahs', 'sekolahs', '2022-02-24 00:01:22', '2022-02-24 00:01:22'),
(83, 'edit_sekolahs', 'sekolahs', '2022-02-24 00:01:22', '2022-02-24 00:01:22'),
(84, 'add_sekolahs', 'sekolahs', '2022-02-24 00:01:22', '2022-02-24 00:01:22'),
(85, 'delete_sekolahs', 'sekolahs', '2022-02-24 00:01:22', '2022-02-24 00:01:22'),
(86, 'browse_ptks', 'ptks', '2022-02-24 00:10:53', '2022-02-24 00:10:53'),
(87, 'read_ptks', 'ptks', '2022-02-24 00:10:53', '2022-02-24 00:10:53'),
(88, 'edit_ptks', 'ptks', '2022-02-24 00:10:53', '2022-02-24 00:10:53'),
(89, 'add_ptks', 'ptks', '2022-02-24 00:10:53', '2022-02-24 00:10:53'),
(90, 'delete_ptks', 'ptks', '2022-02-24 00:10:53', '2022-02-24 00:10:53'),
(91, 'browse_penggunas', 'penggunas', '2022-02-24 00:16:20', '2022-02-24 00:16:20'),
(92, 'read_penggunas', 'penggunas', '2022-02-24 00:16:20', '2022-02-24 00:16:20'),
(93, 'edit_penggunas', 'penggunas', '2022-02-24 00:16:20', '2022-02-24 00:16:20'),
(94, 'add_penggunas', 'penggunas', '2022-02-24 00:16:20', '2022-02-24 00:16:20'),
(95, 'delete_penggunas', 'penggunas', '2022-02-24 00:16:20', '2022-02-24 00:16:20'),
(96, 'browse_siswas', 'siswas', '2022-02-24 00:21:04', '2022-02-24 00:21:04'),
(97, 'read_siswas', 'siswas', '2022-02-24 00:21:04', '2022-02-24 00:21:04'),
(98, 'edit_siswas', 'siswas', '2022-02-24 00:21:04', '2022-02-24 00:21:04'),
(99, 'add_siswas', 'siswas', '2022-02-24 00:21:04', '2022-02-24 00:21:04'),
(100, 'delete_siswas', 'siswas', '2022-02-24 00:21:04', '2022-02-24 00:21:04'),
(101, 'browse_kelassiswas', 'kelassiswas', '2022-02-24 00:25:53', '2022-02-24 00:25:53'),
(102, 'read_kelassiswas', 'kelassiswas', '2022-02-24 00:25:53', '2022-02-24 00:25:53'),
(103, 'edit_kelassiswas', 'kelassiswas', '2022-02-24 00:25:53', '2022-02-24 00:25:53'),
(104, 'add_kelassiswas', 'kelassiswas', '2022-02-24 00:25:53', '2022-02-24 00:25:53'),
(105, 'delete_kelassiswas', 'kelassiswas', '2022-02-24 00:25:53', '2022-02-24 00:25:53'),
(106, 'browse_bukutamus', 'bukutamus', '2022-03-10 20:27:53', '2022-03-10 20:27:53'),
(107, 'read_bukutamus', 'bukutamus', '2022-03-10 20:27:53', '2022-03-10 20:27:53'),
(108, 'edit_bukutamus', 'bukutamus', '2022-03-10 20:27:53', '2022-03-10 20:27:53'),
(109, 'add_bukutamus', 'bukutamus', '2022-03-10 20:27:53', '2022-03-10 20:27:53'),
(110, 'delete_bukutamus', 'bukutamus', '2022-03-10 20:27:53', '2022-03-10 20:27:53'),
(111, 'browse_buku_tamus', 'buku_tamus', '2022-03-10 20:35:19', '2022-03-10 20:35:19'),
(112, 'read_buku_tamus', 'buku_tamus', '2022-03-10 20:35:19', '2022-03-10 20:35:19'),
(113, 'edit_buku_tamus', 'buku_tamus', '2022-03-10 20:35:19', '2022-03-10 20:35:19'),
(114, 'add_buku_tamus', 'buku_tamus', '2022-03-10 20:35:19', '2022-03-10 20:35:19'),
(115, 'delete_buku_tamus', 'buku_tamus', '2022-03-10 20:35:19', '2022-03-10 20:35:19'),
(116, 'browse_kehadirans', 'kehadirans', '2022-03-10 20:47:41', '2022-03-10 20:47:41'),
(117, 'read_kehadirans', 'kehadirans', '2022-03-10 20:47:41', '2022-03-10 20:47:41'),
(118, 'edit_kehadirans', 'kehadirans', '2022-03-10 20:47:41', '2022-03-10 20:47:41'),
(119, 'add_kehadirans', 'kehadirans', '2022-03-10 20:47:41', '2022-03-10 20:47:41'),
(120, 'delete_kehadirans', 'kehadirans', '2022-03-10 20:47:41', '2022-03-10 20:47:41'),
(121, 'browse_prestasis', 'prestasis', '2022-03-10 20:56:23', '2022-03-10 20:56:23'),
(122, 'read_prestasis', 'prestasis', '2022-03-10 20:56:23', '2022-03-10 20:56:23'),
(123, 'edit_prestasis', 'prestasis', '2022-03-10 20:56:23', '2022-03-10 20:56:23'),
(124, 'add_prestasis', 'prestasis', '2022-03-10 20:56:23', '2022-03-10 20:56:23'),
(125, 'delete_prestasis', 'prestasis', '2022-03-10 20:56:23', '2022-03-10 20:56:23'),
(126, 'browse_catatan_perilakus', 'catatan_perilakus', '2022-03-10 21:01:44', '2022-03-10 21:01:44'),
(127, 'read_catatan_perilakus', 'catatan_perilakus', '2022-03-10 21:01:44', '2022-03-10 21:01:44'),
(128, 'edit_catatan_perilakus', 'catatan_perilakus', '2022-03-10 21:01:44', '2022-03-10 21:01:44'),
(129, 'add_catatan_perilakus', 'catatan_perilakus', '2022-03-10 21:01:44', '2022-03-10 21:01:44'),
(130, 'delete_catatan_perilakus', 'catatan_perilakus', '2022-03-10 21:01:44', '2022-03-10 21:01:44'),
(131, 'browse_home_visites', 'home_visites', '2022-03-10 23:03:08', '2022-03-10 23:03:08'),
(132, 'read_home_visites', 'home_visites', '2022-03-10 23:03:08', '2022-03-10 23:03:08'),
(133, 'edit_home_visites', 'home_visites', '2022-03-10 23:03:08', '2022-03-10 23:03:08'),
(134, 'add_home_visites', 'home_visites', '2022-03-10 23:03:08', '2022-03-10 23:03:08'),
(135, 'delete_home_visites', 'home_visites', '2022-03-10 23:03:08', '2022-03-10 23:03:08'),
(136, 'browse_referal', 'referal', '2022-03-10 23:17:24', '2022-03-10 23:17:24'),
(137, 'read_referal', 'referal', '2022-03-10 23:17:24', '2022-03-10 23:17:24'),
(138, 'edit_referal', 'referal', '2022-03-10 23:17:24', '2022-03-10 23:17:24'),
(139, 'add_referal', 'referal', '2022-03-10 23:17:24', '2022-03-10 23:17:24'),
(140, 'delete_referal', 'referal', '2022-03-10 23:17:24', '2022-03-10 23:17:24'),
(141, 'browse_referals', 'referals', '2022-03-10 23:18:18', '2022-03-10 23:18:18'),
(142, 'read_referals', 'referals', '2022-03-10 23:18:18', '2022-03-10 23:18:18'),
(143, 'edit_referals', 'referals', '2022-03-10 23:18:18', '2022-03-10 23:18:18'),
(144, 'add_referals', 'referals', '2022-03-10 23:18:18', '2022-03-10 23:18:18'),
(145, 'delete_referals', 'referals', '2022-03-10 23:18:18', '2022-03-10 23:18:18'),
(146, 'browse_konferensi_kasus', 'konferensi_kasus', '2022-03-10 23:34:45', '2022-03-10 23:34:45'),
(147, 'read_konferensi_kasus', 'konferensi_kasus', '2022-03-10 23:34:45', '2022-03-10 23:34:45'),
(148, 'edit_konferensi_kasus', 'konferensi_kasus', '2022-03-10 23:34:45', '2022-03-10 23:34:45'),
(149, 'add_konferensi_kasus', 'konferensi_kasus', '2022-03-10 23:34:45', '2022-03-10 23:34:45'),
(150, 'delete_konferensi_kasus', 'konferensi_kasus', '2022-03-10 23:34:45', '2022-03-10 23:34:45'),
(151, 'browse_bimbingan', 'bimbingan', '2022-03-10 23:48:25', '2022-03-10 23:48:25'),
(152, 'read_bimbingan', 'bimbingan', '2022-03-10 23:48:25', '2022-03-10 23:48:25'),
(153, 'edit_bimbingan', 'bimbingan', '2022-03-10 23:48:25', '2022-03-10 23:48:25'),
(154, 'add_bimbingan', 'bimbingan', '2022-03-10 23:48:25', '2022-03-10 23:48:25'),
(155, 'delete_bimbingan', 'bimbingan', '2022-03-10 23:48:25', '2022-03-10 23:48:25'),
(171, 'browse_bimbings', 'bimbings', '2022-03-11 00:37:41', '2022-03-11 00:37:41'),
(172, 'read_bimbings', 'bimbings', '2022-03-11 00:37:41', '2022-03-11 00:37:41'),
(173, 'edit_bimbings', 'bimbings', '2022-03-11 00:37:41', '2022-03-11 00:37:41'),
(174, 'add_bimbings', 'bimbings', '2022-03-11 00:37:41', '2022-03-11 00:37:41'),
(175, 'delete_bimbings', 'bimbings', '2022-03-11 00:37:41', '2022-03-11 00:37:41'),
(176, 'browse_rekams', 'rekams', '2022-03-15 22:38:40', '2022-03-15 22:38:40'),
(177, 'read_rekams', 'rekams', '2022-03-15 22:38:40', '2022-03-15 22:38:40'),
(178, 'edit_rekams', 'rekams', '2022-03-15 22:38:40', '2022-03-15 22:38:40'),
(179, 'add_rekams', 'rekams', '2022-03-15 22:38:40', '2022-03-15 22:38:40'),
(180, 'delete_rekams', 'rekams', '2022-03-15 22:38:40', '2022-03-15 22:38:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 1),
(111, 2),
(111, 3),
(112, 1),
(112, 2),
(112, 3),
(113, 1),
(113, 2),
(113, 3),
(114, 1),
(114, 2),
(114, 3),
(115, 1),
(115, 2),
(115, 3),
(116, 1),
(116, 3),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(119, 3),
(120, 1),
(120, 3),
(121, 1),
(121, 3),
(122, 1),
(122, 3),
(123, 1),
(123, 3),
(124, 1),
(124, 3),
(125, 1),
(125, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(134, 1),
(134, 3),
(135, 1),
(135, 3),
(141, 1),
(141, 3),
(142, 1),
(142, 3),
(143, 1),
(143, 3),
(144, 1),
(144, 3),
(145, 1),
(145, 3),
(146, 1),
(146, 3),
(147, 1),
(147, 3),
(148, 1),
(148, 3),
(149, 1),
(149, 3),
(150, 1),
(150, 3),
(171, 1),
(171, 3),
(172, 1),
(172, 3),
(173, 1),
(173, 3),
(174, 1),
(174, 3),
(175, 1),
(175, 3),
(176, 1),
(176, 2),
(177, 1),
(177, 2),
(178, 1),
(178, 2),
(179, 1),
(179, 2),
(180, 1),
(180, 2);

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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-02-16 00:08:57', '2022-02-16 00:08:57'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-02-16 00:08:57', '2022-02-16 00:08:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasis`
--

CREATE TABLE `prestasis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tahun_akademik` int(11) DEFAULT NULL,
  `id_semester` int(11) DEFAULT NULL,
  `jenis_lomba` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `juara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bidang_lomba` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prestasis`
--

INSERT INTO `prestasis` (`id`, `id_sekolah`, `id_siswa`, `id_tahun_akademik`, `id_semester`, `jenis_lomba`, `tingkat`, `juara`, `bidang_lomba`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34, 1, 2, 'Makan Pisang', 'Internasional', '1', '1', '2022-03-15 23:16:45', '2022-03-15 23:16:45', NULL),
(2, NULL, 741, NULL, NULL, 'Fotografi', 'Nasional', '1', '2', '2022-04-20 08:05:25', '2022-04-20 08:09:41', NULL),
(3, 3, 740, 1, 1, 'Makan Pisang', 'Nasional', '1', '1', '2022-04-20 10:24:36', '2022-04-20 10:24:36', NULL),
(4, 3, 740, 1, 1, 'Lomba Makan Krupuk', 'Nasional', '1', '2', '2022-05-24 05:39:16', '2022-05-24 05:39:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ptks`
--

CREATE TABLE `ptks` (
  `id` bigint(20) NOT NULL,
  `nama_ptk` varchar(255) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `sekolah` varchar(20) DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  `jk` enum('1','2') DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ptks`
--

INSERT INTO `ptks` (`id`, `nama_ptk`, `nip`, `jabatan`, `sekolah`, `status`, `jk`, `username`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Andi', '19829109', '1', '1', '1', '1', 'mochrayhan2910', '$2y$10$0TunFfYcgzQNPuzD37GWje7zN5zPbm5IxSK42RGEE3iaO0pdAI9LC', '2022-02-24 00:40:00', '2022-03-02 00:30:46', NULL),
(2, 'Ida Andi', '9921039213', '4', '3', '1', '2', 'AA', '$2y$10$zWV2ci4wYxKpo9MdWLLvmOkbF3tYWG6QdkjMuKwcfJMv5UPvhxpQu', '2022-02-25 01:27:12', '2022-04-20 07:27:43', NULL),
(3, 'adi', '12421', '2', '1', '1', '1', 'toko64', '$2y$10$wER8eBB4GKc151ezFDhZae1d.nzv5b5d6YfRJ5H6L9kEAUWI5/txy', '2022-03-18 10:07:46', '2022-03-18 10:07:46', NULL),
(4, 'ohi', '2077', '1', '3', '1', '1', 'oji', NULL, '2022-03-31 18:32:09', '2022-03-31 18:32:09', NULL),
(5, 'Budi', '2010230', '2', '3', '1', '1', 'Rasyd', NULL, '2022-04-20 00:31:03', '2022-04-20 00:31:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `referals`
--

CREATE TABLE `referals` (
  `id` int(11) NOT NULL,
  `id_sekolah` int(11) DEFAULT NULL,
  `hari_tanggal` timestamp NULL DEFAULT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kunjungan_ke` int(11) DEFAULT NULL,
  `tindak_lanjut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekams`
--

CREATE TABLE `rekams` (
  `id` int(11) NOT NULL,
  `id_prestasi` int(11) DEFAULT NULL,
  `id_kehadiran` int(11) DEFAULT NULL,
  `id_perilaku` int(11) DEFAULT NULL,
  `id_home_visite` int(11) DEFAULT NULL,
  `id_konferensi_kasus` int(11) DEFAULT NULL,
  `id_bimbingan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekams`
--

INSERT INTO `rekams` (`id`, `id_prestasi`, `id_kehadiran`, `id_perilaku`, `id_home_visite`, `id_konferensi_kasus`, `id_bimbingan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-15 17:00:00', '2022-03-15 17:00:00', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-19 17:00:00', '2022-04-19 17:00:00', NULL),
(740, 1, NULL, 1, NULL, 1, 1, '2022-03-15 22:46:40', '2022-03-31 18:47:18', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Super Admin', '2022-02-16 00:06:30', '2022-02-16 00:52:08'),
(2, 'Admin', 'Sekolah', '2022-02-16 00:06:30', '2022-02-16 00:52:37'),
(3, 'Guru', 'Guru BK', '2022-02-16 00:53:05', '2022-02-16 00:53:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolahs`
--

CREATE TABLE `sekolahs` (
  `id` bigint(20) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `namacp` varchar(255) DEFAULT NULL,
  `telpsekolah` varchar(16) DEFAULT NULL,
  `telpcp` varchar(16) DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `status` enum('1','2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sekolahs`
--

INSERT INTO `sekolahs` (`id`, `nama_sekolah`, `namacp`, `telpsekolah`, `telpcp`, `username`, `password`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SMKN 5 Malang', 'Budi Anjasmara', '03419871029', '081231231232', 'mochrayhan2910', '$2y$10$hoI3mhn61BHX33fAOlVkjup6rrPS/cbHlCViXS3PEARu35g15799u', '1', '2022-02-24 00:36:00', '2022-03-18 21:29:50', '2022-03-18 21:29:50'),
(2, 'SMKN 2 Malang', 'Budi', '03419871029', '081231231232', 'rayhan', '$2y$10$fqf7L03PAKZKwUwO93dLC.bypWHTiMddnfMzGkgbVnQIMNQTRMxmK', '1', '2022-03-01 21:24:54', '2022-03-18 21:29:50', '2022-03-18 21:29:50'),
(3, 'SMPN 1 Kasembon', 'Sriyono', '08931399293', '08931399293', 'test', '$2y$10$EmgXOhOAvVUYfV.wIqgN8uBQj9uQ7lWOeppbtfkCDQ8pVDzQtzKva', '1', '2022-03-18 10:54:05', '2022-03-18 10:54:05', NULL),
(4, 'SMPN 1 Kasembon', 'Budi', '08123567489', '08221367865', 'SMP1', '$2y$10$CzOcUNOMxcl7iuLHZToqx.Bng98YILuza1.h3w2KVC8dmCygcIQCC', '1', '2022-03-18 21:26:09', '2022-03-18 21:27:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `semesters`
--

CREATE TABLE `semesters` (
  `id` bigint(20) NOT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `sekolah` varchar(255) DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `semesters`
--

INSERT INTO `semesters` (`id`, `semester`, `sekolah`, `status`, `created_at`, `updated_at`) VALUES
(1, '2', '3', '1', '2022-02-24 00:38:00', '2022-03-18 21:31:24'),
(2, '1', '3', '1', '2022-03-08 18:45:06', '2022-03-18 21:31:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2022\\dvt8RcTJp7HvanNrlPCJ.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Aplikasi BK', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Aplikasi BK SMP', '', 'text', 3, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2022\\BqS7YlkAC2kfCKXk9wvJ.png', '', 'image', 2, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2022\\fdYZYqEaEIFfaZl9cxqA.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jk` enum('1','2') NOT NULL,
  `nisn` varchar(16) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `sekolah` varchar(20) DEFAULT NULL,
  `status` enum('1','2') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rekam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswas`
--

INSERT INTO `siswas` (`id`, `nama`, `jk`, `nisn`, `no_telp`, `sekolah`, `status`, `created_at`, `updated_at`, `deleted_at`, `rekam_id`) VALUES
(740, 'AHMAD HAFIS PRIAMBUDI', '2', '0071503339', '085731230645', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(741, 'AJENG DEWI CANTRIKA', '1', '0072768921', '083833087874', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(742, 'Andi Ferma Setiawan', '2', '0068992675', '081999591143', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(743, 'ASTA ESA WARDANI', '1', '0076084829', '085733020201', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(744, 'ASTRI SEPTI WIDIA SARI', '1', '0058818499', '082131146445', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(745, 'DESI NATALIA', '1', '0061013327', '085850673916', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(746, 'DEWINDA RENANTYA ALINCY', '1', '0077183219', '082233271044', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(747, 'DITA RAHMAWATI', '1', '0077575840', '083849192560', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(748, 'Dwi Ernawati', '1', '0064360613', '085755178526', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(749, 'EIRENE CHRYSTY PUTRI HARIYANTO', '1', '0062331918', '087757904006', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(750, 'Endang Dewi Puspitasari', '1', '0063268162', '085755192705', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(751, 'FEBI NOVI ARIYANTI', '1', '0074871951', '083116101744', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(752, 'GABRIEL WIKRAMA PANGESTU', '2', '0068301923', '085745402964', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(753, 'HANDOYO FIRMAN DWIKY DARMAWAN', '2', '0078359078', '088227010739', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(754, 'ILHAM ALAMSYAH PRAWIRONEGORO ', '2', '0074073617', '083850774807', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(755, 'LAELY AYU MAULIDIAH', '1', '0071934925', '08315891651', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(756, 'LUVE RAHMA', '1', '0075835773', '085749073024', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(757, 'Merlin Chandra Lestari', '1', '0067606856', '085735421015', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(758, 'MIFTAH ZACHRI NUGRAHA', '2', '0075003627', '087863518668', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(759, 'Mohammad Nugroho Candy Pratama', '2', '0077682340', '085782098042', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(760, 'MUHAMMAD WAFI FIRDAUS', '2', '0061802602', '0895385294854', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(761, 'Nadia Ayu Erawati', '1', '0061982196', '085234417138', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(762, 'PRADHIPA MANGGALA THAMTAMA', '2', '0064772639', '088217236145', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(763, 'PUTRI AISYAH ROSSHALINA SUWARNO', '1', '0069166372', '081357846226', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(764, 'SAFINNA NABILA WIDYA DHANA', '1', '0067723424', '085606098283', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(765, 'Sefani Arif Widya Putra', '2', '0051441584', '085706580359', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(766, 'SILVI WULANDARI', '1', '0061590596', '081327876253', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(767, 'SULTAN AFFANDI YANUARTA', '2', '0071832987', '089685435213', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(768, 'Syifa\' Firdaus Salwa Harianto', '2', '0064342212', '083831251140', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(769, 'TEJAKUSALO DRYAN', '2', '0064252179', '08887182623', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(770, 'Vicka Dewi Anggraini', '1', '0072769633', '085233731476', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(771, 'Wahyu Puji Budi Utomo', '2', '0064763517', '085790651204', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(772, 'Ahmad Faris Hermawan', '2', '0077032980', '089523489576', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(773, 'AININ SAFA ERLINDA', '1', '0068775617', '08882036850', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(774, 'AMELISA CHELSY WINATA', '1', '0073727858', '085732674145', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(775, 'ANA FARIEL MAULATIFA', '1', '0076561184', '081252766989', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(776, 'AYU METHA APRILIA', '1', '0063673993', '085895062431', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(777, 'BELIA SHINTYA INDAH CAHAYANI', '1', '3076022859', '085745705972', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(778, 'DEA VALENTINA PUTRI', '1', '0079218728', '083848639848', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(779, 'Devando Neftalius', '2', '0066128989', '082334929511', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(780, 'DIMAS PANJI DEWANATA', '2', '0061976827', '083834778334', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(781, 'ELVARIDA DAMAI JIWAMULYA DAMAYANTI', '1', '0076958321', '085645875030', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(782, 'FAKHRIZAL ADHITYA PUTRA', '2', '0063940041', '081230425215', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(783, 'GADIS CECILIA', '1', '0071557365', '083137363976', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(784, 'GUNAWAN ADI FIRMANSYAH', '2', '0073383504', '085707991423', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(785, 'Henggar Eka Prasetyo', '2', '0067420866', '085731885838', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(786, 'JACINDA KHULAFAH ROSYADA', '1', '0071736461', '083849722698', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(787, 'JULVIKO MARENDRAWAN TRI PRASTIYO', '2', '0077564480', '082131192315', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(788, 'KARTIKA RAMADANI', '1', '0064988810', '081515259583', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(789, 'KHOIRUS SABRINA BADZLINA', '1', '0075467148', '083129726378', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(790, 'LAILATUS SHOLIHAH', '1', '0068588939', '085736187281', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(791, 'LALU SOVYAN HADI JHAELANI', '2', '0071203905', '082140700982', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(792, 'LAURENDRA PANJI PRASETYA', '2', '0063832208', '081334600618', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(793, 'MAHARANI BERLIANA', '1', '0071675247', '085732158612', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(794, 'MARIA YEFTANIA', '1', '0068279606', '081574816800', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(795, 'MAULANA HADI PRASETYO', '2', '0074637007', '083851705275', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(796, 'MUHAMMAD NABIL RAMADANI', '2', '0064296111', '085732488001', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(797, 'MUHAMMAD RENO SAPUTRA', '2', '0066666747', '085806684458', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(798, 'NADINO RAJIF PURBAYA', '2', '0078216953', '085736706212', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(799, 'RARA PRADMYA PARAMITA', '1', '0061043178', '081389667727', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(800, 'RENGGA PUTRA PRATAMA', '2', '0072723997', '085850722164', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(801, 'SEKAR WAHYUNI NINGTIYAS', '1', '0073161881', '083834282921', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(802, 'SYAHRUL ZAKKI', '2', '0074466176', '083848418623', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(803, 'TIO ILHAM KURNIAWAN', '2', '0073839888', '083194795812', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(804, 'ANDIKA PRATAMA', '2', '0074910325', '081212740857', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(805, 'ANDINI FELISHA PUTRI', '1', '0066188909', '081559785418', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(806, 'Angel Devina', '1', '0063486556', '082350848903', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(807, 'APRILIA ISMI NANDA RULATIN', '1', '0072618519', '081330379770', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(808, 'Aulia Nabila Verista', '1', '0064339918', '083134757022', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(809, 'BINTANG VEGAR AMIRUL MU\'MININ', '2', '0065998399', '085730734295', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(810, 'CELLYA AGHNI TRI FADILA', '1', '0078218369', '085850664648', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(811, 'CHEVIN BUDI SETIAWAN', '2', '0068721541', '081335438291', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(812, 'DAVANDRA ADITIYA RAMADHAN', '2', '0069411287', '081357030878', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(813, 'DEA ARLUFI DWI AGUSTINA', '1', '0063394705', '087810914339', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(814, 'ENRICO FHADILATUL FIRMANDA', '2', '0052530354', '083850163867', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(815, 'FARHAN CANDRA LESMANA', '2', '0139059806', '085607286167', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(816, 'FERDIANSYAH', '2', '0057731051', '082132406705', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(817, 'FIAN WAHYU RAMADHAN', '2', '0066308407', '085730107971', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(818, 'GEYRENNO MOZZA DE-SILVA', '2', '0079139885', '085859062448', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(819, 'HEPINA MAHESA GUMILANG', '2', '0062919285', '082332091769', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(820, 'Hestiani Rahma Wati', '1', '0061625371', '083119570414', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(821, 'IBRA RAKA ABZAR ARADHEA', '2', '0062811158', '085706534127', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(822, 'INTAN PUTRIANTI ', '1', '0073783884', '085749072924', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(823, 'MARCEL RAFI ALINSKY', '2', '0079308816', '081282932209', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(824, 'MARETA SAFINA SANI', '1', '0077474546', '081334173985', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(825, 'MOCHAMMAD NADIL RADIFAN', '2', '0072202257', '085855757958', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(826, 'MOHAMAD SHOLEH', '2', '0076210248', '087885311356', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(827, 'MUHAMMAD ZICO BINTANG VANSEGA', '2', '0074419396', '0895602268933', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(828, 'NAXGATA VENNYA FARMA', '1', '0068885692', '081216306225', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(829, 'Oky Pasha Zuliantoro', '2', '0064890672', '085735317187', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(830, 'Regyna Ami Rachim', '1', '0072633712', '085648935417', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(831, 'SALWA SALSABILA', '1', '0067331833', '085813270283', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(832, 'SILVANDRI VICTORIANSYAH', '1', '0077942585', '085784891478', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(833, 'SYIFA RIZMA DWI CAHYANI', '1', '0135654264', '085655525703', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(834, 'WULAN ARUM CAHYANINGSIH', '1', '0071140584', '085895047308', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(835, 'ADRIAN FAREL DWI PRASETYA', '2', '0074976781', '081334675803', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(836, 'AISYAH FITRIANA PUTRI SASMITA', '1', '0063403817', '085759127488', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(837, 'ARTASARI', '1', '0062451161', '081216297488', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(838, 'BAHROINI', '2', '0068619581', '085649454113', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(839, 'BRIANNANDA CLEARESTA MAULANA RAFI', '2', '0072257637', '085655863690', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(840, 'CHUN CHUN YHOHANNA', '1', '0071641299', '085745635935', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(841, 'DIRGA BIMANTARA', '2', '0073104531', '085718693116', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(842, 'DWI FAUZI SUBAGIO', '2', '0075402535', '085708146038', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(843, 'EKA JENNY NOERLITA SARI', '1', '0067460231', '081532791325', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(844, 'ENGGAN SAKTI DWI RUSMANA', '2', '0069563044', '085807258060', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(845, 'FATHAN AZIZ', '2', '0068816813', '085726247919', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(846, 'FEBY AULIANA PUTRI', '1', '0071729277', '08575543449', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(847, 'Fifian Rahma Failila', '1', '0063508832', '085806208858', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(848, 'Ikhsan Khoirul Huda', '2', '0073848823', '085832141910', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(849, 'Indah Meisyaroh', '1', '0069687053', '082141137838', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(850, 'JEFRI AL GHONI', '2', '0068609659', '085850722199', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(851, 'Lia Dwi Ariska', '1', '0064613398', '082332328339', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(852, 'MEILINDA DAMAYANTI', '1', '0072861922', '085755434491', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(853, 'MUHAMMAD DWI ANGGA REZA', '2', '0058766382', '0085852049879', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(854, 'Muhammad Zainul Roziqin', '2', '0062507858', '082333148969', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(855, 'NICKY SENDI YUKI PRATAMA', '2', '0064799965', '085641618061', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(856, 'RENDI MUSTOFA', '2', '0068365258', '085784420431', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(857, 'RIPIN AGUS MIANTO', '2', '0053227317', '082139703409', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(858, 'SAFA PUTERA ROBBANI', '2', '0078004777', '0857849718014', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(859, 'SALWA DIANA TOFANI', '1', '0063270339', '085808331425', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(860, 'Sayyidah Faizatul Amiroh', '1', '0076923570', '081359127962', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(861, 'Shava Firdausi Nuzulla', '1', '0069930308', '082334929425', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(862, 'TIARA RAHMALIA WIJAYA', '1', '0072974231', '083135081544', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(863, 'VERA EKA NOFIANA', '1', '0072484196', '081615510262', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(864, 'Wahyu Widodo', '2', '0061320068', '0812257409898', '3', '1', '2022-03-18 19:34:44', '2022-03-18 19:34:44', NULL, NULL),
(865, 'Yefta Dwi Saputra', '2', '0062663179', '082336481556', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(866, 'ZHIENDY AULIA SARI', '1', '0068772402', '085649262436', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(867, 'Aletta Nakaysha Wahyu Elyananda', '1', '0073247489', '081559660605', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(868, 'ALI CAHYONO PUTRA', '2', '0078233091', '081335769772', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(869, 'ARDAN ARDANA RAHMADHAN', '2', '0069293391', '083851997728', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(870, 'ARDHINA MASYARIL AZIZUN', '1', '0077506688', '085755117805', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(871, 'Arinda Ayu Pratiwi', '1', '0064546744', '081515715227', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(872, 'BINTANG WEKAPANCA DUTAPRANA APSARA', '2', '0063379670', '085236040994', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(873, 'Cinta Putri Nidia', '1', '0076819008', '085852664573', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(874, 'Daffa Aditya Putra', '2', '0075886196', '087703116805', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(875, 'Dava Rosi Yuda Pratama', '2', '0071691062', '082141137831', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(876, 'DEAJENG ADI DHIMAS', '1', '3076909700', '088996172108', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(877, 'Fizzaria Clara Nurfatwa Susanto', '1', '0067941282', '081529469870', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(878, 'Gaharufa Liwan Putri', '1', '0071416208', '085806158224', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(879, 'GAYUH ALEXANDRA', '2', '0067751241', '081331279880', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(880, 'Hyta Arizoma Ismawan', '2', '0067938938', '081335708506', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(881, 'Istiqomah Niqita Dewi', '1', '0061172450', '085785484782', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(882, 'JAVANDY PUTRA VIMANDO', '2', '0078047761', '085706768162', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(883, 'Lilis Mutiara Sari', '1', '0076878556', '082143441607', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(884, 'LULUK MUSTAFIDA', '1', '0067487918', '085163518293', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(885, 'MARCELLO YUAN FERNANDO', '2', '0075537945', '085755117646', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(886, 'MARETA PUTRI RAHMANITA', '1', '0075255128', '085792729740', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(887, 'Nurul Mustofa', '1', '0069359662', '081233507332', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(888, 'Octavian Danur Wenda', '2', '0061013367', '085708146090', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(889, 'OKTAVIANA AMALIA', '1', '0068749072', '082245571610', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(890, 'RADHITYA MEICKO ARDHONA', '2', '0063725940', '081358284275', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(891, 'RAKA OBTA PRATAMA', '2', '0064572130', '087757250740', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(892, 'RAYA NOVELINA PUTRI ZARA', '1', '0063928983', '081336971296', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(893, 'RENATA AGASI ARDYA PUTRI', '1', '0067422965', '085708258269', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(894, 'RIZKY MAULANA', '2', '0063395809', '082139177123', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(895, 'SAMSUL YULIAMTONO', '2', '0065871681', '085748532786', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(896, 'Satriyo Rambu Anarki', '2', '0068898676', '085748797681', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(897, 'SHELVY RISMAWATI', '1', '0075592429', '082143441590', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(898, 'VICO ALDIANSYAH', '2', '0069974369', '081555717759', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(899, 'Aci Rizky Putri Andoko', '1', '0079613620', '085231256858', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(900, 'Adfarizzi Arga Christosant', '2', '0074927845', '085645870225', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(901, 'ALFIAN YOPY ARDINATA', '2', '0067163108', '088805273724', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(902, 'ALLIKA AYU DWI APRILLIA', '1', '0075365455', '088217732519', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(903, 'ARDANNI PRATAMA PUTRA', '2', '0063325006', '08815095469', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(904, 'ARKA ZIZA RYANTAKA', '2', '0072337506', '081217576432', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(905, 'AULIYA NADA RAHMAN', '2', '0078293085', '0881036160929', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(906, 'AYU FEBRIANTI', '1', '0077875654', '082244147637', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(907, 'Bayu Andra Eka Sasmita', '2', '0066813564', '085607929479', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(908, 'Famela Farera Aprilia Anzani', '1', '0072570896', '085792759275', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(909, 'FINGKI LAILIL AULINA AYU', '1', '0075836089', '085732669187', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(910, 'Geovani Bintang Mudana', '2', '0073816368', '085257655230', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(911, 'Gilang Iqbal Kurniawan', '2', '0072147923', '085731513203', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(912, 'Greenda Agildava', '2', '0075411318', '082142139960', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(913, 'IMASYA AYU AIRLANGGA', '1', '0078841627', '085733120715', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(914, 'KHAYLA PUTRI MAYASARI', '1', '0075491178', '083846947713', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(915, 'LAURA RIZKY TAFIDAH SUSANTA', '1', '0071814102', '085856593604', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(916, 'Mia Ayu Swasty', '1', '0069673767', '083850163796', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(917, 'MITA PUTRI FRANSISKA', '1', '0078995889', '088230888807', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(918, 'Natasya Amelia', '1', '0068963033', '088217351226', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(919, 'Nur Aftria Putri Agustina', '1', '0064502297', '085784959513', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(920, 'Rahma Ayu Oktaviana', '1', '0065739276', '085649454101', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(921, 'Rizal Andi Setyawan', '2', '0051071715', '085732058965', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(922, 'SANDI NUR HIDAYAT', '2', '0075956424', '083129006568', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(923, 'Sazukee Uchihanaroo Ajhuzta', '2', '0074197545', '085645135306', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(924, 'SYAFIRA PUTRI MAULIDIA', '1', '0062196569', '085735980182', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(925, 'TIMOTIUS RAPAELPRIAN', '2', '0076830745', '082143423934', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(926, 'VICTOR PRAYOGA ADITYA PRASETYO', '2', '0068394508', '088803803750', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(927, 'VIRNANDA PUTRI LESTARI', '1', '0078573762', '085733864788', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(928, 'WAHYU BIMA PRATAMA', '2', '0063116007', '081909543849', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(929, 'WANGGA RADICA JENIYAN', '2', '0073205684', '081249914716', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(930, 'Wisnu Nanang Setiawan', '2', '0059441909', '081331632348', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(931, 'Aditya Bayu Pamungkas', '2', '0057204835', '087741697291', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(932, 'AFRILIA MUHIMATUL AZIZA', '1', '0071294345', '082141137839', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(933, 'ALIN WURINDANA', '1', '0067731646', '0081233297905', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(934, 'ANGGA BINTANG SADEWA', '2', '0069539400', '081211348209', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(935, 'ANJELIA LELI SAHARANI', '1', '0067128632', '085704256304', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(936, 'ANNAS MAULANA', '2', '0069426535', '081336614627', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(937, 'AZENG AULIA SARI', '1', '0071883134', '081214988844', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(938, 'Bagas Akbar Nugroho', '2', '0066035682', '085648034382', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(939, 'BAGUS SEPTIAWAN', '2', '0057929505', NULL, '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(940, 'DANY KURNIAWAN', '2', '0076482107', '081359361397', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(941, 'Denis Bintang Triandini', '1', '0062320023', '08557840622', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(942, 'Devi Nur Hidayati', '1', '0138096609', '085745413340', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(943, 'Dewi Ika Sukma Ayu', '1', '0061505101', '085707121616', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(944, 'DHANNA PUTRA', '2', '0077287588', '083850774819', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(945, 'ELSA', '1', '0074240184', '085330871589', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(946, 'ERMANDO LEKSI NUGROHO', '2', '0062277430', '085736456435', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(947, 'FARHAN OKTAVIAN RAMADHAN', '2', '0063749106', '082230597522', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(948, 'FIRMAN ABI KLISTIAWAN', '2', '0066878583', '081359361393', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(949, 'FRANSISKO PUTRA AGATHA', '2', '0059442515', '082132340588', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(950, 'Khikmatun Nurdiana', '1', '0064089912', '085895565398', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(951, 'MOCHAMAD SEPTIAN ANANDA PUTRA RAMADHAN', '2', '0066485413', '082338746003', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(952, 'PASYA RAHMADHANI', '1', '0064579904', '083135095980', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(953, 'RAMADHANI YACINTA RUPI', '1', '0067303103', '085231444245', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(954, 'RANGGA RISKI ARINGGA', '2', '0063602807', '085855802293', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(955, 'Rendra Wisnu Saputra', '2', '0069453364', '085755951109', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(956, 'RIVAN DWI PRASETYO', '2', '0062700966', '082140928835', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(957, 'SELA ARTA GIYA WARDANI', '1', '0069280714', '085232645725', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(958, 'TALITHA ADIRRA KINAYA', '1', '0075749422', '081252656513', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(959, 'TIYO', '2', '0079618576', '083848825513', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(960, 'VERA NURSADEWA', '1', '0058669939', '082170404320', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(961, 'YOLANDA AULIA AGUSTINA', '1', '0073208125', '082142914125', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(962, 'Alfino Fitdani Syah', '2', '0076184954', '085707671489', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(963, 'ALIF NAUFAL DZAKI FADUROHMAN', '2', '3078735161', '085708154819', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(964, 'ANATTA VISKHA DEVITA', '1', '0062489415', '083834641979', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(965, 'ANGGITA SASTI MA\'IRUNA', '1', '0062145661', '082335273326', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(966, 'ARGA BAGUS SUSILO ', '2', '0062621679', '082310236546', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(967, 'Bangkit Jabir Fahdillah', '2', '0069411016', NULL, '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(968, 'FEBRI BAGUS SETIAWAN', '2', '0073953103', '081334718286', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(969, 'GITANIA ADINDA RAMADHANI', '1', '0068957201', '085706549340', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(970, 'LIDIA ARIF', '1', '0065242456', '08884818347', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(971, 'LOIS ALBERT FRANCISKO', '2', '0064348301', '085335431466', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(972, 'M. Alvis Averrous', '2', '0077318281', '085730747659', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(973, 'M. Fardhan Khairunazif Risapta', '2', '0072527047', '085784578676', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(974, 'MAYSHELLA AILEEN ELVINA RUSANDI', '1', '0078413512', '081217839876', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(975, 'MUHAMMAD HERBED ALFITO', '2', '0061982952', '082353311134', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(976, 'NAJWA ALYA TSABITA', '1', '0071867718', '085784493642', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(977, 'NANU RAMADHANI', '2', '0077305235', '085792759320', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(978, 'NEINA NEHADZ LOUISSA', '1', '0072123968', '083830264066', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(979, 'Nuraini Melinda', '1', '0066422777', '088217835701', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(980, 'Raditya Ramadhani', '2', '0051046889', '085771016382', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(981, 'RAHMAT CANDRA LUTFIANSYAH', '2', '0077141154', '083834811328', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(982, 'RIFA NOVIANTO', '2', '3061668611', '083166519204', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(983, 'SILVIA PUTRI NABILA', '1', '3076571356', '081252292174', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(984, 'Sri Rahayu Ning Tyas', '1', '0068357796', '082244640759', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(985, 'ZORA KIRANA YESSHA CHERIL', '1', '0078823756', '08573500029', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(986, 'ZULMAIZAMA LATHIFA RAHMA', '1', '0062438041', '081319856124', '3', '1', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL),
(987, NULL, '1', NULL, NULL, '3', '2', '2022-03-18 19:34:45', '2022-03-18 19:34:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahunakademiks`
--

CREATE TABLE `tahunakademiks` (
  `id` bigint(20) NOT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL,
  `sekolah` varchar(255) DEFAULT NULL,
  `status` enum('1','2') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tahunakademiks`
--

INSERT INTO `tahunakademiks` (`id`, `tahun_akademik`, `sekolah`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2019/2020', '3', '1', '2022-02-24 00:37:00', '2022-03-18 21:30:58', NULL),
(2, '2021/2022', '3', '1', '2022-03-18 21:34:25', '2022-03-18 21:34:25', NULL),
(3, '2022/2023', '3', '1', '2022-03-24 23:05:36', '2022-03-24 23:05:36', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-02-16 00:08:58', '2022-02-16 00:08:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-02-16 00:08:58', '2022-02-16 00:08:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sekolah` int(11) DEFAULT NULL,
  `tahunakademik` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `sekolah`, `tahunakademik`, `semester`) VALUES
(1, 1, 'Super Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$qMFw3RIkgHlkcP6fS8tvBui/uA7Bf9gif/dLyho70X5oeVQmu2lUm', 'bcsDtoJomLr4nLgki9TrSSQKOPAJjiqeNNH5eVSEruz7mgWV8ooCAs8Dqwjm', '{\"locale\":\"en\"}', '2022-02-16 00:08:57', '2023-10-31 06:18:04', 3, 1, 1),
(2, 2, 'Admin Sekolah', 'sekolah123@gmail.com', 'users/default.png', NULL, '$2y$10$KmNM4Y3fpfQmf1qvwI1oXOiluDeyoZenYPHdCagDtmoBnksJDVgvm', NULL, '{\"locale\":\"en\"}', '2022-02-24 00:54:11', '2022-03-18 10:54:42', 3, 1, 1),
(3, 3, 'Guru BK', 'gurubk123@gmail.com', 'users/default.png', NULL, '$2y$10$.pniWbhu6y9sD22aI/WSK.CY9pRWvlwB3Y5soeOd5bUJznAdCywTG', NULL, '{\"locale\":\"en\",\"0\":\"locale\",\"sekolah\":\"en\"}', '2022-02-24 00:55:12', '2022-03-18 09:52:10', 1, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2),
(3, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bimbings`
--
ALTER TABLE `bimbings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku_tamus`
--
ALTER TABLE `buku_tamus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `catatan_perilakus`
--
ALTER TABLE `catatan_perilakus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indeks untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indeks untuk tabel `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `home_visites`
--
ALTER TABLE `home_visites`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kehadirans`
--
ALTER TABLE `kehadirans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelassiswas`
--
ALTER TABLE `kelassiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `konferensi_kasus`
--
ALTER TABLE `konferensi_kasus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indeks untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indeks untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `prestasis`
--
ALTER TABLE `prestasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ptks`
--
ALTER TABLE `ptks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `referals`
--
ALTER TABLE `referals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekams`
--
ALTER TABLE `rekams`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indeks untuk tabel `sekolahs`
--
ALTER TABLE `sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indeks untuk tabel `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nisn` (`nisn`);

--
-- Indeks untuk tabel `tahunakademiks`
--
ALTER TABLE `tahunakademiks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bimbings`
--
ALTER TABLE `bimbings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `buku_tamus`
--
ALTER TABLE `buku_tamus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `catatan_perilakus`
--
ALTER TABLE `catatan_perilakus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT untuk tabel `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_visites`
--
ALTER TABLE `home_visites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kehadirans`
--
ALTER TABLE `kehadirans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `kelassiswas`
--
ALTER TABLE `kelassiswas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT untuk tabel `konferensi_kasus`
--
ALTER TABLE `konferensi_kasus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538976289;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `prestasis`
--
ALTER TABLE `prestasis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ptks`
--
ALTER TABLE `ptks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `referals`
--
ALTER TABLE `referals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `sekolahs`
--
ALTER TABLE `sekolahs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `semesters`
--
ALTER TABLE `semesters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

--
-- AUTO_INCREMENT untuk tabel `tahunakademiks`
--
ALTER TABLE `tahunakademiks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ketidakleluasaan untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
