-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 06:23 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_master`
--

CREATE TABLE `advance_master` (
  `advance_id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `advance_amount` int(11) DEFAULT NULL,
  `advance_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `booking_detail_id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `accompany_name` varchar(40) DEFAULT NULL,
  `checkout_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking_master`
--

CREATE TABLE `booking_master` (
  `booking_id` int(11) NOT NULL,
  `guest_name` varchar(40) DEFAULT NULL,
  `guest_address` varchar(100) DEFAULT NULL,
  `guest_phone` varchar(10) DEFAULT NULL,
  `guest_email` varchar(40) DEFAULT NULL,
  `guest_id_proof` varchar(20) DEFAULT NULL,
  `checkin_date` date NOT NULL,
  `advance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `floor_info`
--

CREATE TABLE `floor_info` (
  `floor_id` int(11) NOT NULL,
  `floor_no` int(11) DEFAULT NULL,
  `floor_status` tinyint(1) DEFAULT NULL,
  `floor_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `floor_info`
--

INSERT INTO `floor_info` (`floor_id`, `floor_no`, `floor_status`, `floor_name`) VALUES
(77, 1, 1, '1st floor'),
(78, 2, 1, '2nd floor'),
(79, 3, 1, '3rd floor'),
(80, 4, 1, '4th floor');

-- --------------------------------------------------------

--
-- Table structure for table `floor_info_backup`
--

CREATE TABLE `floor_info_backup` (
  `floor_id` int(11) NOT NULL,
  `floor_no` int(11) DEFAULT NULL,
  `floor_status` tinyint(1) DEFAULT NULL,
  `floor_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `foreward_master`
--

CREATE TABLE `foreward_master` (
  `transfer_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `of_room` varchar(40) DEFAULT NULL,
  `to_room` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `checkout_date` date NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `bill_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `login_id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `full_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`login_id`, `username`, `password`, `full_name`) VALUES
(1, 'anish', '1234', 'Anish Sharma'),
(2, 'archak', '1234', 'Archak Basak'),
(3, 'gitu', '1001', 'Geeta Sharma'),
(5, 'user001', 'user001', 'Anish');

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

CREATE TABLE `room_info` (
  `room_id` int(11) NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `floor_no` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `upgradable` tinyint(1) DEFAULT NULL,
  `c_room_no` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`room_id`, `room_no`, `floor_no`, `status`, `type`, `upgradable`, `c_room_no`, `rate`, `delete_status`) VALUES
(866, 1, 1, 2, 7, NULL, 101, 0, 0),
(867, 2, 1, 1, 7, NULL, 102, 0, 0),
(868, 3, 1, 1, 7, NULL, 103, 0, 0),
(869, 4, 1, 1, 7, NULL, 104, 0, 0),
(870, 5, 1, 2, 6, NULL, 105, 0, 0),
(872, 7, 1, 1, 6, NULL, 107, 0, 0),
(873, 8, 1, 1, 6, NULL, 108, 0, 0),
(874, 1, 2, 2, 6, NULL, 201, 0, 0),
(875, 2, 2, 1, 6, NULL, 202, 0, 0),
(876, 3, 2, 1, 6, NULL, 203, 0, 0),
(877, 4, 2, 1, 6, NULL, 204, 0, 0),
(879, 5, 2, 1, 7, NULL, 205, 0, 0),
(880, 6, 2, 1, 7, NULL, 206, 0, 0),
(882, 8, 2, 1, 7, NULL, 208, 0, 0),
(883, 7, 2, 1, 7, NULL, 207, 0, 0),
(884, 1, 3, 1, 8, NULL, 301, 0, 0),
(885, 2, 3, 1, 8, NULL, 302, 0, 0),
(886, 3, 3, 2, 8, NULL, 303, 0, 0),
(887, 4, 3, 1, 8, NULL, 304, 0, 0),
(888, 5, 3, 1, 8, NULL, 305, 0, 0),
(889, 1, 4, 1, 7, NULL, 401, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_info_backup`
--

CREATE TABLE `room_info_backup` (
  `room_id` int(11) NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `floor_no` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `upgradable` tinyint(1) DEFAULT NULL,
  `c_room_no` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`type_id`, `type_name`, `rate`) VALUES
(6, 'Standard', 1000),
(7, 'Suite', 2000),
(8, 'Deluxe', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `status_info`
--

CREATE TABLE `status_info` (
  `status_no` int(11) NOT NULL,
  `status_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance_master`
--
ALTER TABLE `advance_master`
  ADD PRIMARY KEY (`advance_id`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`booking_detail_id`);

--
-- Indexes for table `booking_master`
--
ALTER TABLE `booking_master`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `floor_info`
--
ALTER TABLE `floor_info`
  ADD PRIMARY KEY (`floor_id`),
  ADD UNIQUE KEY `floor_no` (`floor_no`),
  ADD UNIQUE KEY `floor_name` (`floor_name`);

--
-- Indexes for table `floor_info_backup`
--
ALTER TABLE `floor_info_backup`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `foreward_master`
--
ALTER TABLE `foreward_master`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `room_info`
--
ALTER TABLE `room_info`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `c_room_no` (`c_room_no`);

--
-- Indexes for table `room_info_backup`
--
ALTER TABLE `room_info_backup`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `status_info`
--
ALTER TABLE `status_info`
  ADD PRIMARY KEY (`status_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance_master`
--
ALTER TABLE `advance_master`
  MODIFY `advance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `booking_detail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `booking_master`
--
ALTER TABLE `booking_master`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `floor_info`
--
ALTER TABLE `floor_info`
  MODIFY `floor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `floor_info_backup`
--
ALTER TABLE `floor_info_backup`
  MODIFY `floor_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `foreward_master`
--
ALTER TABLE `foreward_master`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `room_info`
--
ALTER TABLE `room_info`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=890;
--
-- AUTO_INCREMENT for table `room_info_backup`
--
ALTER TABLE `room_info_backup`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `status_info`
--
ALTER TABLE `status_info`
  MODIFY `status_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for advance_master
--

--
-- Metadata for booking_detail
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hotel_db', 'booking_detail', '{"sorted_col":"`checkout_status`  DESC"}', '2017-01-07 04:55:47');

--
-- Metadata for booking_master
--

--
-- Metadata for floor_info
--

--
-- Metadata for floor_info_backup
--

--
-- Metadata for foreward_master
--

--
-- Metadata for login_master
--

--
-- Metadata for room_info
--

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'hotel_db', 'room_info', '{"sorted_col":"`status` ASC"}', '2017-01-06 16:27:07');

--
-- Metadata for room_info_backup
--

--
-- Metadata for room_type
--

--
-- Metadata for status_info
--

--
-- Metadata for hotel_db
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
