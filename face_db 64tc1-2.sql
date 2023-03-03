-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2023 at 03:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkin`
--

CREATE TABLE `tbl_checkin` (
  `check_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `std_code` varchar(6) NOT NULL,
  `send_line` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_checkin`
--

INSERT INTO `tbl_checkin` (`check_id`, `datetime`, `std_code`, `send_line`) VALUES
(11, '2023-03-01 12:19:00', '006', '1'),
(12, '2023-03-01 12:20:00', '010', '1'),
(13, '2023-03-01 12:20:00', '005', '1'),
(14, '2023-03-01 12:21:00', '001', '1'),
(15, '2023-03-01 12:28:00', '002', '1'),
(16, '2023-03-01 12:29:00', '051', '1'),
(17, '2023-03-01 12:31:00', '009', '1'),
(18, '2023-03-01 12:32:00', '016', '1'),
(19, '2023-03-01 12:34:00', '015', '1'),
(20, '2023-03-01 12:36:00', '008', '1'),
(21, '2023-03-01 12:37:00', '011', '1'),
(22, '2023-03-01 12:38:00', '042', '1'),
(23, '2023-03-01 12:40:00', '040', '1'),
(24, '2023-03-01 12:41:00', '044', '1'),
(25, '2023-03-01 12:42:00', '007', '1'),
(26, '2023-03-01 12:43:00', '024', '1'),
(27, '2023-03-01 12:43:00', '004', '1'),
(28, '2023-03-01 12:46:00', '018', '1'),
(29, '2023-03-01 12:47:00', '012', '1'),
(30, '2023-03-01 12:48:00', '014', '1'),
(31, '2023-03-01 12:51:00', '013', '1'),
(32, '2023-03-01 12:54:00', '017', '1'),
(33, '2023-03-02 13:58:00', '005', '1'),
(34, '2023-03-02 13:58:00', '006', '1'),
(35, '2023-03-02 13:58:00', '015', '1'),
(36, '2023-03-02 13:58:00', '024', '1'),
(37, '2023-03-03 09:42:00', '015', '0'),
(38, '2023-03-03 09:49:00', '006', '1'),
(39, '2023-03-03 09:49:00', '024', '1'),
(40, '2023-03-03 09:49:00', '041', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `std_code` varchar(6) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `level` varchar(1) NOT NULL,
  `room` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`std_code`, `prefix`, `name`, `surname`, `level`, `room`) VALUES
('001', 'นาย', 'กรภัทร์', 'ทองอุบล', '2', '1'),
('002', 'นาย', 'กษิดิ์เดช', 'สมฤดี', '2', '1'),
('004', 'นางสาว', 'ณัฐกานต์', 'ชูเกื้อ', '2', '1'),
('005', 'นาย', 'เดชวริชธิ์', 'มาช่วย', '2', '1'),
('006', 'นาย', 'ธัญวิชญ์', 'บางยี่ขัน', '2', '1'),
('007', 'นาย', 'นนท์ธิชัย', 'รัตนพันธ์', '2', '1'),
('008', 'นาย', 'ปวริศร์', 'ล่องอิ่ม', '2', '1'),
('009', 'นาย', 'ภูเมศ', 'อินทร์อม', '2', '1'),
('010', 'นาย', 'เมฆา', 'นวลแปง', '2', '1'),
('011', 'นาย', 'ภูวดล', 'เต็มแก้ว', '2', '1'),
('012', 'นางสาว', 'ดนยา', 'หนูเพชร', '2', '1'),
('013', 'นางสาว', 'ทาริกา', 'สังข์ติ้น', '2', '1'),
('014', 'นางสาว', 'ณัฏฐณิชา', 'คมขำ', '2', '2'),
('015', 'นาย', 'ธันวา', 'รองขุน', '2', '2'),
('016', 'นาย', 'ปรเมษฐ์', 'สุขสวัสดิ์', '2', '2'),
('017', 'นาย', 'พิชัยพัฒน์', 'จันทร์แก้ว', '2', '2'),
('018', 'นางสาว', 'พิยดา', 'เลื่อนแป้น', '2', '2'),
('020', 'นาย', 'รังสิมันตุ์', 'ไพบูลย์', '2', '2'),
('024', 'นางสาว', 'อทิตยา', 'ปาระสุวรรณโน', '2', '2'),
('040', 'นาย', 'ปวริศ', 'หมวดเมือง', '2', '2'),
('041', 'นาย', 'ศุภชัย', 'คงเพ็ง', '2', '2'),
('042', 'นาย', 'ศุภกิจ', 'ภักดีศรี', '2', '1'),
('044', 'นาย', 'ชญานนท์', 'สุจิระวงศ์', '2', '2'),
('051', 'นาย', 'ศุภกฤต', 'จรัสปุณยพงศ์', '2', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_checkin`
--
ALTER TABLE `tbl_checkin`
  ADD PRIMARY KEY (`check_id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`std_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_checkin`
--
ALTER TABLE `tbl_checkin`
  MODIFY `check_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
