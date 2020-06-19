-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2020 pada 07.13
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_utsahmad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_album`
--

CREATE TABLE `tb_album` (
  `artist_id` smallint(5) NOT NULL,
  `album_id` smallint(5) NOT NULL,
  `album_name` char(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_album`
--

INSERT INTO `tb_album` (`artist_id`, `album_id`, `album_name`) VALUES
(1, 1, 'Ya Maulana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_artist`
--

CREATE TABLE `tb_artist` (
  `artist_id` smallint(5) NOT NULL,
  `artist_name` char(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_artist`
--

INSERT INTO `tb_artist` (`artist_id`, `artist_name`) VALUES
(1, 'Nissya Sabyan'),
(2, 'Maher Zain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_played`
--

CREATE TABLE `tb_played` (
  `played_id` smallint(3) NOT NULL,
  `artist_id` smallint(5) NOT NULL,
  `album_id` smallint(5) NOT NULL,
  `track_id` smallint(3) NOT NULL,
  `played` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_played`
--

INSERT INTO `tb_played` (`played_id`, `artist_id`, `album_id`, `track_id`, `played`) VALUES
(1, 1, 1, 1, '2020-05-02 17:07:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_track`
--

CREATE TABLE `tb_track` (
  `track_id` smallint(3) NOT NULL,
  `track_name` char(128) DEFAULT NULL,
  `artist_id` smallint(3) NOT NULL,
  `album_id` smallint(5) NOT NULL,
  `waktu` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_track`
--

INSERT INTO `tb_track` (`track_id`, `track_name`, `artist_id`, `album_id`, `waktu`) VALUES
(1, 'Sabyan', 2, 1, '7.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Refhrahmadh', 'refhrahmadh@gmail.com', 'refhrahmadh'),
(4, 'Rahmadh', 'rahmadh@gmail.com', 'rahmad');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_album`
--
ALTER TABLE `tb_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indeks untuk tabel `tb_artist`
--
ALTER TABLE `tb_artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indeks untuk tabel `tb_played`
--
ALTER TABLE `tb_played`
  ADD PRIMARY KEY (`played_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `track_id` (`track_id`);

--
-- Indeks untuk tabel `tb_track`
--
ALTER TABLE `tb_track`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_album`
--
ALTER TABLE `tb_album`
  MODIFY `album_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_artist`
--
ALTER TABLE `tb_artist`
  MODIFY `artist_id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_played`
--
ALTER TABLE `tb_played`
  MODIFY `played_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_track`
--
ALTER TABLE `tb_track`
  MODIFY `track_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_album`
--
ALTER TABLE `tb_album`
  ADD CONSTRAINT `tb_album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `tb_artist` (`artist_id`);

--
-- Ketidakleluasaan untuk tabel `tb_played`
--
ALTER TABLE `tb_played`
  ADD CONSTRAINT `tb_played_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `tb_artist` (`artist_id`),
  ADD CONSTRAINT `tb_played_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `tb_album` (`album_id`),
  ADD CONSTRAINT `tb_played_ibfk_3` FOREIGN KEY (`track_id`) REFERENCES `tb_track` (`track_id`);

--
-- Ketidakleluasaan untuk tabel `tb_track`
--
ALTER TABLE `tb_track`
  ADD CONSTRAINT `tb_track_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `tb_artist` (`artist_id`),
  ADD CONSTRAINT `tb_track_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `tb_album` (`album_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
