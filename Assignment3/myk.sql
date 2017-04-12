-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2017 at 01:05 PM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myk`
--

-- --------------------------------------------------------

--
-- Table structure for table `listofcars`
--

CREATE TABLE `listofgames` (
  `id` int(10) NOT NULL DEFAULT '0',
  `picture` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `gprice` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='List of Games';

--
-- Dumping data for table `listofgames`
--

INSERT INTO `listofgames` (`id`, `picture`, `title`, `gprice`, `discount`) VALUES
(1, 'images/nissan.jpg', 'Nissan',1000, 3),
(2, 'images/isuzu.jpg', 'Isuzu',79000, 5),
(3, 'images/mitsubishi.jpg', 'Mitsubishi ',36800,5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
