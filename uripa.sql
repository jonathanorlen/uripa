/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : uripa

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2017-02-01 13:26:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for atombizz_employee
-- ----------------------------
DROP TABLE IF EXISTS `atombizz_employee`;
CREATE TABLE `atombizz_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) DEFAULT NULL,
  `status_alumni` enum('0','1') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` longtext,
  `group` int(11) DEFAULT NULL,
  `workstation` varchar(50) DEFAULT NULL,
  `gaji` bigint(20) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `urut` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of atombizz_employee
-- ----------------------------
INSERT INTO `atombizz_employee` VALUES ('5', '2014', '1', '1992-07-14', null, 'bambang supeno', '123456789987654321', 'singosari', '085721423839', null, null, 'admin', '9c69c2e28557a737ffc2d3aad9160b76', '1', '1.001.001', null, null, null);

-- ----------------------------
-- Table structure for atombizz_employee_access
-- ----------------------------
DROP TABLE IF EXISTS `atombizz_employee_access`;
CREATE TABLE `atombizz_employee_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NOT NULL,
  `access` longtext NOT NULL,
  `module` longtext,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of atombizz_employee_access
-- ----------------------------
INSERT INTO `atombizz_employee_access` VALUES ('1', '1', '[\"your_module.your_module.index\"]', '[\"your_module\"]', null);

-- ----------------------------
-- Table structure for atombizz_employee_position
-- ----------------------------
DROP TABLE IF EXISTS `atombizz_employee_position`;
CREATE TABLE `atombizz_employee_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(20) DEFAULT NULL,
  `information` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of atombizz_employee_position
-- ----------------------------
INSERT INTO `atombizz_employee_position` VALUES ('1', 'Administrator', '');

-- ----------------------------
-- Table structure for buah
-- ----------------------------
DROP TABLE IF EXISTS `buah`;
CREATE TABLE `buah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` text,
  `isi` text,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `harga` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of buah
-- ----------------------------
INSERT INTO `buah` VALUES ('21', '0', 'apel', '160823093235.png|', '<p>apel</p>', '2016-08-24 10:05:06', '1', 'Rp 20000');

-- ----------------------------
-- Table structure for coba
-- ----------------------------
DROP TABLE IF EXISTS `coba`;
CREATE TABLE `coba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text,
  `tgl` date DEFAULT NULL,
  `foto` text,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `harga` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of coba
-- ----------------------------
INSERT INTO `coba` VALUES ('17', 'Happy Hours', '<p>Diskon 20% Refleksi dan Aromatic Body Spa jam 18:00 - 21:00 WIB, Hari Senin - Jumat</p>', '2016-03-01', '160902094504.jpg|', '1', 'Rp 10000');
INSERT INTO `coba` VALUES ('18', 'tes', '<p>tes</p>', '2016-03-12', '160902094632.jpg|', '1', 'Rp 10000');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isi` text NOT NULL,
  `id_ym` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `handphone` varchar(255) DEFAULT NULL,
  `pin_bb` varchar(255) DEFAULT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `ig` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('2', '<p><b><u>Kantor Pusat :Jl. Pintu Gerbang Gg. IV No. 12 Pamekasan Madura - Jatim - Indonesia</u></b><br></p>', 'gfgfgf', 'asas@gmail.com', '0343 4741231', '089888999', '5454545', 'asd', 'asd', '2017-01-27 14:39:40', '1');

-- ----------------------------
-- Table structure for galery
-- ----------------------------
DROP TABLE IF EXISTS `galery`;
CREATE TABLE `galery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `foto` text,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of galery
-- ----------------------------
INSERT INTO `galery` VALUES ('1', 'Persiapan', '161215034552.jpg|', '2016-12-15 09:45:56', '1');
INSERT INTO `galery` VALUES ('2', 'Hari Pelanggan', '161215034605.jpg|', '2016-12-15 09:46:08', '1');
INSERT INTO `galery` VALUES ('3', 'Event', '161215034617.jpg|', '2016-12-15 09:46:20', '1');
INSERT INTO `galery` VALUES ('4', 'Jalan Sehat', '161215034631.jpg|', '2016-12-15 09:46:39', '1');
INSERT INTO `galery` VALUES ('6', 'Dubai', '170109080159.jpg|', '2017-01-09 14:02:52', '1');

-- ----------------------------
-- Table structure for kategori_indihome
-- ----------------------------
DROP TABLE IF EXISTS `kategori_indihome`;
CREATE TABLE `kategori_indihome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_indihome
-- ----------------------------
INSERT INTO `kategori_indihome` VALUES ('1', 'Paket Hemat');
INSERT INTO `kategori_indihome` VALUES ('2', 'PAKET REGULER');
INSERT INTO `kategori_indihome` VALUES ('3', 'PAKET PLATINUM');
INSERT INTO `kategori_indihome` VALUES ('4', 'PAKET GOLD / VIP');

