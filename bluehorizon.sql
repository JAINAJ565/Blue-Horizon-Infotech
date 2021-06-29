-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 06:59 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bluehorizon`
--

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `project_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project_name`, `project_status`) VALUES
(1, 'Project 1', 1),
(2, 'Project 2', 2),
(3, 'Project 3', 1),
(4, 'Project 4', 1),
(5, 'Project 5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `project_id`, `task_name`, `task_status`) VALUES
(1, 1, 'Task 1', 1),
(2, 1, 'Task 2', 1),
(3, 1, 'Task 3', 1),
(4, 4, 'Task 4', 1),
(5, 4, 'Task 5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE IF NOT EXISTS `time` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `time_hours` tinyint(1) NOT NULL,
  `time_date` date DEFAULT NULL,
  `time_description` text NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `task_id`, `time_hours`, `time_date`, `time_description`) VALUES
(1, 1, 2, '2021-02-02', 'DB creation'),
(2, 1, 6, '2021-02-25', 'Bug fixing'),
(3, 2, 3, '2021-03-28', 'Testing'),
(4, 4, 6, '2020-02-04', 'User Manager'),
(5, 4, 4, '2021-04-02', 'Billing calculation'),
(6, 5, 8, '2020-05-07', 'Login and Logout');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
