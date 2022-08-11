-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Agu 2022 pada 16.36
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdmo_apk`
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
-- Struktur dari tabel `internets`
--

CREATE TABLE `internets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `listriks`
--

CREATE TABLE `listriks` (
  `idDataListrik` bigint(20) UNSIGNED NOT NULL,
  `nomor_pegawai` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_kontrol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagihan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biaya_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian_FG` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `listriks`
--

INSERT INTO `listriks` (`idDataListrik`, `nomor_pegawai`, `nama`, `alamat`, `nomor_kontrol`, `tagihan`, `biaya_admin`, `pemakaian_FG`, `pemakaian`, `plafon`, `beban_pegawai`, `beban_perusahaan`, `keterangan`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '1', 'lunas', '1', '1', '1', '1', '1000000', '1', 'lunas', '2022-08-10', NULL, NULL),
(2, '1', '1', '1', '1', 'lunas', '1', '1', '1', '1', '1000000', '1', 'lunas', '2022-08-10', '2022-08-10 08:01:09', '2022-08-10 08:01:09'),
(3, '1', '1', '1', '1', 'lunas', '1', '1', '1', '1', '1000000', '1', 'lunas', '2022-08-10', '2022-08-10 08:03:54', '2022-08-10 08:03:54');

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
(5, '2022_07_30_124414_create_pams_table', 1),
(6, '2022_07_30_124604_create_listriks_table', 1),
(7, '2022_07_30_124646_create_pulsas_table', 1),
(8, '2022_07_30_124810_create_internets_table', 1),
(19, '2014_10_12_000000_create_users_table', 2),
(20, '2014_10_12_100000_create_password_resets_table', 2),
(21, '2019_08_19_000000_create_failed_jobs_table', 2),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(23, '2022_07_30_124832_create_tvkabels_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pams`
--

CREATE TABLE `pams` (
  `idDataPam` bigint(20) UNSIGNED NOT NULL,
  `nomor_pegawai` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_rekening` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pams`
--

INSERT INTO `pams` (`idDataPam`, `nomor_pegawai`, `nama`, `alamat`, `nomor_rekening`, `pemakaian`, `plafon`, `beban_perusahaan`, `keterangan`, `tanggal`, `created_at`, `updated_at`) VALUES
(2, '1', 'didin', 'jalan suka cita ', '123', '5 bulan', 'PDAM', '10000000', 'lunas', '2022-08-08', '2022-08-09 18:59:09', '2022-08-09 18:59:09'),
(3, '11', 'didin', 'jalan suka cita ', '124', '6 bulan', 'PDAM', '10000001', 'lunas', '2022-08-09', '2022-08-09 18:59:09', '2022-08-09 18:59:09');

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
-- Struktur dari tabel `pulsas`
--

CREATE TABLE `pulsas` (
  `idDataPulsa` bigint(20) UNSIGNED NOT NULL,
  `nomor_pegawai` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roaming_ln` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagihan` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pulsas`
--

INSERT INTO `pulsas` (`idDataPulsa`, `nomor_pegawai`, `nama`, `nomor_hp`, `pemakaian`, `plafon`, `roaming_ln`, `beban_pegawai`, `beban_perusahaan`, `tagihan`, `tanggal`, `created_at`, `updated_at`) VALUES
(3, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-07 20:53:31', '2022-08-07 20:53:31'),
(4, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-07 20:53:31', '2022-08-07 20:53:31'),
(5, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-07 20:59:50', '2022-08-07 20:59:50'),
(6, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-07 20:59:50', '2022-08-07 20:59:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pulsa_keuangan`
--

CREATE TABLE `pulsa_keuangan` (
  `idDataPulsa` bigint(20) UNSIGNED NOT NULL,
  `nomor_pegawai` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roaming_ln` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagihan` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pulsa_keuangan`
--

INSERT INTO `pulsa_keuangan` (`idDataPulsa`, `nomor_pegawai`, `nama`, `nomor_hp`, `pemakaian`, `plafon`, `roaming_ln`, `beban_pegawai`, `beban_perusahaan`, `tagihan`, `tanggal`, `created_at`, `updated_at`) VALUES
(2, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-08 19:02:39', '2022-08-08 19:02:39'),
(3, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-08 19:02:39', '2022-08-08 19:02:39'),
(4, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-08 19:02:39', '2022-08-08 19:02:39'),
(5, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-08 19:02:39', '2022-08-08 19:02:39'),
(6, '1', 'udin', '123456789101112', '5 bulan', 'Mentari ', '123', '20000000', '50000000', 'lunas', '2022-08-08', '2022-08-08 19:02:39', '2022-08-08 19:02:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tvkabels`
--

CREATE TABLE `tvkabels` (
  `idDataTvKabel` bigint(20) UNSIGNED NOT NULL,
  `nomor_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_tv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pemakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roaming_ln` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beban_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagihan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tvkabels`
--

INSERT INTO `tvkabels` (`idDataTvKabel`, `nomor_pegawai`, `nama`, `nomor_hp`, `jenis_tv`, `pemakaian`, `plafon`, `roaming_ln`, `beban_pegawai`, `beban_perusahaan`, `tagihan`, `tanggal`, `created_at`, `updated_at`) VALUES
(2, '123', 'dono', '12345678910', 'Samsung', '5 Bulan', 'indihome', '123', '120000', '200000', 'lunas', '2022-08-08', '2022-08-07 19:36:41', '2022-08-07 19:36:41'),
(3, '12345678910', 'Budi ', '123456789101113', 'Samsung Tv', '6 bulan', 'Indihome', '45678910111213', '1000000', '2000000', '2500000', '2022-08-04', '2022-08-07 19:36:29', '2022-08-07 19:36:29');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indeks untuk tabel `internets`
--
ALTER TABLE `internets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `listriks`
--
ALTER TABLE `listriks`
  ADD PRIMARY KEY (`idDataListrik`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pams`
--
ALTER TABLE `pams`
  ADD PRIMARY KEY (`idDataPam`);

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
-- Indeks untuk tabel `pulsas`
--
ALTER TABLE `pulsas`
  ADD PRIMARY KEY (`idDataPulsa`);

--
-- Indeks untuk tabel `pulsa_keuangan`
--
ALTER TABLE `pulsa_keuangan`
  ADD PRIMARY KEY (`idDataPulsa`);

--
-- Indeks untuk tabel `tvkabels`
--
ALTER TABLE `tvkabels`
  ADD PRIMARY KEY (`idDataTvKabel`);

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
-- AUTO_INCREMENT untuk tabel `internets`
--
ALTER TABLE `internets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `listriks`
--
ALTER TABLE `listriks`
  MODIFY `idDataListrik` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `pams`
--
ALTER TABLE `pams`
  MODIFY `idDataPam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pulsas`
--
ALTER TABLE `pulsas`
  MODIFY `idDataPulsa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tvkabels`
--
ALTER TABLE `tvkabels`
  MODIFY `idDataTvKabel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
