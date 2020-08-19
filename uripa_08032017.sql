/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : uripa

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2017-03-08 13:59:08
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
INSERT INTO `contact` VALUES ('2', '<p><b><u>Kantor Pusat :Jl. Pintu Gerbang Gg. IV No. 12 Pamekasan Madura - Jatim - Indonesia</u></b><br></p><p><b><u>\r\n\r\n<b><u>Kantor Pusat Pasuruan : Jl. Panglima Sudirman No. 150 ( Depan Asrama Polisi ) - Pasuruan - Jawa Timur - Indonesia</u></b>\r\n\r\n<br></u></b></p>', 'gfgfgf', 'uripatravel@gmail.com', '0343 4741231', ' 082277885999', '5454545', 'asd', 'asd', '2017-03-06 09:41:10', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of galery
-- ----------------------------
INSERT INTO `galery` VALUES ('1', 'Persiapan', '161215034552.jpg|', '2016-12-15 09:45:56', '1');
INSERT INTO `galery` VALUES ('2', 'Hari Pelanggan', '161215034605.jpg|', '2016-12-15 09:46:08', '1');
INSERT INTO `galery` VALUES ('3', 'Event', '161215034617.jpg|', '2016-12-15 09:46:20', '1');
INSERT INTO `galery` VALUES ('4', 'Jalan Sehat', '161215034631.jpg|', '2016-12-15 09:46:39', '1');
INSERT INTO `galery` VALUES ('7', 'Jamaah PT. URIPA di Masjid Nabawi Madinah', '170306095555.jpg|', '2017-03-06 15:55:59', '1');
INSERT INTO `galery` VALUES ('9', 'Jamaah Umroh PT. URIPA Januari 2017', '170306095414.jpg|', '2017-03-06 15:54:18', '1');
INSERT INTO `galery` VALUES ('10', '9', '170308035236.jpg|', '2017-03-08 09:52:42', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keterangan_paket
-- ----------------------------
INSERT INTO `keterangan_paket` VALUES ('3', '<p>\r\n\r\n<p>Hotel Mekkah --&gt; Menarat muad *3 / Setaraf 500 m</p><p>Hotel Madinah --&gt; Al- Majeedy / Surfah / Setaraf *3 (50 m)</p><p>Pesawat --&gt; By Flyscoot &nbsp;Brunai Airlines</p><p>* NB : Juanda ke Juanda</p>\r\n\r\n</p>', '1');
INSERT INTO `keterangan_paket` VALUES ('5', '<p>Hotel Mekkah --&gt; Grand Riyadhoh / Wali Ibrohim / Setaraf (400 m)</p><p>Hotel Madinah --&gt; Al-Majeedy / Surfah / Setaraf *3 (50 m)</p><p>Pesawat --&gt; By Flyscoot / Saudi Airlines</p><p>NB : Harga termasuk berangkat dari daerah pulang sampai Juanda</p><p>&nbsp;</p>', '2');
INSERT INTO `keterangan_paket` VALUES ('6', '<p>\r\n\r\n<p>Hotel Mekkah : Dhiyafah Mubarak / Hanen Firdaus / Setaraf*4 (150-200 m)</p><p>Hotel Madinah :  Royal Andalus / Setaraf*4 (50m)</p><p>Pesawat : Garuda / Saudia Airlines</p><p>*Ket : Harga termasuk Daerah ke Daerah</p>\r\n\r\n<br></p>', '3');
INSERT INTO `keterangan_paket` VALUES ('7', '<p>\r\n\r\n<p>Hotel Makkah : Grand Zam - Zam / Sofwah / Setaraf*5</p><p>Hotel Madinah : Al - Haram / Setaraf*5 (0 m)</p><p>Pesawat : Garuda / Saudia Airlines - Direct Madinah</p><p>*Ket : Harga termasuk Daerah ke Daerah</p>\r\n\r\n<br></p>', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mail
-- ----------------------------
INSERT INTO `mail` VALUES ('6', '2016-11-04 10:59:33', 'ttrfg', 'ghgfh', 'tanjungyuko@gmail.com', 'ghfgh', '', 'ghgfhgfhgfghjhjjkjjgjhgjhj');
INSERT INTO `mail` VALUES ('7', '2017-03-07 08:52:09', 'Baaru', 'Test', 'erlanggaax13@gmail.com', '098765445678', '', 'haiahai');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('14', 'INILAH ASAL MULA TERLAKSANANYA UMROH', '170306100857.jpg|', '<p>\r\n\r\n</p><p><u></u></p>\r\n\r\n<h2>Makna Umroh</h2><br>Makna Umroh secara bahasa artinya berziarah atau mengunjungi. Adapun secara syar`i adalah berziarah ke Baitullah (<a target=\"_blank\" rel=\"nofollow\" href=\"https://www.google.com/maps/dir/Masjid+Nabawi,+Haram+Al+Madinah,+Medina+42312,+Arab+Saudi/King+Abdulaziz+International+Airport,+Medina+Road%D8%8C+%D8%AC%D8%AF%D8%A9+Arab+Saudi%E2%80%AD%E2%80%AD/Kaaba,+Mecca+24231,+Arab+Saudi/@22.9312334,37.1695572,6z/data=!4m20!4m19!1m5!1m1!1s0x15bdbfaa728d4c15:0x39c9cca9e8b98e2f!2m2!1d39.611099!2d24.46719!1m5!1m1!1s0x15c3d78b8ecef973:0x9cd631ee9b18eaaa!2m2!1d39.150578!2d21.670233!1m5!1m1!1s0x15c204b74c5bf99f:0x374ededffc94c249!2m2!1d39.8262017!2d21.4224843!3e0\">Mekkah</a>) dengan niat ihram, melaksanakan thawaf mengelilingi Ka`bah, Sa`i di antara Shafa dan Marwah serta mencukur rambut kepala.<br><div><br><div>Ibadah Umroh merupakan salah satu kegiatan ibadah dalam agama Islam. Sejarah ibadah umroh tidak dapat dilepaskan dari asal muasal Nabi Muhammad SAW melakukan ibadah haji untuk kali pertama.</div><div><br></div><div>Pada tahun 6 Hijriyah Nabi Muhammad SAW melakukan ibadah haji bersama 1500 sahabatnya ke Makkah. Mereka berangkat mengenakan pakaian ihram (kain putih tanpa jahitan) dan membawa unta sebagai hewan Qurban. Namun perjalanan ibadah yang kali pertama ini tidak berhasil karena Nabi dan para sahabat dihadang oleh kaum Quraysi di Hudaibiyah. Di tempat inilah kemudian Nabi dan kaum Quraysi melakukan perundingan Hudaibiyah.</div><br><div>Salah satu isi perjanjian Hudaibiyah sangat merugikan umat muslim yaitu kaum muslimin dilarang melakukan ibadah haji pada tahun itu dan bisa kembali tahun depan untuk melaksanakan ibadah haji dengan syarat tidak lebih dari 3 hari.” Karena perjanjian inilah kemudian Nabi Muhammad SAW beserta rombongan menunda perjalanan hajinya. Walaupun mendapat banyak protes dari para sahabat. Nabi berpendapat lain dan menyetujui perjanjian Hudaibiyah tersebut.</div><br><br><b>Pertama Kali Umroh</b><br><br><div>Maka pada tahun berikutnya, tepatnya pada tahun 7 Hijriyah untuk pertama kalinya Nabi Muhammad SAW bersama 2000 orang dalam rombongannya melakukan umroh ke Baitullah. Nabi Muhammad SAW beserta rombongan para sahabat memasuki Ka`bah dan langsung melakukan thawaf,. Setelah melakukan thawaf 7 kali putaran mengelilingi Ka`bah, Rasulullah melakukan shalat di makam Nabi Ibrahim As dan minum air zam-zam. Kemudian melakukan sa`i atau lari-lari kecil dari Shafa ke Marwah dan terakhir Nabi melakukan tahallul atau mencukur sebagian rambut.</div><br><div>Hingga kini, apa yang telah dilakukan oleh Nabi Muhammad SAW saat pertama kali melakukan ibadah umroh menjadi rukun umroh yang berlaku bagi seluruh umat Islam yang akan melakukan ibadah tersebut Yaitu, ihram berniat untuk melakukan umroh, melakukan thawaf dan sa`i. Adapun hal yang wajib dilakukan saat umroh adalah melakukan ihram ketika hendak memasuki miqat dan bertahallul dengan menggundul atau memotong sebagian rambut.</div><br><div>Sedangkan perbedaan umroh dengan ibadah haji adalah, umroh dapat dilakukan di sembarang waktu atau bulan dalam setahun tersebut sedangkan ibadah haji hanya dilakukan pada waktu tertentu antara tanggal 8 Dzulhijjah hingga 12 Dzulhijjah. Ibadah umroh mirip dengan ibadah haji karena itu ibadah umroh sering disebut sebagai haji kecil.</div><div><br><br></div><div><b>Adapun syarat untuk dapat melakukan ibadah umroh adalah:</b>&nbsp;<br><br>1. Beragama Islam baik wanita maupun laki-laki<br>2. Sudah baligh dan berakal<br>3. Merdeka<br>4. Memiliki kemampuan dalam hal ini bekal dan kendaraan<br>5. Adanya syarat untuk didampingi mahram bagi wanita yang ingin melakukan ibadah umroh.</div><div><br><br><b>Hal-hal yang perlu diperhatikan dalam melakukan ibadah umroh adalah:</b><br><br><ol><li>Apabila meninggalkan rukun umroh yaitu ihram (berniat umroh), thawaf dan sa`i maka umrohnya tidak sah dan wajib diulangi.</li><li>Apabila meninggalkan kewajiban umroh yaitu melakukan ihram ketika memasuki miqat dan bertahallul dengan menggundul atau memotong sebagian rambut, maka ibadah umroh tetap sah dan kesalahan tersebut bisa dibayar dengan DAM/denda .</li><li>Apabila melakukan jima` (berhubungan suami istri) sebelum tahallul maka wajib membayar seekor kambing sebagaimana fatwa Ibnu Abbas Ra.</li></ol><br>Demikian sejarah awalnya ibadah umroh dilakukan pertama kali yang dicontohkan oleh Nabi Muhammad SAW dan diikuti oleh umatnya hingga kini.<br><br></div><div>Penulis: Trina Tri Nawangsih<br></div></div><br>\r\n\r\n<p><u></u></p>\r\n\r\n<p></p>', '2017-03-06 16:09:01', '1');
INSERT INTO `news` VALUES ('15', 'PERJALANAN HAJI DAN UMRAH NABI MUHAMMAD SAW', '170306101111.jpg|', '<p>\r\n\r\n<p>Saat ini ibadah haji seolah kehilangan makna dan pengaruh politis serta perjuangannya. Pelaksanaan haji kian hari kian menurun kualitasnya. Yang menonjol dari haji kini hanyalah ibadah ritual belaka. Banyak jamaah yang melaksanakan ibadah ini hanya sekadar menggugurkan kewajiban. Lebih parah lagi tak sedikit yang menjalankannya seolah wisata reliji bahkan banyak dihiasi wisata belanja. Ibadah haji saat ini nyaris tak lagi terasa berpengaruh nyata dalam perbaikan kondisi umat</p><p><strong>Haji tidak hanya sebatas ibadah ritual</strong></p><p>Ibadah haji dalam sejarah kehidupan umat Islam sejak masa Rasulullah saw dan masa berikutnya sangat sarat dengan makna. Memiliki pengaruh besar dalam jalannya kehidupan umat dan perjuangan mereka. Dengan ibadah haji, kaum muslim dahulu mendapatkan pencerahan politik dan terbangkitkan spirit perjuangan mereka.</p><p><br></p><p><em>“Dan serukan kepada manusia untuk mengerjakan haji, niscaya mereka akan datang kepadamu dengan berjalan kaki, dan mengendarai unta yang kurus yang datang dari segenap penjuru yang jauh, supaya mereka menyaksikan berbagai manfaat bagi mereka…”.</em>&nbsp;<strong>(QS. al-Hajj [22]: 27-28) .</strong></p><p>Ibn Abbas dan Mujahid berkata: <em>“yaitu manfaat dunia dan akhirat” (Ibn Katsir, Tafsir al-Quran al-‘Azhim). Makna politis, ideologis, perjuangan, dsb itu merupakan bagian dari apa yang disebut “hikmah haji”, yaitu manfaat-manfaat yang dapat dipersaksikan oleh jamaah haji saat mereka menunaikan haji. Ayat ini menunjukkan, dalam ibadah haji kaum Muslimin akan mendapatkan berbagai manfaat yang sangat strategis dalam segala aspek kehidupan, termasuk dalam aspek politik”.</em>&nbsp;<strong>(Ali bin Nayif As-Syahud, Al-Khulashah fi Ahkam al-Hajj wa al-Umrah, hlm.2).</strong></p><p><strong>Umrah Rasulullah SAW</strong></p><p>Dalam ibadah umrah Rasulullah SAW telah menunaikan sebanyak empat kali;</p><p><strong>1.<em>&nbsp;Umrah Hudaibiyah</em>, tahun 6 H</strong></p><p>Nabi saw bersama 1400 sahabat mengambil miqat di Dzulhulaifah. Di hudaibiyah inilah Nabi saw singgah dan mendirikan kemah untuk beberapa hari, setelah dihadang pasukan Khalid bin al-walid di Dzi Thuwa, dan tidak diizinkan masuk ke Makkah oleh kaum kafir quraisy. Akhirnya Nabi saw meneken perjanjian dengan mereka kemudian membatalkan umrahnya dan kembali ke Madinah</p><p><strong>2. <em>Umrah Qadha’</em>&nbsp;7 H</strong></p><p>Yaitu umrah pengganti umrah Hudaibiyah dengan miqat di Hudaibiyah</p><p><strong>3. <em>Umrah Syawal 8 H/ umrah Ramadhan</em>&nbsp;8 H</strong></p><p>Umrah yang dilaksanakan Nabi saw setelah penaklukan kota Makkah dan perang Hunain. Dengan mengambil miqat di Ji’ranah- disebut sebagai miqat terbaik.</p><p><strong>4. <em>Umrah bersamaan dengan Haji Wada’</em>&nbsp;10 H</strong></p><p>Yang merupakan umrah terakhir sebagaimana haji yang Nabi Muhammad saw laksanakan.</p><p><strong>Miqat Nabi dari Madinah</strong></p><ul><li>&nbsp;Nabi saw mengambil miqat dari Madinah 2 kali, saat melaksanakan umrah Hudaibiyah dan Haji Wada’ dengan miqat di <em>Dzulhulaifah</em><strong>&nbsp;(Bir ‘Ali)</strong></li><li>Jabir ra menuturkan bahwa pada tahun 9 H, Nabi saw telah mengumumkan rencananya untuk berhaji pada 10 H, karena itu kaum muslim dari berbagai suku dan kabilah pun berdatangan untuk berhaji bersama Nabi.</li><li>Pada 10 H kaum Muslimin dari berbagai suku dan kabilah yang berjumlah 100.000 orang menunaikan haji bersama Nabi saw. Beliau saw membawa puterinya Fatimah az-Zahra dan semua isterinya.</li><li>Pada tanggal 25 <em>Dzulqa’dah</em>&nbsp;berangkat dari Madinah setelah shalat Dhuhur. Anas bin malik menuturkan, bahwa Nabi shalat Dhuhur 4 rakaat di Masjid Nabawi.<br><strong>Ibn ‘Abbas</strong>&nbsp;menuturkan,”Ketika meninggalkan Madinah, Nabi saw berjalan kaki dan memakai wangi-wangian. Nabi dan para sahabatnya mengenakan kain sarung dan selendang ihramnya. Nabi tidak melarang apapun kain sarung dan selendang dikenakan, kecuali yang dicelup Za’faran (yang berwarna kuning) yang menutupi badannya.”</li><li>Sampai di <em>Dzulhulaifah</em>&nbsp;Nabi saw mandi untuk ihram, meminyaki rambut dan shalat dua rakaat <strong>(HR. Bukhari, dari ibn Umar),</strong>&nbsp;kemudian berniat ihram untuk haji, umrah dan menjadikannya sebagai Haji Qiran. Kemudian Nabi saw mengerjakan shalat ashar dengan di qashar 2 rakaat.<strong>(HR. Bukhari, dari Anas bin Malik)</strong></li><li>Nabi bermalam di Dzulhulaifah dan mengambil miqatnya disini. Tempat ini dikenal dengan Masjid <em>Miqat, Masjid Dzulhulaifah, atau Masjid Bir ‘Ali.</em></li><li>Menjelang waktu shalat subuh tiba Rasulullah saw mandi untuk ihram. Kemudian Aisyah binti Abu Bakar memercikkan minyak wangi ke tubuh dan kepala Nabi hingga menetes sampai jenggot Nabi. Tetesan itu tidak dibasuh kemudian Nabi mengenakan kain ihram. Setelah shalat subuh Nabi berniat, lalu meninggalkan <em>Dzulhulaifah</em>&nbsp;menuju Makkah.</li><li>Sampai di <em>Baida’</em>&nbsp;(tempat turunnya ayat Tayammum), Nabi membaca talbiyyah. <strong>Dari Sahal bin Sa’ad ra</strong>. Nabi saw bersabda, <em>“tidak ada seeorang pun yang bertalbiyyah, kecuali apapun yang ada di kanan dan kirinya, baik batu, pohon maupun rumah menyahut seruannya, hingga bumi terputus, dari sini dan sini.”</em>&nbsp;<strong>(HR.at-Tirmidzi dan Ibn Majah )</strong></li><li>Rombongan jamaah haji yang tidak bergabung dari kota Madinah diperintah oleh Nabi untuk menempuh jalur pesisir, akhirnya bertemu dengan iring-iringan Rasulullah saw di tengah perjalanan, mereka semua kemudian berihram kecuali Abu Qatadah</li><li>Setelah 8 hari perjalanan, Nabi tiba di Dzi Tuwa, tepatnya Sabtu malam tanggal 3 Dzulhijah 10 H. Beliau bermalam dan keesokan harinya beliau shalat subuh dan mandi disini. <strong>Menurut Abu dzar al-ghifari,</strong>&nbsp;“<em>Nabi tidak suka memasuki Makkah pada malam hari”</em>. Karena itu baru siang harinya Nabi saw memasuki Makkah.</li><li>Dalam riwayat lain, ‘Ali bin Abi Thalib menuturkan, bahwa Nabi mandi dirumahnya di Makkah, dekat tempat kelahirannya sebelum memasuki Masjidil Haram.<strong>( Ibid, hal.272)</strong></li></ul><p><strong>Memasuki Masjidil Haram</strong></p><p>Hari Ahad, 4 Dzulhijah 10 H, siang hari Nabi saw memasuki Makkah dari jalan atas. Ketika memasuki Makkah dan melihat Ka’bah Nabi saw selalu mengangkat kedua tangannya dan bertakbir, seraya berdo’a :<br><br>“Ya Allah Engkau sumber keselamatan, dan daripadaMu lah datangnya keselamatan itu semua. Maka sambutlah kami wahai tuhan dengan selamat sejahtera.” <strong>(HR. al-Baihaqi)</strong></p><p><strong>Thawaf di Baitullah</strong></p><ul><li>Baginda saw langsung menuju Baitullah dan melakukan Thawaf 7 putaran. Nabi saw menyentuh (<em>istilam</em>) Hajar Aswad dan Rukun Yamani.<strong>(HR. ahmad dari Ibn Umar)</strong></li><li><strong>Jabir ra</strong>. Menuturkan<em>, “aku melihat Rasulullah saw. Melakukan lari-lari kecil dari (rukun) hajar aswad, sebanyak 3 kali putaran, hingga berakhir (7 putaran) di situ (hajar aswad)”</em>. <strong>( HR. Muslim ).</strong></li><li><strong>Dari Ibnu ‘Abbas radhiyallahu ‘anhuma,</strong>&nbsp;ia berkata bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda, <em>“Hajar aswad turun dari surga padahal batu tersebut begitu putih lebih putih daripada susu. Dosa manusialah yang membuat batu tersebut menjadi hitam”.</em></li><li>Ketika umrah Qadha (7 H), Nabi saw memerintahkan para sahabat thawaf dg berlari-lari kecil pada 3 putaran pertama (ar-raml) dan berjalan kaki biasa ketika berada di antara 2 rukun( yamani dan Hajar aswad), sisanya 4 putaran berjalan kaki biasa. Nabi saw. Juga tidak melarang mereka berlari-lari kecil seluruh putaran. Ini merupakan demonstrasi strategi di hadapan kaum kafir Quraisy, bahwa kaum Muslim tidak lemah dan segar bugar. Karena mereka diisukan dalam kondisi panas dan demam- virus Yatsrib.<strong>&nbsp;(HR. bukhari dan Muslim dari Ibn Abas).</strong></li></ul><p><strong>Shalat Sunah 2 Rakaat Di Belakang Maqam Ibrahim</strong></p><ul><li>Jabir bin Abdillah ra. Menuturkan, ketika Nabi usai thawaf, maka baginda saw bersandar di Maqam Ibrahim. Lalu Baginda saw shalat 2 rakaat, kemudian membacakan Firman allah :</li></ul><p><em>Dan (ingatlah), ketika Kami menjadikan rumah itu (Baitullah) tempat berkumpul bagi manusia dan tempat yang aman. Dan jadikanlah maqam Ibrahim tempat shalat. Dan telah Kami perintahkan kepada Ibrahim dan Ismail: “Bersihkanlah rumah-Ku untuk orang-orang yang thawaf, yang I’tikaaf, dan yang ruku’- sujud”</em>. <strong>(Qs.al-Baqarah: 125)</strong></p><ul><li>&nbsp;Nabi saw membaca <strong>(Q.s. al- Kafirun [109]:1-6)</strong>, Setelah selesai shalat 2 rakaat di belakang maqam Ibrahim, baginda saw. Menyentuh Hajar Aswad dan keluar menuju bukit Shafa.<strong>( Ibid hal.114)</strong></li></ul><p><strong>Sa’i Antara Shafa dan Marwa</strong></p><ul><li>Ketika tiba di lereng bukit Shafa, hendak naik ke atasnya, Nabi saw membaca:</li></ul><p><img width=\"664\" alt=\"\" src=\"https://i2.wp.com/www.everyayah.com/data/quranpngs/2_158.png\" height=\"103\"></p><p>“<em>Sesungguhnya Shafaa dan Marwa adalah sebahagian dari syi’ar Allah. Maka barangsiapa yang beribadah haji ke Baitullah atau ber’umrah, maka tidak ada dosa baginya mengerjakan sa’i antara keduanya. Dan barangsiapa yang mengerjakan suatu kebajikan dengan kerelaan hati, maka sesungguhnya Allah Maha Mensyukuri kebaikan lagi Maha Mengetahui.”. </em><strong>(QS. Al-Baqarah: 158)</strong></p><ul><li>Nabi saw mendaki bukit shafa. Kemudian melihat kearah ka’bah, lalu bertakbir dan berdoa kepada Allah, lalu menuruni bukit.</li><li>Ketika kedua kaki Baginda saw menyentuh lembah (sekarang ditandai dengan tiang/lampu hijau) maka Beliau berlari-lari kecil dan ketika sudah naik dari lembah setelah tiang/lampu hijau Beliau saw berjalan kaki biasa hingga tiba di bukit Marwa. Sampai di atas bukit baginda saw melihat kearah baitullah dan membaca doa seperti di bukit shafa.</li><li>Ketika sampai pada putaran ke-7 di Bukit Marwa, Nabi saw bersabda, “<em>Wahai manusia, andaikan aku belum melakukan apa yang telah kulakukan, tentu aku tak membawa hewan qurban (hadyu) dan ibadahku tadi kujadikan sebagai umrah saja. Karena itu, siapa saja yang tidak membawa hewan sembelihan, hendaklah ia bertahalul dan menjadikan ibadahnya tadi sebagai umrah!</em>”. <strong>(HR. Muslim, dari Jabir ra.)</strong></li></ul><p><strong>Nabi Melakukan Tarwiyah (persiapan haji)</strong></p><ul><li>&nbsp;Pada tanggal 8 Dzulhijah 10 H, Rasulullah saw berniat meninggalkan Makkah menuju Mina dan melaksanakan shalat Dzuhur, Ashar, Maghrib, ‘Isya’ dan Subuh disana. Dengan meng-qashar shalat Dzuhur, Ashar, dan Isha menjadi 2 rakaat tanpa dijamak. Setelah matahari terbit beliau melanjutkan perjalanan hingga sampai di Arafah.</li><li>Setelah matahari tergelincir pada 9 Dzulhijah, Beliau menunggangi <em>al-Qashwa</em>-unta Nabi saw, hingga tiba di tengah Padang ‘arafah. Melihat ribuan jamaah yang memenuhi panggilan Allah dan menaati perintah-Nya Baginda saw merasa lega karena umatnya menegakkan islam dengan ikhlas.</li><li>Beliau berniat menanamkan inti ajaran islam didalam hati mereka dengan memanfaatkan pertemuan mulia itu sebagai kesempatan untuk menyampaikan khutbah guna mengikis habis sisa-sisa kejahiliyahan yang masih mengendap dalam jiwa kaum muslimin, menekankan masalah akhlak, hukum, dan hubungan antar sesama muslim, termasuk hubungan suami istri.</li><li>Berdiri dihadapan 100 ribu kaum muslim untuk menyampaikan Khutbah Haji Wada’-haji terakhir Baginda saw.</li></ul><p><strong>Khutbah Haji Wada</strong></p><p><em>“Wahai manusia sekalian, dengarkanlah perkataanku ini, karena aku tidak mengetahui apakah aku dapat menjumpai kalian lagi setelah tahun ini di tempat wukuf ini”.</em></p><p><strong>1. Larangan Membunuh Jiwa dan Mengambil Harta Orang Lain Tanpa Hak</strong></p><p>“Wahai manusia sekalian, Sesungguhnya darah kalian, harta kalian dan kehormatan kalian adalah haram/dilindungi, sebagaimana mulianya hari ini di bulan yang mulia ini, di negeri yang mulia ini”.</p><p><strong>2. Kewajiban Meninggalkan Tradisi Jahiliyah seperti Riba dan Pembunuhan Balasan</strong></p><p>? Ketahuilah sesungguhnya segala tradisi jahiliyah mulai hari ini tidak boleh dilaksanakan lagi.Perjanjian riba yang dilakukan pada masa jahiliyah dihapuskan dan tidak berlaku lagi sejak hari ini. Perjanjian riba pertama yang aku nyatakan tidak berlaku lagi adalah perjanjian riba atas nama pamanku sendiri Abbas bin Abdul Muthalib. Sesungguhnya seluruh perjanjian riba itu semuanya batal dan tidak boleh berlaku lagi.</p><p>? Segala sesuatu yang berkaitan dengan perkara kemanusiaan (seperti pembalasan dendam pembunuhan jahiliyah dan penuntutan darah cara jahiliyah) yang telah terjadi di masa jahiliyah, hari ini semuanya dihapuskan dan tidak boleh berlaku lagi.</p><p>? Dan hari ini aku nyatakan pembatalan yang pertama adalah pembalasan atas terbunuhnya Amir bin al-Haris yang terjadi pada masa jahiliyah dahulu.</p><p><strong>3. Mewaspadai Gangguan Syaitan dan Kewajiban Menjaga Agama</strong></p><p>Wahai manusia sekalian, Sesungguhnya syetan itu telah berputus asa untuk dapat disembah di negeri ini, akan tetapi syetan akan terus berusaha (untuk mengganggu kamu) dengan cara yang lain. Syetan akan berbangga jika kamu sekalian menaatinya untuk melakukan pelanggaran kecil yang terus-menerus. Oleh karena itu hendaklah kamu menjaga agama kamu dengan baik.</p><p><strong>4. Larangan Mengharamkan yang Dihalalkan dan Sebaliknya</strong></p><p>Wahai manusia sekalian, Sesungguhnya mengubah-ubah bulan suci itu akan menambah kekafiran. Dengan cara itulah orang-orang kafir menjadi tersesat. Pada tahun yang satu mereka langgar dan pada tahun yang lain mereka sucikan untuk disesuaikan dengan hitungan yang telah ditetapkan kesuciannya oleh Allah. Kemudian kamu menghalalkan apa yang telah diharamkan Allah dan mengharamkan apa yang telah dihalalkanNya.</p><p><strong>5. Kewajiban Memuliakan Wanita (Isteri)</strong></p><p>? Takutlah kepada Allah dalam bersikap kepada kaum wanita, karena kalian telah mengambil mereka dengan amanah atas nama Allah dan hubungan badan dengan mereka telah dihalalkan bagi kamu sekalian dengan nama Allah.</p><p>? Sesungguhnya kalian mempunyai kewajiban terhadap isteri kalian dan isteri kalian mempunyai kewajiban terhadap diri kalian. Kewajiban mereka terhadap kalian adalah mereka tidak boleh memberi izin masuk orang yang tidak kalian sukai ke dalam rumah kalian. Jika mereka melakukan hal demikian, maka pukullah mereka dengan pukulan yang tidak keras/tidak membahayakan. Sedangkan kewajiban kamu terhadap mereka adalah memberi nafkah, dan pakaian yang baik kepada mereka. Maka perhatikanlah perkataanku ini, wahai manusia sekalian. Sesungguhnya aku telah menyampaikannya.</p><p><strong>6. Kewajiban Berpegang Teguh pada Al-Qur’an dan As- Sunnah</strong></p><p>Aku tinggalkan bagi kamu sekalian. Jika kalian berpegang teguh dengan apa yang aku tinggalkan itu, maka kalian tidak akan tersesat selama-lamanya. Itulah Kitab Allah (Al-Quran) dan sunnah Nabi-Nya (Al-Hadits).</p><p><strong>7. Kewajiban Taat kepada Pemimpin Siapapun Dia Selama Masih Berpegang Teguh pada Al Qur’an.</strong></p><p>Wahai manusia sekalian, dengarkanlah dan ta’atlah kalian kepada pemimpin kalian, walaupun kamu dipimpin oleh seorang hamba sahaya dari negeri Habsyah yang berhidung pesek, selama dia tetap menjalankan ajaran Kitabullah (Al- Quran) kepada kalian semua.</p><p><strong>8. Umat Islam adalah Bersaudara antara Satu dengan Lainnya.</strong></p><p>Wahai manusia sekalian. Dengarkanlah perkataanku ini dan perhatikanlah. Ketahuilah oleh kamu sekalian, bahwa setiap muslim itu adalah saudara bagi muslim yang lain, dan semua kaum muslimin itu adalah bersaudara. Seseorang tidak dibenarkan mengambil sesuatu milik saudaranya kecuali dengan kerelaan pemiliknya yang telah memberikannya dengan senang hati. Oleh sebab itu janganlah kamu menganiaya diri kamu sendiri.</p><p><strong>9. Manusia itu sederajat dan Kewajiban Menyampaikan Khutbah Rasulullah SAW kepada Orang Lain</strong></p><p>Wahai manusia! Sesungguhnya Tuhan kalian satu, dan sesungguhnya kalian berasal dari satu bapak. Kalian semua dari Adam dan Adam dari tanah. Sesungguhnya orang yang paling mulia diantara kalian disisi Allah adalah yang paling takwa. Tidak ada kelebihan bangsa Arab dari yang bukan Arab, kecuali dengan takwa. Wahai umatku! Bukankah aku telah menyampaikan? Ya Tuhan saksikanlah! Karena itu, siapa saja yang hadir diantara kalian di tempat ini berkewajiban untuk menyampaikan wasiat ini kepada mereka yang tak hadir!.</p><p><strong>Mabit di Muzdalifah</strong></p><ul><li>Selesai wukuf di Arafah, ketika matahari telah terbenam dan mega kuning mulai sirna, Rasulullah saw melanjutkan perjalanan dengan untanya bersama Usamah bin Zaid ke Muzdalifah. Sesampainya di sana baginda saw melaksanakan shalat Maghrib dan Isya dengan di jamak qashar dilakukan di waktu Isya’ dengan sekali adzan 2 kali iqamah dan tanpa shalat sunah diantara keduanya. Selepas itu beliau berbaring sampai waktu subuh. Usai shalat Subuh beliau meneruskan perjalanan hingga <em>Masy’ar al-Haram,</em>&nbsp;kemudian berdo’a, bertakbir, bertahlil dan mengucapkan kalimat tauhid. Beliau tetap disana hingga langit kekuning-kuningan.</li><li>Sebelum matahari terbit, Baginda menaiki tunggangannya bersama al-Fadhl bin al-Abbas menuju Jamrah Aqabah. Ketika sampai di Lembah Muhassir (tempat Raja Abrahah dengan tentara Gajahnya dihancurkan Allah, <strong>(QS al-Fil [105]: 1-5 )</strong>, Baginda mempercepat langkah-langkah kaki untanya.</li><li>Baginda saw melempar Jamrah tersebut dengan tujuh buah kerikil dengan bertakbir pada setiap kali lemparan. Beliau melempar dari tengah lembah, setelah itu beliau berpaling.</li><li>Setelah itu beliau menyembelih hewan qurban (hadyu). Beliau menyembelih sebanyak 63 ekor dengan tangan beliau sendiri sesuai dengan usia baginda saw.<ul><li>Ketika hari raya Idul Adha saat tiba dhuha baginda saw menyampaikan khutbah kepada kaum muslim, ada yang berdiri dan ada yang duduk, dari atas bagal.</li><li>Beberapa saat setelah Rasulullah saw menyampaikan khutbah, turunlah firman Allah <strong>(QS. Al-Maidah: 3), </strong>&nbsp;yang artinya; <em>”Pada hari ini telah Kusempurnakan bagi kalian agama kalian dan telah Kucukupkan kepada kalian nikmat-Ku dan islam telah Kuridhai menjadi agama kalian.”</em></li></ul></li></ul><p><strong>Nabi saw Thawaf Ifadhah</strong></p><ul><li>&nbsp;Kemudian Rasulullah saw mengendarai untanya ke Baitullah untuk <em>Thawaf Ifadhah</em>. Lalu memanggil tukang cukur untuk mencukur kepala beliau dimulai separuh kanan lalu yang kiri.</li><li>Aisyah mengolesi baginda saw dengan wewangian</li><li>Nabi saw pergi ke sumur zamzam, meminum airnya</li><li>Sesudah <em>thawaf ifadhah</em>, Nabi dan sahabat yang berhaji <em>Qiran</em>&nbsp;tidak bersa’i lagi. Adapun yang berhaji <em>Tamattu’</em>&nbsp;melaksanakan sa’i.</li><li>Setelah shalat Dzuhur di Makkah Nabi saw kembali ke Mina dan bermalam di Mina selama hari- hari Tasyriq.</li><li>Melempar ketiga jumrah: Ula, Wustha dan ‘Aqabah, pada 11 dzulhijah setelah masuk waktu Dzuhur.</li><li>Rasulullah meninggalkan Mina di hari Tasyriq ketiga yaitu 13 dzulhijah setelah melempar jumrah.</li></ul><p><strong>Thawaf Wada’</strong></p><p>Dalam thawaf ini Beliau tidak melakukan <em>idhthiba’</em>, juga tidak berlari-lari kecil. Setelah shalat subuh baginda saw meninggalkan Makkah menuju Madinah.</p><p>&nbsp;</p><p><strong>Khatimah</strong></p><ul><li>Ibadah haji merupakan momentum muktamar umat Islam untuk menyerukan berbagai solusi bagi umat Islam dan dunia.</li><li>Bangkit atau terpuruknya nasib umat ditentukan oleh sejauhmana keterikatan mereka kepada hukum-hukum Allah.</li><li>Ibadah haji meningkatkan semangat pengorbanan.</li><li>Ibadah haji mengajarkan makna ukhuwah yang sebenarnya.</li><li>Ibadah haji mengajarkan bahwa Islam tidak memisahkan urusan ibadah, keluarga, moral dengan masalah politik, pemerintahan, ekonomi, pidana, sosial dan semua aspek kehidupan.</li><li>Ibadah haji mengajarkan bahwa umat Islam sesungguhnya adalah umat yang satu. Persatuan itu mestinya tidak hanya saat menunaikan ibadah haji saja, tapi merupakan kewajiban mutlak kapanpun dalam segenap aspek kehidupan. Sehingga mutlak dibutuhkan ada satu negara yang menaungi umat diseluruh dunia.</li></ul><br><br><i>Dikutip dari : muslimahactivity.wordpress.com/2014/11/03/perjalanan-haji-dan-umrah-nabi-muhammad-saw/</i>\r\n\r\n<br></p>', '2017-03-06 16:11:16', '1');
INSERT INTO `news` VALUES ('17', 'kgggggggfjdfjkgdkjkjlkjfgk', '170301085218.jpg|', '<h1><b><i>kdnlfvndkjnfjkd?</i><i></i></b><br></h1>', '2017-03-01 14:52:24', '1');
INSERT INTO `news` VALUES ('18', ' HOTEL-HOTEL DI MEKAH DAN MADINAH MANJAKAN JEMAAH INDONESIA', '170306100030.jpg|', '<p>\r\n\r\n</p><p><b>Liputan6.com, Jakarta</b>&nbsp;Sebagai salah satu brand hotel terbesar di dunia, <a target=\"_blank\" rel=\"nofollow\" href=\"http://lifestyle.liputan6.com/read/2175491/hotel-combo-ala-accor-hemat-operasional-perusahaan?source=search\">Accor Hotels</a>&nbsp;mengembangkan berbagai fasilitas yang dapat mendukung berbagai aktivitas yang dilakukan jemaah haji di tanah suci. Hal ini didukung dengan pengembangan kawasan Mekah dan Madinah sebagai pusat <a target=\"_blank\" rel=\"nofollow\" href=\"http://lifestyle.liputan6.com/read/2112166/kumpulan-foto-memukau-ibadah-haji-di-tanah-suci?source=search\" title=\"Link: http://lifestyle.liputan6.com/read/2112166/kumpulan-foto-memukau-ibadah-haji-di-tanah-suci?source=search\">kegiatan haji</a>&nbsp;yang selalu dipenuhi oleh jemaah dari seluruh dunia. Permintaan berbagai pihak akan akomodasi yang beragam menjadi peluang besar yang membuat Accor Hotels membangun berbagai fasilitas baik dari hotel berbiaya rendah hingga mewah.</p><p>“Indonesia menjadi salah satu perhatian utama kami. Selain menjadi negara muslim terbesar, Indonesia memiliki banyak konsumen mulai dari yang ekonomis hingga mewah. Sekitar 20% market haji dan umrah global diisi oleh orang Indonesia,” ungkap Salah Oumuden, Vice President of Accorhotels Operation di Arab Saudi dan Mesir dalam kegiatan kontrak bersama di Faremont Hotel, Jakarta, Selasa (29/11/2016).</p><p>Salah satu lokasi unggulan yang menjadi perhatian Accor Hotels adalah Madinah. Dibuka pada 17 Februari 2016, Pullman Zamzam Madinah sudah menarik minat berbagai pihak. Selain memiliki lokasi yang strategis di Madinah, hotel ini juga memiliki pemandangan indah di sekeliling Masjid Nabawi dan Raudah. Akses menuju hotel ini juga mudah, bisa dengan berjalan kaki maupun dengan shuttle bus yang disediakan.</p><p>Kenyamanan pada jemaah juga diberikan melalui layanan makanan yang diberikan oleh Pullman Zamzam Madinah yang memiliki 836 kamar ini. Dengan membawa chef spesial dari berbagai negara, hotel yang akan dilengkapi dengan pusat perbelanjaan ini menghadirkan cita rasa kuliner asli Indonesia bagi para jamaah yang beribadah.</p><p>“Orang Indonesia merupakan tamu yang berbeda dari yang lainnya. Ketika beribadah haji, mereka sangat menghargai daerah ini dan ingin beribadah di tempat yang tenang. Bila mereka tidak senang, orang Indonesia tetap bertanya dengan sopan pada pegawai kami. Mereka juga senang memakan masakan asli Indonesia ketika beribadah haji,” ungkap Salah.</p><p>Perkembangan di <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.liputan6.com/tag/mekah\">Mekah</a>&nbsp;juga tidak kalah dibandingkan dengan Madinah. Tahun ini saja, ada dua hotel yang dipersiapkan oleh Accor Hotel, yaitu Mercure dan Ibis Style yang akan dibuka bulan Desember 2016. Hotel ini melengkapi jajaran Accor Hotels yang ada di Makkah, setelah dibukanya Fairmont Makkah di Abraj Al Bait Tower.</p><p>“Kami berusaha untuk menjawab berbagai persoalan yang biasanya dirasakan oleh jamaah haji dan umrah yang berkunjung. Bahkan untuk kebutuhan beribadah, kami menyediakan tempat wudhu khusus hingga ruangan ibadah yang memiliki pemandangan Masjidil Haram,” ujar Salah.</p><p>Kerja sama dengan berbagai tour travel ternama di Indonesia juga terus dilakukan oleh Accor Hotels dengan memberikan berbagai solusi bagi masyarakat, untuk menikmati pelayanan dari hotel-hotel Accor di Mekah dan Madinah. Kesepakatan juga terus dibuat di berbagai kota di Indonesia seperti Jakarta, Bandung, Surabaya, dan Bali, agar tercapainya solusi yang terbaik karena tingginya biaya haji dan umrah disebabkan aturan visa baru yang dikeluarkan Kerajaan Arab Saudi.</p><p>“Kami berkunjung langsung ke travel agent di Indonesia, dan kami juga mengundang mereka ke pertemuan ini untuk bekerjasama. Karena Indonesia sangat spesial di mata kami,” tutup Salah.</p><p>Sumber dari : <a target=\"_blank\" rel=\"nofollow\" href=\"http://lifestyle.liputan6.com/read/2664840/hotel-hotel-di-mekah-dan-madinah-manjakan-jemaah-indonesia\">http://lifestyle.liputan6.com/read/2664840/hotel-hotel-di-mekah-dan-madinah-manjakan-jemaah-indonesi.</a></p>\r\n\r\n?<p></p>', '2017-03-06 16:00:33', '1');
INSERT INTO `news` VALUES ('19', 'tes', '170308035342.jpg|', '<p>dfdsfsdfsd</p>', '2017-03-08 09:53:45', '1');
INSERT INTO `news` VALUES ('20', 'tes gdfgfgfdg fgfdgdfgdf dfgfdgfgfdgd ddgfdgfdgfgfd dggfdgfgf', '170308074607.jpg|', '<p>ddggfgfgd</p><p>fgdfgfdgfdgdg</p><p>fggdf</p>', '2017-03-08 13:49:04', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('24', '0', 'PAKET ZIARAH SELAMA DI MADINAH', '161215032222.jpg|', '<p></p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat nonproident, sunt in culpa qui officia deserunt mollit anim id est laborum.<ul><li></li></ul><p></p>', '2016-12-26 15:07:54', '1', '12000', 'None', '0');
INSERT INTO `product` VALUES ('25', '0', 'Paket Haji', '161215032344.jpg|', '<p>\r\n\r\nPada waktu dan tempat yang telah ditentukan para peserta diharapkan sudah berada di Bandara Soekarno-Hatta. Hari ini Anda akan memulai perjalanan menuju kota Hongkong. Setibanya di Hongkong Anda akan langsung menuju Shenzhen. Tiba di Shenzhen, Anda akan diajak berbelanja di Lowu Mall. (Makan Malam) Akomodasi: Century Plaza Hotel atau Setaraf\r\n\r\n</p>', '2016-12-19 13:19:53', '1', '120000', 'None', '0');
INSERT INTO `product` VALUES ('26', '0', 'Mekkah', '161215032402.jpg|', '<p>\r\n\r\n<b>Trend Micro Security System</b> adalah layanan Internet Security dari Telkom untuk pelanggan Internet IndiHome dengan aplikasi Trend Micro sebagai platform. Komputer anda akan terlindung dari serangan virus, malware, spyware, spam, phising dan konten yang tidak layak dari Internet sehingga data dan sistem aplikasi terbatas dari gangguan tersebut.\r\n\r\n</p>', '2016-12-19 13:18:52', '1', '12000', 'None', '0');
INSERT INTO `product` VALUES ('27', '0', 'Haji Plus', '161215032419.jpg|', '<p></p>\r\n\r\n<div><b>Indihome View </b>solusi mudah, cepat dan hemat untuk mengawasi rumah, kantor, toko dengan IP kamera yang dapat diakses menggunakan Smartphone/Laptop kapan saja dan dimana saja. Indihome View terhubung dengan modem wifi Speedy anda, sehingga tidak memerlukan Space memori untuk menyimpan hasil record.</div><div>Untuk berlangganan Indihome View cukup mudah dan murah. hanya Rp.10.000/bulan anda sudah bisa mengawasi rumah/kantor/toko anda secara intens.</div><div><br></div><div><i>- Harga perangkat berupa kamera Rp.550.000</i></div><div><i>- Harga belum termasuk biaya langganan Indihome</i></div>\r\n\r\n<p></p>', '2016-12-19 13:19:24', '1', '10000', 'None', '0');
INSERT INTO `product` VALUES ('30', '0', 'Umroh Premium', '161215032818.jpg|', 'Umroh Premium', '2016-12-15 09:39:12', '1', '$ 12000', 'New', '0');
INSERT INTO `product` VALUES ('31', '0', 'Promo Umroh', '161215034208.jpg|', 'Promo Umroh', '2016-12-15 09:47:32', '1', '$ 120090909', 'None', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk_indihome
-- ----------------------------
INSERT INTO `produk_indihome` VALUES ('1', '1', '9 Hari', '$ 1800', '$ 1875', '$ 1950', '14122016025821');
INSERT INTO `produk_indihome` VALUES ('2', '1', '12 Hari', '$ 1950', '$  2050', '$ 2100', '14122016025821');
INSERT INTO `produk_indihome` VALUES ('3', '2', '9 Hari', '$ 1925', '$ 2040', '$ 2115', '26122016025813');
INSERT INTO `produk_indihome` VALUES ('4', '2', '13 Hari', '$ 2025', '$ 2125', '$ 2225', '26122016025813');
INSERT INTO `produk_indihome` VALUES ('5', '2', '15 Hari', '$ 2115', '$ 2190', '$ 2265', '26122016025813');
INSERT INTO `produk_indihome` VALUES ('6', '3', '9', '$ 2050', '$ 2130', '$ 2180', '01032017030752');
INSERT INTO `produk_indihome` VALUES ('7', '4', '9', '$ 2250', '$ 2700', '$ 2750', '01032017031908');
INSERT INTO `produk_indihome` VALUES ('8', '3', '13', '$ 2180', '$ 2280', '$ 2330', '06032017100013');
INSERT INTO `produk_indihome` VALUES ('9', '4', '12', '$ 2700', '$ 2850', '$ 2900', '06032017100539');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk_indihome_temp
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES ('38', '1', null, '170303075706.jpg|', '2017-03-02', '1', 'aa');
INSERT INTO `slider` VALUES ('42', '2', null, '170303081523.jpg|', '2017-03-03', '1', 'qqq');
INSERT INTO `slider` VALUES ('48', 'regist now22', null, '170304041705.jpg|', '2017-02-28', '1', '22');
INSERT INTO `slider` VALUES ('49', '41232123ww', null, '170306035004.jpg|', '2017-03-06', '1', '');
INSERT INTO `slider` VALUES ('50', '5', null, '170306035151.jpg|', '2017-03-06', '1', null);
INSERT INTO `slider` VALUES ('51', '61', null, '170306035346.jpg|', '2017-03-06', '1', 'xxx');

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
INSERT INTO `tentang` VALUES ('2', '<p>\r\n\r\n</p><h2>\r\n\r\n</h2><h2><u><b>VISI</b></u><b><u></u></b><br></h2><div><p><u><b></b></u><small></small>Memfasilitasi para jamaah untuk beribadah umroh dengan hati yang bersih dan penuh keikhlasan <b></b><br></p><p>Rasulullah SAW bersabda “ Umroh ke Umroh yang lain adalah menghapuskan dosa diantara keduanya. Haji yang mambrur tidak ada lain balasannya selain surga” <br></p></div><h2><u>MISI</u></h2><p></p><ul><li><u></u>Tranparansi dan apa adanya dalam menyampaikan fasilitas dan sarana PT. Uripa dalam menyelenggarakan ibadah umroh, guna menghindari kekecewaan para jamaah <br></li><li>Menyelenggarakn manasik dengan menyentuh hati agar bersih ( biqolbin saliim ) sebelum hari keberangkatan ibadah umroh.<br></li><li>Menghindari pemaksaan dalam marketing umroh dengan memberikan janji-janji yang tidak dibenarkan oleh syariat islam ataupun aturan pemerintah.<br></li><li>Sebelum para jamaah berangkat ( saat di bandara atau di perjalanan ), mengingatkan kembali agar tidak ada permalahan yang menyebabkan keraguan hati dengan doa bersama <br></li><li>Setiap keberangkatan ibadah umroh di dampingi oleh pembimbing dari PT. URIPA agar para jamaah mendapatkan ketenangan dalam beribadah.<br></li><li>Memudahkan dalam ibdah umroh ndengan memberikan fasilitas yang baik dan optimal serta hotel dekat dengan masjidil Harom dan masjid nabawi.<br></li><li>Memberikan pendampingan kepada para jamaah untuk pergi ke tempat-tempat beristijabah baik di makkatul mukarromah maupun madinatul munawaroh.<br></li><li>Selalu memberikan kesempatan kepada para jamaah untuk tanya jawab terkait dengan ibdah di tanah suci serta memberikan jawaban yang tepat dan jelas.<br></li><li>Memberikan waktu musahabah, penyampaian kesan dan pesan pada saaat hari terakhir para jamaah di tanah suci sebagai suatu penilaian objektif para jemaah atas jasa pelayanan.<br></li></ul><p><u><b><br></b></u></p><h2><u><b>MOTTO</b></u><br></h2><div><ul><li><b><u></u></b>Menuju ketenangan jiwa dan keberkahan hidup </li></ul><br></div><h2><b><u>MELALUI MOTTO INI DIHARAPKAN AGAR</u></b></h2><div><ul><li><b><u></u></b>Para jamaah setelah selesai ibadah umroh mendapatkan jiwa serta keberkahan dalam hidupnya sebagai buah dalam beribadahdengan hati yang bersih. <b><u><br></u></b></li><li>Para jamaah setelah pulang dari umroh setiap di tanya jika selalu berucap alhamdulillah maka itu sebagai doa dan bersyukur kepada Allah SWT karena kemudahan dalam beribadah dari fasilitas kita serta saran yang di gunakan dapat memberikan kepuasan kepada para jamaah.<br></li></ul></div><h3><u></u></h3><p></p><br>\r\n\r\n<br><p></p>', '161215045423.jpg|', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('5', null, '1992-07-14', '123456789987654321', 'Admin', 'P', 'singosari', '085721423839', null, '1', 'admin', '9c69c2e28557a737ffc2d3aad9160b76', null, '||product|promo|berita|galery|contact|email|user|slider|kritik|paket|tentang|');

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
