-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2021 at 02:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Table structure for table `chitietdathang`
--
CREATE DATABASE `testquanlydathang`;
USE `testquanlydathang`;

CREATE TABLE `chitietdathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSHH` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GiaDatHang` int(11) NOT NULL,
  `GiamGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoDonDH`, `MSHH`, `SoLuong`, `GiaDatHang`, `GiamGia`) VALUES
(1, 1, 2, 400000, 0),
(1, 2, 1, 3000000, 0),
(1, 3, 1, 6000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `SoDonDH` int(11) NOT NULL,
  `MSKH` int(11) NOT NULL,
  `MSNV` int(11) NOT NULL,
  `NgayDH` date DEFAULT NULL,
  `NgayGH` date DEFAULT NULL,
  `TrangThaiDH` tinyint(4) NOT NULL
) ;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`SoDonDH`, `MSKH`, `MSNV`, `NgayDH`, `NgayGH`, `TrangThaiDH`) VALUES
(1, 1, 2, '2021-10-09', '2021-10-12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `diachikh`
--

CREATE TABLE `diachikh` (
  `MaDC` int(11) NOT NULL,
  `DiaChi` varchar(250) NOT NULL,
  `MSKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diachikh`
--

INSERT INTO `diachikh` (`MaDC`, `DiaChi`, `MSKH`) VALUES
(1, 'so 5 Li Tu Trong', 1),
(2, 'so 12 Tran Phu', 1),
(3, 'so 173 Duong 30/4', 2),
(4, 'Hem 12 Le Binh', 2),
(5, 'Hem 278 Tam Vu', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MSHH` int(11) NOT NULL,
  `TenHH` varchar(200) NOT NULL,
  `QuyCach` varchar(1000) NOT NULL,
  `Gia` float NOT NULL,
  `SoLuongHang` int(11) NOT NULL,
  `MaLoaiHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE account_user (
	username VARCHAR(50) not null,
	password VARCHAR(50) not null,
	MSKH int(11) not null
);

CREATE TABLE account_admin (
	username VARCHAR(50) not null,
	password VARCHAR(50) not null,
	MSNV int(11) not null
	
);

INSERT INTO `account_admin` (`username`, `password`, `MSNV`) VALUES ('admin','123',1), ('nv2','123',2), ('nv3','123', 3);
INSERT INTO `account_user` (`username`, `password`, `MSKH`) VALUES ('kh1','123',1), ('kh2','123',2), ('kh3','123', 3);


--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MSHH`, `TenHH`, `QuyCach`, `Gia`, `SoLuongHang`, `MaLoaiHang`) VALUES
(1, 'Camera ?????nh cao, si??u t???o n??t', 'Cai', 200000, 20, 2),
(2, 'Head Phone Th???i trang',
	'Tai nghe chuy??n game th??? Plextone PC780 - ????n LED - C?? Mic - Headphone gaming

	L??U ??: S???n ph???m c?? 3 d??y c???m g???m d??y micro ??? d??y ??m thanh ??? v?? c???ng USB ????n led ho???t ?????ng, n??n n???u c???m v??o ??i???n tho???i hay m??y ch??i game kh??ng c???m c???ng USB th?? ????n led s??? kh??ng s??ng, v?? m???t ch???c n??ng s??? kh??ng ho???t ?????ng ???????c!
	M?? T??? S???N PH???M
	1. S??? d???ng da Earmuffs  cao c???p, k???t c???u chuy??n nghi???p , da filler l?? m???t mi???ng b???t bi???n m???m, ????? ?????m b???o c??ch ??m v?? tho???i m??i c??? hai
	2. ??m thanh v??m stereo 2.3D, tr?????ng ??m thanh m???, ?????nh v??? ch??nh x??c
	3. Microphone s??? d???ng c??ng ngh??? m???i, ????? gi???m thi???u ti???ng ???n, ????? ?????m b???o ch???t l?????ng ??m thanh r?? r??ng, h??? tr??? xoay 130 ?????.
	4. Composite ????i,  ???????ng k??nh l???n rubidium s???t boron cho ????? trung th???c cao
	5.	Tai nghe ch???p tai PLEXTONE PC780 cao c???p
	6.	Ki???u d??ng game thu h??t
	7.	M??c li???n tai c???ng c??p, ch???ng ?????t g??y
	8.	M??t ??m tr???n tai, kh??ng g??y ??au r??t khi s??? d???ng
	9.	Chu???n c???m: 3.5mm
	10.	V??ng loa: 40 mm
	11.	????? nh???y: 105dB S.P.L at 1Khz
	12.	Tr??? kh??ng: 32?????T???n s???: 20Hz ??? 20kHz
	13.	????? d??i d??y: 2.1m',
3000000, 15, 2),
(3, 'MacBook ?????nh cao c??ng ngh???', 'Cai', 6000, 50, 2),
(4, 'Iphone 12 xanh ?????m ch???t th???i th?????ng', 'Cai', 6000, 5, 2),
(5, 'Ipod ??m thanh ch???t l?????ng, ch???ng ???n ??o', 'Cai', 6000, 12, 2),
(6, 'Iwatch t??ch h???p c??ng ngh??? nghe g???i v?? l?????t web', 'Cai', 6000, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hinhhanghoa`
--

CREATE TABLE `hinhhanghoa` (
  `MaHinh` int(11) NOT NULL,
  `TenHinh` varchar(200) NOT NULL,
  `MSHH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhhanghoa`
--

INSERT INTO `hinhhanghoa` (`MaHinh`, `TenHinh`, `MSHH`) VALUES
(1, 'assets/img/product/camera.jpg', 1),
(2, 'assets/img/product/iheadPhone.png', 2),
(3, 'assets/img/product/imacbook.png', 3),
(4, 'assets/img/product/iphone-12.png', 4),
(5, 'assets/img/product/ipod.png', 5),
(6, 'assets/img/product/iwatch.png', 6);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MSKH` int(11) NOT NULL,
  `HoTenKH` varchar(50) NOT NULL,
  `TenCongTy` varchar(200) NOT NULL,
  `SoDienThoai` varchar(12) NOT NULL,
  `SoFax` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MSKH`, `HoTenKH`, `TenCongTy`, `SoDienThoai`, `SoFax`) VALUES
(1, 'Tao Tung Thieu', 'Mobifo', '84931234541', '84931234541'),
(2, 'Van Ong Trong', 'PepSy', '84931234500', '84931234500'),
(3, 'Tr????ng V?? K???', 'Vitaco', '84931234501', '84931234501');

-- --------------------------------------------------------

--
-- Table structure for table `loaihanghoa`
--

CREATE TABLE `loaihanghoa` (
  `MaLoaiHang` int(11) NOT NULL,
  `TenLoaiHang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaihanghoa`
--

INSERT INTO `loaihanghoa` (`MaLoaiHang`, `TenLoaiHang`) VALUES
(1, 'Trang ph???c'),
(2, 'Thi???t b??? ??i???n t???'),
(3, 'Thi???t b??? ??i???n t???'),
(4, 'Kh??c');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MSNV` int(11) NOT NULL,
  `HoTenNV` varchar(50) NOT NULL,
  `ChucVu` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `SoDienThoai` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MSNV`, `HoTenNV`, `ChucVu`, `DiaChi`, `SoDienThoai`) VALUES
(1, 'admin', 'admin', '', ''),
(2, 'Nguyen Nhan Vien', 'Nhan Vien', 'Cai Rang', '012345214'),
(3, 'Tran Lam Thue', 'Nhan Vien Kiem Hang', 'O Min', '0787450184');

--
-- Indexes for dumped tables
--



--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`SoDonDH`,`MSHH`),
  ADD KEY `MSHH` (`MSHH`);

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`SoDonDH`),
  ADD KEY `MSKH` (`MSKH`),
  ADD KEY `MSNV` (`MSNV`);

--
-- Indexes for table `diachikh`
--
ALTER TABLE `diachikh`
  ADD PRIMARY KEY (`MaDC`),
  ADD KEY `MSKH` (`MSKH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MSHH`),
  ADD KEY `MaLoaiHang` (`MaLoaiHang`);

--
-- Indexes for table `hinhhanghoa`
--
ALTER TABLE `hinhhanghoa`
  ADD PRIMARY KEY (`MaHinh`),
  ADD KEY `MSHH` (`MSHH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MSKH`);

--
-- Indexes for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  ADD PRIMARY KEY (`MaLoaiHang`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MSNV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `SoDonDH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diachikh`
--
ALTER TABLE `diachikh`
  MODIFY `MaDC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `MSHH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hinhhanghoa`
--
ALTER TABLE `hinhhanghoa`
  MODIFY `MaHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MSKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loaihanghoa`
--
ALTER TABLE `loaihanghoa`
  MODIFY `MaLoaiHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MSNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `chitietdathang_ibfk_1` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`),
  ADD CONSTRAINT `chitietdathang_ibfk_2` FOREIGN KEY (`SoDonDH`) REFERENCES `dathang` (`SoDonDH`);

--
-- Constraints for table `dathang`
--
ALTER TABLE `dathang`
  ADD CONSTRAINT `dathang_ibfk_1` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`),
  ADD CONSTRAINT `dathang_ibfk_2` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`);

--
-- Constraints for table `diachikh`
--
ALTER TABLE `diachikh`
  ADD CONSTRAINT `diachikh_ibfk_1` FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `hanghoa_ibfk_1` FOREIGN KEY (`MaLoaiHang`) REFERENCES `loaihanghoa` (`MaLoaiHang`);
  
  
  
ALTER TABLE `account_user`
  ADD PRIMARY KEY (`username`);
  
ALTER TABLE `account_user`
  ADD FOREIGN KEY (`MSKH`) REFERENCES `khachhang` (`MSKH`);

  
ALTER TABLE `account_admin`
  ADD PRIMARY KEY (`username`);

ALTER TABLE `account_admin`
  ADD FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`);

--
-- Constraints for table `hinhhanghoa`
--
ALTER TABLE `hinhhanghoa`
  ADD CONSTRAINT `hinhhanghoa_ibfk_1` FOREIGN KEY (`MSHH`) REFERENCES `hanghoa` (`MSHH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
