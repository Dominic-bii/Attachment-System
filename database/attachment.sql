-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 02:48 PM
-- Server verHmm. We’re having trouble finding that site.sion: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attachment`
--

-- --------------------------------------------------------

--
-- Table structure for table `assess_students`
--

CREATE TABLE `assess_students` (
  `id` int(11) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `attendance` varchar(100) NOT NULL,
  `punctuality` varchar(100) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `office_applications` varchar(100) NOT NULL,
  `technical_applications` varchar(100) NOT NULL,
  `specialisation` varchar(100) NOT NULL,
  `scientific_knowledge` varchar(100) NOT NULL,
  `ability_to_learn` varchar(100) NOT NULL,
  `acceptability_to_colleagues` varchar(100) NOT NULL,
  `creativity` varchar(100) NOT NULL,
  `planning` varchar(100) NOT NULL,
  `time_marks` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assess_students`
--

INSERT INTO `assess_students` (`id`, `student_email`, `attendance`, `punctuality`, `skills`, `office_applications`, `technical_applications`, `specialisation`, `scientific_knowledge`, `ability_to_learn`, `acceptability_to_colleagues`, `creativity`, `planning`, `time_marks`, `date`, `feedback`, `comment`) VALUES
(12, 'Sammunesh2000@gmail.com', '1', '2', '3', '4', '1', '3', '1', '2', '1', '2', '2', '1', '2021-01-27', 'Impressing work', 'Work smart');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_supervisor`
--

CREATE TABLE `industrial_supervisor` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industrial_supervisor`
--

INSERT INTO `industrial_supervisor` (`id`, `firstname`, `lastname`, `email`, `company_name`, `company_address`, `department`, `phone`) VALUES
(2, 'Aisha', 'Abdille', 'Aishaabdille@gmail.com', 'test', '2333332', 'ICT', '2343243');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request`
--

CREATE TABLE `leave_request` (
  `id` int(11) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `request` varchar(3000) NOT NULL,
  `accepted` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`id`, `student_email`, `from_date`, `to_date`, `request`, `accepted`) VALUES
(4, 'Georgina@gmail.com', '2021-01-27', '2021-01-30', 'I humbly request for a leave ,for my birthday party over the weekend', 1),
(7, 'Sammunesh2000@gmail.com', '2021-01-27', '2021-02-26', 'Leave request to visit my home, Thanks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adm` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `supervisor_name` varchar(200) NOT NULL,
  `duration_from` date NOT NULL,
  `duration_to` date NOT NULL,
  `town` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `building` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `email`, `adm`, `course`, `company_name`, `company_address`, `department`, `supervisor_name`, `duration_from`, `duration_to`, `town`, `street`, `building`) VALUES
(4, 'Eric', 'Nyabuto', 'Ericnyabuto@gmail.com', 'DCSNRB699919', 'bbit', 'xyz', '00100nrb', 'ICT', 'Aisha Abdille', '2021-01-19', '2021-01-30', '', '', ''),
(7, 'Antonio', 'Cheruiyot', 'admin@admin.com', '101', 'test', 'test', '2333332', 'ICT', 'admin@gmail.com', '2021-01-26', '2021-01-30', 'vfd', 'df', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `students_logbook`
--

CREATE TABLE `students_logbook` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `file` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `marks` varchar(15) NOT NULL,
  `marked` int(1) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `supervisor_email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_logbook`
--

INSERT INTO `students_logbook` (`id`, `email`, `file`, `date`, `marks`, `marked`, `feedback`, `comment`, `supervisor_email`) VALUES
(18, 'Sammunesh2000@gmail.com', '84656452.pdf', '2021-01-30', '', 0, '', '', ''),
(19, 'Sammunesh2000@gmail.com', 'EXAMCARD-DCSNRB699919.pdf', '2021-01-29', '60', 1, 'can do better', 'improved', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` int(11) NOT NULL,
  `supervisor_fname` varchar(200) NOT NULL,
  `supervisor_lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `instituition_name` varchar(200) NOT NULL,
  `instituition_address` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `supervisor_fname`, `supervisor_lname`, `email`, `course`, `instituition_name`, `instituition_address`, `department`, `phone`) VALUES
(2, 'John', 'Doe', 'admin@gmail.com', '', 'UON', '0010202', 'ICT', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assess_students`
--
ALTER TABLE `assess_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industrial_supervisor`
--
ALTER TABLE `industrial_supervisor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_logbook`
--
ALTER TABLE `students_logbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assess_students`
--
ALTER TABLE `assess_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `industrial_supervisor`
--
ALTER TABLE `industrial_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students_logbook`
--
ALTER TABLE `students_logbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
