-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 27, 2021 lúc 11:52 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php_mvc_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'hieutan', 'hieutan@gmail.com', 'hieudeptrai', '25f9e794323b453885f5181f1b624d0b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Viettel'),
(13, 'OEM'),
(15, 'TP-Link');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(4, 'Máy bàn'),
(5, 'Điện thoại di động'),
(6, 'Phụ kiện công nghệ'),
(7, 'Phần mềm'),
(16, 'Thiết bị thông minh'),
(17, 'Thiết bị mạng'),
(19, 'Đồ gia dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(6, 'Hiếu Programming ', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'Thành phố Hồ Chí Minh', 'hcm', '700000', '0932023992', 'truongngoctanhieu2018@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(60, 23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 3, '4050000', '24af523530.png', 1, '2021-02-26 15:30:38'),
(61, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2021-02-26 15:48:48'),
(62, 27, 'Samsung Galaxy A12', 6, 1, '3950000', 'aaa94c8bfc.jpg', 0, '2021-02-26 15:53:23'),
(63, 28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2021-02-26 15:53:57'),
(64, 27, 'Samsung Galaxy A12', 6, 2, '7900000', 'aaa94c8bfc.jpg', 0, '2021-02-26 16:02:43'),
(65, 26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 2, '2700000', '24af523530.png', 0, '2021-02-26 16:02:43'),
(66, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2021-02-26 16:03:47'),
(67, 28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2021-02-26 16:04:24'),
(68, 26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2021-02-26 16:09:25'),
(69, 26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2021-02-26 16:14:40'),
(70, 23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2021-02-26 16:15:29'),
(71, 24, 'Samsung Galaxy A12', 6, 1, '3950000', 'aaa94c8bfc.jpg', 0, '2021-02-26 16:16:01'),
(72, 23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', 6, 1, '1350000', '24af523530.png', 0, '2021-02-26 16:18:26'),
(73, 28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2021-02-26 16:19:40'),
(74, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', 6, 1, '8000000', '5cca03034d.jpg', 0, '2021-02-26 16:24:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(23, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', '', '', '0', '', 17, 15, '<p><span>Hi&ecirc;̣n nay router chắc chắn là m&ocirc;̣t trong những phụ ki&ecirc;̣n kh&ocirc;ng th&ecirc;̉ nào thi&ecirc;́u đ&ocirc;́i với người dùng c&ocirc;ng ngh&ecirc;̣ phải kh&ocirc;ng nào. Hãy chọn mua ngay Router Wifi Huawei AX3 băng tần k&eacute;p Ax3000 CPU 2 nh&acirc;n&nbsp;t&ocirc;́c đ&ocirc;̣ truy&ecirc;̀n tải nhanh chóng, nhỏ gọn sẽ là sự lựa chọn hoàn hảo cho bạn.</span></p>', 0, '1350000', '24af523530.png'),
(24, 'Samsung Galaxy A12', '', '', '0', '', 5, 6, '<h2><span>Điện thoại Samsung Galaxy A12 &ndash; Smartphone gi&aacute; rẻ cấu h&igrave;nh tốt v&agrave; pin tr&acirc;u</span></h2>\r\n<p><span>Samsung A12</span>&nbsp;l&agrave; một chiếc smartphone gi&aacute; rẻ nhưng sở hữu cấu h&igrave;nh ổn định c&ugrave;ng với vi&ecirc;n pin 5000mAh cho thời lượng suốt ng&agrave;y d&agrave;i. B&ecirc;n cạnh đ&oacute; điện thoại cũng sở hữu thiết kế thời trang v&agrave; ph&ugrave; hợp với xu hướng.</p>\r\n<h3><span>Thiết kế đơn giản, 4 phi&ecirc;n bản m&agrave;u, v&acirc;n tay cạnh b&ecirc;n</span></h3>\r\n<p>Galaxy A12 c&oacute; thiết kế đơn giản với bốn g&oacute;c cạnh được bo tr&ograve;n mềm mại c&ugrave;ng với hai cạnh b&ecirc;n được v&aacute;t cong nhẹ nh&agrave;ng tạo cảm gi&aacute;c cầm thoải m&aacute;i cho người d&ugrave;ng.</p>\r\n<p>B&ecirc;n cạnh đ&oacute; smartphone c&ograve;n được cho ra mắt với nhiều phi&ecirc;n bản m&agrave;u Đen, Trắng, Xanh thời trang để bạn c&oacute; thể lựa chọn m&agrave;u sắc y&ecirc;u th&iacute;ch.</p>', 0, '3950000', 'aaa94c8bfc.jpg'),
(25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '', '', '0', '', 6, 7, '<h2>Apple Watch SE 40mm - Sang trọng, đẳng cấp như bản cao cấp</h2>\r\n<p>Năm 2020, chắc hẳn c&aacute;c iFan đang h&aacute;o hức đ&oacute;n chờ c&aacute;c si&ecirc;u phẩm được ra mắt từ Apple. Đặc biệt Apple Watch SE 40mm&nbsp; GPS) l&agrave; một trong những phi&ecirc;n bản được Apple ra mắt v&agrave;o năm 2020 v&agrave; đang được nhiều người d&ugrave;ng quan t&acirc;m kh&ocirc;ng k&eacute;m g&igrave; phi&ecirc;n bản ch&iacute;nh thức cao cấp.</p>\r\n<h3>Thiết kế thời trang, m&agrave;n h&igrave;nh Retina LTPO OLED hiển thị chất lượng cao</h3>\r\n<p><a title=\"Đồng hồ Apple Watch ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/do-choi-cong-nghe/apple-watch.html\" target=\"_self\">Apple Watch</a>&nbsp;SE 40mm (GPS) c&oacute; thiết kế vừa năng động v&agrave; mang đậm t&iacute;nh thời trang rất giống với thế hệ trước đ&acirc;y m&agrave; nh&agrave; sản xuất Apple đ&atilde; thiết kế.</p>\r\n<p>Hơn thế, d&acirc;y đeo được l&agrave;m từ chất liệu silicon c&oacute; độ đ&agrave;n hồi cao gi&uacute;p người d&ugrave;ng c&oacute; thể đeo trong thời gian d&agrave;i m&agrave; kh&ocirc;ng bị đau tay. Với chất liệu n&agrave;y người d&ugrave;ng dễ d&agrave;ng vệ sinh v&agrave; hạn chế b&aacute;m bẩn v&agrave; mồ h&ocirc;i.</p>', 0, '8000000', '5cca03034d.jpg'),
(26, 'Router Wifi 6 Huawei AX3 băng tần kép 3000Mbps CPU 2 nhân ', '', '', '0', '', 17, 15, '<p><span>Hi&ecirc;̣n nay router chắc chắn là m&ocirc;̣t trong những phụ ki&ecirc;̣n kh&ocirc;ng th&ecirc;̉ nào thi&ecirc;́u đ&ocirc;́i với người dùng c&ocirc;ng ngh&ecirc;̣ phải kh&ocirc;ng nào. Hãy chọn mua ngay Router Wifi Huawei AX3 băng tần k&eacute;p Ax3000 CPU 2 nh&acirc;n&nbsp;t&ocirc;́c đ&ocirc;̣ truy&ecirc;̀n tải nhanh chóng, nhỏ gọn sẽ là sự lựa chọn hoàn hảo cho bạn.</span></p>', 0, '1350000', '24af523530.png'),
(27, 'Samsung Galaxy A12', '', '', '0', '', 5, 6, '<h2><span>Điện thoại Samsung Galaxy A12 &ndash; Smartphone gi&aacute; rẻ cấu h&igrave;nh tốt v&agrave; pin tr&acirc;u</span></h2>\r\n<p><span>Samsung A12</span>&nbsp;l&agrave; một chiếc smartphone gi&aacute; rẻ nhưng sở hữu cấu h&igrave;nh ổn định c&ugrave;ng với vi&ecirc;n pin 5000mAh cho thời lượng suốt ng&agrave;y d&agrave;i. B&ecirc;n cạnh đ&oacute; điện thoại cũng sở hữu thiết kế thời trang v&agrave; ph&ugrave; hợp với xu hướng.</p>\r\n<h3><span>Thiết kế đơn giản, 4 phi&ecirc;n bản m&agrave;u, v&acirc;n tay cạnh b&ecirc;n</span></h3>\r\n<p>Galaxy A12 c&oacute; thiết kế đơn giản với bốn g&oacute;c cạnh được bo tr&ograve;n mềm mại c&ugrave;ng với hai cạnh b&ecirc;n được v&aacute;t cong nhẹ nh&agrave;ng tạo cảm gi&aacute;c cầm thoải m&aacute;i cho người d&ugrave;ng.</p>\r\n<p>B&ecirc;n cạnh đ&oacute; smartphone c&ograve;n được cho ra mắt với nhiều phi&ecirc;n bản m&agrave;u Đen, Trắng, Xanh thời trang để bạn c&oacute; thể lựa chọn m&agrave;u sắc y&ecirc;u th&iacute;ch.</p>', 0, '3950000', 'aaa94c8bfc.jpg'),
(28, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '', '', '0', '', 6, 7, '<h2>Apple Watch SE 40mm - Sang trọng, đẳng cấp như bản cao cấp</h2>\r\n<p>Năm 2020, chắc hẳn c&aacute;c iFan đang h&aacute;o hức đ&oacute;n chờ c&aacute;c si&ecirc;u phẩm được ra mắt từ Apple. Đặc biệt Apple Watch SE 40mm&nbsp; GPS) l&agrave; một trong những phi&ecirc;n bản được Apple ra mắt v&agrave;o năm 2020 v&agrave; đang được nhiều người d&ugrave;ng quan t&acirc;m kh&ocirc;ng k&eacute;m g&igrave; phi&ecirc;n bản ch&iacute;nh thức cao cấp.</p>\r\n<h3>Thiết kế thời trang, m&agrave;n h&igrave;nh Retina LTPO OLED hiển thị chất lượng cao</h3>\r\n<p><a title=\"Đồng hồ Apple Watch ch&iacute;nh h&atilde;ng\" href=\"https://cellphones.com.vn/do-choi-cong-nghe/apple-watch.html\" target=\"_self\">Apple Watch</a>&nbsp;SE 40mm (GPS) c&oacute; thiết kế vừa năng động v&agrave; mang đậm t&iacute;nh thời trang rất giống với thế hệ trước đ&acirc;y m&agrave; nh&agrave; sản xuất Apple đ&atilde; thiết kế.</p>\r\n<p>Hơn thế, d&acirc;y đeo được l&agrave;m từ chất liệu silicon c&oacute; độ đ&agrave;n hồi cao gi&uacute;p người d&ugrave;ng c&oacute; thể đeo trong thời gian d&agrave;i m&agrave; kh&ocirc;ng bị đau tay. Với chất liệu n&agrave;y người d&ugrave;ng dễ d&agrave;ng vệ sinh v&agrave; hạn chế b&aacute;m bẩn v&agrave; mồ h&ocirc;i.</p>', 0, '8000000', '5cca03034d.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(12, 'Banner thiết bị mạng', '5bc7ca4cb1.png', 1),
(13, 'Thiết bị mạng 2', '3b44a42237.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 24, 'Samsung Galaxy A12', '3950000', 'aaa94c8bfc.jpg'),
(6, 6, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '8000000', '5cca03034d.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
