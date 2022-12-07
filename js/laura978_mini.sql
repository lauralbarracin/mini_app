-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2022 at 06:32 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laura978_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_colors`
--

CREATE TABLE `mini_colors` (
  `mini_id` tinyint(3) UNSIGNED NOT NULL,
  `mini_colorextra` tinytext NOT NULL,
  `mini_colorint` varchar(150) NOT NULL,
  `mini_colorext` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mini_colors`
--

INSERT INTO `mini_colors` (`mini_id`, `mini_colorextra`, `mini_colorint`, `mini_colorext`) VALUES
(1, 'purple, red, yellow, blue', 'red, beige, black, white', 'blue, red, green, white, beige'),
(2, 'purple, red, yellow, blue, green', 'white, black, beige', 'black, red, beige'),
(3, 'purple, red, yellow, blue', 'red, beige, black, white', 'blue, red, green, white, beige'),
(4, 'purple, red, yellow, blue, green', 'white, black, beige', 'black, red, beige');

-- --------------------------------------------------------

--
-- Table structure for table `mini_equipment`
--

CREATE TABLE `mini_equipment` (
  `mini_id` tinyint(3) UNSIGNED NOT NULL,
  `mini_wheels` varchar(150) NOT NULL,
  `mini_mirrors` varchar(150) NOT NULL,
  `mini_headlights` text NOT NULL,
  `mini_frontseats` text NOT NULL,
  `mini_rearseats` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mini_equipment`
--

INSERT INTO `mini_equipment` (`mini_id`, `mini_wheels`, `mini_mirrors`, `mini_headlights`, `mini_frontseats`, `mini_rearseats`) VALUES
(1, '16 alloy wheels', 'four options available for this model', 'adaptive leds', '6 way manual front wheels', 'rear seat 60-40 split folding'),
(2, '3 sport spoke available', 'six options available for this model', 'adaptive led headlights with cornering functions', 'six-way manual front seats', '60-40 split folding'),
(3, '16 alloy wheels', 'four options available for this model', 'adaptive leds', 'four-way manual front seat ', 'rear seat 60-40 split folding'),
(4, '3 sport spoke available', 'two options are available on external features', 'adaptive led headlights and led taillights with Union Jack design', 'six-way manual front seats', '60-40 split folding');

-- --------------------------------------------------------

--
-- Table structure for table `mini_models`
--

CREATE TABLE `mini_models` (
  `min_id` tinyint(3) UNSIGNED NOT NULL,
  `min_name` text NOT NULL,
  `min_price` mediumint(6) NOT NULL,
  `min_engine` varchar(150) NOT NULL,
  `min_output` varchar(100) NOT NULL,
  `min_boreandstroke` varchar(100) NOT NULL,
  `min_maxtorque` varchar(80) NOT NULL,
  `min_displacement` mediumint(4) NOT NULL,
  `min_power` varchar(80) NOT NULL,
  `min_topspeed` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mini_models`
--

INSERT INTO `mini_models` (`min_id`, `min_name`, `min_price`, `min_engine`, `min_output`, `min_boreandstroke`, `min_maxtorque`, `min_displacement`, `min_power`, `min_topspeed`) VALUES
(1, '3 Door', 40767, '4 cylinder twin power turbocharged engine', '189hp 4500 6000', '82.0 x 94.6', '189hp 207lb ft torque', 1499, '3 cylinder 189hp twin power turbo technology', '200 km hr'),
(2, '5 Door', 39767, '4 cylinder twin power turbocharged engine', '189 hp 207 lbft torque', '82.0 x 94.6', '162 ftlb 1480 4100', 1998, '4 cylinder 189hp twin power turbocharged engine', '210 km h'),
(3, 'Cooper Convertible S ', 46356, '4 Cylinder 16 valve Twin scroll turbo', '189 hp 5000 6000', '82.0 x 94.6', '207 ft lb 1350 4600', 1998, '4 Cylinder 189 hp twin scroll turbo technology', '230 km h'),
(4, 'Cooper Convertible John Cooper ', 46356, '4 Cylinder 16 valve Twin scroll turbo', '228 hp 5200 6000', '82.0 x 94.6', '236 ft lb 1550 4800', 1998, '4 Cylinder 228 hp twin scroll turbo technology', '240 km h');

-- --------------------------------------------------------

--
-- Table structure for table `mini_price`
--

CREATE TABLE `mini_price` (
  `min_id` tinyint(3) UNSIGNED NOT NULL,
  `min_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mini_price`
--

INSERT INTO `mini_price` (`min_id`, `min_price`) VALUES
(1, 40767),
(2, 39767),
(3, 46356),
(4, 46356);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mini_colors`
--
ALTER TABLE `mini_colors`
  ADD PRIMARY KEY (`mini_id`);

--
-- Indexes for table `mini_equipment`
--
ALTER TABLE `mini_equipment`
  ADD PRIMARY KEY (`mini_id`);

--
-- Indexes for table `mini_models`
--
ALTER TABLE `mini_models`
  ADD PRIMARY KEY (`min_id`);

--
-- Indexes for table `mini_price`
--
ALTER TABLE `mini_price`
  ADD PRIMARY KEY (`min_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mini_colors`
--
ALTER TABLE `mini_colors`
  MODIFY `mini_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mini_equipment`
--
ALTER TABLE `mini_equipment`
  MODIFY `mini_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mini_models`
--
ALTER TABLE `mini_models`
  MODIFY `min_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mini_price`
--
ALTER TABLE `mini_price`
  MODIFY `min_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
