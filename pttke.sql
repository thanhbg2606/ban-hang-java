-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 04:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pttke`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `idAccount` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`idAccount`, `username`, `password`) VALUES
(1, 'Quan@gmail.com', '1'),
(2, 'Loan@gmail.com', '1'),
(3, 'Mai@gmail.com', '1'),
(4, 'Hoang@gmail.com', '1'),
(5, 'Son@gmail.com', '1'),
(8, 'Huy@gmail.com', '1'),
(9, 'Loan@gmail.com', '1'),
(10, 'Khanh@gmail.com', '1'),
(12, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `idAddress` int(11) NOT NULL,
  `street` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `district` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`idAddress`, `street`, `district`, `city`) VALUES
(1, 'Tran Phu', 'Ha Dong', 'Ha Noi'),
(2, 'Nguyen Trai', 'Thanh Xuan', 'Ha Noi'),
(3, 'Pham Van Dong', 'Cau Giau', 'Ha Noi'),
(4, 'Tran Duy Hung', 'Cau Giay', 'Ha Giang'),
(5, 'Khuat Duy Tien', 'My Dinh', 'Ha Noi'),
(8, 'Tran Phu', 'Ha Dong', 'Ha Noi'),
(9, 'Ngo Thi Nham', 'Ha Cau', 'Ha Noi'),
(10, 'Ngo Thi Nham', 'Me Linh', 'Ha Noi'),
(12, '18', '18', 'HN');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `idAuthor` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`idAuthor`, `name`, `age`) VALUES
(1, 'Xuan Quynh', 70),
(2, 'To Huu', 50),
(3, 'Xuan Diue', 45),
(4, 'Nam Cao', 50),
(5, 'Nguyen Du', 60),
(6, 'Ha Van Son', 12);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `idBook` int(11) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `quantity` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `image` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idAuthor` int(11) DEFAULT NULL,
  `idPublisher` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`idBook`, `name`, `quantity`, `price`, `description`, `image`, `idCategory`, `idAuthor`, `idPublisher`) VALUES
