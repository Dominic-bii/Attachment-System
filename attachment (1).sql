-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 10:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assess_students`
--

INSERT INTO `assess_students` (`id`, `student_email`, `attendance`, `punctuality`, `skills`, `office_applications`, `technical_applications`, `specialisation`, `scientific_knowledge`, `ability_to_learn`, `acceptability_to_colleagues`, `creativity`, `planning`, `time_marks`, `date`, `feedback`, `comment`) VALUES
(12, 'Sammunesh2000@gmail.com', '1', '2', '3', '4', '1', '3', '1', '2', '1', '2', '2', '1', '2021-01-27', 'Impressing work', 'Work smart');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `student_email` varchar(255) NOT NULL,
  `parent_email` varchar(255) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_text` text NOT NULL,
  `viewed` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `student_email`, `parent_email`, `comment_date`, `comment_text`, `viewed`, `created_at`) VALUES
(2, 'korir@gmail.com', 'mutai@gmail.com', '2024-03-08', 'competent', 0, '2024-03-08 06:58:24'),
(3, 'korir@gmail.com', 'mutai@gmail.com', '2024-03-08', 'competent', 0, '2024-03-08 06:58:52');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `industrial_supervisor`
--

INSERT INTO `industrial_supervisor` (`id`, `firstname`, `lastname`, `email`, `company_name`, `company_address`, `department`, `phone`) VALUES
(3, 'Benson', 'Kikwai', 'kikwai@gmail.com', 'NHIF', '2058', 'Accounting', '12345'),
(4, 'Victor', 'Magut', 'magut@gmail.com', 'NSSF', '011', 'Economic', '12345'),
(5, 'Irene', 'Rotich', 'rotich@gmail.com', 'NSSF', '006', 'Accounting', '12345'),
(7, 'Mary', 'Cherono', 'cherono@gmail.com', 'NHIF', '011', 'Accounting', ''),
(8, 'jacon', 'Juma', 'juma@gmail.com', 'NHIF', '009', 'commerce', ''),
(9, 'Tracy', 'Cheptoo', 'cheptoo@gmail.com', 'NHIF', '012', 'Marketing', '12345');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`id`, `student_email`, `from_date`, `to_date`, `request`, `accepted`) VALUES
(4, 'Georgina@gmail.com', '2021-01-27', '2021-01-30', 'I humbly request for a leave ,for my birthday party over the weekend', 1),
(7, 'Sammunesh2000@gmail.com', '2021-01-27', '2021-02-26', 'Leave request to visit my home, Thanks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `firstname`, `lastname`, `email`, `phone`, `created_at`) VALUES
(1, 'Stanley', 'Nabaala', 'stanley@gmail.com', '12345', '2024-02-26 20:17:51'),
(3, 'Eric', 'Mutai', 'mutai@gmail.com', '12345', '2024-03-07 21:07:55');

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
  `building` varchar(100) NOT NULL,
  `assigned_supervisor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `email`, `adm`, `course`, `company_name`, `company_address`, `department`, `supervisor_name`, `duration_from`, `duration_to`, `town`, `street`, `building`, `assigned_supervisor`) VALUES
(7, 'Antonio', 'Cheruiyot', 'admin@admin.com', '101', 'test', 'test', '2333332', 'ICT', 'admin@gmail.com', '2021-01-26', '2021-01-30', 'vfd', 'df', 'd', 'langat@gmail.com'),
(8, 'DOMINIC', 'Bii', 'dbii8830@gmail.com', '1043', 'BBIT', 'NHIF', '2058', 'ACCOUNTING', 'kikwai@gmail.com', '2024-02-01', '2024-03-01', 'KERICHO', '', 'SINENDET', 'rono@gmail.com'),
(9, 'Joyline', 'Cheptoo', 'korir@gmail.com', '1044', 'BMIT', 'NSSF', '011', 'Economic', 'magut@gmail.com', '2024-02-22', '2024-03-09', 'KERICHO', '', 'SINENDET', 'masese@gmail.com'),
(10, 'Katama', 'Kennedy', 'katama@gmail.com', '2596', 'BBIT', 'NSSF', '006', 'Accounting', 'rotich@gmail.com', '2024-03-22', '2024-04-06', 'NAIROBI', '', 'MEGA MALL', 'langat@gmail.com'),
(11, 'Joseph', 'Orori', 'orori@gmail.com', '1080', 'IT', 'NSSF', '011', 'ICT', 'kikwai@gmail.com', '2024-03-01', '2024-04-04', 'NAIROBI', '', 'MEGA HALL', 'chesang@gmail.com'),
(14, 'Dommy', 'belmer', 'dommy@gmail.com', '2200', 'BCOM', 'NSSF', '006', 'Accounting', 'kikwai@gmail.com', '2024-03-08', '0000-00-00', 'KERICHO', 'kenyatta avenue', 'SINENDET', ''),
(16, 'Owen ', 'Kiprono', 'owen@gmail.com', '2030', 'IT', 'NHIF', '2058', 'Accounting', 'kikwai@gmail.com', '2024-03-08', '0000-00-00', 'KERICHO', 'Moi Avenue', 'SINENDET', ''),
(17, 'Debra', 'Chebet', 'debra@gmail.com', '2045', 'BMIT', 'NSSF', '2058', 'ICT', 'kikwai@gmail.com', '2024-03-08', '0000-00-00', 'KERICHO', 'CBD', 'SINENDET', 'ayako@gmail.com'),
(18, 'Laban', 'irungu', 'irungu@gmail.com', '1099', 'BBIT', 'huduma centre', '009', 'ICT', 'magut@gmail.com', '2024-03-08', '2024-03-30', 'KERICHO', 'CHEBOWN', 'MEGA MALL', 'langat@gmail.com'),
(19, 'Deborah', 'Cheptoo', 'deborah@gmail.com', '1055', 'BCOM', 'NHIF', '005', 'Accounting', 'magut@gmail.com', '2024-03-08', '2024-04-04', 'Nakuru', 'kenyatta avenue', 'huduma', 'stephen@gmail.com'),
(20, 'Derrick', 'Kipchumba', 'derrick@gmail.com', '1060', 'IT', 'Imarisha Sacco', '012', 'Accounting', 'cherono@gmail.com', '2024-03-09', '2024-04-05', 'KERICHO', 'kenyatta avenue', 'SINENDET', 'Chelangat@gmail.com');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `university_name` varchar(200) NOT NULL,
  `university_address` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `supervisor_fname`, `supervisor_lname`, `email`, `course`, `university_name`, `university_address`, `department`, `phone`) VALUES
(4, 'John', 'Langat', 'langat@gmail.com', '', 'kabarak', '20157', 'Economic', '12345'),
(5, 'Ezra', 'Rono', 'rono@gmail.com', '', 'kabarak', '20157', 'Accounting', '12345'),
(7, 'Nelson', 'Masese', 'masese@gmail.com', '', 'kabarak', '20157', 'ICT', '12345'),
(8, 'Wycliffe ', 'Ayako', 'ayako@gmail.com', '', 'kabarak', '20157', 'ICT', '12345'),
(10, 'Stephen', 'Oloo', 'stephen@gmail.com', '', 'kabarak', '20157', 'Accounting', ''),
(11, 'mark', 'juma', 'mark@gmail.com', '', 'kabarak', '20157', 'accounting', '12345'),
(12, 'Beatrice', 'Chelangat', 'Chelangat@gmail.com', '', 'kabarak', '20157', 'Marketing', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assess_students`
--
ALTER TABLE `assess_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `parents`
--
ALTER TABLE `parents`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `industrial_supervisor`
--
ALTER TABLE `industrial_supervisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students_logbook`
--
ALTER TABLE `students_logbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
