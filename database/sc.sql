-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 15 Bulan Mei 2020 pada 04.42
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `service_ceria`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_bank`
--

CREATE TABLE `shop_bank` (
  `id_bank` int(11) NOT NULL,
  `name_bank` varchar(100) NOT NULL,
  `logo_bank` varchar(40) NOT NULL,
  `state_bank` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_bank`
--

INSERT INTO `shop_bank` (`id_bank`, `name_bank`, `logo_bank`, `state_bank`) VALUES
(1, 'Bank BCA', 'bca.png', 1),
(2, 'Bank BRI', 'bri.png', 1),
(3, 'Bank BNI', 'bni.png', 1),
(4, 'Bank Mandiri', 'mandiri.jpg', 1),
(5, 'Bank Mega', 'mega.png', 0),
(6, 'Bank Jatim', 'jatim.png', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_category`
--

CREATE TABLE `shop_category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_category`
--

INSERT INTO `shop_category` (`id_category`, `category`, `state`) VALUES
(8, 'Elektronik', 1),
(1, 'Komponen', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_image_product`
--

CREATE TABLE `shop_image_product` (
  `id_image_product` int(11) NOT NULL,
  `id_product` int(11) NOT NULL DEFAULT 0,
  `image` varchar(100) NOT NULL DEFAULT '0',
  `token` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_image_product`
--

INSERT INTO `shop_image_product` (`id_image_product`, `id_product`, `image`, `token`) VALUES
(2, 61, 'Pendukung2020-05-12-14-41-22.png', '0.5720537655939857');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_options`
--

CREATE TABLE `shop_options` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_provinsi` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `id_kab` int(11) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_options`
--

INSERT INTO `shop_options` (`id`, `id_provinsi`, `id_kab`, `state`) VALUES
(1, 11, 80, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_page`
--

CREATE TABLE `shop_page` (
  `how_to_buy` text NOT NULL,
  `about_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_page`
--

INSERT INTO `shop_page` (`how_to_buy`, `about_us`) VALUES
('<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Toko Online</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Pelanggan adapat memesan Jasa sevice sesuai dengan jenis kerusakan, Pekerja yang kami ajak kerjasama di jamin telah mempuni dengan kriteria yang suah tercantum,, Kami Juga menjual KOmponen serta elektronik perabotan rumah tangga, Pelanggan dapat melakukan pembelian dengan cara memilih produk lalu menambahkan kekeranjang. Setelah selesai pelanggan dapat melakukan pemesanan dengan cara memasukkan biodata diri pelanggan serta memilih kurir dan metode apa yang digunakan. Setelah selesai, pelanggan dapat melakukan pemesanan dengan klik tombol lakukan pemesanan. Setelah itu pelanggan akan mendapatkan kode pembelian anda melalui konfirmasi email. Anda dapat memantau pesanan anda di menu<strong> Cek Pesanan</strong>. Halaman ini juga digunakan untuk upload bukti transaksi yang dilakukan pelanggan (Bila melakukan pembayaran dari bank). Bila bukti transaksi bank telah benar maka pihak toko akan segera mengirim pesanan anda, anda dapat melihatnya melalui menu<strong> Cek Pesanan</strong>, setelah barang sampai pelanggan harus melakukan konfirmasi barang yang pihak toko kirim sudah sampai. Silahkan berbelanja.....</span></span></p>\r\n\r\n<h3 style=\"text-align: center;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\"><strong>Beli Lewat Kontak Tersedia</strong></span></span></h3>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"line-height:2;\">Selain menggunakan toko online kami juga melayani pembelian melewati kontak. Pelanggan perlu menyebutkan produk apa saja yang mau di beli, keterngannya apa, jumlah berapa, pembayarannya lewat apa. Dan setelah pelanggan selesai. Pelanggan harus melakukan konfirmasi bukti transfer melalui kontak kami. Bila sudah fix maka pihak toko akan segera mengirim pesanan pelanggan. Namun segala &nbsp;transaksi ini tidak bisa pelanggan cek dari toko online kami. Karena toko online hanya khusus untuk pelanggan dengan cara pembelian ke toko online kami. Berbelanja yuk</span></span><span style=\"font-family: arial, helvetica, sans-serif;\">.....</span></p>\r\n', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_payment`
--

CREATE TABLE `shop_payment` (
  `id_payment` int(11) NOT NULL,
  `id_bank` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_payment`
--

INSERT INTO `shop_payment` (`id_payment`, `id_bank`, `number`, `name`, `state`) VALUES
(1, 1, '11002299', 'DHUTA PAMUNGKAS', 0),
(2, 2, '33774466', 'ACMAD MUZAKHI', 0),
(3, 3, '22993366', 'RIAN BTK', 0),
(4, 4, '55229966', 'AGUS SALIM H', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_product`
--

CREATE TABLE `shop_product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(50) NOT NULL,
  `information_product` text NOT NULL,
  `price_product` int(11) NOT NULL,
  `discount_product` int(11) NOT NULL,
  `weight_product` int(11) NOT NULL,
  `category_product` int(11) NOT NULL,
  `stock_product` int(11) NOT NULL,
  `image_product` varchar(50) NOT NULL,
  `slug_product` text NOT NULL,
  `state_product` int(1) NOT NULL,
  `state_discount` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_product`
--

INSERT INTO `shop_product` (`id_product`, `name_product`, `information_product`, `price_product`, `discount_product`, `weight_product`, `category_product`, `stock_product`, `image_product`, `slug_product`, `state_product`, `state_discount`) VALUES
(56, 'Resistor', 'Tahanan listrik yang ada pada sebuah penghantar dilambangkan dengan huruf R , tahanan merupakan komponen yang didesain untuk memiliki besar tahanan tertentu dan disebut pula sebagai resistor.<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\nRumusnya adalah sebagai berikut :<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\nR = V/I<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\ndimana :<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\nR = Tahanan dengan satuan Ohm<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\nV = Tegangan dengan satuan Volt<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\nI = Arus dengan satuan Ampere<br /><br /><br /><br /><br />\r\n<br /><br /><br /><br /><br />\r\nBeberapa kategori resistor adalah resistor linear dan resistor non linear. Resistor linear adalah resistor yang bekerja sesuai dengan hukum ohm sedangkan Resistor non Linear adalah resistor yang dimana perubahan nilainya dikarenakan oleh kepekaan tertentu (peka cahaya, peka panas, peka tegangan listrik).', 5000, 0, 1, 1, 1000, 'Produk2020-05-12-13-00-39.png', 'resistor', 1, 0),
(57, 'Kapasitor', 'apasitansi C = ( Muatan Q / Tegangan V )', 7000, 0, 1, 1, 500, 'Produk2020-05-12-12-58-32.png', 'kapasitor', 1, 0),
(58, 'Transistor', 'ransistor', 8000, 7500, 3, 1, 200, 'Produk2020-05-12-13-04-46.png', 'transistor', 1, 1),
(59, 'Transformator', '12 v', 25000, 20000, 4, 1, 3424, 'Produk2020-05-12-13-33-58.png', 'transformator', 1, 1),
(60, 'Relay', '42 v tipe 2', 50000, 35000, 6, 1, 50, 'Produk2020-05-12-13-40-14.png', 'relay', 1, 1),
(61, 'Induktor', '12 V', 15000, 10000, 3, 1, 222, 'Produk2020-05-12-14-40-36.png', 'induktor', 1, 1),
(62, 'LED Tv Polytron 24', 'Size (inches) : 24Resolution : 1366 x 768Support Video : 1080pBack Light Unit : LEDMaximum Audio Output : 2 x 10WTOWER Speaker XBR : 2VGA', 1657000, 1450000, 2, 8, 20, 'Produk2020-05-12-14-47-53.png', 'led_tv_polytron_24', 1, 1),
(63, 'Samsung 32 Inch Canada', 'Samsung UHD, Real 4K UHD Resolution. See more details. 4K, HDR, Smart TV, NU7090 Series 7', 4500000, 3200000, 3, 8, 10, 'Produk2020-05-12-14-51-14.png', 'samsung_32_inch_canada', 1, 1),
(64, 'LG TV 65 INCH', 'Ukuran: 65 inch, Nano Cell Display,Resolusi: 3840 x 2160 (4K Ultra HD), ?7 Gen 2 Intelligent Processor,True Color Accuracy Pro, LG ThinQ AI,Smart TV,', 5000000, 4500000, 20, 8, 5, 'Produk2020-05-12-16-31-16.png', 'lg_tv_65_inch', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_session`
--

CREATE TABLE `shop_session` (
  `id` varchar(200) DEFAULT NULL,
  `ip_address` varchar(18) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `timestamp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_session`
--

INSERT INTO `shop_session` (`id`, `ip_address`, `data`, `timestamp`) VALUES
('2eb835deb983097183ac078ecbe131b215305382', '::1', '__ci_last_regenerate|i:1589262250;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589262250'),
('2400d74b8bba6146f1c65768b0de35d2de4a9ec4', '::1', '__ci_last_regenerate|i:1589262557;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589262557'),
('03d39364758cb56563b7bcc4351694eca2a382db', '::1', '__ci_last_regenerate|i:1589262995;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589262995'),
('d0c8e3ebb5e5684ba4592618c6e9b2a7d01e5cb2', '::1', '__ci_last_regenerate|i:1589263486;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589263486'),
('fe627188786fc0e2c84afd168a19a4c060136878', '::1', '__ci_last_regenerate|i:1589263803;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589263803'),
('4b931337271ec0d4efc57c6007e0bc841497e2dc', '::1', '__ci_last_regenerate|i:1589264222;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589264222'),
('e66696b5bf1abc445e3433df3cce9e3b0cb6ec7e', '::1', '__ci_last_regenerate|i:1589264523;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589264523'),
('09ec94c973069ee76c8e10a219a498fb1108e73e', '::1', '__ci_last_regenerate|i:1589264912;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589264912'),
('a3955cc7dd1dd44e9eeb8fb23271eea8c3cbe8c9', '::1', '__ci_last_regenerate|i:1589265238;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589265238'),
('7f8548a4b73d1f67ed4ddd810d4032a442c320c2', '::1', '__ci_last_regenerate|i:1589265541;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589265541'),
('2f0cfd0f6dd977b49bb7da151abfe01bc62690de', '::1', '__ci_last_regenerate|i:1589265948;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589265948'),
('71d1b34ca5e78c3d1705142665fc1c240cc2ec47', '::1', '__ci_last_regenerate|i:1589266511;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589266511'),
('4d79a2d3bafc107fa783fe0a061b5f8df3b734ba', '::1', '__ci_last_regenerate|i:1589269129;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589269129'),
('16720f882f79e2999294528fa2cfccec3a044446', '::1', '__ci_last_regenerate|i:1589269430;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589269430'),
('b0a49e3fdeefcbb7562f44db490f34da2c53aa24', '::1', '__ci_last_regenerate|i:1589269740;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589269740'),
('3f5cb71712aa558cc58c14e889afd4b89dd22138', '::1', '__ci_last_regenerate|i:1589270155;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589270155'),
('ff96a5be0b000151858d39428c90e40bda5f2454', '::1', '__ci_last_regenerate|i:1589275713;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589275713'),
('f49121bef0881a6f22f27e5155101a8978e8fa35', '::1', '__ci_last_regenerate|i:1589276201;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589276201'),
('558208c1dedb88c17302f62512b6c16e92f966a7', '::1', '__ci_last_regenerate|i:1589276840;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589276840'),
('665ce823102dff0a29a969bc8deb8ed1eaf214b4', '::1', '__ci_last_regenerate|i:1589278542;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589278542'),
('3f96dc3eee2c01ba2cc08f63ba136e9ddb81be3e', '::1', '__ci_last_regenerate|i:1589278542;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}cart_contents|a:4:{s:10:\"cart_total\";d:33000;s:11:\"total_items\";d:3;s:32:\"4877c60a247ab8a4768e5f35eb03466c\";a:11:{s:2:\"id\";s:14:\"20200512130124\";s:10:\"id_product\";s:2:\"56\";s:3:\"qty\";d:1;s:4:\"slug\";s:8:\"resistor\";s:5:\"price\";d:5000;s:5:\"berat\";i:1;s:4:\"name\";s:8:\"Resistor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-13-00-39.png\";s:5:\"rowid\";s:32:\"4877c60a247ab8a4768e5f35eb03466c\";s:8:\"subtotal\";d:5000;}s:32:\"8f1f2966871b558798423980cdf48fe5\";a:11:{s:2:\"id\";s:14:\"20200512130129\";s:10:\"id_product\";s:2:\"57\";s:3:\"qty\";d:2;s:4:\"slug\";s:9:\"kapasitor\";s:5:\"price\";d:14000;s:5:\"berat\";i:2;s:4:\"name\";s:9:\"Kapasitor\";s:11:\"information\";s:0:\"\";s:7:\"picture\";s:29:\"Produk2020-05-12-12-58-32.png\";s:5:\"rowid\";s:32:\"8f1f2966871b558798423980cdf48fe5\";s:8:\"subtotal\";d:28000;}}', '1589278775'),
('33ea67ee2d887211f71d1e0809511a639269fcd8', '::1', '__ci_last_regenerate|i:1589506945;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589506945'),
('37772b45a37e9ede4dbe7ce536d075a678a84acb', '::1', '__ci_last_regenerate|i:1589507280;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589507280'),
('9d8618ed623c8cf6bea5641b02c7fda30082cefa', '::1', '__ci_last_regenerate|i:1589507588;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589507588'),
('296097973c78198cdec7b448e758c99cdab552e4', '::1', '__ci_last_regenerate|i:1589508071;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589508071'),
('8b8c897e1941a546b9a5762613035d30e7b74379', '::1', '__ci_last_regenerate|i:1589508458;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589508458'),
('62cf2a84f31919087848990715fc353b6167f47b', '::1', '__ci_last_regenerate|i:1589508977;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589508977'),
('0268087af68539a2b8fb4deaac0d9d3fa6dc06eb', '::1', '__ci_last_regenerate|i:1589508977;KCFINDER|a:0:{}myAqua|s:1:\"2\";CIPTASHOP|a:1:{s:8:\"KCFINDER\";a:2:{s:8:\"disabled\";b:0;s:9:\"uploadDir\";s:6:\"upload\";}}', '1589509256');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_setting`
--

CREATE TABLE `shop_setting` (
  `shortname_shop` varchar(20) NOT NULL,
  `longname_shop` varchar(100) NOT NULL,
  `motto_shop` varchar(100) NOT NULL,
  `location_shop` varchar(120) NOT NULL,
  `name_manage` varchar(100) NOT NULL,
  `bbm_contact` varchar(20) NOT NULL,
  `wa_contact` varchar(20) NOT NULL,
  `phone_contact` varchar(20) NOT NULL,
  `email_shop` varchar(30) NOT NULL,
  `propinsi_shop` varchar(20) NOT NULL,
  `kabupaten_shop` varchar(20) NOT NULL,
  `logo_shop` varchar(50) NOT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `google` varchar(300) DEFAULT NULL,
  `instagram` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pos` int(1) DEFAULT NULL,
  `jne` int(1) DEFAULT NULL,
  `tiki` int(1) DEFAULT NULL,
  `gratis_ongkir_wilayah` int(1) DEFAULT NULL,
  `cod_wilayah` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_setting`
--

INSERT INTO `shop_setting` (`shortname_shop`, `longname_shop`, `motto_shop`, `location_shop`, `name_manage`, `bbm_contact`, `wa_contact`, `phone_contact`, `email_shop`, `propinsi_shop`, `kabupaten_shop`, `logo_shop`, `facebook`, `twitter`, `google`, `instagram`, `youtube`, `pos`, `jne`, `tiki`, `gratis_ongkir_wilayah`, `cod_wilayah`) VALUES
('Service Ceria', 'Sistem Informasi Jasa Service Perabotan Rumah Tangga', 'Guyup Rukun, Setiti Lan Ati-Ati', 'Bojonegoro', 'RIAN', '', '', '', 'RianBtk@gmail.com', '11', '80', 'Logo2020-05-12-13-08-20.png', 'https://facebook.com/rian', 'https://twitter.com/drian', '', 'https://instagram.com/rian_p1', '', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_skin`
--

CREATE TABLE `shop_skin` (
  `id_skin` int(3) NOT NULL,
  `skin` varchar(15) NOT NULL,
  `example` varchar(50) NOT NULL,
  `skin_status` int(2) NOT NULL,
  `ket` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_skin`
--

INSERT INTO `shop_skin` (`id_skin`, `skin`, `example`, `skin_status`, `ket`) VALUES
(1, 'style-1', 'bg1.png', 1, 'tema 1'),
(2, 'style-2', 'bg2.png', 0, 'tema 2'),
(3, 'style-3', 'bg3.png', 0, 'tema 3'),
(4, 'style-4', 'bg4.png', 0, 'tema 4'),
(5, 'style-5', 'bg5.png', 0, 'tema 5'),
(6, 'style-6', 'bg6.png', 0, 'tema 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_slider`
--

CREATE TABLE `shop_slider` (
  `id_slider` int(11) NOT NULL,
  `slider` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_testimoni`
--

CREATE TABLE `shop_testimoni` (
  `id_testimony` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `time` datetime DEFAULT current_timestamp(),
  `testimony` text DEFAULT NULL,
  `state` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_testimoni`
--

INSERT INTO `shop_testimoni` (`id_testimony`, `email`, `name`, `time`, `testimony`, `state`) VALUES
(1, 'RianBtk@gmail.com', 'RianBtk', '2020-03-26 16:22:30', 'BTK', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_transaction`
--

CREATE TABLE `shop_transaction` (
  `id_transaction` varchar(100) NOT NULL,
  `no_invoice` varchar(40) NOT NULL,
  `kode_pembelian` varchar(40) NOT NULL,
  `name_customer` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `courier` varchar(5) NOT NULL,
  `packet` varchar(30) DEFAULT NULL,
  `to_customer` varchar(3) DEFAULT NULL,
  `price_ongkir` int(11) NOT NULL,
  `time_transaction` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_transaction` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `payment_transaction` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `state` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_transaction_details`
--

CREATE TABLE `shop_transaction_details` (
  `id_transaction` varchar(100) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_transaction` int(11) NOT NULL,
  `information` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_user`
--

CREATE TABLE `shop_user` (
  `id_user` int(11) NOT NULL,
  `name_user` varchar(100) NOT NULL,
  `username_user` varchar(30) NOT NULL,
  `password_user` text NOT NULL,
  `access_user` int(1) NOT NULL,
  `state_user` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_user`
--

INSERT INTO `shop_user` (`id_user`, `name_user`, `username_user`, `password_user`, `access_user`, `state_user`) VALUES
(2, 'AGUS SALIM HADJRIANTO', 'rian', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1),
(5, 'DUTA PAMUNGKAS', 'pamungkas', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `shop_bank`
--
ALTER TABLE `shop_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indeks untuk tabel `shop_image_product`
--
ALTER TABLE `shop_image_product`
  ADD PRIMARY KEY (`id_image_product`);

--
-- Indeks untuk tabel `shop_options`
--
ALTER TABLE `shop_options`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indeks untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `shop_skin`
--
ALTER TABLE `shop_skin`
  ADD PRIMARY KEY (`id_skin`);

--
-- Indeks untuk tabel `shop_slider`
--
ALTER TABLE `shop_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  ADD PRIMARY KEY (`id_testimony`);

--
-- Indeks untuk tabel `shop_transaction`
--
ALTER TABLE `shop_transaction`
  ADD PRIMARY KEY (`id_transaction`);

--
-- Indeks untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `shop_bank`
--
ALTER TABLE `shop_bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `shop_image_product`
--
ALTER TABLE `shop_image_product`
  MODIFY `id_image_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `shop_options`
--
ALTER TABLE `shop_options`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shop_payment`
--
ALTER TABLE `shop_payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `shop_skin`
--
ALTER TABLE `shop_skin`
  MODIFY `id_skin` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `shop_slider`
--
ALTER TABLE `shop_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `shop_testimoni`
--
ALTER TABLE `shop_testimoni`
  MODIFY `id_testimony` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shop_user`
--
ALTER TABLE `shop_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