(1, 'Cuốn Sách Bạn Và Tôi', '2', '96000', 'Thú Phong Lưu Sót Lại', '/image/hoiki1.png', NULL, 1, 1),
(2, 'Khi Hơi Thở Hóa Thịnh Không', '3', '140000', 'Cuốn Sách Thú Vị', '/image/hoiki2.png', NULL, 1, 1),
(3, 'Lũ Quỷ Ám Người', '11', '300000', 'Hồi Ký Viết Dưới Hầm', '/image/hoiki3.png', NULL, 1, 1),
(7, 'Polpot Mổ Xẻ Một Cơn Ác Mộng', '5', '260000', 'Đất Nước Campuchia dưới chế độ tuyệt chủng', '/image/hoiki4.png', NULL, 1, 1),
(8, 'Đắc Nhân Tâm', '5', '86000', 'Cuốn Sách Hay Nhất Mọi Thời Đại', '/image/kynang1.png', NULL, 2, 2),
(9, 'Đọc Vị Bất Kỳ Ai', '2', '63000', 'Để Không Bị Bất Kỳ Ai Lợi Dụng', '/image/kynang2.png', NULL, 2, 2),
(10, 'Giao Tiếp Bất Kỳ Ai', '6', '70000', 'Cách Nâng Cao Kỹ Năng Giao Tiếp', '/image/kynang3.png', NULL, 2, 2),
(11, 'Nhà Giả kim', '5', '70000', 'Cuốn Sách Bán Chạy Chỉ Sau Kinh Thán', '/image/kynang4.png', NULL, 2, 2),
(12, 'Hoàng Hôn Cuối', '4', '98000', 'Một Câu Chuyện Đời Thường Dưới Góc Nhìn Tác Giả', '/image/tt1.png', NULL, 3, 3),
(13, 'Lấy Nước Đường Xa', '5', '69000', 'Cuốn Sách Dựa Trên Một Câu Chuyện Có Thật Châu Phi', '/image/tt2.png', NULL, 3, 3),
(14, 'Những Giấc Mơ Ở Hiệu Sách Mohisaka', '5', '47000', 'Câu Chuyện Về Takako Sau Khi Bỏ Việc', '/image/tt3.png', NULL, 3, 3),
(15, 'Trường Ca Achilles', '6', '125000', 'Trường Ca Bắt Đầu', '/image/tt4.png', NULL, 3, 3),
(16, 'NARUTO Tập 62', '6', '22000', 'Truyện Tranh Thú Vị Hài Hước', '/image/truyen1.png', NULL, 4, 4),
(17, 'Onpice Tập 3', '10', '18000', 'Truyện Phưu Lưu Hay', '/image/truyen2.png', NULL, 4, 4),
(18, 'Onpice Tập 1', '15', '20000', 'Truyện Phiêu Lưu Hài Hước', '/image/truyen3.png', NULL, 4, 4),
(19, 'Thám Tử Lừng Danh Conan', '10', '20000', 'Truyện Trinh Thám Hay', '/image/truyen4.png', NULL, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL,
  `totalQuantity` int(11) DEFAULT NULL,
  `totalPrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idCart`, `totalQuantity`, `totalPrice`) VALUES
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cartbook`
--

CREATE TABLE `cartbook` (
  `idCartBook` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `idBook` int(11) DEFAULT NULL,
  `idCart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartbook`
--

INSERT INTO `cartbook` (`idCartBook`, `price`, `quantity`, `idBook`, `idCart`) VALUES
(18, 10000, 3, 1, 15),
(19, 1000000, 1, 2, 15),
(20, 120000, 1, 3, 15),
(21, 1200000, 1, 15, 16),
(22, 120000, 1, 3, 16),
(23, 1200000, 1, 15, 17),
(25, 63000, 1, 9, 18),
(26, 96000, 2, 1, 18),
(27, 300000, 1, 3, 18),
(28, 70000, 1, 11, 18),
(29, 140000, 2, 2, 19),
(30, 300000, 1, 3, 19),
(31, 96000, 1, 1, 19),
(32, 70000, 2, 10, 20),
(33, 96000, 2, 1, 20),
(34, 140000, 1, 2, 20),
(35, 96000, 3, 1, 21),
(36, 86000, 1, 8, 21),
(37, 63000, 1, 9, 21),
(38, 140000, 1, 2, 21),
(39, 300000, 1, 3, 21);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Hoi ki'),
(2, 'Sach ky nang'),
(3, 'Tieu Thuyet'),
(4, 'Truyen Tranh'),
(5, 'Truyen Ma');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `age` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `gender` varchar(1000) DEFAULT NULL,
  `idFullName` int(11) DEFAULT NULL,
  `idAddress` int(11) DEFAULT NULL,
  `idAccount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `age`, `phone`, `role`, `gender`, `idFullName`, `idAddress`, `idAccount`) VALUES
(1, '20', '0954567452', 'User', 'nam', 1, 1, 1),
(2, '21', '0967882243', 'Admin', 'Nữ', 2, 2, 2),
(3, '18', '0366778899', 'Admin', 'Nữ', 3, 3, 3),
(9, '21', '0987565489', 'User', 'Nam', 8, 8, 8),
(10, '18', '0589654789', 'Admin', 'Nam', 12, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `fullname`
--

CREATE TABLE `fullname` (
  `idFullName` int(11) NOT NULL,
  `firstName` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `lastName` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fullname`
--

INSERT INTO `fullname` (`idFullName`, `firstName`, `lastName`) VALUES
(1, 'Do', 'Quan'),
(2, 'Nguyễn', 'Thị Loan'),
(3, 'Đỗ Thị', 'Mai'),
(4, 'Tran', 'Nhat Hoang'),
(5, 'Ha', 'Van Son'),
(8, 'Nguyen', 'Duc Huy'),
(9, 'Nguyen', 'Ngoc Trinh'),
(10, 'Nguyen', 'Viet Khanh'),
(12, 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `idOrder` int(11) NOT NULL,
  `buyer` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `priceTotal` float DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `idShipment` int(11) DEFAULT NULL,
  `idCart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`idOrder`, `buyer`, `date`, `priceTotal`, `status`, `idShipment`, `idCart`) VALUES
(98, 1, '2021-11-21', 1150000, 'true', 20, 15),
(102, 9, '2021-11-22', 676000, 'true', 23, 19),
(103, 1, '2021-11-22', 472000, 'true', 24, 20),
(104, 1, '2021-11-24', 0, 'false', NULL, 21);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `idPublisher` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`idPublisher`, `name`, `location`) VALUES
(1, 'Hoa Hong', 'Pham Van Dong- Cau Giay- Ha Noi'),
(2, 'Kim Dong', 'Quang Trung-Ha Ba Trung- Ha Noi'),
(3, 'NXB BGD', '81-Tran Hung Dao-Ha Noi'),
(4, 'NXB Hồng Đức', 'Ngô Thì Nhậm-Hà Dông-Hà Nộ'),
(5, 'NXB Thanh Niên', 'Phùng Khoang-Thanh Xuân-Hà Nội'),
(6, 'Nguyen Hong Quan', 'Tran Phu-Ha Dong-Ha Noi');

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `idShipment` int(11) NOT NULL,
  `street` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `district` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `fee` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`idShipment`, `street`, `district`, `city`, `fee`) VALUES
