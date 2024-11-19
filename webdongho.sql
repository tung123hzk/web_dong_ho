-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2024 lúc 03:14 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dtb_webdongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_product`
--

CREATE TABLE `cart_product` (
  `id` int(11) NOT NULL,
  `product_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SKU_UPC_MPN` text NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `lengthBuy` int(255) NOT NULL DEFAULT 1 COMMENT 'sô lượng sản phẩm mua ',
  `image_url` text NOT NULL,
  `brand` text NOT NULL,
  `gender` varchar(5) NOT NULL,
  `sizeHeadder` int(30) NOT NULL,
  `userName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'người mua hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bảng giỏ hàng';

--
-- Đang đổ dữ liệu cho bảng `cart_product`
--

INSERT INTO `cart_product` (`id`, `product_id`, `SKU_UPC_MPN`, `price`, `discount`, `lengthBuy`, `image_url`, `brand`, `gender`, `sizeHeadder`, `userName`) VALUES
(1290612160, 'casio', 'casio-5500-bwlg-2002', 17000, 30, 3, 'img/products/465.jpg', 'Calvin KleinN', ' nam', 36, 'viet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `category_id` varchar(30) NOT NULL COMMENT 'id danh mục',
  `category_name` varchar(50) NOT NULL COMMENT 'tên danh mục',
  `high_class` int(30) NOT NULL COMMENT 'hàng cao cấp hay không '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='mô tả danh mục ';

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `high_class`) VALUES
('id_Calvin_Klein', 'Calvin KleinN', 1),
('id_Certina', 'Certina', 2),
('id_Daniel_Wellington', 'Daniel Wellington', 2),
('id_Fossil', 'Fossil', 2),
('id_Frederique_Constant', 'Frederique Constant', 2),
('id_Hublot', 'Hublot', 1),
('id_MauriceLacroix', 'MauriceLacroix', 0),
('id_Montblanc', 'Montblanc', 0),
('id_Movado', 'Movado', 0),
('id_SevenFriday', 'SevenFriday', 0),
('id_Thomas_Earnshaw', 'Thomas Earnshaw', 0),
('id_Zenith', 'Zenith', 0),
('idBentley', 'Bentley', 1),
('idBulova', 'Bulova', 0),
('idCarnival', 'Carnival', 2),
('idCasio', 'Casio', 1),
('idCitizen', 'Citizen', 2),
('idFrederique', 'Frederique', 1),
('idFreelook', 'Freelook', 1),
('idLongines', 'Longines', 2),
('idMido', 'Mido', 1),
('idOirent', 'Oirent', 2),
('idOrent', 'Orent', 1),
('idOrient_star', 'Orient Star', 2),
('idPossil', 'Possil', 1),
('idRolex', 'Rolex', 1),
('idSeiko', 'Seiko', 0),
('idSRWatch', 'SRWath', 0),
('idTissot', 'Tissot', 0),
('idVerSace', 'VerSace', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `infor_orders`
--

CREATE TABLE `infor_orders` (
  `id` int(11) NOT NULL,
  `SKU_UPC_MPN` text NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `lengthBuy` int(255) NOT NULL,
  `image_url` text NOT NULL,
  `brand` text NOT NULL,
  `gender` varchar(5) NOT NULL,
  `sizeHeadder` int(30) NOT NULL,
  `userName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `infor_orders`
--

INSERT INTO `infor_orders` (`id`, `SKU_UPC_MPN`, `price`, `discount`, `lengthBuy`, `image_url`, `brand`, `gender`, `sizeHeadder`, `userName`) VALUES
(871693279, 'WEE13306-BMW-1990', 400000, 90, 1, 'img/products/SNZG09K1.jpg', 'Zenith', ' nam', 35, 'buingocan'),
(871693279, 'CA4559-13A', 9900, 25, 1, 'img/products/CA4559-13A.png', 'Citizen', ' nam', 43, 'buingocan'),
(1203887740, 'casio-5500-bwlg-2002', 17000, 30, 1, 'img/products/465.jpg', 'Calvin KleinN', ' nam', 36, 'dangthanhhai'),
(1203887740, 'BL1831-15MKWD', 10040, 50, 3, 'img/products/BL1831-15MKWD-3-1869775477-910942131.png', 'Calvin KleinN', ' nam', 40, 'dangthanhhai'),
(358760901, 'FC-312N4S6', 55810, 2, 3, 'img/products/FC-312N4S6-1-712068579-921437586.png', 'Frederique', ' nam', 40, 'dangthanhhai'),
(358760901, 'casio-5500-bwlg-2002', 17000, 30, 1, 'img/products/465.jpg', 'Calvin KleinN', ' nam', 36, 'dangthanhhai'),
(1824833317, 'casio-5500-bwlg-2002', 17000, 30, 3, 'img/products/465.jpg', 'Calvin KleinN', ' nam', 36, 'viet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_orders`
--

CREATE TABLE `list_orders` (
  `idList` int(255) NOT NULL COMMENT 'hóa đơn',
  `namePeople` varchar(30) NOT NULL COMMENT 'người mua hàng',
  `address` text NOT NULL COMMENT 'địa chỉ mua hàng',
  `email` varchar(30) NOT NULL COMMENT 'email người mua',
  `note` text NOT NULL,
  `phoneNumbers` varchar(20) NOT NULL COMMENT 'số điện thoại',
  `status` int(30) NOT NULL DEFAULT 0 COMMENT 'tình trạng đơn',
  `dateOder` varchar(30) NOT NULL COMMENT 'ngày mua hàng',
  `price` double NOT NULL,
  `userName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'in hóa đơn người mua'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bảng danh sách gọi ';

--
-- Đang đổ dữ liệu cho bảng `list_orders`
--

INSERT INTO `list_orders` (`idList`, `namePeople`, `address`, `email`, `note`, `phoneNumbers`, `status`, `dateOder`, `price`, `userName`) VALUES
(1824833317, 'rwt4eyrjhgbv', 'fesdgh', 'ducvietz555@gmail.com', 'ghjw', '978756', 2, '19h-45m-55s  25/10/2024', 35700, 'viet');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` varchar(50) NOT NULL COMMENT 'mã sản phẩm',
  `SKU_UPC_MPN` text NOT NULL COMMENT 'tên sản phẩm',
  `description` text NOT NULL COMMENT 'mô tải sản phẩm',
  `price` float(255,0) NOT NULL COMMENT 'giá cả',
  `discount` float DEFAULT 0 COMMENT 'giảm giá sản phẩm\r\n',
  `length` int(255) NOT NULL COMMENT 'só lượng',
  `image_url` text NOT NULL COMMENT 'ảnh mô tả sảng phẩm',
  `category_id` varchar(30) NOT NULL COMMENT 'khóa ngoại danh mục ',
  `brand` text NOT NULL COMMENT 'nhà sản xuất',
  `gender` varchar(5) NOT NULL COMMENT 'giới tính đeo',
  `sizeHeadder` int(30) NOT NULL COMMENT 'size mặt đồng hồ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='bảng mô tả sản phẩm ';

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `SKU_UPC_MPN`, `description`, `price`, `discount`, `length`, `image_url`, `category_id`, `brand`, `gender`, `sizeHeadder`) VALUES
('Aikon Quartz Chronograph ', 'AI1118-SS002-430-1', 'Dây kim loại, Kính Sapphire, Đồng hồ Thụy Sỹ, thép không gỉ, Mặt tròn ,Màu vỏ Trắng ,Màu mặt Mặt xanh', 21500, 13, 12, 'img\\products\\AI1118-SS002-430-1_soldat_1.png\"', 'id_MauriceLacroix', 'MauriceLacroix', 'Nam', 42),
('BCRF X Movado', '3601242w_LRG', 'Tháng 10 là tháng Nhận thức về Ung thư vú. Là một phần của chiến dịch nâng cao nhận thức và tài trợ cho nghiên cứu của Movado, chúng tôi tự hào hỗ trợ Quỹ Nghiên cứu Ung thư Vú với khoản quyên góp 100$ từ Quỹ Tập đoàn Movado cho mỗi chiếc đồng hồ BCRF được bán.', 18059, 15, 37, 'img\\products\\3601242w_LRG.png', 'id_Movado', 'Movado', 'Nữ', 34),
('Bentley-BL1831-15MKWD', 'BL1831-15MKWD', 'Dây da, Kính Sapphire, Vỏ thép không gỉ, Mặt tròn, Màu vỏ Vàng, Màu mặt Mặt Vàng', 10040, 50, 15, 'img/products/BL1831-15MKWD-3-1869775477-910942131.png', 'id_Calvin_Klein', 'Calvin Klein', 'nam', 40),
('Bentley-BL1831-25MWNN ', 'BL1831-25MWNN ', 'Dây da, Kính Sapphire, Vỏ thép không gỉ, Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt xanh', 6300, 30, 20, 'img/products/BL1831-25MWNN-1-1654749818317.png', 'id_Calvin_Klein', 'Bentley', 'nam', 41),
('Breitling Bentley Motors', 'ES20607110', 'Breitling Bentley Motors đồng hồ nam tự động. Đồng hồ đang chạy mạnh mẽ và giữ thời gian chính xác, đã được hẹn giờ chính xác trên Máy định thời gian chuyên gia Witschi.', 25500, 12, 20, 'img/products/ES20607110.png', 'idBentley', 'Bentley', 'Nam', 43),
('Bulova-96L273', '96L273', 'Dây kim loại, Kính Khoáng, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt đen, ', 5200, 32, 0, 'img/products/96L273.png', 'idBulova', 'Bulova', 'nữ', 32),
('Bulova-98A224', '98A224', 'Dây Kim Loại, Kính Khoáng, Vỏ Thép Không Gỉ, Hình Dạng Mặt Tròn, Màu Vỏ Bạc, Màu Mặt Mặt Đen,', 9990, 28, 11, 'img/products/96L273.png', 'idBulova', 'Bulova', 'nam', 36),
('Carnival - 8113G-VH-DD-T', '8113G-VH-DD-T', 'Presence, Dây kim loại, Kính Sapphire, Đồng hồ Thụy Sỹ, Vỏ thép không gỉ, Mặt tròn, Màu Vàng', 35000, 2, 30, 'img/products/8113G-VH-DD-T.png', 'idCarnival', 'Carnival', 'Nam', 43),
('casio', 'casio-5500-bwlg-2002', 'đồng hồ chính hãng giá rẻ, sản xuất ở thụy sĩ, mặt tròn đep, màu vàng kim óng, kháng nước', 17000, 30, 5, 'img/products/465.jpg', 'id_Calvin_Klein', 'Calvin Klein', 'nam', 36),
('Casio_AE1200', 'AE-1200WHD-1AVDF', 'Dây kim loại, Kính Nhựa, Vỏ nhựa, Mặt vuông, Màu xám', 6550, 7, 16, 'img/products/1-KHUNG-SP-6676612-1785849039.png', 'idCasio', 'Casio', 'nam', 42),
('Casio_AE1222', 'LA670WA-7DF', 'Dây kim loại, Kính Nhựa, Mặt vuông, Màu xám, Đồng hồ Nhật,Vỏ nhựa', 5000, 5, 5, 'img/products/LA670WA-7DF.png', 'idCasio', 'Casio', 'nữ', 25),
('Casio_MTP1374', 'MTP-1374L-1AVDF', 'Kính Khoáng, Đồng hồ Nhật, Vỏ thép không gỉ, Mặt tròn ,Mặt đen ,Dây da', 2990, 25, 11, 'img/products/1-KHUNG-SP-1-1818542633-1853976209.png', 'idCasio', 'Casio', 'nam', 44),
('Citizen-CA4559-13A', 'CA4559-13A', 'Dây da, Kính Khoáng, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt bạc', 9900, 25, 19, 'img/products/CA4559-13A.png', 'idCitizen', 'Citizen', 'nam', 43),
('Citizen-EU6060-55D', 'EU6060-55D', 'Dây kim loai, Kính Khoáng, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt bạc', 4000, 10, 20, 'img/products/EU6060-55D-1368129322-1310029729.png', 'idCitizen', 'Citizen ', 'nữ', 26),
('Citizen-NH8363-14H', 'NH8363-14H', 'Dây da, Kính Khoáng, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt bạc', 5500, 25, 30, 'img/products/NH8363-14H-392544854-264900313.png', 'idCitizen', 'Citizen', 'nam', 41),
('Daniel-Wellington-DW00100617', 'DW00100617', 'Pin/Quartz, Dây kim loại, Kính Khoáng, Hình dạng\r\nMặt tròn, Màu vỏ Đen, Màu mặt Mặt đen', 5450, 20, 0, 'img/products/95-1812737348-1074726461.png', 'id_Daniel_Wellington', 'Daniel Wellington', 'nữ', 28),
('Daniel-Wellington-DW00100630', 'DW00100630', 'Pin/Quartz, Dây kim loại, Kính Khoáng, Hình dạng\r\nMặt tròn, Màu vỏ Đen, Màu mặt Mặt đen', 6380, 20, 18, 'img/products/104-453347516-560362573.png', 'id_Daniel_Wellington', 'Daniel Wellington', 'nam', 40),
('DS-7 Chrono Auto', 'C043.427.11.041.00', 'DS-7 mang lại một cái nhìn thể thao cho cổ tay, và có thể mang lại những kỷ niệm cho những người sành về đồng hồ lịch sử. Thiết kế của dòng sản phẩm mới có nguồn gốc từ một mô hình từ những năm 1970, nhưng đã mang một diện mạo hiện đại quyết định - với các đường nét năng động và chi tiết thời trang.', 74000, 20, 20, 'img/products/C043.427.11.041.00.png', 'id_Certina', 'Certina', 'Nam', 45),
('Eliros Chronograph', 'EL1098-PVP01-411-1', 'Maurice Lacroix thường sử dụng bộ sưu tập Eliros của mình để trình bày những ý tưởng mới. Từ năm 1996, bộ sưu tập đã đi đầu trong thời trang, nắm bắt các xu hướng mới và bao gồm màu sắc tươi sáng.', 19150, 0, 9, 'img/products/EL1098-PVP01-411-1_soldat.png', 'id_MauriceLacroix', 'MauriceLacroix', 'Nữ', 40),
('Fossil EVERETT FS6037', 'FS6037', 'Dây kim loại, Đáy vặn, Oyster mối nối 3 mảnh chắc chắn, Cơ/Automatic, Hình dạng Mặt tròn màu vàng, Màu mặt đỏ khắc hình rồng', 300000, 20, 6, 'img/products/FS6037.png', 'id_Fossil', 'Fossil', 'Nam', 46),
('Fossil-WEE13306-BMW-1990', 'WEE13306-BMW-1990', 'không', 400000, 90, 9, 'img/products/SNZG09K1.jpg', 'id_Zenith', 'Zenith', 'nam', 35),
('Frederique Constant_FC_50N4H4', 'FC-750N4H4', 'Dây da, Kính Sapphire, Đồng hồ Thụy Sỹ, Vàng & thép không gỉ, Mặt tròn ,Màu vỏ Đen ,Màu mặt Mặt xanh', 113000, 20, 10, 'img/products/FC-750N4H4.png', 'id_Frederique_Constant', 'Frederique Constant', 'nam', 42),
('Frederique_Constant_ FC_718DGW', 'FC-718DGWM4H4', 'Dây da, Kính Sapphire, Vỏ thép không gỉ, Mặt tròn, Màu vỏ Vàng hồng, Màu mặt Mặt đen', 110000, 20, 10, 'img/products/FC-718DGWM4H4-1-255745138-2087854650.png', 'id_Frederique_Constant', 'Frederique Constant', 'nam', 42),
('Frederique_Constant_FC_718NWM4', 'FC-718NWM4H6', 'Dây da, Kính Sapphire, Đồng hồ Thụy Sỹ, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc', 107620, 20, 10, 'img/products/FC-718NWM4H6-1-1675157716186.png', 'id_Frederique_Constant', 'Frederique Constant', 'nam', 42),
('Frederique_ConstantA11', 'FC-312N4S6', 'Cơ/Automatic, Kính Sapphire, Đồng hồ Thụy Sỹ, Vỏ thép không gỉ, Mặt tròn, Màu bạc', 55810, 2, 7, 'img/products/FC-312N4S6-1-712068579-921437586.png', 'idFrederique', 'Frederique', 'nam', 40),
('Freelook FL.1.10116.2', 'FL.1.10116.2', 'Dây dù/vải, Chất liệu kính Hardlex Crystal, \r\nHình dạng Mặt tròn, Màu vỏ Bạc, Màu mặt trắng ngọc, Dây Thép Không Gỉ Mạ Vàng PVD', 23000, 10, 14, 'img/products/FL.1.10116.2.png', 'idFreelook', 'Freelook', 'Nữ', 34),
('Hublo-550.NS.1800.RX.ORL19', '550.NS.1800.RX.ORL19', '', 290000, 20, 13, 'img/products/550.NS.1800.RX.ORL19-1-1658982112522.png', 'id_Hublot', 'Hublot ', 'nam', 40),
('Hublot- 465.SX.1170.RX.1604', '465.SX.1170.RX.1604', 'Big Bang, Dây cao su, Đồng hồ Thụy Sỹ, Vỏ thép không gỉ, Hình dạng Mặt tròn ,Màu vỏ\r\nBạc', 600000, 20, -4, 'img/products/465-813045092-212636212.png', 'id_Hublot', 'Hublot ', 'nam', 39),
('Hublot-550.OS.1800.RX.ORL19', '550.OS.1800.RX.ORL19', 'Classic Fusion, Dây da, Kính Sapphire, Đồng hồ Nhật, Hình dạng Mặt tròn ,Màu vỏ Bạc', 500000, 20, 6, 'img/products/5-1667646897986.png', 'id_Hublot', 'Hublot', 'nam', 42),
('Hublot-OS.2200.RW.ORL20', '550.OS.2200.RW.ORL20', 'Classic Fusion, Dây da, Kính Sapphire, Đồng hồ Nhật, Hình dạng Mặt tròn ,Màu vỏ Bạc', 467500, 10, 14, 'img/products/550-1664255757-1588057472.png', 'id_Hublot', 'Hublot', 'nam', 40),
('Longines_385N', 'L2.628.4.97.0', 'Master Collection, Dây da, \r\nKính Sapphire, Đồng hồ Thụy Sỹ ,Vỏ thép không gỉ, Mặt tròn , Màu Bạc', 69000, 28, 3, 'img/products/L2-1631370034-625115582.png', 'idLongines', 'Longines', 'nam', 39),
('Longines_L2_798_5_72_7', 'L2.798.5.72.7', 'Dây da, Kính Sapphire, Đồng hồ Thụy Sỹ, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc', 85000, 26, 10, 'img/products/L2-1167662682-671655372.png', 'idLongines', 'Longines', 'nam', 42),
('Longines_L2_8215_57_7', 'L2.821.5.57.7', 'Vàng & thép không gỉ, Kính Sapphire,Đồng hồ Thụy Sỹ, Mặt tròn, Màu vỏ Bạc ,Màu mặt Mặt xanh', 104000, 46, 20, 'img/products/L2.821.5.57.7-1-1653299675411.jpg', 'idLongines', 'Longines', 'Nam', 40),
('M3/08 CHROME', 'WATCH-M3/08', 'M3/08 dành cho một số ít người không sợ hãi, không né tránh một cái gì đó mới. Để hoàn thành một tưởng tượng funk rock hoặc bổ sung cho một chiếc áo khoác da, Chrome hoàn thành nhiệm vụ!', 15000, 7, 26, 'img\\products\\WATCH_M3-08.png', 'id_SevenFriday', 'SevenFriday', 'Nam', 47),
('Mahogany Brown', 'ES-8059-03', 'Đây là những chiếc đồng hồ mang tính biểu tượng nhất của chúng tôi; Những sản phẩm bán chạy nhất không bao giờ thất bại trong việc đánh cắp trái tim của mọi người mặc. Rốt cuộc, có một lý do khiến họ tồn tại lâu như vậy.', 9000, 10, 15, 'img/products/ES-8059-03.png', 'id_Thomas_Earnshaw', 'Thomas Earnshaw', 'Nam', 43),
('Montblanc 1858 Geosphere 0 Oxy', 'MB129415', 'Montblanc 1858 Geosphere 0 Oxygen hoàn toàn không có oxy để cải thiện hiệu suất và độ chính xác của đồng hồ theo thời gian, ngay cả trong một số môi trường núi khắc nghiệt nhất. Không có oxy bên trong chuyển động không chỉ giúp loại bỏ sương mù, có thể xảy ra với sự thay đổi nhiệt độ mạnh mẽ về độ cao mà còn ngăn chặn quá trình oxy hóa. Nếu không có oxy, tất cả các thành phần tồn tại lâu hơn và sẽ cung cấp độ chính xác cao hơn theo thời gian.', 33000, 6, 24, 'img\\products\\MB129415.png', 'id_Montblanc', 'Montblanc', '', 42),
('Montblanc 1858 Iced Sea Automatic Date', 'MB130793', 'Montblanc 1858 Iced Sea Automatic Date với mặt số hoa văn sông băng màu xám mang lại ấn tượng như nhìn vào độ sâu của sông băng với tất cả các khoáng chất của nó được thu giữ trong thời gian trong nhiều thiên niên kỷ. Lấy cảm hứng từ Mer de Glace, kết cấu băng hà này đã đạt được bằng cách sử dụng một kỹ thuật tổ tiên gần như bị lãng quên được gọi là gratté-boisé.', 50000, 6, 20, 'img\\products\\MB130793.png', 'id_Montblanc', 'Montblanc', '', 41),
('Movado SE', '0607972w_LRG', 'Movado SE được xác định bởi sự khéo léo và thiết kế thể thao thanh lịch của Thụy Sĩ. Chiếc đồng hồ này có mặt số tia nắng mặt trời màu đen, các điểm nhấn Super-LumiNova của Thụy Sĩ và họa tiết chấm đặc trưng của chúng tôi.', 52371, 3, 15, 'img\\products\\0607972w_LRG.png', 'id_Movado', 'Movado', 'Nam', 42),
('Multifort TV 35', 'M049.307.11.136.00', 'Multifort TV 35 ra mắt đáng chú ý trong một phiên bản hấp dẫn với kích thước linh hoạt hoàn hảo. Một tính năng đặc biệt: độ dày của nó được giảm đến mức tối đa, nhờ bộ chuyển động tự động Calibre 72, nổi tiếng với sự tinh tế và độ tin cậy vượt trội được cấp bởi lò xo cân bằng Nivachron™ công nghệ cao.', 10500, 17, 20, 'img/products/M049.307.11.136.00.png', 'idMido', 'Mido', 'Nam', 45),
('Orent Star Contemporary Modern Skeleton', 'RE-AV0127L00B', '', 56000, 43, 13, 'img/products/RE-AV0127L00B.png', 'idOrent', 'Orent', 'Nam', 42),
('ORIENT STAR: Mechanical M34', 'RE-AZ0101N', 'Mô hình mới này là bộ xương đầu tiên trong Bộ sưu tập đương đại. Skeleton mới có bộ chuyển động mới nhất màu xám với bánh xe thoát silicon sử dụng công nghệ độc quyền của Epson * và khả năng dự trữ năng lượng 70 giờ. Thiết kế hiện đại và phong cách của nó bao gồm các chi tiết tinh xảo, và chuyển động bộ xương quấn tay tượng trưng cho sự rộng lớn của vũ trụ.', 35700, 3, 10, 'img/products/AZ0101N.png', 'idOirent', 'Orient', 'Nữ', 38),
('ORIENT STAR: Mechanical Sports, Leather Strap', 'RE-AT0105B', 'ORIENT STAR hàng đầu của chúng tôi là một đề xuất cho một bộ sưu tập thể thao nguyên bản mang các kỹ thuật truyền thống (bán xương cơ học) và thị hiếu thể thao với cách giải thích mới. Đặc điểm thể thao được thể hiện bằng ánh sáng phát sáng (cường độ sáng cao) cho tất cả các chỉ số bao gồm ba chỉ số Ả Rập và thay đổi độ hoàn thiện giữa trung tâm mặt số và phần bên ngoài mặt số.', 21600, 30, 20, 'img\\products\\RE-AT0105B.jpg', 'idOrient_star', 'Orient Star', 'Nam', 45),
('P1C/05 \"CURAÇAO\"', 'PSeries P1C-05', 'Cảm hứng đằng sau tác phẩm này là thức uống Curaçao của Mexico, được thể hiện rõ ràng thông qua sự kết hợp của màu xanh và trắng trong đồng hồ và mặt số. Sự tương phản giữa màu trắng sạch sẽ và màu xanh rực rỡ làm cho tác phẩm này trở thành bức tranh của mùa hè.', 18000, 6, 33, 'img\\products\\PSeries_P1C-05.png', 'id_SevenFriday', 'SevenFriday', 'Nữ', 40),
('Possil EVERETT ME3220', 'ME3220', 'Dây kim loại, Kính Khoáng Mineral crystal, Vỏ thép không gỉ, Mặt tròn', 108800, 26, 2, 'img/products/ME3220.png', 'idPossil', 'Possil', 'Nam', 43),
('Rolex-M124060-0001', 'M124060-0001', 'Đáy vặn, Oyster mối nối 3 mảnh chắc chắn, Cơ/Automatic, Dạ Quang, Chất liệu vỏ Thép Oystersteel, Hình dạng Mặt tròn ,Màu mặt Mặt đen', 315000, 5, 13, 'img/products/M124060-0001.png\r\n', 'idRolex', 'Rolex', 'nam', 41),
('Rolex-M126500LN-0001', 'M126500LN-0001', 'Đáy vặn, Loại dây Mối Nối 3 Mảnh, Cơ/Automatic, Dạ Quang, Kính Sapphire, Hình dạng Mặt tròn, Màu mặt Mặt trắng', 650000, 50, 10, 'img/products/M126500LN-0001-1552426128-976540737.jpg', 'idRolex', 'Rolex', 'nữ', 40),
('Rolex-M126505-0001', 'M126505-0001', 'Loại dây Mối Nối 3 Mảnh, Cơ/Automatic, Dạ Quang, Kính Sapphire, Hình dạng Mặt tròn,Màu mặt Mặt đen ', 500000, 40, 12, 'img/products/M126505-0001.jpg', 'idRolex', 'Rolex ', 'nam', 40),
('Rolex-M126710BLNR-0003', 'M126710BLNR-0003', 'Đáy vặn, Oyster mối nối 3 mảnh chắc chắn, Cơ/Automatic, Dạ Quang, Hình dạng Mặt tròn, Màu mặt Mặt Xanh', 300000, 10, 7, 'img/products/M126710BLNR-0003.png', 'idRolex', 'Rolex', 'nữ', 40),
('Seiko-SNDV29P1', 'SNDV29P1', '', 5000, 0, 10, 'img/products/dong-ho-seiko-sndv292_1-ims.png', 'idSeiko', 'Seiko', 'nữ', 33),
('Seiko-SNK809K2', 'SNK809K2', 'Dây dù/vải,Chất liệu kính  Hardlex Crystal,  Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc,Màu mặt Mặt đen', 5500, 10, 20, 'img/products/SNZG15K1-1627374858892.png', 'idSeiko', 'Seiko', 'nam', 37),
('Seiko-SNZG13K1', 'SNZG13K1', 'Dây kim loại, Đồng hồ Nhật, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt đen', 5100, 13, 20, 'img/products/SNZG13K1.png', 'idSeiko', 'Seiko ', 'nam', 42),
('Seiko-SUR638P1', 'SUR638P1', 'Dây da, Đồng hồ Nhật, Vỏ thép không gỉ, Hình dạng Mặt tròn, Màu vỏ vàng, Màu mặt Mặt đen', 5050, 10, 20, 'img/products/SUR638P1.png', 'idSeiko', 'Seiko', 'nữ', 29),
('SRWatch-SG99993.4601GLA', 'SG99993.4601GLA', 'Kính Sapphire , Vỏ thép không gỉ, Đồng hồ Nhật, Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt trắng, ', 9995, 10, 5, 'img/products/SG99993.4601GLA-2-1641636027301.png', 'idSRWatch', 'SRWatch', 'nam', 41),
('SRWatch-SL3002.4102CV', 'SL3002.4102CV', 'Kính Sapphire , Vỏ thép không gỉ, Đồng hồ Nhật, Mặt tròn, Màu vỏ Bạc, Màu mặt Mặt trắng, ', 1150, 10, 13, 'img/products/SL3002.4102CV-2-1675999610828.png', 'idSRWatch', 'SRWatch', 'nữ', 30),
('Tissot Lovely Square', 'T058.109.11.036.00', 'Tissot luôn biết cách tôn vinh vẻ đẹp người phụ nữ hiện đại qua những thiết kế của mình. Tissot quartz 24mm Lovely Square T058.109.11.036.00 là hiện thân rõ nét nhất cho câu nói trên. Ánh sắc rực rỡ của 12 viên kim cương tỏa sáng lấp lánh nơi mặt số chắc chắn sẽ làm quý cô xiêu lòng.', 23200, 20, 10, 'img/products/T058.109.11.036.00.jpg', 'idTissot', 'Tissot', 'nữ', 24),
('Versace Chrono X Watch', '90_PVE9K002-P0024', 'Versace Chrono X là chiếc đồng hồ có hoa văn Greca mang tính biểu tượng trên vòng trên cùng và chữ ký Medusa trên vương miện. Logo Versace ở vị trí 12 giờ và thiết kế được hoàn thành bởi dây đeo PU tái chế với họa tiết kim cương kết cấu và chi tiết logo Versace.', 3650, 25, 20, 'img/products/90_PVE9K002-P0024.png', 'idVerSace', 'VerSace', 'nam', 43);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_admin`
--

CREATE TABLE `user_admin` (
  `userName` varchar(32) NOT NULL COMMENT 'tên người dùng',
  `passWord` varchar(32) NOT NULL COMMENT 'mật khẩu',
  `Name` varchar(32) NOT NULL COMMENT 'tên người dùng',
  `role` varchar(10) NOT NULL DEFAULT 'user' COMMENT 'quyền truy cập'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='bảng đăng nhập';

--
-- Đang đổ dữ liệu cho bảng `user_admin`
--

INSERT INTO `user_admin` (`userName`, `passWord`, `Name`, `role`) VALUES
('admin', '12345', 'Đức Việt', 'admin'),
('viet', '1234', 'viet', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userName` (`userName`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `list_orders`
--
ALTER TABLE `list_orders`
  ADD PRIMARY KEY (`idList`),
  ADD KEY `userName` (`userName`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`userName`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1290612161;

--
-- AUTO_INCREMENT cho bảng `list_orders`
--
ALTER TABLE `list_orders`
  MODIFY `idList` int(255) NOT NULL AUTO_INCREMENT COMMENT 'hóa đơn', AUTO_INCREMENT=1824833318;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user_admin` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `list_orders`
--
ALTER TABLE `list_orders`
  ADD CONSTRAINT `list_orders_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `user_admin` (`userName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
