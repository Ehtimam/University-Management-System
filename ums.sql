-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2021 at 06:07 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_student`
--

DROP TABLE IF EXISTS `attendance_student`;
CREATE TABLE IF NOT EXISTS `attendance_student` (
  `rollno` varchar(20) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `first` varchar(10) DEFAULT NULL,
  `second` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance_student`
--

INSERT INTO `attendance_student` (`rollno`, `Date`, `first`, `second`) VALUES
('190103020026', 'Sun Sep 12 22:22:18 BDT 2021', 'Present', 'Absent'),
('190103020026', 'Mon Sep 13 19:54:04 BDT 2021', 'Present', 'Present'),
('190103020026', 'Tue Sep 14 12:54:54 BDT 2021', 'Present', 'Present'),
('15332241', 'Tue Sep 14 16:42:28 BDT 2021', 'Present', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_teacher`
--

DROP TABLE IF EXISTS `attendance_teacher`;
CREATE TABLE IF NOT EXISTS `attendance_teacher` (
  `emp_id` varchar(20) DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL,
  `first` varchar(10) DEFAULT NULL,
  `second` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance_teacher`
--

INSERT INTO `attendance_teacher` (`emp_id`, `Date`, `first`, `second`) VALUES
('1011713', 'Tue Sep 14 12:54:46 BDT 2021', 'Present', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
CREATE TABLE IF NOT EXISTS `fee` (
  `rollno` varchar(20) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `fathers_name` varchar(25) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `fee_paid` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`rollno`, `name`, `fathers_name`, `course`, `branch`, `semester`, `fee_paid`) VALUES
('190103020026', 'Farzana Rahman', 'A R Rahman', 'B.Tech', 'Mechanical', '1st', '15799');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `rollno` varchar(15) DEFAULT NULL,
  `marks1` varchar(20) DEFAULT NULL,
  `marks2` varchar(20) DEFAULT NULL,
  `marks3` varchar(20) DEFAULT NULL,
  `marks4` varchar(20) DEFAULT NULL,
  `marks5` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`rollno`, `marks1`, `marks2`, `marks3`, `marks4`, `marks5`) VALUES
('190103020026', '70', '80', '90', '60', '80'),
('15332241', '70', '80', '86', '82', '67');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(20) DEFAULT NULL,
  `fathers_name` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `class_x` varchar(10) DEFAULT NULL,
  `class_xii` varchar(10) DEFAULT NULL,
  `national_id` varchar(15) DEFAULT NULL,
  `rollno` varchar(15) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `fathers_name`, `age`, `dob`, `address`, `phone`, `email`, `class_x`, `class_xii`, `national_id`, `rollno`, `course`, `branch`) VALUES
('Ehtimam Chowdhury', 'Rashed Chowdhury', '22', '09/08/1999', 'Bhadeshwar', '01703281609', 'ehtimamch@gmail.com', '5.00', '5.00', '123543678', '15332241', 'Bsc', 'Computer Science');

-- --------------------------------------------------------

--
-- Table structure for table `stulogin`
--

DROP TABLE IF EXISTS `stulogin`;
CREATE TABLE IF NOT EXISTS `stulogin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stulogin`
--

INSERT INTO `stulogin` (`username`, `password`) VALUES
('ehtimam', '1234'),
('ehtimam', 'ehtimam'),
('farzana', 'farzana');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `rollno` varchar(15) DEFAULT NULL,
  `subject1` varchar(20) DEFAULT NULL,
  `subject2` varchar(20) DEFAULT NULL,
  `subject3` varchar(20) DEFAULT NULL,
  `subject4` varchar(20) DEFAULT NULL,
  `subject5` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`rollno`, `subject1`, `subject2`, `subject3`, `subject4`, `subject5`) VALUES
('190103020026', 'CSE 111', 'CSE 112', 'CSE 234', 'CSE 235', 'CSE 333'),
('15332241', 'Algorithm', 'Algorithm Lab', 'DLD', 'DLD Lab', 'Economics');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `name` varchar(20) DEFAULT NULL,
  `fathers_name` varchar(20) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `class_x` varchar(10) DEFAULT NULL,
  `class_xii` varchar(10) DEFAULT NULL,
  `national_id` varchar(15) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `emp_id` varchar(50) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `fathers_name`, `age`, `dob`, `address`, `phone`, `email`, `class_x`, `class_xii`, `national_id`, `course`, `emp_id`, `dept`) VALUES
('Parvez Chowdhury', 'Rayhan Cho', '35', '02/02/1986', 'Sylhet', '019090895', 'parvez@edu.bd', '5.00', '5.00', '123456789', 'B.Tech', '1011713', 'Computer Science'),
('Abc', 'dfc ', '22', '01/01/2000', 'sylhet', '', 'abc@gmail.com', '', '5.00', '', 'B.Tech', '10', 'Computer Science');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