(1, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(2, 'Tien Thinh', 'Me Linh', 'Ha Noi', 0),
(3, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(4, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(15, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(16, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(17, 'Quang Trung', 'Ha Cau', 'Ha Noi', 0),
(18, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(19, 'Quang Trung', 'Ha Cau', 'Ha Noi', 0),
(20, 'Quang Trung', 'Ha Cau', 'Ha Noi', 0),
(21, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(22, 'Tiáº¿n Thá»nh', 'MÃª Linh', 'HÃ  Ná»i', 0),
(23, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0),
(24, 'Quang Trung', 'Ha Dong', 'Ha Noi', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`idAccount`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`idAddress`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`idAuthor`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`idBook`),
  ADD KEY `idAuthor_idx` (`idAuthor`),
  ADD KEY `idPublisher_idx` (`idPublisher`),
  ADD KEY `idCategory_idx` (`idCategory`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`);

--
-- Indexes for table `cartbook`
--
ALTER TABLE `cartbook`
  ADD PRIMARY KEY (`idCartBook`),
  ADD KEY `idCart_idx` (`idCart`),
  ADD KEY `idBook_idx` (`idBook`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idAccount_idx` (`idAccount`),
  ADD KEY `idAddress_idx` (`idAddress`),
  ADD KEY `idFullName_idx` (`idFullName`);

--
-- Indexes for table `fullname`
--
ALTER TABLE `fullname`
  ADD PRIMARY KEY (`idFullName`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idOrder`),
  ADD KEY `userOrder_idx` (`buyer`),
  ADD KEY `idShipment_idx` (`idShipment`),
  ADD KEY `cart_idx` (`idCart`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`idPublisher`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`idShipment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `idAccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `idAddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `idAuthor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `idBook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cartbook`
--
ALTER TABLE `cartbook`
  MODIFY `idCartBook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fullname`
--
ALTER TABLE `fullname`
  MODIFY `idFullName` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `idPublisher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `idShipment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `idAuthor` FOREIGN KEY (`idAuthor`) REFERENCES `author` (`idAuthor`),
  ADD CONSTRAINT `idCategory` FOREIGN KEY (`idCategory`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `idPublisher` FOREIGN KEY (`idPublisher`) REFERENCES `publisher` (`idPublisher`);

--
-- Constraints for table `cartbook`
--
ALTER TABLE `cartbook`
  ADD CONSTRAINT `idBook` FOREIGN KEY (`idBook`) REFERENCES `book` (`idBook`),
  ADD CONSTRAINT `idCart` FOREIGN KEY (`idCart`) REFERENCES `cart` (`idCart`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `idAccount` FOREIGN KEY (`idAccount`) REFERENCES `account` (`idAccount`),
  ADD CONSTRAINT `idAddress` FOREIGN KEY (`idAddress`) REFERENCES `address` (`idAddress`),
  ADD CONSTRAINT `idFullName` FOREIGN KEY (`idFullName`) REFERENCES `fullname` (`idFullName`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `cart` FOREIGN KEY (`idCart`) REFERENCES `cart` (`idCart`),
  ADD CONSTRAINT `idShipment` FOREIGN KEY (`idShipment`) REFERENCES `shipment` (`idShipment`),
  ADD CONSTRAINT `userOrder` FOREIGN KEY (`buyer`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
