-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2022 lúc 09:42 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `giuaky`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(3, 'img/banners/baner 1.jpg'),
(4, 'img/banners/baner 2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(12, 69, 1, 590000),
(13, 69, 1, 590000),
(14, 69, 1, 590000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Giày đá banh'),
(2, 'Găng tay thủ môn'),
(3, 'Phụ Kiện Bóng Đá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(12, 15, '2022-12-19 23:16:41', 'Huy Huyhuy', '1234567890', 'Phú yên', '', 0, '0'),
(13, 15, '2022-12-19 23:16:48', 'Huy Huyhuy', '1234567890', 'Phú yên', '', 0, '0'),
(14, 15, '2022-12-19 23:17:05', 'Huy Huyhuy', '1234567890', 'Phú yên', '', 0, '0'),
(15, 15, '2022-12-19 23:17:53', 'Huy Huyhuy', '1234567890', 'Phú yên', '', 0, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(15, 'huyhuy', 'huyhoang', 50000, '2022-12-19 20:43:49', 1),
(16, 'ok', '12', 580000, '2022-12-19 20:44:34', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(47, 'Giày Đá Bóng Kamito', 'Untitled-1.png', 'Giày Kamito TA11 AS là mẫu giày sân cỏ nhân tạo được thương hiệu Kamito thiết kế với sự góp ý của chính Tuấn Anh. Như mọi mẫu giày \"Signature\" của các cầu thủ khác, Kamito TA11 mang những đặc trưng ri', 1),
(48, 'Giày Đá Bóng Mizuno', 'mi1.png', 'Giày đá bóng MIZUNO MONARCIDA NEO 2 SELECT AS là mẫu giày sân cỏ nhân tạo sử dụng chất liệu da cao cấp mềm mại và thiết kế ôm sát chân tạo cho bạn cảm giác cực kì thoải mái, êm ái khi trên sân.', 1),
(49, 'Giày Đá Bóng Akka', 'ak.png', 'Giày đá bóng Akka chính hãng, thương hiệu Việt chất lượng với mức giá tầm trung trong khoảng 400-500K.', 1),
(50, 'Găng tay Iwin Keepa PRO', 'ga1.png', 'Với iWin Keepa PRO, những cú sút mạnh không còn là lí do khiến bạn phải e ngại. Thiết kế đặc biệt giúp bảo vệ và hạn chế chấn thương tối đa cho các ngón tay, đây chính là t', 2),
(51, 'Găng Tay H3 Bengal', 'ga2.png', 'Găng tay thủ môn H3 Bengal chính hãng xuất xứ từ Thái Lan với thiết kế có lớp đệm mút mềm, găng tay giúp giảm lực tác động từ bóng lên bàn tay và các ngón tay của bạn, đóng vai trò rất quan trọng tron', 2),
(52, 'Găng tay Zocker Edwin', 'ga3.png', 'Găng tay thủ môn Zocker GLOVES EDWIN được thiết kế theo phong cách Hybirdôm vừa khít tay, duy trì sự linh hoạt cũng như cảm giác bóng.', 2),
(53, 'Tất bóng đá', 'tat.png', '', 3),
(54, 'Bóng Rổ', 'bongro.png', 'Bóng rổ chính hãng', 3),
(55, 'Bóng đá', 'bongda.png', 'Bóng đá chính hãng', 3),
(56, 'Túi đựng', 'tui.png', '', 3),
(57, 'Bó gối thể thao', 'bos.png', '', 3),
(58, 'Quần áo bóng đá', '', '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(15, 'Huy', 'Huyhuy', 'Nam', '1234567890', 'hoanghuyhuy90@gmail.com', 'Phú yên', 'huyhuy', '25f9e794323b453885f5181f1b624d0b', 2, 1),
(26, 'huy', 'hoang', 'Nam', '1234567890', 'hoang@gmail.com', 'py', 'huyhoang', '25f9e794323b453885f5181f1b624d0b', 3, 0),
(27, 'huy', 'hoang', '', '1234567890', 'h@gmail.com', '', 'hihi1234567', '25f9e794323b453885f5181f1b624d0b', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) DEFAULT NULL,
  `HDH` varchar(50) DEFAULT NULL,
  `CamSau` varchar(50) DEFAULT NULL,
  `CamTruoc` varchar(50) DEFAULT NULL,
  `CPU` varchar(50) DEFAULT NULL,
  `Ram` varchar(50) DEFAULT NULL,
  `Rom` varchar(50) DEFAULT NULL,
  `SDCard` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(66, 47, 1, 'Giày Kamito TA11', 1000000, 10, 'img/products/8.jpg', '', '', 15, 'Lưỡi gà rời, Da Microfiber Cao Cấp', '', '', '', 'Cao su tự nhiên, Đế Đinh AS', ' Bè ngang', 'Kỹ thuật, Cầm trịch', '', ' Sân cỏ nhân tạo', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Giày Kamito TA11 AS</span> là mẫu <em><span style=\"font-weight: bolder;\"><font color=\"#007bff\">giày sân cỏ nhân tạo</font></span></em> được thương hiệu Kamito thiết kế với sự góp ý của chính Tuấn Anh. Như mọi mẫu giày \"Signature\" của các cầu thủ khác, <em>Kamito TA11</em> mang những đặc trưng riêng biệt và đầy thú vị liên quan đến đội trưởng của CLB Hoàng Anh Gia Lai - Nguyễn Tuấn Anh.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Ký hiệu TA11 đặt theo tên và số áo của chàng cầu thủ này.</li><li>Chữ ký của Tuấn Anh cũng xuất hiện trên thân giày.</li><li>Các họa tiết mang đậm dấu ấn của Tuấn Anh, đặc biệt là các vân kim cương nổi tạo điểm nhấn trong tổng thể thiết kế. </li></ul>', '2022-12-19 23:09:35'),
(67, 47, 1, 'Giày Kamito TA11 Woncup', 15000000, 23, 'img/products/11.jpg', '', '', 15, 'Lưỡi gà rời, Công nghệ định hình gót', '', '', '', ' Cao su tổng hợp, Đế TF', ' Bè ngang', ' Kỹ thuật, Cầm trịch', '', 'Sân cỏ nhân tạo', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\">Kamito TA11 là mẫu giày được đặt tên theo tên và số áo của tiền vệ Nguyễn Tuấn Anh. Mẫu giày này đã ra mắt được một thời gian và nhận được sự ủng hộ rất lớn của người chơi bóng đá trên cả nước bởi chất lượng tốt, độ ổn định cao, thiết kế nổi bật cùng với đó là mức giá vô cùng hợp lý. Với những yếu tố đó, Kamito TA11 được nhiều người hâm mộ nhận định là mẫu giày “quốc dân”, phù hợp với nhiều người chơi Việt Nam.&nbsp;</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\">Kamito TA11&nbsp;Woncup mang tới những thiết kế hoàn toàn mới dành riêng cho TA11 với những họa tiết đậm chất Qatar trải dài trên thân giày. Bên cạnh đó, giày Kamito TA11 Woncup còn có hộp giày, túi đựng giày đi kèm và những sản phẩm này cũng được thiết kế đồng bộ cùng các sản phẩm khác trong bộ sưu tập.&nbsp;</p>', '2022-12-19 20:25:07'),
(68, 48, 1, 'Giày bóng đá Mizuno Monarcida', 2345678, 2, 'img/products/g1.jpg', 'img/products/7.jpg', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Giày đá bóng<span style=\"font-weight: bolder;\"> </span>MIZUNO MONARCIDA NEO 2 SELECT AS là mẫu <font color=\"#007bff\"><b>giày sân cỏ nhân tạo</b></font> sử dụng chất liệu da cao cấp mềm mại và thiết kế ôm sát chân tạo cho bạn cảm giác cực kì thoải mái, êm ái khi trên sân.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Bề mặt giày là các đường chỉ được khâu cẩn thận, chắc chắn, tỉ mỉ và đan chéo nhau giúp kiểm soát bóng chính xác và vượt trội hơn, đem lại độ bền cao.</li><li>Lưỡi gà được thiết kế mềm mỏng, êm ái cùng day giày mềm mại, cao cấp dễ xỏ, dễ di chuyển và mang lại cảm giác cực kì thật chân cho những pha úp bóng bằng mu bàn chân của bạn.</li><li>Gót giày có thiết kế nhỏ nhắn, hơi vuốt cao ôm lấy đôi chân bạn, cho bạn thi đấu thoải mái mà không lo giày bị tuột và đem lại cho bạn những bước đi uyển chuyển nhất.</li><li>Phần lót giày là xốp làm tăng độ êm ái cho bạn khi mang giày. Đế giày làm bằng cao su mềm, dẻo và sử dụng đinh TF chuyên dụng cho sân cỏ nhân tạo.</li></ul>', '2022-12-19 23:11:15'),
(69, 49, 1, 'Giày Akka Control 3 TF', 590000, 5, 'img/products/100.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><font color=\"#007bff\"><b>Giày đá bóng Akka</b></font>&nbsp;Control III là mẫu giày mới nhất đến từ thương hiệu Việt. Thiết kế của đôi&nbsp;<font color=\"#007bff\"><b>giày đá bóng</b></font>&nbsp;Akka Control III cũng không mấy phức tạp, những họa tiết đơn giản nhưng đủ để gấy ấn tượng với đôi mắt người nhìn.</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Chi tiết sản phẩm:</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li><span style=\"font-weight: bolder;\">Upper</span>&nbsp;được làm bằng&nbsp; da&nbsp;<span style=\"font-weight: bolder;\">Microfiber</span>&nbsp;cao cấp nhất với thiết kế theo dạng lưới giúp kiểm soát bóng tốt hơn.</li><li><span style=\"font-weight: bolder;\">Công nghệ dệt flyknit</span>&nbsp;từ phần lưỡi gà lên đến phần cổ giày co giãn SIÊU tốt tạo sự thoải mái tối đa cho cổ chân mà không lo bai dão, đặc biệt các lỗ xỏ dây giày được dệt theo dạng lỗ chứ không phải là đục trực tiếp lên trên bề mặt vì vậy chúng rất chắc chắn và không lo bị rách</li><li><span style=\"font-weight: bolder;\">Bộ đế</span>&nbsp;được làm bằng chất liệu cao su bền chắc chắn.</li></ul><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">&nbsp;</p>', '2022-12-19 20:27:21'),
(70, 58, 3, 'Áo Bóng Đá Đội Tuyển Pháp', 120000, 100, 'img/products/a1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\"><font color=\"#007bff\">Quần áo bóng đá ĐTQG</font> Pháp </span><span style=\"font-weight: bolder;\">2021 </span>được lấy cảm hứng từ những bộ trang phục trước đây từng được \"Gà trống Gaulois\" sử dụng tại WC 1998. Với sự xuất hiện của những đường sọc trước ngực áo đem đến một cảm giác hoài cổ và truyền thống.</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Với phiên bản <em>áo tuyển Pháp</em> sân khách, thiết kế mang tính đơn giản hơn dù vẫn giữ nét cổ điển truyền thống với màu trắng chủ đạo và sọc đỏ bên hông. Mẫu áo này sử dụng chất liệu vải thun lạnh thể thao với nhiều ưu điểm được đánh giá cao:</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Thấm hút mồ hôi tốt, thoáng mát khi mặc</li><li>Phù hợp in decal, in nhiệt; dễ đặt đội, nhóm</li><li>Độ co giãn của vải tốt, ít bị nhăn nhàu khi mặc và khi giặt.</li></ul>', '2022-12-19 23:04:49'),
(71, 58, 3, 'Áo Bóng ĐáTuyển Bồ Đào Nha', 120000, 13, 'img/products/a2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\"><font color=\"#007bff\">Quần áo bóng đá ĐTQG</font> Bồ Đào Nha </span><span style=\"font-weight: bolder;\">2020 </span>được lấy cảm hứng từ bộ trang phục đã cùng với họ vô địch Euro 2016. Với sự xuất hiện của những đường sọc trước ngực áo đem đến một cảm giác cân bằng giữa nền màu sáng và các sọc màu đậm.</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Trong khi đó, mẫu áo sân khách kết hợp màu cơ bản chủ đạo là màu xanh nhạt với thiết kế bắt mắt. 3 khối sọc lớn trên thân áo bao gồm các sọc ngang mỏng hơn có màu đen, đỏ và màu xanh cổ vịt. 2 mẫu áo này sử dụng chất liệu vải thun lạnh thể thao với nhiều ưu điểm được đánh giá cao:</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Thấm hút mồ hôi tốt, thoáng mát khi mặc</li><li>Phù hợp in decal, in nhiệt; dễ đặt đội, nhóm</li><li>Độ co giãn của vải tốt, ít bị nhăn nhàu khi mặc và khi giặt.</li></ul>', '2022-12-19 23:04:19'),
(72, 58, 3, 'Áo Bóng Đá Đội Tuyển Đức', 120000, 23, 'img/products/a3.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Mẫu <a href=\"https://yousport.vn/collections/quan-ao-bong-da\" target=\"_blank\" style=\"color: rgb(0, 123, 255);\">quần áo bóng đá</a> đội tuyển Đức </span>vẫn sử dụng màu trắng làm chủ đạo, nhưng thiết kế này có phần phá cách hơn ở những đường kẻ ngang màu đen phía trước. Tay áo là màu cờ của Đức. Trên ngực áo vẫn là logo cùng 4 ngôi sao tượng trưng cho 4 lần vô địch thế giới (1954, 1974, 1990 và 2014) của ‘những cỗ xe tăng’.</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Bộ trang phục màu đen lại mang hơi hướng pha trộn những nét đặc trưng của đường phố nhưng vẫn giữ được những giá trị truyền thống nhất định</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Logo thêu sắc sảo, bền đẹp không bong tróc</li><li>Vải thun lạnh 100% polyester, đặt dệt độc quyền mềm và mịn.</li><li>Độ co dãn tốt, giúp thoáng mát và thoải mái khi vận động.</li><li>Màu áo quần cực bền, in ấn có độ thẩm mỹ cao, không bong tróc.</li></ul>', '2022-12-19 23:05:04'),
(73, 58, 3, 'Áo Bóng Đá Đội Tuyển Đức', 12000, 34, 'img/products/a4.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Mẫu <a href=\"https://yousport.vn/collections/quan-ao-bong-da\" target=\"_blank\" style=\"color: rgb(0, 123, 255);\">quần áo bóng đá</a> đội tuyển Đức </span>vẫn sử dụng màu trắng làm chủ đạo, nhưng thiết kế này có phần phá cách hơn ở những đường kẻ ngang màu đen phía trước. Tay áo là màu cờ của Đức. Trên ngực áo vẫn là logo cùng 4 ngôi sao tượng trưng cho 4 lần vô địch thế giới (1954, 1974, 1990 và 2014) của ‘những cỗ xe tăng’.</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Bộ trang phục màu đen lại mang hơi hướng pha trộn những nét đặc trưng của đường phố nhưng vẫn giữ được những giá trị truyền thống nhất định</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Logo thêu sắc sảo, bền đẹp không bong tróc</li><li>Vải thun lạnh 100% polyester, đặt dệt độc quyền mềm và mịn.</li><li>Độ co dãn tốt, giúp thoáng mát và thoải mái khi vận động.</li><li>Màu áo quần cực bền, in ấn có độ thẩm mỹ cao, không bong tróc.</li></ul>', '2022-12-19 23:05:15'),
(74, 50, 2, 'Găng tay thủ môn Iwin Keepa', 120000, 2, 'img/products/ga2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<h1 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.75rem; background-color: rgb(249, 249, 249);\"><font color=\"#007bff\">Găng Tay Thủ Môn</font> iWin Keepa PRO GK01</h1><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Với iWin Keepa PRO, những cú sút mạnh không còn là lí do khiến bạn phải e ngại. Thiết kế đặc biệt giúp bảo vệ và hạn chế chấn thương tối đa cho các ngón tay, đây chính là trợ thủ đắc lực giúp mang lại cảm giác an toàn, sẵn sàng hóa giải từng cú sút.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Mặt cắt NEGATIVE truyền thống.</li><li>Mu bàn tay Air Mesh thoáng khí.</li><li>Mút lòng bàn tay Latex Đức siêu mềm độ mỏng 4mm.</li><li>Khung xương 4 ngón có thể tháo rời.</li></ul>', '2022-12-19 22:47:59'),
(75, 50, 2, 'Găng Tay Thủ Môn Iwin Keepa', 150000, 6, 'img/products/ga1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Đối với người chơi ở vị trí thủ môn thì găng tay là một <font color=\"#007bff\"><b>phụ kiện bóng đá</b></font> cần thiết. <span style=\"font-weight: bolder;\">Găng tay thủ môn Iwin Keepa</span> sẽ đem lại sự an toàn cho đôi bàn tay.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); list-style-type: circle;\"><li>Chất liệu da PU có độ bền cao</li><li>Cảm giác bóng tốt, giúp kiểm soát bóng dễ dàng với mặt cắt hybrid hiện đại.</li><li>Khung xương bảo vệ 4 ngón trừ ngón cái không có xương đem lại cảm giác bóng tốt khi ném bóng phát động tấn công.</li><li>Thun quấn cổ tay co dãn mang lại độ ôm chắc chắn cho cổ tay mà không quá chật.</li></ul><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Nếu các bạn muốn sở hữu một đôi <font color=\"#007bff\"><b>găng tay thủ môn</b></font><span style=\"font-weight: bolder;\"> Iwin Keepa</span> cho mình thì hãy ghé ngay Yousport để mang về và trải nghiệm nhé!</p>', '2022-12-19 22:47:31'),
(76, 52, 2, 'Găng tay thủ môn Zocker Edwin', 550000, 4, 'img/products/ga3.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p class=\"text-justify\" style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\"><font color=\"#007bff\">Găng tay thủ môn</font>&nbsp;Zocker GLOVES EDWIN&nbsp;</span>được thiết kế theo phong cách&nbsp;<em><span style=\"font-weight: bolder;\">Hybird</span></em>ôm vừa khít tay, duy trì sự linh hoạt cũng như cảm giác bóng.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li class=\"text-justify\">Lòng găng sử dụng chất liệu cao cấp Latico New Basic Latex Foam (Germany) tăng cường tính ma sát giúp thủ môn bắt dính bóng đồng thời giữ cảm giác bóng chân thật.</li><li class=\"text-justify\">Mu bàn tay ứng dụng công nghệ 3D định hình bộ khung, giúp các ngón và bàn tay không bị bó chặt bên trong mà ôm vừa đủ để đảm bảo sự linh hoạt.</li><li class=\"text-justify\">Phần đấm bóng sử dụng chất liệu Latex Foam, bên dưới có lớp đệm bảo vệ. Lớp đệm còn hỗ trợ tăng cường lực khi đấm bóng.</li><li class=\"text-justify\">Quấn cố tay có thể điều chỉnh để đạt độ ôm tay vừa phải.</li><li class=\"text-justify\">Phần cổ tay sử dung đệm mút để giữ cổ tay linh hoạt, đồng thời giữ cho tay luôn thoáng khí.</li></ul><p class=\"text-justify\" style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Sản phẩm được sử dụng phổ biến trong luyện tập và thi đấu các giải đá bóng phong trào, bán chuyên nghiệp.</p>', '2022-12-19 22:49:16'),
(77, 51, 2, 'Găng Tay Thủ Môn H3 Bengal', 650000, 5, 'img/products/g4.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Găng tay thủ môn H3 Bengal chính hãng</span>&nbsp;xuất xứ từ Thái Lan với thiết kế có lớp đệm mút mềm, găng tay giúp giảm lực tác động từ bóng lên bàn tay và các ngón tay của bạn, đóng vai trò rất quan trọng trong hỗ trợ chơi bóng cho người gác đền. Những ưu điểm từ&nbsp;<span style=\"font-weight: bolder;\">Găng tay thủ môn H3 Bengal:</span></p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Lòng bàn tay mút dày 4mm, bổ sung công nghệ ép mút giúp tăng độ chắc tay và giúp bắt dính bóng tốt cả trời nắng lẫn trời mưa.</li><li>Bề mặt găng tay dày 3mm và được thiết kế với họa tiết silicon in nổi 3D hỗ trợ đấm bóng tốt.</li><li>Có khung xương bảo vệ ngón tay, có thể tháo lắp dễ dàng linh hoạt.</li><li>Miếng dán cổ tay bản to quấn 2 vòng ôm sát cổ tay chắc chắn.</li><li>Bề mặt bên trong các ngón tay có điểm mút silicon, hỗ trợ chống trơn tay tạo cảm giác bắt bóng tốt hơn.</li><li>Thuộc dòng găng tay Negative được nhiều thủ môn ưa chuộng vì cảm giác bắt bóng thật hơn Flat và thoáng hơn so dòng Roll Finger.</li></ul>', '2022-12-19 22:50:08'),
(78, 47, 1, 'Giày Kamito TA11', 650000, 12, 'img/products/15.jpg', '', '', 15, 'Lưỡi gà rời, Da Microfiber Cao Cấp', '', '', '', ' Cao su tự nhiên, Đế Đinh AS', 'Bè ngang', ' Kỹ thuật, Cầm trịch', '', 'Sân cỏ nhân tạo', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Giày Kamito TA11 AS</span>&nbsp;là mẫu&nbsp;<em><span style=\"font-weight: bolder;\"><font color=\"#007bff\">giày sân cỏ nhân tạo</font></span></em>&nbsp;được thương hiệu Kamito thiết kế với sự góp ý của chính Tuấn Anh. Như mọi mẫu giày \"Signature\" của các cầu thủ khác,&nbsp;<em>Kamito TA11</em>&nbsp;mang những đặc trưng riêng biệt và đầy thú vị liên quan đến đội trưởng của CLB Hoàng Anh Gia Lai - Nguyễn Tuấn Anh.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Ký hiệu TA11 đặt theo tên và số áo của chàng cầu thủ này.</li><li>Chữ ký của Tuấn Anh cũng xuất hiện trên thân giày.</li><li>Các họa tiết&nbsp;mang đậm dấu ấn của Tuấn Anh, đặc biệt là các vân kim cương nổi tạo điểm nhấn trong tổng thể thiết kế.&nbsp;</li></ul><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Ngoài ra còn có những bước tiến trong việc nâng cao chất lượng sản phẩm để giúp mẫu&nbsp;<span style=\"font-weight: bolder;\"><font color=\"#007bff\">giày Kamito</font>&nbsp;TA11</span>&nbsp;thật sự trở thành một vũ khí đắc lực cho người chơi bóng.</p>', '2022-12-20 14:10:53'),
(79, 47, 1, 'Giày Kamito TA11', 650000, 5, 'img/products/10.jpg', '', '', 15, 'Lưỡi gà rời, Da Microfiber Cao Cấp', '', '', '', 'Cao su tự nhiên, Đế Đinh AS', ' Bè ngang', 'Kỹ thuật, Cầm trịch', '', ' Sân cỏ nhân tạo', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Giày Kamito TA11 AS</span>&nbsp;là mẫu&nbsp;<em><span style=\"font-weight: bolder;\"><font color=\"#007bff\">giày sân cỏ nhân tạo</font></span></em>&nbsp;được thương hiệu Kamito thiết kế với sự góp ý của chính Tuấn Anh. Như mọi mẫu giày \"Signature\" của các cầu thủ khác,&nbsp;<em>Kamito TA11</em>&nbsp;mang những đặc trưng riêng biệt và đầy thú vị liên quan đến đội trưởng của CLB Hoàng Anh Gia Lai - Nguyễn Tuấn Anh.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Ký hiệu TA11 đặt theo tên và số áo của chàng cầu thủ này.</li><li>Chữ ký của Tuấn Anh cũng xuất hiện trên thân giày.</li><li>Các họa tiết&nbsp;mang đậm dấu ấn của Tuấn Anh, đặc biệt là các vân kim cương nổi tạo điểm nhấn trong tổng thể thiết kế.&nbsp;</li></ul><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Ngoài ra còn có những bước tiến trong việc nâng cao chất lượng sản phẩm để giúp mẫu&nbsp;<span style=\"font-weight: bolder;\"><font color=\"#007bff\">giày Kamito</font>&nbsp;TA11</span>&nbsp;thật sự trở thành một vũ khí đắc lực cho người chơi bóng.</p>', '2022-12-20 14:12:22'),
(80, 47, 1, 'Giày Kamito TA11 Woncup', 655000, 55, 'img/products/12.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\">Kamito TA11 là mẫu giày được đặt tên theo tên và số áo của tiền vệ Nguyễn Tuấn Anh. Mẫu giày này đã ra mắt được một thời gian và nhận được sự ủng hộ rất lớn của người chơi bóng đá trên cả nước bởi chất lượng tốt, độ ổn định cao, thiết kế nổi bật cùng với đó là mức giá vô cùng hợp lý. Với những yếu tố đó, Kamito TA11 được nhiều người hâm mộ nhận định là mẫu giày “quốc dân”, phù hợp với nhiều người chơi Việt Nam.&nbsp;</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\">Kamito TA11&nbsp;Woncup mang tới những thiết kế hoàn toàn mới dành riêng cho TA11 với những họa tiết đậm chất Qatar trải dài trên thân giày. Bên cạnh đó, giày Kamito TA11 Woncup còn có hộp giày, túi đựng giày đi kèm và những sản phẩm này cũng được thiết kế đồng bộ cùng các sản phẩm khác trong bộ sưu tập.&nbsp;</p>', '2022-12-20 14:13:46'),
(81, 47, 1, 'Giày Kamito TA11 Woncup', 655000, 7, 'img/products/13.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\">Kamito TA11 là mẫu giày được đặt tên theo tên và số áo của tiền vệ Nguyễn Tuấn Anh. Mẫu giày này đã ra mắt được một thời gian và nhận được sự ủng hộ rất lớn của người chơi bóng đá trên cả nước bởi chất lượng tốt, độ ổn định cao, thiết kế nổi bật cùng với đó là mức giá vô cùng hợp lý. Với những yếu tố đó, Kamito TA11 được nhiều người hâm mộ nhận định là mẫu giày “quốc dân”, phù hợp với nhiều người chơi Việt Nam.&nbsp;</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\">Kamito TA11&nbsp;Woncup mang tới những thiết kế hoàn toàn mới dành riêng cho TA11 với những họa tiết đậm chất Qatar trải dài trên thân giày. Bên cạnh đó, giày Kamito TA11 Woncup còn có hộp giày, túi đựng giày đi kèm và những sản phẩm này cũng được thiết kế đồng bộ cùng các sản phẩm khác trong bộ sưu tập.&nbsp;</p>', '2022-12-20 14:15:13'),
(82, 48, 1, 'Giày bóng đá Mizuno Monarcida', 1290000, 6, 'img/products/2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Giày đá bóng<span style=\"font-weight: bolder;\">&nbsp;</span>MIZUNO MONARCIDA NEO 2 SELECT AS&nbsp;là mẫu&nbsp;<a href=\"https://yousport.vn/collections/giay-da-bong-san-co-nhan-tao\" target=\"_blank\" style=\"color: rgb(0, 123, 255); font-weight: bold;\">giày sân cỏ nhân tạo</a>&nbsp;sử dụng chất liệu da cao cấp mềm mại và thiết kế ôm sát chân tạo cho bạn cảm giác cực kì thoải mái, êm ái khi trên sân.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Bề mặt giày là các đường chỉ được khâu cẩn thận, chắc chắn, tỉ mỉ và đan chéo nhau giúp kiểm soát bóng chính xác và vượt trội hơn,&nbsp;đem lại độ bền cao.</li><li>Lưỡi gà được thiết kế mềm mỏng, êm ái cùng day giày mềm mại, cao cấp dễ xỏ, dễ di chuyển và mang lại cảm giác cực kì thật chân cho những pha úp bóng bằng mu bàn chân của bạn.</li><li>Gót giày có thiết kế nhỏ nhắn, hơi vuốt cao ôm lấy đôi chân bạn, cho bạn thi đấu thoải mái mà không lo giày bị tuột và đem lại cho bạn những bước đi uyển chuyển nhất.</li><li>Phần lót giày là xốp làm tăng độ êm ái cho bạn khi mang giày. Đế giày làm bằng cao su mềm, dẻo và sử dụng đinh TF chuyên dụng cho sân cỏ nhân tạo.</li></ul>', '2022-12-20 14:18:59'),
(83, 48, 1, 'Giày bóng đá Mizuno Monarcida', 129000, 6, 'img/products/7.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Giày đá bóng<span style=\"font-weight: bolder;\"> </span>MIZUNO MONARCIDA NEO 2 SELECT AS là mẫu <font color=\"#007bff\"><b>giày sân cỏ nhân tạo</b></font> sử dụng chất liệu da cao cấp mềm mại và thiết kế ôm sát chân tạo cho bạn cảm giác cực kì thoải mái, êm ái khi trên sân.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Bề mặt giày là các đường chỉ được khâu cẩn thận, chắc chắn, tỉ mỉ và đan chéo nhau giúp kiểm soát bóng chính xác và vượt trội hơn, đem lại độ bền cao.</li><li>Lưỡi gà được thiết kế mềm mỏng, êm ái cùng day giày mềm mại, cao cấp dễ xỏ, dễ di chuyển và mang lại cảm giác cực kì thật chân cho những pha úp bóng bằng mu bàn chân của bạn.</li><li>Gót giày có thiết kế nhỏ nhắn, hơi vuốt cao ôm lấy đôi chân bạn, cho bạn thi đấu thoải mái mà không lo giày bị tuột và đem lại cho bạn những bước đi uyển chuyển nhất.</li><li>Phần lót giày là xốp làm tăng độ êm ái cho bạn khi mang giày. Đế giày làm bằng cao su mềm, dẻo và sử dụng đinh TF chuyên dụng cho sân cỏ nhân tạo.</li></ul>', '2022-12-20 14:23:29'),
(84, 48, 1, 'Giày bóng đá Mizuno Monarcida', 1259000, 5, 'img/products/5.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Giày đá bóng<span style=\"font-weight: bolder;\">&nbsp;</span>MIZUNO MONARCIDA NEO 2 SELECT AS&nbsp;là mẫu&nbsp;<font color=\"#007bff\"><b>giày sân cỏ nhân tạo</b></font>&nbsp;sử dụng chất liệu da cao cấp mềm mại và thiết kế ôm sát chân tạo cho bạn cảm giác cực kì thoải mái, êm ái khi trên sân.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Bề mặt giày là các đường chỉ được khâu cẩn thận, chắc chắn, tỉ mỉ và đan chéo nhau giúp kiểm soát bóng chính xác và vượt trội hơn,&nbsp;đem lại độ bền cao.</li><li>Lưỡi gà được thiết kế mềm mỏng, êm ái cùng day giày mềm mại, cao cấp dễ xỏ, dễ di chuyển và mang lại cảm giác cực kì thật chân cho những pha úp bóng bằng mu bàn chân của bạn.</li><li>Gót giày có thiết kế nhỏ nhắn, hơi vuốt cao ôm lấy đôi chân bạn, cho bạn thi đấu thoải mái mà không lo giày bị tuột và đem lại cho bạn những bước đi uyển chuyển nhất.</li><li>Phần lót giày là xốp làm tăng độ êm ái cho bạn khi mang giày. Đế giày làm bằng cao su mềm, dẻo và sử dụng đinh TF chuyên dụng cho sân cỏ nhân tạo.</li></ul>', '2022-12-20 14:20:38'),
(85, 48, 1, 'Giày Mizuno Morelia Sala', 17000000, 2, 'img/products/6.jpg', '', '', 15, 'Lưỡi gà rời, Công nghệ định hình gót, Da PU Cao Cấ', '', '', '', 'Cao su tổng hợp, Đế TF, Công nghệ Pivot Point', ' Bè ngang', 'Kỹ thuật, Tốc độ', '', 'sân nhân tạo', 0, 0, 1, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><span style=\"font-weight: bolder;\"><font color=\"#007bff\">Giày đá bóng</font> Mizuno Morelia Sala Classic TF</span> là mẫu <em style=\"color: rgb(0, 123, 255); font-weight: bold;\">giày sân cỏ nhân tạo</em> với trọng lượng siêu nhẹ, kiểu dáng thiết kế theo phong cách rất truyền thống.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li style=\"text-align: justify;\">Trải qua hơn 30 năm phát triển, hiện nay Morelia đã không ngừng cải tiến về mẫu mã, nâng cao chất lượng. Sala Classic dành cho \"tín đồ\" đang tìm kiếm đôi giày đá bóng êm, mềm, nhẹ.  </li><li style=\"text-align: justify;\"><span style=\"font-weight: bolder;\">Mizuno Morelia Sala Classic TF</span> là phiên bản được mong chờ và yêu mến bởi đông đảo người chơi bóng đá phủi. Mẫu mới nhất của thương hiệu Mizuno có thiết kế kết hợp màu sắc giản dị, chất liệu sử dụng thuộc hàng cao cấp, không thấm nước, giúp bạn tự tin khi thi đấu dù trời mưa hay nắng.</li><li style=\"text-align: justify;\">Thiết kế form giày ôm chân, dáng giày chuyên dụng, tương thích rất cao với bàn chân người Việt, phù hợp nhất là với chân bè bề ngang.</li><li style=\"text-align: justify;\">Giày được làm từ chất liệu da PU siêu mềm mại, tiệm cận với da thật giúp nâng cao khả năng kiểm soát và cảm giác bóng chân thật khi thi đấu.</li><li style=\"text-align: justify;\">Bề mặt giày được gia công tỉ mỉ, nó được khâu vô cùng chắc chắn, chính xác tới từng đường kim mũi chỉ. Các đường viền chỉ may trên bề mặt mũi giày gia tăng khả năng kiểm soát bóng.</li></ul>', '2022-12-20 14:22:43'),
(86, 53, 3, 'Tất Đá Bóng dài', 25000, 50, 'img/products/t1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h3 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.3125rem; background-color: rgb(249, 249, 249);\"><font color=\"#007bff\">Tất Đá Bóng</font> cao cổ</h3><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Tất Dài là vật dụng không thể thiếu cho những cầu thủ nhí. Tất bóng đá trẻ em dài không những giúp cho bé đá bóng tốt hơn mà còn chống trầy xước cho chân bé. </li><li>Tất đá bóng trẻ em dài còn giúp cho bé mang Rote (bó ống quyển) 1 cách dễ dàng hơn.</li></ul>', '2022-12-20 14:26:36'),
(87, 53, 3, 'Tất Chống Trơn Dài', 35000, 50, 'img/products/t2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h3 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.3125rem; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">Tất chống trơn dài</span></h3><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li style=\"text-align: justify;\">Là loại&nbsp;<font color=\"#007bff\"><b>tất bóng đá</b></font>&nbsp;được phủ các miếng cao su nổi hình vuông (hoặc hình chữ nhật) ở mặt dưới của tất (mặt tiếp xúc với lót giày). Loại tất này khá dày và có lớp thoáng khí ở mặt trên của tất.</li><li style=\"text-align: justify;\">Với đặc tính của bóng đá là di chuyển nhiều và có nhiều kĩ thuật xử lí khác nhau cho nên&nbsp;<font color=\"#007bff\"><b>tất chống trơn</b></font>&nbsp;thiết kế có các miếng cáo su dày đặc ở mặt dưới tiếp xúc với lót giày giúp chân bạn được cố định khi di chuyển, dừng đột ngột giúp chân bạn không bị ma sát mạnh với thân giày chống những chấn thương phân chân và không bị phồng chân.</li><li style=\"text-align: justify;\">Ngoài ra tất chống trượt giúp kết nối giày chân bạn và giày thành 1 khối thống nhất giúp cảm giác bóng của bạn trở nên tốt hơn, di chuyển linh hoạt hơn, sút bóng mạnh hơn.</li><li style=\"text-align: justify;\">Với màu sắc, kiểu dáng đa dạng trẻ trung, năng động .</li><li style=\"text-align: justify;\">Kích thước dài, kéo lên gần đầu gối (hỗ trợ việc đeo bọc ống đồng). Phù hợp với mọi kích thước chân.</li></ul>', '2022-12-20 14:27:42'),
(88, 53, 3, 'Tất ống chân thể thao', 50000, 90, 'img/products/t3.png', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Tất ống chân là một loại&nbsp;<font color=\"#007bff\"><b>phụ kiện bóng đá</b></font>&nbsp;rất quan trọng giúp cải thiện lưu thông máu khi phải di chuyển nhiều trong các trận đấu. Chúng&nbsp;giúp nâng đỡ các cơ khi chạy, vận động với tần suất cao; giảm rung cơ giúp người chơi có thể bền bỉ hơn khi chơi bóng.</p>', '2022-12-20 14:29:03'),
(89, 53, 3, 'Tất chống trơn lửng', 49000, 67, 'img/products/t4.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h3 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.3125rem; background-color: rgb(249, 249, 249);\"><span style=\"font-weight: bolder;\">TẤT CHỐNG TRƠN LỬNG YOUSPORT</span></h3><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li style=\"text-align: justify;\">Là loại&nbsp;<font color=\"#007bff\"><b>tất bóng đá</b></font>&nbsp;được phủ các miếng cao su nổi hình vuông (hoặc hình chữ nhật) ở mặt dưới của tất (mặt tiếp xúc với lót giày). Loại tất này khá dày và có lớp thoáng khí ở mặt trên của tất.</li><li style=\"text-align: justify;\">Với đặc tính của bóng đá là di chuyển nhiều và có nhiều kĩ thuật xử lí khác nhau cho nên&nbsp;<font color=\"#007bff\"><b>tất chống trơn</b></font>&nbsp;thiết kế có các miếng cáo su dày đặc ở mặt dưới tiếp xúc với lót giày giúp chân bạn được cố định khi di chuyển, dừng đột ngột giúp chân bạn không bị ma sát mạnh với thân giày chống những chấn thương phân chân và không bị phồng chân.</li><li style=\"text-align: justify;\">Ngoài ra tất chống&nbsp;trượt&nbsp;giúp kết nối giày chân bạn và giày thành 1 khối thống nhất giúp cảm giác bóng của bạn trở nên tốt hơn, di chuyển linh hoạt hơn, sút bóng mạnh hơn.</li><li style=\"text-align: justify;\">Với màu sắc, kiểu dáng đa dạng trẻ trung, năng động.</li><li style=\"text-align: justify;\">Phù hợp với mọi kích thước chân.</li></ul><p><br></p><div id=\"eJOY__extension_root\" style=\"all: unset;\">&nbsp;</div>', '2022-12-20 14:30:15'),
(90, 54, 3, 'Bóng rổ AKpro ABX1', 190000, 34, 'img/products/b1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h2 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.53125rem;\"><span style=\"font-weight: bolder;\">THÔNG TIN SẢN PHẨM BÓNG RỔ AKPRO ABX1:</span></h2><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Mã sản phẩm: ABX1</li><li>Size: 5, 6, 7</li><li>Số miếng ghép: 8</li><li>Màu: Đen</li><li>Sản xuất tại: Việt Nam</li><li>Chất liệu: Cao su</li><li>Ruột bóng: Butyl</li><li>Chuyên chơi: Ngoài trời.</li><li>Nhãn hiệu: AKpro</li></ul>', '2022-12-20 14:31:45'),
(91, 54, 1, 'Quả Geru Champion S7', 219000, 6, 'img/products/b2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h3 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.3125rem; background-color: rgb(249, 249, 249); text-align: justify;\"><span style=\"font-weight: bolder;\">Quả&nbsp;<font color=\"#007bff\">banh bóng rổ Gerustar</font>&nbsp;Champion S7</span></h3><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><span style=\"font-weight: bolder;\">Quả&nbsp;<font color=\"#007bff\">banh bóng rổ</font>&nbsp;Geru Star Champion</span>&nbsp;là sản phẩm của thương hiệu cùng tên Geru Star, thuộc công ty Geru Sport của Việt Nam.&nbsp;Hiện nay, công ty Geru Sport đang là đối tác chính thức của Liên đoàn&nbsp;<font color=\"#007bff\"><b>Bóng rổ</b></font>&nbsp;Việt Nam (VBF).</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><li>Da ngoài làm bằng PVC cho cảm giác khá&nbsp;mềm, nhưng có độ ma sát cao giúp người sử dụng dễ dàng chơi, thi đấu, luyện tập 1 cách dễ dàng.</li><li>Độ nảy và độ bám tốt:&nbsp;Bóng có độ nảy tốt, nhồi êm, độ bám dính cao, dễ dàng nắm bắt, là trợ thủ đắc lúc cho các cú ném bóng, nhồi bóng, đi bóng.</li><li>Thiết kế tinh tế: Bóng được thiết kế màu nâu cam theo kiểu truyền thống, biến hóa với rãnh đen, vừa hiện đại nhưng vẫn giữ được tinh thần và linh hồn của bộ môn bóng rổ.</li><li>Tính tiện dụng cao: Bóng được thiết kế để có thể chơi cả trong nhà và ngoài trời. Bóng nhẹ dùng được cho cả nam và nữ.</li></ul>', '2022-12-20 14:32:47'),
(92, 54, 3, 'Quả MOLTEN BGS7 Cao su', 300000, 5, 'img/products/b3.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h3 style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.3125rem; background-color: rgb(249, 249, 249); text-align: justify;\"><span style=\"font-weight: bolder;\">Quả&nbsp;<font color=\"#007bff\">banh bóng rổ MOLTEN</font>&nbsp;BGS7 Cao Su</span></h3><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><span style=\"font-weight: bolder;\">Quả&nbsp;<font color=\"#007bff\">banh bóng rổ</font>&nbsp;MOLTEN BGS7</span>&nbsp;là một sản phẩm của thương hiệu MOLTEN nổi tiếng đến từ Nhật Bản.&nbsp;<span style=\"font-weight: bolder;\">Quả bóng rổ MOLTEN BGS7&nbsp;</span>sử dụng cho Nam lớn hơn 13 tuổi.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><li>Vỏ ngoài làm bằng cao su cao cấp, chuyên dùng cho các sân bóng ngoài trời.&nbsp;Bề mặt cao su chống thấm nước,&nbsp;giúp tuổi thọ bóng cao hơn.</li><li>Thiết kế 12 mảnh ghép độc quyền của Molten, Phối màu cam và trắng sữa đẹp mắt. Không chỉ vậy thiết kế này còn khiến quả bóng dễ nhìn thấy hơn trong khi thi đấu.</li><li>Ruột bóng làm từ cao su butyl giúp quả bóng Molten giữ hơi lâu hơn nhờ tính không thấm khí nổi bật của loại vật liệu này.</li><li><span style=\"font-weight: bolder;\">Quả&nbsp;<font color=\"#007bff\">bóng rổ</font>&nbsp;MOLTEN&nbsp;<span style=\"font-weight: bolder;\">BGS7</span>&nbsp;size 7&nbsp;</span>Sản phẩm đã được FIBA chứng nhận về chất lượng, rất phù hợp với những bạn nam đam mê bóng rổ, có thể tập luyện ở ngoài trời.</li></ul>', '2022-12-20 14:33:37'),
(93, 54, 3, 'Quả Spalding Graffiti S7', 490000, 7, 'img/products/b4.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<h3 class=\"_ilcss0_\" style=\"font-family: Roboto, sans-serif; font-weight: 700; color: rgb(17, 17, 17); font-size: 1.3125rem; background-color: rgb(249, 249, 249); text-align: justify;\"><font color=\"#007bff\">Banh Bóng rổ Spalding</font>&nbsp;Graffiti</h3><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><em><span style=\"font-weight: bolder;\">Spalding</span></em>&nbsp;là thương hiệu chuyên sản xuất dụng cụ thể thao đến từ Mỹ. Trong đó, nổi tiếng nhất phải kể đến các sản phẩm&nbsp;<font color=\"#007bff\"><b>banh bóng rổ</b></font>. Từ năm 1983 đến nay,&nbsp;<em><span style=\"font-weight: bolder;\">Spalding</span></em>&nbsp;là đối tác chính thức,&nbsp;<span style=\"font-weight: bolder;\">chuyên cung cấp bóng thi đấu</span>&nbsp;của Giải&nbsp;<font color=\"#007bff\"><b>Bóng Rổ</b></font>&nbsp;Nhà Nghề Mỹ (<span style=\"font-weight: bolder;\">NBA</span>), giải đấu số 1 toàn cầu. Ngoài ra, Spalding còn cung cấp bóng thi đấu cho nhiều giải khác như EuroLeague, WNBA, NCAA, …</p><p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249); text-align: justify;\"><span style=\"font-weight: bolder;\">Bóng rổ Spalding Graffiti</span>&nbsp;là một quả bóng rổ tốt, đáp ứng được rất nhiều tiêu chí: mẫu mã đẹp, độ bền cao, dễ kiểm soát, độ nảy ổn định tuyệt đối. Vì vậy, bóng&nbsp;rổ Spalding Graffiti đã chính thức trở thành bóng thi đấu của NBA (là giải đấu bóng rổ chuyên nghiệp tổng hợp của khu Bắc Mỹ).</p>', '2022-12-20 14:34:32'),
(94, 55, 3, 'Quả bóng đá số 4 Akpro', 4000000, 80, 'img/products/o1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Quả bóng đá số 4 Akpro Tomahank là quả bóng đá giá rẻ phù hợp để tập luyện với những đặc điểm:</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Mã sản phẩm: TMHK-M4</li><li>Size: 4</li><li>Số miếng ghép: 32</li><li>Màu: Trắng – Xanh – Đen – Cam</li><li>Lớp phủ bề mặt: Cao bóng</li><li>Chất liệu vỏ: Da TPU</li><li>Ruột bóng: Butyl</li><li>Công nghệ sản xuất: Khâu máy</li><li>Nhãn hiệu: AKpro</li><li>Sản xuất tại: Việt Nam</li></ul>', '2022-12-20 14:37:48'),
(95, 55, 3, 'Quả Bóng 2030 Gerustar', 230000, 34, 'img/products/o2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<p><span style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\">Công ty Geru Sport (gồm thương hiệu Geru Sport và Geru Star) là thành viên của Tổng Công ty Cao su Việt Nam chuyên sản xuất, kinh doanh và xuất nhập khẩu các sản phẩm dụng cụ thể thao chất lượng cao. Chất lượng sản phẩm của doanh nghiệp Geru Sport đã được khẳng định qua chứng nhận ISO 9001:2000 và giải thưởng Sao Vàng Đất Việt năm 2004. Đặc biệt, Geru Sport là đơn vị đầu tiên tại Việt Nam đạt tiêu chuẩn bóng đá IMS (International Matchball Standard) - tiêu chuẩn quy định bởi FIFA. Bóng đá Geru Star được lựa chọn làm bóng thi đấu chính thức tại các giải chuyên nghiệp trong nước như V-League, Cúp Quốc gia, Siêu cúp Quốc gia, Giải Bóng đá Quốc tế TP.HCM,... theo chứng nhận của Liên đoàn Bóng đá Việt Nam.</span><br></p>', '2022-12-20 14:38:29'),
(96, 55, 3, 'Quả Bóng Số 4 UHV 2.05', 450000, 88, 'img/products/o3.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<p><span style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px;\">Quả bóng đá số 4 UHV 2.05 là sản phẩm được thiết kế theo chuẩn FIFA QUALITY. Quả bóng được làm từ chất liệu da PU cao cấp, có cấu tạo nhiều lớp, ruột làm bằng cao su cao cấp, giữ hơi tốt.</span><br></p>', '2022-12-20 14:39:21'),
(97, 55, 3, 'Quả bóng đá Molten 2810', 550000, 66, 'img/products/o5.png', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '<p style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><font color=\"#0056b3\"><span style=\"text-decoration-thickness: unset; text-decoration-style: unset; text-decoration-color: unset;\"><b>Quả bóng đá</b></span></font>&nbsp;Molten 2810 số 5 EUROPA LEAGUE phù hợp dùng cho mặt sân cỏ tự nhiên hoặc sân cỏ nhân tạo 7 người ở Việt Nam.</p><ul style=\"color: rgb(17, 17, 17); font-family: Roboto, sans-serif; font-size: 13px; background-color: rgb(249, 249, 249);\"><li>Số miếng ghép: 32</li><li>Lớp phủ bề mặt: Cao bóng</li><li>Chất liệu vỏ: Da PU</li><li>Ruột bóng: Butyl</li><li>ACENTEC VANTAGGIO</li><li>Nơi sản xuất: Pakistan</li><li>Size: 5</li><li>Công nghệ chế tạo: Khâu tay</li></ul>', '2022-12-20 14:40:13'),
(98, 56, 3, 'Túi rút thể thao 2 ngăn YS', 45000, 8, 'img/products/tui1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:45:31'),
(99, 56, 3, 'Túi đựng giày 2 ngăn', 460000, 7, 'img/products/tu2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:46:23'),
(100, 56, 3, 'Túi Đeo Chéo YouSport', 67000, 8, 'img/products/tu3.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:46:54'),
(101, 56, 3, 'Ba lô thể thao SG II', 345000, 77, 'img/products/t4.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:47:31'),
(102, 57, 3, 'Bó gối Active (Cặp)', 45000, 8, 'img/products/i1.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:48:35'),
(103, 57, 3, 'Bó gối thủ môn 2', 67000, 77, 'img/products/i2.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:48:57'),
(104, 57, 3, 'Bó gối dán thể thao', 34000, 4, 'img/products/i3.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:49:34'),
(105, 57, 3, 'Bó gối dây quấn kép', 99000, 8, 'img/products/i6.jpg', '', '', 15, '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '2022-12-20 14:50:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
