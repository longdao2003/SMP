DROP DATABASE IF EXISTS SMP;
CREATE DATABASE IF NOT EXISTS SMP;
USE SMP;

-- Bảng Gender
CREATE TABLE gender (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code ENUM('NAM', 'NU', 'KHAC') NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Bảng Status
CREATE TABLE status (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code ENUM('DANG_HOC', 'NGHI_HOC', 'LUU_BAN') NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Bảng ClassInfo
CREATE TABLE class_info (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(50) NOT NULL,
    name VARCHAR(50) NOT NULL
);

-- Bảng Year
CREATE TABLE year (
    id INT PRIMARY KEY AUTO_INCREMENT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    name VARCHAR(255) NOT NULL
);

-- Bảng Term
CREATE TABLE term (
    id INT PRIMARY KEY AUTO_INCREMENT,
    year_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    term_number INT NOT NULL,
    year VARCHAR(255) NOT NULL,
    FOREIGN KEY (year_id) REFERENCES year(id) ON DELETE CASCADE
);

-- Bảng Period
CREATE TABLE period (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    startHour TIME NOT NULL,
    endHour TIME NOT NULL
);

-- Bảng Room
CREATE TABLE room (
    name VARCHAR(255) PRIMARY KEY,
    capacity INT NOT NULL,
    is_allowed BOOLEAN NOT NULL
);

-- Bảng Major
CREATE TABLE major (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

-- Bảng Child
CREATE TABLE child (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

-- Bảng Major_Child
CREATE TABLE major_child (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    major_id INT NOT NULL,
    child_id INT NOT NULL,
    FOREIGN KEY (major_id) REFERENCES major(id),
    FOREIGN KEY (child_id) REFERENCES child(id)
);

-- Bảng Subject
CREATE TABLE subject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    credits INT NOT NULL,
    major_id INT NOT NULL,
    term_year_id INT NOT NULL,
    FOREIGN KEY (major_id) REFERENCES major_child(id)
);

-- Bảng Score
CREATE TABLE score (
    id INT AUTO_INCREMENT PRIMARY KEY,
    C FLOAT,
    B FLOAT,
    A FLOAT,
    average FLOAT,
    term_id INT,
    subject_id INT,
    FOREIGN KEY (term_id) REFERENCES term(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);

-- Bảng Profile
CREATE TABLE profile (
    identity_card VARCHAR(20) PRIMARY KEY,
    role_id INT,
    score_id INT,
    image VARCHAR(255),
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    phone VARCHAR(20),
    gender_id INT,
    address VARCHAR(255),
    status_id INT,
    teacher_id INT,
    email VARCHAR(100),
    major_id INT,
    class_info_id INT,
    learned_credits INT DEFAULT 0,
    paid_tution_fee DECIMAL(10,2) DEFAULT 0.00,
    tution_fee DECIMAL(10,2) DEFAULT 0.00,
    debt_tution_fee DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (gender_id) REFERENCES gender(id),
    FOREIGN KEY (status_id) REFERENCES status(id),
    FOREIGN KEY (class_info_id) REFERENCES class_info(id),
    FOREIGN KEY (score_id) REFERENCES score(id),
    FOREIGN KEY (major_id) REFERENCES major_child(id)
);

-- Bảng Timetable Type
CREATE TABLE timetable_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code ENUM('LICH_HOC', 'LICH_THI'),
    name VARCHAR(255)
);

-- Bảng Users
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    active_flag BIT DEFAULT 1,
    profile_id VARCHAR(20),
    FOREIGN KEY (profile_id) REFERENCES profile(identity_card) ON DELETE CASCADE,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Bảng Timetable
CREATE TABLE timetable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    room_name VARCHAR(255),
    period_id INT,
    students_id INT,
    teachers_id INT,
    subjects_id INT,
    term_id INT,
    start_date DATE,
    end_date DATE,
    timetable_type_id INT,
    FOREIGN KEY (room_name) REFERENCES room(name) ON DELETE CASCADE,
    FOREIGN KEY (period_id) REFERENCES period(id) ON DELETE CASCADE,
    FOREIGN KEY (students_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (teachers_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (subjects_id) REFERENCES subject(id) ON DELETE CASCADE,
    FOREIGN KEY (term_id) REFERENCES term(id) ON DELETE CASCADE,
    FOREIGN KEY (timetable_type_id) REFERENCES timetable_type(id) ON DELETE CASCADE
);

-- Bảng Role
CREATE TABLE role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    role_name VARCHAR(50) NOT NULL,
    description VARCHAR(100),
    active_flag BIT DEFAULT 1,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Bảng User_Role
CREATE TABLE user_role (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    role_id INT,
    active_flag BIT DEFAULT 1,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE
);

-- Bảng Menu
CREATE TABLE menu (
    id INT PRIMARY KEY AUTO_INCREMENT,
    parent_id INT,
    url VARCHAR(100),
    name VARCHAR(100),
    order_index INT,
    active_flag BIT DEFAULT 1,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Bảng Auth
CREATE TABLE auth (
    id INT PRIMARY KEY AUTO_INCREMENT,
    role_id INT,
    menu_id INT,
    permission BIT DEFAULT 1,
    active_flag BIT DEFAULT 1,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE,
    FOREIGN KEY (menu_id) REFERENCES menu(id) ON DELETE CASCADE
);



-- INSERT INTO `role` (`active_flag`, `id`, `create_date`, `update_date`, `role_name`, `description`) VALUES (NULL, NULL, NULL, NULL, 'Admin', 'Bố của hệ thống này');
-- INSERT INTO `role` (`active_flag`, `id`, `create_date`, `update_date`, `role_name`, `description`) VALUES (NULL, NULL, NULL, NULL, 'Giảng viên', 'Cũng là bố nhưng mà thấp cổ bé họng hơn');
-- INSERT INTO `role` (`active_flag`, `id`, `create_date`, `update_date`, `role_name`, `description`) VALUES (NULL, NULL, NULL, NULL, 'Sinh viên', 'Tuổi l sánh vai');



-- INSERT INTO users (id, user_name, password, email, name, active_flag) VALUES
-- (100001, 'user1', 'password1', 'user1@example.com', 'User One', 1),
-- (100002, 'user2', 'password2', 'user2@example.com', 'User Two', 1),
-- (100003, 'user3', 'password3', 'user3@example.com', 'User Three', 1),
-- (100004, 'user4', 'password4', 'user4@example.com', 'User Four', 1),
-- (100005, 'user5', 'password5', 'user5@example.com', 'User Five', 1),
-- (100006, 'user6', 'password6', 'user6@example.com', 'User Six', 1),
-- (100007, 'user7', 'password7', 'user7@example.com', 'User Seven',1),
-- (100008, 'user8', 'password8', 'user8@example.com', 'User Eight', 1),
-- (100009, 'user9', 'password9', 'user9@example.com', 'User Nine', 1),
-- (100010, 'user10', 'password10', 'user10@example.com', 'User Ten', 1),
-- (100011, 'user11', 'password11', 'user11@example.com', 'User Eleven', 1),
-- (100012, 'user12', 'password12', 'user12@example.com', 'User Twelve', 1),
-- (100013, 'user13', 'password13', 'user13@example.com', 'User Thirteen', 1),
-- (100014, 'user14', 'password14', 'user14@example.com', 'User Fourteen',1),
-- (100015, 'user15', 'password15', 'user15@example.com', 'User Fifteen', 1),
-- (100016, 'user16', 'password16', 'user16@example.com', 'User Sixteen', 1),
-- (100017, 'user17', 'password17', 'user17@example.com', 'User Seventeen', 1),
-- (100018, 'user18', 'password18', 'user18@example.com', 'User Eighteen', 1),
-- (100019, 'user19', 'password19', 'user19@example.com', 'User Nineteen', 1),
-- (100020, 'user20', 'password20', 'user20@example.com', 'User Twenty', 1),
-- (100021, 'user21', 'password21', 'user21@example.com', 'User Twenty-One', 1),
-- (100022, 'user22', 'password22', 'user22@example.com', 'User Twenty-Two', 1),
-- (100023, 'user23', 'password23', 'user23@example.com', 'User Twenty-Three', 1),
-- (100024, 'user24', 'password24', 'user24@example.com', 'User Twenty-Four', 1),
-- (100025, 'user25', 'password25', 'user25@example.com', 'User Twenty-Five', 1),
-- (100026, 'user26', 'password26', 'user26@example.com', 'User Twenty-Six', 1),
-- (100027, 'user27', 'password27', 'user27@example.com', 'User Twenty-Seven', 1),
-- (100028, 'user28', 'password28', 'user28@example.com', 'User Twenty-Eight', 1),
-- (100029, 'user29', 'password29', 'user29@example.com', 'User Twenty-Nine', 1),
-- (100030, 'user30', 'password30', 'user30@example.com', 'User Thirty', 1);


-- INSERT INTO `user_role` (`id`, `active_flag`, `create_date`, `update_date`, `role_id`, `user_id`) VALUES (NULL, NULL, NULL, NULL, '1', '100001');




-- INSERT INTO menu (parent_id, url, name, order_index, active_flag)
-- VALUES 
--     (0, '/xem-diem', 'Xem điểm', 2, 1),
--     (0, '/dang-ky-giang-day', 'Đăng ký giảng dạy', 3, 1),
--     (0, '/quan-ly-nguoi-dung', 'Quản lý người dùng', 4, 1),
--     (0, '/quan-ly-mon-hoc', 'Quản lý môn học', 5, 1),
--     (0, '/tao-lich-thi', 'Tạo lịch thi', 6, 1),
--     (0, '/tao-thoi-khoa-bieu', 'Tạo thời khóa biểu', 7, 1),
--     (0, '/xem-thoi-khoa-bieu', 'Xem thời khóa biểu', 8, 1),
--     (0, '/dang-ky-mon-hoc', 'Đăng ký môn học', 9, 1);

-- INSERT INTO `menu` (`id`, `parent_id`, `url`, `name`, `order_index`, `active_flag`, `create_date`, `update_date`) VALUES (NULL, '0', '/dashboard', 'Trang chủ', '1', b'1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


-- INSERT INTO `auth` (`id`, `role_id`, `menu_id`, `permission`, `active_flag`, `create_date`, `update_date`) VALUES (NULL, '1', '1', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- INSERT INTO `auth` (`id`, `role_id`, `menu_id`, `permission`, `active_flag`, `create_date`, `update_date`) VALUES (NULL, '1', '3', 1, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
-- INSERT INTO `auth` (`id`, `role_id`, `menu_id`, `permission`, `active_flag`, `create_date`, `update_date`) VALUES (NULL, '1', '9', b'1', b'1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);






-- Thêm dữ liệu vào bảng Gender
INSERT INTO gender (code, name) VALUES
('NAM', 'Nam'),
('NU', 'Nữ'),
('KHAC', 'Khác');

-- Thêm dữ liệu vào bảng Status
INSERT INTO status (code, name) VALUES
('DANG_HOC', 'Đang học'),
('BO_HOC', 'Bỏ học'),
('LUU_BAN', 'Lưu ban');

-- Thêm dữ liệu vào bảng ClassInfo
INSERT INTO class_info (code, name) VALUES
('CT01', 'Lớp Công nghệ thông tin 01'),
('CT02', 'Lớp Công nghệ thông tin 02'),
('KT01', 'Lớp Kinh tế 01');

-- Thêm dữ liệu vào bảng Year
INSERT INTO year (start_date, end_date, name) VALUES
('2023-01-01', '2023-12-31', 'Năm học 2023'),
('2024-01-01', '2024-12-31', 'Năm học 2024');

-- Thêm dữ liệu vào bảng Term
INSERT INTO term (year_id, start_date, end_date, term_number, year) VALUES
(1, '2023-01-01', '2023-06-30', 1, '2023'),
(1, '2023-07-01', '2023-12-31', 2, '2023'),
(2, '2024-01-01', '2024-06-30', 1, '2024');

-- Thêm dữ liệu vào bảng Period
INSERT INTO period (name, startHour, endHour) VALUES
('Sáng', '08:00:00', '12:00:00'),
('Chiều', '13:00:00', '17:00:00'),
('Tối', '18:00:00', '21:00:00');

-- Thêm dữ liệu vào bảng Room
INSERT INTO room (name, capacity, is_allowed) VALUES
('Phòng A101', 30, TRUE),
('Phòng B202', 25, TRUE),
('Phòng C303', 20, FALSE);

-- Thêm dữ liệu vào bảng Major
INSERT INTO major (code, name) VALUES
('CNTT', 'Công nghệ thông tin'),
('KT', 'Kinh tế'),
('QD', 'Quản trị doanh nghiệp');

-- Thêm dữ liệu vào bảng Child
INSERT INTO child (code, name) VALUES
('LCT', 'Lập trình cơ bản'),
('HTH', 'Hệ thống thông tin'),
('KTC', 'Kinh tế chính trị');

-- Thêm dữ liệu vào bảng Major_Child
INSERT INTO major_child (name, major_id, child_id) VALUES
('Lập trình web', 1, 1),
('Lập trình mobile', 1, 1),
('Kinh tế vĩ mô', 2, 3);

-- Thêm dữ liệu vào bảng Subject
INSERT INTO subject (name, credits, major_id, term_year_id) VALUES
('Lập trình web', 3, 1, 1),
('Lập trình mobile', 3, 1, 2),
('Kinh tế vĩ mô', 4, 2, 2);

-- Thêm dữ liệu vào bảng Score
INSERT INTO score (C, B, A, average, term_id, subject_id) VALUES
(8.0, 7.5, 9.0, 8.0, 1, 1),
(7.5, 7.0, 8.0, 7.5, 2, 2);

-- Thêm dữ liệu vào bảng Profile
INSERT INTO profile (identity_card, role_id, score_id, image, name, date_of_birth, phone, gender_id, address, status_id, teacher_id, email, major_id, class_info_id, learned_credits, paid_tution_fee, tution_fee, debt_tution_fee) VALUES
('123456789', 1, 1, 'image.jpg', 'Nguyen Van A', '1995-05-10', '0123456789', 1, 'Hà Nội', 1, 1, 'nguyenvana@example.com', 1, 1, 30, 1000000.00, 2000000.00, 1000000.00),
('987654321', 2, 2, 'image2.jpg', 'Tran Thi B', '1998-08-15', '0987654321', 2, 'Hải Phòng', 2, 2, 'tranthib@example.com', 2, 2, 45, 1200000.00, 2500000.00, 1300000.00);

-- Thêm dữ liệu vào bảng Timetable_Type
INSERT INTO timetable_type (code, name) VALUES
('LICH_HOC', 'Lịch học'),
('LICH_THI', 'Lịch thi');

-- Thêm dữ liệu vào bảng Users
INSERT INTO users (user_name, password, email, active_flag, profile_id) VALUES
('admin', 'admin123', 'admin@example.com', 1, '123456789'),
('giangvien', 'gv12345', 'giangvien@example.com', 1, '987654321');

-- Thêm dữ liệu vào bảng Timetable
INSERT INTO timetable (room_name, period_id, students_id, teachers_id, subjects_id, term_id, start_date, end_date, timetable_type_id) VALUES
('Phòng A101', 1, 1, 2, 1, 1, '2023-01-01', '2023-06-30', 1),
('Phòng B202', 2, 2, 1, 2, 2, '2023-07-01', '2023-12-31', 2);

-- Thêm dữ liệu vào bảng Role
INSERT INTO role (role_name, description) VALUES
('Admin', 'Quản trị viên hệ thống'),
('Giảng viên', 'Giảng viên các môn học'),
('Sinh viên', 'Sinh viên tham gia các khóa học');

-- Thêm dữ liệu vào bảng User_Role
INSERT INTO user_role (user_id, role_id) VALUES
(1, 1), 
(2, 2);

-- Thêm dữ liệu vào bảng Menu
INSERT INTO menu (parent_id, url, name, order_index, active_flag) VALUES
(0, '/xem-diem', 'Xem điểm', 2, 1),
(0, '/dang-ky-giang-day', 'Đăng ký giảng dạy', 3, 1),
(0, '/quan-ly-nguoi-dung', 'Quản lý người dùng', 4, 1);

-- Thêm dữ liệu vào bảng Auth
INSERT INTO auth (role_id, menu_id, permission, active_flag) VALUES
(1, 1, 1, 1),
(2, 3, 1, 1);







