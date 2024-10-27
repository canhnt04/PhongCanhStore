-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2024 at 04:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phongcanhstore`
--
CREATE DATABASE IF NOT EXISTS `phongcanhstore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phongcanhstore`;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `makhuvuc` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gianhap` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieuxuat`
--

CREATE TABLE `ctphieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `masp` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmucchucnang`
--

CREATE TABLE `danhmucchucnang` (
  `machucnang` int(10) NOT NULL,
  `tenchucnang` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `magiamgia` int(11) NOT NULL,
  `tenctgiamgia` varchar(50) NOT NULL,
  `mocgiamgia` int(11) NOT NULL,
  `sotienduocgiam` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`magiamgia`, `tenctgiamgia`, `mocgiamgia`, `sotienduocgiam`, `trangthai`) VALUES
(1, 'Mừng đại lễ 2/9', 200000, 20000, 1),
(2, 'Hành trình 10 năm', 150000, 9300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `ngaythamgia` date NOT NULL DEFAULT current_timestamp(),
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkhachhang`, `diachi`, `gioitinh`, `sdt`, `ngaythamgia`, `trangthai`) VALUES
(1, 'Huỳnh Minh Đại', 'Quận 1', 'Nam', '0368387671', '2024-09-11', 1),
(2, 'Đỗ Thị Trâm Anh', 'Tiền Giang', 'Nữ', '0365387631', '2024-09-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khuvuckho`
--

CREATE TABLE `khuvuckho` (
  `makhuvuc` int(11) NOT NULL,
  `tenkhuvuc` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuvuckho`
--

INSERT INTO `khuvuckho` (`makhuvuc`, `tenkhuvuc`, `ghichu`, `trangthai`) VALUES
(1, 'Kho Bình Dương', 'rau, củ, quả', 1),
(2, 'Kho HCM Express', 'bánh kẹo', 1),
(3, 'Kho Bình Trị Đông', 'đồ ăn', 1),
(4, 'Kho Hoàng Hà', 'đồ dùng học tập', 1),
(5, 'Kho Đồng Tháp Ultra', 'nước ngọt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(255) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`, `trangthai`) VALUES
(1, 'Đồ ăn', 1),
(2, 'Nước uống', 1),
(3, 'Rau củ quả', 1),
(4, 'Đồ dùng cá nhân', 1),
(5, 'Dụng cụ học tập', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` int(11) NOT NULL,
  `tenncc` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachi`, `email`, `sdt`, `trangthai`) VALUES
(1, 'Công Ty TNHH rau củ quả Thái An', ' Phòng 6.5, Tầng6, Tòa Nhà E. Town 2, 364 Cộng Hòa, P. 13, Q. Tân Bình, Tp. Hồ Chí Minh', 'lienhe@thegioididong.com', '02835100100', 1),
(2, 'Công ty bánh kẹo Việt Nam', 'Số 79 đường số 6, Hưng Phước 4, Phú Mỹ Hưng, quận 7, TPHCM', 'contact@paviet.vn', '19009477', 1),
(3, 'Công Ty TNHH đồ ăn nhanh', '8/38 Đinh Bô Lĩnh, P.24, Q. Bình Thạnh, Tp. Hồ Chí Minh', 'contact@baola.vn', '02835119060', 1),
(4, 'Công Ty THHHMTV An Nam ', 'Phòng 703, Tầng7, Tòa Nhà Metropolitan, 235 Đồng Khởi, P. Bến Nghé, Q. 1, Tp. Hồ Chí Minh (TPHCM)', 'chau.nguyen@nokia.com', '02838236894', 1),
(5, 'Hệ Thống Phân Phối nước ngọt', '261 Lê Lợi, P. Lê Lợi, Q. Ngô Quyền, Tp. Hải Phòng', 'info@mihome.vn', '0365888866', 1),
(6, 'Atech Group', 'Tòa nhà tài chính Bitexco, 2 Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 'contact@samsung.vn', '0988788456', 1),
(7, 'Công ty Suzuki Việt Nam', '27 Đ. Nguyễn Trung Trực, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', 'oppovietnam@oppo.vn', '0456345234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `email`, `trangthai`) VALUES
(1, 'admin', 'Nam', '2004-01-21', '0387913347', 'admin@gmail.com', 1),
(2, 'Nguyễn Bảo', 'Nam', '2004-10-22', '0355374321', 'bao@gmail.com', 1),
(3, 'Nguyễn Tấn Cảnh', 'Nam', '2000-01-11', '0989338281', 'canh@gmail.com', 1),
(4, 'Nguyễn Trung Trực', 'Nam', '2003-04-03', '0367890283', 'trungtruc@gmail.com', 1),
(5, 'Nguyễn Quang Dương', 'Nam', '2004-05-06', '0378119329', 'quangduong@gmail.com', 1),
(6, 'Huỳnh Lê Phúc', 'Nam', '2004-01-09', '0369308081', 'phucle@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhomquyen`
--

CREATE TABLE `nhomquyen` (
  `manhomquyen` int(11) NOT NULL,
  `tennhomquyen` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhomquyen`
--

INSERT INTO `nhomquyen` (`manhomquyen`, `tennhomquyen`, `trangthai`) VALUES
(1, 'admin', 1),
(2, 'Nhân viên nhập hàng', 1),
(3, 'Nhân viên xuất hàng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `mancc` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `thoigian` datetime DEFAULT current_timestamp(),
  `tongtien` decimal(10,2) NOT NULL DEFAULT 0.00,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` decimal(10,2) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `magiamgia` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `maloai` int(11) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `xuatxu` int(11) DEFAULT NULL,
  `NSX` date NOT NULL,
  `HSD` date NOT NULL,
  `thuonghieu` int(11) DEFAULT NULL,
  `gianhap` decimal(10,2) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `trangthai` tinyint(1) DEFAULT 1,
  `giaban` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `maloai`, `tensp`, `hinhanh`, `xuatxu`, `NSX`, `HSD`, `thuonghieu`, `gianhap`, `soluongton`, `trangthai`, `giaban`) VALUES
(1, 2, 'pepsi', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-12-11', 1, 10000.00, 0, 1, 0.00),
(2, 1, 'bánh kem', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-12-11', 1, 400000.00, 0, 1, 0.00),
(3, 1, 'bánh quy', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-11-11', 1, 50000.00, 0, 1, 0.00),
(4, 3, 'cà rốt', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 6000.00, 0, 1, 0.00),
(5, 3, 'khoai tây', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 10000.00, 0, 1, 0.00),
(6, 1, 'rau muống', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 7000.00, 0, 1, 0.00),
(7, 1, 'coca', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 10000.00, 0, 1, 0.00),
(8, 1, 'bút xóa', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 15000.00, 0, 1, 0.00),
(9, 1, 'thước kẻ', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2024-09-11', '2025-10-11', 1, 123.00, 0, 1, 0.00),
(10, 2, 'bánh mì', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2024-09-12', '2025-09-12', 1, 10000.00, 0, 1, 0.00),
(11, 2, 'nước suối', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-06-11', '2024-06-11', 1, 5000.00, 0, 1, 0.00),
(12, 1, 'sữa chua', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-05-11', '2024-05-11', 1, 12000.00, 0, 1, 0.00),
(13, 2, 'kẹo dừa', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-07-01', '2024-11-01', 1, 45000.00, 0, 1, 0.00),
(14, 3, 'hành tây', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-08-11', '2024-10-11', 1, 7000.00, 0, 1, 0.00),
(15, 3, 'cà chua', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-09-01', '2024-09-01', 1, 9000.00, 0, 1, 0.00),
(16, 2, 'trái cây sấy', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-03-11', '2024-03-11', 1, 60000.00, 0, 1, 0.00),
(17, 1, 'bánh kẹo', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-02-11', '2024-02-11', 1, 30000.00, 0, 1, 0.00),
(18, 2, 'kẹo bạc hà', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-12-11', 1, 15000.00, 0, 1, 0.00),
(19, 1, 'kem đánh răng', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-05-11', '2024-05-11', 1, 20000.00, 0, 1, 0.00),
(20, 1, 'dầu gội', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-06-11', '2024-12-11', 1, 45000.00, 0, 1, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `mataikhoan` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `matkhau` char(255) NOT NULL,
  `manhomquyen` int(11) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL DEFAULT '',
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`mataikhoan`, `manv`, `matkhau`, `manhomquyen`, `tendangnhap`, `trangthai`) VALUES
(1, 1, 'admin', 1, 'admin', 1),
(2, 3, '12345a@', 2, 'tancanh1', 1),
(3, 2, '12345a@', 3, 'xuanbao1', 1),
(4, 4, '12345a@', 2, 'truc1', 0),
(5, 5, '12345a@', 3, 'duong1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `mathuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`mathuonghieu`, `tenthuonghieu`, `trangthai`) VALUES
(1, 'Acecook Viet Nam', 1),
(2, 'Thiên Long', 1),
(3, 'Thái Dương đồ dùng học tập', 1),
(4, 'Nerman Vietnam', 0),
(7, 'Noctural Studio', 0),
(8, 'Sly onstream', 0),
(9, 'Mỹ hảo', 1),
(10, 'Ava đồ dùng công nghệ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xuatxu`
--

CREATE TABLE `xuatxu` (
  `maxuatxu` int(11) NOT NULL,
  `tenxuatxu` varchar(50) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `xuatxu`
--

INSERT INTO `xuatxu` (`maxuatxu`, `tenxuatxu`, `trangthai`) VALUES
(1, 'Trung Quốc', 1),
(2, 'Hàn Quốc', 1),
(3, 'Việt Nam', 1),
(4, 'USA', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD KEY `fk_ctphieunhap_maphieunhap` (`maphieunhap`),
  ADD KEY `fk_phieunhap_makhuvuc` (`makhuvuc`),
  ADD KEY `fk_ctphieunhap_masp` (`masp`);

--
-- Indexes for table `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD KEY `fk_ctphieuxuat_masp` (`masp`),
  ADD KEY `fk_ctphieuxuat_maphieuxuat` (`maphieuxuat`);

--
-- Indexes for table `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  ADD PRIMARY KEY (`machucnang`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`magiamgia`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `khuvuckho`
--
ALTER TABLE `khuvuckho`
  ADD PRIMARY KEY (`makhuvuc`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `nhomquyen`
--
ALTER TABLE `nhomquyen`
  ADD PRIMARY KEY (`manhomquyen`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `fk_phieunhap_mancc` (`mancc`),
  ADD KEY `fk_phieunhap_manv` (`manv`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `fk_phieuxuat_manv` (`manv`),
  ADD KEY `fk_phieuxuat_makh` (`makh`),
  ADD KEY `fk_phieuxuat_magiamgia` (`magiamgia`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sanpham_loaisanpham` (`maloai`),
  ADD KEY `fk_sanpham_thuonghieu` (`thuonghieu`),
  ADD KEY `fk_sanpham_xuatxu` (`xuatxu`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`mataikhoan`),
  ADD KEY `fk_taikhoan_manhomquyen` (`manhomquyen`),
  ADD KEY `fk_taikhoan_manv` (`manv`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`mathuonghieu`);

--
-- Indexes for table `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`maxuatxu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  MODIFY `machucnang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `magiamgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khuvuckho`
--
ALTER TABLE `khuvuckho`
  MODIFY `makhuvuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nhomquyen`
--
ALTER TABLE `nhomquyen`
  MODIFY `manhomquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `mataikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `mathuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `maxuatxu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `fk_ctphieunhap_maphieunhap` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`),
  ADD CONSTRAINT `fk_ctphieunhap_masp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_phieunhap_makhuvuc` FOREIGN KEY (`makhuvuc`) REFERENCES `khuvuckho` (`makhuvuc`);

--
-- Constraints for table `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD CONSTRAINT `fk_ctphieuxuat_maphieuxuat` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuat` (`maphieuxuat`),
  ADD CONSTRAINT `fk_ctphieuxuat_masp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_phieunhap_mancc` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`),
  ADD CONSTRAINT `fk_phieunhap_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `fk_phieuxuat_magiamgia` FOREIGN KEY (`magiamgia`) REFERENCES `giamgia` (`magiamgia`),
  ADD CONSTRAINT `fk_phieuxuat_makh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `fk_phieuxuat_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_loaisanpham` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`),
  ADD CONSTRAINT `fk_sanpham_thuonghieu` FOREIGN KEY (`thuonghieu`) REFERENCES `thuonghieu` (`mathuonghieu`),
  ADD CONSTRAINT `fk_sanpham_xuatxu` FOREIGN KEY (`xuatxu`) REFERENCES `xuatxu` (`maxuatxu`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_taikhoan_manhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`),
  ADD CONSTRAINT `fk_taikhoan_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'phongcanhstore', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"phongcanhstore\",\"phpmyadmin\",\"quanlycuahangsach\",\"sieuthimini\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sieuthimini\",\"table\":\"khuvuckho\"},{\"db\":\"sieuthimini\",\"table\":\"giamgia\"},{\"db\":\"sieuthimini\",\"table\":\"danhmucchucnang\"},{\"db\":\"sieuthimini\",\"table\":\"ctphieuxuat\"},{\"db\":\"sieuthimini\",\"table\":\"ctphieunhap\"},{\"db\":\"sieuthimini\",\"table\":\"nhomquyen\"},{\"db\":\"sieuthimini\",\"table\":\"nhanvien\"},{\"db\":\"sieuthimini\",\"table\":\"khachhang\"},{\"db\":\"quanlycuahangsach\",\"table\":\"nhanvien\"},{\"db\":\"quanlycuahangsach\",\"table\":\"chuongtrinhkhuyenmai\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-27 03:26:56', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `quanlycuahangsach`
--
CREATE DATABASE IF NOT EXISTS `quanlycuahangsach` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quanlycuahangsach`;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `Ma` int(11) NOT NULL,
  `MaPhieuNhap` int(11) NOT NULL,
  `MaSach` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `Ma` int(11) NOT NULL,
  `MaPhieuXuat` int(11) NOT NULL,
  `MaSach` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chuongtrinhkhuyenmai`
--

CREATE TABLE `chuongtrinhkhuyenmai` (
  `Ma` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chuongtrinhkhuyenmai`
--

INSERT INTO `chuongtrinhkhuyenmai` (`Ma`, `Ten`, `NgayBD`, `NgayKT`) VALUES
(0, 'Giảm 30% cho 1 số sách nhất định', '2024-09-12', '2024-09-24'),
(1, 'Giảm giá tháng 9', '2024-09-01', '2024-09-30'),
(2, 'Chương Trình Giảm Giá Mùa Thuu', '2024-09-01', '2024-10-01'),
(3, '1', '2024-10-01', '2024-10-14'),
(5, 'Giảm giá đơn hàng', '2024-09-02', '2024-09-23'),
(6, 'Giảm siêu sốc', '2024-09-05', '2024-09-30'),
(7, 'Giảm 10% cho 1 số sách nhất định', '2024-09-01', '2024-09-30'),
(8, 'abc', '2024-10-18', '2024-10-31'),
(9, 'akpdaskdas;lkd;l@@@@', '2024-10-18', '2024-10-24'),
(99, '123', '2024-10-18', '2024-10-24'),
(123, '123', '2024-10-01', '2024-10-02'),
(1234, 'Cảnh nè', '2024-10-01', '2024-10-16'),
(12123, 'abc', '2024-10-01', '2024-10-09'),
(121233, 'abc', '2024-10-01', '2024-10-09'),
(1212331, 'abc', '2024-10-01', '2024-10-09'),
(12331211, '1', '2024-10-16', '2024-10-24'),
(12331231, '12312312312312ed12d12d1d12d12d12d1', '2024-10-01', '2024-10-24'),
(123321111, '123456789101112131415123123123123123123123123121', '2024-10-01', '2024-10-10'),
(123456789, 'abc', '2024-10-01', '2024-10-15'),
(1111111111, 'abca', '2024-10-01', '2024-10-15'),
(1234567890, 'abc', '2024-10-01', '2024-10-15'),
(1234567891, 'abca', '2024-10-01', '2024-10-15'),
(1234567893, 'KhuyenMaiGiamGiaNgayLeTet2024A', '0001-10-02', '2024-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `Ma` int(11) NOT NULL,
  `Ho` varchar(50) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SoDienThoai` varchar(100) NOT NULL,
  `TinhTrang` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`Ma`, `Ho`, `Ten`, `DiaChi`, `SoDienThoai`, `TinhTrang`) VALUES
(1, 'Nguyễn', 'Hằng', 'hồ Chí Minh', '0236987456', 1),
(2, 'Thu', 'Uyên', '39 Nguyễn Thượng Hiền', '092472162', 1),
(3, 'Xuân', 'Phương', '46/10 Nguyễn Trãi', '0378583984', 1),
(4, 'Đức', 'Anh', '60 Điện Biên Phủ', '09647287223', 1),
(5, 'Nguyễn', 'Hùng', '66 Pasteur', '0957837433', 1),
(6, 'Minh', 'Hằng', '39 CMT8', '0983746274', 1),
(7, 'mi', 'mii', '23 seee', '0223434332', 1),
(8, 'Kim', 'Ngan', '23 Nguyen Thien Thuat', '0859375833', 1),
(9, 'Thanh', 'Hằng', 'ư43bfe', '0993849233', 1),
(10, 'Kim', 'Ngan', '23 Nguyen Thien Thuat', '0859375833', 1),
(11, 'Bảo', 'Hân', 'nkbbasw', '0999999999', 1),
(12, 'Bảo', 'Hân', 'nkbbasw', '0999999999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmaitheosanpham`
--

CREATE TABLE `khuyenmaitheosanpham` (
  `Ma` varchar(15) NOT NULL,
  `MaChuongTrinh` int(11) NOT NULL,
  `MaSach` int(11) NOT NULL,
  `PhanTramKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khuyenmaitheosanpham`
--

INSERT INTO `khuyenmaitheosanpham` (`Ma`, `MaChuongTrinh`, `MaSach`, `PhanTramKM`) VALUES
('123', 123, 1, 10),
('1234', 123, 5, 100),
('12345', 123, 3, -2),
('GGS001', 0, 6, 30),
('GGS002', 0, 17, 30),
('GGS003', 0, 13, 30),
('GGS004', 0, 4, 30),
('GGS005', 2, 15, 15),
('GGS006', 2, 18, 15),
('GGS007', 7, 5, 10),
('GGS008', 7, 9, 10),
('GGS009', 7, 1, 10),
('GGS010', 7, 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmaitheotongtien`
--

CREATE TABLE `khuyenmaitheotongtien` (
  `Ma` varchar(15) NOT NULL,
  `MaChuongTrinh` int(11) NOT NULL,
  `DieuKienApDung` int(11) NOT NULL,
  `PhanTramKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `khuyenmaitheotongtien`
--

INSERT INTO `khuyenmaitheotongtien` (`Ma`, `MaChuongTrinh`, `DieuKienApDung`, `PhanTramKM`) VALUES
('GGHD001', 1, 500000, 10),
('GGHD002', 1, 1000000, 15),
('GGHD003', 1, 399000, 15),
('GGHD004', 6, 900000, 20),
('GGHD005', 5, 750000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `Ma` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`Ma`, `Ten`) VALUES
(2, 'Công Ty Cổ Phần Phát Hành Sách Tp. HCM'),
(3, 'Trí Tuệ - Công Ty Cổ Phần Sách & Thiết Bị Giáo Dục Trí Tuệ'),
(4, 'Công Ty TNHH Văn Hóa Việt Long'),
(5, 'Công Ty TNHH Đăng Nguyên'),
(6, 'Công Ty Cổ Phần Sách Mcbooks'),
(7, 'Nhà Sách Trực Tuyến BOOKBUY.VN'),
(8, 'Quỳnh Phát - Công Ty TNHH Thương Mại Dịch Vụ Quỳnh Phát'),
(9, 'Nhà Sách Bích Quân'),
(10, 'Nhà Sách Trực Tuyến Atlazbooks'),
(11, 'Nhà Sách Ngoại Văn BOA(Books Of Awesome)');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `Ma` int(11) NOT NULL,
  `Ho` varchar(50) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `GioiTinh` varchar(100) NOT NULL,
  `ChucVu` varchar(100) NOT NULL,
  `SoDienThoai` varchar(100) NOT NULL,
  `MucLuong` int(11) NOT NULL,
  `TinhTrang` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`Ma`, `Ho`, `Ten`, `DiaChi`, `GioiTinh`, `ChucVu`, `SoDienThoai`, `MucLuong`, `TinhTrang`) VALUES
(1, 'Phan', 'Hồng', 'Hồ Chí Minh', 'Nữ', 'Quản lý', '0236987456', 1, 1),
(2, 'Trần', 'Hân', '272 An Dương Vương', 'Nữ', 'Nhân viên bán', '097313272', 200000, 1),
(3, 'Lê', 'Anh', '28 Nguyen Thong', 'Nam', 'Nhân viên bán', '0954743333', 3000000, 1),
(4, 'Viet', 'Anh', '', 'Nam', 'Nhân viên nhập hàng', '0979348323', 3000000, 1),
(5, 'Thu', 'ABC', '123', 'Nữ', 'Quản lý', '0283490293', 3200000, 1),
(6, 'cảnh', 'ngh', 'abc', 'Nam', 'Quản lý', '0987654321', 0, 1),
(7, 'cảnh', 'ngh', 'abc', 'Nam', 'Quản lý', '0987654321', 123, 1),
(8, 'aaa ấ', 'Cảnh', 'abc', 'Nữ', 'Quản lý', '0987654321', 0, 1),
(9, 'ấ', 'ngh', 'abc', 'Nam', 'Quản lý', '0987654321', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `Ma` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`Ma`, `Ten`) VALUES
(1, 'Kim Đồng'),
(2, 'Lao Động'),
(3, 'Hội Nhà văn'),
(4, 'Chính trị quốc gia Sự thật'),
(5, 'Thanh Niên'),
(6, 'Nhã Nam'),
(7, 'Tổng hợp TP.Hồ Chí Minh'),
(8, 'Hồng Đức'),
(9, 'Nhiều NXB'),
(10, 'Quân Đội Nhân Dân'),
(11, 'Dân trí');

-- --------------------------------------------------------

--
-- Table structure for table `phanloai`
--

CREATE TABLE `phanloai` (
  `Ma` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phanloai`
--

INSERT INTO `phanloai` (`Ma`, `Ten`) VALUES
(1, 'Tiểu thuyết'),
(2, 'Văn học'),
(3, 'Lịch sử'),
(4, 'Trinh thám - Hình sự'),
(5, 'Sách tự lực'),
(6, 'Tâm lý - Tình cảm'),
(7, 'Ngoại ngữ'),
(8, 'Học thuật'),
(9, 'Khác');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `Ma` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayTao` date NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`Ma`, `MaNCC`, `MaNV`, `NgayTao`, `TongTien`) VALUES
(1, 2, 1, '2024-05-23', 250000),
(2, 10, 4, '2024-05-24', 8950000),
(3, 6, 5, '2024-05-24', 2350000),
(4, 3, 4, '2024-05-24', 2400000),
(5, 3, 4, '2024-05-24', 2040000),
(6, 5, 4, '2024-05-24', 1800000),
(7, 2, 5, '2024-05-24', 860000),
(8, 3, 4, '2024-05-24', 950000),
(9, 5, 5, '2024-05-24', 1348200),
(10, 4, 5, '2024-09-11', 110000);

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `Ma` int(11) NOT NULL,
  `NgayTao` date NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `TongTienPhaiTra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`Ma`, `NgayTao`, `MaNV`, `MaKH`, `TongTien`, `TongTienPhaiTra`) VALUES
(11, '2024-05-22', 2, 8, 282000, 216600),
(12, '2024-05-08', 3, 3, 608000, 547200),
(13, '2024-05-20', 2, 1, 221000, 221000),
(14, '2024-05-20', 2, 7, 200000, 200000),
(15, '2024-05-23', 1, 8, 112000, 112000),
(16, '2024-05-23', 1, 8, 168000, 168000),
(17, '2024-05-23', 1, 8, 167000, 167000),
(18, '2024-05-23', 2, 6, 120000, 120000),
(19, '2024-05-23', 2, 6, 120000, 120000),
(20, '2024-05-23', 1, 8, 127000, 127000),
(21, '2024-05-23', 3, 3, 420000, 348000),
(22, '2024-05-23', 1, 8, 540000, 540000),
(23, '2024-05-23', 1, 9, 1335000, 1302300),
(43, '2024-09-14', 4, 9, 205000, 205000),
(44, '2024-09-14', 1, 12, 100000, 0),
(45, '2024-09-14', 1, 12, 100000, 0),
(46, '2024-09-14', 1, 8, 356000, 356000),
(47, '2024-09-14', 1, 12, 392000, 392000),
(48, '2024-09-14', 1, 12, 78000, 78000),
(49, '2024-09-14', 5, 6, 752000, 752000),
(50, '2024-09-14', 1, 12, 120000, 120000),
(51, '2024-09-14', 1, 12, 120000, 120000),
(52, '2024-09-14', 1, 12, 37000, 37000),
(53, '2024-09-14', 4, 7, 240000, 240000),
(54, '2024-09-14', 1, 12, 572000, 564000);

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `Ma` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `TacGia` varchar(100) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `MaNXB` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `HinhAnh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`Ma`, `Ten`, `TacGia`, `MaLoai`, `MaNXB`, `SoLuong`, `DonGia`, `HinhAnh`) VALUES
(1, 'Nhà giả kim', 'Paulo Coelho', 1, 9, 0, 80000, 'meomeo.jpg'),
(2, 'Quyền lực hướng thiện', 'Trương Quốc Ký', 1, 5, 0, 230000, 'Sach2.png'),
(3, 'Giải mã thuật tiên tri', 'Elsie Wild', 9, 8, 0, 76000, 'Sach3.png'),
(4, 'Giữa bóng tối và ánh sáng', 'Joan Chittister', 1, 8, 0, 64000, 'Sach4.png'),
(5, 'Đường Xa Nắng Mới', 'Nguyễn Tường Bách', 2, 3, 0, 180000, 'Sach5.png'),
(6, 'Cơm Bắc Giặc Nam', 'Phùng Phương Quý', 2, 10, 0, 120000, 'Sach6.png'),
(7, 'Bình Minh Phía Trước', 'Nguyễn Trọng Luân', 2, 10, 0, 120000, 'Sach7.png'),
(8, 'Linh Hồn Báo Thù', 'Joe Hill', 2, 5, 0, 167000, 'Sach8.png'),
(9, 'Nhân Gian Tiểu Mãn', 'Cô Tô A Tiêu', 2, 11, 0, 76000, 'Sach9.png'),
(10, 'Phan Huy Lê Di Cảo - Nhận Thức Lịch Sử Việt Nam', 'Phan Huy Lê', 3, 11, 0, 392000, 'Sach10.png'),
(11, 'Điện Biên Phủ - Những Trang Vàng Lịch Sử', 'Hoàng Minh Phương', 3, 5, 0, 108000, 'Sach11.png'),
(12, 'Miền Bắc - Một Thời Chiến Tranh, Một Thời Hòa Bình', 'Folke Isaksson', 3, 5, 0, 228000, 'Sach12.png'),
(13, 'Sự im lặng của bầy cừu', 'Thomas Harris', 4, 9, 0, 109000, 'Sach13.png'),
(14, 'Án mạng trên sông Nile', 'Agatha Christie', 4, 9, 0, 125000, 'Sach14.png'),
(15, 'Hỏa ngục', 'Dan Brown', 4, 9, 0, 153000, 'Sach15.png'),
(16, 'Tâm Lý Học Tội Phạm', 'Stanton E.Samenow', 4, 9, 0, 94000, 'Sach16.png'),
(17, 'Thái Nhân Cách Phía Sau Tội Ác', 'James Fallon', 4, 9, 0, 132000, 'Sach17.png'),
(18, 'Tư duy nhanh và chậm', 'Daniel Kahneman', 5, 9, 0, 201000, 'Sach18.png'),
(19, 'Mình là cá, việc của mình là bơi', 'Takeshi Furukawa', 5, 3, 0, 90000, 'Sach19.png'),
(20, 'Một Đời Quản Trị', 'Phan Văn Trường', 4, 8, 0, 80000, 'Sach30.png');

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `Ma` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`Ma`, `Ten`) VALUES
(1, 'Nguyễn Nhật Ánh'),
(2, 'Lê Linh'),
(3, 'Jack London'),
(4, 'Joan Chittister'),
(5, 'Trương Quốc Ký'),
(6, 'Tô Hoài'),
(7, 'Elsie Wild'),
(8, 'Shakti Gawain\r\n'),
(9, 'José Mauro de Vasconcelos'),
(10, 'Antoine de Saint-Exupéry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`Ma`),
  ADD KEY `fk_ibfk_4` (`MaSach`),
  ADD KEY `fk_ibfk_3` (`MaPhieuNhap`);

--
-- Indexes for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`Ma`),
  ADD KEY `MaSach` (`MaSach`),
  ADD KEY `chitietphieuxuat_ibfk_1` (`MaPhieuXuat`);

--
-- Indexes for table `chuongtrinhkhuyenmai`
--
ALTER TABLE `chuongtrinhkhuyenmai`
  ADD PRIMARY KEY (`Ma`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Ma`);

--
-- Indexes for table `khuyenmaitheosanpham`
--
ALTER TABLE `khuyenmaitheosanpham`
  ADD PRIMARY KEY (`Ma`),
  ADD UNIQUE KEY `Ma` (`Ma`),
  ADD KEY `MaChuongTrinh` (`MaChuongTrinh`);

--
-- Indexes for table `khuyenmaitheotongtien`
--
ALTER TABLE `khuyenmaitheotongtien`
  ADD PRIMARY KEY (`Ma`),
  ADD UNIQUE KEY `Ma` (`Ma`),
  ADD KEY `MaChuongTrinh` (`MaChuongTrinh`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`Ma`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Ma`);

--
-- Indexes for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`Ma`);

--
-- Indexes for table `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`Ma`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`Ma`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`Ma`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`Ma`),
  ADD KEY `MaNXB` (`MaNXB`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`Ma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phanloai`
--
ALTER TABLE `phanloai`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `Ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `fk_ibfk_3` FOREIGN KEY (`MaPhieuNhap`) REFERENCES `phieunhap` (`Ma`),
  ADD CONSTRAINT `fk_ibfk_4` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`Ma`);

--
-- Constraints for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `fk_ibfk_1` FOREIGN KEY (`MaPhieuXuat`) REFERENCES `phieuxuat` (`Ma`),
  ADD CONSTRAINT `fk_ibfk_2` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`Ma`);

--
-- Constraints for table `khuyenmaitheosanpham`
--
ALTER TABLE `khuyenmaitheosanpham`
  ADD CONSTRAINT `khuyenmaitheosanpham_ibfk_1` FOREIGN KEY (`MaChuongTrinh`) REFERENCES `chuongtrinhkhuyenmai` (`Ma`);

--
-- Constraints for table `khuyenmaitheotongtien`
--
ALTER TABLE `khuyenmaitheotongtien`
  ADD CONSTRAINT `fk_ibfk_8` FOREIGN KEY (`MaChuongTrinh`) REFERENCES `chuongtrinhkhuyenmai` (`Ma`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_ibfk_11` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`Ma`),
  ADD CONSTRAINT `fk_ibfk_12` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`Ma`);

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `fk_ibfk_10` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`Ma`),
  ADD CONSTRAINT `fk_ibfk_9` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`Ma`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `fk_ibfk_7` FOREIGN KEY (`MaLoai`) REFERENCES `phanloai` (`Ma`);
--
-- Database: `sieuthimini`
--
CREATE DATABASE IF NOT EXISTS `sieuthimini` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sieuthimini`;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `masp` int(11) NOT NULL,
  `makhuvuc` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gianhap` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ctphieuxuat`
--

CREATE TABLE `ctphieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `masp` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmucchucnang`
--

CREATE TABLE `danhmucchucnang` (
  `machucnang` int(10) NOT NULL,
  `tenchucnang` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `magiamgia` int(11) NOT NULL,
  `tenctgiamgia` varchar(50) NOT NULL,
  `mocgiamgia` int(11) NOT NULL,
  `sotienduocgiam` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`magiamgia`, `tenctgiamgia`, `mocgiamgia`, `sotienduocgiam`, `trangthai`) VALUES
(1, 'Mừng đại lễ 2/9', 200000, 20000, 1),
(2, 'Hành trình 10 năm', 150000, 9300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `ngaythamgia` date NOT NULL DEFAULT current_timestamp(),
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tenkhachhang`, `diachi`, `gioitinh`, `sdt`, `ngaythamgia`, `trangthai`) VALUES
(1, 'Huỳnh Minh Đại', 'Quận 1', 'Nam', '0368387671', '2024-09-11', 1),
(2, 'Đỗ Thị Trâm Anh', 'Tiền Giang', 'Nữ', '0365387631', '2024-09-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `khuvuckho`
--

CREATE TABLE `khuvuckho` (
  `makhuvuc` int(11) NOT NULL,
  `tenkhuvuc` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `khuvuckho`
--

INSERT INTO `khuvuckho` (`makhuvuc`, `tenkhuvuc`, `ghichu`, `trangthai`) VALUES
(1, 'Kho Bình Dương', 'rau, củ, quả', 1),
(2, 'Kho HCM Express', 'bánh kẹo', 1),
(3, 'Kho Bình Trị Đông', 'đồ ăn', 1),
(4, 'Kho Hoàng Hà', 'đồ dùng học tập', 1),
(5, 'Kho Đồng Tháp Ultra', 'nước ngọt', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(255) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`, `trangthai`) VALUES
(1, 'Đồ ăn', 1),
(2, 'Nước uống', 1),
(3, 'Rau củ quả', 1),
(4, 'Đồ dùng cá nhân', 1),
(5, 'Dụng cụ học tập', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` int(11) NOT NULL,
  `tenncc` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `tenncc`, `diachi`, `email`, `sdt`, `trangthai`) VALUES
(1, 'Công Ty TNHH rau củ quả Thái An', ' Phòng 6.5, Tầng6, Tòa Nhà E. Town 2, 364 Cộng Hòa, P. 13, Q. Tân Bình, Tp. Hồ Chí Minh', 'lienhe@thegioididong.com', '02835100100', 1),
(2, 'Công ty bánh kẹo Việt Nam', 'Số 79 đường số 6, Hưng Phước 4, Phú Mỹ Hưng, quận 7, TPHCM', 'contact@paviet.vn', '19009477', 1),
(3, 'Công Ty TNHH đồ ăn nhanh', '8/38 Đinh Bô Lĩnh, P.24, Q. Bình Thạnh, Tp. Hồ Chí Minh', 'contact@baola.vn', '02835119060', 1),
(4, 'Công Ty THHHMTV An Nam ', 'Phòng 703, Tầng7, Tòa Nhà Metropolitan, 235 Đồng Khởi, P. Bến Nghé, Q. 1, Tp. Hồ Chí Minh (TPHCM)', 'chau.nguyen@nokia.com', '02838236894', 1),
(5, 'Hệ Thống Phân Phối nước ngọt', '261 Lê Lợi, P. Lê Lợi, Q. Ngô Quyền, Tp. Hải Phòng', 'info@mihome.vn', '0365888866', 1),
(6, 'Atech Group', 'Tòa nhà tài chính Bitexco, 2 Hải Triều, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh', 'contact@samsung.vn', '0988788456', 1),
(7, 'Công ty Suzuki Việt Nam', '27 Đ. Nguyễn Trung Trực, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', 'oppovietnam@oppo.vn', '0456345234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` varchar(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `email`, `trangthai`) VALUES
(1, 'admin', 'Nam', '2004-01-21', '0387913347', 'admin@gmail.com', 1),
(2, 'Nguyễn Bảo', 'Nam', '2004-10-22', '0355374321', 'bao@gmail.com', 1),
(3, 'Nguyễn Tấn Cảnh', 'Nam', '2000-01-11', '0989338281', 'canh@gmail.com', 1),
(4, 'Nguyễn Trung Trực', 'Nam', '2003-04-03', '0367890283', 'trungtruc@gmail.com', 1),
(5, 'Nguyễn Quang Dương', 'Nam', '2004-05-06', '0378119329', 'quangduong@gmail.com', 1),
(6, 'Huỳnh Lê Phúc', 'Nam', '2004-01-09', '0369308081', 'phucle@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhomquyen`
--

CREATE TABLE `nhomquyen` (
  `manhomquyen` int(11) NOT NULL,
  `tennhomquyen` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhomquyen`
--

INSERT INTO `nhomquyen` (`manhomquyen`, `tennhomquyen`, `trangthai`) VALUES
(1, 'admin', 1),
(2, 'Nhân viên nhập hàng', 1),
(3, 'Nhân viên xuất hàng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `mancc` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `thoigian` datetime DEFAULT current_timestamp(),
  `tongtien` decimal(10,2) NOT NULL DEFAULT 0.00,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` decimal(10,2) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `magiamgia` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `maloai` int(11) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `xuatxu` int(11) DEFAULT NULL,
  `NSX` date NOT NULL,
  `HSD` date NOT NULL,
  `thuonghieu` int(11) DEFAULT NULL,
  `gianhap` decimal(10,2) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `trangthai` tinyint(1) DEFAULT 1,
  `giaban` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `maloai`, `tensp`, `hinhanh`, `xuatxu`, `NSX`, `HSD`, `thuonghieu`, `gianhap`, `soluongton`, `trangthai`, `giaban`) VALUES
(1, 2, 'pepsi', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-12-11', 1, 10000.00, 0, 1, 0.00),
(2, 1, 'bánh kem', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-12-11', 1, 400000.00, 0, 1, 0.00),
(3, 1, 'bánh quy', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-11-11', 1, 50000.00, 0, 1, 0.00),
(4, 3, 'cà rốt', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 6000.00, 0, 1, 0.00),
(5, 3, 'khoai tây', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 10000.00, 0, 1, 0.00),
(6, 1, 'rau muống', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 7000.00, 0, 1, 0.00),
(7, 1, 'coca', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 10000.00, 0, 1, 0.00),
(8, 1, 'bút xóa', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-04-11', 1, 15000.00, 0, 1, 0.00),
(9, 1, 'thước kẻ', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2024-09-11', '2025-10-11', 1, 123.00, 0, 1, 0.00),
(10, 2, 'bánh mì', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2024-09-12', '2025-09-12', 1, 10000.00, 0, 1, 0.00),
(11, 2, 'nước suối', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-06-11', '2024-06-11', 1, 5000.00, 0, 1, 0.00),
(12, 1, 'sữa chua', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-05-11', '2024-05-11', 1, 12000.00, 0, 1, 0.00),
(13, 2, 'kẹo dừa', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-07-01', '2024-11-01', 1, 45000.00, 0, 1, 0.00),
(14, 3, 'hành tây', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-08-11', '2024-10-11', 1, 7000.00, 0, 1, 0.00),
(15, 3, 'cà chua', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-09-01', '2024-09-01', 1, 9000.00, 0, 1, 0.00),
(16, 2, 'trái cây sấy', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-03-11', '2024-03-11', 1, 60000.00, 0, 1, 0.00),
(17, 1, 'bánh kẹo', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-02-11', '2024-02-11', 1, 30000.00, 0, 1, 0.00),
(18, 2, 'kẹo bạc hà', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-04-11', '2024-12-11', 1, 15000.00, 0, 1, 0.00),
(19, 1, 'kem đánh răng', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-05-11', '2024-05-11', 1, 20000.00, 0, 1, 0.00),
(20, 1, 'dầu gội', 'src/GUI/imageSanPham/comingsoon.jpg', 1, '2023-06-11', '2024-12-11', 1, 45000.00, 0, 1, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `mataikhoan` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `matkhau` char(255) NOT NULL,
  `manhomquyen` int(11) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL DEFAULT '',
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`mataikhoan`, `manv`, `matkhau`, `manhomquyen`, `tendangnhap`, `trangthai`) VALUES
(1, 1, 'admin', 1, 'admin', 1),
(2, 3, '12345a@', 2, 'tancanh1', 1),
(3, 2, '12345a@', 3, 'xuanbao1', 1),
(4, 4, '12345a@', 2, 'truc1', 0),
(5, 5, '12345a@', 3, 'duong1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `mathuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`mathuonghieu`, `tenthuonghieu`, `trangthai`) VALUES
(1, 'Acecook Viet Nam', 1),
(2, 'Thiên Long', 1),
(3, 'Thái Dương đồ dùng học tập', 1),
(4, 'Nerman Vietnam', 0),
(7, 'Noctural Studio', 0),
(8, 'Sly onstream', 0),
(9, 'Mỹ hảo', 1),
(10, 'Ava đồ dùng công nghệ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xuatxu`
--

CREATE TABLE `xuatxu` (
  `maxuatxu` int(11) NOT NULL,
  `tenxuatxu` varchar(50) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `xuatxu`
--

INSERT INTO `xuatxu` (`maxuatxu`, `tenxuatxu`, `trangthai`) VALUES
(1, 'Trung Quốc', 1),
(2, 'Hàn Quốc', 1),
(3, 'Việt Nam', 1),
(4, 'USA', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD KEY `fk_ctphieunhap_maphieunhap` (`maphieunhap`),
  ADD KEY `fk_phieunhap_makhuvuc` (`makhuvuc`),
  ADD KEY `fk_ctphieunhap_masp` (`masp`);

--
-- Indexes for table `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD KEY `fk_ctphieuxuat_masp` (`masp`),
  ADD KEY `fk_ctphieuxuat_maphieuxuat` (`maphieuxuat`);

--
-- Indexes for table `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  ADD PRIMARY KEY (`machucnang`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`magiamgia`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Indexes for table `khuvuckho`
--
ALTER TABLE `khuvuckho`
  ADD PRIMARY KEY (`makhuvuc`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Indexes for table `nhomquyen`
--
ALTER TABLE `nhomquyen`
  ADD PRIMARY KEY (`manhomquyen`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `fk_phieunhap_mancc` (`mancc`),
  ADD KEY `fk_phieunhap_manv` (`manv`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `fk_phieuxuat_manv` (`manv`),
  ADD KEY `fk_phieuxuat_makh` (`makh`),
  ADD KEY `fk_phieuxuat_magiamgia` (`magiamgia`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`),
  ADD KEY `fk_sanpham_loaisanpham` (`maloai`),
  ADD KEY `fk_sanpham_thuonghieu` (`thuonghieu`),
  ADD KEY `fk_sanpham_xuatxu` (`xuatxu`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`mataikhoan`),
  ADD KEY `fk_taikhoan_manhomquyen` (`manhomquyen`),
  ADD KEY `fk_taikhoan_manv` (`manv`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`mathuonghieu`);

--
-- Indexes for table `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`maxuatxu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  MODIFY `machucnang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `magiamgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khuvuckho`
--
ALTER TABLE `khuvuckho`
  MODIFY `makhuvuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nhomquyen`
--
ALTER TABLE `nhomquyen`
  MODIFY `manhomquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `mataikhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `mathuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `maxuatxu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `fk_ctphieunhap_maphieunhap` FOREIGN KEY (`maphieunhap`) REFERENCES `phieunhap` (`maphieunhap`),
  ADD CONSTRAINT `fk_ctphieunhap_masp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`),
  ADD CONSTRAINT `fk_phieunhap_makhuvuc` FOREIGN KEY (`makhuvuc`) REFERENCES `khuvuckho` (`makhuvuc`);

--
-- Constraints for table `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD CONSTRAINT `fk_ctphieuxuat_maphieuxuat` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuat` (`maphieuxuat`),
  ADD CONSTRAINT `fk_ctphieuxuat_masp` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_phieunhap_mancc` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`),
  ADD CONSTRAINT `fk_phieunhap_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `fk_phieuxuat_magiamgia` FOREIGN KEY (`magiamgia`) REFERENCES `giamgia` (`magiamgia`),
  ADD CONSTRAINT `fk_phieuxuat_makh` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`),
  ADD CONSTRAINT `fk_phieuxuat_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_sanpham_loaisanpham` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`maloai`),
  ADD CONSTRAINT `fk_sanpham_thuonghieu` FOREIGN KEY (`thuonghieu`) REFERENCES `thuonghieu` (`mathuonghieu`),
  ADD CONSTRAINT `fk_sanpham_xuatxu` FOREIGN KEY (`xuatxu`) REFERENCES `xuatxu` (`maxuatxu`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_taikhoan_manhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`),
  ADD CONSTRAINT `fk_taikhoan_manv` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
