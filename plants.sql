-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 10:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plants`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` int(11) NOT NULL,
  `reg` varchar(30) NOT NULL,
  `orderid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `reg`, `orderid`, `bid`, `price`, `quantity`, `amount`, `status`) VALUES
(48, 'sala', 1, 3, 500, 2, 1000, 1),
(49, 'sala', 2, 3, 500, 2, 1000, 1),
(52, 'jos', 3, 3, 500, 4, 2000, 1),
(53, 'jos', 3, 4, 200, 2, 400, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(10) NOT NULL,
  `psw` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `psw`) VALUES
('admin', '11');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dis` varchar(50) NOT NULL,
  `ferti` varchar(255) NOT NULL,
  `mois` varchar(20) NOT NULL,
  `temp` varchar(20) NOT NULL,
  `water` varchar(50) NOT NULL,
  `weed` varchar(50) NOT NULL,
  `space` varchar(50) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`id`, `name`, `dis`, `ferti`, `mois`, `temp`, `water`, `weed`, `space`, `file`) VALUES
(9, '	 Tomato', 'Powdery mildew', 'Lime-sulfur, Neem oil,', '28', '14%', '100ml', '3monts', '7 inch', 'download.webp'),
(10, 'Strawberry', 'Botrytis Powdery mildew', 'phosphorus potassium ', '23', '16%', '200ml', '2months', '5 inch', 'images.jpg'),
(11, 'Pear', 'Fire blight,Scab', 'nitrogen, phosphorus ', '27', '11%', '3litre', '9months', '4 feet', 'images (1).jpg'),
(12, 'Walnut', 'Walnut blight', 'sulfate granular fertilizer', '27', '11%', '1 litre', '9months', '2 feet', 'download (1).jpg'),
(13, 'Celery', 'Septoria late blight', '4–6 kg of potassium\n', '27', '11%', '1 litre', '9months', '2 feet', 'what-is-celery-5199268-hero.jpg'),
(14, 'Carrot', 'Alternaria leaf blight', 'Potassium chloride', '23', '11%', '100ml', '2months', '2 feet', 'images (2).jpg'),
(15, 'Pistachio', 'Alternaria late blight', 'Nitrogen (N), 1.8%, 2.2 - 2.5%', '27', '11%', '1 litre', '9months', '2 feet', 'download (2).jpg'),
(16, 'Lettuce', 'Downy mildew', '8-15-36 Plus Micro Nutrients', '11', '11%', '1 litre', '9months', '5 inch', 'lettuce.webp'),
(17, 'Almond', 'Shot hole Scab', ' UN-32', '27', '11%', '100ml', '2months', '2 feet', 'download (3).jpg'),
(18, 'Stone Fruit', 'Brown rot', ' calcium nitrate ', '09', '11%', '1 litre', '9months', '2 feet', 'download (4).jpg'),
(19, 'Grape', 'Powdery mildew', 'Potassium chloride', '05', '11%', '100ml', '9months', '5 inch', 'download (5).jpg'),
(20, 'sun flower', 'Botrytis Powdery mildew', 'Ammonium sulfate', '27', '11%', '1 litre', '2months', '2 feet', 'images (3).jpg'),
(21, 'bamboo', 'Powdery mildew', 'nitrogen, phosphorus ', '27', '11%', '1 litre', '9months', '2 feet', 'images (4).jpg'),
(22, 'Scindapsus', 'Botrytis Powdery mildew', 'Ammonium sulfate', '27', '16%', '100ml', '9months', '5 inch', 'pic.webp'),
(23, 'cactus', 'Powdery mildew', 'Potassium chloride', '27', '11%', '1 litre', '2months', '2 feet', 'images (5).jpg'),
(24, 'Frontiers', 'Powdery mildew', 'Ammonium sulfate', '27', '11%', '100ml', '9months', '2 feet', 'WebsiteWebP_M-FPLS_Main Visual_Green_Website.webp'),
(25, 'carnivorous ', 'Botrytis Powdery mildew', 'nitrogen, phosphorus ', '27', '16%', '1 litre', '9months', '5 inch', 'INSECT-EATING-PLANT-FEATURE-compressed.jpg'),
(26, 'spider plant', 'Botrytis Powdery mildew', 'Ammonium sulfate', '27', '11%', '100ml', '9months', '2 feet', 'BHG-spider.jpg'),
(27, 'Brittanica', 'Powdery mildew', 'Potassium chloride', '25', '11%', '1 litre', '9months', '2 feet', 'philodendron.webp'),
(28, 'DYPSIS LUTESCENS', 'Powdery mildew', 'nitrogen, phosphorus ', '27', '16%', '1 litre', '2months', '4 feet', 'dypsis.webp'),
(29, 'money plant', 'Septoria late blight', 'nitrogen, phosphorus ', '27', '11%', '100ml', '9months', '2 feet', '2048x1365-Pilea.jpg'),
(30, 'sutton', 'Powdery mildew', 'Ammonium sulfate', '27', '11%', '1 litre', '9months', '2 feet', 'highlight-flower-plants.jpg'),
(31, 'Green Adelaide', 'Septoria late blight', 'Ammonium sulfate', '27', '16%', '1 litre', '9months', '4 feet', 'spathiphyllum-peace-lily-pixabay.jpg'),
(32, 'Aloe Vera', 'Powdery mildew', 'nitrogen, phosphorus ', '27', '11%', '100ml', '2months', '2 feet', 'images (6).jpg'),
(33, 'Devils ivy Plant', 'Downy mildew', 'Lime-sulfur, Neem oil,', '27', '14%', '1 litre', '9months', '2 feet', 'download (6).jpg'),
(34, 'Lavender Plant', 'Powdery mildew', 'Ammonium sulfate', '27', '11%', '1 litre', '9months', '4 feet', 'download (7).jpg'),
(35, 'Dracaena Plant', 'Powdery mildew', 'nitrogen, phosphorus ', '27', '16%', '100ml', '9months', '2 feet', 'download (8).jpg'),
(36, 'Rosemary Plant', 'Septoria late blight', 'Ammonium sulfate', '27', '11%', '1 litre', '9months', '4 feet', 'licensed-image.jpg'),
(37, 'Hibiscus  Plant', 'Powdery mildew', 'nitrogen, phosphorus ', '27', '11%', '1 litre', '2months', '2 feet', 'download (1).webp'),
(38, 'Lily  Plant', 'Downy mildew', 'Ammonium sulfate', '27', '11%', '100ml', '9months', '2 feet', 'download (2).webp'),
(39, 'Tulip Plant', 'Powdery mildew', 'Ammonium sulfate', '27', '13%', '1 litre', '9months', '2 feet', 'download (3).webp'),
(40, 'Nelumbo nucifera Plant', 'Septoria late blight', 'nitrogen, phosphorus ', '27', '11%', '1 litre', '2 week', '4 feet', 'download (4).webp'),
(41, 'Jasmine Plant', 'Powdery mildew', 'Ammonium sulfate', '27', '16%', '200ml', '9months', '2 feet', 'download (5).webp'),
(42, 'Mint Herb', 'Septoria late blight', 'nitrogen, phosphorus ', '27', '11%', '1 litre', '9months', '2 feet', 'download (6).webp'),
(43, 'Poinsettia Plant', 'Powdery mildew', 'Ammonium sulfate', '27', '11%', '1 litre', '2 week', '2 feet', 'download (7).webp'),
(44, 'Zanzibar Gem Plant', 'Fire blight,Scab', 'nitrogen, phosphorus ', '27', '11%', '1 litre', '9months', '7 inch', 'download (8).webp'),
(45, 'Fig trees Plant', 'Powdery mildew', 'Ammonium sulfate', '15', '11%', '200ml', '9months', '2 feet', 'download (9).webp'),
(46, 'Basil Herb', 'Downy mildew', 'phosphorus potassium ', '27', '13%', '1 litre', '2 week', '2 feet', 'download (10).webp'),
(47, 'Eucalyptus Plant', 'Powdery mildew', 'Ammonium sulfate', '23', '11%', '1 litre', '9months', '7 inch', 'download (11).webp'),
(48, 'Agave Plant', 'Septoria late blight', 'nitrogen, phosphorus ', '27', '13%', '200ml', '9months', '2 feet', 'download (12).webp'),
(49, 'Olive Plant', 'Powdery mildew', 'Ammonium sulfate', '21', '11%', '1 litre', '2 week', '2 feet', 'download (10).jpg'),
(50, 'Chrysanthemum Plant', 'Powdery mildew', 'phosphorus potassium ', '27', '13%', '1 litre', '9months', '7 inch', 'download (14).webp'),
(51, 'Hydrangea Plant', 'Septoria late blight', 'Ammonium sulfate', '26', '11%', '200ml', '9months', '2 feet', 'download (15).webp'),
(52, 'Philodendron Plant', 'Powdery mildew', 'nitrogen, phosphorus ', '24', '11%', '1 litre', '2 week', '2 feet', 'download (16).webp'),
(53, 'Soybean plant', 'Powdery mildew', 'Potassium chloride', '17', '13%', '1 litre', '9months', '7 inch', 'download (11).jpg'),
(54, ' Begonia ', 'Septoria late blight', 'Ammonium sulfate', '13', '11%', '1 litre', '9months', '2 feet', 'Begonia-min-300x200.jpg'),
(55, 'Orchid', 'Powdery mildew', 'nitrogen, phosphorus ', '19', '11%', '200ml', '2 week', '2 feet', 'orchid-min-300x200.jpg'),
(56, 'Pansy', 'Septoria late blight', 'phosphorus potassium ', '15', '11%', '1 litre', '9months', '2 feet', 'Pansy-min-300x254.jpg'),
(57, 'Marigold', 'Powdery mildew', 'Lime-sulfur, Neem oil,', '28', '13%', '1 litre', '9months', '3 feet', 'Marigold-min-300x170.jpg'),
(58, ' Buttercup', 'Fire blight,Scab', 'Ammonium sulfate', '21', '11%', '200ml', '2 week', '2 feet', 'Buttercup-min-300x200.jpg'),
(59, 'Azalea', 'Powdery mildew', 'nitrogen, phosphorus ', '18', '14%', '1 litre', '9months', '2 feet', 'Azalea-min-300x200.jpg'),
(60, 'Holly', 'Fire blight,Scab', 'Ammonium sulfate', '23', '11%', '1 litre', '9months', '2 feet', 'Holly-min-300x188.jpg'),
(61, 'Sweet Cherry', 'Powdery mildew', 'phosphorus potassium ', '26', '13%', '200ml', '2 week', '3 feet', 'Sweet-Cherry-Tree-min-300x200.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `uname`, `psw`) VALUES
(5, 'sala', 'fantasyphpproject@gmail.com', 'sala', '111'),
(9, 'safa', 'admin@admin.com', 'safa', '111'),
(10, 'harini', 'harini14@gmail.com', 'hari', '111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