-- ----------------------------
-- Table structure for keterangan_paket
-- ----------------------------
DROP TABLE IF EXISTS `keterangan_paket`;
CREATE TABLE `keterangan_paket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` longtext,
  `kategori_paket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keterangan_paket
-- ----------------------------
INSERT INTO `keterangan_paket` VALUES ('3', '<p>lorem</p>', '1');
INSERT INTO `keterangan_paket` VALUES ('4', '<p>Umur Harus Berapa</p>', 'Umum');
INSERT INTO `keterangan_paket` VALUES ('5', '<p>Hotel Mekkah --&gt; Grand Riyadhoh / Wali Ibrohim / Setaraf (400 m)</p><p>Hotel Madinah --&gt; Al-Majeedy / Surfah / Setaraf *3 (50 m)</p><p>Pesawat --&gt; By Flyscoot / Saudi Airlines</p><p>NB : Harga termasuk berangkat dari daerah pulang sampai Juanda</p><p>&nbsp;</p>', '2');

-- ----------------------------
-- Table structure for kritik
-- ----------------------------
DROP TABLE IF EXISTS `kritik`;
CREATE TABLE `kritik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kritik
-- ----------------------------
INSERT INTO `kritik` VALUES ('1', '76588', 'challista eka putri', '65765', 'cloudastro.id@gmail.com', 'Pelayanan', 'dfdfdgd', '2016-05-20 09:51:47');
INSERT INTO `kritik` VALUES ('2', '1', 'a', '12345', 'q@a.com', 'Perawatan', 'a i u e o', '2016-08-20 11:14:11');

