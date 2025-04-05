-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2025 at 05:02 AM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SMP`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `active_flag` bit(1) DEFAULT NULL,
  `id` bigint NOT NULL,
  `menu_id` int DEFAULT NULL,
  `permission` bit(1) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`active_flag`, `id`, `menu_id`, `permission`, `role_id`, `create_date`, `update_date`) VALUES
(b'1', 1, 1, b'1', 1, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 2, 1, b'1', 2, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 3, 1, b'1', 3, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 31, 4, b'1', 3, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 32, 4, b'1', 2, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 33, 3, b'1', 1, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 34, 2, b'1', 1, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 35, 5, b'1', 1, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 36, 6, b'1', 2, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 37, 6, b'1', 3, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000'),
(b'1', 38, 6, b'1', 3, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`id`, `code`, `name`) VALUES
(1, 'C001', 'Nguyễn Văn A'),
(2, 'C002', 'Trần Thị B'),
(3, 'C003', 'Lê Hoàng C'),
(4, 'MATH101', 'Giải tích 1'),
(5, 'MATH102', 'Giải tích 2'),
(6, 'PHYS101', 'Vật lý đại cương 1'),
(7, 'PHYS102', 'Vật lý đại cương 2'),
(8, 'CHEM101', 'Hóa học đại cương'),
(9, 'BIO101', 'Sinh học đại cương'),
(10, 'CS101', 'Lập trình cơ bản'),
(11, 'CS102', 'Cấu trúc dữ liệu và giải thuật'),
(12, 'CS103', 'Lập trình hướng đối tượng'),
(13, 'CS104', 'Cơ sở dữ liệu'),
(14, 'CS105', 'Mạng máy tính'),
(15, 'CS106', 'Hệ điều hành'),
(16, 'CS107', 'Trí tuệ nhân tạo'),
(17, 'CS108', 'Học máy'),
(18, 'CS109', 'Lập trình web'),
(19, 'CS110', 'Phát triển ứng dụng di động'),
(20, 'CS111', 'An toàn thông tin'),
(21, 'CS112', 'Điện toán đám mây'),
(22, 'CS113', 'Xử lý ảnh'),
(23, 'CS114', 'Khoa học dữ liệu'),
(24, 'ECON101', 'Kinh tế vi mô'),
(25, 'ECON102', 'Kinh tế vĩ mô'),
(26, 'MGMT101', 'Quản trị kinh doanh'),
(27, 'FIN101', 'Tài chính doanh nghiệp'),
(28, 'ACC101', 'Kế toán tài chính'),
(29, 'MKT101', 'Marketing căn bản'),
(30, 'LAW101', 'Luật kinh tế'),
(31, 'PSY101', 'Tâm lý học đại cương'),
(32, 'SOC101', 'Xã hội học'),
(33, 'HIST101', 'Lịch sử thế giới'),
(34, 'PHIL101', 'Triết học Mác - Lênin'),
(35, 'POL101', 'Chính trị học'),
(36, 'EDU101', 'Giáo dục học'),
(37, 'LIT101', 'Văn học Việt Nam'),
(38, 'ENG101', 'Tiếng Anh cơ bản'),
(39, 'ENG102', 'Tiếng Anh nâng cao'),
(40, 'FRE101', 'Tiếng Pháp căn bản'),
(41, 'GER101', 'Tiếng Đức căn bản'),
(42, 'JPN101', 'Tiếng Nhật căn bản'),
(43, 'CHN101', 'Tiếng Trung căn bản'),
(44, 'MED101', 'Giải phẫu học'),
(45, 'MED102', 'Sinh lý học'),
(46, 'MED103', 'Dược lý học'),
(47, 'MED104', 'Vi sinh y học'),
(48, 'MED105', 'Y học cổ truyền'),
(49, 'MED106', 'Y học dự phòng'),
(50, 'MED107', 'Chẩn đoán hình ảnh'),
(51, 'MED108', 'Phẫu thuật căn bản'),
(52, 'MED109', 'Điều dưỡng cơ bản'),
(53, 'MED110', 'Tâm thần học'),
(54, 'ENG201', 'Tiếng Anh chuyên ngành'),
(55, 'FRE201', 'Tiếng Pháp chuyên ngành'),
(56, 'GER201', 'Tiếng Đức chuyên ngành'),
(57, 'PHYS201', 'Vật lý đại cương 3'),
(58, 'MATH201', 'Giải tích nâng cao'),
(59, 'CHEM201', 'Hóa học vô cơ'),
(60, 'BIO201', 'Sinh học tế bào'),
(61, 'CS201', 'Lập trình nâng cao'),
(62, 'CS202', 'Cơ sở dữ liệu nâng cao'),
(63, 'CS203', 'Khoa học máy tính nâng cao'),
(64, 'IS201', 'Hệ thống thông tin doanh nghiệp'),
(65, 'DS201', 'Khoa học dữ liệu nâng cao'),
(66, 'EE201', 'Kỹ thuật điện nâng cao'),
(67, 'CE201', 'Kỹ thuật cơ khí nâng cao'),
(68, 'ME201', 'Kỹ thuật hàng không nâng cao'),
(69, 'AE201', 'Kỹ thuật hàng không cơ bản'),
(70, 'CIV201', 'Kỹ thuật xây dựng'),
(71, 'ENV201', 'Kỹ thuật môi trường nâng cao'),
(72, 'MATH202', 'Toán học ứng dụng'),
(73, 'PHYS202', 'Vật lý kỹ thuật'),
(74, 'CHEM202', 'Kỹ thuật hóa học'),
(75, 'FIN201', 'Tài chính doanh nghiệp nâng cao'),
(76, 'HRM201', 'Quản trị nhân sự nâng cao'),
(77, 'MKT201', 'Marketing nâng cao'),
(78, 'SOC201', 'Xã hội học nâng cao'),
(79, 'POL201', 'Chính trị học nâng cao'),
(80, 'LAW201', 'Luật quốc tế'),
(81, 'LAW202', 'Luật dân sự'),
(82, 'EDU201', 'Phương pháp giảng dạy đại cương'),
(83, 'PHIL102', 'Triết học phương Tây'),
(84, 'PSY102', 'Tâm lý học xã hội'),
(85, 'MKT202', 'Marketing chiến lược'),
(86, 'ECON201', 'Kinh tế học quốc tế'),
(87, 'BIO202', 'Công nghệ sinh học'),
(88, 'MATH203', 'Toán rời rạc'),
(89, 'PHYS203', 'Vật lý ứng dụng'),
(90, 'CS204', 'Hệ thống nhúng'),
(91, 'EE202', 'Điện tử kỹ thuật'),
(92, 'BIO203', 'Molecular Biology'),
(93, 'SOC202', 'Xã hội học hiện đại'),
(94, 'LAW203', 'Luật thương mại'),
(95, 'MED201', 'Y học chuyên ngành'),
(96, 'ENG203', 'Tiếng Anh giao tiếp nâng cao'),
(97, 'MKT203', 'Quản lý Marketing'),
(98, 'POL202', 'Chính trị học quốc tế'),
(99, 'SOC203', 'Nghiên cứu xã hội học'),
(100, 'ECON202', 'Kinh tế học tổ chức'),
(101, 'HRM202', 'Kỹ năng lãnh đạo trong quản trị nhân sự'),
(102, 'MKT204', 'Marketing kỹ thuật số'),
(103, 'CS205', 'Phát triển phần mềm'),
(104, 'IS202', 'Hệ thống thông tin quản lý'),
(105, 'DS202', 'Lập trình khoa học dữ liệu'),
(106, 'MED202', 'Y học cổ truyền nâng cao'),
(107, 'ME202', 'Kỹ thuật cơ khí nâng cao'),
(108, 'AE202', 'Vận hành máy bay'),
(109, 'EE203', 'Lý thuyết mạch điện'),
(110, 'CS206', 'Phát triển web nâng cao'),
(111, 'PHYS204', 'Cơ học lý thuyết'),
(112, 'CHEM203', 'Hóa học hữu cơ'),
(113, 'BIO204', 'Sinh học phân tử'),
(114, 'CS207', 'An ninh mạng'),
(115, 'MED203', 'Dược học nâng cao'),
(116, 'BIO205', 'Sinh học thực nghiệm'),
(117, 'MATH204', 'Lý thuyết xác suất'),
(118, 'CHEM204', 'Hóa học phân tích'),
(119, 'SOC204', 'Chính trị học xã hội'),
(120, 'MED204', 'Tâm lý học bệnh học'),
(121, 'HRM203', 'Đánh giá hiệu suất nhân sự'),
(122, 'POL203', 'Lý luận chính trị'),
(123, 'IS203', 'Công nghệ thông tin trong quản lý'),
(124, 'ENG204', 'Tiếng Anh cho học thuật'),
(125, 'CS208', 'Khoa học dữ liệu cơ bản'),
(126, 'EE204', 'Điện tử viễn thông'),
(127, 'BIO206', 'Sinh học học đường'),
(128, 'ME203', 'Quản lý dự án xây dựng'),
(129, 'ECON203', 'Kinh tế học môi trường'),
(130, 'MKT205', 'Chiến lược Marketing toàn cầu'),
(131, 'IS204', 'Công nghệ thông tin và quản lý dữ liệu'),
(132, 'CS209', 'Lập trình mobile'),
(133, 'LAW204', 'Pháp luật và xã hội'),
(134, 'PHYS205', 'Vật lý thực nghiệm'),
(135, 'MKT206', 'Nghiên cứu thị trường'),
(136, 'CS210', 'Lập trình dữ liệu lớn'),
(137, 'MATH205', 'Hình học phân tích'),
(138, 'SOC205', 'Nghiên cứu xã hội học nâng cao'),
(139, 'POL204', 'Phân tích chính trị'),
(140, 'BIO207', 'Di truyền học'),
(141, 'HRM204', 'Lãnh đạo và văn hóa tổ chức'),
(142, 'CS211', 'Phát triển ứng dụng di động'),
(143, 'CHEM205', 'Hóa học hữu cơ nâng cao'),
(144, 'PHYS206', 'Quang học'),
(145, 'MED205', 'Y học chuyên sâu'),
(146, 'CS212', 'Công nghệ phần mềm'),
(147, 'MKT207', 'Quản lý Marketing quốc tế');

-- --------------------------------------------------------

--
-- Table structure for table `class_info`
--

CREATE TABLE `class_info` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `class_info`
--

INSERT INTO `class_info` (`id`, `code`, `name`) VALUES
(1, 'A01', 'Lớp A1'),
(2, 'B02', 'Lớp B2'),
(3, 'C03', 'Lớp C3');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` enum('KHONG_XAC_DINH','NAM','NU') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`, `code`) VALUES
(1, 'Không xác định', 'KHONG_XAC_DINH'),
(2, 'Nam', 'NAM'),
(3, 'Nữ', 'NU');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`id`, `code`, `name`) VALUES
(1, 'IT001', 'Công nghệ thông tin'),
(2, 'EE002', 'Kỹ thuật điện'),
(3, 'ME003', 'Cơ khí chế tạo'),
(4, 'CS', 'Khoa học máy tính'),
(5, 'SE', 'Kỹ thuật phần mềm'),
(6, 'AI', 'Trí tuệ nhân tạo'),
(7, 'IS', 'Hệ thống thông tin'),
(8, 'DS', 'Khoa học dữ liệu'),
(9, 'CE', 'Kỹ thuật máy tính'),
(10, 'EE', 'Kỹ thuật điện'),
(11, 'ME', 'Kỹ thuật cơ khí'),
(12, 'AE', 'Kỹ thuật hàng không'),
(13, 'ARCH', 'Kiến trúc'),
(14, 'BIO', 'Công nghệ sinh học'),
(15, 'CHEM', 'Kỹ thuật hóa học'),
(16, 'CIV', 'Kỹ thuật xây dựng'),
(17, 'ENV', 'Kỹ thuật môi trường'),
(18, 'MAT', 'Khoa học vật liệu'),
(19, 'MATH', 'Toán ứng dụng'),
(20, 'PHYS', 'Vật lý kỹ thuật'),
(21, 'ECON', 'Kinh tế học'),
(22, 'FIN', 'Tài chính ngân hàng'),
(23, 'MKT', 'Marketing'),
(24, 'MGMT', 'Quản trị kinh doanh'),
(25, 'HRM', 'Quản trị nhân sự'),
(26, 'LAW', 'Luật'),
(27, 'PSY', 'Tâm lý học'),
(28, 'MED', 'Y khoa'),
(29, 'NUR', 'Điều dưỡng'),
(30, 'PHARM', 'Dược học'),
(31, 'VET', 'Thú y'),
(32, 'EDU', 'Giáo dục học'),
(33, 'SOC', 'Xã hội học');

-- --------------------------------------------------------

--
-- Table structure for table `major_child`
--

CREATE TABLE `major_child` (
  `child_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `major_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `major_child`
--

INSERT INTO `major_child` (`child_id`, `id`, `major_id`, `name`) VALUES
(1, 1, 1, 'Giải tích 1'),
(2, 2, 1, 'Giải tích 2'),
(3, 3, 2, 'Vật lý đại cương 1'),
(4, 4, 2, 'Vật lý đại cương 2'),
(5, 5, 3, 'Hóa học đại cương'),
(6, 6, 3, 'Sinh học đại cương'),
(7, 7, 4, 'Lập trình cơ bản'),
(8, 8, 4, 'Cấu trúc dữ liệu và giải thuật'),
(9, 9, 4, 'Lập trình hướng đối tượng'),
(10, 10, 5, 'Cơ sở dữ liệu'),
(11, 11, 5, 'Mạng máy tính'),
(12, 12, 6, 'Hệ điều hành'),
(13, 13, 6, 'Trí tuệ nhân tạo'),
(14, 14, 7, 'Học máy'),
(15, 15, 8, 'Lập trình web'),
(16, 16, 8, 'Phát triển ứng dụng di động'),
(17, 17, 9, 'An toàn thông tin'),
(18, 18, 9, 'Điện toán đám mây'),
(19, 19, 10, 'Xử lý ảnh'),
(20, 20, 10, 'Khoa học dữ liệu'),
(21, 21, 11, 'Kinh tế vi mô'),
(22, 22, 11, 'Kinh tế vĩ mô'),
(23, 23, 12, 'Quản trị kinh doanh'),
(24, 24, 13, 'Tài chính doanh nghiệp'),
(25, 25, 14, 'Kế toán tài chính'),
(26, 26, 14, 'Marketing căn bản'),
(27, 27, 15, 'Luật kinh tế'),
(28, 28, 15, 'Tâm lý học đại cương'),
(29, 29, 16, 'Xã hội học'),
(30, 30, 16, 'Lịch sử thế giới'),
(31, 31, 17, 'Triết học Mác - Lênin'),
(32, 32, 17, 'Chính trị học'),
(33, 33, 18, 'Giáo dục học'),
(34, 34, 19, 'Văn học Việt Nam'),
(35, 35, 19, 'Tiếng Anh cơ bản'),
(36, 36, 20, 'Tiếng Anh nâng cao'),
(37, 37, 20, 'Tiếng Pháp căn bản'),
(38, 38, 21, 'Tiếng Đức căn bản'),
(39, 39, 21, 'Tiếng Nhật căn bản'),
(40, 40, 22, 'Tiếng Trung căn bản'),
(41, 41, 22, 'Giải phẫu học'),
(42, 42, 23, 'Sinh lý học'),
(43, 43, 23, 'Dược lý học'),
(44, 44, 24, 'Vi sinh y học'),
(45, 45, 24, 'Y học cổ truyền'),
(46, 46, 25, 'Y học dự phòng'),
(47, 47, 25, 'Chẩn đoán hình ảnh'),
(48, 48, 26, 'Phẫu thuật căn bản'),
(49, 49, 26, 'Điều dưỡng cơ bản'),
(50, 50, 27, 'Tâm thần học'),
(51, 51, 27, 'Tiếng Anh chuyên ngành'),
(52, 52, 28, 'Tiếng Pháp chuyên ngành'),
(53, 53, 1, 'Tiếng Đức chuyên ngành'),
(54, 54, 2, 'Vật lý đại cương 3'),
(55, 55, 3, 'Giải tích nâng cao'),
(56, 56, 4, 'Hóa học vô cơ'),
(57, 57, 5, 'Sinh học tế bào'),
(58, 58, 6, 'Lập trình nâng cao'),
(59, 59, 7, 'Cơ sở dữ liệu nâng cao'),
(60, 60, 8, 'Khoa học máy tính nâng cao'),
(61, 61, 9, 'Hệ thống thông tin doanh nghiệp'),
(62, 62, 10, 'Khoa học dữ liệu nâng cao'),
(63, 63, 11, 'Kỹ thuật điện nâng cao'),
(64, 64, 12, 'Kỹ thuật cơ khí nâng cao'),
(65, 65, 13, 'Kỹ thuật hàng không nâng cao'),
(66, 66, 14, 'Kỹ thuật hàng không cơ bản'),
(67, 67, 15, 'Kỹ thuật xây dựng'),
(68, 68, 16, 'Kỹ thuật môi trường nâng cao'),
(69, 69, 17, 'Toán học ứng dụng'),
(70, 70, 18, 'Vật lý kỹ thuật'),
(71, 71, 19, 'Kỹ thuật hóa học'),
(72, 72, 20, 'Tài chính doanh nghiệp nâng cao'),
(73, 73, 21, 'Quản trị nhân sự nâng cao'),
(74, 74, 22, 'Marketing nâng cao'),
(75, 75, 23, 'Xã hội học nâng cao'),
(76, 76, 24, 'Chính trị học nâng cao'),
(77, 77, 25, 'Luật quốc tế'),
(78, 78, 1, 'Luật dân sự'),
(79, 79, 2, 'Phương pháp giảng dạy đại cương'),
(80, 80, 3, 'Triết học phương Tây'),
(81, 81, 4, 'Tâm lý học xã hội'),
(82, 82, 5, 'Marketing chiến lược'),
(83, 83, 6, 'Kinh tế học quốc tế'),
(84, 84, 7, 'Công nghệ sinh học'),
(85, 85, 8, 'Toán rời rạc'),
(86, 86, 9, 'Vật lý ứng dụng'),
(87, 87, 10, 'Hệ thống nhúng'),
(88, 88, 11, 'Điện tử kỹ thuật'),
(89, 89, 12, 'Molecular Biology'),
(90, 90, 13, 'Xã hội học hiện đại'),
(91, 91, 14, 'Luật thương mại'),
(92, 92, 15, 'Y học chuyên ngành'),
(93, 93, 16, 'Tiếng Anh giao tiếp nâng cao'),
(94, 94, 17, 'Quản lý Marketing'),
(95, 95, 18, 'Chính trị học quốc tế'),
(96, 96, 19, 'Nghiên cứu xã hội học'),
(97, 97, 20, 'Kinh tế học tổ chức'),
(98, 98, 21, 'Kỹ năng lãnh đạo trong quản trị nhân sự'),
(99, 99, 22, 'Marketing kỹ thuật số'),
(100, 100, 23, 'Phát triển phần mềm'),
(101, 101, 24, 'Hệ thống thông tin quản lý'),
(102, 102, 25, 'Lập trình khoa học dữ liệu'),
(103, 103, 1, 'Y học cổ truyền nâng cao'),
(104, 104, 2, 'Kỹ thuật cơ khí nâng cao'),
(105, 105, 3, 'Vận hành máy bay'),
(106, 106, 4, 'Lý thuyết mạch điện'),
(107, 107, 5, 'Phát triển web nâng cao'),
(108, 108, 6, 'Cơ học lý thuyết'),
(109, 109, 7, 'Hóa học hữu cơ'),
(110, 110, 8, 'Sinh học phân tử'),
(111, 111, 9, 'An ninh mạng'),
(112, 112, 10, 'Dược học nâng cao'),
(113, 113, 11, 'Sinh học thực nghiệm'),
(114, 114, 12, 'Lý thuyết xác suất'),
(115, 115, 13, 'Hóa học phân tích'),
(116, 116, 14, 'Chính trị học xã hội'),
(117, 117, 15, 'Tâm lý học bệnh học'),
(118, 118, 16, 'Đánh giá hiệu suất nhân sự'),
(119, 119, 17, 'Lý luận chính trị'),
(120, 120, 18, 'Công nghệ thông tin trong quản lý'),
(121, 121, 19, 'Tiếng Anh cho học thuật'),
(122, 122, 20, 'Khoa học dữ liệu cơ bản'),
(123, 123, 21, 'Điện tử viễn thông'),
(124, 124, 22, 'Sinh học học đường'),
(125, 125, 23, 'Quản lý dự án xây dựng'),
(126, 126, 24, 'Kinh tế học môi trường'),
(127, 127, 25, 'Chiến lược Marketing toàn cầu'),
(128, 128, 1, 'Công nghệ thông tin và quản lý dữ liệu'),
(129, 129, 2, 'Lập trình mobile'),
(130, 130, 3, 'Pháp luật và xã hội'),
(131, 131, 4, 'Vật lý thực nghiệm'),
(132, 132, 5, 'Nghiên cứu thị trường'),
(133, 133, 6, 'Lập trình dữ liệu lớn'),
(134, 134, 7, 'Hình học phân tích'),
(135, 135, 8, 'Nghiên cứu xã hội học nâng cao'),
(136, 136, 9, 'Phân tích chính trị'),
(137, 137, 10, 'Di truyền học'),
(138, 138, 11, 'Lãnh đạo và văn hóa tổ chức'),
(139, 139, 12, 'Phát triển ứng dụng di động'),
(140, 140, 13, 'Hóa học hữu cơ nâng cao'),
(141, 141, 14, 'Quang học'),
(142, 142, 15, 'Y học chuyên sâu'),
(143, 143, 16, 'Công nghệ phần mềm'),
(144, 144, 17, 'Quản lý Marketing quốc tế');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `active_flag` bit(1) DEFAULT NULL,
  `id` int NOT NULL,
  `order_index` int DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`active_flag`, `id`, `order_index`, `parent_id`, `create_date`, `update_date`, `name`, `url`) VALUES
(b'1', 1, 1, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', 'Trang chủ', '/dashboard'),
(b'1', 2, 2, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', 'Quản lý người dùng', '/user'),
(b'1', 3, 3, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', 'Quản lý môn học', '/subject'),
(b'1', 4, 4, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', 'Đăng kí môn học', '/timetable'),
(b'1', 5, 5, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', 'Tạo thời khóa biểu', '/timetable'),
(b'1', 6, 6, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', 'Xem thời khóa biểu', '/timetable'),
(b'1', 7, 7, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', NULL, '/careers'),
(b'1', 8, 8, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', NULL, '/privacy-policy'),
(b'1', 9, 9, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', NULL, '/terms-of-service'),
(b'1', 10, 10, 0, '2025-04-01 00:00:00.000000', '2025-04-01 00:00:00.000000', NULL, '/help');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `end_hour` time(6) DEFAULT NULL,
  `id` int NOT NULL,
  `start_hour` time(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`end_hour`, `id`, `start_hour`, `name`) VALUES
('07:45:00.000000', 1, '07:00:00.000000', 'Tiết 1'),
('08:35:00.000000', 2, '07:50:00.000000', 'Tiết 2'),
('09:25:00.000000', 3, '08:40:00.000000', 'Tiết 3'),
('10:15:00.000000', 4, '09:30:00.000000', 'Tiết 4'),
('11:05:00.000000', 5, '10:20:00.000000', 'Tiết 5'),
('11:55:00.000000', 6, '11:10:00.000000', 'Tiết 6'),
('13:45:00.000000', 7, '13:00:00.000000', 'Tiết 7'),
('14:35:00.000000', 8, '13:50:00.000000', 'Tiết 8'),
('15:25:00.000000', 9, '14:40:00.000000', 'Tiết 9'),
('16:15:00.000000', 10, '15:30:00.000000', 'Tiết 10');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `class_info_id` int DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `debt_tuition_fee` double DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `learned_credits` int DEFAULT NULL,
  `major_id` int DEFAULT NULL,
  `paid_tuition_fee` double DEFAULT NULL,
  `score_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `teacher_id` bigint DEFAULT NULL,
  `tuition_fee` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `identity_card` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`class_info_id`, `date_of_birth`, `debt_tuition_fee`, `gender_id`, `learned_credits`, `major_id`, `paid_tuition_fee`, `score_id`, `status_id`, `teacher_id`, `tuition_fee`, `address`, `email`, `identity_card`, `image`, `name`, `phone`) VALUES
