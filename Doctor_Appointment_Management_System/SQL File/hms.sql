-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 04:25 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Dentist', 1, 2, 500, '2020-09-22', '12:00 PM', '2020-09-21 17:47:45', 1, 1, NULL),
(7, 'Dentist', 1, 12, 500, '2020-10-01', '9:15 AM', '2020-09-30 03:15:45', 1, 1, NULL),
(8, 'Demo test', 7, 12, 200, '2020-10-01', '1:45 PM', '2020-09-30 07:34:41', 1, 1, NULL),
(9, 'Homeopath', 11, 13, 500, '2020-09-29', '7:15 PM', '2020-09-30 13:12:43', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `userid`, `chatroomid`, `message`, `chat_date`) VALUES
(1, 4, 1, 'hi there!', '2020-09-26 18:23:23'),
(2, 1, 1, 'hello!!', '2020-09-26 18:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatroom`
--

INSERT INTO `chatroom` (`chatroomid`, `chat_name`, `date_created`, `chat_password`, `userid`) VALUES
(1, 'My First Chat Room', '2017-09-11 13:20:18', 'leeann', 2),
(2, 'Free Entrance :)', '2017-09-11 13:20:51', '', 3),
(3, 'Admin Chat Room', '2017-09-11 13:21:24', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

CREATE TABLE `chat_member` (
  `chat_memberid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_member`
--

INSERT INTO `chat_member` (`chat_memberid`, `chatroomid`, `userid`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1),
(5, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `access` int(5) NOT NULL,
  `location` varchar(25) DEFAULT '',
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `access`, `location`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Dhaka', 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2020-09-30 12:46:20'),
(2, 1, 'Chittagong', 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '2020-09-30 12:46:20'),
(3, 1, 'Barishal', 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '2020-09-30 12:46:20'),
(4, 1, 'Sylhet', 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '2020-09-30 12:46:20'),
(5, 1, 'Dhaka', 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '2020-09-30 12:46:20'),
(6, 1, 'Chittagong', 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '2020-09-30 12:46:20'),
(7, 1, 'Feni', 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2020-09-30 12:46:20'),
(8, 1, 'Dhaka', 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2020-09-30 12:46:20'),
(9, 1, 'Barishal', 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2020-09-30 12:46:20'),
(10, 1, 'Barishal', 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '2020-09-30 12:46:20'),
(11, 1, 'Dhaka', 'Homeopath', 'Mahmudul Kabir Faruq', 'Bashabo', '500', 18455466, 'faruq@gmail.com', '69166b3d0ada7ff2d2a25f562574718b', '2020-09-30 10:52:52', '2020-09-30 13:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com ', 0x3a3a3100000000000000000000000000, '2020-09-29 16:56:56', '29-09-2020 10:27:22 PM', 1),
(21, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 17:15:24', NULL, 0),
(22, 7, 'test@demo.com ', 0x3a3a3100000000000000000000000000, '2020-09-29 17:15:39', '29-09-2020 11:05:47 PM', 1),
(23, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-30 03:14:09', '30-09-2020 08:45:06 AM', 1),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:16:49', '30-09-2020 12:49:42 PM', 1),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:21:51', '30-09-2020 01:04:13 PM', 1),
(26, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:36:10', NULL, 1),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:38:00', '30-09-2020 01:08:13 PM', 1),
(28, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 10:53:12', '30-09-2020 04:24:26 PM', 1),
(29, 11, 'faruq@gmail.com ', 0x3a3a3100000000000000000000000000, '2020-09-30 10:55:02', NULL, 1),
(30, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 11:39:32', NULL, 1),
(31, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 11:41:26', NULL, 1),
(32, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 11:41:29', '30-09-2020 05:17:46 PM', 1),
(33, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 11:57:35', '30-09-2020 05:28:51 PM', 1),
(34, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 11:59:52', NULL, 1),
(35, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 12:12:01', NULL, 1),
(36, 11, 'faruq@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 13:16:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2019-11-05 11:58:59'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 11, 'Md Shahriar Hassan Mojumder', 1682193064, 'mahim@gmail.com', 'male', '8/4-ka, North Bashabo', 56, 'jhbibui', '2020-09-30 13:17:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-21 17:45:50', NULL, 1),
(25, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 12:39:59', '26-09-2020 06:16:49 PM', 1),
(26, NULL, 'test@gmail.com`', 0x3a3a3100000000000000000000000000, '2020-09-26 13:07:30', NULL, 0),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 13:07:47', NULL, 1),
(28, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 15:02:12', NULL, 1),
(29, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 15:13:40', NULL, 0),
(30, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 15:13:45', NULL, 1),
(31, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 15:33:07', NULL, 0),
(32, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 15:33:12', NULL, 1),
(33, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-26 17:36:00', NULL, 1),
(34, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 15:31:24', NULL, 0),
(35, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 15:31:35', NULL, 0),
(36, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 15:31:51', '28-09-2020 09:02:03 PM', 1),
(37, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 15:46:42', NULL, 1),
(38, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 15:58:37', NULL, 1),
(39, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 16:01:00', NULL, 1),
(40, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-28 16:10:26', '28-09-2020 09:41:37 PM', 1),
(41, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 16:54:01', '29-09-2020 10:25:06 PM', 1),
(42, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 16:55:16', NULL, 1),
(43, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 16:55:41', NULL, 1),
(44, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 16:57:30', '29-09-2020 10:30:06 PM', 1),
(45, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 17:00:14', NULL, 0),
(46, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 17:00:20', '29-09-2020 10:45:14 PM', 1),
(47, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-29 17:35:59', NULL, 1),
(48, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 02:13:33', '30-09-2020 08:43:46 AM', 1),
(49, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 03:15:14', NULL, 1),
(50, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:19:48', NULL, 1),
(51, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:34:19', NULL, 1),
(52, 12, 'jhmojumder97@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 07:38:30', NULL, 1),
(53, 13, 'mahim@gmail.com ', 0x3a3a3100000000000000000000000000, '2020-09-30 10:54:37', '30-09-2020 04:24:47 PM', 1),
(54, 13, 'mahim@gmail.com ', 0x3a3a3100000000000000000000000000, '2020-09-30 11:59:03', NULL, 1),
(55, 13, 'mahim@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-30 13:06:53', '30-09-2020 06:43:45 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `access` int(5) NOT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `contact`, `city`, `gender`, `email`, `password`, `access`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', '5465646', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 2, '2016-12-30 05:34:39', '2020-09-30 09:35:51'),
(3, 'Amit', 'New Delhi', '233463', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 2, '2017-01-07 06:36:53', '2020-09-30 09:36:03'),
(4, 'Rahul Singh', 'New Delhi', '2453435412', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 2, '2017-01-07 07:41:14', '2020-09-30 09:36:14'),
(5, 'Amit kumar', 'New Delhi India', '5645232', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 2, '2017-01-07 08:00:26', '2020-09-30 09:36:26'),
(6, 'Test user', 'New Delhi', '3463634', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 2, '2019-06-23 18:24:53', '2020-09-30 09:36:39'),
(7, 'John', 'USA', '24523', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', 2, '2019-11-10 18:40:21', '2020-09-30 09:36:52'),
(12, 'Md Jahidul Hassan Mojumder', 'North Bashabo, Shabujbag, Dhaka, 1214', '01873193064', 'Dhaka', 'male', 'jhmojumder97@gmail.com', '256f7b43d097c6e89b3217ba736bf01f', 2, '2020-09-28 15:46:25', NULL),
(13, 'Md Shahriar Hassan Mojumder', '8/4-ka, North Bashabo', '01682193064', 'Dhaka', 'male', 'mahim@gmail.com', 'b2bdb200bed12203aee9fbfa07594991', 2, '2020-09-30 10:48:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`chatroomid`);

--
-- Indexes for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`chat_memberid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