-- ----------------------------
-- Table structure for mail
-- ----------------------------
DROP TABLE IF EXISTS `mail`;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subject` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `bagaimana` varchar(15) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mail
-- ----------------------------
INSERT INTO `mail` VALUES ('6', '2016-11-04 10:59:33', 'ttrfg', 'ghgfh', 'tanjungyuko@gmail.com', 'ghfgh', '', 'ghgfhgfhgfghjhjjkjjgjhgjhj');
INSERT INTO `mail` VALUES ('7', '2016-12-15 09:20:08', 'Login', 'Aaa', 'a@jak', '12', '', '1212');
INSERT INTO `mail` VALUES ('8', '2017-01-09 14:07:51', 'dfdf', 'fdf', 'cloudastro.id@gmail.com', '07898', '', 'dfdfd');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_induk` varchar(11) DEFAULT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('11', 'induk', 'testing', 'detail_page/0', '2016-10-20 10:45:21', '1');
INSERT INTO `menu` VALUES ('12', null, 'cek', null, '2016-10-21 09:48:44', '0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `foto` text,
  `isi_berita` text,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('14', 'Pemberangkatan Umroh', '161215052516.jpg|', '<p>\r\n\r\n</p><p><u>Layanan internet broadband mempunyai peran penting dalam meningkatkan kualitas hidup. Internet merupakan media yang digunakan untuk mendukung berbagai aktivitas. Oleh karena itu, Telkom berkomitmen untuk terus meningkatkan kualitas layanan IndiHome bagi pelanggan.</u></p><p><u>Kualitas layanan IndiHome terus ditingkatkan dari segala aspek. Pada aspek teknologi, IndiHome memanfaatkan Indonesia Digital Network yang berbasis teknologi fiber optic, membentang dari ujung barat sampai timur Indonesia. Pelanggan akan semakin dimanjakan dengan jaringan fiber optic yang mampu menyediakan layanan akses internet kecepatan tinggi. Kualitas koneksinya pun lebih stabil dan handal, tidak mudah.</u></p>\r\n\r\n<p></p>', '2017-01-21 10:20:07', '1');
INSERT INTO `news` VALUES ('15', 'Info Mekah', '161215052546.jpg|', '<p></p>\r\n\r\n<p><b>Meyakini kualitas penerapan praktik terbaik GCG akan terjaga dan teruji</b></p><p>Perseroan menjadikan tahun 2015 sebagai tahun budaya penerapan prinsip dasar GCG. Dengan menjadikan prinsip-prinsip dasar GCG sebagai budaya dalam menjalankan tugastugas operasional sehari-hari, kami meyakini kualitas penerapan praktik terbaik GCG akan terjaga dan teruji. Sehingga seluruh manfaat dari penerapan praktik terbaik GCG dapat kami rasakan, terutama naiknya nilai perusahaan dan terpenuhinya harapan para pemangku kepentingan</p><p><b>TUJUAN DAN KOMITMEN PENERAPAN TATA KELOLA</b></p><p><b>TUJUAN PENERAPAN TATA KELOLA PERUSA HAAN YAN G BAIK</b></p><p>Telkom menerapkan praktik terbaik tata kelola dengan beberapa tujuan, meliputi:</p><p>• Memaksimalkan nilai perusahaan dan nilai untuk <i>stakeholders</i>.</p><p>• Mendorong pengelolaan perusahaan secara profesional, transparan dan efisien.</p><p>• Memberdayakan fungsi dan meningkatkan kemandirian Pemegang Saham, Dewan Komisaris, Direksi, Komitekomite dan Sekretaris Perusahaan.</p><p>• Memperhatikan adanya tanggung jawab perusahaan terhadap kondisi sosial masyarakat dan lingkungan sekitar.</p><p>• Meningkatkan kontribusi perusahaan dalam perekonomian nasional.</p><p>• Meningkatkan iklim investasi nasional.</p><p><b>KOMITMEN</b></p><p>Komitmen Perseroan dalam menerapkan GCG ditunjukkan dengan keluarnya Surat Keputusan Direksi tentang Pedoman GCG No.29/2007 dan Pedoman GCG Group No.602/2011. Keputusan Direksi tersebut memuat beberapa sistem penerapan GCG untuk menjamin bahwa GCG telah diterapkan b</p>\r\n\r\n<p></p>', '2016-12-15 11:25:51', '1');
INSERT INTO `news` VALUES ('16', 'Estimasi Nomor Porsi Berangkat Tahun 2011 s/d 2019', '170109080018.jpg|', '<p>fdfgggggggggggggggggggggggggdddddddddddddddddddddddddd</p><p>gdddddddddddddddddddddddddddddddddrrgfd</p><p>hfddfdfdgdgsdgfdhfhgfjk</p><p>tes</p>', '2017-01-09 14:01:12', '0');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` varchar(20) NOT NULL,
  `nama_page` varchar(30) DEFAULT NULL,
  `isi_page` varchar(70) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `menu` varchar(30) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('', 'testing', '<p>cvcbcvb</p>', '|', '11', null, null);

-- ----------------------------
-- Table structure for parcel
-- ----------------------------
DROP TABLE IF EXISTS `parcel`;
CREATE TABLE `parcel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` text,
  `isi` text,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `harga` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parcel
-- ----------------------------
INSERT INTO `parcel` VALUES ('19', '0', 'jeeruk', '160823090237.jpg|', '<p>jeruk</p>', '2016-08-24 10:04:51', '1', 'Rp 15000');

-- ----------------------------
-- Table structure for pesan_pelanggan
-- ----------------------------
DROP TABLE IF EXISTS `pesan_pelanggan`;
CREATE TABLE `pesan_pelanggan` (
  `id` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telp` varchar(30) NOT NULL,
  `bagaimana` varchar(15) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pesan_pelanggan
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `foto` text,
  `isi` text,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `harga` varchar(20) DEFAULT NULL,
  `status_produk` varchar(20) DEFAULT NULL,
  `jenis_produk` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('24', '0', 'PAKET ZIARAH SELAMA DI MADINAH', '161215032222.jpg|', '<p></p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.<ul><li></li></ul><p></p>', '2016-12-26 15:07:54', '1', '12000', 'None', '0');
INSERT INTO `product` VALUES ('25', '0', 'Paket Haji', '161215032344.jpg|', '<p>\r\n\r\nPada waktu dan tempat yang telah ditentukan para peserta diharapkan sudah berada di Bandara Soekarno-Hatta. Hari ini Anda akan memulai perjalanan menuju kota Hongkong. Setibanya di Hongkong Anda akan langsung menuju Shenzhen. Tiba di Shenzhen, Anda akan diajak berbelanja di Lowu Mall. (Makan Malam) Akomodasi: Century Plaza Hotel atau Setaraf\r\n\r\n</p>', '2016-12-19 13:19:53', '1', '120000', 'None', '0');
INSERT INTO `product` VALUES ('26', '0', 'Mekkah', '161215032402.jpg|', '<p>\r\n\r\n<b>Trend Micro Security System</b> adalah layanan Internet Security dari Telkom untuk pelanggan Internet IndiHome dengan aplikasi Trend Micro sebagai platform. Komputer anda akan terlindung dari serangan virus, malware, spyware, spam, phising dan konten yang tidak layak dari Internet sehingga data dan sistem aplikasi terbatas dari gangguan tersebut.\r\n\r\n</p>', '2016-12-19 13:18:52', '1', '12000', 'None', '0');
INSERT INTO `product` VALUES ('27', '0', 'Haji Plus', '161215032419.jpg|', '<p></p>\r\n\r\n<div><b>Indihome View </b>solusi mudah, cepat dan hemat untuk mengawasi rumah, kantor, toko dengan IP kamera yang dapat diakses menggunakan Smartphone/Laptop kapan saja dan dimana saja. Indihome View terhubung dengan modem wifi Speedy anda, sehingga tidak memerlukan Space memori untuk menyimpan hasil record.</div><div>Untuk berlangganan Indihome View cukup mudah dan murah. hanya Rp.10.000/bulan anda sudah bisa mengawasi rumah/kantor/toko anda secara intens.</div><div><br></div><div><i>- Harga perangkat berupa kamera Rp.550.000</i></div><div><i>- Harga belum termasuk biaya langganan Indihome</i></div>\r\n\r\n<p></p>', '2016-12-19 13:19:24', '1', '10000', 'None', '0');
INSERT INTO `product` VALUES ('30', '0', 'Umroh Premium', '161215032818.jpg|', 'Umroh Premium', '2016-12-15 09:39:12', '1', '$ 12000', 'New', '0');
INSERT INTO `product` VALUES ('31', '0', 'Promo Umroh', '161215034208.jpg|', 'Promo Umroh', '2016-12-15 09:47:32', '1', '$ 120090909', 'None', '0');
INSERT INTO `product` VALUES ('33', '0', 'tour dubai', '170109074208.jpg|', 'Tour Dubai was established in 1989 as the first and only operator of world class Dhow Cruise Services at Dubai Creek initially offering Private Charters. After impressive years of excellent and professional services in tourism industry, Tour Dubai has expanded daily services services which now includes but not limited to:', '2017-01-09 13:42:15', '1', '24000$', 'None', null);

-- ----------------------------
-- Table structure for produk_indihome
-- ----------------------------
DROP TABLE IF EXISTS `produk_indihome`;
CREATE TABLE `produk_indihome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(225) DEFAULT NULL,
  `indihome` varchar(225) DEFAULT NULL,
  `telp_rumah` varchar(225) DEFAULT NULL,
  `cable` varchar(225) DEFAULT NULL,
  `harga` varchar(225) DEFAULT NULL,
  `kode_tr` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk_indihome
-- ----------------------------
INSERT INTO `produk_indihome` VALUES ('1', '1', '9 Hari', '$ 1800', '$ 1870', '$ Dua', '14122016025821');
INSERT INTO `produk_indihome` VALUES ('2', '1', '12 Hari', '$ 4000', '$  3000', '$ 2000', '14122016025821');
INSERT INTO `produk_indihome` VALUES ('3', '2', '9 Hari', '$ 1925', '$ 2040', '$ 2115', '26122016025813');
INSERT INTO `produk_indihome` VALUES ('4', '2', '13 Hari', '$ 2025', '$ 2125', '$ 2225', '26122016025813');
INSERT INTO `produk_indihome` VALUES ('5', '2', '15 Hari', '$ 2115', '$ 2190', '$ 2265', '26122016025813');

-- ----------------------------
-- Table structure for produk_indihome_temp
-- ----------------------------
DROP TABLE IF EXISTS `produk_indihome_temp`;
CREATE TABLE `produk_indihome_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(225) DEFAULT NULL,
  `indihome` varchar(225) DEFAULT NULL,
  `telp_rumah` varchar(225) DEFAULT NULL,
  `cable` varchar(225) DEFAULT NULL,
  `harga` varchar(225) DEFAULT NULL,
  `kode_tr` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk_indihome_temp
-- ----------------------------
INSERT INTO `produk_indihome_temp` VALUES ('1', '4', '9', '2000', '3000', '4000', '23012017094109');

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text,
  `tgl` date DEFAULT NULL,
  `foto` text,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES ('1', 'Promo idul adha', '<p>Diskon 20% untuk semua buah dari jam 18:00 - 21:00 WIB, Hari Senin aja lhooo</p>', '2016-03-01', '160312033427.jpg|', '1');
INSERT INTO `promo` VALUES ('12', 'aaa', '<p>asdfghjkl</p>', '2016-09-17', '160917052955.jpg|', '1');
INSERT INTO `promo` VALUES ('13', 'Promo Tahun Islam', '<p>diskon</p>', '2016-09-14', '160917061655.jpg|', '1');
INSERT INTO `promo` VALUES ('15', 'buah segar', '<p>\r\n\r\n<b>Promosi</b>&nbsp;adalah upaya untuk memberitahukan atau menawarkan produk atau jasa pada dengan tujuan menarik calon <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Konsumen\" title=\"Link: https://id.wikipedia.org/wiki/Konsumen\">konsumen</a>&nbsp;untuk membeli atau mengkonsumsinya. Dengan adanya promosi <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Produsen\">produsen</a>&nbsp;atau <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Distributor\">distributor</a>&nbsp;mengharapkan kenaikannya angka <a target=\"_blank\" rel=\"nofollow\" href=\"https://id.wikipedia.org/wiki/Penjualan\">penjualan</a>.\r\n\r\n<br></p>', '2016-10-13', '161013063000.gif|', '1');

-- ----------------------------
-- Table structure for promo_asli
-- ----------------------------
DROP TABLE IF EXISTS `promo_asli`;
CREATE TABLE `promo_asli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text,
  `tgl` date DEFAULT NULL,
  `foto` text,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `harga` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of promo_asli
-- ----------------------------
INSERT INTO `promo_asli` VALUES ('1', 'Promo idul adha', '<p>Diskon besar untuk semua buah di toko Tani Mandiri</p>', '2016-03-01', '160312033427.jpg|', '1', 'Rp 10000');
INSERT INTO `promo_asli` VALUES ('3', 'tes', '<p>tes</p>', '2016-03-12', '160312033654.jpg|', '1', 'Rp 10000');

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `isi` text,
  `foto` text NOT NULL,
  `tanggal` date DEFAULT NULL,
  `status` enum('1','0') NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES ('24', '1', null, '161214075136.jpg|', '2016-10-20', '1', 'asas');
INSERT INTO `slider` VALUES ('26', '3', null, '161215050952.jpg|', '2016-10-20', '1', 'a');
INSERT INTO `slider` VALUES ('27', '4', null, '161215054552.jpg|', '2016-10-20', '1', 'a');

-- ----------------------------
-- Table structure for tentang
-- ----------------------------
DROP TABLE IF EXISTS `tentang`;
CREATE TABLE `tentang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` longtext,
  `image` varchar(225) DEFAULT NULL,
  `status` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tentang
-- ----------------------------
INSERT INTO `tentang` VALUES ('2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '161215045423.jpg|', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jenis_kelamin` enum('P','L') DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `upass` longtext,
  `last_login` datetime DEFAULT NULL,
  `akses` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', null, '1992-07-14', '123456789987654321', 'Admin', 'P', 'singosari', '085721423839', null, '1', 'admin', '9c69c2e28557a737ffc2d3aad9160b76', null, '||product|promo|berita|galery|contact|email|user|slider|kritik|paket|tentang|');
INSERT INTO `user` VALUES ('41', null, null, null, 'rendra', 'L', '<p>sdfsdf</p>', '324234', null, '1', '123', 'a884aaede92e08a55ccee7d055ae9798', null, '||product||berita|galery|tentang|email|user|slider||');
INSERT INTO `user` VALUES ('42', null, null, null, 'sdsdfsdf', 'L', '<p>asdsad</p>', '34234', null, '1', 'asda', '54a20ac12a15e69c5eb55479fe113517', null, '||product||berita|galery|contact|||||');
INSERT INTO `user` VALUES ('43', null, null, null, 'asdasd', 'L', '<p>asdasd</p>', 'asdasdasd', null, '1', 'asdas', '54a20ac12a15e69c5eb55479fe113517', null, '||product||berita|galery|paket|tentang|email|user|slider||');
INSERT INTO `user` VALUES ('45', null, null, null, 'asa', 'L', '<p>ghhgjkj</p>', '087987', null, '1', 'asa', 'a856da10debb8c150b7c0dbea9076a52', null, '||product||berita|galery|paket|tentang|email|user|slider||');

-- ----------------------------
-- View structure for view_employee
-- ----------------------------
DROP VIEW IF EXISTS `view_employee`;
CREATE VIEW `view_employee` AS select `atombizz_employee`.`id` AS `id`,`atombizz_employee`.`group` AS `group`,`atombizz_employee`.`nama` AS `nama`,`atombizz_employee`.`telp` AS `telp`,`atombizz_employee`.`alamat` AS `alamat`,`atombizz_employee`.`uname` AS `uname`,`atombizz_employee`.`upass` AS `upass`,`atombizz_employee`.`workstation` AS `workstation`,`atombizz_employee`.`gaji` AS `gaji`,`atombizz_employee`.`status` AS `status`,`atombizz_employee`.`last_login` AS `last_login`,`atombizz_employee_position`.`group` AS `jabatan`,`atombizz_employee_access`.`module` AS `module`,`atombizz_employee`.`email` AS `email`,`atombizz_employee`.`no_ktp` AS `no_ktp`,`atombizz_employee`.`nik` AS `nik`,`atombizz_employee`.`tgl_lahir` AS `tgl_lahir`,`atombizz_employee`.`status_alumni` AS `status_alumni`,`atombizz_employee`.`tahun` AS `tahun` from ((`atombizz_employee_position` join `atombizz_employee` on((`atombizz_employee_position`.`id` = `atombizz_employee`.`group`))) left join `atombizz_employee_access` on((`atombizz_employee_access`.`position_id` = `atombizz_employee_position`.`id`))) ;

-- ----------------------------
-- View structure for view_page
-- ----------------------------
DROP VIEW IF EXISTS `view_page`;
CREATE VIEW `view_page` AS select `page`.`id` AS `id`,`page`.`nama_page` AS `nama_page`,`page`.`isi_page` AS `isi_page`,`page`.`foto` AS `foto`,`page`.`menu` AS `menu`,`page`.`tanggal` AS `tanggal`,`page`.`status` AS `status` from `page` ;

-- ----------------------------
-- View structure for view_user
-- ----------------------------
DROP VIEW IF EXISTS `view_user`;
CREATE VIEW `view_user` AS select `user`.`id` AS `id`,`user`.`nik` AS `nik`,`user`.`tgl_lahir` AS `tgl_lahir`,`user`.`no_ktp` AS `no_ktp`,`user`.`nama` AS `nama`,`user`.`jenis_kelamin` AS `jenis_kelamin`,`user`.`alamat` AS `alamat`,`user`.`telp` AS `telp`,`user`.`email` AS `email`,`user`.`status` AS `status`,`user`.`uname` AS `uname`,`user`.`upass` AS `upass`,`user`.`last_login` AS `last_login`,`user`.`akses` AS `akses` from `user` ;
