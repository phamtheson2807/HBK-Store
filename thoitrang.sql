-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 20, 2024 lúc 10:01 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thoitrang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `image_album` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `albums`
--

INSERT INTO `albums` (`id`, `image_album`, `id_product`) VALUES
(1, '6_LECgQA.jpg', 2),
(2, 'Back_19c4e6cf-bef6-43ad-964b-7d044e110ff1.jpg', 2),
(3, 'Front_a5201810-af0f-4c17-9c10-2bc2783543de.jpg', 2),
(4, 'Front_e7c54e77-b64d-450b-a7d4-880546c88be4_UPDATEcopy.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id_attri` int(11) NOT NULL,
  `color` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  `number_atri` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id_banner` int(11) NOT NULL,
  `image_banner` varchar(256) NOT NULL,
  `title_banner` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL,
  `look_banner` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id_banner`, `image_banner`, `title_banner`, `id_product`, `look_banner`) VALUES
(2, 'banner.jpg', 'Sản phẩm mới ', 2, 0),
(3, 'backgourd.jpg', 'Khuyến mãi quần', 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cates`
--

CREATE TABLE `cates` (
  `id_cate` int(11) NOT NULL,
  `name_cate` varchar(256) NOT NULL,
  `parent_cate` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cates`
--

INSERT INTO `cates` (`id_cate`, `name_cate`, `parent_cate`) VALUES
(1, 'Đồ nam', 1),
(2, 'Đồ nữ', 0),
(6, 'Đồ khác', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id_cm` int(11) NOT NULL,
  `content_cm` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `parent_cm` int(11) NOT NULL DEFAULT 0,
  `hiden_cm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id_cm`, `content_cm`, `product_id`, `user_id`, `date`, `parent_cm`, `hiden_cm`) VALUES
(14, 'asdasd', 3, 2, '2021-11-17 01:42:57', 1, 0),
(15, 'xin', 3, 2, '2021-11-17 02:00:51', 2, 0),
(16, 'cuoi cai dmm\r\n', 3, 2, '2021-11-17 02:01:02', 3, 0),
(17, 'lo', 3, 2, '2021-11-17 02:01:11', 1, 0),
(30, 'lo', 7, 3, '2021-11-22 17:40:24', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `histrorys`
--

CREATE TABLE `histrorys` (
  `id_histrory` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `histrorys`
--

INSERT INTO `histrorys` (`id_histrory`, `id_user`, `id_order`) VALUES
(1, 2, 10),
(3, 2, 19),
(4, 2, 21),
(5, 2, 24),
(6, 2, 25),
(7, 2, 26),
(8, 2, 27),
(9, 2, 28),
(12, 2, 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id_info` int(11) NOT NULL,
  `email_info` varchar(256) NOT NULL,
  `logo` varchar(256) NOT NULL,
  `phone_info` int(11) NOT NULL,
  `adress_info` varchar(256) NOT NULL,
  `thongtin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id_info`, `email_info`, `logo`, `phone_info`, `adress_info`, `thongtin`) VALUES
(1, 'bachctph16049@fpt.edu.vn', 'horizontal_on_white_by_logaster-removebg-preview.png', 392748463, 'Khu phố hàm hạ, đông sơn, thanh hóa', 'Dự án 1 là một môn học trong chương trình đào tạo CNTT của hệ cao đẳng thực hành FPT Polytechnic.  Mục tiêu của môn học này là cung cấp cho sinh viên một cái nhìn tổng quan về việc làm dự án phần mềm theo qui trình công nghiệp sát với thực tế hiện nay. Qua môn học này sinh viên cần biết sử dụng tài liệu dự án được xây dựng sẵn để xây dựng ra một phần mềm – đó là ứng dụng web giới thiệu sản phẩm cho một siêu thị. Trong chương trình đào tạo theo tiêu chuẩn CDIO thì sinh viên cần được huấn luyện các kỹ năng C, D, I, O (Conceiving — Designing — Implementing — Operating). Dự án này rèn luyện cho sinh viên các kỹ năng I và O đồng thời làm nền tảng cho sinh viên rèn luyện các kỹ năng còn lại C và D qua các môn học tiếp sau, trong đó đặc biệt là dự dự án tốt ¬¬ và cả thực tập tốt nghiệp.  Với phương pháp đào tạo đảo ngược như vậy chúng tôi mong muốn sinh viên nghề không những có đủ kỹ năng thực hiện mà còn được rèn luyện thêm kỹ phân tích và thiết kế nhằm giúp sinh viên phát triển sự nghiệp lâu dài học học tiếp lên các cấp độ cao hơn.  Cùng với nhiều lĩnh vực ngành nghề làm đẹp khác thì thời trang luôn là một lĩnh vực kinh doanh rất thu hút bởi thị hiếu quan tâm của người tiêu dùng là rất lớn. Ngày nay cùng với sự phát triển của công nghệ các shop thời trang ngoài việc bán trực tiếp tại cửa hàng thì các chủ shop còn rất chú trọng đến các cửa hàng bán online. Các cửa hàng online cũng rất đa dạng có thể là trên mạng xã hội, trên website, trên di động…');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loves`
--

CREATE TABLE `loves` (
  `id_love` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loves`
--

INSERT INTO `loves` (`id_love`, `pro_id`, `user_id`) VALUES
(3, 2, 2),
(4, 3, 2),
(5, 4, 2),
(20, 7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id_news`, `title`, `content`, `image`, `date`, `author`) VALUES
(7, 'Top 10 cách độc đáo trong game để giúp bạn di chuyển nhanh giữa các địa điểm trên bản đồ', '<p>Di chuyển nhanh (fast travel) là một trong những tính năng phổ biến trong những tựa game hiện nay, nhất là những trò thuộc thể loại thế giới mở. Cơ bản thì chức năng của nó là cho phép người chơi di chuyển nhanh giữa 2 điểm trên bản đồ rộng lớn, giúp game thủ tiết kiệm kha khá thời gian. Thế nhưng một số nhà phát triển đã có những ý tưởng sáng tạo hơn, tạo ra những cơ chế di chuyển nhanh cực kì độc đáo để tựa game trở nên thú vị hơn mỗi khi người chơi sử dụng tính năng này. Sau đây là top 10 cách độc đáo trong game để giúp bạn di chuyển nhanh giữa các địa điểm trên bản đồ.</p><h2><strong>Trạm bọ cánh cứng Stagway – Hollow Knight</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-1024x576.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-1024x576.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-768x432.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8.jpg 1280w\" sizes=\"100vw\" width=\"1024\"></p><p>Thông thường khi nhắc tới fast travel, game thủ sẽ thường nghĩ ngay tới cảnh tượng màn hình chỗ vị trí nhân vật chính đang đứng sẽ tối dần rồi sáng lên ở một vị trí khác. Tuy nhiên trong Hollow Knight, fast travel không đơn giản chỉ là chớp tắt màn hình rồi dịch chuyển nhân vật mà nó sẽ hiển thị một đoạn cắt cảnh bạn đang cưỡi một con Last Stag chạy tới vị trí của mà bạn muốn fast travel tới.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-1024x576.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-1024x576.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-768x432.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5.jpg 1280w\" sizes=\"100vw\" width=\"1024\"></p><p>Last Stag là một con bọ cánh cứng khổng lồ duy nhất còn sống sót của chủng loại bọ cánh cứng. Trong thời kỳ hoàng kim của vương quốc Hallownest, chủng loài của Last Stag thường được sử dụng như một phương tiện vận chuyển người và hàng hóa trên đất liền thông trạm Stagway, nhưng sau sự kiện Hallownest thất thủ thì hầu hết các trạm Stagway đều bị đóng cửa và chủng loài này cũng chết dần. Việc thay vì chớp nhoáng dịch chuyển nhân vật tới nơi cần tới, Hollow Knight sử dụng đoạn cắt cảnh nhân vật chính cưỡi Last Stag chạy qua các bản đồ trong game sẽ tạo ấn tượng hơn đối với người chơi.</p><h2><strong>Thổi sáo trước bức tượng chim đá – The Legend of Zelda: A Link to the past</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1024x519.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-300x152.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1024x519.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-768x389.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1536x779.jpg 1536w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6.jpg 1761w\" sizes=\"100vw\" width=\"1024\"></p><p>The Legend of Zelda là một series game có rất nhiều cách fast travel ngộ nghĩnh nhưng lại tạo được dấu ấn trong lòng game thủ, và một trong số đó là cách dùng sáo đứng thổi trước một bức tượng con chim bằng đá. Cây sáo phép thuật này mới ban đầu hầu như không có tác dụng gì khác ngoài mua vui cho game thủ, tuy nhiên, một khi các bạn đã tới được ngôi làng Kakariko và dùng nó đứng thổi trước một bức tượng chim bằng đá.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-1024x561.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-300x164.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-1024x561.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-768x421.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-1536x842.jpg 1536w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-10.jpg 1703w\" sizes=\"100vw\" width=\"1024\"></p><p>Đứng ngân nga cây sáo một lúc thì bức tượng đá đột nhiên vỡ tan tành, lộ ra bên trong là một chú chim màu trắng mỏ cam tung cánh bay lên bầu trời. Sau khi lượn 1 vòng thì chú chim sẽ leo xuống đất với vận tốc cao, và gắp người chơi lên trên không và bay tới địa điểm mà bạn muốn fast travel tới trên bản đồ game.</p><h2><strong>Cây cột màu xanh lá (Warp Zone) – Super Mario Bros: The Lost Level</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13-1024x660.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13-300x193.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13-1024x660.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13-768x495.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-13.jpg 1379w\" sizes=\"100vw\" width=\"1024\"></p><p>Chắc các bạn cũng không còn lạ gì với cây cột màu xanh lá trong game Mario – thứ mà chuyên môn có một cái cây ăn thịt chui lên và cắn người chơi nếu không nhanh chân nhảy sang chỗ khác ấy. Cái cột màu xanh đó thật chất được gọi là Warp Zone, nó thường được game thủ sử dụng để fast travel nhanh tới một vị trí nào đó trong bản đồ và “skip” qua một số màn chơi nhất định.&nbsp;</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-1024x533.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-300x156.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-1024x533.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-768x400.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-1536x800.jpg 1536w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-9.jpg 1920w\" sizes=\"100vw\" width=\"1024\"></p><p>Đối với Warp Zone trong tựa game Super Mario Bros: The Lost Level thì có chức năng hơi khác một tí. Bạn sẽ chỉ có một cây cột màu xanh để chui vào, và tùy thuộc vào cái cột bạn chọn mà bạn thậm chí có thể quay lại màn chơi trước nếu muốn. Tuy nhiên, The Lost Level có một quy luật đó là nếu như bạn sử dụng Warp Zone để fast travel, màn chơi thứ 9 (World 9) sẽ bị khóa lại. Điều này sẽ ép bạn restart lại game nếu như muốn phá đảo.</p><h2><strong>Cây dù của Fragile – Death Stranding</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-300x169.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-768x432.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1536x864.png 1536w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7.png 2048w\" sizes=\"100vw\" width=\"1024\"></p><p>Trong game Death Stranding, tính năng di chuyển nhanh trên bản đồ sẽ được thực hiện thông qua việc dịch chuyển tức thời (teleport). Nghe thì cũng bình thường thôi, nhưng cái lạ ở đây là bạn sẽ dùng một cây dù của Fragile để dịch chuyển tức thời.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/pasted-image-0-1-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/pasted-image-0-1-300x169.png 300w, https://gstatic.gvn360.com/2021/10/pasted-image-0-1-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/pasted-image-0-1-768x432.png 768w, https://gstatic.gvn360.com/2021/10/pasted-image-0-1-1536x864.png 1536w, https://gstatic.gvn360.com/2021/10/pasted-image-0-1-696x385.png 696w, https://gstatic.gvn360.com/2021/10/pasted-image-0-1-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/pasted-image-0-1.png 1920w\" sizes=\"100vw\" width=\"1024\"></p><p>Sau một số biến cố trong Chương 3, nhân vật chính Sam sẽ mở khóa được kỹ năng di chuyển nhanh đến các cứ điểm (safe house) chỉ bằng cách nhìn vào bức tường – nơi đang có cây dù của Fragile – và bấm nút thực hiện là xong. Fragile sẽ xuất hiện cùng với cây dù, sau đó cô ta cùng với Sam sẽ chạm đầu nhau, và thế là bạn sẽ đến được nơi mà bạn cần đến. Nói không ngoa thì đây cũng chính là cơ chế quái dị nhất trong Death Stranding luôn các bạn ạ.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-300x169.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-768x432.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-6.png 1280w\" sizes=\"100vw\" width=\"1024\"></p><h2><strong>Máy bán hàng tự động – NieR: Automata</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-300x169.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-768x432.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-5.png 1280w\" sizes=\"100vw\" width=\"1024\"></p><p>Cũng như những tựa game khác, tính năng di chuyển nhanh giữa các địa điểm trên bản đồ sẽ không được mở khóa ngay khi bạn mới chơi NieR: Automata. Phải trái qua chơi qua vài màn chơi thì bạn mới sử dụng được tính năng này. Tuy nhiên, để dùng được nó thì bạn sẽ phải phụ thuộc vào Access Point, hay chính xác hơn là những chiếc máy bán hàng tự động đã bị mục nát xuất hiện trong môi trường.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-300x169.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-768x432.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2.png 1200w\" sizes=\"100vw\" width=\"1024\"></p><p>Ngoài việc cho phép bạn lưu game ra thì những chiếc máy bán hàng tự động này còn là trợ thủ đắc lực cho bạn di chuyển tức thời. Cơ chế của nó cũng không có gì quá đặc biệt, bạn chỉ việc bước vào bên trong chiếc máy là xong, nhưng việc dùng một chiếc máy bán hàng bị hỏng để dịch chuyển tức thời trong bối cảnh tương lai xa xôi thì nghe nó hơi quái gở các bạn nhỉ?</p><h2><strong>Bảng di chuyển nhanh – Forza Horizon 3 và 4</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-300x169.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-768x432.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-8.png 1280w\" sizes=\"100vw\" width=\"1024\"></p><p>Dòng game đua xe Forza Horizon vốn dĩ có cơ chế di chuyển nhanh giữa các địa điểm trên bản đồ khá là thú vị, nhưng đến phần Forza Horizon 3 và 4 thì nó đã trở nên hơi bị kì dị một xíu. Trong phần 3, bạn có thể di chuyển nhanh đến các khu lễ hội nhưng nó sẽ tốn của bạn một ít chi phí đó. Để giảm bớt tiền phí này thì bạn có thể phá vỡ các bảng báo hiệu “fast travel”. Riêng trường hợp di chuyển nhanh đến khu lễ hội gần nhất thì sẽ miễn phí nhé. Còn nếu muốn di chuyển nhanh bất cứ nơi đâu trên bản đồ thì bạn phải mở khóa tính năng đặc biệt thì mới được.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-1024x576.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-1024x576.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-768x432.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-1536x864.jpg 1536w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-123.jpg 1920w\" sizes=\"100vw\" width=\"1024\"></p><p>Tính năng di chuyển nhanh trong Forza Horizon 4 phần lớn cũng giống như trong Forza Horizon 3, khác cái là bạn có nhiều nhà đóng vai trò là địa điểm dịch chuyển nhanh. Bạn cũng sẽ tốn phí để làm điều này, và nếu phá vỡ các bảng hiệu “fast travel” thì tiền phí cũng sẽ được giảm. Mặt khác, nếu bạn mua Fairlawn Manor với mức giá 2 triệu thì bạn sẽ mở khóa được tính năng di chuyển nhanh đến bất kỳ nơi đâu trên bản đồ. Trừ khi bạn tìm hiểu thêm về Forza Horizon 4, chứ bình thường thì khó thể nào mà biết được vụ này lắm.</p><h2><strong>Star World – Super Mario World</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-1024x751.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-300x220.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-1024x751.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-768x563.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-80x60.png 80w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-1.png 1500w\" sizes=\"100vw\" width=\"1024\"></p><p>Bản đồ Star World là nơi tất cả con đường Star Road hội tụ, cho nên nó đóng vai trò như là nơi để di chuyển nhanh trong game Super Mario World. Khi bạn tiếp cận được 1 trong những ngôi sao trên bản đồ, bạn sẽ được di chuyển đến Star World. Việc tìm được chìa khóa bí mật và lối ra trong mỗi màn chơi là điều kiện cần thiết để mở lối đi đến ngôi sao tiếp theo, và về sau là mở lối đến Special World.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1-1024x576.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1-300x169.png 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1-1024x576.png 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1-768x432.png 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-1.png 1280w\" sizes=\"100vw\" width=\"1024\"></p><p>Những con đường Star Road có để được dùng để đi thẳng đến lâu đài của tên Bowser đáng ghét, giúp bạn bỏ qua phần lớn hành trình trong game. Vì thế nên bạn nào muốn tiết kiệm thời gian thì có thể cân nhắc chuyện hoàn tất bản đồ Star World nhé.</p><h2><strong>Hố giun – Don’t Starve</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-3.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-3-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-3-768x432.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-3-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-3.jpg 1024w\" sizes=\"100vw\" width=\"1024\"></p><p>Worm Holes (hố giun) trong Don’t Starve là một phương thức di cực kỳ dị hợm trong thế giới game. Nó trông như miệng của một sinh vật sống vậy, khi chui vào đó thì bạn có thể dịch chuyển nhanh giữa các điểm trên bản đồ. Giá phải trả cho phương thức di chuyển này là điểm Sanity (tỉnh táo) của bạn.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1024x576.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1024x576.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-768x432.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-7.jpg 1200w\" sizes=\"100vw\" width=\"1024\"></p><p>Có một số hố giun bị “bệnh” và nếu bạn sử dụng nó thì nó sẽ “chết” luôn. Điểm này củng cố thêm cho quan điểm các “hố giun” là sinh vật sống, bạn nhảy vào miệng nó và ra bằng “cửa hậu”.</p><h2><strong>Giao hàng – Metal Gear Solid 5: The Phantom Pain</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-4.jpg 640w\" sizes=\"100vw\" width=\"640\"></p><p>Với một tựa game nghiêm túc như The Phantom Pain thì cách di chuyển này khá là hài hước. Khi muốn dịch chuyển nhanh giữa các căn cứ của kẻ địch trên bản đồ thì bạn phải đến một điểm trung chuyển hàng của chúng rồi chui vào một cái thùng để ngụy trang thành kiện hàng.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-12.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-12-300x169.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-12-768x432.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-12-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-12.jpg 1024w\" sizes=\"100vw\" width=\"1024\"></p><p>Sau đó thì bạn cần phải đợi một chiếc xe tải giao hàng đến và hốt bạn đi. Mặc dù theo lẽ thường thì cách di chuyển này không kỳ lạ lắm, rất hợp lý là đằng khác nhưng nếu là trong game thì nó lại vô cùng thú vị, xứng đáng được gọi tên trong danh sách này.</p><h2><strong>Tàu điện ngầm – Marvel’s Spider-Man</strong></h2><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-300x179.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-768x459.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-2.jpg 960w\" sizes=\"100vw\" width=\"960\"></p><p>Spider-Man đúng là có thể bay nhảy rất linh hoạt nhưng khi đi từ điểm này đến điểm kia cách xa thật xa thì anh chàng không thể chỉ đu bay như thế được. Lúc này thì Spider-Man sẽ đi tàu điện ngầm, nghe vừa hợp lý lại vừa hài đấy chứ.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-1024x575.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-300x168.jpg 300w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-1024x575.jpg 1024w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-768x431.jpg 768w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-1536x862.jpg 1536w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Top-10-cach-doc-dao-trong-game-de-giup-ban-di-chuyen-nhanh-giua-cac-dia-diem-tren-ban-do-11.jpg 1920w\" sizes=\"100vw\" width=\"1024\"></p><p>Bạn sẽ đi qua đi lại trong đó và chờ game load bản đồ của điểm tiếp theo. Cách thức di chuyển này vừa giúp trải nghiệm của game thủ liền lạc và giống thực tế, vừa giúp nhà phát triển khỏi làm thêm máy phân cảnh chờ load game nữa. Đúng là thông minh phải không các bạn?</p><p><strong>Mời các bạn tham khảo thêm một số thông tin liên quan tại GVN 360 như:</strong></p><ul><li><a href=\"https://gvn360.com/tin-game/top-8-sang-kien-bien-save-game-tu-thao-tac-nham-chan-thanh-diem-nhan-doc-dao-trong-game/\">Top 8 sáng kiến biến save game từ thao tác nhàm chán thành điểm nhấn độc đáo trong game</a></li><li><a href=\"https://gvn360.com/tin-game/top-10-thu-thuat-giau-canh-loading-day-sang-tao-giup-game-thu-khong-bi-mat-kien-nhan/\">Top 10 thủ thuật giấu cảnh loading đầy sáng tạo giúp game thủ không bị mất kiên nhẫn</a></li><li><a href=\"https://gvn360.com/tin-game/top-10-chieu-tro-che-mat-game-thu-tuy-don-gian-nhung-cuc-ky-hieu-qua-trong-game/\">Top 10 chiêu trò che mắt game thủ tuy đơn giản nhưng cực kỳ hiệu quả trong game</a></li><li><a href=\"https://gvn360.com/tin-game/top-10-chieu-tro-cuc-doc-ma-nha-phat-trien-su-dung-de-gai-hang-game-thu/\">Top 10 chiêu trò cực độc mà nhà phát triển sử dụng để gài hàng game thủ</a></li></ul><p><i><strong>Nguồn:</strong> </i><a href=\"https://gamingbolt.com/14-weird-methods-of-fast-travel-in-video-games/\"><i>Gaming Bolt</i></a></p>', 'DoUg8FWfN2Ad8NZouETawW.jpg', '2021-10-09 11:31:19', 'bách chu đẹp trai'),
(8, 'Nông dân mở khóa công lực card đồ họa Nvidia LHR bằng cách đào 2 coin cùng 1 lúc', '<p><i><strong>Tuy nhiên, card Nvidia RTX 3060 Ti và RTX 3070 LHR chưa chắc đã phù hợp để đào 2 coin cùng 1 lúc đâu nhé.</strong></i></p><p>T-Rex là một phần mềm đào tiền ảo, và vừa rồi nó đã mở khóa được đến 70% công lực đào coin của card đồ họa Nvidia GeForce RTX 30-series LHR. Tuy nhiên, T-Rex còn có thêm một tính năng khá đặc biệt là cho phép nông dân đào 2 loại tiền ảo khác nhau trong cùng 1 lúc, nghĩa là nó cho phép tận dụng 30% hiệu năng còn lại để đào cái khác.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1024x574.png\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Nvidia-LHR-300x168.png 300w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1024x574.png 1024w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-768x431.png 768w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1536x862.png 1536w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-696x385.png 696w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1068x580.png 1068w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR.png 1920w\" sizes=\"100vw\" width=\"1024\"></p><p>Hiện tại vẫn chưa có phần mềm nào có thể mở khóa 100% hiệu năng đào coin của card Nvidia LHR, nhưng chí ít thì T-Rex cho phép nông dân khai thác hầu hết hiệu năng đào coin của card đồ họa GeForce LHR. Khi bật tính năng này, bạn có thể dùng đến 30% hiệu năng để đào Ethereum (ETH), 70% còn lại thì có thể dùng cho Ergo (ERG), Ravencoin (RVN), Cornflux (CFX) chẳng hạn. Vẫn chưa rõ vì sao T-Rex không cho người dùng làm điều ngược lại: 70% cho ETH, 30% cho coin khác.</p><p>Mỗi loại tiền ảo sẽ cần dung lượng VRAM khác nhau, cho nên không phải combo nào cũng chơi được đâu nhé. Chẳng hạn, đào Ethereum và Ergo cần hơn 8 GB VRAM, còn đào Ethereum với Ravencoin hoặc Cornflux thì cần hơn 10 GB VRAM. Cơ bản thì điều này nghĩa là RTX 3060 Ti và RTX 3070 sẽ không phù hợp lắm với tính năng đào 2 coin cùng 1 lúc của T-Rex, vì nó chỉ có 8 GB VRAM GDDR6 mà thôi.</p><p><img src=\"https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1024x683.jpg\" alt=\"\" srcset=\"https://gstatic.gvn360.com/2021/10/Nvidia-LHR-300x200.jpg 300w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1024x683.jpg 1024w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-768x512.jpg 768w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1536x1025.jpg 1536w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-696x385.jpg 696w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR-1068x580.jpg 1068w, https://gstatic.gvn360.com/2021/10/Nvidia-LHR.jpg 1920w\" sizes=\"100vw\" width=\"1024\"></p><p><i>Frankfurt, Hesse, Germany – April 17, 2018: Many coins of various cryptocurrencies</i></p><p>Hàng phòng thủ của card Nvidia LHR vẫn chưa bị đâm thủng hoàn toàn, nhưng tính ra thì điều này cũng không còn quá quan trọng cho lắm. Lý do là vì trong vài tháng tới, Ethereum sẽ chuyển từ giao thức Proof-of-Work (POW) sang Proof-of-Stake (POS) để hạn chế việc nông dân gom card đồ họa về làm trâu cày. Có thể lúc đó các nông dân sẽ xả chuồng trâu, bán lại card để thu hồi vốn, hoặc có thể chuyển sang đào một loại tiền ảo khác cũng nên.</p><p><strong>Tóm tắt ý chính:</strong></p><ul><li>Phần mềm đào tiền ảo T-Rex đã mở khóa được đến 70% công lực đào coin của card Nvidia RTX 30-series LHR</li><li>Nó còn có tính năng cho phép tận dụng 30% hiệu năng còn lại để đào 2 loại tiền ảo trong cùng 1 lúc</li><li>T-Rex cho phép dùng 30% hiệu năng để đào Ethereum, 70% còn lại thì có thể dùng cho Ergo, Ravencoin, Cornflux</li><li>Vẫn chưa rõ vì sao T-Rex không cho người dùng làm ngược lại: 70% cho ETH, 30% cho coin khác</li></ul><p><strong>Mời các bạn tham khảo thêm một số thông tin liên quan tại GVN 360 như:</strong></p><ul><li><a href=\"https://gvn360.com/tin-game/dong-ethereum-khien-card-khan-hang-toan-cau-sinh-ra-tu-moi-thu-cua-nha-sang-lap-voi-blizzard/\">Đồng Ethereum khiến card khan hàng toàn cầu sinh ra từ “mối thù” của nhà sáng lập với Blizzard</a></li><li><a href=\"https://gvn360.com/cong-nghe/tin-cong-nghe/nong-dan-se-bot-lua-trau-ve-chuong-nho-ethereum-doi-cach-dao-nhung-game-thu-se-phai-cho-den-2022/\">Nông dân sẽ bớt lùa trâu về chuồng nhờ Ethereum đổi cách đào, nhưng game thủ sẽ phải chờ đến 2022</a></li><li><a href=\"https://gvn360.com/cong-nghe/chi-giam-voi-ethereum-rtx-3070-ti-dao-coin-khac-van-khoe-nhu-trau/\">Chỉ giảm với Ethereum, RTX 3070 Ti đào coin khác vẫn khỏe như trâu</a></li></ul><p><i><strong>Nguồn:</strong> </i><a href=\"https://www.tomshardware.com/news/new-software-lets-you-mine-two-different-cryptocurrencies-at-once-on-lhr-nvidia-cards\"><i>tom’s HARDWARE</i></a></p><p><i><strong>Mời các bạn theo dõi fanpage của chúng mình theo đường link dưới đây để cập nhật những tin tức về game, công nghệ và nhiều thông tin thú vị khác nữa nhé!</strong></i></p><h2><a href=\"https://www.facebook.com/gvn360\"><i><strong>GVN 360</strong></i></a></h2>', 'VuLan-NF.png', '2021-10-09 11:32:32', 'bách chu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `phone_order` int(11) NOT NULL,
  `email_order` varchar(256) NOT NULL,
  `adress_order` varchar(256) NOT NULL,
  `name_order` varchar(256) NOT NULL,
  `content_order` text NOT NULL,
  `date_order` datetime NOT NULL,
  `action` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id_order`, `total_order`, `phone_order`, `email_order`, `adress_order`, `name_order`, `content_order`, `date_order`, `action`) VALUES
(8, 360000, 392748463, 'tranminhduc@gmail.com', 'thanh hóa', 'Trần Minh Đức', 'hihi', '2021-11-22 05:30:58', 0),
(9, 1650000, 1234123123, 'nguyenngocanh@fpt.com', 'hà nội', 'Nguyễn Ngọc Ánh', 'đánh chết cha mày giờ', '2021-11-22 05:33:33', 3),
(10, 2080000, 1223123123, 'phanthanhhoa@gmail.com', 'hà nội', 'Phan Thanh Hòa', 'oke', '2021-11-22 05:35:40', 1),
(11, 3150000, 213123, 'lehoang123@sdfa', 'hhi', 'Lê Hoàng', '1231', '2021-11-22 17:38:46', 3),
(12, 20600000, 12314212, 'nguyenvanbao@gmail.com', 'ko', 'Nguyễn Văn Bảo', '12312312', '2021-11-22 23:07:31', 3),
(13, 24600000, 2147483647, 'dinhthithanh@gmail.com', 'từ sơn bắc ninh', 'Đinh Thị Thanh', '12312312', '2021-11-22 23:10:02', 0),
(14, 400000, 392748463, 'lethidieu@gmail.com', 'thanh hóa', 'Lê Thị Diệu', 'cảm ơn shop', '2021-11-24 01:49:45', 0),
(15, 600000, 213123123, 'phamvanhung@gmail.com', 'thanh hóa', 'Phạm Văn Hùng', '123123123', '2021-11-24 01:50:59', 0),
(16, 400000, 123, 'tranminhhieu@qweq', '123', 'Trần Minh Hiếu', '123', '2021-11-24 15:01:44', 0),
(17, 800000, 12312, 'phamvanbao@gmai', 'qưe', 'Phạm Văn Bảo', 'qe', '2021-11-24 15:19:07', 0),
(18, 320000, 123, 'nguyenhoanglong@gmail', '123', 'Nguyễn Hoàng Long', '123123', '2021-11-24 15:27:02', 0),
(19, 600000, 123, 'phamhongquang@gmail', '123', 'Phạm Hồng Quang', '123', '2021-11-24 17:42:30', 1),
(20, 1000000, 123123, 'phamquanghuy@fpt.edu.vn', 'hà nội', 'Phạm Quang Huy', '123123', '2021-11-24 17:45:02', 0),
(21, 600000, 123, 'buihuynhduc@dfsd', '123', 'Bùi Huỳnh Đức', '123', '2021-11-28 17:26:19', 2),
(22, 800000, 2147483647, 'nguyenhoangan@gmail.com', 'thanh hóa', 'Nguyễn Hoàng An', 'vlol', '2021-11-29 15:40:26', 0),
(23, 200000, 392748463, 'nguyenminhtri@gmail.com', 'thanh hóa', 'Nguyễn Minh Trí', 'sfasfasfasfasfasfasfa', '2021-12-06 01:24:04', 0),
(24, 300000, 24823421, 'hoangtrungdung@gmail.com', 'hà nội xịn', 'Hoàng Trung Dũng', 'afasfasfasfsa', '2021-12-06 01:41:35', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id_detail` int(11) NOT NULL,
  `quantity_detail` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id_detail`, `quantity_detail`, `order_id`, `product_id`) VALUES
(21, 1, 8, 8),
(22, 1, 9, 9),
(23, 3, 9, 7),
(24, 2, 10, 2),
(25, 4, 10, 7),
(26, 3, 11, 7),
(27, 5, 11, 8),
(28, 2, 12, 9),
(29, 100, 12, 6),
(30, 123, 13, 6),
(31, 2, 14, 6),
(32, 3, 15, 6),
(33, 2, 16, 6),
(34, 4, 17, 6),
(35, 1, 18, 5),
(36, 3, 19, 6),
(37, 5, 20, 6),
(38, 3, 21, 6),
(39, 4, 22, 6),
(40, 1, 23, 6),
(41, 1, 24, 9),
(42, 1, 25, 9),
(43, 1, 26, 9),
(44, 1, 27, 9),
(45, 1, 28, 9),
(48, 2, 31, 2),
(49, 2, 32, 2),
(50, 2, 33, 2),
(51, 2, 34, 2),
(52, 2, 35, 2),
(53, 2, 36, 2),
(54, 2, 37, 2),
(55, 2, 38, 2),
(56, 4, 39, 6),
(57, 1, 40, 9),
(58, 1, 40, 8),
(59, 2, 41, 9),
(60, 1, 41, 3),
(61, 1, 42, 37),
(62, 1, 42, 7),
(63, 1, 43, 37),
(64, 1, 43, 7),
(65, 1, 44, 6),
(66, 4, 45, 6),
(67, 1, 46, 9),
(68, 4, 47, 8),
(69, 4, 48, 8),
(70, 1, 48, 9),
(71, 1, 48, 37),
(72, 2, 49, 9),
(73, 1, 49, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_pro` int(11) NOT NULL,
  `title_pro` varchar(256) NOT NULL,
  `content_pro` text NOT NULL,
  `thongtin` varchar(256) NOT NULL,
  `image_pro` varchar(256) NOT NULL,
  `quantity_pro` int(11) NOT NULL,
  `price_pro` int(11) NOT NULL,
  `sale_pro` int(11) NOT NULL,
  `date_pro` datetime NOT NULL,
  `special_pro` int(11) NOT NULL DEFAULT 0,
  `view_pro` int(11) NOT NULL,
  `hiden_pro` int(11) NOT NULL DEFAULT 0,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_pro`, `title_pro`, `content_pro`, `thongtin`, `image_pro`, `quantity_pro`, `price_pro`, `sale_pro`, `date_pro`, `special_pro`, `view_pro`, `hiden_pro`, `cate_id`) VALUES
(2, 'SP350 - Áo Vét Spandex Maxxxx', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-1_x1800.png', 286, 200000, 40, '2021-11-16 15:56:54', 0, 94, 0, 1),
(3, 'SP350 - Áo Trắng Spandex ', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-3_x1800.png', 230, 200000, 20, '2021-11-16 17:47:36', 0, 31, 0, 1),
(4, 'SP350 - Áo quần Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-5_x1800.png', 336, 700000, 20, '2021-11-16 17:49:11', 0, 25, 0, 1),
(5, 'SP350 - Quần Đen Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-7_x1800.png', 1289, 400000, 20, '2021-11-16 17:50:23', 0, 7, 0, 1),
(6, 'SP350 - Áo Trắng Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-9_x1800.png', 2841, 200000, 0, '2021-11-16 17:51:09', 0, 12, 0, 1),
(7, 'SP350 - Quần dài Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-11_x1800.png', 300, 500000, 10, '2021-11-16 18:37:13', 0, 3, 0, 2),
(8, 'SP350 - Áo hodie Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-13_x1800.png', 113, 400000, 10, '2021-11-16 18:38:39', 0, 16, 0, 2),
(9, 'SP350 - Áo hoddie Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'UNIONESSENTIALS-15_x1800.png', 277, 300000, 0, '2021-11-16 18:40:04', 0, 28, 0, 2),
(37, 'SP350 -  Spandex Max', '<ul><li>Chất vải: Linen mềm mịn, siêu mát, thấm hút mồ hôi nhanh</li><li>Form chuẩn, thoải mái</li><li>Mang lại vẻ đẹp sang trọng, tinh tế</li><li>Có thể mặc đi chơi, đi du lịch, dạo phố,...</li><li>Hình ảnh chân thật, sản phẩm đúng như mô tả</li><li>Đường may rất tỉ&nbsp;mỉ, chắc chắn.</li></ul>', 'Sản phẩm được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách , Hàng có sẵn, giao hàng ngay khi nhận được đơn  , Hỗ trợ đổi trả theo quy định của Shopee', 'OAT_ADULT_SIDE_OUT_x1800.jpg', 997, 1200000, 20, '2021-12-06 17:47:45', 1, 4, 0, 1),
(38, 'xxx', '<p>xxx</p>', 'xxx', 'Front_e7c54e77-b64d-450b-a7d4-880546c88be4_UPDATEcopy.jpg', 5, 555, 5, '2023-05-24 16:43:37', 0, 3, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `adress` varchar(256) NOT NULL,
  `pass` varchar(256) NOT NULL,
  `avatar` varchar(256) NOT NULL,
  `role` int(11) NOT NULL,
  `look` int(11) NOT NULL DEFAULT 0,
  `code_mk` varchar(256) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id_user`, `email`, `phone`, `name`, `adress`, `pass`, `avatar`, `role`, `look`, `code_mk`) VALUES
(2, 'admin@gmail.com', 24823421, 'Admin', 'hà nội xịn', '123', '2.jpg', 0, 0, '0'),
(3, 'user@gmail.com', 964842220, 'User', 'thanh hóa xịn ', '123', '3.jpeg', 2, 0, '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id_attri`),
  ADD KEY `attributes_ibfk_1` (`pro_id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id_cate`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_cm`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `histrorys`
--
ALTER TABLE `histrorys`
  ADD PRIMARY KEY (`id_histrory`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `histrorys_ibfk_2` (`id_user`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id_info`);

--
-- Chỉ mục cho bảng `loves`
--
ALTER TABLE `loves`
  ADD PRIMARY KEY (`id_love`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_pro`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id_attri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `cates`
--
ALTER TABLE `cates`
  MODIFY `id_cate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id_cm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `histrorys`
--
ALTER TABLE `histrorys`
  MODIFY `id_histrory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `loves`
--
ALTER TABLE `loves`
  MODIFY `id_love` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `histrorys`
--
ALTER TABLE `histrorys`
  ADD CONSTRAINT `histrorys_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `histrorys_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `loves`
--
ALTER TABLE `loves`
  ADD CONSTRAINT `loves_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loves_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id_cate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
