CREATE DATABASE IF NOT EXISTS quanlysinhvien;
USE quanlysinhvien;
CREATE TABLE tbl_sinhvien (
    id INT PRIMARY KEY,
    ten VARCHAR(255),
    tuoi INT,
    gioiTinh VARCHAR(10),
    maLop VARCHAR(10)
);

CREATE TABLE tbl_giaovien (
    id INT PRIMARY KEY,
    ten VARCHAR(255),
    tuoi INT,
    gioiTinh VARCHAR(10),
    soNamKN INT
);

CREATE TABLE tbl_diem (
    id INT PRIMARY KEY,
    maSV INT,
    diemToan FLOAT,
    diemLy FLOAT,
    diemHoa FLOAT
);

INSERT INTO tbl_sinhvien (id, ten, tuoi, gioiTinh, maLop)
VALUES
(1, 'Nguyen Van Quan', 20, 'Nam', 'A01'),
(2, 'Tran Thi Ha', 21, 'Nu', 'B02'),
(3, 'Hoang Van Huy', 22, 'Nam', 'C03'),
(4, 'Nguyen Thi Nhan', 19, 'Nu', 'D04'),
(5, 'Tran Van Khanh', 23, 'Nam', 'E05'),
(6, 'Le Thi Ly', 20, 'Nu', 'F06'),
(7, 'Nguyen Van Gioi', 21, 'Nam', 'G07'),
(8, 'Tran Thi Ha', 20, 'Nu', 'H08'),
(9, 'Le Van Tu', 22, 'Nam', 'I09'),
(10, 'Pham Thi Tu', 21, 'Nu', 'K10');

INSERT INTO tbl_giaovien (id, ten, tuoi, gioiTinh, soNamKN)
VALUES
(1, 'Le Van Ca', 35, 'Nam', 5),
(2, 'Pham Thi De', 40, 'Nu', 8),
(3, 'Phan Van Ma', 42, 'Nam', 10),
(4, 'Vo Thi Nu', 38, 'Nu', 6),
(5, 'Bui Van Pa', 45, 'Nam', 12),
(6, 'Tran Van Quy', 40, 'Nu', 8),
(7, 'Hoang Van Vu', 40, 'Nam', 9),
(8, 'Nguyen Thi Xa', 35, 'Nu', 7),
(9, 'Tran Van Yen', 42, 'Nam', 11),
(10, 'Le Thi Lan', 39, 'Nu', 8);

INSERT INTO tbl_diem (id, maSV, diemToan, diemLy, diemHoa)
VALUES
(1, 1, 8.5, 7.0, 9.0),
(2, 2, 7.0, 8.5, 8.0),
(3, 3, 6.5, 8.0, 7.5),
(4, 4, 9.0, 7.5, 8.5),
(11, 11, 8.0, 9.0, 7.0),
(12, 12, 7.5, 8.5, 8.0),
(13, 13, 8.5, 7.0, 9.0),
(14, 14, 7.0, 8.5, 8.0),
(21, 21, 8.0, 9.0, 7.5),
(22, 22, 7.5, 8.5, 8.0);

ALTER TABLE tbl_sinhvien
ADD COLUMN email VARCHAR(255);

ALTER TABLE tbl_giaovien
CHANGE COLUMN soNamKN soNamKinhNghiem INT;

UPDATE tbl_sinhvien
SET email = 'nguyenvanquan@gmail.com'
WHERE id = 1;

UPDATE tbl_giaovien
SET soNamKinhNghiem = 6
WHERE id = 1;