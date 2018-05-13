-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2016 at 08:38 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skyperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `kalimat`
--

CREATE TABLE `kalimat` (
  `id` int(11) NOT NULL auto_increment,
  `kalimat1` text,
  `kalimat2` text,
  `kalimat3` text,
  `kalimat4` text,
  `kalimat5` text,
  `kalimat6` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kalimat`
--

INSERT INTO `kalimat` (`id`, `kalimat1`, `kalimat2`, `kalimat3`, `kalimat4`, `kalimat5`, `kalimat6`) VALUES
(1, 'Kartu ini di gunakan sebagai tanda bahwa mahasiswa/i / pelajar atau perorangan yang tercantum identitasnya telah tervalidasi pada aplikasi perpusline', 'Kartu ini berlaku sejak Tanggal awal di buat sampai dengan satu tahun sejak tanggal dibuat', 'Kartu ini dapat di pergunakan untuk keperluan mahasiswa/i/ pelajar atau perorangan yang bersangkutan', 'Kehilangan/lupa dsb akan mendapat sanksi sesuai dengan ketentuan yang berlaku', 'dilarang menyalahgunakan kartu ini untuk hal yang bertentangan dengan hukum yang berlaku', 'Kartu ini di buat untuk anggota secara gratis tanpa ada biaya');

-- --------------------------------------------------------

--
-- Table structure for table `kbuku`
--

CREATE TABLE `kbuku` (
  `nom` int(11) NOT NULL auto_increment,
  `kodeb` text NOT NULL,
  `jenisb` text NOT NULL,
  PRIMARY KEY  (`nom`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `kbuku`
--

INSERT INTO `kbuku` (`nom`, `kodeb`, `jenisb`) VALUES
(1, 'A001', 'Buku Komik'),
(2, 'A002', 'Buku Sejarah'),
(5, 'A003', 'Majalah'),
(13, 'A000', 'Buku Anak');

-- --------------------------------------------------------

--
-- Table structure for table `loginmi`
--

CREATE TABLE `loginmi` (
  `id` int(11) NOT NULL auto_increment,
  `nama` text NOT NULL,
  `pass` text NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `loginmi`
--

INSERT INTO `loginmi` (`id`, `nama`, `pass`, `photo`) VALUES
(1, 'admin', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', 'IMG_20161023_143930.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL auto_increment,
  `npm` text NOT NULL,
  `nama` text NOT NULL,
  `jurusan` text NOT NULL,
  `tempat_lahir` text NOT NULL,
  `tanggal_lahir` text NOT NULL,
  `alamat` text NOT NULL,
  `photo` varchar(25) default NULL,
  `password` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `npm`, `nama`, `jurusan`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `photo`, `password`) VALUES
(51, '111111111', 'heyhey', 'umum', 'indonesia', '01 February 2016', 'indonesia', 'IMG_20161016_075046.jpg', 'DLse1vj8MIVy6k7'),
(49, '88884534534534', 'owow', 'umum', 'komplek baru', '02 October 2016', 'kampung', 'IMG_20161012_115057.jpg', 'uk2uiSE5GmbR4QB'),
(52, '5434534534', 'oooi', 'dfgsd', 'sdfsdfsdfsd', '01 November 2016', 'sdfsdfsdfsd', 'IMG_20161015_121716.jpg', 'SplpzPOh5ZIEpju'),
(53, '453453453534', 'erterterter', 'fgdgdgdfgd', 'fgdfgrgdfg', '02 November 2016', 'dfgdfgdfgdf', 'IMG_20161015_124524.jpg', 'KBzPmu3P9PejYc5');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `nom` int(11) NOT NULL auto_increment,
  `npm` text NOT NULL,
  `peminjam` text NOT NULL,
  `kodebuku` text NOT NULL,
  `judul` text NOT NULL,
  `pengarang` text NOT NULL,
  `kategori` text NOT NULL,
  `tgl_pinjam` text NOT NULL,
  `tgl_kembali` text NOT NULL,
  `denda` text,
  `status` text,
  PRIMARY KEY  (`nom`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`nom`, `npm`, `peminjam`, `kodebuku`, `judul`, `pengarang`, `kategori`, `tgl_pinjam`, `tgl_kembali`, `denda`, `status`) VALUES
(165, '88884534534534', 'owow', 'A002', 'tuyule mba yul', 'tes', 'Buku Sejarah', '02 February 2016', '05 February 2016', '1000', NULL),
(164, '111111111', 'heyhey', 'A001', 'tuyul e', 'tesz', 'Buku Komik', '15 November 2016', '16 November 2016', '1000', NULL),
(91, '65786867867867', 'juju', 'A001', 'tuyul e', 'tesz', 'Buku Komik', '15 November 2016', '16 November 2016', '200', 'Buku ini di pinjam kembali'),
(162, '67866786', 'nday oy', 'A002', 'tuyule mba yul', 'tes', 'Buku Sejarah', '16 November 2016', '17 November 2016', '500', 'Buku ini di pinjam kembali');

-- --------------------------------------------------------

--
-- Table structure for table `tblbuku`
--

CREATE TABLE `tblbuku` (
  `ids` int(11) NOT NULL auto_increment,
  `judul` text NOT NULL,
  `isbn` text NOT NULL,
  `pengarang` text NOT NULL,
  `tgl_masuk` text NOT NULL,
  `penerbit` text NOT NULL,
  `gambar` text,
  `kelompok` text NOT NULL,
  `kode` text NOT NULL,
  `sedia` text NOT NULL,
  PRIMARY KEY  (`ids`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tblbuku`
--

INSERT INTO `tblbuku` (`ids`, `judul`, `isbn`, `pengarang`, `tgl_masuk`, `penerbit`, `gambar`, `kelompok`, `kode`, `sedia`) VALUES
(10, 'tuyul e', '12345', 'tesz', '02 February 2016', 'tes', 'IMG_20161005_142108.jpg', 'Buku Komik', 'A001', '7'),
(11, 'tuyule mba yul', '123456', 'tes', '06 January 2016', 'tes', 'IMG_20161005_142102.jpg', 'Buku Sejarah', 'A002', '5');
