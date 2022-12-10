-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 05:34 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `googlemap`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lon` float(10,6) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `address`, `lat`, `lon`, `description`) VALUES
(1, 'Archaeological Museum', 'Nikola &Scaron;ubić Zrinski Square 19, 10000, Zagreb, Croatia', 45.823704, 15.990757, 'The Archaeological Museum in Zagreb, Croatia is an archaeological museum with over 450,000 varied artifacts and monuments, gathered from various sources.'),
(2, 'Modern Gallery', 'Andrije Hebranga 1, 10000, Zagreb, Croatia', 45.809280, 15.977570, 'Modern Gallery is a museum in Zagreb, Croatia that holds the most important and comprehensive collection of paintings, sculptures and drawings by 19th and 20th century Croatian artists.'),
(3, 'Technical Museum', 'Savska cesta 18, 10000, Zagreb, Croatia', 45.803555, 15.965023, 'The museum was founded in 1954 and it maintains the oldest preserved steam engine in the area, dating from the mid-19th century, which is still operational.'),
(4, 'St. Mark''s Church', 'Saint Mark''s Square 5, 10000, Zagreb, Croatia', 45.816677, 15.973806, 'The Romanesque window found in its south facade is the best evidence that the church must have been built as early as the 13th century as is also the semicircular groundplan of St. Mary''s chapel'),
(5, 'Zagreb Cathedral', 'Kaptol 31, 10000, Zagreb, Croatia', 45.816723, 15.978199, 'Zagreb Cathedral on Kaptol is the most famous building in Zagreb, and the tallest building in Croatia.'),
(6, 'The Grounded Sun', 'Bogovićeva, 10000, Zagreb, Croatia', 45.812180, 15.975432, 'Nine Views is an ambiental installation in Zagreb, Croatia which, together with the sculpture The Grounded Sun, makes up a consistent model of solar system.'),
(7, 'Croatian National Theatre', 'Marshal Tito Square 15, 10000, Zagreb, Croatia', 45.810184, 15.970123, 'The Croatian National Theatre in Zagreb is a theatre located in Zagreb, owned and operated by the Ministry of Culture'),
(8, 'Museum of Contemporary Art', 'Dubrovnik Avenue 17, 10000, Zagreb, Croatia', 45.777695, 15.977888, 'The museum traces its origins from the City Gallery of Contemporary Art which was established in 1954.'),
(9, 'Maksimir Park', 'Maksimir Park, 10000, Zagreb, Croatia', 45.829090, 16.019424, 'Maksimir Park features artificial lakes, an Echo Pavilion and the 19th century Bellevue Pavilion.'),
(10, 'Mimara Museum', 'Trg Franklina Delanoa Roosevelta 5, 10000, Zagreb, Croatia', 0.000000, 0.000000, 'It is located in a late 19th century neo-Renaissance palace. The holdings comprise 3,750 works of art of various techniques and materials, and different cultures and civilizations.'),
(11, 'Strossmayer Gallery of Old Masters', 'Nikola &Scaron;ubić Zrinski Square 11, 10000, Zagreb, Croatia', 45.823704, 15.990757, 'The Strossmayer Gallery holding includes around 4,000 works, of which some 250 are on display, with the remainder in storage, or on display at other museums or gallery institutions in Croatia.'),
(12, 'Vatroslav Lisinski Concert Hall', 'Stjepan Radić Square 4, 10000, Zagreb, Croatia', 0.000000, 0.000000, 'Vatroslav Lisinski Concert Hall is a large concert hall and convention center in Zagreb, Croatia. It is named after Vatroslav Lisinski, a 19th-century Croatian composer.'),
(13, 'Lotr&scaron;čak Tower', 'Dverce, 10000, Zagreb, Croatia', 45.814510, 15.973316, 'The tower, which dates to the 13th century, was built to guard the southern gate of the Gradec town wall.'),
(14, 'Jarun Lake', 'Jarun Lake, 10000, Zagreb, Croatia', 45.783333, 15.916667, 'Jarun Lake is a popular getaway for residents any time of year but especially in the summer when the clear waters are ideal for swimming.'),
(15, 'Botanical Garden', 'Trg Marka Marulica 9a, Zagreb, Croatia (Botanical Gardens)', 0.000000, 0.000000, 'In addition to 10,000 species of plant, including 1800 tropical flora specimens, the landscaping has created restful corners and paths that seem a world away from bustling Zagreb.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
