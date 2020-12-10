-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 07:41 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('meet@admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_no` int(30) NOT NULL,
  `patient_id` int(30) NOT NULL,
  `speciality` varchar(30) NOT NULL,
  `medical_condition` text DEFAULT NULL,
  `doctors_suggestion` varchar(30) DEFAULT NULL,
  `payment_amount` int(199) DEFAULT NULL,
  `case_closed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_no`, `patient_id`, `speciality`, `medical_condition`, `doctors_suggestion`, `payment_amount`, `case_closed`) VALUES
(59, 85, 'Dentist', 'Good', 'Submit Amount', NULL, 'no'),
(60, 86, 'Audiologist', 'bAD', NULL, NULL, 'no'),
(61, 87, 'Cardiologist', 'Good', NULL, NULL, 'no'),
(62, 88, 'Dentist', 'Visit', NULL, NULL, 'no'),
(63, 89, 'Dentist', 'Good', NULL, NULL, 'no'),
(64, 90, 'Allergist', 'Good', NULL, NULL, 'no'),
(65, 91, 'Dentist', 'Bad', NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `clerks`
--

CREATE TABLE `clerks` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='stores information about clerk';

--
-- Dumping data for table `clerks`
--

INSERT INTO `clerks` (`email`, `password`, `fullname`) VALUES
('prateek@gmail.com', 'prateek', 'Prateek'),
('shrey@gmail.com', 'shrey', 'Shrey');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `speciality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`email`, `password`, `fullname`, `speciality`) VALUES
('aakash@gmail.com', 'aakash', 'Aakash', 'Allergist'),
('anurag@gmail.com', 'anurag', 'Anurag', 'Dentist');

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
  `patient_Id` int(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `DOB` int(10) NOT NULL,
  `weight` int(8) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `address` varchar(260) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='patient';

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`patient_Id`, `full_name`, `DOB`, `weight`, `phone_no`, `address`) VALUES
(85, 'Rikki Singh', 19, 100, '9876543210', 'hdyusfyhwv'),
(86, 'Rajveer', 20, 50, '98774563210', 'cbugfiehwF'),
(87, 'Rikki Singh', 20, 100, '123654789', 'jeuHFEHWFIUEW'),
(88, 'Neel Shah', 35, 85, '95412478512', 'fequvhrne'),
(89, 'Pradeep', 20, 80, '16484967/9', 'nfjhrwfhek'),
(90, 'Vishal', 20, 90, '98774563210', 'B-102 Appartment'),
(91, 'Mohit', 35, 95, '9632587410', 'E-502 Building');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `password`, `fullname`) VALUES
('mohit@gmail.com', 'mohit', 'Mohit'),
('vishal@gmail.com', 'vishal', 'Vishal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_no`);

--
-- Indexes for table `clerks`
--
ALTER TABLE `clerks`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`patient_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_no` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `patient_info`
--
ALTER TABLE `patient_info`
  MODIFY `patient_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
