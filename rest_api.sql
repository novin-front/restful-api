-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 09:53 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `title_expenses` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `category_expenses` varchar(70) COLLATE utf8_persian_ci NOT NULL,
  `amount_expenses` int(11) NOT NULL,
  `type_expenses` tinyint(4) NOT NULL,
  `data_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `title_expenses`, `category_expenses`, `amount_expenses`, `type_expenses`, `data_at`) VALUES
(89, 'بلیط اولین همراه کارگاه آنالیتیکس ', 'هزینه', 20000, 0, '2019-09-06 21:39:09'),
(90, 'بلیط زودهنگام ( تا 10 مهر برای 5 نفر)', 'پوشاک', 10000, 1, '2019-09-06 21:39:26'),
(91, '3 نفر اول ', 'حقوق', 25000, 0, '2019-09-06 21:39:40'),
(93, 'بلیط اولین همراه کارگاه آنالیتیکس ', 'حقوق', 20000, 0, '2019-09-07 00:08:55'),
(94, 'بلیط زودهنگام ( تا 10 مهر برای 5 نفر)', 'انتخاب کنید', 10000, 1, '2019-09-07 00:10:05'),
(95, '3 نفر اول ', 'حقوق', 10000, 1, '2019-09-07 00:10:06'),
(96, 'بلیط عادی کارگاه آنالیتیکس', 'خوراک', 200000, 1, '2019-09-07 15:19:43'),
(97, 'آنالیتیکس', 'هزینه', 50, 1, '2019-09-07 15:19:43'),
(98, 'بلیط عادی کارگاه آنالیتیکس', 'هزینه', 200, 0, '2019-09-07 16:47:45'),
(102, 'بلیط اولین همراه کارگاه آنالیتیکس ', 'هزینه', 2000, 0, '2019-09-07 18:42:39'),
(103, '3 نفر اول ', 'خوراک', 20000, 1, '2019-09-07 18:43:20'),
(104, 'بلیط زودهنگام ( تا 10 مهر برای 5 نفر)', 'پوشاک', 200, 1, '2019-09-07 18:43:47'),
(105, 'بلیط گروهی کارگاه گوگل آنالیتیکس', 'پوشاک', 23000, 0, '2019-09-07 18:44:18'),
(106, 'بلیط عادی کارگاه آنالیتیکس', 'پوشاک', 2000, 0, '2019-09-07 19:57:33'),
(107, 'بلیط عادی کارگاه آنالیتیکس', 'خوراک', 5000, 1, '2019-09-07 19:57:55'),
(108, 'end itmes', 'هزینه', 999, 0, '2019-09-08 13:20:50');

-- --------------------------------------------------------

--
-- Table structure for table `form_builder`
--

CREATE TABLE `form_builder` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `form_input` text COLLATE utf8_persian_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `form_builder`
--

INSERT INTO `form_builder` (`id`, `title`, `user_id`, `form_input`, `create_at`) VALUES
(31, 'فرم اصلی', 2, '[{\"type\":\"text\",\"name\":\"text\",\"value\":\"\",\"placeholder\":\"متن تک خطی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"text_0\"},{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_1\"},{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"email_2\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"password_3\"},{\"type\":\"checkbox\",\"name\":\"checkbox\",\"value\":\"\",\"placeholder\":\"چک باکس\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"checkbox_4\"},{\"type\":\"radio\",\"name\":\"radio\",\"value\":\"\",\"placeholder\":\"دکمه رادیویی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"radio_5\"},{\"type\":\"file\",\"name\":\"file\",\"value\":\"\",\"placeholder\":\"آپلود فایل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"file_6\"},{\"type\":\"Hidden\",\"name\":\"Hidden\",\"value\":\"\",\"placeholder\":\"مقدار مخفی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"Hidden_7\"},{\"type\":\"image\",\"name\":\"image\",\"value\":\"\",\"placeholder\":\"مقدار تصویری\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"image_8\"},{\"type\":\"range\",\"name\":\"range\",\"value\":\"\",\"placeholder\":\"بازه\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"range_10\"},{\"type\":\"submit\",\"name\":\"submit\",\"value\":\"ذخیره فرم\",\"placeholder\":\" \",\"readonly\":false,\"required\":false,\"className\":\"btn btn-primary\",\"id\":\"submit_0\"}]', '2019-09-21 22:52:04'),
(32, 'فرم ورود', 2, '[{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"email_7\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"password_8\"},{\"type\":\"submit\",\"name\":\"submit\",\"value\":\"ورود به سایت\",\"placeholder\":\" \",\"readonly\":false,\"required\":false,\"className\":\"btn btn-primary\",\"id\":\"submit_9\"}]', '2019-09-21 23:13:38'),
(34, 'فرم تست', 2, '[{\"type\":\"checkbox\",\"name\":\"checkbox\",\"value\":\"\",\"placeholder\":\"چک باکس\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"checkbox_3\"},{\"type\":\"radio\",\"name\":\"radio\",\"value\":\"\",\"placeholder\":\"دکمه رادیویی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"radio_4\"},{\"type\":\"file\",\"name\":\"file\",\"value\":\"\",\"placeholder\":\"آپلود فایل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"file_5\"},{\"type\":\"image\",\"name\":\"image\",\"value\":\"\",\"placeholder\":\"مقدار تصویری\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"image_6\"},{\"type\":\"submit\",\"name\":\"submit\",\"value\":\"\",\"placeholder\":\"دکمه\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"submit_7\"},{\"type\":\"range\",\"name\":\"range\",\"value\":\"\",\"placeholder\":\"بازه\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"range_8\"},{\"type\":\"range\",\"name\":\"range\",\"value\":\"\",\"placeholder\":\"بازه\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"range_9\"}]', '2019-09-26 21:48:13'),
(38, 'wwwww', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"},{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"email_1\"}]', '2019-10-21 13:04:58'),
(39, 'فرم ویرایش شده', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"},{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"email_1\"}]', '2019-10-21 13:06:40'),
(46, 'wwwww', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"}]', '2019-10-21 13:44:32'),
(56, 'wwwww1', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"}]', '2019-10-21 14:39:43'),
(57, 'wwwww4', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"},{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_1\"}]', '2019-10-21 14:41:17'),
(62, 'ggggggggg', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"password_1\"},{\"type\":\"radio\",\"name\":\"radio\",\"value\":\"\",\"placeholder\":\"دکمه رادیویی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"radio_2\"}]', '2019-10-21 14:46:09'),
(65, 'wwwww666', 2, '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"number_0\"},{\"type\":\"file\",\"name\":\"file\",\"value\":\"\",\"placeholder\":\"آپلود فایل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"file_1\"}]', '2019-10-21 14:53:20'),
(66, 'mmmmmm22222222222', 2, '[{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"email_0\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"password_1\"}]', '2019-10-21 14:58:36'),
(67, 'mohammad', 2, '[{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"email_0\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"password_1\"},{\"type\":\"file\",\"name\":\"file\",\"value\":\"\",\"placeholder\":\"آپلود فایل\",\"readonly\":false,\"required\":false,\"className\":\"form-control\",\"id\":\"file_2\"}]', '2019-10-22 11:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `input_forms`
--

CREATE TABLE `input_forms` (
  `id` int(11) NOT NULL,
  `form_id` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `All_input_Data` text COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `input_forms`
--

INSERT INTO `input_forms` (`id`, `form_id`, `All_input_Data`) VALUES
(38, 'bd2e429bb32b4f3e4722662ce7d307c5d0f03535', '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":[],\"id\":\"number_0\"},{\"type\":\"email\",\"name\":\"email\",\"value\":\"\",\"placeholder\":\"ایمیل\",\"readonly\":false,\"required\":false,\"className\":[],\"id\":\"email_1\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":[],\"id\":\"password_2\"}]'),
(39, '08c5d74598d13b7b5fbdbe94e29a4529ea74bc36', '[{\"type\":\"number\",\"name\":\"number\",\"value\":\"\",\"placeholder\":\"مقدار عددی\",\"readonly\":false,\"required\":false,\"className\":[],\"id\":\"number_0\"},{\"type\":\"password\",\"name\":\"password\",\"value\":\"\",\"placeholder\":\"پسورد\",\"readonly\":false,\"required\":false,\"className\":[],\"id\":\"password_1\"},{\"type\":\"submit\",\"name\":\"submit\",\"value\":\"\",\"placeholder\":\"دکمه\",\"readonly\":false,\"required\":false,\"className\":[],\"id\":\"submit_2\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `mobile` varchar(14) COLLATE utf8_persian_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `is_admin`) VALUES
(2, 'محمد', 'یزدان پناه', '.@gmail.com', '123', '111', 1),
(9, 'آیدا', 'مجتبایی', '40@gmail.com', '', '981-389-0055', 0),
(10, 'خاوردخت', 'مصباح', '_@yahoo.com', '', '850-579-8207', 0),
(11, 'یوشیتا', 'عقیلی', '_@hotmail.com', '', '(372) 919-1379', 0),
(17, 'مه جبین', 'فرمانفرمائیان', '57@yahoo.com', '', '759-458-7021 x', 0),
(18, 'کارو', 'مددی', '65@yahoo.com', '', '190-478-1740', 0),
(20, 'هرمز', 'معروف', '.57@hotmail.com', '', '432.131.7809', 0),
(21, 'مرمر', 'مقدم', '41@yahoo.com', '', '1-836-715-5957', 0),
(22, 'شهرزاد', 'غنی', '_5@yahoo.com', '', '(845) 763-1822', 0),
(23, 'برزین', 'فرهنگ', '31@yahoo.com', '', '(955) 326-2011', 0),
(24, 'مهستی', 'مهاجرانی', '_@gmail.com', '', '1-140-112-8404', 0),
(25, 'جهان ناز', 'کوشکی', '19@hotmail.com', '', '1-883-393-9104', 0),
(26, 'پرتو', 'هاشمی رفسنجانی', '_@hotmail.com', '', '1-564-096-8170', 0),
(27, 'بهنوش', 'محمدرضایی', '37@yahoo.com', '', '999.229.6257 x', 0),
(28, 'مهر آذر', 'علی‌آبادی', '.69@gmail.com', '', '812-072-7628', 0),
(29, 'گل افروز', 'فهمیده', '_@gmail.com', '', '529.906.3168', 0),
(30, 'ساناز', 'فولادوند', '.@gmail.com', '', '985-084-4273 x', 0),
(31, 'یگانه', 'لوکس', '83@hotmail.com', '', '861.938.8057', 0),
(32, 'نسرین دخت', 'نقیب‌زاده', '_@hotmail.com', '', '929-121-5620 x', 0),
(33, 'سپنتا', 'کردبچه', '68@hotmail.com', '', '(255) 360-5277', 0),
(34, 'آریا', 'عصار', '_@yahoo.com', '', '487-713-1272 x', 0),
(35, 'آبان دخت', 'نراقی', '.93@yahoo.com', '', '(991) 603-4065', 0),
(36, 'شادمهر', 'کیان', '.0@gmail.com', '', '(854) 161-7904', 0),
(37, 'تابان', 'ملکیان', '0@hotmail.com', '', '(767) 053-3046', 0),
(38, 'منیژه', 'مرتضوی', '_@gmail.com', '', '1-830-153-3540', 0),
(39, 'فرامرز', 'یلدا', '.25@gmail.com', '', '1-334-587-0003', 0),
(40, 'چوبین', 'کوشکی', '_12@hotmail.com', '', '1-044-266-7997', 0),
(41, 'ارنواز', 'نهاوندی', '31@hotmail.com', '', '1-407-671-9366', 0),
(42, 'زیبار', 'علیا', '.@gmail.com', '', '1-495-074-4072', 0),
(43, 'برزین', 'یاحقی', '_@hotmail.com', '', '211.853.3405', 0),
(44, 'هوردخت', 'میرسپاسی', '_@yahoo.com', '', '1-797-091-1638', 0),
(45, 'شیرین دخت', 'عارف', '8@hotmail.com', '', '(741) 006-0880', 0),
(46, 'خشایار', 'فاطمی', '64@hotmail.com', '', '1-420-372-7541', 0),
(47, 'غنچه', 'قانعی', '.46@gmail.com', '', '642.441.6304 x', 0),
(48, 'مهراندخت', 'هدایت', '.@yahoo.com', '', '(462) 840-1345', 0),
(49, 'آونگ', 'معروف', '.@yahoo.com', '', '1-812-317-5865', 0),
(50, 'طوس', 'ناظری', '_61@hotmail.com', '', '768-605-7199 x', 0),
(51, 'گلبو', 'هومن', '9@gmail.com', '', '308-828-0080', 0),
(52, 'فرخ زاد', 'معروف', '_89@yahoo.com', '', '(324) 251-9209', 0),
(53, 'شهربانو', 'کمالی', '.0@hotmail.com', '', '(505) 757-1419', 0),
(54, 'کارو', 'کهنمویی', '2@yahoo.com', '', '313.058.2083 x', 0),
(55, 'کابان', 'عقیلی', '.@yahoo.com', '', '408-127-2468', 0),
(56, 'سپند', 'قانونی', '_@gmail.com', '', '331-531-1894', 0),
(57, 'شاهین', 'فولادوند', '6@yahoo.com', '', '274.336.2882', 0),
(58, 'بهنوش', 'لنکرانی', '.71@gmail.com', '', '075-318-6669 x', 0),
(59, 'وشمگیر', 'کردبچه', '.@yahoo.com', '', '1-248-855-8737', 0),
(60, 'کانیار', 'نوبخت', '.@yahoo.com', '', '268.450.7158 x', 0),
(61, 'کارا', 'یادگار', '.7@hotmail.com', '', '136.229.3470', 0),
(62, 'پژوا', 'فارسی', '_96@gmail.com', '', '725.923.4703 x', 0),
(63, 'وهرز', 'معارف', '.@gmail.com', '', '604-767-7489 x', 0),
(64, 'اوستا', 'قهرمانیان', '_@hotmail.com', '', '945.083.3776', 0),
(65, 'کیان', 'عنایت', '.78@gmail.com', '', '731.577.5141', 0),
(66, 'افسانه', 'محدثی', '.2@gmail.com', '', '(832) 878-2062', 0),
(67, 'فریوش', 'فتاحی', '47@yahoo.com', '', '(261) 769-0424', 0),
(68, 'کاوه', 'معارف', '53@hotmail.com', '', '053-740-8825 x', 0),
(69, 'شیرین', 'مشا', '.27@gmail.com', '', '410.714.7371 x', 0),
(70, 'فروزنده', 'واعظی', '64@gmail.com', '', '509-559-0481', 0),
(71, 'سروش', 'فرج', '.@yahoo.com', '', '147-290-3217 x', 0),
(72, 'بامشاد', 'قاضی', '.59@gmail.com', '', '1-417-993-4277', 0),
(73, 'گلشید', 'نعمت‌زاده', '53@gmail.com', '', '031.120.5373 x', 0),
(74, 'پولاد', 'موسوی', '6@hotmail.com', '', '982.490.1974', 0),
(75, 'نوش آذر', 'مظفر', '4@yahoo.com', '', '873-506-2760', 0),
(76, 'آهو', 'فانی', '_@yahoo.com', '', '377.686.9283', 0),
(77, 'هوتن', 'واعظی', '.@hotmail.com', '', '922.744.7891 x', 0),
(78, 'مهرنیا', 'ناظری', '60@yahoo.com', '', '461-467-3365', 0),
(79, 'شیوا', 'همت', '_93@yahoo.com', '', '(424) 455-8222', 0),
(80, 'نیک بین', 'معروف', '.54@gmail.com', '', '1-964-325-9407', 0),
(81, 'خداداد', 'واثقی', '_@yahoo.com', '', '(786) 855-8549', 0),
(82, 'اروانه', 'عبدالملکی', '83@yahoo.com', '', '720.817.2553', 0),
(83, 'شادمهر', 'فارسی', '97@gmail.com', '', '1-393-820-0231', 0),
(84, 'ویشتاسب', 'فرمانفرمائیان', '_29@hotmail.com', '', '219.822.5707 x', 0),
(85, 'اشکبوس', 'یلدا', '_@yahoo.com', '', '1-596-159-1112', 0),
(86, 'شکوفه', 'همت', '_@yahoo.com', '', '1-603-756-4324', 0),
(87, 'نرمک', 'گل محمدی', '69@gmail.com', '', '1-408-557-3037', 0),
(88, 'آرمیتا', 'مصباح', '.@gmail.com', '', '088-397-1815', 0),
(89, 'جمشید', 'همت', '29@gmail.com', '', '906-177-8870 x', 0),
(90, 'هورزاد', 'عصار', '.88@yahoo.com', '', '(899) 216-1318', 0),
(91, 'فرشته', 'قمیشی', '36@hotmail.com', '', '958.805.5737 x', 0),
(92, 'گلزاد', 'مجتهدی', '_45@yahoo.com', '', '(929) 763-6448', 0),
(93, 'زادماسب', 'غضنفری', '62@hotmail.com', '', '(015) 984-0395', 0),
(94, 'اردوان', 'یثربی', '_@yahoo.com', '', '339.072.5488', 0),
(95, 'گلنار', 'علی عسگری', '_@yahoo.com', '', '1-330-646-2833', 0),
(96, 'دل آویز', 'عبادی', '78@yahoo.com', '', '1-976-494-3730', 0),
(97, 'بویان', 'نجفی', '_68@gmail.com', '', '120.736.8213 x', 0),
(98, 'آرمیتا', 'همدانی', '_62@gmail.com', '', '1-140-358-0649', 0),
(99, 'جهاندخت', 'مصباح‌زاده', '.@gmail.com', '', '(590) 010-7995', 0),
(100, 'بیتا', 'واعظ‌زاده', '_@gmail.com', '', '971.622.8693 x', 0),
(102, 'خشایار', 'فاطمی', '64@hotmail.com', '', '33', 0),
(103, 'خشایار', 'فاطمی', '64@hotmail.com', '', '33', 0),
(104, 'شیرین دخت', 'عارف', '8@hotmail.com', '', '(741) 006-0880', 0),
(105, '', '', 'w@gmail.com', '456', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_builder`
--
ALTER TABLE `form_builder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input_forms`
--
ALTER TABLE `input_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `form_builder`
--
ALTER TABLE `form_builder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `input_forms`
--
ALTER TABLE `input_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
