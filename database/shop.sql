-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.23-0ubuntu0.18.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table shop.shop_bank
CREATE TABLE IF NOT EXISTS `shop_bank` (
  `id_bank` int(11) NOT NULL AUTO_INCREMENT,
  `name_bank` varchar(100) NOT NULL,
  `logo_bank` varchar(40) NOT NULL,
  `state_bank` int(1) NOT NULL,
  PRIMARY KEY (`id_bank`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_bank: 6 rows
/*!40000 ALTER TABLE `shop_bank` DISABLE KEYS */;
INSERT INTO `shop_bank` (`id_bank`, `name_bank`, `logo_bank`, `state_bank`) VALUES
	(1, 'Bank BCA', 'bca.png', 1),
	(2, 'Bank BRI', 'bri.png', 1),
	(3, 'Bank BNI', 'bni.png', 1),
	(4, 'Bank Mandiri', 'mandiri.jpg', 0),
	(5, 'Bank Mega', 'mega.png', 0),
	(6, 'Bank Jatim', 'jatim.png', 0);
/*!40000 ALTER TABLE `shop_bank` ENABLE KEYS */;

-- Dumping structure for table shop.shop_category
CREATE TABLE IF NOT EXISTS `shop_category` (
  `id_category` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_category: 4 rows
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` (`id_category`, `category`, `state`) VALUES
	(1, 'Android', 1),
	(2, 'Tablet', 1),
	(3, 'Iphone', 1),
	(4, 'Aksesoris', 1);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;

-- Dumping structure for table shop.shop_image_product
CREATE TABLE IF NOT EXISTS `shop_image_product` (
  `id_image_product` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '0',
  `token` text,
  PRIMARY KEY (`id_image_product`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_image_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `shop_image_product` DISABLE KEYS */;
INSERT INTO `shop_image_product` (`id_image_product`, `id_product`, `image`, `token`) VALUES
	(1, 54, 'Pendukung2018-07-29-13-15-53.png', '0.9291584696682413');
/*!40000 ALTER TABLE `shop_image_product` ENABLE KEYS */;

-- Dumping structure for table shop.shop_options
CREATE TABLE IF NOT EXISTS `shop_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(11) unsigned NOT NULL DEFAULT '0',
  `id_kab` int(11) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_options: ~0 rows (approximately)
/*!40000 ALTER TABLE `shop_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_options` ENABLE KEYS */;

-- Dumping structure for table shop.shop_page
CREATE TABLE IF NOT EXISTS `shop_page` (
  `how_to_buy` text NOT NULL,
  `about_us` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_page: 1 rows
/*!40000 ALTER TABLE `shop_page` DISABLE KEYS */;
INSERT INTO `shop_page` (`how_to_buy`, `about_us`) VALUES
	('<h3 style="text-align: center;"><span style="font-family:arial,helvetica,sans-serif;"><span style="line-height:2;"><strong>Beli Lewat Toko Online</strong></span></span></h3>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><span style="line-height:2;">Pelanggan dapat melakukan pembelian dengan cara memilih produk lalu menambahkan kekeranjang. Setelah selesai pelanggan dapat melakukan pemesanan dengan cara memasukkan biodata diri pelanggan serta memilih kurir dan metode apa yang digunakan. Setelah selesai, pelanggan dapat melakukan pemesanan dengan klik tombol lakukan pemesanan. Setelah itu pelanggan akan mendapatkan kode pembelian anda melalui konfirmasi email. Anda dapat memantau pesanan anda di menu<strong> Cek Pesanan</strong>. Halaman ini juga digunakan untuk upload bukti transaksi yang dilakukan pelanggan (Bila melakukan pembayaran dari bank). Bila bukti transaksi bank telah benar maka pihak toko akan segera mengirim pesanan anda, anda dapat melihatnya melalui menu<strong> Cek Pesanan</strong>, setelah barang sampai pelanggan harus melakukan konfirmasi barang yang pihak toko kirim sudah sampai. Silahkan berbelanja.....</span></span></p>\r\n\r\n<h3 style="text-align: center;"><span style="font-family:arial,helvetica,sans-serif;"><span style="line-height:2;"><strong>Beli Lewat Kontak Tersedia</strong></span></span></h3>\r\n\r\n<p style="text-align: justify;"><span style="font-family:arial,helvetica,sans-serif;"><span style="line-height:2;">Selain menggunakan toko online kami juga melayani pembelian melewati kontak. Pelanggan perlu menyebutkan produk apa saja yang mau di beli, keterngannya apa, jumlah berapa, pembayarannya lewat apa. Dan setelah pelanggan selesai. Pelanggan harus melakukan konfirmasi bukti transfer melalui kontak kami. Bila sudah fix maka pihak toko akan segera mengirim pesanan pelanggan. Namun segala &nbsp;transaksi ini tidak bisa pelanggan cek dari toko online kami. Karena toko online hanya khusus untuk pelanggan dengan cara pembelian ke toko online kami. Berbelanja yuk</span></span><span style="font-family: arial, helvetica, sans-serif;">.....</span></p>\r\n', '<p style="box-sizing: border-box; margin: 0rem 0px 20px; padding: 0px; text-align: justify; font-family: Overpass;"><span style="font-family:arial,helvetica,sans-serif;">Salsa Cell adalah retailer ponsel dan tablet di Indonesia yang menyediakan<strong style="box-sizing: border-box; margin: 0px; padding: 0px;">&nbsp;produk-produk handphone pilihan</strong>&nbsp;dari berbagai merek ternama seperti Samsung, Asus, Xiaomi, Lenovo, Oppo.&nbsp;Selain itu Salsa Cell juga menjual berbagai pilihan table dan beberapa iphone.</span></p>\r\n\r\n<p style="box-sizing: border-box; margin: 0rem 0px 20px; padding: 0px; text-align: justify; font-family: Overpass;"><span style="font-family:arial,helvetica,sans-serif;">Salsa Cell akan selalu berusaha memberikan penawaran menarik dan pelayanan terbaik seperti kemudahan pembayaran, fasilitas pengembalian produk, layanan konsumen dan semua produk memiliki garansi resmi.</span></p>\r\n\r\n<p style="box-sizing: border-box; margin: 0rem 0px 20px; padding: 0px; text-align: justify; font-family: Overpass;"><span style="font-family:arial,helvetica,sans-serif;">Mulailah berbelanja gadget hanya di Salsa Cell Kedungadem</span></p>\r\n');
/*!40000 ALTER TABLE `shop_page` ENABLE KEYS */;

-- Dumping structure for table shop.shop_payment
CREATE TABLE IF NOT EXISTS `shop_payment` (
  `id_payment` int(11) NOT NULL AUTO_INCREMENT,
  `id_bank` int(11) NOT NULL,
  `number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_payment: 3 rows
/*!40000 ALTER TABLE `shop_payment` DISABLE KEYS */;
INSERT INTO `shop_payment` (`id_payment`, `id_bank`, `number`, `name`, `state`) VALUES
	(1, 1, '8709870979', 'KUKUH', 1),
	(2, 2, '870879879878', 'KUKUH', 1),
	(3, 3, '879787987', 'KUKUH', 1);
/*!40000 ALTER TABLE `shop_payment` ENABLE KEYS */;

-- Dumping structure for table shop.shop_product
CREATE TABLE IF NOT EXISTS `shop_product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
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
  `state_discount` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_product: 26 rows
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` (`id_product`, `name_product`, `information_product`, `price_product`, `discount_product`, `weight_product`, `category_product`, `stock_product`, `image_product`, `slug_product`, `state_product`, `state_discount`) VALUES
	(29, 'ASUS ZENDFONE GO', 'Layar Diagonal	5" (12.7cm)<br />\r\nMegapixel	8 Megapixel<br />\r\nKapasitas Baterai (mAh)	2070 mAh<br />\r\nNama Prosesor	MT6580<br />\r\nRAM	2 GB,<br />\r\nUkuran	144.5x71x10 mm (5.69 x 2.80 x 0.39 inches)<br />\r\nBerat	135 g (4.8oz)<br />\r\nKekasaran	Tidak Kekasaran<br />\r\nWarna	Hitam, Biru, Merah, White<br />\r\nStatus	Dirilis', 1000000, 0, 1000, 1, 10, 'Produk2018-07-26-21-17-01.png', 'asus_zendfone_go', 1, 0),
	(30, 'ASUS 4 MAX', 'Layar Diagonal	5" (12.7cm)<br />\r\nMegapixel	8 Megapixel<br />\r\nKapasitas Baterai (mAh)	2070 mAh<br />\r\nNama Prosesor	MT6580<br />\r\nRAM	2 GB,<br />\r\nUkuran	144.5x71x10 mm (5.69 x 2.80 x 0.39 inches)<br />\r\nBerat	135 g (4.8oz)<br />\r\nKekasaran	Tidak Kekasaran<br />\r\nWarna	Hitam, Biru, Merah, White<br />\r\nStatus	Dirilis', 1200000, 0, 1000, 1, 10, 'Produk2018-07-26-21-22-27.png', 'asus_4_max', 1, 0),
	(31, 'LENOVO A1000', 'jaringan	jaringan 2G	GSM 850 / 900 / 1800 / 1900<br />\r\njaringan 3G	HSDPA 900 / 2100<br />\r\nsim card	Dual SIM – MINI sim<br />\r\nbody	ukuran dimensi	137 x 69 x 9.9 mm<br />\r\nberat	158 gram<br />\r\nType lcd	IPS LCD capacitive touchscreen, 16M colors<br />\r\nUkuran layar	720 x 1280 pixel pixel , 4,7 inci ( ~312 ppi pixel density)<br />\r\nmultitouch screen	ya<br />\r\nProteksi layar	AGC Dragontrail glass', 900000, 799000, 1000, 1, 9, 'Produk2018-07-26-21-23-55.png', 'lenovo_a1000', 1, 1),
	(32, 'LENOVO A6010', 'jaringan	jaringan 2G	GSM 850 / 900 / 1800 / 1900<br />\r\njaringan 3G	HSDPA 900 / 2100<br />\r\nsim card	Dual SIM – MINI sim<br />\r\nbody	ukuran dimensi	137 x 69 x 9.9 mm<br />\r\nberat	158 gram<br />\r\nType lcd	IPS LCD capacitive touchscreen, 16M colors<br />\r\nUkuran layar	720 x 1280 pixel pixel , 4,7 inci ( ~312 ppi pixel density)<br />\r\nmultitouch screen	ya<br />\r\nProteksi layar	AGC Dragontrail glass', 1770000, 0, 1000, 1, 10, 'Produk2018-07-26-21-26-34.png', 'lenovo_a6010', 1, 0),
	(33, 'LENOVO A7000 PLUS', 'Desain simpel dan mewah<br />\r\nUkuran layar besar 4.7 inci di lengkapi proteksi layar AGC Dragontrail glass ,( AGC Dragontrail glass teknologi terbaru dan memiliki kualitas terbaik )<br />\r\nFitur MIUI 5.0<br />\r\nKapasitas internal sudah 8 GB dengan ram 1 gb<br />\r\nUSB On-the-go<br />\r\nProsesor Quad-core 1.6 GHz Cortex-A7<br />\r\nKamera utama 8 MP sudah bisa menghasilkan kualitas video full hd 1080p', 2329000, 0, 1000, 1, 10, 'Produk2018-07-26-21-27-26.png', 'lenovo_a7000_plus', 1, 0),
	(34, 'LENOVO K4 NOTE (A7010)/ VIBE X', 'Sim Card : Dual Sim<br />\r\nInternet : HSPA 42.2/5.76 Mbps, LTE Cat4 150/50 Mbps<br />\r\nGPS : A-GPS<br />\r\nBluetooth : v4.0, A2DP, EDR, LE<br />\r\nWifi : Wi-Fi 802.11 a/b/g/n/ac, Wi-Fi Direct, hotspot<br />\r\nUSB : microUSB v2.0<br />\r\nNFC', 2275000, 0, 1000, 1, 10, 'Produk2018-07-26-21-29-47.png', 'lenovo_k4_note__a7010___vibe_x', 1, 0),
	(35, 'XIAOMI REDMI NOTE 3 3/32', 'Desain simpel dan mewah<br />\r\nUkuran layar besar 4.7 inci di lengkapi proteksi layar AGC Dragontrail glass ,( AGC Dragontrail glass teknologi terbaru dan memiliki kualitas terbaik )<br />\r\nFitur MIUI 5.0<br />\r\nKapasitas internal sudah 8 GB dengan ram 1 gb<br />\r\nUSB On-the-go<br />\r\nProsesor Quad-core 1.6 GHz Cortex-A7<br />\r\nKamera utama 8 MP sudah bisa menghasilkan kualitas video full hd 1080p', 2725000, 0, 1000, 1, 10, 'Produk2018-07-26-21-31-37.png', 'xiaomi_redmi_note_3_3_32', 1, 0),
	(36, 'XIAOMI REDMI 1S 1/8', 'Desain simpel dan mewah<br />\r\nUkuran layar besar 4.7 inci di lengkapi proteksi layar AGC Dragontrail glass ,( AGC Dragontrail glass teknologi terbaru dan memiliki kualitas terbaik )<br />\r\nFitur MIUI 5.0<br />\r\nKapasitas internal sudah 8 GB dengan ram 1 gb<br />\r\nUSB On-the-go<br />\r\nProsesor Quad-core 1.6 GHz Cortex-A7<br />\r\nKamera utama 8 MP sudah bisa menghasilkan kualitas video full hd 1080p', 1125000, 0, 1000, 1, 12, 'Produk2018-07-26-22-05-52.png', 'xiaomi_redmi_1s_1_8', 1, 0),
	(37, 'OPPO A37', 'Tinggi	143.1 mm<br />\r\nLebar	71 mm<br />\r\nBerat	136 g<br />\r\nKetipisan	7.68 mm<br />\r\nWarna	Rose Gold, Gold, dan Black (Limited Edition)<br />\r\n<br />\r\nChipset	Qualcomm MSM8916 Snapdragon 410<br />\r\nCPU	MSM 8916 Quad-core 1.2GHz Cortex-A53<br />\r\nOS	ColorOS 3.0, based on Android 5.1 (Lollipop)<br />\r\nGPU	Adreno 306', 1699000, 0, 1000, 1, 15, 'Produk2018-07-26-22-06-59.png', 'oppo_a37', 1, 0),
	(38, 'LENOVO A6020 (VIBE K5 HD)', 'LENOVO A6020 (VIBE K5 HD)', 1949000, 0, 1000, 1, 14, 'Produk2018-07-26-22-08-10.png', 'lenovo_a6020__vibe_k5_hd_', 1, 0),
	(39, 'XIAOMI REDMI 3S 2/16', 'Chipset	Qualcomm MSM8937 Snapdragon 430<br />\r\nCPU	Octa-core 1.4 GHz Cortex-A53<br />\r\nGPU	Adreno 505<br />\r\nRAM	2/3 GB RAM<br />\r\nInternal Storage	16 GB<br />\r\nExternal Storage	256 GB (uses SIM 2 slot)<br />\r\nSensor	Accelerometer, gyro, proximity, compass', 1800000, 0, 1000, 1, 15, 'Produk2018-07-26-22-16-34.png', 'xiaomi_redmi_3s_2_16', 1, 0),
	(40, 'ALDO T33', 'Kapasitas Baterai : 2300<br />\r\nKamera Belakang : 1 MP<br />\r\nKamera Depan : 1 MP<br />\r\nUkuran layar : 7.0 Inchi<br />\r\nJaringan : 2G<br />\r\nSistem Operasi : Android<br />\r\nVersi Sistem Operasi : jelly bean 4.2<br />\r\nUkuran : 12 x 18 x 0.5 (L x W x H cm)<br />\r\nSIM Card Type : Dual<br />\r\nKapasitas Penyimpanan : 4 GB<br />\r\nMemori Sistem : 512 MB<br />\r\nTipe Baterai : Baterai Li-ion Rechargeable', 650000, 0, 1000, 2, 12, 'Produk2018-07-26-22-17-45.png', 'aldo_t33', 1, 0),
	(41, 'ALDO T55', 'Kapasitas Baterai : 2300<br />\r\nKamera Belakang : 1 MP<br />\r\nKamera Depan : 1 MP<br />\r\nUkuran layar : 7.0 Inchi<br />\r\nJaringan : 2G<br />\r\nSistem Operasi : Android<br />\r\nVersi Sistem Operasi : jelly bean 4.2<br />\r\nUkuran : 12 x 18 x 0.5 (L x W x H cm)<br />\r\nSIM Card Type : Dual<br />\r\nKapasitas Penyimpanan : 4 GB<br />\r\nMemori Sistem : 512 MB<br />\r\nTipe Baterai : Baterai Li-ion Rechargeable', 750000, 0, 1000, 2, 6, 'Produk2018-07-26-22-18-48.png', 'aldo_t55', 1, 0),
	(42, 'SAMSUNG GALAXY A7 - A720', 'Exquisite Metal-Glass Combination<br /><br />\r\n<br /><br />\r\nSamsung Galaxy A7 memiliki ukuran layar 5,5 inci didukung prosessor Octa-core 1,6GHz, juga dilengkapi dengan memori 3GB RAM, 16GB ROM, mengusung Android v5.1 (Lollipop), memiliki kamera utama 13MP, depan 5MP dan menggunakan DualNano-SIM. Samsung A7 2016 Edition dirancang dengan inovasi mewah dan penuh perlindungan. Desain sisi smartphone ini terbuat dari metal frame yang mampu menjaganya dari benturan, juga akan menambah kesan cool bagi siapapun yang melihat Anda menggenggam Samsung A7 2016 Edition. Layar dan bagian belakang juga dilindungi oleh Gorilla Glass 4 sehingga Anda tak perlu takut akan goresan sedikitpun.<br /><br />\r\n<br />', 4875000, 0, 1000, 1, 12, 'Produk2018-07-26-22-19-40.png', 'samsung_galaxy_a7___a720__2017', 1, 0),
	(43, 'LENOVO A6000 NEW', 'PLATFORM	OS	Android OS, v4.4.4 (KitKat)<br />\r\nChipset	Qualcomm MSM8916 Snapdragon 410<br />\r\nCPU	Quad-core 1.2 GHz Cortex-A53<br />\r\nGPU	Adreno 306<br />\r\nFEATURES	Sensors	Accelerometer, proximity<br />\r\nMessaging	SMS(threaded view), MMS, Email, Push Mail, IM<br />\r\nBrowser	HTML5<br />\r\nRadio	FM radio<br />\r\nGPS	Yes, with A-GPS<br />\r\nJava	Yes, via Java MIDP emulator<br />\r\nColors	Black<br />\r\n– Active noise cancellation with dedicated mic<br />\r\n– MP4/H.264 player<br />\r\n– MP3/WAV/eAAC+/FLAC player<br />\r\n– Photo/video editor<br />\r\n– Document viewer<br />\r\nBATTERY		Li-Ion 2300 mAh battery<br />\r\nStand-by	Up to 264 h (2G) / Up to 264 h (3G)<br />\r\nTalk time	Up to 22 h (2G) / Up to 13 h (3G)<br />\r\nMusic play	–', 1425000, 0, 1000, 1, 11, 'Produk2018-07-26-22-20-52.png', 'lenovo_a6000_new', 1, 0),
	(44, 'LENOVO A7700', 'ampilan ponsel ini masih sama seperti ponsel-ponsel Lenovo kelas menengah lainnya. Bisa dikatakan Lenovo A7700 masuk dalam jajaran phablet karena dibekali dengan dimensi layar yang cukup lapang yakni 5.5 inci dengan resolusi setara HD atau 720 x 1280 pixels serta kerapatan 401 ppi. Jenis layar IPS-LCD cukup untuk tampilan layar yang jernih dan juga tajam dalam menampilkan setiap gambar. Sayangnya layar ponsel ini masih belum dilapisi oleh lapisan anti gores sehingga sobat harus rela merogoh gocek lebih untuk membeli lapisan anti gorews optional. Itupun mampu mengurangi kenyamanan pengoperasian ponsel karena akan terasa kesat dan kasar berbeda dengan lapisan Corning Gorilla Glass yang sudah menyatu dengan material layar.', 1799000, 0, 1000, 1, 10, 'Produk2018-07-26-22-24-27.png', 'lenovo_a7700', 1, 0),
	(45, 'VIVO Y21', 'Spek Vivo Y21 memang sedikit lebih rendah dari pada Vivo Y Series lainnya. Namun, di Indonesia sendiri tipe Vivo Y21 ini cukup laris karena meskipun komponennya rendah ia masih mumpuni untuk beberapa aktifitas mobile. Apalagi kabarnya Harga Vivo Y21 ini sangat terjangkau dan pas buat anda yang lagi memiliki budget yang minim. Memang untuk desain bodi Vivo Y21 ini masih sangat jauh dari sempurna, ketebalannya mencapai 9.2 mm. Layar yang ia gunakan juga masih berjenis IPS dengan ukuran layar 4.5 Inchi. Resolusi layarnya juga masih dibawah resolusi layar Vivo Y31 dimana ukurannya hanya 480 x 854 pixels. Meskipun layar Vivo Y21 demikian, Corning Gorilla Glass 2 melekat pada layarnya dan siap melindungi layar dari goresan benda tajam', 1499000, 0, 1000, 1, 11, 'Produk2018-07-26-22-25-29.png', 'vivo_y21', 1, 0),
	(46, 'VIVO Y65 LTE 3GB / 16GB', 'Menggunakan layar 5.5 inci IPS LCD yang nyaman untuk menonton video dan bermain game online<br />\r\nMenggunakan sistem operasi terupdate, android v7.1 Nougat<br />\r\nMemiliki RAM 3 GB sehingga kamu tidak perlu khawatir terjadi Lag saat bermain game HD<br />\r\nMedia penyimpanan besar untuk menyimpan ribuan file pentingmu<br />\r\nKamera depan dan belakang yang dapat menghasilkan gambar dan video berkualitas HD<br />\r\nFitur Smart Screen Flash dan Smart Split 3.0yang tidak ditemukan di ponsel lain<br />\r\nBaterai 3000 mAh yang awet digunakan seharian dalam pemakaian normal', 2299000, 0, 1000, 1, 10, 'Produk2018-07-26-22-27-41.png', 'vivo_y65_lte_3gb___16gb', 1, 0),
	(47, 'OPPO F5 YOUTH LTE 3GB/32GB', 'Oppo F5 Youth merupakan seri mini dari Oppo F5. Smartphone ini memiliki spesifikasi yang lebih rendah dari Oppo F5. Dengan prosessor Octa-core 2.5 GHz Cortex-A53, chipset Mediatek MT6763T Helio P23, RAM 3 GB dan GPU Mali-G71 MP2 membuat performanya cukup bagus.<br />\r\n<br />\r\nKamera yang terpasang pada smartphone inipun lumayan, dengan kamera utama 13 MP dan kamera sekunder 16 MP sudah tergolong bagus untuk kegiatan memotret.', 3330000, 0, 1000, 1, 11, 'Produk2018-07-26-22-30-24.png', 'oppo_f5_youth_lte_3gb_32gb', 1, 0),
	(48, 'IPHONE X', 'BODI - Unibodi 143.6 x 70.9 x 7.7 mm 174 gram<br /><br />\r\nSIM - Single SIM<br /><br />\r\nJARINGAN - 2G, 3G HSDPA, 4G LTE, VoLTE<br /><br />\r\nLAYAR - OLED Super Retina HD 5.8 inchi 1125 x 2436 piksel ~458 ppi<br /><br />\r\nFITUR LAYAR - 3D touch, Fingerprint resistant, Wide color, True tone & HDR display<br /><br />\r\nMEMORI - 64/256 GB Tanpa slot SD card<br /><br />\r\nRAM	3 GB<br /><br />\r\nSISTEM OPERASI - IOS 11<br /><br />\r\nPROSESOR - Hexa-core Appe A11 Bionic 64 bit<br /><br />\r\nGPU - Apple GPU (3 core)<br /><br />\r\nKAMERA DEPAN - 7 MP f/2.2<br /><br />\r\nFITUR - Potrait mode, potrait lighting, animoji, retina flash,Body & Face detection, HDR, exposure control, Video 1080p<br /><br />\r\nKAMERA BELAKANG - Dual 12 MP (Wide f/1.8 & Telephoto f/2.4)<br /><br />\r\nFITUR - Optical zoom, Digital zoom upto 10x, potrait mode, potrait lighting, Dual OIS, Quad LED Flash, Panorama (upto 63 MP), Shappire crystal lens cover, hybrid IR filter, Autofocus, Noise reduction, manual mode, busrt mode, HDR<br /><br />\r\nVIDEO - 4K@24/30/60fps, 1080p@30/60fps, 720p@30fps, OIS Video, Optical zoom, slow-motion video 1080p@120/240fps, time lapse mode<br /><br />\r\nKONEKTIVITAS - USB ,Wi-fi, hotspot, Bluetooth, GPS, NFC<br /><br />\r\nSENSOR	Face ID, Gyro, barometer, accelerometer, proximity, ambient light<br /><br />\r\nBATERAI - Li-ion non removable, fast charging, wireless charging<br /><br />\r\nLAIN - Ip67 (Tahan air dan debu) Wi-fi call, Siri', 16000000, 0, 1000, 3, 3, 'Produk2018-07-26-22-39-31.png', 'iphone_x', 1, 0),
	(49, 'IPHONE 7 PLUS', 'BODI - Unibodi 143.6 x 70.9 x 7.7 mm 174 gram<br /><br />\r\nSIM - Single SIM<br /><br />\r\nJARINGAN - 2G, 3G HSDPA, 4G LTE, VoLTE<br /><br />\r\nLAYAR - OLED Super Retina HD 5.8 inchi 1125 x 2436 piksel ~458 ppi<br /><br />\r\nFITUR LAYAR - 3D touch, Fingerprint resistant, Wide color, True tone & HDR display<br /><br />\r\nMEMORI - 64/256 GB Tanpa slot SD card<br /><br />\r\nRAM	3 GB<br /><br />\r\nSISTEM OPERASI - IOS 11<br /><br />\r\nPROSESOR - Hexa-core Appe A11 Bionic 64 bit<br /><br />\r\nGPU - Apple GPU (3 core)<br /><br />\r\nKAMERA DEPAN - 7 MP f/2.2<br /><br />\r\nFITUR - Potrait mode, potrait lighting, animoji, retina flash,Body & Face detection, HDR, exposure control, Video 1080p<br /><br />\r\nKAMERA BELAKANG - Dual 12 MP (Wide f/1.8 & Telephoto f/2.4)<br /><br />\r\nFITUR - Optical zoom, Digital zoom upto 10x, potrait mode, potrait lighting, Dual OIS, Quad LED Flash, Panorama (upto 63 MP), Shappire crystal lens cover, hybrid IR filter, Autofocus, Noise reduction, manual mode, busrt mode, HDR<br /><br />\r\nVIDEO - 4K@24/30/60fps, 1080p@30/60fps, 720p@30fps, OIS Video, Optical zoom, slow-motion video 1080p@120/240fps, time lapse mode<br /><br />\r\nKONEKTIVITAS - USB ,Wi-fi, hotspot, Bluetooth, GPS, NFC<br /><br />\r\nSENSOR	Face ID, Gyro, barometer, accelerometer, proximity, ambient light<br /><br />\r\nBATERAI - Li-ion non removable, fast charging, wireless charging<br /><br />\r\nLAIN - Ip67 (Tahan air dan debu) Wi-fi call, Siri', 18000000, 0, 1000, 3, 5, 'Produk2018-07-26-22-42-50.png', 'iphone_7_plus', 1, 0),
	(50, 'IPHONE X FREE SOFTCASE', 'BODI - Unibodi 143.6 x 70.9 x 7.7 mm 174 gram<br /><br />\r\nSIM - Single SIM<br /><br />\r\nJARINGAN - 2G, 3G HSDPA, 4G LTE, VoLTE<br /><br />\r\nLAYAR - OLED Super Retina HD 5.8 inchi 1125 x 2436 piksel ~458 ppi<br /><br />\r\nFITUR LAYAR - 3D touch, Fingerprint resistant, Wide color, True tone & HDR display<br /><br />\r\nMEMORI - 64/256 GB Tanpa slot SD card<br /><br />\r\nRAM	3 GB<br /><br />\r\nSISTEM OPERASI - IOS 11<br /><br />\r\nPROSESOR - Hexa-core Appe A11 Bionic 64 bit<br /><br />\r\nGPU - Apple GPU (3 core)<br /><br />\r\nKAMERA DEPAN - 7 MP f/2.2<br /><br />\r\nFITUR - Potrait mode, potrait lighting, animoji, retina flash,Body & Face detection, HDR, exposure control, Video 1080p<br /><br />\r\nKAMERA BELAKANG - Dual 12 MP (Wide f/1.8 & Telephoto f/2.4)<br /><br />\r\nFITUR - Optical zoom, Digital zoom upto 10x, potrait mode, potrait lighting, Dual OIS, Quad LED Flash, Panorama (upto 63 MP), Shappire crystal lens cover, hybrid IR filter, Autofocus, Noise reduction, manual mode, busrt mode, HDR<br /><br />\r\nVIDEO - 4K@24/30/60fps, 1080p@30/60fps, 720p@30fps, OIS Video, Optical zoom, slow-motion video 1080p@120/240fps, time lapse mode<br /><br />\r\nKONEKTIVITAS - USB ,Wi-fi, hotspot, Bluetooth, GPS, NFC<br /><br />\r\nSENSOR	Face ID, Gyro, barometer, accelerometer, proximity, ambient light<br /><br />\r\nBATERAI - Li-ion non removable, fast charging, wireless charging<br /><br />\r\nLAIN - Ip67 (Tahan air dan debu) Wi-fi call, Siri', 1600000, 0, 1000, 3, 2, 'Produk2018-07-26-22-44-49.png', 'iphone_x_free_softcase', 1, 0),
	(51, 'CHUWI HI 8 AIR TABLET PC', 'Chuwi HI8 Air merupakan versi terbaru seri tablet Chuwi Hi8 dengan desain yang lebih tipis dan modern. Beroperasi menggunakan 2 buah OS yaitu Windows 10 dan Android 5.1. Chuwi menggunakan prosesor terbaru Intel X2, 2GB RAM, 32GB HDD dan 8 Inch IPS Panel dengan resolusi 1920x1200 pixel.', 2500000, 0, 1000, 2, 11, 'Produk2018-07-26-22-47-58.png', 'chuwi_hi_8_air_tablet_pc', 1, 0),
	(52, 'AMAZON FIRE 7 WITH ALEXA', 'Amazon Fire 7 – Spesifikasi, Harga dan Review – Amazon Fire 7 adalah tablet yang di desain khusus untuk kamu yang hobi menikmati konten-konten digital Amazon. Seperti membacac ebook, menonton video, mendengarkan musik, dan sebagainya. Amazon Fire 7 Tablet sangat tidak cocok digunakan sebagai tablet produktivitas.', 5000000, 0, 1000, 2, 8, 'Produk2018-07-26-22-50-12.png', 'amazon_fire_7_with_alexa', 1, 0),
	(53, 'SAMSUNG GALAXY TAB S2', 'Jaringan Dan kecepatan data transfer<br />\r\nHSPA + 21Mbps 850/900/1900/2100<br />\r\n<br />\r\nUkuran : 193,7 x 122,4 x 10,5 mm<br />\r\nBerat: 345g <br />\r\n<br />\r\nprocessor nya<br />\r\n1 GHz Processor Dual-Core<br />\r\n<br />\r\nLayar nya<br />\r\n7 inch WSVGA (1024x600) TFT PLS<br />\r\n<br />\r\nOS nya<br />\r\nAndroid ? 4.0<br />\r\n( Ice Cream Sandwich )<br />\r\n<br />\r\nkamera nya<br />\r\nMain ( Belakang ) : 3 Megapixel Camera<br />\r\nSub (Front ) : VGA untuk Video Call<br />\r\n<br />\r\nFitur Video nya<br />\r\nCodec : MPEG4 , H.263 , H.264 , VC - 1 , DivX , WMV7 , WMV8 , WMV9 , VP8<br />\r\nFormat : 3GP , ASF , AVI , MP4 , WMV , FLV ,<br />\r\nMKV , WebM<br />\r\nPlayback / Recording : Full HD @ 30fps , HD @ 30fps<br />\r\n<br />\r\nAudio<br />\r\nCodec : MP3 , AAC , AC - 3 , AMR , FLAC , MID , WMA , WAV , OGG<br />\r\nMusic Player dengan SoundAlive<br />\r\n3.5mm Ear Jack<br />\r\n<br />\r\nFitur – fitur yang lain <br />\r\nSamsung TouchWiz /<br />\r\nSamsung L ! Ve Panel<br />\r\nSamsung Apps<br />\r\nSamsung Hub <br />\r\nReaders Hub / Hub Musik / Game Hub /<br />\r\nHub Video<br />\r\nSamsung Hub Widget<br />\r\nMusic Hub / Game Hub / Hub Video<br />\r\nSamsung S Sarankan<br />\r\nLayanan rekomendasi App<br />\r\nSamsung ChatON komunikasi bergerak<br />\r\nlayanan<br />\r\nSamsung All Share Mainkan<br />\r\nSamsung Kies / Samsung Kies udara<br />\r\nGoogle Layanan Mobile<br />\r\nAndroid Market , Gmail , YouTube, Google Maps, Sinkronisasi dengan Google Calendar , Google Search , Google<br />\r\nEditor dokumen Polaris<br />\r\nA- GPS , Glonass<br />\r\n<br />\r\nKoneksi<br />\r\nTeknologi Bluetooth v 3.0<br />\r\nUSB 2.0 Host<br />\r\nWi - Fi 802.11 b / g / n , Wi - Fi Direct<br />\r\n<br />\r\nsensor<br />\r\nAccelerometer , Digital kompas , Light<br />\r\nkedekatan<br />\r\n<br />\r\nMemori nya/ruang penyimpanan<br />\r\n16GB memori User + 1GB ( RAM )<br />\r\nmicroSD (up to 32GB )<br />\r\n<br />\r\nKapasitaas Batreinya<br />\r\nStandar baterai , Li -ion 4.000 mAh', 4500000, 0, 1000, 2, 5, 'Produk2018-07-26-22-52-36.png', 'samsung_galaxy_tab_s2', 1, 0),
	(54, 'Powerbank', 'Powerbank merk samsung<br />\r\nWarna tersedia = Merah, biru, ungu', 50000, 40000, 1000, 4, 5, 'Produk2018-07-29-13-14-35.png', 'powerbank', 1, 1);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;

-- Dumping structure for table shop.shop_session
CREATE TABLE IF NOT EXISTS `shop_session` (
  `id` varchar(200) DEFAULT NULL,
  `ip_address` varchar(18) DEFAULT NULL,
  `data` text,
  `timestamp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_session: ~19 rows (approximately)
/*!40000 ALTER TABLE `shop_session` DISABLE KEYS */;
INSERT INTO `shop_session` (`id`, `ip_address`, `data`, `timestamp`) VALUES
	('inl941ifg0l84kviho6uvvlbto6071ne', '36.76.121.227', '__ci_last_regenerate|i:1533453569;', '1533453591'),
	('mo928q9u77fiubq9p2u25876td78la4j', '36.76.121.227', '__ci_last_regenerate|i:1533455603;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1533455603'),
	('mo928q9u77fiubq9p2u25876td78la4j', '36.76.121.227', '__ci_last_regenerate|i:1533455603;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1533455603'),
	('d49be9hekapfmsrg6jb2ib5ihnop4usr', '36.76.121.227', '__ci_last_regenerate|i:1533457409;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1533457409'),
	('99kjlk7v05837772vlj59vk2k9bq14ah', '36.76.121.227', '__ci_last_regenerate|i:1533456003;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}myAqua|s:1:"2";cart_contents|a:3:{s:10:"cart_total";d:18000000;s:11:"total_items";d:1;s:32:"e9e7aa68903c62ec596b19cca23ba80a";a:11:{s:2:"id";s:14:"20180805145928";s:10:"id_product";s:2:"49";s:3:"qty";d:1;s:4:"slug";s:13:"iphone_7_plus";s:5:"price";d:18000000;s:5:"berat";i:1000;s:4:"name";s:13:"IPHONE 7 PLUS";s:11:"information";s:50:"[Jumlah : 1] &rarr; <b>iphone 7 plus hitam</b><br>";s:7:"picture";s:29:"Produk2018-07-26-22-42-50.png";s:5:"rowid";s:32:"e9e7aa68903c62ec596b19cca23ba80a";s:8:"subtotal";d:18000000;}}', '1533456003'),
	('96alad79ge5tq8tvb1ms0meop58i0go0', '36.76.121.227', '__ci_last_regenerate|i:1533456813;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}myAqua|s:1:"2";', '1533456813'),
	('vbenfaakhucg4v88lljmnieheq4eo349', '36.76.121.227', '__ci_last_regenerate|i:1533456813;KCFINDER|a:0:{}CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}myAqua|s:1:"2";', '1533456815'),
	('kqm8hu598v47sb9jjsgf6f5iaib1hn6l', '36.76.121.227', '__ci_last_regenerate|i:1533457409;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1533457410'),
	('b9t6vadek6rjlq2vkc4g4oa0m8elg7on', '36.76.121.227', '__ci_last_regenerate|i:1533464885;', '1533464885'),
	('ce97gp99jpdecenrgbqhcd73jjs3a77j', '36.76.121.227', '__ci_last_regenerate|i:1533466495;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}cart_contents|a:3:{s:10:"cart_total";d:64000000;s:11:"total_items";d:2;s:32:"8215640a8a47a3c3f768aa45fde1b6de";a:11:{s:2:"id";s:14:"20180805175152";s:10:"id_product";s:2:"48";s:3:"qty";d:2;s:4:"slug";s:8:"iphone_x";s:5:"price";d:32000000;s:5:"berat";i:2000;s:4:"name";s:8:"IPHONE X";s:11:"information";s:45:"[Jumlah : 2] &rarr; <b>iphone x hitam</b><br>";s:7:"picture";s:29:"Produk2018-07-26-22-39-31.png";s:5:"rowid";s:32:"8215640a8a47a3c3f768aa45fde1b6de";s:8:"subtotal";d:64000000;}}', '1533466495'),
	('ffkitujckpssqo780qkj8t1lte9qipkm', '36.76.121.227', '__ci_last_regenerate|i:1533466145;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}success|s:39:"Selamat Datang <strong> KUKUH </strong>";__ci_vars|a:1:{s:7:"success";s:3:"new";}', '1533466145'),
	('0pgb6uhpfpb8bodl049aioqqr3h3k6l6', '36.76.121.227', '__ci_last_regenerate|i:1533466994;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}cart_contents|a:3:{s:10:"cart_total";d:1600000;s:11:"total_items";d:1;s:32:"72831e29e74a6f052c96e56314f03e95";a:11:{s:2:"id";s:14:"20180805175807";s:10:"id_product";s:2:"50";s:3:"qty";d:1;s:4:"slug";s:22:"iphone_x_free_softcase";s:5:"price";d:1600000;s:5:"berat";i:1000;s:4:"name";s:22:"IPHONE X FREE SOFTCASE";s:11:"information";s:0:"";s:7:"picture";s:29:"Produk2018-07-26-22-44-49.png";s:5:"rowid";s:32:"72831e29e74a6f052c96e56314f03e95";s:8:"subtotal";d:1600000;}}', '1533466994'),
	('092s04gpu6feidro0f22elhg0eih324d', '36.76.121.227', '__ci_last_regenerate|i:1533467393;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}cart_contents|a:3:{s:10:"cart_total";d:1600000;s:11:"total_items";d:1;s:32:"72831e29e74a6f052c96e56314f03e95";a:11:{s:2:"id";s:14:"20180805175807";s:10:"id_product";s:2:"50";s:3:"qty";d:1;s:4:"slug";s:22:"iphone_x_free_softcase";s:5:"price";d:1600000;s:5:"berat";i:1000;s:4:"name";s:22:"IPHONE X FREE SOFTCASE";s:11:"information";s:0:"";s:7:"picture";s:29:"Produk2018-07-26-22-44-49.png";s:5:"rowid";s:32:"72831e29e74a6f052c96e56314f03e95";s:8:"subtotal";d:1600000;}}', '1533467393'),
	('66j0jgertsv12986u24lvkobchmjtta2', '36.76.121.227', '__ci_last_regenerate|i:1533467393;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}cart_contents|a:3:{s:10:"cart_total";d:1600000;s:11:"total_items";d:1;s:32:"72831e29e74a6f052c96e56314f03e95";a:11:{s:2:"id";s:14:"20180805175807";s:10:"id_product";s:2:"50";s:3:"qty";d:1;s:4:"slug";s:22:"iphone_x_free_softcase";s:5:"price";d:1600000;s:5:"berat";i:1000;s:4:"name";s:22:"IPHONE X FREE SOFTCASE";s:11:"information";s:0:"";s:7:"picture";s:29:"Produk2018-07-26-22-44-49.png";s:5:"rowid";s:32:"72831e29e74a6f052c96e56314f03e95";s:8:"subtotal";d:1600000;}}', '1533467394'),
	('bj08uvfmqffocsc0o14tjh9mbrd7u522', '120.188.78.249', '__ci_last_regenerate|i:1533560330;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1533560495'),
	('j7bfu22u9sqr080t1j8ad647b22sjsbr', '182.253.131.62', '__ci_last_regenerate|i:1533568508;', '1533568533'),
	('rc8c0c3rlkjshvecs02ftibk5m0ecot4', '114.4.221.197', '__ci_last_regenerate|i:1533729944;', '1533729945'),
	('uldt7iaspjlpo268hs3cnpitpte8bt7o', '120.188.39.167', '__ci_last_regenerate|i:1533837619;', '1533837620'),
	('dh0fu0sa55o0tamr2nva5t53e46cdeop', '114.4.217.19', '__ci_last_regenerate|i:1533904913;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1533904952'),
	('f1jvo9ggoi4rp4eet7eje5oaff26ooi6', '::1', '__ci_last_regenerate|i:1540814773;KCFINDER|a:0:{}myAqua|s:1:"2";CIPTASHOP|a:1:{s:8:"KCFINDER";a:2:{s:8:"disabled";b:0;s:9:"uploadDir";s:6:"upload";}}', '1540814843');
/*!40000 ALTER TABLE `shop_session` ENABLE KEYS */;

-- Dumping structure for table shop.shop_setting
CREATE TABLE IF NOT EXISTS `shop_setting` (
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

-- Dumping data for table shop.shop_setting: 1 rows
/*!40000 ALTER TABLE `shop_setting` DISABLE KEYS */;
INSERT INTO `shop_setting` (`shortname_shop`, `longname_shop`, `motto_shop`, `location_shop`, `name_manage`, `bbm_contact`, `wa_contact`, `phone_contact`, `email_shop`, `propinsi_shop`, `kabupaten_shop`, `logo_shop`, `facebook`, `twitter`, `google`, `instagram`, `youtube`, `pos`, `jne`, `tiki`, `gratis_ongkir_wilayah`, `cod_wilayah`) VALUES
	('Salsa Cell', 'Salsa Cell Kedungadem', 'Pusatnya gadget masa kini', 'Jalan Raya Kedung Adem - Bojonegoro', 'BUDI KUKUH', '6G5544F', '+6285738787987', '+6285731848999', 'budikukuhdc21@gmail.com', '11', '80', 'Logo2018-07-27-06-31-23.png', 'https://facebook.com/salsacell', 'https://twitter.com/salsacell', '', 'https://instagram.com/salsacell/', '', 1, 1, NULL, NULL, NULL);
/*!40000 ALTER TABLE `shop_setting` ENABLE KEYS */;

-- Dumping structure for table shop.shop_skin
CREATE TABLE IF NOT EXISTS `shop_skin` (
  `id_skin` int(3) NOT NULL AUTO_INCREMENT,
  `skin` varchar(15) NOT NULL,
  `example` varchar(50) NOT NULL,
  `skin_status` int(2) NOT NULL,
  `ket` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_skin`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_skin: 6 rows
/*!40000 ALTER TABLE `shop_skin` DISABLE KEYS */;
INSERT INTO `shop_skin` (`id_skin`, `skin`, `example`, `skin_status`, `ket`) VALUES
	(1, 'style-1', 'style-1.PNG', 0, 'tema 1'),
	(2, 'style-2', 'style-2.PNG', 0, 'tema 2'),
	(3, 'style-3', 'style-3.PNG', 1, 'tema 3'),
	(4, 'style-4', 'style-4.PNG', 0, 'tema 4'),
	(5, 'style-5', 'style-5.PNG', 0, 'tema 5'),
	(6, 'style-6', 'style-6.PNG', 0, 'tema 6');
/*!40000 ALTER TABLE `shop_skin` ENABLE KEYS */;

-- Dumping structure for table shop.shop_slider
CREATE TABLE IF NOT EXISTS `shop_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `slider` varchar(100) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_slider: 3 rows
/*!40000 ALTER TABLE `shop_slider` DISABLE KEYS */;
INSERT INTO `shop_slider` (`id_slider`, `slider`) VALUES
	(2, 'Slider2018-07-27-07-21-48.png'),
	(6, 'Slider2018-07-28-05-31-57.png'),
	(5, 'Slider2018-07-27-07-29-46.png');
/*!40000 ALTER TABLE `shop_slider` ENABLE KEYS */;

-- Dumping structure for table shop.shop_testimoni
CREATE TABLE IF NOT EXISTS `shop_testimoni` (
  `id_testimony` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  `testimony` text,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_testimony`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_testimoni: ~0 rows (approximately)
/*!40000 ALTER TABLE `shop_testimoni` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_testimoni` ENABLE KEYS */;

-- Dumping structure for table shop.shop_transaction
CREATE TABLE IF NOT EXISTS `shop_transaction` (
  `id_transaction` varchar(100) NOT NULL,
  `no_invoice` varchar(40) NOT NULL,
  `kode_pembelian` varchar(40) NOT NULL,
  `name_customer` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `address` text,
  `courier` varchar(5) NOT NULL,
  `packet` varchar(30) DEFAULT NULL,
  `to_customer` varchar(3) DEFAULT NULL,
  `price_ongkir` int(11) NOT NULL,
  `time_transaction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_transaction` int(11) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `payment_transaction` int(11) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `bukti` varchar(50) DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `state` int(1) NOT NULL,
  PRIMARY KEY (`id_transaction`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_transaction: 7 rows
/*!40000 ALTER TABLE `shop_transaction` DISABLE KEYS */;
INSERT INTO `shop_transaction` (`id_transaction`, `no_invoice`, `kode_pembelian`, `name_customer`, `email`, `province`, `city`, `address`, `courier`, `packet`, `to_customer`, `price_ongkir`, `time_transaction`, `total_transaction`, `bank`, `payment_transaction`, `phone`, `bukti`, `no_resi`, `state`) VALUES
	('20180727073301', 'INV-000000001', 'J6aiUBQ9u4', 'AHMAD MUHAJIRUL FAQIH', 'muhajirulfaqih@gmail.com', 11, 489, 'Jalan raya ponco - soko<br />\r\nAlastuwo - Mojomalang - Parengan<br />\r\nKabupaten Tuban<br />\r\n62366', 'jne', 'REG', '2-3', 29000, '2018-07-27 07:33:01', 5029000, '1', 1, '085879393616', 'Bukti2018-07-27-07-43-21.png', '987908798798', 2),
	('20180728204159', 'INV-000000001', 'M54crKRZv6', 'MUHAJIRUL FAQIH', 'muhajirulfaqih@gmail.com', 11, 489, 'Jalan karang waru no 5', 'jne', 'OKE', '3-6', 25000, '2018-07-28 20:41:59', 824000, '1', 1, '087687687687', 'Bukti2018-07-29-13-53-44.png', '6987687687', 1),
	('20180729134554', 'INV-000000001', '5lU5838xrV', 'WAHYU NUR ALAN', 'wahyunuralan@gmail.com', 11, 489, 'Jalan Raya Tuban No 09 <br />\r\nDsn Jati Desa Mojomalang<br />\r\nKecamatan Parengan<br />\r\nKabupaten Tuban<br />\r\nKode pos 62366', 'jne', 'OKE', '3-6', 25000, '2018-07-29 13:45:54', 775000, '1', 1, '08768767576565', 'Bukti2018-07-29-13-50-33.png', '76987687677', 1),
	('20180731004935', 'INV-000000001', '3kw9VjVzCR', 'CANDRA', 'candraprayoga40@gmail.com', 11, 80, 'Kedungadem, kabupaten bojonegoro', 'jne', 'CTC', '3-6', 45000, '2018-07-31 00:49:35', 80045000, '1', 1, '08552796467', 'Bukti2018-07-31-01-03-24.png', '', 3),
	('20180731211542', 'INV-000000001', 'T6JdtmeMSJ', 'MUHAMMAD SANDY', 'mitsubishifusokukuh@gmail.com', 11, 80, 'jl. hasyim as\'ari no. 70 kecamatan kedungadem kabupaten bojonegoro', 'jne', 'CTC', '3-6', 18000, '2018-07-31 21:15:42', 32018000, '1', 1, '085677872329', '', '', 0),
	('20180804212242', 'INV-000000001', '3719cd6fTc', 'CANDRA', 'candraprayoga40@gmail.com', 11, 247, 'samsung', 'jne', 'OKE', '3-6', 28000, '2018-08-04 21:22:42', 128000, '2', 1, '54546445464', 'Bukti2018-08-04-21-26-58.png', '23456272773', 1),
	('20180805175455', 'INV-000000001', 'fL2ojk5932', 'BUDI', 'mitsubishifusokukuh@gmail.com', 11, 247, 'KEDUNGADEM', 'jne', 'OKE', '3-6', 56000, '2018-08-05 17:54:55', 32056000, '2', 1, '085645593328', '', '', 0);
/*!40000 ALTER TABLE `shop_transaction` ENABLE KEYS */;

-- Dumping structure for table shop.shop_transaction_details
CREATE TABLE IF NOT EXISTS `shop_transaction_details` (
  `id_transaction` varchar(100) NOT NULL,
  `id_product` int(11) NOT NULL,
  `qty_transaction` int(11) NOT NULL,
  `information` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_transaction_details: 7 rows
/*!40000 ALTER TABLE `shop_transaction_details` DISABLE KEYS */;
INSERT INTO `shop_transaction_details` (`id_transaction`, `id_product`, `qty_transaction`, `information`) VALUES
	('20180727073301', 52, 1, '[Jumlah : 1] &rarr; <b>Warna merah</b><br>'),
	('20180728204159', 31, 1, ''),
	('20180729134554', 41, 1, '[Jumlah : 1] &rarr; <b>Warna hitam</b><br>'),
	('20180731004935', 48, 5, '[Jumlah : 4] &rarr; <b>Hitam</b><br>[Jumlah : 1] &rarr; <b>Hitam</b><br>'),
	('20180731211542', 48, 2, '[Jumlah : 2] &rarr; <b>iphone x 128gb hitam</b><br>'),
	('20180804212242', 55, 1, '[Jumlah : 1] &rarr; <b>baterai</b><br>'),
	('20180805175455', 48, 2, '[Jumlah : 2] &rarr; <b>iphone x hitam</b><br>');
/*!40000 ALTER TABLE `shop_transaction_details` ENABLE KEYS */;

-- Dumping structure for table shop.shop_user
CREATE TABLE IF NOT EXISTS `shop_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name_user` varchar(100) NOT NULL,
  `username_user` varchar(30) NOT NULL,
  `password_user` text NOT NULL,
  `access_user` int(1) NOT NULL,
  `state_user` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table shop.shop_user: 3 rows
/*!40000 ALTER TABLE `shop_user` DISABLE KEYS */;
INSERT INTO `shop_user` (`id_user`, `name_user`, `username_user`, `password_user`, `access_user`, `state_user`) VALUES
	(1, 'CRAFA TEAM', 'crafateam', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
	(2, 'KUKUH', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 1),
	(3, 'ADI', 'adi', '7360409d967a24b667afc33a8384ec9e', 2, 1);
/*!40000 ALTER TABLE `shop_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
