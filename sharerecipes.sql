-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 03:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sharerecipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `is_active`) VALUES
(1, 'Minuman', 1),
(2, 'Makanan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `materials` text NOT NULL,
  `procedures` text NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `user_id`, `category_id`, `materials`, `procedures`, `is_active`, `thumbnail`) VALUES
(4, 'Rawon', 2, 2, '<p><strong>Bahan - Bahan :</strong></p><ol><li>500 gram daging sapi (pilih potongan daging yang Anda sukai, seperti daging sandung lamur)</li><li>2 batang serai, memarkan</li><li>4 lembar daun salam</li><li>2 lembar daun kunyit</li><li>2 lembar jaun jeruk</li><li>2 cm lengkuas, memarkan</li><li>3-4 sendok minyak goreng</li><li>2 liter air</li><li>Garam secukupnya</li><li>Gula secukupnya</li><li>Air asam jawa secukupnya</li></ol><p><strong>Bumbu Halus :</strong></p><ol><li>5 siung bawang putih</li><li>10 siuang bawang merah</li><li>6 butir kemiri sangrai</li><li>1 sendok teh terasi (opsional)</li><li>2 sendok makan ketumbar bubuk</li><li>2 cm kencur</li></ol><p><strong>Bahan Pelengkap :</strong></p><ol><li>Tauge</li><li>Telur rebus</li><li>Kerupuk udang</li><li>Bawang merah goreng</li><li>Irisan jeruk nipis</li></ol>', '<ol><li>Siapkan daging sapi dan rebus dalam air mendidih hingga empuk</li><li>Selama daging direbus, panaskan minyak goreng dalam wajan. Tumis bumbu halus hingga harum dan berubah warna. Pastikan tidak terlalu garing</li><li>Setelah daging empuk, angkat dan potong-potong sesuai selera. Simpan kaldu dari rebusan daging untuk digunakan nanti</li><li>Masukkan daging yang telah dipotong ke dalam wajan bersama dengan bumbu halus yang sudah ditumis. Tambahkan serai, daun salam, daun jeruk, lengkuas, dan jahe</li><li>Tambahkan air kaldu daging yang sudah disimpan tadi. Biarkan semua bahan mendidih dan kuahnya meresap dengan baik. Anda dapat menambahkan garam, gula, dan air asam jawa secukupnya untuk mendapatkan rasa yang sesuai dengan selera Anda</li><li>Setelah kuahnya matang dan beraroma harum, angkat rawon dari api</li><li>Sajikan rawon dalam mangkuk. Hidangkan dengan tauge, telur rebus, kerupuk udang, bawang merah goreng, dan irisan jeruk nipis</li></ol>', 1, 'assets/thumbs/2023121909032865814e5080074.png'),
(5, 'Nasi Goreng', 2, 2, '<p><strong>Bahan - Bahan :</strong></p><ol><li>Nasi putih 2 piring</li><li>2 terlu ayam</li><li>1/4 Daging ayam suwir</li><li>5 buah sosis potong dadu</li><li>1 batang daun bawang</li><li>2 sd/m kecap manis</li><li>Minyak goreng</li></ol><p><strong>Bumbu Halus :</strong></p><ol><li>4 siung bawang putih</li><li>5 siuang bawang merah</li><li>1 butir kemiri sangrai</li><li>1/2 std terasi bakar</li><li>5 cabai merah keriting</li><li>3 cabai rawit</li><li>1/2 buah tomat</li><li>1 sdt garam</li></ol><p><strong>Bahan Pelengkap </strong>:</p><ol><li>Iris timun</li><li>Bawang goreng</li><li>Kerupuk</li></ol>', '<ol><li>Panaskan minyak. Tumis bumbu halus samapai harum dan sisihkan di pingir wajan</li><li>Masukkan telur aduk hingga berbutir</li><li>Masukkan suwiran daging ayam,sosis dan aduk rata</li><li>Masukkan kecap secukupnya, aduk hingga rata dan hingga matang</li><li>Sajikan dalam piring dan tambahkan irisan timun, bawang goreng dan kerupuk</li><li>Nasi goreng siap untuk dihidangkan</li></ol>', 1, 'assets/thumbs/2023121909091565814fabb75ee.png'),
(6, 'Rendang', 3, 2, '<p>Bahan - Bahan :</p><ol><li>500 gram daging sapi (pilih potongan bagian yang berlemak)</li><li>2 lembar daun kunyit</li><li>2 lembar daun jeruk</li><li>2 batang serai, memarkan</li><li>4 lembar daun salam</li><li>400 ml santan kelapa kental</li><li>200 ml santan kelapa encer</li><li>2 sendok makan minyak kelapa atau minyak sayur</li></ol><p>Bumbu Halus :</p><ol><li>8 siung bawang merah</li><li>4 siuang bawang putih</li><li>4 buah cabai merah</li><li>2 cm jahe</li><li>2 cm kunyit</li><li>2 cm lengkuas</li><li>2 sendok teh ketumbar</li><li>1 sendok teh jintan</li><li>3 butir kemiri</li></ol><p>Bumbu Kering :</p><ol><li>1 sendok makan kelapa parut, sangrai hingga kecoklatan</li><li>Garam secukupnya</li><li>Gula secukupnya</li></ol>', '<ol><li>Haluskan semua bahan bumbu halus</li><li>Panaskan minyak dalam wajan, tumis bumbu halus hingga harum dan matang</li><li>Masukkan serai, daun kunyit, daun jeruk, dan daun salam ke dalam tumisan bumbu. Aduk hingga rata</li><li>Tambahkan potongan daging sapi ke dalam tumisan. Aduk rata hingga daging berubah warna.</li><li>Tuangkan santan kelapa kental dan santan kelapa encer ke dalam wajan. Aduk hingga rata</li><li>Masukkan kelapa parut sangrai, garam, dan gula secukupnya. Aduk rata dan biarkan mendidih</li><li>Setelah mendidih, kecilkan api dan biarkan rendang masak dengan api kecil hingga santan mengental, dan daging empuk (Proses ini memakan waktu beberapa jam, dan rendang akan menjadi kering dan berwarna kecokelatan)</li><li>Setelah matang angkat dan sajikan rendang dalam piring.</li></ol>', 1, 'assets/thumbs/20231219093029658154a599099.jpeg'),
(7, 'Ayam Bumbu Rujak', 3, 2, '<p>Bahan - Bahan :</p><ol><li>500 gram potongan ayam (daging tanpa tulang)</li><li>3 sendok makan minyak sayur</li><li>2 sendok makan air jeruk limo</li><li>Garam secukupnya</li></ol><p>Bahan Bumbu Rujak :</p><ol><li>5 buah cabai merah (sesuaikan dengan tingkat kepedasan yang diinginkan)</li><li>4 buah bawang merah</li><li>3 siung bawang putih</li><li>2 buah tomat merah</li><li>2 sendok makan gula merah atau gula jawa, serut halus</li><li>1 sendok teh terasi (opsional, sesuai selera)</li><li>Garam secukupnya</li></ol>', '<ol><li>Bersihkan dan cuci potongan ayam. Letakkan dalam mangkuk besar.</li><li>Tambahkan air jeruk limo, minyak sayur, dan sedikit garam ke dalam mangkuk dengan ayam. Aduk rata dan biarkan marinasi selama minimal 30 menit.</li><li>Panaskan panggangan atau grill, kemudian panggang potongan ayam hingga matang dan berwarna kecokelatan di kedua sisinya. Pastikan ayam matang sempurna.</li><li>Sementara ayam dipanggang, siapkan bumbu rujak. Haluskan cabai merah, bawang merah, bawang putih, dan tomat di dalam cobek atau blender. Jika Anda menggunakan terasi, tambahkan juga saat menghaluskan.</li><li>Panaskan sedikit minyak dalam wajan, tumis bumbu halus hingga harum dan berubah warna, dan masak hingga minyak terpisah.</li><li>Tambahkan gula merah atau gula jawa yang sudah dihaluskan, serta garam secukupnya. Aduk rata.</li><li>Setelah ayam matang, tambahkan potongan ayam yang sudah dipanggang ke dalam wajan dengan bumbu rujak. Aduk rata hingga ayam terbalut dengan b</li></ol>', 1, 'assets/thumbs/2023121910034265815c6ea5041.jpeg'),
(8, 'Mango Smoothie', 3, 1, '<ol><li>2 mangga matang, kupas dan potong-potong</li><li>1 pisang matang</li><li>1 cangkir yoghurt plain</li><li>1/2 cangkir air</li><li>1-2 sendok makan madu atau gula (opsional)</li><li>Es serut (opsional)</li><li>Daun mint untuk hiasan (opsional)</li></ol>', '<ol><li>Kupas dan potong-potong mangga.</li><li>Kupas pisang dan potong menjadi potongan-potongan kecil.</li><li>Masukkan potongan mangga, potongan pisang, yoghurt, dan air ke dalam blender.</li><li>Jika Anda ingin smoothie lebih manis, tambahkan madu atau gula sesuai selera.</li><li>Jika suka, tambahkan beberapa es serut untuk tekstur yang lebih dingin dan kenyal.</li><li>Blender semua bahan hingga menjadi konsistensi yang halus dan creamy.</li><li>Tuangkan smoothie ke dalam gelas saji.</li><li>Hias dengan daun mint jika diinginkan.</li><li>Sajikan segera dan nikmati Mango Smoothie segar!</li></ol>', 1, 'assets/thumbs/2023121910123165815e7f77ac1.jpg'),
(10, 'Kopi Susu Gula Aren', 4, 1, '<ol><li>2 sendok makan kopi bubuk (sesuai selera)</li><li>200 ml air panas</li><li>2 sendok teh gula aren (atau sesuai selera)</li><li>100 ml susu evaporasi atau susu kental manis (sesuai selera)</li><li>Es batu secukupnya (opsional)<br>&nbsp;</li></ol>', '<ol><li>Campur kopi bubuk dengan air panas. Aduk hingga kopi larut sepenuhnya.</li><li>Tambahkan gula aren ke dalam kopi yang sudah diseduh. Aduk rata hingga gula aren larut. Anda dapat menyesuaikan jumlah gula aren sesuai dengan tingkat ke manisan yang diinginkan.</li><li>Tambahkan susu evaporasi atau susu kental manis ke dalam kopi. Aduk rata. Jika suka, Anda juga bisa menggunakan susu segar.</li><li>&nbsp;Jika ingin menikmati kopi susu dingin, tambahkan es batu ke dalam gelas atau cangkir.</li><li>Kopi Susu Gula Aren siap disajikan. Nikmati kelezatan rasa kopi yang dipadukan dengan kelembutan susu dan keistimewaan gula aren.</li></ol><p>&nbsp;</p>', 1, 'assets/thumbs/202312200233316582446bf1c93.jpg'),
(11, 'Es Dawet ', 4, 1, '<p><strong>1. Bahan Dawet (cendol):</strong></p><ul><li>100 gram tepung beras</li><li>sendok teh air kapur sirih</li><li>300 ml air matang</li></ul><p><strong>2. Bahan Sirup Kelapa:</strong></p><ul><li>200 ml air kelapa</li><li>100 gram gula merah, serut halus</li><li>1 lembar daun pandan, simpulkan</li></ul><p><strong>3. Bahan Tambahan:</strong></p><ul><li>Es serut atau es batu secukupnya</li><li>Santan kental dari 200 ml kelapa parut dan sedikit garam<br>&nbsp;</li></ul>', '<p><strong>1. Membuat Dawet:</strong><br>&nbsp; - Campur tepung beras dengan air kapur sirih dan air matang. Aduk rata hingga tidak ada gumpalan.<br>&nbsp; - Saring adonan tersebut ke dalam panci dengan saringan berlubang kecil agar diperoleh butiran kecil (cendol).<br>&nbsp; - Didihkan air dalam panci hingga mendidih. Masukkan adonan tepung beras saringan dan aduk perlahan hingga membentuk dawet. Angkat dan tiriskan.</p><p><strong>2. Membuat Sirup Kelapa:</strong><br>&nbsp; - Rebus air kelapa dengan gula merah serut dan daun pandan hingga mendidih dan gula larut. Angkat dan saring untuk mendapatkan sirup kelapa.</p><p><strong>3. Membuat Santan Kental:</strong><br>&nbsp; - Parut kelapa dan peras untuk mendapatkan santan kental. Tambahkan sedikit garam dan aduk rata.</p><p><strong>4. Menyajikan Es Dawet:</strong><br>&nbsp; - Ambil beberapa helai dawet dan letakkan di dalam mangkuk atau gelas.<br>&nbsp; - Tambahkan es serut atau es batu di atas dawet.<br>&nbsp; - Siramkan sirup kelapa secukupnya.<br>&nbsp; - Tambahkan santan kental di atasnya.</p><p><strong>5. Sajikan Dingin:</strong><br>&nbsp; - Es Dawet siap disajikan. Pastikan untuk menyajikannya dingin untuk sensasi segar yang maksimal.<br>&nbsp;</p>', 1, 'assets/thumbs/202312200238236582458fb1333.jpg'),
(12, 'Teh Talua', 4, 1, '<ol><li>2 sendok makan teh celup (atau sesuai selera)</li><li>2 butir telur ayam, kuningnya saja</li><li>2 sendok makan susu kental manis</li><li>2 sendok makan air jeruk nipis</li><li>Air panas secukupnya</li><li>Gula pasir secukupnya (sesuai selera)<br>&nbsp;</li></ol>', '<p><strong>1. Buat Teh:</strong></p><ul><li>Celupkan teh celup ke dalam air panas. Biarkan teh meresap dan mendidih selama beberapa menit hingga mendapatkan teh yang kuat.</li></ul><p><strong>2. Saring Teh:</strong></p><ul><li>Saring teh celup yang sudah dihasilkan untuk mendapatkan cairan teh yang bersih. Anda bisa menggunakan saringan teh atau saringan kopi.</li></ul><p>3.Campurkan Telur dan Bahan Lainnya:</p><ul><li>Pecahkan telur dan ambil kuningnya saja. Masukkan kuning telur ke dalam mangkuk.</li><li>Tambahkan susu kental manis ke dalam mangkuk yang berisi kuning telur.</li><li>Tuangkan air jeruk nipis ke dalam campuran kuning telur dan susu. Aduk hingga rata.</li></ul><p><strong>4. Campurkan dengan Teh:</strong></p><ul><li>Tuangkan perlahan campuran kuning telur, susu, dan jeruk nipis ke dalam teh yang sudah disaring. Aduk rata.</li></ul><p><strong>5. Tambahkan Gula:</strong></p><ul><li>Tambahkan gula pasir sesuai selera. Aduk kembali hingga gula larut sempurna.</li></ul><p><strong>6. Sajikan:</strong></p><ul><li>Teh Talua siap disajikan. Anda dapat menyajikannya panas atau dingin sesuai selera. Bisa ditambahkan es batu jika diinginkan.</li></ul><p>&nbsp;</p>', 1, 'assets/thumbs/20231220025240658248e8bf57b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `photo`, `is_active`) VALUES
(1, 'shabrina', 'shabrina26', '$2y$10$ggpkkoe5zAOMwIad24n7N.INkxDpks4LFZflzbAmSoI1ZHC1QAWdy', NULL, 1),
(2, 'Jahra', 'Jahra08', '$2y$10$VUEeNErCMwCmbk51HqvFOe5kRBnOryOlKzj7cX8LjtV0m246xQZlG', NULL, 1),
(3, 'amandasovi', 'amanda22', '$2y$10$ER8d0romUyL1eHbvp1IeBe1TJQ92lZR8pFkjlnaBkyxXirVTBLoNS', NULL, 1),
(4, 'Mellani Silvia', 'via39', '$2y$10$Sg/4G17KRZVvur3o21b2C.3XdpacOlzJu80RRaeCo/j3R7f0tPuiC', NULL, 1),
(5, 'Lady', 'lady10', '$2y$10$58agr1kJwcN/HmnC63jVMOWcTOzqvcUl53xd0quEQMP9m/X9TEXj2', NULL, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_recipes`
-- (See below for the actual view)
--
CREATE TABLE `vw_recipes` (
`id` int(11)
,`title` varchar(255)
,`user_id` int(11)
,`user_name` varchar(255)
,`category_id` int(11)
,`category_name` varchar(255)
,`materials` text
,`procedures` text
,`thumbnail` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_recipes`
--
DROP TABLE IF EXISTS `vw_recipes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_recipes`  AS SELECT `recipes`.`id` AS `id`, `recipes`.`title` AS `title`, `recipes`.`user_id` AS `user_id`, `users`.`name` AS `user_name`, `recipes`.`category_id` AS `category_id`, `categories`.`name` AS `category_name`, `recipes`.`materials` AS `materials`, `recipes`.`procedures` AS `procedures`, `recipes`.`thumbnail` AS `thumbnail` FROM ((`recipes` join `users` on(`recipes`.`user_id` = `users`.`id`)) join `categories` on(`recipes`.`category_id` = `categories`.`id`)) WHERE `recipes`.`is_active` = 1 AND `categories`.`is_active` = 1 AND `users`.`is_active` = 1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `recipes_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
