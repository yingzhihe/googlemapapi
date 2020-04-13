-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2020 at 06:26 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `helpmapper`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinates`
--

DROP TABLE IF EXISTS `coordinates`;
CREATE TABLE IF NOT EXISTS `coordinates` (
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `building` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` decimal(8,6) NOT NULL,
  `longitude` decimal(9,6) NOT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coordinates`
--

INSERT INTO `coordinates` (`location`, `building`, `area`, `latitude`, `longitude`) VALUES
('CB019', 'E. H. Crandell', 'SAIT', '51.065912', '-114.089356'),
('E314', 'John Ware', 'SAIT', '51.064766', '-114.087983'),
('G133', 'E. H. Crandell', 'SAIT', '51.066347', '-114.086621'),
('G140', 'E. H. Crandell', 'SAIT', '51.066434', '-114.086277'),
('MB228', 'Stan Grad Centre', 'SAIT', '51.064867', '-114.089582'),
('MB320', 'Stan Grad Centre', 'SAIT', '51.065453', '-114.088841'),
('MD307', 'Stan Grad Centre', 'SAIT', '51.065106', '-114.088965'),
('NH101', 'Senator Burns', 'SAIT', '51.064243', '-114.087232'),
('NH110', 'Senator Burns', 'SAIT', '51.064108', '-114.087629'),
('NR112', 'Senator Burns', 'SAIT', '51.064139', '-114.085644'),
('TT203', 'Thomas Riley', 'SAIT', '51.065679', '-114.090558');

-- --------------------------------------------------------

--
-- Table structure for table `incidents`
--

DROP TABLE IF EXISTS `incidents`;
CREATE TABLE IF NOT EXISTS `incidents` (
  `number` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(1) NOT NULL,
  `description` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `samaccountname` varchar(31) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`number`),
  KEY `samaccountname` (`samaccountname`),
  KEY `location` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `incidents`
--

INSERT INTO `incidents` (`number`, `category`, `priority`, `description`, `samaccountname`, `location`) VALUES
(00000001, 'Printer', 3, 'The printer is out of paper', 'andrei.popa', 'MB320'),
(00000002, 'Security', 1, 'The door to the capstone room needs to be unlocked.', 'patrick.stock', 'MD307'),
(00000003, 'Hardware', 3, 'The USB ports on the left side of my laptop don\'t work.', 'adnan.rafih', 'G140'),
(00000004, 'Projector', 2, 'The picture is really dim, it\'s hard to see what is being projected.', 'andrei.popa', 'G133');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `samaccountname` varchar(31) COLLATE utf8_unicode_ci NOT NULL,
  `givenname` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `userprincipalname` varchar(41) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`samaccountname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`samaccountname`, `givenname`, `surname`, `userprincipalname`) VALUES
('adnan.rafih', 'adnan', 'rafih', 'adnan.rafih@parpas.ca'),
('andrei.popa', 'andrei', 'popa', 'andrei.popa@parpas.ca'),
('patrick.stock', 'patrick', 'stock', 'patrick.stock@parpas.ca');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `incidents`
--
ALTER TABLE `incidents`
  ADD CONSTRAINT `location` FOREIGN KEY (`location`) REFERENCES `coordinates` (`location`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `samaccountname` FOREIGN KEY (`samaccountname`) REFERENCES `users` (`samaccountname`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
