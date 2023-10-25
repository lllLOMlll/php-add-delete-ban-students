-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 9, 2023 at 01:17 AM
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
-- Database: `herzing_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_firstname` varchar(100) NOT NULL,
  `student_lastname` varchar(100) NOT NULL,
  `student_age` tinyint UNSIGNED NOT NULL,
  `student_gender` varchar(10) NOT NULL,
  `student_location` varchar(150) NOT NULL,
  `student_program` varchar(150) NOT NULL,
  `student_status` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_firstname`, `student_lastname`, `student_age`, `student_gender`, `student_location`, `student_program`, `student_status`) VALUES
(1, 'Jesse', 'Trujillo', 31, 'Male', 'Saint-Jérôme', 'ECE', 1),
(2, 'Minerva', 'Merrill', 18, 'Male', 'Chicoutimi', 'Programming', 1),
(3, 'Tobias', 'Townsend', 38, 'Other', 'Québec', 'ATP', 1),
(4, 'Cailin', 'Kerr', 21, 'Female', 'Drummondville', 'Networking', 1),
(5, 'Ignacia', 'Higgins', 25, 'Other', 'Montreal', 'IT Support', 1),
(6, 'Sopoline', 'Mcguire', 40, 'Male', 'Ottawa', 'ECE', 1),
(7, 'Wayne', 'Briggs', 31, 'Other', 'Châteauguay', 'IT Support', 1),
(8, 'Sonya', 'Parks', 38, 'Female', 'Saint-Jean-sur-Richelieu', 'Networking', 1),
(9, 'Eric', 'Hoover', 40, 'Male', 'Saint-Jean-sur-Richelieu', 'ATP', 1),
(10, 'Ignatius', 'Mayer', 38, 'Other', 'Gatineau', 'Interior Design', 1),
(11, 'Emery', 'Allen', 18, 'Female', 'Montreal', 'Networking', 1),
(12, 'Vivien', 'Mosley', 38, 'Female', 'Montreal', 'IT Support', 1),
(13, 'Debra', 'Nelson', 36, 'Male', 'Trois-Rivières', 'CAD', 1),
(14, 'Kasimir', 'Hahn', 41, 'Female', 'Québec', 'Programming', 1),
(15, 'Wayne', 'Kirkland', 31, 'Female', 'Drummondville', 'CAD', 1),
(16, 'Reuben', 'Bond', 45, 'Female', 'Québec', 'Interior Design', 1),
(17, 'Leo', 'Kemp', 20, 'Other', 'Ottawa', 'ECE', 1),
(18, 'Mallory', 'Vinson', 29, 'Female', 'Châteauguay', 'Business', 1),
(19, 'Tara', 'Velasquez', 28, 'Male', 'Longueuil', 'Business', 1),
(20, 'Rogan', 'Hood', 41, 'Other', 'Laval', 'ATP', 1),
(21, 'Anastasia', 'Hanson', 29, 'Other', 'Québec', 'ECE', 1),
(22, 'Luke', 'Massey', 20, 'Female', 'Montreal', 'Programming', 1),
(23, 'Jenette', 'Jackson', 44, 'Female', 'Sherbrooke', 'Networking', 1),
(24, 'Shellie', 'Rosario', 37, 'Male', 'Saint-Jérôme', 'Interior Design', 1),
(25, 'Olympia', 'Jenkins', 33, 'Male', 'Jonquière', 'Interior Design', 1),
(26, 'Dacey', 'Norman', 27, 'Female', 'Montreal', 'ECE', 1),
(27, 'Iris', 'Day', 42, 'Other', 'Saint-Jérôme', 'Programming', 1),
(28, 'Austin', 'Ellis', 45, 'Male', 'Québec', 'CAD', 1),
(29, 'Ori', 'Small', 25, 'Male', 'Ottawa', 'Business', 1),
(30, 'Levi', 'Gallagher', 24, 'Female', 'Ottawa', 'Interior Design', 1),
(31, 'Haviva', 'Huber', 37, 'Male', 'Trois-Rivières', 'IT Support', 1),
(32, 'Hiroko', 'Dillon', 38, 'Female', 'Gatineau', 'IT Support', 1),
(33, 'Cooper', 'Rivers', 39, 'Female', 'Québec', 'CAD', 1),
(34, 'Kimberly', 'Mccall', 36, 'Female', 'Saint-Jean-sur-Richelieu', 'Networking', 1),
(35, 'Brandon', 'Richmond', 44, 'Female', 'Québec', 'CAD', 1),
(36, 'Jordan', 'Sharpe', 31, 'Female', 'Montreal', 'Business', 0),
(37, 'Kimberley', 'Garcia', 45, 'Female', 'Gatineau', 'IT Support', 1),
(38, 'Hyacinth', 'Smith', 28, 'Female', 'Montreal', 'Interior Design', 1),
(39, 'Gay', 'Chase', 38, 'Female', 'Québec', 'Interior Design', 1),
(40, 'Rahim', 'Ratliff', 32, 'Other', 'Ottawa', 'Networking', 1),
(41, 'Kamal', 'Cole', 32, 'Male', 'Châteauguay', 'Networking', 1),
(42, 'Dylan', 'Solomon', 43, 'Male', 'Drummondville', 'Interior Design', 1),
(43, 'Clio', 'Owens', 26, 'Male', 'Jonquière', 'Interior Design', 1),
(44, 'Lucian', 'Warren', 21, 'Other', 'Ottawa', 'Accounting', 1),
(45, 'Kevin', 'Daniel', 24, 'Other', 'Drummondville', 'ECE', 1),
(46, 'Fay', 'Stevenson', 28, 'Other', 'Saint-Jérôme', 'ATP', 1),
(47, 'Boris', 'Gutierrez', 37, 'Female', 'Gatineau', 'ATP', 1),
(48, 'Rigel', 'Roberson', 21, 'Other', 'Saint-Jean-sur-Richelieu', 'IT Support', 1),
(49, 'Stephanie', 'Hunt', 19, 'Male', 'Drummondville', 'Business', 1),
(50, 'Geraldine', 'Trevino', 44, 'Other', 'Gatineau', 'Business', 1),
(51, 'Sylvia', 'Barton', 26, 'Other', 'Trois-Rivières', 'Accounting', 1),
(52, 'Dana', 'Holden', 19, 'Female', 'Laval', 'Business', 1),
(53, 'Freya', 'Cash', 34, 'Female', 'Jonquière', 'Networking', 1),
(54, 'Chaim', 'Stephens', 28, 'Other', 'Laval', 'CAD', 0),
(55, 'Grace', 'Wagner', 22, 'Male', 'Longueuil', 'Programming', 1),
(56, 'Judith', 'Ochoa', 31, 'Other', 'Québec', 'Accounting', 1),
(57, 'Sydnee', 'Cleveland', 35, 'Female', 'Montreal', 'Accounting', 1),
(58, 'Basil', 'Vincent', 35, 'Male', 'Saint-Jérôme', 'ECE', 1),
(59, 'Henry', 'Meadows', 26, 'Male', 'Sherbrooke', 'Programming', 1),
(60, 'Kennedy', 'Richardson', 27, 'Male', 'Chicoutimi', 'CAD', 1),
(61, 'Hiram', 'Franks', 25, 'Female', 'Drummondville', 'ECE', 1),
(62, 'Myra', 'Holland', 44, 'Male', 'Longueuil', 'Networking', 1),
(63, 'Geraldine', 'Kramer', 22, 'Female', 'Chicoutimi', 'CAD', 1),
(64, 'Len', 'Vaughan', 23, 'Other', 'Saint-Jérôme', 'Interior Design', 1),
(65, 'Hiroko', 'Noble', 39, 'Other', 'Saint-Jérôme', 'ECE', 1),
(66, 'Tamekah', 'Holcomb', 31, 'Male', 'Drummondville', 'Programming', 1),
(67, 'Caryn', 'Becker', 20, 'Other', 'Trois-Rivières', 'Networking', 1),
(68, 'Cara', 'Benton', 24, 'Female', 'Drummondville', 'Interior Design', 1),
(69, 'Leah', 'Kelley', 34, 'Other', 'Sherbrooke', 'Business', 1),
(70, 'Emma', 'Weiss', 36, 'Male', 'Sherbrooke', 'Interior Design', 1),
(71, 'Eve', 'Owens', 22, 'Male', 'Longueuil', 'Networking', 1),
(72, 'Kiayada', 'Burke', 22, 'Other', 'Sherbrooke', 'CAD', 1),
(73, 'Ian', 'Mcdaniel', 43, 'Other', 'Jonquière', 'IT Support', 1),
(74, 'Honorato', 'Bridges', 40, 'Male', 'Drummondville', 'ECE', 1),
(75, 'Garth', 'Butler', 23, 'Other', 'Saint-Jérôme', 'Accounting', 1),
(76, 'Illiana', 'Lynch', 23, 'Other', 'Saint-Jérôme', 'ATP', 1),
(77, 'Kyra', 'Douglas', 22, 'Male', 'Saint-Jérôme', 'CAD', 1),
(78, 'Kelly', 'Ramsey', 36, 'Other', 'Laval', 'IT Support', 1),
(79, 'Conan', 'Sharp', 37, 'Female', 'Laval', 'ECE', 1),
(80, 'Jasper', 'Wagner', 41, 'Female', 'Saint-Jérôme', 'ATP', 1),
(81, 'Kaden', 'Mcfadden', 37, 'Other', 'Trois-Rivières', 'Accounting', 1),
(82, 'Cassandra', 'Merrill', 18, 'Other', 'Drummondville', 'Accounting', 1),
(83, 'Audrey', 'Aguilar', 18, 'Male', 'Drummondville', 'CAD', 1),
(84, 'Naida', 'Carlson', 22, 'Other', 'Jonquière', 'Interior Design', 1),
(85, 'Gretchen', 'Kane', 18, 'Female', 'Ottawa', 'CAD', 1),
(86, 'Ferdinand', 'Morales', 45, 'Male', 'Longueuil', 'Business', 1),
(87, 'Shana', 'Copeland', 19, 'Male', 'Québec', 'Accounting', 1),
(88, 'Nevada', 'Woods', 35, 'Female', 'Chicoutimi', 'Networking', 1),
(89, 'Nerea', 'Rice', 29, 'Male', 'Gatineau', 'ECE', 1),
(90, 'Tashya', 'Dalton', 31, 'Male', 'Saint-Jérôme', 'ECE', 0),
(91, 'Salvador', 'Fitzgerald', 37, 'Male', 'Jonquière', 'ATP', 0),
(92, 'MacKenzie', 'Davidson', 35, 'Male', 'Sherbrooke', 'Interior Design', 1),
(93, 'Odette', 'Witt', 23, 'Female', 'Laval', 'CAD', 0),
(94, 'Seth', 'Vega', 32, 'Male', 'Châteauguay', 'Programming', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;