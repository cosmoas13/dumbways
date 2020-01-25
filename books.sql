-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2020 pada 13.10
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_book`
--

CREATE TABLE `table_book` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_book`
--

INSERT INTO `table_book` (`id`, `nama`, `category_id`, `writer_id`, `year`, `img`) VALUES
(101, 'Membuat Aplikasi Android untuk Pemula', 201, 301, 2020, 'dicoding.png'),
(102, 'Lucid Dream', 202, 302, 2015, 'lucid.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_category`
--

CREATE TABLE `table_category` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_category`
--

INSERT INTO `table_category` (`id`, `nama`) VALUES
(201, 'Pemrograman'),
(202, 'Novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_writer`
--

CREATE TABLE `table_writer` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_writer`
--

INSERT INTO `table_writer` (`id`, `nama`) VALUES
(301, 'Dicoding'),
(302, 'Goodreads');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `table_book`
--
ALTER TABLE `table_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`),
  ADD UNIQUE KEY `writer_id` (`writer_id`);

--
-- Indeks untuk tabel `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_writer`
--
ALTER TABLE `table_writer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `table_book`
--
ALTER TABLE `table_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `table_category`
--
ALTER TABLE `table_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT untuk tabel `table_writer`
--
ALTER TABLE `table_writer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_category`
--
ALTER TABLE `table_category`
  ADD CONSTRAINT `table_category_ibfk_1` FOREIGN KEY (`id`) REFERENCES `table_book` (`category_id`);

--
-- Ketidakleluasaan untuk tabel `table_writer`
--
ALTER TABLE `table_writer`
  ADD CONSTRAINT `table_writer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `table_book` (`writer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
