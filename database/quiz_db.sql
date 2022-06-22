-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 10:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `option_id` int(30) NOT NULL,
  `is_right` tinyint(1) NOT NULL COMMENT ' 1 = right, 0 = wrong',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `quiz_id`, `question_id`, `option_id`, `is_right`, `date_updated`) VALUES
(7, 16, 5, 9, 54, 0, '2022-06-23 03:53:32'),
(8, 16, 5, 11, 64, 0, '2022-06-23 03:53:32'),
(9, 16, 5, 12, 65, 0, '2022-06-23 03:53:32'),
(10, 17, 5, 9, 82, 1, '2022-06-23 03:55:08'),
(11, 17, 5, 11, 76, 1, '2022-06-23 03:55:08'),
(12, 17, 5, 12, 78, 0, '2022-06-23 03:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_id`, `subject`, `date_updated`) VALUES
(2, 6, 'Math', '2022-06-23 12:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `score` int(5) NOT NULL,
  `total_score` int(5) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `quiz_id`, `user_id`, `score`, `total_score`, `date_updated`) VALUES
(4, 5, 16, 0, 3, '2022-06-23 03:53:32'),
(5, 5, 17, 2, 3, '2022-06-23 03:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `qid` int(30) NOT NULL,
  `order_by` int(11) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `qid`, `order_by`, `date_updated`) VALUES
(9, '1 + 1 =', 5, 0, '2022-06-23 03:51:58'),
(11, '2 + 2 =', 5, 0, '2022-06-23 03:52:31'),
(12, '1 * 3 =', 5, 0, '2022-06-23 03:52:51'),
(13, '123 + 123', 6, 0, '2022-06-23 04:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `question_opt`
--

CREATE TABLE `question_opt` (
  `id` int(30) NOT NULL,
  `option_txt` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `is_right` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1= right answer',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_opt`
--

INSERT INTO `question_opt` (`id`, `option_txt`, `question_id`, `is_right`, `date_updated`) VALUES
(45, '101', 7, 0, '2022-06-23 03:31:53'),
(46, '100', 7, 0, '2022-06-23 03:31:53'),
(47, '102', 7, 0, '2022-06-23 03:31:53'),
(48, '105', 7, 0, '2022-06-23 03:31:53'),
(49, '1', 8, 0, '2022-06-23 03:36:37'),
(50, '2', 8, 0, '2022-06-23 03:36:37'),
(51, '3', 8, 0, '2022-06-23 03:36:37'),
(52, '4', 8, 0, '2022-06-23 03:36:37'),
(57, '1', 10, 0, '2022-06-23 03:52:01'),
(58, '2', 10, 0, '2022-06-23 03:52:01'),
(59, '3', 10, 0, '2022-06-23 03:52:01'),
(60, '4', 10, 0, '2022-06-23 03:52:02'),
(73, '1', 11, 0, '2022-06-23 03:54:37'),
(74, '2', 11, 0, '2022-06-23 03:54:37'),
(75, '3', 11, 0, '2022-06-23 03:54:37'),
(76, '4', 11, 1, '2022-06-23 03:54:37'),
(77, '1', 12, 0, '2022-06-23 03:54:46'),
(78, '2', 12, 0, '2022-06-23 03:54:46'),
(79, '3', 12, 1, '2022-06-23 03:54:46'),
(80, '4', 12, 0, '2022-06-23 03:54:46'),
(81, '1', 9, 0, '2022-06-23 03:54:50'),
(82, '2', 9, 1, '2022-06-23 03:54:50'),
(83, '3', 9, 0, '2022-06-23 03:54:50'),
(84, '4', 9, 0, '2022-06-23 03:54:50'),
(85, '123', 13, 0, '2022-06-23 04:19:15'),
(86, '246', 13, 0, '2022-06-23 04:19:15'),
(87, '369', 13, 0, '2022-06-23 04:19:15'),
(88, '111', 13, 0, '2022-06-23 04:19:15'),
(89, '123', 14, 0, '2022-06-23 04:19:35'),
(90, '246', 14, 0, '2022-06-23 04:19:35'),
(91, '369', 14, 0, '2022-06-23 04:19:35'),
(92, '121', 14, 0, '2022-06-23 04:19:35'),
(93, '123', 15, 0, '2022-06-23 04:19:35'),
(94, '246', 15, 0, '2022-06-23 04:19:36'),
(95, '369', 15, 0, '2022-06-23 04:19:36'),
(96, '121', 15, 0, '2022-06-23 04:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_list`
--

CREATE TABLE `quiz_list` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `qpoints` int(11) NOT NULL DEFAULT 1,
  `user_id` int(20) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_list`
--

INSERT INTO `quiz_list` (`id`, `title`, `qpoints`, `user_id`, `date_updated`) VALUES
(5, 'Quiz (Math)', 1, 6, '2022-06-23 03:56:40'),
(6, 'Quiz 2 ( Math )', 2, 6, '2022-06-23 04:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_student_list`
--

CREATE TABLE `quiz_student_list` (
  `id` int(30) NOT NULL,
  `quiz_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_student_list`
--

INSERT INTO `quiz_student_list` (`id`, `quiz_id`, `user_id`, `date_updated`) VALUES
(7, 2, 12, '2022-06-23 03:37:41'),
(8, 5, 16, '2022-06-23 03:52:16'),
(9, 5, 17, '2022-06-23 03:52:16'),
(10, 5, 18, '2022-06-23 03:52:16'),
(11, 5, 19, '2022-06-23 03:52:16'),
(12, 6, 16, '2022-06-23 04:19:48'),
(13, 6, 17, '2022-06-23 04:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `level_section` varchar(100) NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `level_section`, `date_updated`) VALUES
(5, 16, 'Information System', '2022-06-23 03:48:20'),
(6, 17, 'Information System', '2022-06-23 03:49:51'),
(7, 18, 'Multimedia', '2022-06-23 03:50:33'),
(8, 19, 'Multimedia', '2022-06-23 03:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '2022-06-23 09:10:49'),
(6, 'John Smith', 2, 'jsmith', 'admin123', 1, '2022-06-23 10:23:30'),
(16, 'Zi Xiang', 3, 'zixiang', 'admin123', 1, '2022-06-23 03:48:19'),
(17, 'Jovi', 3, 'jovi', 'admin123', 1, '2022-06-23 03:49:51'),
(18, 'Zhen Heng', 3, 'zhenheng', 'admin123', 1, '2022-06-23 03:50:33'),
(19, 'Kah Eik', 3, 'kaheik', 'admin123', 1, '2022-06-23 03:50:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_opt`
--
ALTER TABLE `question_opt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_list`
--
ALTER TABLE `quiz_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `question_opt`
--
ALTER TABLE `question_opt`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `quiz_list`
--
ALTER TABLE `quiz_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quiz_student_list`
--
ALTER TABLE `quiz_student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
