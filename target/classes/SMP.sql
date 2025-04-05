-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 01, 2025 at 02:19 PM
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
  `id` int NOT NULL,
  `menu_id` int DEFAULT NULL,
  `permission` bit(1) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_info`
--

CREATE TABLE `class_info` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` enum('KHONG_XAC_DINH','NAM','NU') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `active_flag` bit(1) DEFAULT NULL,
  `id` int NOT NULL,
  `order_index` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `create_date` datetime(6) DEFAULT NULL,
  `update_date` datetime(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `teacher_id` int DEFAULT NULL,
  `tuition_fee` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `identity_card` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `capacity` int DEFAULT NULL,
  `is_allowed` bit(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` enum('BO_HOC','DANG_HOC','LUU_BAN') DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `end_date` date DEFAULT NULL,
  `id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `term_number` int DEFAULT NULL,
  `year_id` int DEFAULT NULL,
  `year_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetable_type`
--

CREATE TABLE `timetable_type` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` enum('LICH_HOC','LICH_THI') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_info`
--
ALTER TABLE `class_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major_child`
--
ALTER TABLE `major_child`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetable_type`
--
ALTER TABLE `timetable_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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



INSERT INTO `gender` (`name`, `code`) VALUES
('Không xác định', 'KHONG_XAC_DINH'),
('Nam', 'NAM'),
('Nữ', 'NU');

INSERT INTO `status` (`name`, `code`) VALUES
('Bỏ học', 'BO_HOC'),
('Đang học', 'DANG_HOC'),
('Lưu ban', 'LUU_BAN');

INSERT INTO `role` (`active_flag`, `id`, `create_date`, `update_date`, `role_name`, `description`, `code`) VALUES
(b'1', 1, NOW(), NOW(), 'Quản trị viên', 'Quyền quản trị toàn bộ hệ thống', 'ADMIN'),
(b'1', 2, NOW(), NOW(), 'Giảng viên', 'Quyền dành cho giảng viên', 'GIANG_VIEN'),
(b'1', 3, NOW(), NOW(), 'Sinh viên', 'Quyền dành cho sinh viên', 'SINH_VIEN');


INSERT INTO `class_info` (`code`, `name`) VALUES
('A01', 'Lớp A1'),
('B02', 'Lớp B2'),
('C03', 'Lớp C3');

INSERT INTO `child` (`code`, `name`) VALUES
('C001', 'Nguyễn Văn A'),
('C002', 'Trần Thị B'),
('C003', 'Lê Hoàng C');

INSERT INTO `major` (`code`, `name`) VALUES
('IT001', 'Công nghệ thông tin'),
('EE002', 'Kỹ thuật điện'),
('ME003', 'Cơ khí chế tạo');

INSERT INTO `year` (`start_date`, `end_date`, `name`) VALUES
('2023-01-01', '2023-12-31', 'Năm học 2023'),
('2024-01-01', '2024-12-31', 'Năm học 2024'),
('2025-01-01', '2025-12-31', 'Năm học 2025');

INSERT INTO `period` (`start_hour`, `end_hour`, `name`) VALUES
('08:00:00', '10:00:00', 'Tiết 1'),
('10:00:00', '12:00:00', 'Tiết 2'),
('13:00:00', '15:00:00', 'Tiết 3');

INSERT INTO `room` (`name`, `capacity`, `is_allowed`) VALUES
('Phòng 101', 50, 1),
('Phòng 102', 30, 1),
('Phòng 103', 40, 0);


INSERT INTO `term` (`start_date`, `end_date`, `term_number`, `year_id`, `year_name`) VALUES
('2023-09-01', '2023-12-31', 1, 1, 'Năm học 2023'),
('2024-01-01', '2024-05-31', 2, 2, 'Năm học 2024'),
('2024-06-01', '2024-08-31', 3, 2, 'Năm học 2024');

INSERT INTO `timetable_type` (`id`, `name`, `code`) VALUES
(1, 'Lịch học', 'LICH_HOC'),
(2, 'Lịch thi', 'LICH_THI');


INSERT INTO `major` (`code`, `name`) VALUES
('CS', 'Khoa học máy tính'),
('SE', 'Kỹ thuật phần mềm'),
('AI', 'Trí tuệ nhân tạo'),
('IS', 'Hệ thống thông tin'),
('DS', 'Khoa học dữ liệu'),
('CE', 'Kỹ thuật máy tính'),
('EE', 'Kỹ thuật điện'),
('ME', 'Kỹ thuật cơ khí'),
('AE', 'Kỹ thuật hàng không'),
('ARCH', 'Kiến trúc'),
('BIO', 'Công nghệ sinh học'),
('CHEM', 'Kỹ thuật hóa học'),
('CIV', 'Kỹ thuật xây dựng'),
('ENV', 'Kỹ thuật môi trường'),
('MAT', 'Khoa học vật liệu'),
('MATH', 'Toán ứng dụng'),
('PHYS', 'Vật lý kỹ thuật'),
('ECON', 'Kinh tế học'),
('FIN', 'Tài chính ngân hàng'),
('MKT', 'Marketing'),
('MGMT', 'Quản trị kinh doanh'),
('HRM', 'Quản trị nhân sự'),
('LAW', 'Luật'),
('PSY', 'Tâm lý học'),
('MED', 'Y khoa'),
('NUR', 'Điều dưỡng'),
('PHARM', 'Dược học'),
('VET', 'Thú y'),
('EDU', 'Giáo dục học'),
('SOC', 'Xã hội học');



INSERT INTO `child` (`code`, `name`) VALUES
('MATH101', 'Giải tích 1'),
('MATH102', 'Giải tích 2'),
('PHYS101', 'Vật lý đại cương 1'),
('PHYS102', 'Vật lý đại cương 2'),
('CHEM101', 'Hóa học đại cương'),
('BIO101', 'Sinh học đại cương'),
('CS101', 'Lập trình cơ bản'),
('CS102', 'Cấu trúc dữ liệu và giải thuật'),
('CS103', 'Lập trình hướng đối tượng'),
('CS104', 'Cơ sở dữ liệu'),
('CS105', 'Mạng máy tính'),
('CS106', 'Hệ điều hành'),
('CS107', 'Trí tuệ nhân tạo'),
('CS108', 'Học máy'),
('CS109', 'Lập trình web'),
('CS110', 'Phát triển ứng dụng di động'),
('CS111', 'An toàn thông tin'),
('CS112', 'Điện toán đám mây'),
('CS113', 'Xử lý ảnh'),
('CS114', 'Khoa học dữ liệu'),
('ECON101', 'Kinh tế vi mô'),
('ECON102', 'Kinh tế vĩ mô'),
('MGMT101', 'Quản trị kinh doanh'),
('FIN101', 'Tài chính doanh nghiệp'),
('ACC101', 'Kế toán tài chính'),
('MKT101', 'Marketing căn bản'),
('LAW101', 'Luật kinh tế'),
('PSY101', 'Tâm lý học đại cương'),
('SOC101', 'Xã hội học'),
('HIST101', 'Lịch sử thế giới'),
('PHIL101', 'Triết học Mác - Lênin'),
('POL101', 'Chính trị học'),
('EDU101', 'Giáo dục học'),
('LIT101', 'Văn học Việt Nam'),
('ENG101', 'Tiếng Anh cơ bản'),
('ENG102', 'Tiếng Anh nâng cao'),
('FRE101', 'Tiếng Pháp căn bản'),
('GER101', 'Tiếng Đức căn bản'),
('JPN101', 'Tiếng Nhật căn bản'),
('CHN101', 'Tiếng Trung căn bản'),
('MED101', 'Giải phẫu học'),
('MED102', 'Sinh lý học'),
('MED103', 'Dược lý học'),
('MED104', 'Vi sinh y học'),
('MED105', 'Y học cổ truyền'),
('MED106', 'Y học dự phòng'),
('MED107', 'Chẩn đoán hình ảnh'),
('MED108', 'Phẫu thuật căn bản'),
('MED109', 'Điều dưỡng cơ bản'),
('MED110', 'Tâm thần học'),
('ENG201', 'Tiếng Anh chuyên ngành'),
('FRE201', 'Tiếng Pháp chuyên ngành'),
('GER201', 'Tiếng Đức chuyên ngành'),
('PHYS201', 'Vật lý đại cương 3'),
('MATH201', 'Giải tích nâng cao'),
('CHEM201', 'Hóa học vô cơ'),
('BIO201', 'Sinh học tế bào'),
('CS201', 'Lập trình nâng cao'),
('CS202', 'Cơ sở dữ liệu nâng cao'),
('CS203', 'Khoa học máy tính nâng cao'),
('IS201', 'Hệ thống thông tin doanh nghiệp'),
('DS201', 'Khoa học dữ liệu nâng cao'),
('EE201', 'Kỹ thuật điện nâng cao'),
('CE201', 'Kỹ thuật cơ khí nâng cao'),
('ME201', 'Kỹ thuật hàng không nâng cao'),
('AE201', 'Kỹ thuật hàng không cơ bản'),
('CIV201', 'Kỹ thuật xây dựng'),
('ENV201', 'Kỹ thuật môi trường nâng cao'),
('MATH202', 'Toán học ứng dụng'),
('PHYS202', 'Vật lý kỹ thuật'),
('CHEM202', 'Kỹ thuật hóa học'),
('FIN201', 'Tài chính doanh nghiệp nâng cao'),
('HRM201', 'Quản trị nhân sự nâng cao'),
('MKT201', 'Marketing nâng cao'),
('SOC201', 'Xã hội học nâng cao'),
('POL201', 'Chính trị học nâng cao'),
('LAW201', 'Luật quốc tế'),
('LAW202', 'Luật dân sự'),
('EDU201', 'Phương pháp giảng dạy đại cương'),
('PHIL102', 'Triết học phương Tây'),
('PSY102', 'Tâm lý học xã hội'),
('MKT202', 'Marketing chiến lược'),
('ECON201', 'Kinh tế học quốc tế'),
('BIO202', 'Công nghệ sinh học'),
('MATH203', 'Toán rời rạc'),
('PHYS203', 'Vật lý ứng dụng'),
('CS204', 'Hệ thống nhúng'),
('EE202', 'Điện tử kỹ thuật'),
('BIO203', 'Molecular Biology'),
('SOC202', 'Xã hội học hiện đại'),
('LAW203', 'Luật thương mại'),
('MED201', 'Y học chuyên ngành'),
('ENG203', 'Tiếng Anh giao tiếp nâng cao'),
('MKT203', 'Quản lý Marketing'),
('POL202', 'Chính trị học quốc tế'),
('SOC203', 'Nghiên cứu xã hội học'),
('ECON202', 'Kinh tế học tổ chức'),
('HRM202', 'Kỹ năng lãnh đạo trong quản trị nhân sự'),
('MKT204', 'Marketing kỹ thuật số'),
('CS205', 'Phát triển phần mềm'),
('IS202', 'Hệ thống thông tin quản lý'),
('DS202', 'Lập trình khoa học dữ liệu'),
('MED202', 'Y học cổ truyền nâng cao'),
('ME202', 'Kỹ thuật cơ khí nâng cao'),
('AE202', 'Vận hành máy bay'),
('EE203', 'Lý thuyết mạch điện'),
('CS206', 'Phát triển web nâng cao'),
('PHYS204', 'Cơ học lý thuyết'),
('CHEM203', 'Hóa học hữu cơ'),
('BIO204', 'Sinh học phân tử'),
('CS207', 'An ninh mạng'),
('MED203', 'Dược học nâng cao'),
('BIO205', 'Sinh học thực nghiệm'),
('MATH204', 'Lý thuyết xác suất'),
('CHEM204', 'Hóa học phân tích'),
('SOC204', 'Chính trị học xã hội'),
('MED204', 'Tâm lý học bệnh học'),
('HRM203', 'Đánh giá hiệu suất nhân sự'),
('POL203', 'Lý luận chính trị'),
('IS203', 'Công nghệ thông tin trong quản lý'),
('ENG204', 'Tiếng Anh cho học thuật'),
('CS208', 'Khoa học dữ liệu cơ bản'),
('EE204', 'Điện tử viễn thông'),
('BIO206', 'Sinh học học đường'),
('ME203', 'Quản lý dự án xây dựng'),
('ECON203', 'Kinh tế học môi trường'),
('MKT205', 'Chiến lược Marketing toàn cầu'),
('IS204', 'Công nghệ thông tin và quản lý dữ liệu'),
('CS209', 'Lập trình mobile'),
('LAW204', 'Pháp luật và xã hội'),
('PHYS205', 'Vật lý thực nghiệm'),
('MKT206', 'Nghiên cứu thị trường'),
('CS210', 'Lập trình dữ liệu lớn'),
('MATH205', 'Hình học phân tích'),
('SOC205', 'Nghiên cứu xã hội học nâng cao'),
('POL204', 'Phân tích chính trị'),
('BIO207', 'Di truyền học'),
('HRM204', 'Lãnh đạo và văn hóa tổ chức'),
('CS211', 'Phát triển ứng dụng di động'),
('CHEM205', 'Hóa học hữu cơ nâng cao'),
('PHYS206', 'Quang học'),
('MED205', 'Y học chuyên sâu'),
('CS212', 'Công nghệ phần mềm'),
('MKT207', 'Quản lý Marketing quốc tế');


INSERT INTO `major_child` (`child_id`, `major_id`, `name`) VALUES
(1, 1, 'Giải tích 1'),
(2, 1, 'Giải tích 2'),
(3, 2, 'Vật lý đại cương 1'),
(4, 2, 'Vật lý đại cương 2'),
(5, 3, 'Hóa học đại cương'),
(6, 3, 'Sinh học đại cương'),
(7, 4, 'Lập trình cơ bản'),
(8, 4, 'Cấu trúc dữ liệu và giải thuật'),
(9, 4, 'Lập trình hướng đối tượng'),
(10, 5, 'Cơ sở dữ liệu'),
(11, 5, 'Mạng máy tính'),
(12, 6, 'Hệ điều hành'),
(13, 6, 'Trí tuệ nhân tạo'),
(14, 7, 'Học máy'),
(15, 8, 'Lập trình web'),
(16, 8, 'Phát triển ứng dụng di động'),
(17, 9, 'An toàn thông tin'),
(18, 9, 'Điện toán đám mây'),
(19, 10, 'Xử lý ảnh'),
(20, 10, 'Khoa học dữ liệu'),
(21, 11, 'Kinh tế vi mô'),
(22, 11, 'Kinh tế vĩ mô'),
(23, 12, 'Quản trị kinh doanh'),
(24, 13, 'Tài chính doanh nghiệp'),
(25, 14, 'Kế toán tài chính'),
(26, 14, 'Marketing căn bản'),
(27, 15, 'Luật kinh tế'),
(28, 15, 'Tâm lý học đại cương'),
(29, 16, 'Xã hội học'),
(30, 16, 'Lịch sử thế giới'),
(31, 17, 'Triết học Mác - Lênin'),
(32, 17, 'Chính trị học'),
(33, 18, 'Giáo dục học'),
(34, 19, 'Văn học Việt Nam'),
(35, 19, 'Tiếng Anh cơ bản'),
(36, 20, 'Tiếng Anh nâng cao'),
(37, 20, 'Tiếng Pháp căn bản'),
(38, 21, 'Tiếng Đức căn bản'),
(39, 21, 'Tiếng Nhật căn bản'),
(40, 22, 'Tiếng Trung căn bản'),
(41, 22, 'Giải phẫu học'),
(42, 23, 'Sinh lý học'),
(43, 23, 'Dược lý học'),
(44, 24, 'Vi sinh y học'),
(45, 24, 'Y học cổ truyền'),
(46, 25, 'Y học dự phòng'),
(47, 25, 'Chẩn đoán hình ảnh'),
(48, 26, 'Phẫu thuật căn bản'),
(49, 26, 'Điều dưỡng cơ bản'),
(50, 27, 'Tâm thần học'),
(51, 27, 'Tiếng Anh chuyên ngành'),
(52, 28, 'Tiếng Pháp chuyên ngành'),
(53, 1, 'Tiếng Đức chuyên ngành'),
(54, 2, 'Vật lý đại cương 3'),
(55, 3, 'Giải tích nâng cao'),
(56, 4, 'Hóa học vô cơ'),
(57, 5, 'Sinh học tế bào'),
(58, 6, 'Lập trình nâng cao'),
(59, 7, 'Cơ sở dữ liệu nâng cao'),
(60, 8, 'Khoa học máy tính nâng cao'),
(61, 9, 'Hệ thống thông tin doanh nghiệp'),
(62, 10, 'Khoa học dữ liệu nâng cao'),
(63, 11, 'Kỹ thuật điện nâng cao'),
(64, 12, 'Kỹ thuật cơ khí nâng cao'),
(65, 13, 'Kỹ thuật hàng không nâng cao'),
(66, 14, 'Kỹ thuật hàng không cơ bản'),
(67, 15, 'Kỹ thuật xây dựng'),
(68, 16, 'Kỹ thuật môi trường nâng cao'),
(69, 17, 'Toán học ứng dụng'),
(70, 18, 'Vật lý kỹ thuật'),
(71, 19, 'Kỹ thuật hóa học'),
(72, 20, 'Tài chính doanh nghiệp nâng cao'),
(73, 21, 'Quản trị nhân sự nâng cao'),
(74, 22, 'Marketing nâng cao'),
(75, 23, 'Xã hội học nâng cao'),
(76, 24, 'Chính trị học nâng cao'),
(77, 25, 'Luật quốc tế'),
(78, 1, 'Luật dân sự'),
(79, 2, 'Phương pháp giảng dạy đại cương'),
(80, 3, 'Triết học phương Tây'),
(81, 4, 'Tâm lý học xã hội'),
(82, 5, 'Marketing chiến lược'),
(83, 6, 'Kinh tế học quốc tế'),
(84, 7, 'Công nghệ sinh học'),
(85, 8, 'Toán rời rạc'),
(86, 9, 'Vật lý ứng dụng'),
(87, 10, 'Hệ thống nhúng'),
(88, 11, 'Điện tử kỹ thuật'),
(89, 12, 'Molecular Biology'),
(90, 13, 'Xã hội học hiện đại'),
(91, 14, 'Luật thương mại'),
(92, 15, 'Y học chuyên ngành'),
(93, 16, 'Tiếng Anh giao tiếp nâng cao'),
(94, 17, 'Quản lý Marketing'),
(95, 18, 'Chính trị học quốc tế'),
(96, 19, 'Nghiên cứu xã hội học'),
(97, 20, 'Kinh tế học tổ chức'),
(98, 21, 'Kỹ năng lãnh đạo trong quản trị nhân sự'),
(99, 22, 'Marketing kỹ thuật số'),
(100, 23, 'Phát triển phần mềm'),
(101, 24, 'Hệ thống thông tin quản lý'),
(102, 25, 'Lập trình khoa học dữ liệu'),
(103, 1, 'Y học cổ truyền nâng cao'),
(104, 2, 'Kỹ thuật cơ khí nâng cao'),
(105, 3, 'Vận hành máy bay'),
(106, 4, 'Lý thuyết mạch điện'),
(107, 5, 'Phát triển web nâng cao'),
(108, 6, 'Cơ học lý thuyết'),
(109, 7, 'Hóa học hữu cơ'),
(110, 8, 'Sinh học phân tử'),
(111, 9, 'An ninh mạng'),
(112, 10, 'Dược học nâng cao'),
(113, 11, 'Sinh học thực nghiệm'),
(114, 12, 'Lý thuyết xác suất'),
(115, 13, 'Hóa học phân tích'),
(116, 14, 'Chính trị học xã hội'),
(117, 15, 'Tâm lý học bệnh học'),
(118, 16, 'Đánh giá hiệu suất nhân sự'),
(119, 17, 'Lý luận chính trị'),
(120, 18, 'Công nghệ thông tin trong quản lý'),
(121, 19, 'Tiếng Anh cho học thuật'),
(122, 20, 'Khoa học dữ liệu cơ bản'),
(123, 21, 'Điện tử viễn thông'),
(124, 22, 'Sinh học học đường'),
(125, 23, 'Quản lý dự án xây dựng'),
(126, 24, 'Kinh tế học môi trường'),
(127, 25, 'Chiến lược Marketing toàn cầu'),
(128, 1, 'Công nghệ thông tin và quản lý dữ liệu'),
(129, 2, 'Lập trình mobile'),
(130, 3, 'Pháp luật và xã hội'),
(131, 4, 'Vật lý thực nghiệm'),
(132, 5, 'Nghiên cứu thị trường'),
(133, 6, 'Lập trình dữ liệu lớn'),
(134, 7, 'Hình học phân tích'),
(135, 8, 'Nghiên cứu xã hội học nâng cao'),
(136, 9, 'Phân tích chính trị'),
(137, 10, 'Di truyền học'),
(138, 11, 'Lãnh đạo và văn hóa tổ chức'),
(139, 12, 'Phát triển ứng dụng di động'),
(140, 13, 'Hóa học hữu cơ nâng cao'),
(141, 14, 'Quang học'),
(142, 15, 'Y học chuyên sâu'),
(143, 16, 'Công nghệ phần mềm'),
(144, 17, 'Quản lý Marketing quốc tế');





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


INSERT INTO score (a, average, b, c, id, subject_id, term_id) VALUES
(7.5, 7.7, 7.2, 7.8, 20001, 10001, 1),
(8.0, 8.3, 7.9, 8.2, 20002, 10002, 2),
(6.5, 6.7, 6.3, 6.8, 20003, 10003, 3),
(5.5, 5.7, 5.2, 5.9, 20004, 10004, 1),
(9.0, 9.2, 8.8, 9.3, 20005, 10005, 2),
(7.2, 7.4, 7.1, 7.6, 20006, 10006, 3),
(8.5, 8.7, 8.3, 8.8, 20007, 10007, 1),
(6.8, 7.0, 6.5, 7.2, 20008, 10008, 2),
(7.9, 8.1, 7.6, 8.2, 20009, 10009, 3),
(5.6, 5.9, 5.3, 6.0, 20010, 10010, 1),
(9.1, 9.3, 8.9, 9.4, 20011, 10011, 2),
(7.4, 7.6, 7.2, 7.7, 20012, 10012, 3),
(8.7, 8.9, 8.5, 9.0, 20013, 10013, 1),
(6.3, 6.5, 6.0, 6.6, 20014, 10014, 2),
(7.2, 7.4, 7.0, 7.5, 20015, 10015, 3),
(5.9, 6.1, 5.6, 6.3, 20016, 10016, 1),
(9.5, 9.7, 9.3, 9.8, 20017, 10017, 2),
(7.8, 8.0, 7.6, 8.1, 20018, 10018, 3),
(8.3, 8.5, 8.1, 8.6, 20019, 10019, 1),
(6.1, 6.3, 5.9, 6.4, 20020, 10020, 2),
(7.5, 7.7, 7.3, 7.8, 20021, 10021, 3),
(5.2, 5.5, 5.0, 5.6, 20022, 10022, 1),
(9.8, 10.0, 9.6, 10.0, 20023, 10023, 2),
(8.0, 8.2, 7.8, 8.3, 20024, 10024, 3),
(7.6, 7.8, 7.4, 7.9, 20025, 10025, 1),
(6.9, 7.1, 6.7, 7.2, 20026, 10026, 2),
(8.1, 8.3, 7.9, 8.4, 20027, 10027, 3),
(5.4, 5.6, 5.2, 5.7, 20028, 10028, 1),
(9.7, 9.9, 9.5, 10.0, 20029, 10029, 2),
(7.3, 7.5, 7.1, 7.6, 20030, 10030, 3),
(6.7, 6.9, 6.5, 7.0, 20031, 10031, 1),
(8.9, 9.1, 8.7, 9.2, 20032, 10032, 2),
(5.8, 6.0, 5.6, 6.1, 20033, 10033, 3),
(7.0, 7.2, 6.8, 7.3, 20034, 10034, 1),
(6.5, 6.7, 6.3, 6.8, 20035, 10035, 2),
(9.2, 9.4, 9.0, 9.5, 20036, 10036, 3),
(7.8, 8.0, 7.6, 8.1, 20037, 10037, 1),
(6.0, 6.2, 5.8, 6.3, 20038, 10038, 2),
(8.6, 8.8, 8.4, 8.9, 20039, 10039, 3),
(5.1, 5.4, 4.9, 5.5, 20040, 10040, 1),
(9.3, 9.5, 9.1, 9.6, 20041, 10041, 2),
(7.7, 7.9, 7.5, 8.0, 20042, 10042, 3),
(8.4, 8.6, 8.2, 8.7, 20043, 10043, 1),
(6.2, 6.4, 6.0, 6.5, 20044, 10044, 2),
(7.9, 8.1, 7.7, 8.2, 20045, 10045, 3),
(5.7, 5.9, 5.5, 6.0, 20046, 10046, 1),
(9.6, 9.8, 9.4, 9.9, 20047, 10047, 2),
(7.1, 7.3, 6.9, 7.4, 20048, 10048, 3),
(8.0, 8.2, 7.8, 8.3, 20049, 10049, 1),
(6.8, 7.0, 6.6, 7.1, 20050, 10050, 2);
INSERT INTO score (a, average, b, c, id, subject_id, term_id) VALUES
(7.1, 7.3, 6.9, 7.5, 20051, 10001, 1),
(8.4, 8.6, 8.2, 8.7, 20052, 10002, 2),
(6.3, 6.5, 6.1, 6.7, 20053, 10003, 3),
(5.9, 6.1, 5.7, 6.3, 20054, 10004, 1),
(9.2, 9.4, 9.0, 9.5, 20055, 10005, 2),
(7.5, 7.7, 7.3, 7.9, 20056, 10006, 3),
(8.1, 8.3, 7.9, 8.5, 20057, 10007, 1),
(6.7, 6.9, 6.5, 7.1, 20058, 10008, 2),
(7.9, 8.1, 7.7, 8.3, 20059, 10009, 3),
(5.6, 5.8, 5.4, 6.0, 20060, 10010, 1),
(9.0, 9.2, 8.8, 9.4, 20061, 10011, 2),
(7.4, 7.6, 7.2, 7.8, 20062, 10012, 3),
(8.6, 8.8, 8.4, 9.0, 20063, 10013, 1),
(6.2, 6.4, 6.0, 6.6, 20064, 10014, 2),
(7.7, 7.9, 7.5, 8.1, 20065, 10015, 3),
(5.8, 6.0, 5.6, 6.2, 20066, 10016, 1),
(9.5, 9.7, 9.3, 9.9, 20067, 10017, 2),
(7.2, 7.4, 7.0, 7.6, 20068, 10018, 3),
(8.3, 8.5, 8.1, 8.7, 20069, 10019, 1),
(6.1, 6.3, 5.9, 6.5, 20070, 10020, 2),
(7.8, 8.0, 7.6, 8.2, 20071, 10021, 3),
(5.3, 5.5, 5.1, 5.7, 20072, 10022, 1),
(9.8, 10.0, 9.6, 10.0, 20073, 10023, 2),
(8.0, 8.2, 7.8, 8.4, 20074, 10024, 3),
(7.6, 7.8, 7.4, 8.0, 20075, 10025, 1),
(6.9, 7.1, 6.7, 7.3, 20076, 10026, 2),
(8.1, 8.3, 7.9, 8.5, 20077, 10027, 3),
(5.4, 5.6, 5.2, 5.8, 20078, 10028, 1),
(9.7, 9.9, 9.5, 10.0, 20079, 10029, 2),
(7.3, 7.5, 7.1, 7.7, 20080, 10030, 3),
(6.7, 6.9, 6.5, 7.1, 20081, 10031, 1),
(8.9, 9.1, 8.7, 9.3, 20082, 10032, 2),
(5.8, 6.0, 5.6, 6.2, 20083, 10033, 3),
(7.0, 7.2, 6.8, 7.4, 20084, 10034, 1),
(6.5, 6.7, 6.3, 6.9, 20085, 10035, 2),
(9.2, 9.4, 9.0, 9.6, 20086, 10036, 3),
(7.8, 8.0, 7.6, 8.2, 20087, 10037, 1),
(6.0, 6.2, 5.8, 6.4, 20088, 10038, 2),
(8.6, 8.8, 8.4, 9.0, 20089, 10039, 3),
(5.1, 5.3, 4.9, 5.5, 20090, 10040, 1),
(9.3, 9.5, 9.1, 9.7, 20091, 10041, 2),
(7.7, 7.9, 7.5, 8.1, 20092, 10042, 3),
(8.4, 8.6, 8.2, 8.8, 20093, 10043, 1),
(6.2, 6.4, 6.0, 6.6, 20094, 10044, 2),
(7.9, 8.1, 7.7, 8.3, 20095, 10045, 3),
(5.7, 5.9, 5.5, 6.1, 20096, 10046, 1),
(9.6, 9.8, 9.4, 10.0, 20097, 10047, 2),
(7.1, 7.3, 6.9, 7.5, 20098, 10048, 3),
(8.0, 8.2, 7.8, 8.4, 20099, 10049, 1),
(6.8, 7.0, 6.6, 7.2, 20100, 10050, 2);
INSERT INTO score (a, average, b, c, id, subject_id, term_id) VALUES
(7.5, 7.6, 7.4, 7.8, 20101, 10001, 1),
(6.8, 7.0, 6.6, 7.2, 20102, 10002, 2),
(8.3, 8.4, 8.2, 8.6, 20103, 10003, 3),
(5.9, 6.1, 5.7, 6.3, 20104, 10004, 1),
(9.1, 9.2, 9.0, 9.4, 20105, 10005, 2),
(7.2, 7.4, 7.0, 7.6, 20106, 10006, 3),
(8.7, 8.8, 8.6, 9.0, 20107, 10007, 1),
(6.5, 6.7, 6.3, 6.9, 20108, 10008, 2),
(7.8, 8.0, 7.6, 8.2, 20109, 10009, 3),
(5.4, 5.6, 5.2, 5.8, 20110, 10010, 1),
(9.6, 9.7, 9.5, 9.9, 20111, 10011, 2),
(7.3, 7.5, 7.1, 7.7, 20112, 10012, 3),
(8.5, 8.6, 8.4, 8.8, 20113, 10013, 1),
(6.2, 6.4, 6.0, 6.6, 20114, 10014, 2),
(7.9, 8.1, 7.7, 8.3, 20115, 10015, 3),
(5.8, 6.0, 5.6, 6.2, 20116, 10016, 1),
(9.4, 9.6, 9.2, 9.8, 20117, 10017, 2),
(7.1, 7.3, 6.9, 7.5, 20118, 10018, 3),
(8.2, 8.3, 8.1, 8.5, 20119, 10019, 1),
(6.0, 6.2, 5.8, 6.4, 20120, 10020, 2),
(7.7, 7.9, 7.5, 8.1, 20121, 10021, 3),
(5.3, 5.5, 5.1, 5.7, 20122, 10022, 1),
(9.7, 9.9, 9.5, 10.0, 20123, 10023, 2),
(8.0, 8.2, 7.8, 8.4, 20124, 10024, 3),
(7.6, 7.8, 7.4, 8.0, 20125, 10025, 1),
(6.9, 7.1, 6.7, 7.3, 20126, 10026, 2),
(8.1, 8.3, 7.9, 8.5, 20127, 10027, 3),
(5.4, 5.6, 5.2, 5.8, 20128, 10028, 1),
(9.7, 9.9, 9.5, 10.0, 20129, 10029, 2),
(7.3, 7.5, 7.1, 7.7, 20130, 10030, 3),
(6.7, 6.9, 6.5, 7.1, 20131, 10031, 1),
(8.9, 9.1, 8.7, 9.3, 20132, 10032, 2),
(5.8, 6.0, 5.6, 6.2, 20133, 10033, 3),
(7.0, 7.2, 6.8, 7.4, 20134, 10034, 1),
(6.5, 6.7, 6.3, 6.9, 20135, 10035, 2),
(9.2, 9.4, 9.0, 9.6, 20136, 10036, 3),
(7.8, 8.0, 7.6, 8.2, 20137, 10037, 1),
(6.0, 6.2, 5.8, 6.4, 20138, 10038, 2),
(8.6, 8.8, 8.4, 9.0, 20139, 10039, 3),
(5.1, 5.3, 4.9, 5.5, 20140, 10040, 1),
(9.3, 9.5, 9.1, 9.7, 20141, 10041, 2),
(7.7, 7.9, 7.5, 8.1, 20142, 10042, 3),
(8.4, 8.6, 8.2, 8.8, 20143, 10043, 1),
(6.2, 6.4, 6.0, 6.6, 20144, 10044, 2),
(7.9, 8.1, 7.7, 8.3, 20145, 10045, 3),
(5.7, 5.9, 5.5, 6.1, 20146, 10046, 1),
(9.6, 9.8, 9.4, 10.0, 20147, 10047, 2),
(7.1, 7.3, 6.9, 7.5, 20148, 10048, 3),
(8.0, 8.2, 7.8, 8.4, 20149, 10049, 1),
(6.8, 7.0, 6.6, 7.2, 20150, 10050, 2);
INSERT INTO score (a, average, b, c, id, subject_id, term_id) VALUES
(6.9, 7.1, 6.7, 7.3, 20151, 10001, 1),
(8.2, 8.4, 8.0, 8.6, 20152, 10002, 2),
(5.7, 5.9, 5.5, 6.1, 20153, 10003, 3),
(9.0, 9.2, 8.8, 9.4, 20154, 10004, 1),
(7.5, 7.7, 7.3, 7.9, 20155, 10005, 2),
(6.3, 6.5, 6.1, 6.7, 20156, 10006, 3),
(8.8, 9.0, 8.6, 9.2, 20157, 10007, 1),
(5.9, 6.1, 5.7, 6.3, 20158, 10008, 2),
(7.4, 7.6, 7.2, 7.8, 20159, 10009, 3),
(9.5, 9.7, 9.3, 9.9, 20160, 10010, 1),
(6.1, 6.3, 5.9, 6.5, 20161, 10011, 2),
(7.8, 8.0, 7.6, 8.2, 20162, 10012, 3),
(5.2, 5.4, 5.0, 5.6, 20163, 10013, 1),
(8.9, 9.1, 8.7, 9.3, 20164, 10014, 2),
(6.7, 6.9, 6.5, 7.1, 20165, 10015, 3),
(9.1, 9.3, 8.9, 9.5, 20166, 10016, 1),
(7.0, 7.2, 6.8, 7.4, 20167, 10017, 2),
(5.8, 6.0, 5.6, 6.2, 20168, 10018, 3),
(8.4, 8.6, 8.2, 8.8, 20169, 10019, 1),
(6.5, 6.7, 6.3, 6.9, 20170, 10020, 2),
(9.8, 10.0, 9.6, 10.0, 20171, 10021, 3),
(7.6, 7.8, 7.4, 8.0, 20172, 10022, 1),
(5.9, 6.1, 5.7, 6.3, 20173, 10023, 2),
(8.3, 8.5, 8.1, 8.7, 20174, 10024, 3),
(6.2, 6.4, 6.0, 6.6, 20175, 10025, 1),
(9.4, 9.6, 9.2, 9.8, 20176, 10026, 2),
(7.3, 7.5, 7.1, 7.7, 20177, 10027, 3),
(6.8, 7.0, 6.6, 7.2, 20178, 10028, 1),
(8.7, 8.9, 8.5, 9.1, 20179, 10029, 2),
(5.6, 5.8, 5.4, 6.0, 20180, 10030, 3),
(9.0, 9.2, 8.8, 9.4, 20181, 10031, 1),
(7.1, 7.3, 6.9, 7.5, 20182, 10032, 2),
(6.4, 6.6, 6.2, 6.8, 20183, 10033, 3),
(8.1, 8.3, 7.9, 8.5, 20184, 10034, 1),
(5.3, 5.5, 5.1, 5.7, 20185, 10035, 2),
(9.5, 9.7, 9.3, 9.9, 20186, 10036, 3),
(7.2, 7.4, 7.0, 7.6, 20187, 10037, 1),
(6.0, 6.2, 5.8, 6.4, 20188, 10038, 2),
(8.6, 8.8, 8.4, 9.0, 20189, 10039, 3),
(5.1, 5.3, 4.9, 5.5, 20190, 10040, 1),
(9.3, 9.5, 9.1, 9.7, 20191, 10041, 2),
(7.7, 7.9, 7.5, 8.1, 20192, 10042, 3),
(8.4, 8.6, 8.2, 8.8, 20193, 10043, 1),
(6.2, 6.4, 6.0, 6.6, 20194, 10044, 2),
(7.9, 8.1, 7.7, 8.3, 20195, 10045, 3),
(5.7, 5.9, 5.5, 6.1, 20196, 10046, 1),
(9.6, 9.8, 9.4, 10.0, 20197, 10047, 2),
(7.1, 7.3, 6.9, 7.5, 20198, 10048, 3),
(8.0, 8.2, 7.8, 8.4, 20199, 10049, 1),
(6.8, 7.0, 6.6, 7.2, 20200, 10050, 2);


INSERT INTO `profile` (
  class_info_id, date_of_birth, debt_tuition_fee, gender_id, learned_credits, 
  major_id, paid_tuition_fee, score_id, status_id, teacher_id, tuition_fee, 
  address, email, identity_card, image, name, phone
) VALUES
(3, '2001-03-15', 1200.50, 1, 45, 3, 5000.00, 20001, 1, 11, 6200.50, '123 Main St', 'user1@example.com', '100000001', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Nguyen Van A', '0912345678'),
(3, '2000-08-21', 2500.00, 2, 50, 5, 7000.00, 20002, 2, 12, 9500.00, '456 Elm St', 'user2@example.com', '100000002', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Tran Thi B', '0923456789'),
(3, '2002-02-10', 1800.75, 1, 55, 8, 6200.00, 20003, 1, 15, 8000.75, '789 Oak St', 'user3@example.com', '100000003', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Le Van C', '0934567890'),
(3, '2001-07-12', 2200.30, 2, 60, 2, 7800.00, 20004, 2, 14, 10000.30, '101 Pine St', 'user4@example.com', '100000004', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Pham Thi D', '0945678901'),
(3, '2000-12-05', 2500.60, 1, 70, 10, 9000.00, 20005, 1, 11, 11500.60, '222 Maple St', 'user5@example.com', '100000005', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Hoang Van E', '0956789012'),
(3, '2003-02-20', 1300.90, 2, 40, 6, 5500.00, 20006, 3, 13, 6800.90, '333 Cedar St', 'user6@example.com', '100000006', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Ngo Thi F', '0967890123'),
(3, '2002-11-15', 3000.25, 1, 75, 12, 9500.00, 20007, 2, 16, 12500.25, '444 Birch St', 'user7@example.com', '100000007', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Bui Van G', '0978901234'),
(3, '2001-06-18', 2100.45, 2, 58, 7, 7200.00, 20008, 1, 18, 9300.45, '555 Fir St', 'user8@example.com', '100000008', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Pham Thi H', '0989012345'),
(3, '2003-08-29', 1900.70, 1, 52, 4, 6400.00, 20009, 3, 17, 8300.70, '666 Redwood St', 'user9@example.com', '100000009', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Tran Van I', '0990123456'),
(3, '2000-04-25', 2300.85, 2, 65, 9, 8600.00, 20010, 2, 19, 10900.85, '777 Walnut St', 'user10@example.com', '100000010', 'https://plus.unsplash.com/premium_photo-1697477313919-bddf0f4d2ea0?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Nguyen Thi J', '0901234567');


INSERT INTO `users` (
  `active_flag`, `create_date`, `id`, `update_date`, `email`, 
  `password`, `profile_id`, `user_name`
) VALUES
(1, '2025-04-01 00:00:00', 1, '2025-04-01 00:00:00', 'user1@example.com', 'password1', '100000001', 'user1'),
(1, '2025-04-01 00:00:00', 2, '2025-04-01 00:00:00', 'user2@example.com', 'password2', '100000002', 'user2'),
(1, '2025-04-01 00:00:00', 3, '2025-04-01 00:00:00', 'user3@example.com', 'password3', '100000003', 'user3'),
(1, '2025-04-01 00:00:00', 4, '2025-04-01 00:00:00', 'user4@example.com', 'password4', '100000004', 'user4'),
(1, '2025-04-01 00:00:00', 5, '2025-04-01 00:00:00', 'user5@example.com', 'password5', '100000005', 'user5'),
(1, '2025-04-01 00:00:00', 6, '2025-04-01 00:00:00', 'user6@example.com', 'password6', '100000006', 'user6'),
(1, '2025-04-01 00:00:00', 7, '2025-04-01 00:00:00', 'user7@example.com', 'password7', '100000007', 'user7'),
(1, '2025-04-01 00:00:00', 8, '2025-04-01 00:00:00', 'user8@example.com', 'password8', '100000008', 'user8'),
(1, '2025-04-01 00:00:00', 9, '2025-04-01 00:00:00', 'user9@example.com', 'password9', '100000009', 'user9'),
(1, '2025-04-01 00:00:00', 10, '2025-04-01 00:00:00', 'user10@example.com', 'password10', '100000010', 'user10');




INSERT INTO `user_role` (
  `active_flag`, `role_id`, `create_date`, `id`, `update_date`, `user_id`
) VALUES
(1, 1, '2025-04-01 00:00:00', 1, '2025-04-01 00:00:00', 1),
(1, 2, '2025-04-01 00:00:00', 2, '2025-04-01 00:00:00', 2),
(1, 3, '2025-04-01 00:00:00', 3, '2025-04-01 00:00:00', 3),
(1, 1, '2025-04-01 00:00:00', 4, '2025-04-01 00:00:00', 4),
(1, 2, '2025-04-01 00:00:00', 5, '2025-04-01 00:00:00', 5),
(1, 3, '2025-04-01 00:00:00', 6, '2025-04-01 00:00:00', 6),
(1, 1, '2025-04-01 00:00:00', 7, '2025-04-01 00:00:00', 7),
(1, 2, '2025-04-01 00:00:00', 8, '2025-04-01 00:00:00', 8),
(1, 3, '2025-04-01 00:00:00', 9, '2025-04-01 00:00:00', 9),
(1, 1, '2025-04-01 00:00:00', 10, '2025-04-01 00:00:00', 10);


INSERT INTO `menu` (
  `active_flag`, `id`, `order_index`, `parent_id`, `create_date`, `update_date`, `name`, `url`
) VALUES
(1, 1, 1, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Trang chủ', '/dashboard'),
(1, 2, 2, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Quản lý người dùng', '/user'),
(1, 3, 3, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Services', '/services'),
(1, 4, 4, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Contact', '/contact'),
(1, 5, 5, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Blog', '/blog'),
(1, 6, 6, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'FAQ', '/faq'),
(1, 7, 7, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Careers', '/careers'),
(1, 8, 8, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Privacy Policy', '/privacy-policy'),
(1, 9, 9, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Terms of Service', '/terms-of-service'),
(1, 10, 10, 0, '2025-04-01 00:00:00', '2025-04-01 00:00:00', 'Help', '/help');





INSERT INTO `auth` (
  `active_flag`, `id`, `menu_id`, `permission`, `role_id`, `create_date`, `update_date`
) VALUES
(1, 1, 1, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 2, 2, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 3, 3, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 4, 4, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 5, 5, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 6, 6, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 7, 7, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 8, 8, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 9, 9, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 10, 10, 1, 1, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),

(1, 11, 1, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 12, 2, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 13, 3, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 14, 4, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 15, 5, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 16, 6, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 17, 7, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 18, 8, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 19, 9, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 20, 10, 1, 2, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),

(1, 21, 1, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 22, 2, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 23, 3, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 24, 4, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 25, 5, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 26, 6, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 27, 7, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 28, 8, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 29, 9, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00'),
(1, 30, 10, 1, 3, '2025-04-01 00:00:00', '2025-04-01 00:00:00');

























