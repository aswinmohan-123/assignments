-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2016 at 07:01 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `contact_management`
--

CREATE DATABASE contact_management;

use contact_management;
-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL,
  `street_number` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `country_id`) VALUES
(1, 'trivandrum', 1),
(2, 'Kochi', 1),
(3, 'Sheffield', 2),
(4, 'Leeds', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_status_id` (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `parent_id`, `status_id`, `date_created`) VALUES
(1, 'Rachel', 'Green', 0, 1, '2015-07-23 05:25:54'),
(2, 'Monica', 'Geller', 0, 2, '2015-07-23 05:25:54'),
(4, 'Joey', 'Tribbiani', 0, 1, '2015-07-23 05:26:28'),
(5, 'Chandler', 'Bing', 0, 1, '2015-07-23 05:26:57'),
(6, 'Ross', 'Geller', 0, 1, '2015-07-23 05:26:57'),
(7, 'Carol', 'Ross', 0, 2, '2015-07-23 05:28:34'),
(8, 'Richard', 'Burke', 0, 1, '2015-07-23 05:28:34'),
(9, 'Lauren', 'Tom', 0, 1, '2015-07-23 05:30:47'),
(10, 'Tom', 'Selleck', 0, 1, '2015-07-23 05:30:47'),
(11, 'Pete', 'Becker', 0, 1, '2015-07-23 05:31:30'),
(12, 'Jon', 'Favreau', 0, 1, '2015-07-23 05:31:30'),
(13, 'Kathy', '', 0, 1, '2015-07-23 05:32:06'),
(14, 'Leslie', '', 3, 1, '2015-07-23 05:32:06'),
(15, 'Michael', 'Rapaport', 0, 1, '2015-07-23 05:33:09'),
(16, 'Paget', 'Brewster', 0, 1, '2015-07-23 05:33:09'),
(17, 'Paget', 'Brewster', 0, 1, '2015-07-23 05:33:30'),
(18, 'Emma', 'Ross', 6, 1, '2015-07-23 05:34:26'),
(19, 'Emma', 'Ross', 0, 1, '2015-07-23 05:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact_address`
--

CREATE TABLE IF NOT EXISTS `contact_address` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `index_name` (`contact_id`,`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'India'),
(2, 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE IF NOT EXISTS `phone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(20) NOT NULL,
  `type` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_contact_id` (`contact_id`),
  KEY `fk_type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `number`, `type`, `contact_id`, `primary`) VALUES
(1, '78564342', 1, 1, 0),
(2, '9895434', 2, 1, 1),
(3, '23525235', 3, 1, 0),
(4, '346346346', 1, 3, 1),
(5, '43346346', 1, 4, 0),
(6, '346346346', 2, 4, 1),
(7, '346236', 1, 5, 0),
(8, '5626456', 2, 5, 0),
(9, '54456456', 1, 6, 0),
(10, '54634563456', 2, 6, 0),
(11, '436346', 1, 2, 1),
(12, '5464574357', 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phone_type`
--

CREATE TABLE IF NOT EXISTS `phone_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `phone_type`
--

INSERT INTO `phone_type` (`id`, `type`) VALUES
(1, 'WORK'),
(2, 'HOME'),
(3, 'OTHER');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`country_id`),
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`country_id`),
  ADD CONSTRAINT `address_ibfk_3` FOREIGN KEY (`city_id`) REFERENCES `city` (`country_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `city_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  ADD CONSTRAINT `city_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `contact_address`
--
ALTER TABLE `contact_address`
  ADD CONSTRAINT `contact_address_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`),
  ADD CONSTRAINT `contact_address_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`type`) REFERENCES `phone_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `status`) VALUES
(1, 'active'),
(2, 'inactive');

