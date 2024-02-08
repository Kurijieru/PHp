-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2023 at 07:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_systemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `gradelevel`
--

CREATE TABLE `gradelevel` (
  `GradeLevelID` int(2) NOT NULL,
  `Level` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `strand`
--

CREATE TABLE `strand` (
  `StrandID` int(3) NOT NULL,
  `StrandOffered` varchar(10) NOT NULL,
  `Track` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentgrade_tbl`
--

CREATE TABLE `studentgrade_tbl` (
  `StudentGradeID` int(3) NOT NULL,
  `LRN` varchar(15) NOT NULL,
  `SubjectID` int(2) NOT NULL,
  `Semester` varchar(2) NOT NULL,
  `School_Year` varchar(11) NOT NULL,
  `TeachersID` int(10) NOT NULL,
  `Q1Grade` int(3) NOT NULL,
  `Q2Grade` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students_tbl`
--

CREATE TABLE `students_tbl` (
  `LRN` varchar(15) NOT NULL,
  `Last_Name` varchar(35) NOT NULL,
  `First_Name` varchar(35) NOT NULL,
  `MI` varchar(2) DEFAULT NULL,
  `Grade_Level` int(2) NOT NULL,
  `Strand` varchar(5) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `Age` int(2) NOT NULL,
  `StudentPhoto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_tbl`
--

INSERT INTO `students_tbl` (`LRN`, `Last_Name`, `First_Name`, `MI`, `Grade_Level`, `Strand`, `Section`, `Age`, `StudentPhoto`) VALUES
('120067100028', 'Cagmat', 'Zyriel Jean', NULL, 12, 'STEM', 'A', 18, ''),
('123789456825', 'Adams', 'Wednesday', 'J', 12, 'ICT', 'A', 19, ''),
('127940090161', 'Barcubero', 'Valentino Samuel', 'C', 12, 'ABM', 'B', 19, ''),
('127940131324', 'Lintawahan', 'Vincent Angelo', 'B', 12, 'ICT', 'A', 20, ''),
('12795590073', 'Caballo', 'Marc Jose', NULL, 12, 'ABM', 'B', 19, ''),
('127956823414', 'Jolie', 'Angelina', NULL, 12, 'HUMSS', 'B', 18, ''),
('127964238578', 'Ortega', 'Jenna', 'G', 12, 'STEM', 'B', 18, ''),
('127967100053', 'Bajao', 'Cris', 'E', 12, 'STEM', 'A', 17, ''),
('127968100086', 'Paradela', 'Shanice', 'G', 12, 'HUMSS', 'A', 18, ''),
('127995130927', 'Alpuerto', 'Vien Fiona', NULL, 12, 'ICT', 'A', 17, '');

-- --------------------------------------------------------

--
-- Table structure for table `subject_tbl`
--

CREATE TABLE `subject_tbl` (
  `SubjectID` int(2) NOT NULL,
  `SubjectName` varchar(40) NOT NULL,
  `SubType` varchar(2) NOT NULL,
  `SemOffered` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teachers_tbl`
--

CREATE TABLE `teachers_tbl` (
  `TeachersID` int(3) NOT NULL,
  `Last_Name` varchar(40) NOT NULL,
  `First_Name` varchar(40) NOT NULL,
  `MI` varchar(2) DEFAULT NULL,
  `Gender` varchar(2) NOT NULL,
  `Birthdate` date NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Contact_Number` varchar(15) NOT NULL,
  `Strand` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gradelevel`
--
ALTER TABLE `gradelevel`
  ADD PRIMARY KEY (`GradeLevelID`);

--
-- Indexes for table `strand`
--
ALTER TABLE `strand`
  ADD PRIMARY KEY (`StrandID`);

--
-- Indexes for table `studentgrade_tbl`
--
ALTER TABLE `studentgrade_tbl`
  ADD PRIMARY KEY (`StudentGradeID`);

--
-- Indexes for table `students_tbl`
--
ALTER TABLE `students_tbl`
  ADD PRIMARY KEY (`LRN`);

--
-- Indexes for table `subject_tbl`
--
ALTER TABLE `subject_tbl`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Indexes for table `teachers_tbl`
--
ALTER TABLE `teachers_tbl`
  ADD PRIMARY KEY (`TeachersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gradelevel`
--
ALTER TABLE `gradelevel`
  MODIFY `GradeLevelID` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strand`
--
ALTER TABLE `strand`
  MODIFY `StrandID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `studentgrade_tbl`
--
ALTER TABLE `studentgrade_tbl`
  MODIFY `StudentGradeID` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_tbl`
--
ALTER TABLE `subject_tbl`
  MODIFY `SubjectID` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers_tbl`
--
ALTER TABLE `teachers_tbl`
  MODIFY `TeachersID` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
