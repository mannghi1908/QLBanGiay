-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2021 lúc 09:20 PM
-- Phiên bản máy phục vụ: 10.4.16-MariaDB
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_bangiay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `ten` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`email`, `matkhau`, `ten`) VALUES
('tuando077@gmail.com', '123', 'Đỗ Ngọc Anh Tuấn'),
('tuankhai4567@gmail.com', '123456', '85 Cộng Hòa, phường 16, Quận Tân Bình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_hoadon`
--

CREATE TABLE `chitiet_hoadon` (
  `idcthd` int(11) NOT NULL,
  `idhoadon` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `dongia` int(11) DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitiet_hoadon`
--

INSERT INTO `chitiet_hoadon` (`idcthd`, `idhoadon`, `soluong`, `dongia`, `tongtien`) VALUES
(1, 4, 1, 1980000, 1980000),
(2, 10, 2, 2000000, 4000000),
(3, 8, 1, 1850000, 1850000),
(4, 12, 2, 1750000, 3500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giay`
--

CREATE TABLE `giay` (
  `idgiay` int(11) NOT NULL,
  `ten` varchar(1000) NOT NULL,
  `Soluong` int(11) DEFAULT NULL,
  `idloai` int(11) DEFAULT NULL,
  `Gia` double DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `img` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giay`
--

INSERT INTO `giay` (`idgiay`, `ten`, `Soluong`, `idloai`, `Gia`, `size`, `img`) VALUES
(1, 'Giày Converse Chuck 70s', 2, 1, 1980000, 39, 'giayconverse70s.jpg'),
(2, 'Giày Adidas Superstar', 10, 2, 1850000, 40, 'adidassuperstar.jpg'),
(3, 'Giày Converse Classic', 5, 1, 1800000, 38, 'converseclassic.jpg'),
(4, 'Giày Balenciaga Triple S', 4, 8, 1000000, 43, 'balenciagatripleS.jpg'),
(5, 'Jordan 1 Retro High Bred Toe', 5, 3, 3500000, 41, 'jordan1.jpg'),
(6, 'Giày Balenciaga Triple S đỏ đen', 7, 8, 900000, 40, 'balenciagatripleSdoden.jpg'),
(7, 'Puma RS-X Toys', 15, 5, 2150000, 36, 'puma.jpg'),
(8, 'Vans Checkerbroad', 12, 6, 1650000, 39, 'vans.jpg'),
(9, 'Giày Nike Air Force 1 Low', 11, 3, 1950000, 39, 'af1.jpg'),
(10, 'Giày Nike x Fear Of God Moccasin', 8, 3, 2000000, 41, 'fog.jpg'),
(11, 'Giày Vans Thrasher', 4, 6, 1850000, 42, 'thrasher.jpg'),
(12, 'Giày Puma Bari Mule', 15, 5, 1750000, 38, 'barimule.jpg'),
(13, 'Jordan 1 Mid Triple White 1:1', 10, 3, 4900000, 38, 'nikeairJordan1MidTripleWhite.jpg'),
(14, 'McQueen White & Black', 5, 4, 13200000, 39, 'alexandermcqueenwhiteandblack.jpg'),
(15, 'Xvessel G.O.P Black White', 15, 7, 6000000, 40, 'xvesselblackwhite.jpg'),
(16, 'Balenciaga Speed Trainer', 7, 8, 890000, 41, 'balenciagaspeedtrainer.jpg'),
(17, 'Balenciaga Track 3.0 Trắng Cam', 8, 8, 1550000, 37, 'balenciagatrack.jpg'),
(18, 'Adidas Zx 2k Boost White Black', 8, 2, 1100000, 38, 'adidaszx2k.jpg'),
(19, 'NMD Human Race Solar Hu Vàng', 4, 2, 900000, 37, 'nmdhuman.jpg'),
(20, 'Alphabounce Beyond Trắng Replica 1:1', 5, 2, 950000, NULL, 'alphabouncebeyond.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `idhoadon` int(11) NOT NULL,
  `idgiay` int(11) NOT NULL,
  `dienthoai` varchar(10) NOT NULL,
  `thanhtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`idhoadon`, `idgiay`, `dienthoai`, `thanhtien`) VALUES
(4, 1, '0918543510', 1980000),
(5, 2, '0955113456', 1850000),
(8, 2, '0988624571', 1850000),
(10, 3, '0936132972', 1800000),
(11, 7, '0934066666', 2150000),
(12, 12, '0955113456', 1750000),
(14, 9, '0902450950', 1950000),
(16, 10, '0936132972', 2000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `dienthoai` varchar(10) NOT NULL,
  `Tenkh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`dienthoai`, `Tenkh`) VALUES
('0902450950', 'Quốc Anh'),
('0918543510', 'Anh Khôi'),
('0934066666', 'Tâm Anh'),
('0936132972', 'Anh Tuấn'),
('0955113456', 'Sơn Hiếu'),
('0988624571', 'Việt Hoàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `idloai` int(11) NOT NULL,
  `tenloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`idloai`, `tenloai`) VALUES
(1, 'Giày Converse'),
(2, 'Giày Adidas'),
(3, 'Giày Nike'),
(4, 'Alexander'),
(5, 'Giày Puma'),
(6, 'Giày Vans'),
(7, 'Xvessel'),
(8, 'Balenciaga');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `chitiet_hoadon`
--
ALTER TABLE `chitiet_hoadon`
  ADD PRIMARY KEY (`idcthd`),
  ADD KEY `idhoadon` (`idhoadon`);

--
-- Chỉ mục cho bảng `giay`
--
ALTER TABLE `giay`
  ADD PRIMARY KEY (`idgiay`),
  ADD KEY `idloai` (`idloai`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`idhoadon`),
  ADD KEY `idgiay` (`idgiay`),
  ADD KEY `dienthoai` (`dienthoai`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`dienthoai`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`idloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `giay`
--
ALTER TABLE `giay`
  MODIFY `idgiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `idhoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet_hoadon`
--
ALTER TABLE `chitiet_hoadon`
  ADD CONSTRAINT `chitiet_hoadon_ibfk_1` FOREIGN KEY (`idhoadon`) REFERENCES `hoadon` (`idhoadon`);

--
-- Các ràng buộc cho bảng `giay`
--
ALTER TABLE `giay`
  ADD CONSTRAINT `giay_ibfk_1` FOREIGN KEY (`idloai`) REFERENCES `loai` (`idloai`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idgiay`) REFERENCES `giay` (`idgiay`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`dienthoai`) REFERENCES `khachhang` (`dienthoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