(3, '2001-03-15', 1200.5, 1, 45, 3, 5000, 20001, 1, 11, 6200.5, '123 Main St', 'user1@example.com', '100000001', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Nguyen Van A', '0912345678'),
(3, '2000-08-21', 2500, 2, 50, 5, 7000, 20002, 2, 12, 9500, '456 Elm St', 'user2@example.com', '100000002', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Tran Thi B', '0923456789'),
(3, '2002-02-10', 1800.75, 1, 55, 8, 6200, 20003, 1, 15, 8000.75, '789 Oak St', 'user3@example.com', '100000003', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Le Van C', '0934567890'),
(3, '2001-07-12', 2200.3, 2, 60, 2, 7800, 20004, 2, 14, 10000.3, '101 Pine St', 'user4@example.com', '100000004', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Pham Thi D', '0945678901'),
(3, '2000-12-05', 2500.6, 1, 70, 10, 9000, 20005, 1, 11, 11500.6, '222 Maple St', 'user5@example.com', '100000005', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Hoang Van E', '0956789012'),
(3, '2003-02-20', 1300.9, 2, 40, 6, 5500, 20006, 3, 13, 6800.9, '333 Cedar St', 'user6@example.com', '100000006', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Ngo Thi F', '0967890123'),
(3, '2002-11-15', 3000.25, 1, 75, 12, 9500, 20007, 2, 16, 12500.25, '444 Birch St', 'user7@example.com', '100000007', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Bui Van G', '0978901234'),
(3, '2001-06-18', 2100.45, 2, 58, 7, 7200, 20008, 1, 18, 9300.45, '555 Fir St', 'user8@example.com', '100000008', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Pham Thi H', '0989012345'),
(3, '2003-08-29', 1900.7, 1, 52, 4, 6400, 20009, 3, 17, 8300.7, '666 Redwood St', 'user9@example.com', '100000009', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Tran Van I', '0990123456'),
(3, '2000-04-25', 2300.85, 2, 65, 9, 8600, 20010, 2, 19, 10900.85, '777 Walnut St', 'user10@example.com', '100000010', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Nguyen Thi J', '0901234567'),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '1233333444444', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '12344444555', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '1234445555', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '123455', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '123456566', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '12345677', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '22', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, '222222', NULL, NULL, NULL),
(NULL, NULL, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, 'aaaa', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `active_flag` bit(1) DEFAULT NULL,
  `id` int NOT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `code` enum('ADMIN','GIANG_VIEN','SINH_VIEN') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`active_flag`, `id`, `create_date`, `update_date`, `role_name`, `description`, `code`) VALUES
(b'1', 1, '2025-04-03 07:59:24.000000', '2025-04-03 07:59:24.000000', 'Quản trị viên', 'Quyền quản trị toàn bộ hệ thống', 'ADMIN'),
(b'1', 2, '2025-04-03 07:59:24.000000', '2025-04-03 07:59:24.000000', 'Giảng viên', 'Quyền dành cho giảng viên', 'GIANG_VIEN'),
(b'1', 3, '2025-04-03 07:59:24.000000', '2025-04-03 07:59:24.000000', 'Sinh viên', 'Quyền dành cho sinh viên', 'SINH_VIEN');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `capacity` bigint DEFAULT NULL,
  `is_allowed` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`capacity`, `is_allowed`, `name`) VALUES
(50, b'1', 'Phòng 101'),
(30, b'1', 'Phòng 102'),
(40, b'1', 'Phòng 103'),
(35, b'1', 'Phòng 104'),
(45, b'1', 'Phòng 105'),
(25, b'1', 'Phòng 106'),
(60, b'1', 'Phòng 107'),
(20, b'1', 'Phòng 108'),
(55, b'1', 'Phòng 109'),
(50, b'1', 'Phòng 110'),
(40, b'1', 'Phòng 111'),
(30, b'1', 'Phòng 112'),
(35, b'1', 'Phòng 113'),
(45, b'1', 'Phòng 114'),
(60, b'1', 'Phòng 115'),
(25, b'1', 'Phòng 116'),
(55, b'1', 'Phòng 117'),
(20, b'1', 'Phòng 118'),
(50, b'1', 'Phòng 119'),
(40, b'1', 'Phòng 120'),
(30, b'1', 'Phòng 121'),
(35, b'1', 'Phòng 122'),
(45, b'1', 'Phòng 123'),
(60, b'1', 'Phòng 124'),
(25, b'1', 'Phòng 125'),
(55, b'1', 'Phòng 126'),
(50, b'1', 'Phòng 127'),
(40, b'1', 'Phòng 128'),
(30, b'1', 'Phòng 129'),
(35, b'1', 'Phòng 130'),
(45, b'1', 'Phòng 131'),
(60, b'1', 'Phòng 132'),
(25, b'1', 'Phòng 133'),
(55, b'1', 'Phòng 134'),
(20, b'1', 'Phòng 135'),
(50, b'1', 'Phòng 136'),
(40, b'1', 'Phòng 137'),
(30, b'1', 'Phòng 138'),
(35, b'1', 'Phòng 139'),
(45, b'1', 'Phòng 140'),
(60, b'1', 'Phòng 141'),
(25, b'1', 'Phòng 142'),
(55, b'1', 'Phòng 143'),
(50, b'1', 'Phòng 144'),
(40, b'1', 'Phòng 145'),
(30, b'1', 'Phòng 146'),
(35, b'1', 'Phòng 147'),
(45, b'1', 'Phòng 148'),
(60, b'1', 'Phòng 149'),
(25, b'1', 'Phòng 150');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `a` float DEFAULT NULL,
  `average` float DEFAULT NULL,
  `b` float DEFAULT NULL,
  `c` float DEFAULT NULL,
  `id` int NOT NULL,
  `subject_id` int DEFAULT NULL,
  `term_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`a`, `average`, `b`, `c`, `id`, `subject_id`, `term_id`) VALUES
(7.5, 7.7, 7.2, 7.8, 20001, 10001, 1),
(8, 8.3, 7.9, 8.2, 20002, 10002, 2),
(6.5, 6.7, 6.3, 6.8, 20003, 10003, 3),
(5.5, 5.7, 5.2, 5.9, 20004, 10004, 1),
(9, 9.2, 8.8, 9.3, 20005, 10005, 2),
(7.2, 7.4, 7.1, 7.6, 20006, 10006, 3),
(8.5, 8.7, 8.3, 8.8, 20007, 10007, 1),
(6.8, 7, 6.5, 7.2, 20008, 10008, 2),
(7.9, 8.1, 7.6, 8.2, 20009, 10009, 3),
(5.6, 5.9, 5.3, 6, 20010, 10010, 1),
(9.1, 9.3, 8.9, 9.4, 20011, 10011, 2),
(7.4, 7.6, 7.2, 7.7, 20012, 10012, 3),
(8.7, 8.9, 8.5, 9, 20013, 10013, 1),
(6.3, 6.5, 6, 6.6, 20014, 10014, 2),
(7.2, 7.4, 7, 7.5, 20015, 10015, 3),
(5.9, 6.1, 5.6, 6.3, 20016, 10016, 1),
(9.5, 9.7, 9.3, 9.8, 20017, 10017, 2),
(7.8, 8, 7.6, 8.1, 20018, 10018, 3),
(8.3, 8.5, 8.1, 8.6, 20019, 10019, 1),
(6.1, 6.3, 5.9, 6.4, 20020, 10020, 2),
(7.5, 7.7, 7.3, 7.8, 20021, 10021, 3),
(5.2, 5.5, 5, 5.6, 20022, 10022, 1),
(9.8, 10, 9.6, 10, 20023, 10023, 2),
(8, 8.2, 7.8, 8.3, 20024, 10024, 3),
(7.6, 7.8, 7.4, 7.9, 20025, 10025, 1),
(6.9, 7.1, 6.7, 7.2, 20026, 10026, 2),
(8.1, 8.3, 7.9, 8.4, 20027, 10027, 3),
(5.4, 5.6, 5.2, 5.7, 20028, 10028, 1),
(9.7, 9.9, 9.5, 10, 20029, 10029, 2),
(7.3, 7.5, 7.1, 7.6, 20030, 10030, 3),
(6.7, 6.9, 6.5, 7, 20031, 10031, 1),
(8.9, 9.1, 8.7, 9.2, 20032, 10032, 2),
(5.8, 6, 5.6, 6.1, 20033, 10033, 3),
(7, 7.2, 6.8, 7.3, 20034, 10034, 1),
(6.5, 6.7, 6.3, 6.8, 20035, 10035, 2),
(9.2, 9.4, 9, 9.5, 20036, 10036, 3),
(7.8, 8, 7.6, 8.1, 20037, 10037, 1),
(6, 6.2, 5.8, 6.3, 20038, 10038, 2),
(8.6, 8.8, 8.4, 8.9, 20039, 10039, 3),
(5.1, 5.4, 4.9, 5.5, 20040, 10040, 1),
(9.3, 9.5, 9.1, 9.6, 20041, 10041, 2),
(7.7, 7.9, 7.5, 8, 20042, 10042, 3),
(8.4, 8.6, 8.2, 8.7, 20043, 10043, 1),
(6.2, 6.4, 6, 6.5, 20044, 10044, 2),
(7.9, 8.1, 7.7, 8.2, 20045, 10045, 3),
(5.7, 5.9, 5.5, 6, 20046, 10046, 1),
(9.6, 9.8, 9.4, 9.9, 20047, 10047, 2),
(7.1, 7.3, 6.9, 7.4, 20048, 10048, 3),
(8, 8.2, 7.8, 8.3, 20049, 10049, 1),
(6.8, 7, 6.6, 7.1, 20050, 10050, 2),
(7.1, 7.3, 6.9, 7.5, 20051, 10001, 1),
(8.4, 8.6, 8.2, 8.7, 20052, 10002, 2),
(6.3, 6.5, 6.1, 6.7, 20053, 10003, 3),
(5.9, 6.1, 5.7, 6.3, 20054, 10004, 1),
(9.2, 9.4, 9, 9.5, 20055, 10005, 2),
(7.5, 7.7, 7.3, 7.9, 20056, 10006, 3),
(8.1, 8.3, 7.9, 8.5, 20057, 10007, 1),
(6.7, 6.9, 6.5, 7.1, 20058, 10008, 2),
(7.9, 8.1, 7.7, 8.3, 20059, 10009, 3),
(5.6, 5.8, 5.4, 6, 20060, 10010, 1),
(9, 9.2, 8.8, 9.4, 20061, 10011, 2),
(7.4, 7.6, 7.2, 7.8, 20062, 10012, 3),
(8.6, 8.8, 8.4, 9, 20063, 10013, 1),
(6.2, 6.4, 6, 6.6, 20064, 10014, 2),
(7.7, 7.9, 7.5, 8.1, 20065, 10015, 3),
(5.8, 6, 5.6, 6.2, 20066, 10016, 1),
(9.5, 9.7, 9.3, 9.9, 20067, 10017, 2),
(7.2, 7.4, 7, 7.6, 20068, 10018, 3),
(8.3, 8.5, 8.1, 8.7, 20069, 10019, 1),
(6.1, 6.3, 5.9, 6.5, 20070, 10020, 2),
(7.8, 8, 7.6, 8.2, 20071, 10021, 3),
(5.3, 5.5, 5.1, 5.7, 20072, 10022, 1),
(9.8, 10, 9.6, 10, 20073, 10023, 2),
(8, 8.2, 7.8, 8.4, 20074, 10024, 3),
(7.6, 7.8, 7.4, 8, 20075, 10025, 1),
(6.9, 7.1, 6.7, 7.3, 20076, 10026, 2),
(8.1, 8.3, 7.9, 8.5, 20077, 10027, 3),
(5.4, 5.6, 5.2, 5.8, 20078, 10028, 1),
(9.7, 9.9, 9.5, 10, 20079, 10029, 2),
(7.3, 7.5, 7.1, 7.7, 20080, 10030, 3),
(6.7, 6.9, 6.5, 7.1, 20081, 10031, 1),
(8.9, 9.1, 8.7, 9.3, 20082, 10032, 2),
(5.8, 6, 5.6, 6.2, 20083, 10033, 3),
(7, 7.2, 6.8, 7.4, 20084, 10034, 1),
(6.5, 6.7, 6.3, 6.9, 20085, 10035, 2),
(9.2, 9.4, 9, 9.6, 20086, 10036, 3),
(7.8, 8, 7.6, 8.2, 20087, 10037, 1),
(6, 6.2, 5.8, 6.4, 20088, 10038, 2),
(8.6, 8.8, 8.4, 9, 20089, 10039, 3),
(5.1, 5.3, 4.9, 5.5, 20090, 10040, 1),
(9.3, 9.5, 9.1, 9.7, 20091, 10041, 2),
(7.7, 7.9, 7.5, 8.1, 20092, 10042, 3),
(8.4, 8.6, 8.2, 8.8, 20093, 10043, 1),
(6.2, 6.4, 6, 6.6, 20094, 10044, 2),
(7.9, 8.1, 7.7, 8.3, 20095, 10045, 3),
(5.7, 5.9, 5.5, 6.1, 20096, 10046, 1),
(9.6, 9.8, 9.4, 10, 20097, 10047, 2),
(7.1, 7.3, 6.9, 7.5, 20098, 10048, 3),
(8, 8.2, 7.8, 8.4, 20099, 10049, 1),
(6.8, 7, 6.6, 7.2, 20100, 10050, 2),
(7.5, 7.6, 7.4, 7.8, 20101, 10001, 1),
(6.8, 7, 6.6, 7.2, 20102, 10002, 2),
(8.3, 8.4, 8.2, 8.6, 20103, 10003, 3),
(5.9, 6.1, 5.7, 6.3, 20104, 10004, 1),
(9.1, 9.2, 9, 9.4, 20105, 10005, 2),
(7.2, 7.4, 7, 7.6, 20106, 10006, 3),
(8.7, 8.8, 8.6, 9, 20107, 10007, 1),
(6.5, 6.7, 6.3, 6.9, 20108, 10008, 2),
(7.8, 8, 7.6, 8.2, 20109, 10009, 3),
(5.4, 5.6, 5.2, 5.8, 20110, 10010, 1),
(9.6, 9.7, 9.5, 9.9, 20111, 10011, 2),
(7.3, 7.5, 7.1, 7.7, 20112, 10012, 3),
(8.5, 8.6, 8.4, 8.8, 20113, 10013, 1),
(6.2, 6.4, 6, 6.6, 20114, 10014, 2),
(7.9, 8.1, 7.7, 8.3, 20115, 10015, 3),
(5.8, 6, 5.6, 6.2, 20116, 10016, 1),
(9.4, 9.6, 9.2, 9.8, 20117, 10017, 2),
(7.1, 7.3, 6.9, 7.5, 20118, 10018, 3),
(8.2, 8.3, 8.1, 8.5, 20119, 10019, 1),
(6, 6.2, 5.8, 6.4, 20120, 10020, 2),
(7.7, 7.9, 7.5, 8.1, 20121, 10021, 3),
(5.3, 5.5, 5.1, 5.7, 20122, 10022, 1),
(9.7, 9.9, 9.5, 10, 20123, 10023, 2),
(8, 8.2, 7.8, 8.4, 20124, 10024, 3),
(7.6, 7.8, 7.4, 8, 20125, 10025, 1),
(6.9, 7.1, 6.7, 7.3, 20126, 10026, 2),
(8.1, 8.3, 7.9, 8.5, 20127, 10027, 3),
(5.4, 5.6, 5.2, 5.8, 20128, 10028, 1),
(9.7, 9.9, 9.5, 10, 20129, 10029, 2),
(7.3, 7.5, 7.1, 7.7, 20130, 10030, 3),
(6.7, 6.9, 6.5, 7.1, 20131, 10031, 1),
(8.9, 9.1, 8.7, 9.3, 20132, 10032, 2),
(5.8, 6, 5.6, 6.2, 20133, 10033, 3),
(7, 7.2, 6.8, 7.4, 20134, 10034, 1),
(6.5, 6.7, 6.3, 6.9, 20135, 10035, 2),
(9.2, 9.4, 9, 9.6, 20136, 10036, 3),
(7.8, 8, 7.6, 8.2, 20137, 10037, 1),
(6, 6.2, 5.8, 6.4, 20138, 10038, 2),
(8.6, 8.8, 8.4, 9, 20139, 10039, 3),
(5.1, 5.3, 4.9, 5.5, 20140, 10040, 1),
(9.3, 9.5, 9.1, 9.7, 20141, 10041, 2),
(7.7, 7.9, 7.5, 8.1, 20142, 10042, 3),
(8.4, 8.6, 8.2, 8.8, 20143, 10043, 1),
(6.2, 6.4, 6, 6.6, 20144, 10044, 2),
(7.9, 8.1, 7.7, 8.3, 20145, 10045, 3),
(5.7, 5.9, 5.5, 6.1, 20146, 10046, 1),
(9.6, 9.8, 9.4, 10, 20147, 10047, 2),
(7.1, 7.3, 6.9, 7.5, 20148, 10048, 3),
(8, 8.2, 7.8, 8.4, 20149, 10049, 1),
(6.8, 7, 6.6, 7.2, 20150, 10050, 2),
(6.9, 7.1, 6.7, 7.3, 20151, 10001, 1),
(8.2, 8.4, 8, 8.6, 20152, 10002, 2),
(5.7, 5.9, 5.5, 6.1, 20153, 10003, 3),
(9, 9.2, 8.8, 9.4, 20154, 10004, 1),
(7.5, 7.7, 7.3, 7.9, 20155, 10005, 2),
(6.3, 6.5, 6.1, 6.7, 20156, 10006, 3),
(8.8, 9, 8.6, 9.2, 20157, 10007, 1),
(5.9, 6.1, 5.7, 6.3, 20158, 10008, 2),
(7.4, 7.6, 7.2, 7.8, 20159, 10009, 3),
(9.5, 9.7, 9.3, 9.9, 20160, 10010, 1),
(6.1, 6.3, 5.9, 6.5, 20161, 10011, 2),
(7.8, 8, 7.6, 8.2, 20162, 10012, 3),
(5.2, 5.4, 5, 5.6, 20163, 10013, 1),
(8.9, 9.1, 8.7, 9.3, 20164, 10014, 2),
(6.7, 6.9, 6.5, 7.1, 20165, 10015, 3),
(9.1, 9.3, 8.9, 9.5, 20166, 10016, 1),
(7, 7.2, 6.8, 7.4, 20167, 10017, 2),
(5.8, 6, 5.6, 6.2, 20168, 10018, 3),
(8.4, 8.6, 8.2, 8.8, 20169, 10019, 1),
(6.5, 6.7, 6.3, 6.9, 20170, 10020, 2),
(9.8, 10, 9.6, 10, 20171, 10021, 3),
(7.6, 7.8, 7.4, 8, 20172, 10022, 1),
(5.9, 6.1, 5.7, 6.3, 20173, 10023, 2),
(8.3, 8.5, 8.1, 8.7, 20174, 10024, 3),
(6.2, 6.4, 6, 6.6, 20175, 10025, 1),
(9.4, 9.6, 9.2, 9.8, 20176, 10026, 2),
(7.3, 7.5, 7.1, 7.7, 20177, 10027, 3),
(6.8, 7, 6.6, 7.2, 20178, 10028, 1),
(8.7, 8.9, 8.5, 9.1, 20179, 10029, 2),
(5.6, 5.8, 5.4, 6, 20180, 10030, 3),
(9, 9.2, 8.8, 9.4, 20181, 10031, 1),
(7.1, 7.3, 6.9, 7.5, 20182, 10032, 2),
(6.4, 6.6, 6.2, 6.8, 20183, 10033, 3),
(8.1, 8.3, 7.9, 8.5, 20184, 10034, 1),
(5.3, 5.5, 5.1, 5.7, 20185, 10035, 2),
(9.5, 9.7, 9.3, 9.9, 20186, 10036, 3),
(7.2, 7.4, 7, 7.6, 20187, 10037, 1),
(6, 6.2, 5.8, 6.4, 20188, 10038, 2),
(8.6, 8.8, 8.4, 9, 20189, 10039, 3),
(5.1, 5.3, 4.9, 5.5, 20190, 10040, 1),
(9.3, 9.5, 9.1, 9.7, 20191, 10041, 2),
(7.7, 7.9, 7.5, 8.1, 20192, 10042, 3),
(8.4, 8.6, 8.2, 8.8, 20193, 10043, 1),
(6.2, 6.4, 6, 6.6, 20194, 10044, 2),
(7.9, 8.1, 7.7, 8.3, 20195, 10045, 3),
(5.7, 5.9, 5.5, 6.1, 20196, 10046, 1),
(9.6, 9.8, 9.4, 10, 20197, 10047, 2),
(7.1, 7.3, 6.9, 7.5, 20198, 10048, 3),
(8, 8.2, 7.8, 8.4, 20199, 10049, 1),
(6.8, 7, 6.6, 7.2, 20200, 10050, 2);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` enum('BO_HOC','DANG_HOC','LUU_BAN') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `code`) VALUES
(1, 'Bỏ học', 'BO_HOC'),
(2, 'Đang học', 'DANG_HOC'),
(3, 'Lưu ban', 'LUU_BAN');

-- --------------------------------------------------------

--
-- Table structure for table `student_timetable`
--

CREATE TABLE `student_timetable` (
  `student_id` bigint NOT NULL,
  `timetable_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `credits` int DEFAULT NULL,
  `id` int NOT NULL,
  `major_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`credits`, `id`, `major_id`, `name`) VALUES
(3, 10001, 1, 'Môn học 1'),
(4, 10002, 2, 'Môn học 2'),
(3, 10003, 3, 'Môn học 3'),
(2, 10004, 4, 'Môn học 4'),
(3, 10005, 5, 'Môn học 5'),
(4, 10006, 6, 'Môn học 6'),
(3, 10007, 7, 'Môn học 7'),
(2, 10008, 8, 'Môn học 8'),
(4, 10009, 9, 'Môn học 9'),
(3, 10010, 10, 'Môn học 10'),
(2, 10011, 11, 'Môn học 11'),
(3, 10012, 12, 'Môn học 12'),
(4, 10013, 13, 'Môn học 13'),
(3, 10014, 14, 'Môn học 14'),
(2, 10015, 15, 'Môn học 15'),
(3, 10016, 16, 'Môn học 16'),
(4, 10017, 17, 'Môn học 17'),
(3, 10018, 18, 'Môn học 18'),
(2, 10019, 19, 'Môn học 19'),
(3, 10020, 20, 'Môn học 20'),
(4, 10021, 21, 'Môn học 21'),
(3, 10022, 22, 'Môn học 22'),
(2, 10023, 23, 'Môn học 23'),
(3, 10024, 24, 'Môn học 24'),
(4, 10025, 25, 'Môn học 25'),
(3, 10026, 26, 'Môn học 26'),
(2, 10027, 27, 'Môn học 27'),
(4, 10028, 28, 'Môn học 28'),
(3, 10029, 29, 'Môn học 29'),
(2, 10030, 30, 'Môn học 30'),
(3, 10031, 31, 'Môn học 31'),
(4, 10032, 32, 'Môn học 32'),
(3, 10033, 33, 'Môn học 33'),
(2, 10034, 34, 'Môn học 34'),
(3, 10035, 35, 'Môn học 35'),
(4, 10036, 36, 'Môn học 36'),
(3, 10037, 37, 'Môn học 37'),
(2, 10038, 38, 'Môn học 38'),
(3, 10039, 39, 'Môn học 39'),
(4, 10040, 40, 'Môn học 40'),
(3, 10041, 41, 'Môn học 41'),
(2, 10042, 42, 'Môn học 42'),
(4, 10043, 43, 'Môn học 43'),
(3, 10044, 44, 'Môn học 44'),
(2, 10045, 45, 'Môn học 45'),
(3, 10046, 46, 'Môn học 46'),
(4, 10047, 47, 'Môn học 47'),
(3, 10048, 48, 'Môn học 48'),
(2, 10049, 49, 'Môn học 49'),
(3, 10050, 50, 'Môn học 50');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `end_date` date DEFAULT NULL,
  `id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `term_number` bigint DEFAULT NULL,
  `year_id` int DEFAULT NULL,
  `year_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`end_date`, `id`, `start_date`, `term_number`, `year_id`, `year_name`) VALUES
('2025-08-31', 1, '2025-06-01', 1, 3, 'Năm học 2025'),
('2025-12-31', 2, '2025-09-01', 2, 3, 'Năm học 2025'),
('2026-06-30', 3, '2026-01-01', 3, 3, 'Năm học 2025');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `class_info_id` int NOT NULL,
  `period_id` int NOT NULL,
  `remain_student` bigint NOT NULL,
  `subject_id` int NOT NULL,
  `term_id` int NOT NULL,
  `id` bigint NOT NULL,
  `teacher_id` bigint DEFAULT NULL,
  `week_days_id` bigint NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `room_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`class_info_id`, `period_id`, `remain_student`, `subject_id`, `term_id`, `id`, `teacher_id`, `week_days_id`, `code`, `room_id`) VALUES
(2, 2, 30, 10011, 1, 2, NULL, 2, 'VuA', 'Phòng 106'),
(3, 1, 30, 10038, 1, 3, NULL, 1, 'VTL', 'Phòng 102'),
(2, 4, 30, 10044, 1, 4, NULL, 2, 'cNq', 'Phòng 120'),
(1, 7, 30, 10029, 1, 5, NULL, 1, 'yPZ', 'Phòng 134'),
(1, 4, 30, 10013, 1, 6, NULL, 2, 'IeB', 'Phòng 102'),
(1, 2, 30, 10022, 1, 7, NULL, 3, 'ONs', 'Phòng 134'),
(3, 3, 30, 10028, 1, 8, NULL, 3, 'mUy', 'Phòng 103'),
(1, 9, 30, 10034, 1, 9, NULL, 3, 'vcJ', 'Phòng 125'),
(1, 6, 30, 10013, 1, 10, NULL, 1, 'VDn', 'Phòng 137'),
(2, 8, 30, 10015, 1, 11, NULL, 3, 'xJj', 'Phòng 134'),
(2, 4, 30, 10002, 1, 12, NULL, 3, 'Ybl', 'Phòng 127'),
(3, 9, 30, 10039, 1, 13, NULL, 1, 'POz', 'Phòng 119'),
(3, 5, 30, 10011, 1, 14, NULL, 2, 'PVT', 'Phòng 125'),
(1, 3, 30, 10039, 1, 15, NULL, 5, 'Kfw', 'Phòng 129'),
(1, 4, 30, 10013, 1, 16, NULL, 1, 'hHz', 'Phòng 125'),
(2, 7, 30, 10011, 1, 17, NULL, 5, 'dQO', 'Phòng 107'),
(3, 7, 30, 10038, 1, 18, NULL, 1, 'RXi', 'Phòng 144'),
(2, 9, 30, 10036, 1, 19, NULL, 3, 'Gkk', 'Phòng 117'),
(1, 7, 30, 10012, 1, 20, NULL, 6, 'mkM', 'Phòng 134'),
(3, 4, 30, 10015, 1, 21, NULL, 6, 'WuF', 'Phòng 112'),
(1, 2, 30, 10048, 1, 22, NULL, 3, 'Nui', 'Phòng 133'),
(1, 7, 30, 10046, 1, 23, NULL, 6, 'DpA', 'Phòng 127'),
(3, 5, 30, 10037, 1, 24, NULL, 5, 'hHD', 'Phòng 131'),
(1, 8, 30, 10046, 1, 25, NULL, 2, 'nsN', 'Phòng 110'),
(2, 4, 30, 10013, 1, 26, NULL, 5, 'RqM', 'Phòng 121'),
(2, 5, 30, 10031, 1, 27, NULL, 5, 'kEk', 'Phòng 112'),
(1, 3, 30, 10023, 1, 28, NULL, 2, 'gmx', 'Phòng 145'),
(3, 10, 30, 10045, 1, 29, NULL, 5, 'ZMW', 'Phòng 101'),
(1, 6, 30, 10023, 1, 30, NULL, 1, 'XoN', 'Phòng 148'),
(1, 5, 30, 10010, 1, 31, NULL, 6, 'cQI', 'Phòng 142'),
(3, 4, 30, 10022, 1, 32, NULL, 3, 'mDM', 'Phòng 128'),
(2, 5, 30, 10045, 1, 33, NULL, 3, 'ffj', 'Phòng 140'),
(1, 8, 30, 10002, 1, 34, NULL, 1, 'dsk', 'Phòng 111'),
(2, 9, 30, 10006, 1, 35, NULL, 5, 'ayw', 'Phòng 107');

-- --------------------------------------------------------

--
-- Table structure for table `timetable_type`
--

CREATE TABLE `timetable_type` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` enum('LICH_HOC','LICH_THI') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `timetable_type`
--

INSERT INTO `timetable_type` (`id`, `name`, `code`) VALUES
(1, 'Lịch học', 'LICH_HOC'),
(2, 'Lịch thi', 'LICH_THI');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `active_flag` bit(1) DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`active_flag`, `create_date`, `id`, `update_date`, `email`, `password`, `profile_id`, `user_name`) VALUES
(b'1', '2025-04-01 00:00:00.000000', 1, '2025-04-05 11:36:16.040412', 'user1@example.com', '1', '100000001', 'user1'),
(b'1', '2025-04-01 00:00:00.000000', 2, '2025-04-05 11:38:35.737403', 'user2@example.com', '2', '100000002', 'user2'),
(b'1', '2025-04-01 00:00:00.000000', 3, '2025-04-05 11:38:28.535823', 'user3@example.com', '3', '100000003', 'user3'),
(b'1', '2025-04-01 00:00:00.000000', 4, '2025-04-01 00:00:00.000000', 'user4@example.com', 'password4', '100000004', 'user4'),
(b'1', '2025-04-01 00:00:00.000000', 5, '2025-04-01 00:00:00.000000', 'user5@example.com', 'password5', '100000005', 'user5'),
(b'1', '2025-04-01 00:00:00.000000', 6, '2025-04-01 00:00:00.000000', 'user6@example.com', 'password6', '100000006', 'user6'),
(b'1', '2025-04-01 00:00:00.000000', 7, '2025-04-01 00:00:00.000000', 'user7@example.com', 'password7', '100000007', 'user7'),
(b'1', '2025-04-01 00:00:00.000000', 8, '2025-04-01 00:00:00.000000', 'user8@example.com', 'password8', '100000008', 'user8'),
(b'1', '2025-04-01 00:00:00.000000', 9, '2025-04-01 00:00:00.000000', 'user9@example.com', 'password9', '100000009', 'user9'),
(b'1', '2025-04-01 00:00:00.000000', 10, '2025-04-01 00:00:00.000000', 'user10@example.com', 'password10', '100000010', 'user10'),
(b'1', '2025-04-05 03:30:06.402879', 11, '2025-04-05 03:30:06.402925', NULL, '1', '22', '1'),
(b'1', '2025-04-05 11:30:12.358155', 12, '2025-04-05 11:30:12.358212', NULL, '1', '222222', 'Long'),
(b'1', '2025-04-05 11:34:49.661139', 13, '2025-04-05 11:34:49.661158', NULL, '1', '123456566', 'Long'),
(b'1', '2025-04-05 11:37:00.029163', 14, '2025-04-05 11:37:00.029187', NULL, '1', 'aaaa', '22'),
(b'1', '2025-04-05 11:38:07.967644', 15, '2025-04-05 11:38:07.967657', NULL, '1', '12345677', '122'),
(b'1', '2025-04-05 11:40:21.900465', 16, '2025-04-05 11:40:21.900501', NULL, '1', '123455', 'Long'),
(b'1', '2025-04-05 11:41:46.079311', 17, '2025-04-05 11:41:46.079334', NULL, '1', '1233333444444', 'Long'),
(b'1', '2025-04-05 11:44:56.451362', 18, '2025-04-05 11:44:56.451399', NULL, '1', '1234445555', ':Long'),
(b'1', '2025-04-05 11:47:41.783826', 19, '2025-04-05 11:47:41.783850', NULL, '1', '12344444555', '12344444');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `active_flag` bit(1) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`active_flag`, `role_id`, `create_date`, `id`, `update_date`, `user_id`) VALUES
(b'1', 1, '2025-04-01 00:00:00.000000', 1, '2025-04-01 00:00:00.000000', 1),
(b'1', 2, '2025-04-01 00:00:00.000000', 2, '2025-04-01 00:00:00.000000', 2),
(b'1', 3, '2025-04-01 00:00:00.000000', 3, '2025-04-01 00:00:00.000000', 3),
(b'1', 1, '2025-04-01 00:00:00.000000', 4, '2025-04-01 00:00:00.000000', 4),
(b'1', 2, '2025-04-01 00:00:00.000000', 5, '2025-04-01 00:00:00.000000', 5),
(b'1', 3, '2025-04-01 00:00:00.000000', 6, '2025-04-01 00:00:00.000000', 6),
(b'1', 1, '2025-04-01 00:00:00.000000', 7, '2025-04-01 00:00:00.000000', 7),
(b'1', 2, '2025-04-01 00:00:00.000000', 8, '2025-04-01 00:00:00.000000', 8),
(b'1', 3, '2025-04-01 00:00:00.000000', 9, '2025-04-01 00:00:00.000000', 9),
(b'1', 1, '2025-04-01 00:00:00.000000', 10, '2025-04-01 00:00:00.000000', 10),
(b'1', 1, NULL, 11, NULL, 11),
(b'1', 1, NULL, 12, NULL, 12),
(b'1', 1, NULL, 13, NULL, 13),
(b'1', 1, NULL, 14, NULL, 14),
(b'1', 1, NULL, 15, NULL, 15),
(b'1', 1, NULL, 16, NULL, 16),
(b'1', 1, NULL, 17, NULL, 17),
(b'1', 1, NULL, 18, NULL, 18),
(b'1', 1, NULL, 19, NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `week_days`
--

CREATE TABLE `week_days` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` enum('FRIDAY','MONDAY','SATURDAY','THURSDAY','TUESDAY','WEDNESDAY') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `week_days`
--

INSERT INTO `week_days` (`id`, `name`, `code`) VALUES
(1, 'Thứ Hai', 'MONDAY'),
(2, 'Thứ Ba', 'TUESDAY'),
(3, 'Thứ Tư', 'WEDNESDAY'),
(4, 'Thứ Năm', 'THURSDAY'),
(5, 'Thứ Sáu', 'FRIDAY'),
(6, 'Thứ Bảy', 'SATURDAY');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `end_date` date DEFAULT NULL,
  `id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`end_date`, `id`, `start_date`, `name`) VALUES
('2023-12-31', 1, '2023-01-01', 'Năm học 2023'),
('2024-12-31', 2, '2024-01-01', 'Năm học 2024'),
('2025-12-31', 3, '2025-01-01', 'Năm học 2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlv33yub760rfsotvgyvtwy0jd` (`menu_id`),
  ADD KEY `FK8w1fy3t8xbu50rh4e1275rns1` (`role_id`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_info`
--
ALTER TABLE `class_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major_child`
--
ALTER TABLE `major_child`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7i8qbh4hyi926xsbo11l7pb7j` (`child_id`),
  ADD KEY `FK25inve3u69br5872nwhahp4ro` (`major_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`identity_card`),
  ADD KEY `FK6v1owhqq3b6tiad12lc0rpgfm` (`class_info_id`),
  ADD KEY `FKjpqm4bpmdo6dwrc7mqvxcik1u` (`gender_id`),
  ADD KEY `FKbekmv1gy9atrq3tp288sy43d6` (`major_id`),
  ADD KEY `FKsgk0yncoxv1ta1623es64oxxw` (`score_id`),
  ADD KEY `FKi5u47g47odeweeaug77ku10d` (`status_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK56nv285e8l73fru4sw2152y87` (`subject_id`),
  ADD KEY `FK61k2w8yrjbx6l38rxlyt9b479` (`term_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_timetable`
--
ALTER TABLE `student_timetable`
  ADD KEY `FKqoxgc5m1m6f1rh9v14oktw5mh` (`student_id`),
  ADD KEY `FKdtules1tjoch5agnvud797cpf` (`timetable_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4a6ilv245ei9tfsf1euf3yux3` (`major_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqbu8vsrbcbjyor3hwvy7v4sb4` (`year_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKh40nf4flei4ewqjhkcsqtiibu` (`teacher_id`),
  ADD UNIQUE KEY `UKedcvnnpk06rqfps31m8i9f039` (`code`),
  ADD KEY `FKr5nkc3a9gbskb9vf3aoc3psgj` (`class_info_id`),
  ADD KEY `FKb4c4j9wko821amitn3a8gv7jh` (`period_id`),
  ADD KEY `FKp305jq1ghef0c43cgoy8o6ypr` (`room_id`),
  ADD KEY `FKrh8c0l2hwidfd0hbp7ovnjpck` (`subject_id`),
  ADD KEY `FKm8pjkajjedct6vf76rp7ybaq1` (`term_id`),
  ADD KEY `FKfe97u3xxo7k64t7lvdj1row2i` (`week_days_id`);

--
-- Indexes for table `timetable_type`
--
ALTER TABLE `timetable_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5q3e9303ap1wvtia6sft7ht1s` (`profile_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- Indexes for table `week_days`
--
ALTER TABLE `week_days`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKbeyxuacf4g59r3kmkjs8o8b0b` (`code`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `class_info`
--
ALTER TABLE `class_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `major_child`
--
ALTER TABLE `major_child`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20201;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10051;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `timetable_type`
--
ALTER TABLE `timetable_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `week_days`
--
ALTER TABLE `week_days`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `FK8w1fy3t8xbu50rh4e1275rns1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKlv33yub760rfsotvgyvtwy0jd` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`);

--
-- Constraints for table `major_child`
--
ALTER TABLE `major_child`
  ADD CONSTRAINT `FK25inve3u69br5872nwhahp4ro` FOREIGN KEY (`major_id`) REFERENCES `major` (`id`),
  ADD CONSTRAINT `FK7i8qbh4hyi926xsbo11l7pb7j` FOREIGN KEY (`child_id`) REFERENCES `child` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `FK6v1owhqq3b6tiad12lc0rpgfm` FOREIGN KEY (`class_info_id`) REFERENCES `class_info` (`id`),
  ADD CONSTRAINT `FKbekmv1gy9atrq3tp288sy43d6` FOREIGN KEY (`major_id`) REFERENCES `major_child` (`id`),
  ADD CONSTRAINT `FKi5u47g47odeweeaug77ku10d` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  ADD CONSTRAINT `FKjpqm4bpmdo6dwrc7mqvxcik1u` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `FKsgk0yncoxv1ta1623es64oxxw` FOREIGN KEY (`score_id`) REFERENCES `score` (`id`);

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `FK56nv285e8l73fru4sw2152y87` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `FK61k2w8yrjbx6l38rxlyt9b479` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`);

--
-- Constraints for table `student_timetable`
--
ALTER TABLE `student_timetable`
  ADD CONSTRAINT `FKdtules1tjoch5agnvud797cpf` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`id`),
  ADD CONSTRAINT `FKqoxgc5m1m6f1rh9v14oktw5mh` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `FK4a6ilv245ei9tfsf1euf3yux3` FOREIGN KEY (`major_id`) REFERENCES `major_child` (`id`);

--
-- Constraints for table `term`
--
ALTER TABLE `term`
  ADD CONSTRAINT `FKqbu8vsrbcbjyor3hwvy7v4sb4` FOREIGN KEY (`year_id`) REFERENCES `year` (`id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `FK894rlvt5i7f3ib2yiwnj307ns` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKb4c4j9wko821amitn3a8gv7jh` FOREIGN KEY (`period_id`) REFERENCES `period` (`id`),
  ADD CONSTRAINT `FKfe97u3xxo7k64t7lvdj1row2i` FOREIGN KEY (`week_days_id`) REFERENCES `week_days` (`id`),
  ADD CONSTRAINT `FKm8pjkajjedct6vf76rp7ybaq1` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`),
  ADD CONSTRAINT `FKp305jq1ghef0c43cgoy8o6ypr` FOREIGN KEY (`room_id`) REFERENCES `room` (`name`),
  ADD CONSTRAINT `FKr5nkc3a9gbskb9vf3aoc3psgj` FOREIGN KEY (`class_info_id`) REFERENCES `class_info` (`id`),
  ADD CONSTRAINT `FKrh8c0l2hwidfd0hbp7ovnjpck` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK5q3e9303ap1wvtia6sft7ht1s` FOREIGN KEY (`profile_id`) REFERENCES `profile` (`identity_card`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
