-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2023 at 06:39 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teeopedi_landing_page`
--

-- --------------------------------------------------------

--
-- Table structure for table `advantages`
--

CREATE TABLE `advantages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `details` text NOT NULL,
  `heading` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advantages`
--

INSERT INTO `advantages` (`id`, `product_id`, `details`, `heading`, `created_at`, `updated_at`) VALUES
(1, 48, 'ওমেগা- ৩ পলিআনস্যাচুরেটেড ফ্যাটি অ্যাসিডযুক্ত ডায়েটরি সরিষার তেল ডায়েটরি ফিশ অয়েল বা কর্ন অয়েলের তুলনায় প্রানীদের কোলন ক্যান্সার হ্রাস করতে খুব কার্যকর।', 'ক্যান্সার প্রতিরোধ করে', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(2, 48, 'সর্দি কাশি কমাতে সরিষার তেল অনেক উপকারী। সরিষার তেল অ্যাজমা সমস্যা দূর করে। সরিষার তেল দিয়ে বানানো পেঁয়াজ ও কাঁচামরিচের ভর্তা কফ তরল করতে সাহায্য করে।', 'সর্দি কাশি কমাতে', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(3, 48, 'একাধিক গবেষণায় এটা প্রমাণিত হয়েছে যে, নিয়মিত সরিষার তেল দিয়ে রান্না করা খাবার খেলে হার্টের কোন ক্ষতি হয়না। সেই সাথে হঠাৎ হার্ট অ্যাটাকের আশঙ্কা কমে আসে।', 'হার্টের সমস্যা সমাধান করে', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(4, 48, 'বাত ব্যাথা, জয়েন্টের ব্যথা, হাঁটুর ব্যথা বিভিন্ন রকম ব্যথায় জর্জরিত, এর থেকে নিরাময়ের জন্য আপনি ঘানি ভাঙ্গা খাঁটি সরিষার তেলের উপর নির্ভর করতে পারেন।', 'শরীর ব্যথা কমাতে', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(5, 48, 'চুলের যত্নে সরিষার তেল ব্যবহার করলে চুল মজবুত থাকে। সরিষার তেলের পুষ্টি উপাদান, ভিটামিন ও মিনারেল চুলের অকালপক্বতা রোধ করে। এছাড়াও সরিষার তেলে অ্যান্টি-অক্সিড্যান্ট, বিটা ক্যারোটিন, ওমেগা থ্রি ফ্যাটি এসিড যা চুল বৃদ্ধি করতে সাহায্য করে।', 'চুলের যত্নে সরিষার তেল', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(6, 48, 'সরিষার তেলে উচ্চ মাত্রায় ভিটামিন -ই থাকায় ক্ষতিকর আল্ট্রাভায়োলেট রশ্মি থেকে এবং অনান্য দৃষ্টিতে পদার্থ থেকে ত্বককে সুরক্ষা করে। ভিটামিন -ই বলিরেখা এবং বয়সের ছাপ দূর করতে সাহায্য করে।', 'প্রাকৃতিক সানস্ক্রিন', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(7, 48, 'সরিষার তেলে থাকা ওমেগা -৩, ওমেগা-৬, ফ্যাটি এসিড এবং ভিটামিন পুষ্টি-ই শরীরকে প্রয়োজনীয় সরবরাহ করে এবং রোগ প্রতিরোধ ক্ষমতা বাড়ায়। রান্নায় সরিষার তেল ব্যবহারে অনেক মারাত্মক রোগ থেকে মুক্ত ও সুস্থ থাকা যায়। এছাড়াও সরিষার তেলে মনোস্যাচুরেটেড ও পলি অনস্যাচুরেটেড ফ্যাট থাকে, যা হার্টের জন্য উপকারী। গ্যাস বা বদহজম জনিত পেটের ব্যাথা অনুভব হলে অনেক সময় সরিষার তেল মালিশে অনেক আরামবোধ হয় ও সেরে যায়।', 'রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে', '2023-11-05 15:39:59', '2023-11-05 15:39:59'),
(9, 173, 'Occasion: Work/Versatile\r\nMaterial: Genuine Leather.\r\nSize (Dimension): Height: 8″, Width: 4″\r\nInterior Details: 1 bill compartment, 1 phone slot and 7 credit card slots & 1 coin chamber\r\nExterior Details: Luxury Elephants Texture Long-Wallet.\r\nClosure: Button\r\nColor: Pure Black.', 'Details', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `thana_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Pending,1=On The Way,2=Processing,3=Completed,4=Canceled,5=Failed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_addresses`
--

INSERT INTO `billing_addresses` (`id`, `name`, `phone`, `email`, `country_id`, `division_id`, `district_id`, `thana_id`, `address`, `zip_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Anik', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 188, 'Road-2', '1216', 1, '2023-03-26 04:38:47', '2023-03-26 04:38:47'),
(2, 'Anik', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 188, 'Road-2', '1216', 1, '2023-03-26 04:42:33', '2023-03-26 04:42:33'),
(3, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 166, 'Road-2', '1216', 1, '2023-03-26 05:29:13', '2023-03-26 05:29:13'),
(4, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 165, 'Road-2', '1216', 1, '2023-03-26 05:30:27', '2023-03-26 05:30:27'),
(5, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 167, 'Road-2', '1216', 1, '2023-03-26 05:32:15', '2023-03-26 05:32:15'),
(6, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 3, 361, 'Road-2', '1216', 1, '2023-03-26 05:33:29', '2023-03-26 05:33:29'),
(7, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 164, 'Road-2', '1216', 1, '2023-03-26 05:36:05', '2023-03-26 05:36:05'),
(8, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 2, 275, 'Road-2', '1216', 1, '2023-03-26 05:36:56', '2023-03-26 05:36:56'),
(9, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 9, 254, 'Road-2', '1216', 1, '2023-03-26 06:09:21', '2023-03-26 06:09:21'),
(10, 'Anik Rahman', '01456874545', 'a7604366@gmail.com', 1, 1, 1, 188, 'Mirpur 12', '1216', 1, '2023-03-26 13:43:02', '2023-03-26 13:43:02'),
(11, 'joker', '01256984545', 'joker@gmail.com', 1, 1, 1, 166, 'Kuril', '1254', 1, '2023-03-26 13:51:04', '2023-03-26 13:51:04'),
(12, 'Anik Rahman', '01740829980', 'a7604366@gmail.com', 1, 1, 1, 166, 'Road-2', '1216', 1, '2023-03-26 15:32:19', '2023-03-26 15:32:19'),
(13, 'joker', '01458465445', 'joker@gmail.com', 1, 1, 3, 369, 'dawdwd', '1544', 1, '2023-03-26 15:36:51', '2023-03-26 15:36:51'),
(14, 'joker', '01458465445', 'joker@gmail.com', 1, 1, 2, 276, 'dawdwd', '2541', 1, '2023-03-26 15:42:02', '2023-03-26 15:42:02'),
(15, 'joker', '01458465445', 'joker@gmail.com', 1, 1, 1, 165, 'dawdwd', '5626', 1, '2023-03-26 15:44:02', '2023-03-26 15:44:02'),
(16, 'sajib', '01730722887', 'pharmakondrug@gmail.com', 1, 1, 1, 173, 'House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.', '1000', 1, '2023-06-26 00:12:03', '2023-06-26 00:12:03'),
(17, 'Mahmuda Sarker', '01730722887', 'pharmakondrug@gmail.com', 1, 1, 1, 173, 'House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.', '1000', 1, '2023-06-26 00:57:01', '2023-06-26 00:57:01'),
(18, 'admin', '01715587496', 'admin@admin.com', 1, 1, 1, 163, 'dhaka', '1202', 1, '2023-06-26 02:27:17', '2023-06-26 02:27:17'),
(19, 'admin', '01715587496', 'admin@admin.com', 1, 1, 1, 163, 'd', '1222', 1, '2023-06-26 02:30:15', '2023-06-26 02:30:15'),
(20, 'admin', '01715587496', 'admin@admin.com', 1, 1, 1, 176, 'dd', '1213', 1, '2023-06-26 02:32:24', '2023-06-26 02:32:24'),
(21, 'Mahmuda Sarker', '01730722887', 'pharmakondrug@gmail.com', 1, 1, 1, 163, 'House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.', '1000', 1, '2023-07-01 04:27:15', '2023-07-01 04:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author`, `slug`, `short_desc`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Where Being Retired Doesn’t Feel Old', 'Arman Ibna Solaiman', 'where-being-retired-doesnt-feel-old', 'Learn the styles to wear that\'ll make you look good.If you’ve ever read a blog post, you’ve consumed content from a thought leader that is an expert in their industry. Chances are if the blog post was written effectively, you came away with helpful knowledge and a positive opinion about the writer or brand that produced the content.', '<p>Learn the styles to wear that&#39;ll make you look good.</p>\r\n\r\n<p>Where to shop so you&#39;re not wasting time on your own.</p>\r\n\r\n<p>Feel more confident with over 100 different outfit ideas already put together for you.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>No more dressing frumpy.</p>\r\n\r\n<p>Feeling old.</p>\r\n\r\n<p>Or, bored with your look.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>YOUR NEW STYLE STARTS HERE:</h2>', '1-1679254307.png', 1, '2023-03-19 13:11:03', '2023-03-29 19:06:10'),
(6, 'Best Outfits for Vacation', 'Alice Emerson', 'best-outfits-for-vacation', 'With fashion businesses recognizing the benefits that blogging can bring to their websites, it’s understandable that many are rushing to create their own blogs. There is no shortage of potential blog post topics to select from, and a fashion blog is not only cheaper than traditional advertising, but it can have greater reach as well.', '<p>With fashion businesses recognizing the benefits that blogging can bring to their websites, it&rsquo;s understandable that many are rushing to create their own blogs. There is no shortage of&nbsp;<a href=\"https://thecontentpanel.com/blog-post-ideas/\">potential blog post topics</a>&nbsp;to select from, and a fashion blog is not only cheaper than traditional advertising, but it can have greater reach as well.</p>\r\n\r\n<p>Fashion is an everchanging subject that can give rise to new trends overnight, so fashion aficionados will be looking for blogs with daily updates of expert insights, creative guides, and general news regarding what is currently stylish. Having an informative fashion blog on your website is important in not only bringing in new customers to your site but also in giving your readers the confidence that your business is genuinely interested in fashion trends.</p>\r\n\r\n<p>Although the benefits of maintaining a professional business blog are great, it can be difficult, especially for small businesses, to find the time to research and write engaging blog posts. If working on your business leaves you with little time to care for a blog, you should consider using our&nbsp;<a href=\"https://thecontentpanel.com/blog-writing-service/\" rel=\"noreferrer noopener\" target=\"_blank\">blog writing services</a>.</p>', '2-1679254327.png', 1, '2023-03-19 13:18:17', '2023-03-19 13:32:07'),
(7, 'Celebrity Outfits To Add To Your Mood Board', 'Adnan', 'celebrity-outfits-to-add-to-your-mood-board', 'Having a great sense of style and affinity for new trends, it’s no wonder why you’d want to become a fashion blogger. In much the same way as fashion transcends borders, creating a blog lets you bring your ideas and expertise onto the global stage.  \r\nake money with it.', '<p>Having a great sense of style and affinity for new trends, it&rsquo;s no wonder why you&rsquo;d want to become a fashion blogger. In much the same way as fashion transcends borders, <a href=\"https://www.wix.com/start/blog\" rel=\"noopener noreferrer\" target=\"_blank\">creating a blog</a> lets you bring your ideas and expertise onto the global stage.</p>\r\n\r\n<p>There are several things to consider before becoming a successful blogger, such as defining your audience, setting up an online presence and publishing the right type of content. This article offers a step-by-step overview of how to start a fashion blog and make money with it.</p>', '3-1679254338.png', 1, '2023-03-19 13:20:21', '2023-03-19 13:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `short_desc`, `parent_id`, `img`, `status`, `created_at`, `updated_at`) VALUES
(12, 'PRINTED T SHIRT', 'printed-t-shirt', NULL, 0, NULL, 1, '2023-03-19 11:46:43', '2023-06-12 01:15:26'),
(14, 'SOLID T SHIRT', 'solid-t-shirt', NULL, 0, NULL, 1, '2023-03-19 11:46:56', '2023-06-12 01:15:47'),
(20, 'PANJABI', 'panjabi', NULL, 0, NULL, 1, '2023-03-31 00:16:11', '2023-09-01 15:35:45'),
(21, 'LEATHER BAG', 'leather-bag', NULL, 0, NULL, 1, '2023-03-31 00:16:45', '2023-06-12 01:16:50'),
(22, 'TRAVEL BAG', 'travel-bag', NULL, 0, NULL, 1, '2023-03-31 00:17:01', '2023-06-12 01:17:00'),
(24, 'COMBO T SHIRT', 'combo-t-shirt', NULL, 0, NULL, 1, '2023-03-31 00:17:16', '2023-06-12 01:18:00'),
(32, 'Travel T-Shirt', 'travel-t-shirt', NULL, 12, NULL, 1, '2023-07-13 13:04:17', '2023-07-13 13:04:17'),
(33, 'Cartoon T-Shirt', 'cartoon-t-shirt', NULL, 12, NULL, 1, '2023-07-13 13:04:35', '2023-07-13 13:04:35'),
(35, 'LEATHER WALLET', 'leather-wallet', NULL, 0, NULL, 1, '2023-09-01 15:24:02', '2023-09-01 15:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `contact`, `message`, `created_at`, `updated_at`) VALUES
(1, 'DAWDWAD', 'a7604366@gmail.com', '01740829980', 'DADAWDDW', '2023-05-03 13:36:47', '2023-05-03 13:36:47'),
(2, 'DAWDWAD', 'a7604366@gmail.com', '01740829980', 'DADAWDDW', '2023-05-03 13:37:46', '2023-05-03 13:37:46'),
(3, 'Anik Rahman', 'a7604366@gmail.com', '01740829980', 'awd', '2023-05-03 13:40:13', '2023-05-03 13:40:13'),
(4, 'Anik Rahman', 'a7604366@gmail.com', '01740829980', 'dawdad', '2023-05-03 13:44:11', '2023-05-03 13:44:11'),
(5, 'Anik Rahman', 'a7604366@gmail.com', '01740829980', 'dawd', '2023-05-03 13:46:27', '2023-05-03 13:46:27'),
(6, 'Anik Rahman', 'a7604366@gmail.com', '01740829980', 'dadwd', '2023-05-03 13:46:57', '2023-05-03 13:46:57'),
(7, 'sajib', 'pharmakondrug@gmail.com', '01730722887', 'i am good boy', '2023-08-10 22:04:54', '2023-08-10 22:04:54'),
(8, 'Nishant Sharma', 'nishant.developer22@gmail.com', '1201201200', 'Hi,\r\n\r\nteeopedia.com\r\n\r\nI was just browsing your website and I came up with a great plan to re-develop your website using the latest technology to generate additional revenue and beat your opponents. (teeopedia.com) \r\n\r\nI\'m an excellent web developer capable of almost anything you can come up with, and my costs are affordable for nearly everyone.\r\n\r\nPlease provide me with your email, and contact number to know more about your requirements.\r\n\r\nThanks in advance,\r\nNishant Sharma (Business Development Executive)', '2023-09-03 12:47:17', '2023-09-03 12:47:17'),
(9, 'Jimmy See', 'see.angus@gmail.com', '2549669075', 'Hi there,\r\nMonthly Seo Services - Professional/ Affordable Seo Services\r\nHire the leading seo marketing company and get your website ranked on search engines. Are you looking to rank your website on search engines? Contact us now to get started - https://alwaysdigital.co/la/  Today!\r\n\r\nPsst.. we will also do web design and build complete website. Wordpress and Ecommerce sites development. Click here: https://outsource-bpo.com/website/', '2023-09-29 03:37:16', '2023-09-29 03:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 1, '2022-12-19 15:34:58', '2022-12-19 15:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(2, 'Gazipur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(3, 'Kishoreganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(4, 'Manikganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(5, 'Munshiganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(6, 'Narayanganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(7, 'Narsingdi', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(8, 'Tangail', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(9, 'Faridpur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(10, 'Gopalganj', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(11, 'Madaripur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(12, 'Rajbari', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(13, 'Shariatpur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(14, 'Chittagong', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(15, 'Noakhali', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(16, 'Feni', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(17, 'Brahmanbaria', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(18, 'Comilla', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(19, 'Chandpur', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(20, 'Lakshmipur', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(21, 'Khagrachhari', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(22, 'Rangamati', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(23, 'Bandarban', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(24, 'Cox\'s Bazar', 2, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(25, 'Bagerhat', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(26, 'Chuadanga', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(27, 'Jessore', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(28, 'Jhenaidah', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(29, 'Khulna', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(30, 'Kushtia', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(31, 'Magura', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(32, 'Meherpur', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(33, 'Narail', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(34, 'Satkhira', 3, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(35, 'Habiganj', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(36, 'Moulvibazar', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(37, 'Sunamganj', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(38, 'Sylhet', 4, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(39, 'Mymensingh', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(40, 'Netrokona', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(41, 'Jamalpur', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(42, 'Sherpur', 5, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(43, 'Rajshahi', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(44, 'Natore', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(45, 'Naogaon', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(46, 'Sirajganj', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(47, 'Pabna', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(48, 'Bogura', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(49, 'Chapainawabganj', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(50, 'Joypurhat', 6, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(51, 'Barisal', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(52, 'Barguna', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(53, 'Bhola', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(54, 'Jhalokati', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(55, 'Patuakhali', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(56, 'Pirojpur', 7, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(57, 'Rangpur', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(58, 'Dinajpur', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(59, 'Kurigram', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(60, 'Nilphamari', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(61, 'Gaibandha', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(62, 'Thakurgaon', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(63, 'Panchagarh', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(64, 'Lalmonirhat', 8, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, 1, '2022-12-19 15:34:58', '2022-12-19 15:34:58'),
(2, 'Chittagong', 1, 1, '2022-12-19 15:34:58', '2022-12-19 15:34:58'),
(3, 'Khulna', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(4, 'Sylhet', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(5, 'Mymensingh', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(6, 'Rajshahi', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(7, 'Barisal', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59'),
(8, 'Rangpur', 1, 1, '2022-12-19 15:34:59', '2022-12-19 15:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_icon_title_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_icon_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_icon_title_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_icon_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_icon_title_3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_icon_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_promo_video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_promo_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash_slogan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_currency` tinyint(4) NOT NULL DEFAULT 3,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active = 1, Inactive = 2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `logo`, `fb_logo`, `favicon`, `site_description`, `about_us_text`, `about_us_image`, `about_icon_title_1`, `about_icon_1`, `about_icon_title_2`, `about_icon_2`, `about_icon_title_3`, `about_icon_3`, `home_promo_video_title`, `home_promo_video`, `address`, `email`, `phone`, `hash_tag`, `hash_slogan`, `notice`, `copyright_text`, `default_currency`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Teeopedia', 'whatsapp-image-2023-05-02-at-123121-am-1682966077-1683165487.png', '', 'whatsapp-image-2023-05-02-at-123121-am-1682966077-1683165487.png', 'As Teeopedia, we believe that we have a diverse range of products, be it T-shirts for men and women, Leather Bags and Leather Money Bags, or authentic uk cosmetics. \r\nWhen you have such a diverse range to offer, getting them all together on one platform like Teeopedia website is the best you can do because this way the customer will get easy access to their desired products.', 'The story of Teeopedia is very simple and holds the essence of vision, hard work, and perseverance. Teeopedia runs with the idea of providing the best to the customers because there is no feeling better than customer satisfaction. The prime focus of Teeopedia is to create products that represent the all souls by acting as a replica of their thoughts, personality, and choices.', '2-1688445108.jpg', 'Free Shipping', '11-1683149814.png', '24 X 7 Service', '22-1683149814.png', 'Festival Offer', '33-1683149814.png', 'Promotional Video', 'ard1ETAde8A', 'House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur,Dhaka,Bangladesh.', 'corporateteeopedia@gmail.com', '+8801730722887', NULL, NULL, NULL, '2023 powered by Teeopedia.', 3, 1, '2023-04-15 04:10:57', '2023-07-04 11:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `local_shippings`
--

CREATE TABLE `local_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ship_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_type` tinyint(4) NOT NULL COMMENT '1=Cart total fixed amount, 2=Cart total percentage(%), 3=Per product fixed amount, 4=Per product percentage(%)',
  `fee_amount` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active = 1, Inactive = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_shippings`
--

INSERT INTO `local_shippings` (`id`, `ship_id`, `zone_name`, `fee_type`, `fee_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Inside Dhaka', 1, 100.00, 1, '2022-12-28 10:28:41', '2023-06-12 01:08:08'),
(2, 3, 'Outside Dhaka', 1, 130.00, 1, '2022-12-28 10:29:01', '2023-06-12 01:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_02_24_123930_create_countries_table', 1),
(6, '2021_02_24_124123_create_divisions_table', 1),
(7, '2021_02_24_124238_create_districts_table', 1),
(8, '2021_02_25_073107_create_orders_table', 1),
(9, '2021_03_06_210807_create_coupons_table', 1),
(10, '2021_03_09_051758_create_coupon__cats_table', 1),
(11, '2021_03_09_052011_create_coupon__products_table', 1),
(12, '2021_03_09_052034_create_coupon__users_table', 1),
(13, '2021_09_16_061856_create_categories_table', 1),
(14, '2021_09_16_062757_create_special_categories_table', 1),
(17, '2021_09_19_104308_create_sliders_table', 1),
(18, '2021_09_19_104422_create_slider_images_table', 1),
(20, '2021_09_26_103739_create_local_shippings_table', 1),
(22, '2021_10_10_124321_create_thanas_table', 1),
(24, '2021_10_12_110351_create_billing_addresses_table', 1),
(25, '2022_03_02_120820_create_product_reviews_table', 1),
(26, '2022_05_29_065735_create_contacts_table', 1),
(28, '2022_06_28_104220_create_blogs_table', 1),
(30, '2021_09_18_103023_create_products_table', 2),
(33, '2021_09_26_103602_create_shipping_methods_table', 3),
(34, '2021_09_26_103757_create_local_areas_table', 4),
(35, '2022_12_23_102146_create_offers_table', 5),
(36, '2021_09_18_134813_create_product_attributes_table', 6),
(37, '2021_10_12_110309_create_order_details_table', 7),
(38, '2021_09_26_130901_create_general_settings_table', 8),
(39, '2023_05_01_191912_create_pages_table', 9),
(40, '2023_05_04_031657_create_social_icons_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `short_desc`, `img`, `url`, `status`, `created_at`, `updated_at`) VALUES
(5, 'offer1', NULL, 'honey-adaptation-2-800-465-1671796275.webp', 'https://www.google.com/search?q=codecanyon+theme+sell+guideline+template&sxsrf=ALiCzsZe0Lkf05ATxpAw8WyuzbpLBdZIgQ:1669018316990&source=lnms&tbm=vid&sa=X&ved=2ahUKEwiblaHf6b77AhVJUGwGHY1NB6kQ_AUoAnoECAIQBA#fpstate=ive&vld=cid:afda9018,vid:9_CsMPynlV8', 1, '2022-12-23 05:51:15', '2022-12-23 05:51:15'),
(6, 'offer 2', NULL, 'honey-adaptation-3-800-465-1671796292.webp', 'https://www.google.com/search?q=codecanyon+theme+sell+guideline+template&sxsrf=ALiCzsZe0Lkf05ATxpAw8WyuzbpLBdZIgQ:1669018316990&source=lnms&tbm=vid&sa=X&ved=2ahUKEwiblaHf6b77AhVJUGwGHY1NB6kQ_AUoAnoECAIQBA#fpstate=ive&vld=cid:afda9018,vid:9_CsMPynlV8', 1, '2022-12-23 05:51:32', '2022-12-23 05:51:32'),
(7, 'offer 3', NULL, 'honey-adaptation-4-800-465-1671796312.webp', 'https://www.leonelngande.com/format-dates-for-humans-with-carbon-in-php/', 1, '2022-12-23 05:51:52', '2022-12-23 05:51:52'),
(8, 'offer 4', NULL, 'new-project-8-1671796327.webp', 'https://www.leonelngande.com/format-dates-for-humans-with-carbon-in-php/', 1, '2022-12-23 05:52:07', '2022-12-23 05:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) NOT NULL,
  `vat` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `shipping_rate` double(8,2) NOT NULL,
  `shipping_option` tinyint(4) NOT NULL COMMENT '1=Outside Dhaka, 2=Inside Dhaka',
  `billing_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `special_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Pending,1=On The Way,2=Processing,3=Completed,4=Canceled,5=Failed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `payment_method`, `transaction_id`, `sub_total`, `total`, `coupon_code`, `coupon_amount`, `vat`, `tax`, `shipping_rate`, `shipping_option`, `billing_id`, `user_id`, `special_note`, `status`, `created_at`, `updated_at`) VALUES
(16, 16, 'cash', NULL, 450.00, 550.00, NULL, 0.00, 0.00, 0.00, 100.00, 1, 21, 1, NULL, 0, '2023-07-01 04:27:15', '2023-07-01 04:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_attr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_attr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `size_attr`, `color_attr`, `qty`, `price`, `total`, `created_at`, `updated_at`) VALUES
(20, 16, 48, 's', 'WHITE', 1, 450.00, 450.00, '2023-07-01 04:27:15', '2023-07-01 04:27:15');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `short_desc`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'About', 'about', NULL, '<div class=\"PageContent Rte mt-2\">\r\n<p style=\"text-align:justify\">The story of Teeopedia is very simple and holds the essence of vision, hard work, and perseverance. Teeopedia runs with the idea of providing the best to the customers because there is no feeling better than customer satisfaction. The prime focus of Teeopedia is to create products that represent the all souls by acting as a replica of their thoughts, personality, and choices.For any inquiries or assistance, please don&#39;t hesitate to contact our friendly customer support team.</p>\r\n\r\n<p style=\"text-align:justify\">Happy shopping!</p>\r\n</div>', 'about-us-1682969513.jpg', 1, '2023-05-01 13:31:53', '2023-06-26 02:19:24'),
(3, 'Return Refund', 'return-refund', NULL, '<h2><span style=\"font-size:14px\"><strong>Return/Exchange &amp; Refund Policies:</strong></span></h2>\r\n\r\n<ul>\r\n	<li>You must recheck your information such as your phone number &amp; addresses. And for outside Dhaka your sundarbon branch name should be clear.</li>\r\n	<li>You must not cancel your order once the package is shipped / delivery man is at your doorstep. Website will mark automatically if this happens. Cancellation won&rsquo;t be accepted after 6 hours from ordering.</li>\r\n	<li>You must respond immediately to the delivery man once you will get call. Your parcel will be automatically cancelled within 2 days if the delivery agent can&rsquo;t reach you.</li>\r\n	<li>You or whoever receives your packages, must check in front of the delivery man. Once the delivery man leaves neither exchange nor return will be made.</li>\r\n	<li>You must keep your money receipt while claiming about your issues. Without money receipt no issues will be accepted by the company. Without money receipt the company will not be responsible for any incidents at any circumstances.</li>\r\n	<li>If you get wrong packages or if you find missing products or faulty products you must immediately contact at our Facebook page or helpline in front of the delivery person, once the delivery guy leaves no issues will be accepted.</li>\r\n	<li>If you get wrong packages or any incidents happen to your product or package, the team will be sending over the correct products within 2-4 days once the discussions are made.</li>\r\n	<li>For outside Dhaka/who are paying the full advance/doing bkash: If you face any issues with your ordered packages, you should notify the team with proper documentation as evidence within 6 hours. After that, no changes can happen. Also, oral claiming won&rsquo;t be granted. You must have the money receipt as evidence. Hence, the issues will be solved immediately by the customer representatives as per discussions.</li>\r\n	<li>For outside Dhaka: If your packages are returned at our office due to not reaching you, you have to pay AGAIN for the delivery charge to resend it. Otherwise, the parcel will not be resending and you will be refunded immediately.</li>\r\n	<li>For outside Dhaka: If any situation requires that the customer needs to send something back or return to the office, the company will bear the delivery charge. For that, the sender must send a photo of the package she/he is sending and a memo to the Facebook page.</li>\r\n	<li>If you face any issues shopping our products from our vendors stores/ locations the issues won&rsquo;t be solved here. You must notify the company from where you have purchased.</li>\r\n	<li>Our Exchange/Returns Policy does not cover damages caused by negligence, poor use, or incorrect application. It is not possible to exchange a product owing to allergic or skin responses. Personal hate of the product, dislike of the scent, or dislike of the color that cannot be backed up by proof of quality concerns with the product itself is not eligible for exchange.</li>\r\n	<li>You must not keep a single product where else you ordered multiple products while delivering. If you are willing to do so, your order will be cancelled immediately.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:left\"><strong><span style=\"font-size:14px\"><span style=\"color:#01132d\"><span style=\"font-family:catamaran,sans-serif\"><span style=\"font-size:14px !important\"><span style=\"font-family:Arial\"><span style=\"font-size:10.5pt\"><span style=\"color:#01132d\">Refund policy:</span></span></span></span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-size:14px\"><span style=\"color:#01132d\"><span style=\"font-family:catamaran,sans-serif\"><span style=\"font-size:14px !important\"><span style=\"font-family:Arial\"><span style=\"font-size:10.5pt\"><span style=\"color:#01132d\">The company will refund once the customershows or claims or submits the receipt of money and relevant documents. Moneywill not be refunded without proper proof.</span></span></span></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px !important\"><span style=\"font-family:Arial\"><span style=\"font-size:10.5pt\"><span style=\"color:#01132d\">Please ask for arefund and contact us on our Facebook page https://www.facebook.com/teeopediabd/</span></span></span></span></li>\r\n	<li><span style=\"font-size:14px !important\"><span style=\"font-family:Arial\"><span style=\"font-size:10.5pt\"><span style=\"color:#01132d\">Please explain yourproblem with correct information.</span></span></span></span></li>\r\n	<li><span style=\"font-size:14px !important\"><span style=\"font-family:Arial\"><span style=\"font-size:10.5pt\"><span style=\"color:#01132d\">7 working days will berequired to return the card payment.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', NULL, 1, '2023-05-01 13:55:27', '2023-06-24 03:01:28'),
(4, 'Privacy Policy', 'privacy-policy', NULL, '<div class=\"PageContent Rte\">\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#01132d\">Thank you for shopping by Teeopedia and placing an order. Here, we are committed to protecting and respecting the privacy rights and concerns of our users and customers, and have created and implemented this Privacy Policy to explain what personal information we gather, how we use, disclose, and safeguard it.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#01132d\">Here, how we collect information?</span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#01132d\">Once you are ordering you are providing your name, address, email address, phone number, and username or social media handle are examples of contact information and personal identifiers.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#01132d\">Here, how/why we use information?</span></span></span></span></strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">To send all the fastest updates about the sales, offers, discount and so on while giving out your information.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">To identify the region majority.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">To make improvements to our website so that we can better serve you.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">To market research</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">You will be listed as regular customer and regular customer will be treated with surprises such as, vouchers, special discounts etc.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">To detect, prevent, and prosecute harmful, fraudulent, or illegal activity, to prevent loss, to identify and repair bugs on our website or mobile applications, and to comply with applicable legal requirements, relevant industry standards, and our policies, and to comply with applicable legal requirements, relevant industry standards, and our policies.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#212529\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\">To enhance customer service (Your information enables us to better react to your customer service and support inquiries.)</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#01132d\">How long will we keep your data?</span></span></span></span></strong></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-family:&quot;Arial&quot;,sans-serif\"><span style=\"color:#01132d\">We only keep your information for as long as we need it to provide you with Teeopedia and to accomplish the goals outlined in this policy. This also applies to anybody with whom we disclose your information or who performs services on our behalf. When we no longer require your information and it is no longer necessary for us to keep it to comply with our legal or regulatory obligations, we will delete it.</span></span></span></span></p>\r\n</div>', NULL, 1, '2023-05-01 13:56:51', '2023-06-24 02:55:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `details` text NOT NULL,
  `heading` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `product_id`, `details`, `heading`, `created_at`, `updated_at`) VALUES
(3, 48, 'সেফফুডের তেল সহ যে কোন পণ্য অর্ডার করতে আপনাকে একটি টাকা ও অগ্রীম দিতে হবে না। ক্যাশ অন ডেলিভারিতে পণ্য হাতে পেয়ে মূল্য পরিশোধ করুন।', 'অর্ডার', '2023-11-05 18:22:58', '2023-11-05 18:22:58'),
(4, 48, 'প্রিয় গ্রাহক সেফফুড এর তেল সহ যে কোন পণ্য অর্ডার কর্নফার্ম করার ২৪ ঘন্টার মধ্যে আপনার পণ্যটি পেয়ে যাবেন ইনশাআল্লাহ।', 'ডেলিভারি টাইম', '2023-11-05 18:22:58', '2023-11-05 18:22:58'),
(5, 48, 'পাচ লিটার তেল অথবা মিনিমাম এক হাজার টাকার সেফফুড এর যে কোন পণ্য ক্রয়ে পাবেন ঢাকার ভিতরে ডেলিভারি চার্জ সম্পূর্ণ ফ্রি।', 'ডেলিভারি চার্জ', '2023-11-05 18:22:58', '2023-11-05 18:22:58'),
(6, 48, 'ডেলিভারি হাতে পাওয়ার সাথে সাথে আপনি পণ্য টি চেক করুন অবশ্যই ডেলিভারিম্যান থাকা অবস্থায়। যদি কোন কারণে তেল সহ আমাদের যে কোন পণ্য আপনার পছন্দ না হয়। অনুগ্রহ করে পণ্যটি সাথে সাথেই রিটার্ন করুন। কোন রকম চার্জ ছাড়াই।', 'রিটার্ন', '2023-11-05 18:23:46', '2023-11-05 18:23:46'),
(7, 48, 'কোন কারণে তেল সহ সেফফুড এর যে কোন পণ্য আপনি সাথে সাথে রিটার্ন করতে ব্যার্থ হলে। অবশ্যই পরবর্তী সাত দিনের মধ্যে পণ্য রিটার্ন এবং রিফান্ড এর বিষয়ে সেফফুডকে অবহিত করতে হবে। সেক্ষেত্রে সেফফুড আপনার ইচ্ছা অনুযায়ী, আপনার রিটার্নকৃত পণ্য টি পরিবর্তন অথবা রিটার্ন নিয়ে রিফান্ড করবে সর্বোচ্চ সাত দিনের মধ্যে।', 'রিফান্ড', '2023-11-05 18:23:46', '2023-11-05 18:23:46'),
(9, 48, 'test details', 'test', '2023-11-07 00:29:59', '2023-11-07 00:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `previous` varchar(255) NOT NULL,
  `current` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` double(8,2) NOT NULL,
  `sale_price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_img` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_cat_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `landing_page` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(48, 'BORN IN THE 90\'S', 'born-in-the-90s', '01', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-14-1688331305.png', NULL, '33', '1', NULL, NULL, 1, 'yes', '2023-07-03 03:55:05', '2023-07-14 16:17:30'),
(49, 'MOOD', 'mood', '02', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-15-1688331458.png', NULL, '33', NULL, NULL, NULL, 1, 'yes', '2023-07-03 03:57:38', '2023-07-14 16:17:06'),
(50, 'STAY COZY', 'stay-cozy', '03', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-16-1688331664.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:01:04', '2023-07-14 16:16:50'),
(51, 'WASSUP', 'wassup', '04', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-17-1688331839.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:03:59', '2023-07-14 16:16:26'),
(52, 'ALWAYS RIGHT', 'always-right', '05', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-18-1688332069.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:07:49', '2023-07-14 16:15:38'),
(53, 'BELIEVE', 'believe', '06', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-19-1688332226.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:10:26', '2023-07-14 16:15:21'),
(54, 'POPEYE', 'popeye', '07', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-20-1688332370.png', NULL, '33', '1', NULL, NULL, 1, 'no', '2023-07-03 04:12:50', '2023-07-14 16:14:56'),
(55, 'WAYNE', 'wayne', '08', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-21-1688332511.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:15:11', '2023-07-14 16:14:36'),
(56, 'POWER', 'power', '09', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-22-1688332876.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:21:16', '2023-07-14 16:14:20'),
(57, 'I USED TO BE ALIVE', 'i-used-to-be-alive', '10', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-23-1688333004.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-03 04:23:24', '2023-07-14 16:13:59'),
(58, 'ALL ATTITUDE', 'all-attitude', '11', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-24-1688445351.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:35:51', '2023-07-14 16:10:48'),
(59, 'WEEKLY-BLACK', 'weekly-black', '12', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-25-1688445495.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:38:15', '2023-07-14 16:10:33'),
(60, 'CRAZY COOL', 'crazy-cool', '13', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-26-1688445628.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:40:28', '2023-07-14 16:10:14'),
(61, 'MY FOREVER MOODS-BLACK', 'my-forever-moods-black', '14', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-27-1688445759.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:42:39', '2023-07-14 16:09:58'),
(62, 'BATMAN-BLACK', 'batman-black', '15', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-28-1688446102.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:48:22', '2023-07-14 16:09:43'),
(63, 'MENS PREMIUM QUALITY T-SHIRT-BLACK', 'mens-premium-quality-t-shirt-black', '16', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-29-1688446289.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:51:29', '2023-07-14 16:09:13'),
(64, 'KAFI CUTE-WHITE', 'kafi-cute-white', '17', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-30-1688446442.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:54:02', '2023-07-14 16:09:00'),
(65, 'MAN OF STEEL', 'man-of-steel', '18', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-31-1688446565.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:56:05', '2023-07-14 16:08:29');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(66, 'CUTE & CRAZY-BLACK', 'cute-crazy-black', '19', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-32-1688446708.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 11:58:28', '2023-07-14 16:08:04'),
(67, 'FASTER & HOPE-BLACK', 'faster-hope-black', '20', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-33-1688446854.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 12:00:54', '2023-07-14 16:07:50'),
(68, 'HUGSY', 'hugsy', '21', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-34-1688447056.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 12:04:16', '2023-07-14 16:04:21'),
(69, 'MENS PREMIUM QUALITY T-SHIRT-MAROON', 'mens-premium-quality-t-shirt-maroon', '22', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-35-1688450031.png', NULL, '12', NULL, NULL, NULL, 1, 'no', '2023-07-04 12:53:51', '2023-07-04 12:53:51'),
(70, 'I AM NOT ARGUING', 'i-am-not-arguing', '23', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-36-1688450161.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 12:56:01', '2023-07-14 16:03:44'),
(71, 'TWEETY BIRD', 'tweety-bird', '24', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-37-1688450396.png', NULL, '33', '1', NULL, NULL, 1, 'no', '2023-07-04 12:59:56', '2023-07-14 16:03:16'),
(72, 'LOONEY TUNES', 'looney-tunes', '25', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-38-1688450634.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 13:03:54', '2023-07-14 16:02:52'),
(73, 'NEED MORE SLEEP-BLUE', 'need-more-sleep-blue', '26', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-39-1688450792.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 13:06:32', '2023-07-14 16:02:37'),
(74, 'HARRY POTTER', 'harry-potter', '27', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-40-1688450923.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 13:08:43', '2023-07-14 16:02:23'),
(75, 'I AM NOT LAZY', 'i-am-not-lazy', '28', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation < 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --> 38 inch, Length --> 26.5 inch, Sleeve--> 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --> 39 inch, Length --> 27.5 inch, Sleeve--> 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --> 40.5 inch, Length --> 28.5 inch, Sleeve--> 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --> 43 inch, Length--> 29 inch, Sleeve-->9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-41-1688451078.png', NULL, '12', NULL, NULL, NULL, 1, 'no', '2023-07-04 13:11:18', '2023-07-14 16:02:02'),
(76, 'THOR', 'thor', '29', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-42-1688451227.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 13:13:47', '2023-07-14 16:01:46'),
(77, 'EWW PEOPLE', 'eww-people', '30', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-43-1688451426.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 13:17:06', '2023-07-14 16:01:31'),
(78, 'BATMAN', 'batman', '31', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-44-1688485753.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 22:49:13', '2023-07-14 15:58:30'),
(79, 'LAST MINUTE ENGINEER', 'last-minute-engineer', '32', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-45-1688486343.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 22:59:03', '2023-07-14 15:58:12'),
(80, 'STAY WEIRD', 'stay-weird', '33', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-46-1688486443.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:00:43', '2023-07-14 15:57:58'),
(81, 'WNA CARES', 'wna-cares', '34', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>\r\n\r\n<h4>KNOW IT ALL FIRST!</h4>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-47-1688486642.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:04:02', '2023-07-14 15:57:43'),
(82, 'KHACHAR VITOR OCHIN PAKHI', 'khachar-vitor-ochin-pakhi', '35', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-48-1688487862.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:24:22', '2023-07-14 15:57:25'),
(83, 'MENS PREMIUM QUALITY T-SHIRT-BLUE', 'mens-premium-quality-t-shirt-blue', '36', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-49-1688487988.png', NULL, '12', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:26:28', '2023-07-04 23:26:28');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(84, 'JUST DO IT', 'just-do-it', '37', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-50-1688488095.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:28:15', '2023-07-14 15:56:44'),
(85, 'DO EVERYTHING', 'do-everything', '38', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-51-1688488200.png', NULL, '12', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:30:00', '2023-07-14 15:56:01'),
(86, 'WHY SO SERIOUS', 'why-so-serious', '39', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-52-1688488318.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:31:58', '2023-07-14 15:55:46'),
(87, 'SINGLES', 'singles', '40', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-53-1688488448.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-04 23:34:08', '2023-07-14 15:55:23'),
(88, 'CUTE T-SHIRT', 'cute-t-shirt', '41', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-54-1688656621.png', NULL, '12', NULL, NULL, NULL, 1, 'no', '2023-07-06 22:17:01', '2023-07-13 14:11:56'),
(89, 'GREAT IDEA', 'great-idea', '42', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-55-1688656742.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-06 22:19:02', '2023-07-13 14:11:21'),
(90, 'CITY', 'city', '43', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-56-1688656850.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-06 22:20:50', '2023-07-13 14:11:04'),
(91, 'PLUTO', 'pluto', '44', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-57-1688657015.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-06 22:23:35', '2023-07-13 14:10:44'),
(92, 'STAY COOL', 'stay-cool', '45', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-58-1688657188.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-06 22:26:28', '2023-07-13 14:10:28'),
(93, 'MORE COFFEE', 'more-coffee', '46', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-59-1688657345.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-06 22:29:05', '2023-07-13 14:09:54'),
(94, 'I AM JUST IN', 'i-am-just-in', '47', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-60-1688725924.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:32:04', '2023-07-13 14:09:33'),
(95, 'ANGRY SPONGE', 'angry-sponge', '48', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-61-1688726021.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:33:41', '2023-07-13 14:02:59'),
(96, 'TOM & JERY', 'tom-jery', '49', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-62-1688726123.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:35:23', '2023-07-13 14:02:33'),
(97, 'ELMO', 'elmo', '50', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-63-1688726274.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:37:54', '2023-07-13 14:02:03'),
(98, 'ALL I NEED IS SLEEP', 'all-i-need-is-sleep', '51', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-64-1688726526.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:42:06', '2023-07-13 13:45:07'),
(99, 'DREAMER', 'dreamer', '52', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-65-1688726677.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:44:37', '2023-07-13 13:44:39'),
(100, 'OVERTHINKING & ALSO HUNGRY', 'overthinking-also-hungry', '53', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-66-1688726809.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:46:49', '2023-07-13 13:43:54'),
(101, 'ALWAYS HUNGRY', 'always-hungry', '54', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-67-1688727053.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:50:53', '2023-07-13 13:43:23');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(102, 'MENS PREMIUM QUALITY T-SHIRT', 'mens-premium-quality-t-shirt', '55', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>\r\n\r\n<h4>KNOW IT ALL FIRST!</h4>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-68-1688727200.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:53:20', '2023-07-13 13:26:52'),
(103, 'LAZY', 'lazy', '56', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-69-1688727344.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:55:44', '2023-07-13 13:39:24'),
(104, 'JERRY', 'jerry', '57', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-70-1688727482.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 17:58:02', '2023-07-13 13:39:13'),
(105, 'CUTE', 'cute', '58', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-71-1688727754.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 18:02:34', '2023-07-13 13:38:56'),
(106, 'HUNGRY', 'hungry', '59', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-72-1688727947.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 18:05:47', '2023-07-13 13:38:43'),
(107, 'DONALD DUCK', 'donald-duck', '60', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-gray-clean-shoes-discount-facebook-post-73-1688728041.png', NULL, '33', NULL, NULL, NULL, 1, 'no', '2023-07-07 18:07:21', '2023-07-13 13:37:27'),
(108, 'Haor', 'haor', '61', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '1-1689395162.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-15 11:26:02', '2023-07-15 11:26:02'),
(109, 'HIGH PEAK', 'high-peak', '62', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '2-1689516306.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:05:06', '2023-07-16 21:05:06'),
(110, 'HARLEY DAVIDSON', 'harley-davidson', '63', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '3-1689516526.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:08:46', '2023-07-16 21:08:46'),
(111, 'ROCK CLIMBING', 'rock-climbing', '64', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '4-1689516647.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:10:47', '2023-07-16 21:10:47'),
(112, 'EVERYDAY IS NEW ADVENTURE', 'everyday-is-new-adventure', '65', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '5-1689516747.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:12:27', '2023-07-16 21:12:27'),
(113, 'BORN TO RUN', 'born-to-run', '66', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '6-1689516878.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:14:38', '2023-07-16 21:14:38'),
(114, 'FIND YOUR ADVENTURE', 'find-your-adventure', '67', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '7-1689516962.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:16:02', '2023-07-16 21:16:02'),
(115, 'IT FEELS GOOD TO BE LOST', 'it-feels-good-to-be-lost', '68', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '9-1689517062.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:17:42', '2023-07-16 21:17:42'),
(116, 'TRAVELING MAKES ME HAPPY', 'traveling-makes-me-happy', '69', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '10-1689517268.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:21:08', '2023-07-16 21:21:08'),
(117, 'ADVENTURE EXTREME JOURNEY', 'adventure-extreme-journey', '70', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '11-1689517389.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:23:09', '2023-07-16 21:23:09'),
(118, 'MOUNTAIN EXPLORER', 'mountain-explorer', '71', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '12-1689517472.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:24:32', '2023-07-16 21:24:32'),
(119, 'WHEN WE GO TO MOUNTAIN', 'when-we-go-to-mountain', '72', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '13-1689517611.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:26:51', '2023-07-16 21:26:51');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(120, 'MOUNTAIN', 'mountain', '73', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '14-1689517692.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:28:12', '2023-07-16 21:28:12'),
(121, 'THE OCEAN IS CALLING', 'the-ocean-is-calling', '74', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '15-1689517774.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:29:34', '2023-07-16 21:29:34'),
(122, 'MOUNTAIN EXPLORER WHITE', 'mountain-explorer-white', '75', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '16-1689517924.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:32:04', '2023-07-16 21:32:04'),
(123, 'NEW ADVENTURE', 'new-adventure', '76', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '17-1689518016.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:33:36', '2023-07-16 21:33:36'),
(124, 'ADVENTURE HAVE NO LIMIT', 'adventure-have-no-limit', '77', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '18-1689518109.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:35:09', '2023-07-16 21:35:09'),
(125, 'ADVENTURE CAMPING OUTDOOR', 'adventure-camping-outdoor', '78', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '19-1689518204.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-16 21:36:44', '2023-07-16 21:36:44'),
(126, 'EVERYDAY IS A NEW ADVENTURE', 'everyday-is-a-new-adventure', '79', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '20-1689617443.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:10:43', '2023-07-18 01:10:43'),
(127, 'RAIN', 'rain', '80', 450.00, 450.00, NULL, 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '21-1689619079.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:37:59', '2023-07-18 01:37:59'),
(128, 'THE MOUNTAIN IS CALLING', 'the-mountain-is-calling', '81', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '22-1689619189.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:39:49', '2023-07-18 01:39:49'),
(129, 'OUTDOOR CAMPING', 'outdoor-camping', '82', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '23-1689619478.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:44:38', '2023-07-18 01:44:38'),
(130, 'ADVENTURE AWAITS', 'adventure-awaits', '83', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '24-1689619568.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:46:08', '2023-07-18 01:46:08'),
(131, 'VESPA', 'vespa', '84', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '26-1689619718.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:48:38', '2023-07-18 01:48:38'),
(132, 'TAKE THE TRIP', 'take-the-trip', '85', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '27-1689619801.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:50:01', '2023-07-18 01:50:01'),
(133, 'SUMMER TIME', 'summer-time', '86', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '28-1689619879.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:51:19', '2023-07-18 01:51:19'),
(134, 'KEEP GOING KEEP GROWING', 'keep-going-keep-growing', '87', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '29-1689619967.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:52:47', '2023-07-18 01:52:47'),
(135, 'NATURE & MOUNTAIN', 'nature-mountain', '88', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '30-1689620079.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:54:39', '2023-07-18 01:54:39'),
(136, 'EXPLORE THE MOUNTAIN', 'explore-the-mountain', '89', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '31-1689620182.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:56:22', '2023-07-18 01:56:22'),
(137, 'TRAVEL', 'travel', '90', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '33-1689620281.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:58:01', '2023-07-18 01:58:01'),
(138, 'EXPLORE I DREAM I DISCOVER', 'explore-i-dream-i-discover', '91', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '34-1689620374.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 01:59:34', '2023-07-18 01:59:34');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(139, 'SURFING PARADISE', 'surfing-paradise', '92', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '35-1689620461.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:01:01', '2023-07-18 02:01:01'),
(140, 'INTERNATIONAL ADVENTURE', 'international-adventure', '93', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '36-1689620549.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:02:29', '2023-07-18 02:02:29'),
(141, 'NATURE', 'nature', '94', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '37-1689620796.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:06:36', '2023-07-18 02:06:36'),
(142, 'TIME TO TRAVEL', 'time-to-travel', '95', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh*</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '38-1689620910.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:08:30', '2023-07-18 02:08:30'),
(143, 'TO TRAVEL IS TO LIVE', 'to-travel-is-to-live', '96', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '39-1689621053.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:10:53', '2023-07-18 02:10:53'),
(144, 'TRAVEL FAR ENOUGH TO MEET YOURSELF', 'travel-far-enough-to-meet-yourself', '97', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '40-1689621160.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:12:40', '2023-07-18 02:12:40'),
(145, 'ADVENTURES AND CLOSE FRIEND', 'adventures-and-close-friend', '98', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '41-1689621241.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:14:01', '2023-07-18 02:14:01'),
(146, 'WHERE YOU ARE GOING', 'where-you-are-going', '99', 450.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '42-1689621390.jpg', NULL, '32', NULL, NULL, NULL, 1, 'no', '2023-07-18 02:16:30', '2023-07-18 02:16:30'),
(147, 'Mens Premium T-shirt -Combo-White & Yellow', 'mens-premium-t-shirt-combo-white-yellow', '100', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'red-and-white-modern-travel-to-london-instagram-post-1691609986.png', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-10 02:39:46', '2023-08-11 18:35:27'),
(148, 'Mens Premium T-shirt -Combo-Black & Merun', 'mens-premium-t-shirt-combo-black-merun', '101', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '362618228-206174922404059-4477161002477505423-n-min-1691754057.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-11 18:40:57', '2023-08-11 18:42:25'),
(149, 'MENS PREMIUM T-SHIRT -COMBO-BLACK & WHITE', 'mens-premium-t-shirt-combo-black-white', '102', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '362686795-207957005559184-7940086989999829419-n-min-1691754260.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-11 18:44:20', '2023-08-11 18:44:20'),
(150, 'MENS PREMIUM T-SHIRT -COMBO-BLACK & BLACK', 'mens-premium-t-shirt-combo-black-black', '103', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '362915024-207982742223277-7954056355865632051-n-min-1691754376.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-11 18:46:16', '2023-08-11 18:46:16'),
(151, 'MENS PREMIUM T-SHIRT -COMBO-WHITE & BLACK', 'mens-premium-t-shirt-combo-white-black', '104', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '363446333-212608475094037-371192575086113766-n-min-1691754713.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-11 18:51:53', '2023-08-11 18:51:53'),
(152, 'MENS PREMIUM T-SHIRT -COMBO-BLACK & BLACK COLOR', 'mens-premium-t-shirt-combo-black-black-color', '105', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '364200792-212613458426872-297402385729991932-n-min-1691755062.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-11 18:57:42', '2023-08-11 18:57:42'),
(153, 'MENS PREMIUM T-SHIRT -COMBO-WHITE & BLACK COLOR', 'mens-premium-t-shirt-combo-white-black-color', '106', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '364715198-212619121759639-7082863178810219687-n-min-1692342890.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 14:14:50', '2023-08-18 14:14:50'),
(154, 'MENS PREMIUM T-SHIRT -COMBO-BLACK & WHITE COLOR', 'mens-premium-t-shirt-combo-black-white-color', '107', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '364764100-212619588426259-1482863020512567884-n-min-1692343376.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 14:22:56', '2023-08-18 14:22:56'),
(155, 'MENS PREMIUM T-SHIRT -COMBO-BLUE & BLACK COLOR', 'mens-premium-t-shirt-combo-blue-black-color', '108', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '365207300-215776941443857-6931808158058827860-n-min-1692343479.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 14:24:39', '2023-08-18 14:24:39'),
(156, 'MENS PREMIUM T-SHIRT -COMBO-BLACK COLOR', 'mens-premium-t-shirt-combo-black-color', '109', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '365212115-215776318110586-453753149003483969-n-min-1692343657.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 14:27:37', '2023-08-18 14:27:37');
INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `regular_price`, `sale_price`, `description`, `short_desc`, `featured_img`, `gallery_img`, `category_id`, `special_cat_id`, `related_product_id`, `flash_title`, `status`, `landing_page`, `created_at`, `updated_at`) VALUES
(157, 'MENS PREMIUM T-SHIRT -COMBO-WHITE COLOR', 'mens-premium-t-shirt-combo-white-color', '110', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '366338437-218204711201080-3547895634296491196-n-min-1692343744.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 14:29:04', '2023-08-18 14:29:04'),
(158, 'MENS PREMIUM T-SHIRT -COMBO-YELLOWE & BLUE COLOR', 'mens-premium-t-shirt-combo-yellowe-blue-color', '111', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '366613782-218689087819309-5141624344779228000-n-min-1692343842.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 14:30:42', '2023-08-18 14:30:42'),
(159, 'MENS PREMIUM T-SHIRT -COMBO-WB COLOR', 'mens-premium-t-shirt-combo-wb-color', '112', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '366630415-218692997818918-2851700847650674170-n-min-1692346997.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 15:23:17', '2023-08-18 15:23:17'),
(161, 'MENS PREMIUM T-SHIRT -COMBO-YELLOW & WHITE COLOR', 'mens-premium-t-shirt-combo-yellow-white-color', '113', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '366746842-218688061152745-6702928077321993228-n-min-1692347241.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 15:27:21', '2023-08-18 15:27:21'),
(162, 'MENS PREMIUM T-SHIRT -COMBO-BW COLOR', 'mens-premium-t-shirt-combo-bw-color', '114', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '366749586-219093984445486-6511864028620571546-n-min-1692347449.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 15:30:49', '2023-08-18 15:30:49'),
(163, 'MENS PREMIUM T-SHIRT -COMBO-W&W COLOR', 'mens-premium-t-shirt-combo-ww-color', '115', 800.00, 850.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', '366807414-218691994485685-5732619734223739273-n-min-1692347562.jpg', NULL, '24', NULL, NULL, NULL, 1, 'no', '2023-08-18 15:32:42', '2023-08-18 15:32:42'),
(165, 'Mens Premium Blank T-shirt- BLACK', 'mens-premium-blank-t-shirt-black', '116', 400.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'black-1-min-1692349692.jpg', NULL, '14', NULL, NULL, NULL, 1, 'no', '2023-08-18 16:08:12', '2023-08-18 16:08:12'),
(166, 'MENS PREMIUM BLANK T-SHIRT- WHITE', 'mens-premium-blank-t-shirt-white', '117', 400.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'white-1-min-1692349784.jpg', NULL, '14', NULL, NULL, NULL, 1, 'no', '2023-08-18 16:09:44', '2023-08-18 16:09:44'),
(167, 'MENS PREMIUM BLANK T-SHIRT- BLUE', 'mens-premium-blank-t-shirt-blue', '118', 400.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'blue-min-1692349900.jpg', NULL, '14', NULL, NULL, NULL, 1, 'no', '2023-08-18 16:11:40', '2023-08-18 16:11:40'),
(168, 'MENS PREMIUM BLANK T-SHIRT- SKY BLUE', 'mens-premium-blank-t-shirt-sky-blue', '119', 400.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>\r\n\r\n<h4>KNOW IT ALL FIRST!</h4>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'yellow-min-1692349974.jpg', NULL, '14', NULL, NULL, NULL, 1, 'no', '2023-08-18 16:12:54', '2023-08-18 16:12:54'),
(169, 'MENS PREMIUM BLANK T-SHIRT- MAROON', 'mens-premium-blank-t-shirt-maroon', '120', 400.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'maroon-min-1692350060.jpg', NULL, '14', NULL, NULL, NULL, 1, 'no', '2023-08-18 16:14:20', '2023-08-18 16:14:20'),
(170, 'MENS PREMIUM BLANK T-SHIRT- YELLOW', 'mens-premium-blank-t-shirt-yellow', '121', 400.00, 450.00, '<p><strong>Size chart - In inches (Expected Deviation &lt; 3%)</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />S [Chest(Round) --&gt; 38 inch, Length --&gt; 26.5 inch, Sleeve--&gt; 8 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />M [Chest(Round) --&gt; 39 inch, Length --&gt; 27.5 inch, Sleeve--&gt; 8.25 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />L [Chest(Round) --&gt; 40.5 inch, Length --&gt; 28.5 inch, Sleeve--&gt; 8.5 inch]</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />XL [Chest(Round) --&gt; 43 inch, Length--&gt; 29 inch, Sleeve--&gt;9 inch]</p>\r\n\r\n<p><strong>Wash Care:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Cold and gentle machine wash</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Avoid using brushes</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Dry in shade</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Use mild detergent only</p>\r\n\r\n<p><strong>Manufacturer Details:</strong></p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Country of Origin:Bangladesh</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />Manufactured and Sold By: Teeopedia</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" />House-17/12 Hazi Chinu Mia Bylane, Tikka Para, Mohammadpur.</p>\r\n\r\n<p><img alt=\"☑️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1.5/16/2611.png\" /><u>corporateteeopedia@gmail.com</u></p>\r\n\r\n<p><strong>**Made with love : in Bangladesh**</strong></p>', 'Teeopedia Men\'s Premium Quality t-shirt offers a much smoother, silky feel and more structured, mid-weight fit than regular t-shirts. The t-shirts are made with the finest quality Combed Compact Cotton, which features astonishing ~175 GSM on just 26\'s cotton, giving a smooth and compact construction. The compact finish guarantees that the t-shirt length and width will not change over wash or months of usage.', 'yellow-1-min-1692350134.jpg', NULL, '14', NULL, NULL, NULL, 1, 'yes', '2023-08-18 16:15:34', '2023-11-07 03:32:30'),
(171, 'Luxury Elefant Texture LeatherLong-Wallet', 'luxury-elefant-texture-leatherlong-wallet', '122', 1500.00, 1650.00, '<ul>\r\n	<li>Occasion: Work/Versatile</li>\r\n	<li>Material: Genuine Leather.</li>\r\n	<li>Size (Dimension): Height: 8&Prime;, Width: 4&Prime;</li>\r\n	<li>Interior Details: 1 bill compartment, 1 phone slot and 8 credit card slots &amp; one coin chamber.</li>\r\n	<li>Exterior Details: Luxury Elefant Texture Leather</li>\r\n	<li>Closure: Button</li>\r\n	<li>Color: Pure Black.</li>\r\n</ul>', NULL, 'dsc00475-min-1694975387.jpg', 'dsc00474-min-1694975387.jpg,dsc00475-min-1694975387.jpg', '35', NULL, NULL, NULL, 2, 'no', '2023-09-18 01:29:47', '2023-09-18 01:29:47'),
(172, 'Elegant Long-Wallet', 'elegant-long-wallet', '123', 1500.00, 1650.00, '<ul>\r\n	<li>Occasion: Work/Versatile</li>\r\n	<li>Material: Genuine Cow Leather.</li>\r\n	<li>Size (Dimension): Height: 8&Prime;, Width: 4&Prime;</li>\r\n	<li>Interior Details: 1 bill compartment, 1 phone slot and 8 credit card slots &amp; 1 coin chamber.</li>\r\n	<li>Exterior Details: Luxury Elephants Texture Leather Long-Wallet.</li>\r\n	<li>Closure: Button</li>\r\n	<li>Color: Off Black, Dark Brown, Navy Blue and Tan</li>\r\n</ul>', 'Luxury Elephants Texture Leather Long-Wallet.', 'dsc00475-min-1694976031.jpg', NULL, '35', NULL, NULL, NULL, 2, 'no', '2023-09-18 01:40:31', '2023-09-18 01:41:32'),
(173, 'Luxury Long Premium Wallet', 'luxury-long-premium-wallet', '124', 1500.00, 1650.00, '<p>Occasion: Work/Versatile<br />\r\nMaterial: Genuine Leather.<br />\r\nSize (Dimension): Height: 8&Prime;, Width: 4&Prime;<br />\r\nInterior Details: 1 bill compartment, 1 phone slot and 7 credit card slots &amp; 1 coin chamber<br />\r\nExterior Details: Luxury Elephants Texture Long-Wallet.<br />\r\nClosure: Button<br />\r\nColor: Pure Black.</p>', 'Luxury Elephants Texture Long-Wallet.', 'dsc00475-min-1694976571.jpg', 'dsc00474-min-1694976612.jpg', '35', NULL, NULL, NULL, 1, 'yes', '2023-09-18 01:49:31', '2023-11-07 02:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attr_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_color_val` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'in_stock=1, out_of_stock=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `attr_size`, `attr_color`, `attr_color_val`, `attr_price`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(119, '30', 'black', '#000000', '1450', 35, 2, NULL, '2023-04-15 13:33:36'),
(120, '30', 'Blue', '#0e76da', '1450', 35, 2, NULL, '2023-04-15 13:33:36'),
(123, '34', 'black', '#000000', '1650', 35, 2, NULL, '2023-04-15 13:33:36'),
(493, 's', 'BLUE', '#ffffff', '450', 107, 1, NULL, '2023-07-13 13:37:27'),
(494, 'm', 'BLUE', '#ffffff', '450', 107, 1, NULL, '2023-07-13 13:37:27'),
(495, 'l', 'BLUE', '#ffffff', '450', 107, 1, NULL, '2023-07-13 13:37:27'),
(496, 'xl', 'BLUE', '#ffffff', '450', 107, 1, NULL, '2023-07-13 13:37:27'),
(497, 's', 'BLUE', '#ffffff', '450', 106, 1, NULL, '2023-07-13 13:38:43'),
(498, 'm', 'BLUE', '#ffffff', '450', 106, 1, NULL, '2023-07-13 13:38:43'),
(499, 'l', 'BLUE', '#ffffff', '450', 106, 1, NULL, '2023-07-13 13:38:43'),
(500, 'xl', 'BLUE', '#ffffff', '450', 106, 1, NULL, '2023-07-13 13:38:43'),
(501, 's', 'BLUE', '#fafafa', '450', 105, 1, NULL, '2023-07-13 13:38:56'),
(502, 'm', 'BLUE', '#fdfcfc', '450', 105, 1, NULL, '2023-07-13 13:38:56'),
(503, 'l', 'BLUE', '#fbf9f9', '450', 105, 1, NULL, '2023-07-13 13:38:56'),
(504, 'xl', 'BLUE', '#f9f6f6', '450', 105, 1, NULL, '2023-07-13 13:38:56'),
(505, 's', 'BLUE', '#f8f7f7', '450', 104, 1, NULL, '2023-07-13 13:39:13'),
(506, 'm', 'BLUE', '#ffffff', '450', 104, 1, NULL, '2023-07-13 13:39:13'),
(507, 'l', 'BLUE', '#f6f4f4', '450', 104, 1, NULL, '2023-07-13 13:39:13'),
(508, 'xl', 'BLUE', '#ffffff', '450', 104, 1, NULL, '2023-07-13 13:39:13'),
(509, 's', 'SKY BLUE', '#ffffff', '450', 103, 1, NULL, '2023-07-13 13:39:24'),
(510, 'm', 'SKY BLUE', '#ffffff', '450', 103, 1, NULL, '2023-07-13 13:39:24'),
(511, 'l', 'SKY BLUE', '#ffffff', '450', 103, 1, NULL, '2023-07-13 13:39:24'),
(512, 'xl', 'SKY BLUE', '#ffffff', '450', 103, 1, NULL, '2023-07-13 13:39:24'),
(529, 's', 'WHITE', '#ffffff', '450', 100, 1, NULL, '2023-07-13 13:43:54'),
(530, 'm', 'WHITE', '#f7f7f7', '450', 100, 1, NULL, '2023-07-13 13:43:54'),
(531, 'l', 'WHITE', '#fdfcfc', '450', 100, 1, NULL, '2023-07-13 13:43:54'),
(532, 'xl', 'WHITE', '#fafafa', '450', 100, 1, NULL, '2023-07-13 13:43:54'),
(533, 's', 'WHITE', '#ffffff', '450', 99, 1, NULL, '2023-07-13 13:44:39'),
(534, 'm', 'WHITE', '#ffffff', '450', 99, 1, NULL, '2023-07-13 13:44:39'),
(535, 'l', 'WHITE', '#ffffff', '450', 99, 1, NULL, '2023-07-13 13:44:39'),
(536, 'xl', 'WHITE', '#ffffff', '450', 99, 1, NULL, '2023-07-13 13:44:39'),
(537, 's', 'BLUE', '#ffffff', '450', 98, 1, NULL, '2023-07-13 13:45:07'),
(538, 'm', 'BLUE', '#ffffff', '450', 98, 1, NULL, '2023-07-13 13:45:07'),
(539, 'l', 'BLUE', '#ffffff', '450', 98, 1, NULL, '2023-07-13 13:45:07'),
(540, 'xl', 'BLUE', '#ffffff', '450', 98, 1, NULL, '2023-07-13 13:45:07'),
(541, 's', 'WHITE', '#ffffff', '450', 97, 1, NULL, '2023-07-13 14:02:03'),
(542, 'm', 'WHITE', '#ffffff', '450', 97, 1, NULL, '2023-07-13 14:02:03'),
(543, 'l', 'WHITE', '#ffffff', '450', 97, 1, NULL, '2023-07-13 14:02:03'),
(544, 'xl', 'WHITE', '#fafafa', '450', 97, 1, NULL, '2023-07-13 14:02:03'),
(545, 's', 'WHITE', '#ffffff', '450', 96, 1, NULL, '2023-07-13 14:02:33'),
(546, 'm', 'WHITE', '#ffffff', '450', 96, 1, NULL, '2023-07-13 14:02:33'),
(547, 'l', 'WHITE', '#ffffff', '450', 96, 1, NULL, '2023-07-13 14:02:33'),
(548, 'xl', 'W', '#ffffff', '450', 96, 1, NULL, '2023-07-13 14:02:33'),
(549, 's', 'WHITE', '#ffffff', '450', 95, 1, NULL, '2023-07-13 14:02:59'),
(550, 'm', 'WHITE', '#ffffff', '450', 95, 1, NULL, '2023-07-13 14:02:59'),
(551, 'l', 'WHITE', '#ffffff', '450', 95, 1, NULL, '2023-07-13 14:02:59'),
(552, 'xl', 'WHITE', '#ffffff', '450', 95, 1, NULL, '2023-07-13 14:02:59'),
(553, 's', 'WHITE', '#ffffff', '450', 94, 1, NULL, '2023-07-13 14:09:33'),
(554, 'm', 'WHITE', '#ffffff', '450', 94, 1, NULL, '2023-07-13 14:09:33'),
(555, 'l', 'WHITE', '#ffffff', '450', 94, 1, NULL, '2023-07-13 14:09:33'),
(556, 'xl', 'WHITE', '#ffffff', '450', 94, 1, NULL, '2023-07-13 14:09:33'),
(557, 's', 'WHITE', '#ffffff', '450', 93, 1, NULL, '2023-07-13 14:09:54'),
(558, 'm', 'WHITE', '#ffffff', '450', 93, 1, NULL, '2023-07-13 14:09:54'),
(559, 'l', 'WHITE', '#ffffff', '450', 93, 1, NULL, '2023-07-13 14:09:54'),
(560, 'xl', 'WHITE', '#ffffff', '450', 93, 1, NULL, '2023-07-13 14:09:54'),
(561, 's', 'WHITE', '#ffffff', '450', 92, 1, NULL, '2023-07-13 14:10:28'),
(562, 'm', 'WHITE', '#ffffff', '450', 92, 1, NULL, '2023-07-13 14:10:28'),
(563, 'l', 'WHITE', '#ffffff', '450', 92, 1, NULL, '2023-07-13 14:10:28'),
(564, 'xl', 'WHITE', '#ffffff', '450', 92, 1, NULL, '2023-07-13 14:10:28'),
(565, 's', 'BLUE', '#ffffff', '450', 91, 1, NULL, '2023-07-13 14:10:44'),
(566, 'm', 'BLUE', '#ffffff', '450', 91, 1, NULL, '2023-07-13 14:10:44'),
(567, 'l', 'BLUE', '#ffffff', '450', 91, 1, NULL, '2023-07-13 14:10:44'),
(568, 'xl', 'BLUE', '#ffffff', '450', 91, 1, NULL, '2023-07-13 14:10:44'),
(569, 's', 'BLUE', '#ffffff', '450', 90, 1, NULL, '2023-07-13 14:11:04'),
(570, 'm', 'BLUE', '#ffffff', '450', 90, 1, NULL, '2023-07-13 14:11:04'),
(571, 'l', 'BLUE', '#ffffff', '450', 90, 1, NULL, '2023-07-13 14:11:04'),
(572, 'xl', 'BLUE', '#ffffff', '450', 90, 1, NULL, '2023-07-13 14:11:04'),
(573, 's', 'BLUE', '#ffffff', '450', 89, 1, NULL, '2023-07-13 14:11:21'),
(574, 'm', 'BLUE', '#ffffff', '450', 89, 1, NULL, '2023-07-13 14:11:21'),
(575, 'l', 'BLUE', '#ffffff', '450', 89, 1, NULL, '2023-07-13 14:11:21'),
(576, 'xl', 'BLUE', '#ffffff', '450', 89, 1, NULL, '2023-07-13 14:11:21'),
(577, 's', 'BLUE', '#ffffff', '450', 88, 1, NULL, '2023-07-13 14:11:56'),
(578, 'm', 'BLUE', '#ffffff', '450', 88, 1, NULL, '2023-07-13 14:11:56'),
(579, 'l', 'BLUE', '#ffffff', '450', 88, 1, NULL, '2023-07-13 14:11:56'),
(580, 'xl', 'BLUE', '#ffffff', '450', 88, 1, NULL, '2023-07-13 14:11:56'),
(581, 's', 'BLUE', '#ffffff', '450', 87, 1, NULL, '2023-07-14 15:55:23'),
(582, 'm', 'BLUE', '#ffffff', '450', 87, 1, NULL, '2023-07-14 15:55:23'),
(583, 'l', 'BLUE', '#ffffff', '450', 87, 1, NULL, '2023-07-14 15:55:23'),
(584, 'xl', 'BLUE', '#ffffff', '450', 87, 1, NULL, '2023-07-14 15:55:23'),
(585, 's', 'BLACK', '#ffffff', '450', 86, 1, NULL, '2023-07-14 15:55:46'),
(586, 'm', 'BLACK', '#ffffff', '450', 86, 1, NULL, '2023-07-14 15:55:46'),
(587, 'l', 'BLACK', '#ffffff', '450', 86, 1, NULL, '2023-07-14 15:55:46'),
(588, 'xl', 'BLACK', '#ffffff', '450', 86, 1, NULL, '2023-07-14 15:55:46'),
(589, 's', 'BLACK', '#ffffff', '450', 85, 1, NULL, '2023-07-14 15:56:01'),
(590, 'm', 'BLACK', '#ffffff', '450', 85, 1, NULL, '2023-07-14 15:56:01'),
(591, 'l', 'BLACK', '#ffffff', '450', 85, 1, NULL, '2023-07-14 15:56:01'),
(592, 'xl', 'BLACK', '#ffffff', '450', 85, 1, NULL, '2023-07-14 15:56:01'),
(593, 's', 'WHITE', '#fdfcfc', '450', 102, 1, NULL, '2023-07-14 15:56:10'),
(594, 'm', 'WHITE', '#f8f7f7', '450', 102, 1, NULL, '2023-07-14 15:56:10'),
(595, 'l', 'WHITE', '#fafafa', '450', 102, 1, NULL, '2023-07-14 15:56:10'),
(596, 'xl', 'WHITE', '#f6f4f4', '450', 102, 1, NULL, '2023-07-14 15:56:10'),
(597, 's', 'WHITE', '#ffffff', '450', 101, 1, NULL, '2023-07-14 15:56:19'),
(598, 'm', 'WHITE', '#ffffff', '450', 101, 1, NULL, '2023-07-14 15:56:19'),
(599, 'l', 'WHITE', '#ffffff', '450', 101, 1, NULL, '2023-07-14 15:56:19'),
(600, 'xl', 'WHITE', '#ffffff', '450', 101, 1, NULL, '2023-07-14 15:56:19'),
(601, 's', 'WHITE', '#ffffff', '450', 84, 1, NULL, '2023-07-14 15:56:44'),
(602, 'm', 'WHITE', '#ffffff', '450', 84, 1, NULL, '2023-07-14 15:56:44'),
(603, 'l', 'WHITE', '#ffffff', '450', 84, 1, NULL, '2023-07-14 15:56:44'),
(604, 'xl', 'WHITE', '#ffffff', '450', 84, 1, NULL, '2023-07-14 15:56:44'),
(605, 's', 'BLUE', '#ffffff', '450', 83, 1, NULL, '2023-07-14 15:56:57'),
(606, 'm', 'BLUE', '#ffffff', '450', 83, 1, NULL, '2023-07-14 15:56:57'),
(607, 'l', 'BLUE', '#ffffff', '450', 83, 1, NULL, '2023-07-14 15:56:57'),
(608, 'xl', 'BLUE', '#ffffff', '450', 83, 1, NULL, '2023-07-14 15:56:57'),
(609, 's', 'MAROON', '#ffffff', '450', 82, 1, NULL, '2023-07-14 15:57:25'),
(610, 'm', 'MAROON', '#ffffff', '450', 82, 1, NULL, '2023-07-14 15:57:25'),
(611, 'l', 'MAROON', '#ffffff', '450', 82, 1, NULL, '2023-07-14 15:57:25'),
(612, 'xl', 'MAROON', '#ffffff', '450', 82, 1, NULL, '2023-07-14 15:57:25'),
(613, 's', 'MAROON', '#ffffff', '450', 81, 1, NULL, '2023-07-14 15:57:43'),
(614, 'm', 'MAROON', '#ffffff', '450', 81, 1, NULL, '2023-07-14 15:57:43'),
(615, 'l', 'MAROON', '#ffffff', '450', 81, 1, NULL, '2023-07-14 15:57:43'),
(616, 'xl', 'MAROON', '#ffffff', '450', 81, 1, NULL, '2023-07-14 15:57:43'),
(617, 's', 'MAROON', '#ffffff', '450', 80, 1, NULL, '2023-07-14 15:57:58'),
(618, 'm', 'MAROON', '#ffffff', '450', 80, 1, NULL, '2023-07-14 15:57:58'),
(619, 'l', 'MAROON', '#ffffff', '448', 80, 1, NULL, '2023-07-14 15:57:58'),
(620, 'xl', 'MAROON', '#ffffff', '450', 80, 1, NULL, '2023-07-14 15:57:58'),
(621, 's', 'MAROON', '#ffffff', '450', 79, 1, NULL, '2023-07-14 15:58:12'),
(622, 'm', 'MAROON', '#ffffff', '450', 79, 1, NULL, '2023-07-14 15:58:12'),
(623, 'l', 'MAROON', '#ffffff', '450', 79, 1, NULL, '2023-07-14 15:58:12'),
(624, 'xl', 'MAROON', '#ffffff', '450', 79, 1, NULL, '2023-07-14 15:58:12'),
(625, 's', 'YELLOW', '#ffffff', '450', 78, 1, NULL, '2023-07-14 15:58:30'),
(626, 'm', 'YELLOW', '#ffffff', '450', 78, 1, NULL, '2023-07-14 15:58:30'),
(627, 'l', 'YELLOW', '#ffffff', '450', 78, 1, NULL, '2023-07-14 15:58:30'),
(628, 'xl', 'YELLOW', '#ffffff', '450', 78, 1, NULL, '2023-07-14 15:58:30'),
(629, 's', 'YELLOW', '#ffffff', '450', 77, 1, NULL, '2023-07-14 16:01:31'),
(630, 'm', 'YELLOW', '#ffffff', '450', 77, 1, NULL, '2023-07-14 16:01:31'),
(631, 'l', 'YELLOW', '#ffffff', '450', 77, 1, NULL, '2023-07-14 16:01:31'),
(632, 'xl', 'YELLOW', '#ffffff', '450', 77, 1, NULL, '2023-07-14 16:01:31'),
(633, 's', 'BLUE', '#ffffff', '450', 76, 1, NULL, '2023-07-14 16:01:46'),
(634, 'm', 'BLUE', '#ffffff', '450', 76, 1, NULL, '2023-07-14 16:01:46'),
(635, 'l', 'BLUE', '#ffffff', '450', 76, 1, NULL, '2023-07-14 16:01:46'),
(636, 'xl', 'BLUE', '#ffffff', '450', 76, 1, NULL, '2023-07-14 16:01:46'),
(637, 's', 'BLUE', '#ffffff', '450', 75, 1, NULL, '2023-07-14 16:02:02'),
(638, 'm', 'BLUE', '#ffffff', '450', 75, 1, NULL, '2023-07-14 16:02:02'),
(639, 'l', 'BLUE', '#ffffff', '450', 75, 1, NULL, '2023-07-14 16:02:02'),
(640, 'xl', 'BLUE', '#ffffff', '450', 75, 1, NULL, '2023-07-14 16:02:02'),
(641, 's', 'BLUE', '#ffffff', '450', 74, 1, NULL, '2023-07-14 16:02:23'),
(642, 'm', 'BLUE', '#ffffff', '450', 74, 1, NULL, '2023-07-14 16:02:23'),
(643, 'l', 'BLUE', '#ffffff', '450', 74, 1, NULL, '2023-07-14 16:02:23'),
(644, 'xl', 'BLUE', '#ffffff', '450', 74, 1, NULL, '2023-07-14 16:02:23'),
(645, 's', 'BLUE', '#ffffff', '450', 73, 1, NULL, '2023-07-14 16:02:37'),
(646, 'm', 'BLUE', '#ffffff', '450', 73, 1, NULL, '2023-07-14 16:02:37'),
(647, 'l', 'BLUE', '#ffffff', '450', 73, 1, NULL, '2023-07-14 16:02:37'),
(648, 'xl', 'BLUE', '#ffffff', '450', 73, 1, NULL, '2023-07-14 16:02:37'),
(649, 's', 'YELLOW', '#ffffff', '450', 72, 1, NULL, '2023-07-14 16:02:52'),
(650, 'm', 'YELLOW', '#ffffff', '450', 72, 1, NULL, '2023-07-14 16:02:52'),
(651, 'l', 'YELLOW', '#ffffff', '450', 72, 1, NULL, '2023-07-14 16:02:52'),
(652, 'xl', 'YELLOW', '#ffffff', '450', 72, 1, NULL, '2023-07-14 16:02:52'),
(653, 's', 'MAROON', '#ffffff', '450', 71, 1, NULL, '2023-07-14 16:03:16'),
(654, 'm', 'MAROON', '#ffffff', '450', 71, 1, NULL, '2023-07-14 16:03:16'),
(655, 'l', 'MAROON', '#ffffff', '450', 71, 1, NULL, '2023-07-14 16:03:16'),
(656, 'x', 'MAROON', '#ffffff', '450', 71, 1, NULL, '2023-07-14 16:03:16'),
(657, 's', 'MAROON', '#ffffff', '450', 70, 1, NULL, '2023-07-14 16:03:44'),
(658, 'm', 'MAROON', '#ffffff', '450', 70, 1, NULL, '2023-07-14 16:03:44'),
(659, 'l', 'MAROON', '#ffffff', '450', 70, 1, NULL, '2023-07-14 16:03:44'),
(660, 'xl', 'MAROON', '#ffffff', '450', 70, 1, NULL, '2023-07-14 16:03:44'),
(661, 's', 'MAROON', '#ffffff', '450', 69, 1, NULL, '2023-07-14 16:03:55'),
(662, 'm', 'MAROON', '#ffffff', '450', 69, 1, NULL, '2023-07-14 16:03:55'),
(663, 'l', 'MAROON', '#ffffff', '450', 69, 1, NULL, '2023-07-14 16:03:55'),
(664, 'xl', 'MAROON', '#ffffff', '450', 69, 1, NULL, '2023-07-14 16:03:55'),
(665, 's', 'MERUN', '#ffffff', '450', 68, 1, NULL, '2023-07-14 16:04:21'),
(666, 'm', 'MERUN', '#ffffff', '450', 68, 1, NULL, '2023-07-14 16:04:21'),
(667, 'l', 'MERUN', '#ffffff', '450', 68, 1, NULL, '2023-07-14 16:04:21'),
(668, 'xl', 'MERUN', '#ffffff', '450', 68, 1, NULL, '2023-07-14 16:04:21'),
(669, 's', 'BLACK', '#ffffff', '450', 67, 1, NULL, '2023-07-14 16:07:50'),
(670, 'm', 'BLACK', '#ffffff', '450', 67, 1, NULL, '2023-07-14 16:07:50'),
(671, 'l', 'BLACK', '#ffffff', '450', 67, 1, NULL, '2023-07-14 16:07:50'),
(672, 'xl', 'BLACK', '#ffffff', '450', 67, 1, NULL, '2023-07-14 16:07:50'),
(673, 's', 'BLACK', '#ffffff', '450', 66, 1, NULL, '2023-07-14 16:08:04'),
(674, 'm', 'BLACK', '#ffffff', '450', 66, 1, NULL, '2023-07-14 16:08:04'),
(675, 'l', 'BLACK', '#ffffff', '450', 66, 1, NULL, '2023-07-14 16:08:04'),
(676, 'xl', 'BLACK', '#ffffff', '450', 66, 1, NULL, '2023-07-14 16:08:04'),
(677, 's', 'BLACK', '#fffafa', '450', 65, 1, NULL, '2023-07-14 16:08:29'),
(678, 'm', 'BLACK', '#ffffff', '450', 65, 1, NULL, '2023-07-14 16:08:29'),
(679, 'l', 'BLACK', '#ffffff', '450', 65, 1, NULL, '2023-07-14 16:08:29'),
(680, 'xl', 'BLACK', '#ffffff', '450', 65, 1, NULL, '2023-07-14 16:08:29'),
(685, 's', 'WHITE', '#ffffff', '450', 64, 1, NULL, '2023-07-14 16:09:00'),
(686, 'm', 'WHITE', '#ffffff', '450', 64, 1, NULL, '2023-07-14 16:09:00'),
(687, 'l', 'WHITE', '#ffffff', '450', 64, 1, NULL, '2023-07-14 16:09:00'),
(688, 'xl', 'WHITE', '#ffffff', '450', 64, 1, NULL, '2023-07-14 16:09:00'),
(693, 's', 'BLACK', '#ffffff', '450', 63, 1, NULL, '2023-07-14 16:09:25'),
(694, 'm', 'BLACK', '#ffffff', '450', 63, 1, NULL, '2023-07-14 16:09:25'),
(695, 'l', 'BLACK', '#ffffff', '450', 63, 1, NULL, '2023-07-14 16:09:25'),
(696, 'xl', 'BLACK', '#ffffff', '450', 63, 1, NULL, '2023-07-14 16:09:25'),
(697, 's', 'BLACK', '#ffffff', '450', 62, 1, NULL, '2023-07-14 16:09:43'),
(698, 'm', 'BLACK', '#ffffff', '450', 62, 1, NULL, '2023-07-14 16:09:43'),
(699, 'l', 'BLACK', '#ffffff', '450', 62, 1, NULL, '2023-07-14 16:09:43'),
(700, 'xl', 'BLACK', '#ffffff', '450', 62, 1, NULL, '2023-07-14 16:09:43'),
(701, 's', 'BLACK', '#ffffff', '450', 61, 1, NULL, '2023-07-14 16:09:58'),
(702, 'm', 'BLACK', '#ffffff', '450', 61, 1, NULL, '2023-07-14 16:09:58'),
(703, 'l', 'BLACK', '#ffffff', '448', 61, 1, NULL, '2023-07-14 16:09:58'),
(704, 'xl', 'BLACK', '#ffffff', '450', 61, 1, NULL, '2023-07-14 16:09:58'),
(705, 's', 'BLACK', '#ffffff', '450', 60, 1, NULL, '2023-07-14 16:10:14'),
(706, 'm', 'BLACK', '#ffffff', '450', 60, 1, NULL, '2023-07-14 16:10:14'),
(707, 'l', 'BLACK', '#ffffff', '450', 60, 1, NULL, '2023-07-14 16:10:14'),
(708, 'xl', 'BLACK', '#ffffff', '450', 60, 1, NULL, '2023-07-14 16:10:14'),
(709, 's', 'BLACK', '#ffffff', '450', 59, 1, NULL, '2023-07-14 16:10:33'),
(710, 'm', 'BLACK', '#ffffff', '450', 59, 1, NULL, '2023-07-14 16:10:33'),
(711, 'l', 'BLACK', '#ffffff', '450', 59, 1, NULL, '2023-07-14 16:10:33'),
(712, 'xl', 'BLACK', '#ffffff', '450', 59, 1, NULL, '2023-07-14 16:10:33'),
(713, 's', 'BLACK', '#ffffff', '450', 58, 1, NULL, '2023-07-14 16:10:48'),
(714, 'm', 'BLACK', '#ffffff', '450', 58, 1, NULL, '2023-07-14 16:10:48'),
(715, 'l', 'BLACK', '#ffffff', '450', 58, 1, NULL, '2023-07-14 16:10:48'),
(716, 'xl', 'BLACK', '#ffffff', '450', 58, 1, NULL, '2023-07-14 16:10:48'),
(717, 's', 'BLUE', '#ffffff', '450', 57, 1, NULL, '2023-07-14 16:13:59'),
(718, 'm', 'BLUE', '#ffffff', '450', 57, 1, NULL, '2023-07-14 16:13:59'),
(719, 'l', 'BLUE', '#ffffff', '450', 57, 1, NULL, '2023-07-14 16:13:59'),
(720, 'xl', 'BLUE', '#ffffff', '450', 57, 1, NULL, '2023-07-14 16:13:59'),
(721, 's', 'SKY BLUE', '#ffffff', '450', 56, 1, NULL, '2023-07-14 16:14:20'),
(722, 'm', 'SKY BLUE', '#ffffff', '450', 56, 1, NULL, '2023-07-14 16:14:20'),
(723, 'l', 'SKY BLUE', '#ffffff', '450', 56, 1, NULL, '2023-07-14 16:14:20'),
(724, 'xl', 'SKY BLUE', '#ffffff', '450', 56, 1, NULL, '2023-07-14 16:14:20'),
(725, 's', 'SKY BLUE', '#ffffff', '450', 55, 1, NULL, '2023-07-14 16:14:36'),
(726, 'm', 'SKY BLUE', '#ffffff', '450', 55, 1, NULL, '2023-07-14 16:14:36'),
(727, 'l', 'SKY BLUE', '#ffffff', '450', 55, 1, NULL, '2023-07-14 16:14:36'),
(728, 'xl', 'SKY BLUE', '#ffffff', '450', 55, 1, NULL, '2023-07-14 16:14:36'),
(729, 's', 'BLACK', '#ffffff', '450', 54, 1, NULL, '2023-07-14 16:14:57'),
(730, 'm', 'BLACK', '#ffffff', '450', 54, 1, NULL, '2023-07-14 16:14:57'),
(731, 'l', 'BLACK', '#ffffff', '450', 54, 1, NULL, '2023-07-14 16:14:57'),
(732, 'xl', 'BLACK', '#ffffff', '450', 54, 1, NULL, '2023-07-14 16:14:57'),
(733, 's', 'BLACK', '#ffffff', '450', 53, 1, NULL, '2023-07-14 16:15:21'),
(734, 'm', 'BLACK', '#ffffff', '450', 53, 1, NULL, '2023-07-14 16:15:21'),
(735, 'l', 'BLACK', '#ffffff', '450', 53, 1, NULL, '2023-07-14 16:15:21'),
(736, 'xl', 'BLACK', '#ffffff', NULL, 53, 1, NULL, '2023-07-14 16:15:21'),
(737, 's', 'BLACK', '#ffffff', '450', 52, 1, NULL, '2023-07-14 16:15:38'),
(738, 'm', 'BLACK', '#ffffff', '450', 52, 1, NULL, '2023-07-14 16:15:38'),
(739, 'l', 'BLACK', '#ffffff', '450', 52, 1, NULL, '2023-07-14 16:15:38'),
(740, 'xl', 'BLACK', '#ffffff', '450', 52, 1, NULL, '2023-07-14 16:15:38'),
(741, 's', 'BLUE', '#ffffff', '450', 51, 1, NULL, '2023-07-14 16:16:26'),
(742, 'm', 'BLUE', '#ffffff', '450', 51, 1, NULL, '2023-07-14 16:16:26'),
(743, 'l', 'BLUE', '#ffffff', '450', 51, 1, NULL, '2023-07-14 16:16:26'),
(744, 'xl', 'BLUE', '#ffffff', '450', 51, 1, NULL, '2023-07-14 16:16:26'),
(745, 's', 'SKY BLUE', '#ffffff', '450', 50, 1, NULL, '2023-07-14 16:16:50'),
(746, 'm', 'SKY BLUE', '#ffffff', '450', 50, 1, NULL, '2023-07-14 16:16:50'),
(747, 'l', 'SKY BLUE', '#ffffff', '450', 50, 1, NULL, '2023-07-14 16:16:50'),
(748, 'xl', 'SKY BLUE', '#ffffff', '450', 50, 1, NULL, '2023-07-14 16:16:50'),
(749, 's', 'BLACK', '#ffffff', '450', 49, 1, NULL, '2023-07-14 16:17:06'),
(750, 'm', 'BLACK', '#ffffff', '450', 49, 1, NULL, '2023-07-14 16:17:06'),
(751, 'l', 'BLACK', '#ffffff', '450', 49, 1, NULL, '2023-07-14 16:17:06'),
(752, 'xl', 'BLACK', '#ffffff', '450', 49, 1, NULL, '2023-07-14 16:17:06'),
(753, 's', 'BLACK', '#ffffff', '450', 48, 1, NULL, '2023-07-14 16:17:30'),
(754, 'm', 'BLACK', '#ffffff', '450', 48, 1, NULL, '2023-07-14 16:17:30'),
(755, 'l', 'BLACK', '#ffffff', '450', 48, 1, NULL, '2023-07-14 16:17:30'),
(756, 'xl', 'BLACK', '#ffffff', '450', 48, 1, NULL, '2023-07-14 16:17:30'),
(757, 's', 'BLACK', '#ffffff', '450', 108, 1, '2023-07-15 11:26:02', '2023-07-15 11:26:02'),
(758, 'm', 'BLACK', '#ffffff', '450', 108, 1, '2023-07-15 11:26:02', '2023-07-15 11:26:02'),
(759, 'l', 'BLACK', '#ffffff', '450', 108, 1, '2023-07-15 11:26:02', '2023-07-15 11:26:02'),
(760, 'xl', 'BLACK', '#ffffff', '450', 108, 1, '2023-07-15 11:26:02', '2023-07-15 11:26:02'),
(761, 's', 'BLACK', '#ffffff', '450', 109, 1, '2023-07-16 21:05:06', '2023-07-16 21:05:06'),
(762, 'm', 'BLACK', '#ffffff', '450', 109, 1, '2023-07-16 21:05:06', '2023-07-16 21:05:06'),
(763, 'l', 'BLACK', '#ffffff', '450', 109, 1, '2023-07-16 21:05:06', '2023-07-16 21:05:06'),
(764, 'xl', 'BLACK', '#ffffff', '450', 109, 1, '2023-07-16 21:05:06', '2023-07-16 21:05:06'),
(765, 's', 'WHITE', '#ffffff', '450', 110, 1, '2023-07-16 21:08:46', '2023-07-16 21:08:46'),
(766, 'm', 'WHITE', '#ffffff', '450', 110, 1, '2023-07-16 21:08:46', '2023-07-16 21:08:46'),
(767, 'l', 'WHITE', '#ffffff', '450', 110, 1, '2023-07-16 21:08:46', '2023-07-16 21:08:46'),
(768, 'xl', 'WHITE', '#ffffff', '450', 110, 1, '2023-07-16 21:08:46', '2023-07-16 21:08:46'),
(769, 's', 'BLACK', '#ffffff', '450', 111, 1, '2023-07-16 21:10:47', '2023-07-16 21:10:47'),
(770, 'm', 'BLACK', '#ffffff', '450', 111, 1, '2023-07-16 21:10:47', '2023-07-16 21:10:47'),
(771, 'l', 'BLACK', '#ffffff', '447', 111, 1, '2023-07-16 21:10:47', '2023-07-16 21:10:47'),
(772, 'xl', 'BLACK', '#ffffff', '450', 111, 1, '2023-07-16 21:10:47', '2023-07-16 21:10:47'),
(773, 's', 'BLACK', '#ffffff', '450', 112, 1, '2023-07-16 21:12:27', '2023-07-16 21:12:27'),
(774, 'm', 'BLACK', '#ffffff', '450', 112, 1, '2023-07-16 21:12:27', '2023-07-16 21:12:27'),
(775, 'l', 'BLACK', '#ffffff', '450', 112, 1, '2023-07-16 21:12:27', '2023-07-16 21:12:27'),
(776, 'xl', 'BLACK', '#ffffff', '450', 112, 1, '2023-07-16 21:12:27', '2023-07-16 21:12:27'),
(777, 's', 'WHITE', '#ffffff', '450', 113, 1, '2023-07-16 21:14:38', '2023-07-16 21:14:38'),
(778, 'm', 'WHITE', '#ffffff', '450', 113, 1, '2023-07-16 21:14:38', '2023-07-16 21:14:38'),
(779, 'l', 'WHITE', '#ffffff', '450', 113, 1, '2023-07-16 21:14:38', '2023-07-16 21:14:38'),
(780, 'xl', 'WHITE', '#ffffff', '450', 113, 1, '2023-07-16 21:14:38', '2023-07-16 21:14:38'),
(781, 's', 'BLACK', '#ffffff', '450', 114, 1, '2023-07-16 21:16:02', '2023-07-16 21:16:02'),
(782, 'm', 'BLACK', '#ffffff', '450', 114, 1, '2023-07-16 21:16:02', '2023-07-16 21:16:02'),
(783, 'l', 'B', '#ffffff', '450', 114, 1, '2023-07-16 21:16:02', '2023-07-16 21:16:02'),
(784, 'xl', 'BLACK', '#ffffff', '450', 114, 1, '2023-07-16 21:16:02', '2023-07-16 21:16:02'),
(785, 's', 'WHITE', '#ffffff', '450', 115, 1, '2023-07-16 21:17:42', '2023-07-16 21:17:42'),
(786, 'm', 'W', '#ffffff', '450', 115, 1, '2023-07-16 21:17:42', '2023-07-16 21:17:42'),
(787, 'l', 'WHITE', '#ffffff', '450', 115, 1, '2023-07-16 21:17:42', '2023-07-16 21:17:42'),
(788, 'xl', 'WHITE', '#ffffff', '450', 115, 1, '2023-07-16 21:17:42', '2023-07-16 21:17:42'),
(789, 's', 'WHITE', '#ffffff', '450', 116, 1, '2023-07-16 21:21:08', '2023-07-16 21:21:08'),
(790, 'm', 'WHITE', '#ffffff', '450', 116, 1, '2023-07-16 21:21:08', '2023-07-16 21:21:08'),
(791, 'l', 'WHITE', '#ffffff', '450', 116, 1, '2023-07-16 21:21:08', '2023-07-16 21:21:08'),
(792, 'xl', 'WHITE', '#ffffff', '448', 116, 1, '2023-07-16 21:21:08', '2023-07-16 21:21:08'),
(793, 's', 'BLACK', '#ffffff', '450', 117, 1, '2023-07-16 21:23:09', '2023-07-16 21:23:09'),
(794, 'm', 'BLACK', '#ffffff', '450', 117, 1, '2023-07-16 21:23:09', '2023-07-16 21:23:09'),
(795, 'l', 'BLACK', '#ffffff', '450', 117, 1, '2023-07-16 21:23:09', '2023-07-16 21:23:09'),
(796, 'xl', 'BLACK', '#ffffff', '450', 117, 1, '2023-07-16 21:23:09', '2023-07-16 21:23:09'),
(797, 's', 'WHITE', '#ffffff', '450', 118, 1, '2023-07-16 21:24:32', '2023-07-16 21:24:32'),
(798, 'm', 'WHITE', '#ffffff', '450', 118, 1, '2023-07-16 21:24:32', '2023-07-16 21:24:32'),
(799, 'l', 'WHITE', '#ffffff', '450', 118, 1, '2023-07-16 21:24:32', '2023-07-16 21:24:32'),
(800, 'xl', 'WHITE', '#ffffff', '450', 118, 1, '2023-07-16 21:24:32', '2023-07-16 21:24:32'),
(801, 's', 'WHITE', '#ffffff', '450', 119, 1, '2023-07-16 21:26:51', '2023-07-16 21:26:51'),
(802, 'm', 'WHITE', '#ffffff', '450', 119, 1, '2023-07-16 21:26:51', '2023-07-16 21:26:51'),
(803, 'l', 'WHITE', '#ffffff', '450', 119, 1, '2023-07-16 21:26:51', '2023-07-16 21:26:51'),
(804, 'xl', 'WHITE', '#ffffff', '450', 119, 1, '2023-07-16 21:26:51', '2023-07-16 21:26:51'),
(805, 's', 'WHITE', '#ffffff', '450', 120, 1, '2023-07-16 21:28:12', '2023-07-16 21:28:12'),
(806, 'm', 'WHITE', '#ffffff', '450', 120, 1, '2023-07-16 21:28:12', '2023-07-16 21:28:12'),
(807, 'l', 'WHITE', '#ffffff', '450', 120, 1, '2023-07-16 21:28:12', '2023-07-16 21:28:12'),
(808, 'xl', 'WHITE', '#ffffff', '450', 120, 1, '2023-07-16 21:28:12', '2023-07-16 21:28:12'),
(809, 's', 'WHITE', '#ffffff', '450', 121, 1, '2023-07-16 21:29:34', '2023-07-16 21:29:34'),
(810, 'm', 'WHITE', '#ffffff', '450', 121, 1, '2023-07-16 21:29:34', '2023-07-16 21:29:34'),
(811, 'l', 'WHITE', '#ffffff', '450', 121, 1, '2023-07-16 21:29:34', '2023-07-16 21:29:34'),
(812, 'xl', 'WHITE', '#ffffff', '450', 121, 1, '2023-07-16 21:29:34', '2023-07-16 21:29:34'),
(813, 's', 'WHITE', '#ffffff', '450', 122, 1, '2023-07-16 21:32:04', '2023-07-16 21:32:04'),
(814, 'm', 'WHITE', '#ffffff', '450', 122, 1, '2023-07-16 21:32:04', '2023-07-16 21:32:04'),
(815, 'l', 'WHITE', '#ffffff', '450', 122, 1, '2023-07-16 21:32:04', '2023-07-16 21:32:04'),
(816, 'xl', 'WHITE', '#ffffff', '450', 122, 1, '2023-07-16 21:32:04', '2023-07-16 21:32:04'),
(817, 's', 'WHITE', '#ffffff', '450', 123, 1, '2023-07-16 21:33:36', '2023-07-16 21:33:36'),
(818, 'm', 'WHITE', '#ffffff', '450', 123, 1, '2023-07-16 21:33:36', '2023-07-16 21:33:36'),
(819, 'l', 'WHITE', '#ffffff', '450', 123, 1, '2023-07-16 21:33:36', '2023-07-16 21:33:36'),
(820, 'xl', 'WHITE', '#ffffff', '450', 123, 1, '2023-07-16 21:33:36', '2023-07-16 21:33:36'),
(821, 's', 'WHITE', '#ffffff', '450', 124, 1, '2023-07-16 21:35:09', '2023-07-16 21:35:09'),
(822, 'm', 'WHITE', '#ffffff', '450', 124, 1, '2023-07-16 21:35:09', '2023-07-16 21:35:09'),
(823, 'l', 'WHITE', '#ffffff', '450', 124, 1, '2023-07-16 21:35:09', '2023-07-16 21:35:09'),
(824, 'xl', 'WHITE', '#ffffff', '450', 124, 1, '2023-07-16 21:35:09', '2023-07-16 21:35:09'),
(825, 's', 'WHITE', '#ffffff', '450', 125, 1, '2023-07-16 21:36:44', '2023-07-16 21:36:44'),
(826, 'm', 'WHITE', '#ffffff', '450', 125, 1, '2023-07-16 21:36:44', '2023-07-16 21:36:44'),
(827, 'l', 'WHITE', '#ffffff', '450', 125, 1, '2023-07-16 21:36:44', '2023-07-16 21:36:44'),
(828, 'xl', 'WHITE', '#ffffff', '450', 125, 1, '2023-07-16 21:36:44', '2023-07-16 21:36:44'),
(829, 's', 'BLACK', '#ffffff', '450', 126, 1, '2023-07-18 01:10:43', '2023-07-18 01:10:43'),
(830, 'm', 'BLACK', '#ffffff', '450', 126, 1, '2023-07-18 01:10:43', '2023-07-18 01:10:43'),
(831, 'l', 'BLACK', '#ffffff', '450', 126, 1, '2023-07-18 01:10:43', '2023-07-18 01:10:43'),
(832, 'xl', 'BLACK', '#ffffff', '450', 126, 1, '2023-07-18 01:10:43', '2023-07-18 01:10:43'),
(833, 's', 'WHITE', '#ffffff', '450', 127, 1, '2023-07-18 01:37:59', '2023-07-18 01:37:59'),
(834, 'm', 'WHITE', '#ffffff', '450', 127, 1, '2023-07-18 01:37:59', '2023-07-18 01:37:59'),
(835, 'l', 'WHITE', '#ffffff', '450', 127, 1, '2023-07-18 01:37:59', '2023-07-18 01:37:59'),
(836, 'xl', 'WHITE', '#ffffff', '450', 127, 1, '2023-07-18 01:37:59', '2023-07-18 01:37:59'),
(837, 's', 'BLACK', '#ffffff', '450', 128, 1, '2023-07-18 01:39:49', '2023-07-18 01:39:49'),
(838, 'm', 'BLACK', '#ffffff', '450', 128, 1, '2023-07-18 01:39:49', '2023-07-18 01:39:49'),
(839, 'l', 'BLACK', '#ffffff', '450', 128, 1, '2023-07-18 01:39:49', '2023-07-18 01:39:49'),
(840, 'xl', 'BLACK', '#ffffff', '450', 128, 1, '2023-07-18 01:39:49', '2023-07-18 01:39:49'),
(841, 's', 'WHITE', '#ffffff', '450', 129, 1, '2023-07-18 01:44:38', '2023-07-18 01:44:38'),
(842, 'm', 'WHITE', '#ffffff', '450', 129, 1, '2023-07-18 01:44:38', '2023-07-18 01:44:38'),
(843, 'l', 'WHITE', '#ffffff', '450', 129, 1, '2023-07-18 01:44:38', '2023-07-18 01:44:38'),
(844, 'xl', 'WHITE', '#ffffff', '450', 129, 1, '2023-07-18 01:44:38', '2023-07-18 01:44:38'),
(845, 's', 'BLACK', '#ffffff', '450', 130, 1, '2023-07-18 01:46:08', '2023-07-18 01:46:08'),
(846, 'm', 'BLACK', '#ffffff', '450', 130, 1, '2023-07-18 01:46:08', '2023-07-18 01:46:08'),
(847, 'l', 'BLACK', '#ffffff', '450', 130, 1, '2023-07-18 01:46:08', '2023-07-18 01:46:08'),
(848, 'xl', 'BLACK', '#ffffff', '450', 130, 1, '2023-07-18 01:46:08', '2023-07-18 01:46:08'),
(849, 's', 'BLACK', '#ffffff', '450', 131, 1, '2023-07-18 01:48:38', '2023-07-18 01:48:38'),
(850, 'm', 'BLACK', '#ffffff', '450', 131, 1, '2023-07-18 01:48:38', '2023-07-18 01:48:38'),
(851, 'l', 'BLACK', '#ffffff', '450', 131, 1, '2023-07-18 01:48:38', '2023-07-18 01:48:38'),
(852, 'xl', 'BLACK', '#ffffff', '450', 131, 1, '2023-07-18 01:48:38', '2023-07-18 01:48:38'),
(853, 's', 'WHITE', '#ffffff', '450', 132, 1, '2023-07-18 01:50:01', '2023-07-18 01:50:01'),
(854, 'm', 'WHITE', '#ffffff', '450', 132, 1, '2023-07-18 01:50:01', '2023-07-18 01:50:01'),
(855, 'l', 'WHITE', '#ffffff', '450', 132, 1, '2023-07-18 01:50:01', '2023-07-18 01:50:01'),
(856, 'xl', 'WHITE', '#ffffff', '450', 132, 1, '2023-07-18 01:50:01', '2023-07-18 01:50:01'),
(857, 's', 'BLACK', '#ffffff', '450', 133, 1, '2023-07-18 01:51:19', '2023-07-18 01:51:19'),
(858, 'm', 'BLACK', '#ffffff', '450', 133, 1, '2023-07-18 01:51:19', '2023-07-18 01:51:19'),
(859, 'l', 'BLACK', '#ffffff', '450', 133, 1, '2023-07-18 01:51:19', '2023-07-18 01:51:19'),
(860, 'xl', 'BLACK', '#ffffff', '450', 133, 1, '2023-07-18 01:51:19', '2023-07-18 01:51:19'),
(861, 's', 'WHITE', '#ffffff', '450', 134, 1, '2023-07-18 01:52:47', '2023-07-18 01:52:47'),
(862, 'm', 'WHITE', '#ffffff', '450', 134, 1, '2023-07-18 01:52:47', '2023-07-18 01:52:47'),
(863, 'l', 'WHITE', '#ffffff', '450', 134, 1, '2023-07-18 01:52:47', '2023-07-18 01:52:47'),
(864, 'xl', 'WHITE', '#ffffff', '450', 134, 1, '2023-07-18 01:52:47', '2023-07-18 01:52:47'),
(865, 's', 'WHITE', '#ffffff', '450', 135, 1, '2023-07-18 01:54:39', '2023-07-18 01:54:39'),
(866, 'm', 'WHITE', '#ffffff', '450', 135, 1, '2023-07-18 01:54:39', '2023-07-18 01:54:39'),
(867, 'l', 'WHITE', '#ffffff', '450', 135, 1, '2023-07-18 01:54:39', '2023-07-18 01:54:39'),
(868, 'xl', 'WHITE', '#ffffff', '450', 135, 1, '2023-07-18 01:54:39', '2023-07-18 01:54:39'),
(869, 's', 'BLACK', '#ffffff', '450', 136, 1, '2023-07-18 01:56:22', '2023-07-18 01:56:22'),
(870, 'm', 'BLACK', '#ffffff', '450', 136, 1, '2023-07-18 01:56:22', '2023-07-18 01:56:22'),
(871, 'l', 'BLACK', '#ffffff', '450', 136, 1, '2023-07-18 01:56:22', '2023-07-18 01:56:22'),
(872, 'xl', 'BLACK', '#fcfcfc', '450', 136, 1, '2023-07-18 01:56:22', '2023-07-18 01:56:22'),
(873, 's', 'WHITE', '#ffffff', '450', 137, 1, '2023-07-18 01:58:01', '2023-07-18 01:58:01'),
(874, 'm', 'WHITE', '#ffffff', '450', 137, 1, '2023-07-18 01:58:01', '2023-07-18 01:58:01'),
(875, 'l', 'WHITE', '#ffffff', '450', 137, 1, '2023-07-18 01:58:01', '2023-07-18 01:58:01'),
(876, 'xl', 'WHITE', '#ffffff', '450', 137, 1, '2023-07-18 01:58:01', '2023-07-18 01:58:01'),
(877, 's', 'WHITE', '#ffffff', '450', 138, 1, '2023-07-18 01:59:34', '2023-07-18 01:59:34'),
(878, 'm', 'WHITE', '#ffffff', '450', 138, 1, '2023-07-18 01:59:34', '2023-07-18 01:59:34'),
(879, 'l', 'WHITE', '#ffffff', '450', 138, 1, '2023-07-18 01:59:34', '2023-07-18 01:59:34'),
(880, 'xl', 'WHITE', '#ffffff', '450', 138, 1, '2023-07-18 01:59:34', '2023-07-18 01:59:34'),
(881, 's', 'BLACK', '#ffffff', '450', 139, 1, '2023-07-18 02:01:01', '2023-07-18 02:01:01'),
(882, 'm', 'BLACK', '#ffffff', '450', 139, 1, '2023-07-18 02:01:01', '2023-07-18 02:01:01'),
(883, 'l', 'BLACK', '#ffffff', '450', 139, 1, '2023-07-18 02:01:01', '2023-07-18 02:01:01'),
(884, 'xl', 'BLACK', '#ffffff', '450', 139, 1, '2023-07-18 02:01:01', '2023-07-18 02:01:01'),
(885, 's', 'WHITE', '#ffffff', '450', 140, 1, '2023-07-18 02:02:29', '2023-07-18 02:02:29'),
(886, 'm', 'WHITE', '#ffffff', '450', 140, 1, '2023-07-18 02:02:29', '2023-07-18 02:02:29'),
(887, 'l', 'WHITE', '#ffffff', '450', 140, 1, '2023-07-18 02:02:29', '2023-07-18 02:02:29'),
(888, 'xl', 'WHITE', '#ffffff', '453', 140, 1, '2023-07-18 02:02:29', '2023-07-18 02:02:29'),
(889, 's', 'WHITE', '#ffffff', '450', 141, 1, '2023-07-18 02:06:36', '2023-07-18 02:06:36'),
(890, 'm', 'WHITE', '#ffffff', '450', 141, 1, '2023-07-18 02:06:36', '2023-07-18 02:06:36'),
(891, 'l', 'WHITE', '#ffffff', '450', 141, 1, '2023-07-18 02:06:36', '2023-07-18 02:06:36'),
(892, 'xl', 'WHITE', '#ffffff', '450', 141, 1, '2023-07-18 02:06:36', '2023-07-18 02:06:36'),
(893, 's', 'WHITE', '#ffffff', '450', 142, 1, '2023-07-18 02:08:30', '2023-07-18 02:08:30'),
(894, 'm', 'WHITE', '#ffffff', '450', 142, 1, '2023-07-18 02:08:30', '2023-07-18 02:08:30'),
(895, 'l', 'WHITE', '#ffffff', '450', 142, 1, '2023-07-18 02:08:30', '2023-07-18 02:08:30'),
(896, 'xl', 'WHITE', '#ffffff', '450', 142, 1, '2023-07-18 02:08:30', '2023-07-18 02:08:30'),
(897, 's', 'BLACK', '#ffffff', '450', 143, 1, '2023-07-18 02:10:53', '2023-07-18 02:10:53'),
(898, 'm', 'BLACK', '#ffffff', '450', 143, 1, '2023-07-18 02:10:53', '2023-07-18 02:10:53'),
(899, 'l', 'BLACK', '#ffffff', '450', 143, 1, '2023-07-18 02:10:53', '2023-07-18 02:10:53'),
(900, 'xl', 'BLACK', '#ffffff', '450', 143, 1, '2023-07-18 02:10:53', '2023-07-18 02:10:53'),
(901, 's', 'BLACK', '#ffffff', '450', 144, 1, '2023-07-18 02:12:40', '2023-07-18 02:12:40'),
(902, 'm', 'BLACK', '#ffffff', '450', 144, 1, '2023-07-18 02:12:40', '2023-07-18 02:12:40'),
(903, 'l', 'BLACK', '#ffffff', '450', 144, 1, '2023-07-18 02:12:40', '2023-07-18 02:12:40'),
(904, 'xl', 'BLACK', '#ffffff', '450', 144, 1, '2023-07-18 02:12:40', '2023-07-18 02:12:40'),
(905, 's', 'WHITE', '#ffffff', '450', 145, 1, '2023-07-18 02:14:01', '2023-07-18 02:14:01'),
(906, 'm', 'WHITE', '#ffffff', '450', 145, 1, '2023-07-18 02:14:01', '2023-07-18 02:14:01'),
(907, 'l', 'WHITE', '#ffffff', '450', 145, 1, '2023-07-18 02:14:01', '2023-07-18 02:14:01'),
(908, 'xl', 'WHITE', '#ffffff', '450', 145, 1, '2023-07-18 02:14:01', '2023-07-18 02:14:01'),
(909, 's', 'WHITE', '#ffffff', '450', 146, 1, '2023-07-18 02:16:30', '2023-07-18 02:16:30'),
(910, 'm', 'WHITE', '#ffffff', '450', 146, 1, '2023-07-18 02:16:30', '2023-07-18 02:16:30'),
(911, 'l', 'WHITE', '#ffffff', '450', 146, 1, '2023-07-18 02:16:30', '2023-07-18 02:16:30'),
(912, 'xl', 'WHITE', '#ffffff', '450', 146, 1, '2023-07-18 02:16:30', '2023-07-18 02:16:30'),
(921, 's', 'YELLOW ,WHITE', '#ffffff', '800', 147, 1, NULL, '2023-08-11 18:35:27'),
(922, 'm', NULL, '#ffffff', '800', 147, 1, NULL, '2023-08-11 18:35:27'),
(923, 'l', NULL, '#ffffff', '798', 147, 1, NULL, '2023-08-11 18:35:27'),
(924, 'xl', NULL, '#ffffff', '800', 147, 1, NULL, '2023-08-11 18:35:27'),
(929, 's', NULL, '#ffffff', '800', 148, 1, NULL, '2023-08-11 18:42:25'),
(930, 'm', NULL, '#ffffff', '800', 148, 1, NULL, '2023-08-11 18:42:25'),
(931, 'l', NULL, '#ffffff', '800', 148, 1, NULL, '2023-08-11 18:42:25'),
(932, 'xl', NULL, '#ffffff', '800', 148, 1, NULL, '2023-08-11 18:42:25'),
(933, 's', NULL, '#ffffff', '800', 149, 1, '2023-08-11 18:44:20', '2023-08-11 18:44:20'),
(934, 'm', NULL, '#ffffff', '799', 149, 1, '2023-08-11 18:44:20', '2023-08-11 18:44:20'),
(935, 'l', NULL, '#ffffff', '799', 149, 1, '2023-08-11 18:44:20', '2023-08-11 18:44:20'),
(936, 'xl', NULL, '#ffffff', '800', 149, 1, '2023-08-11 18:44:20', '2023-08-11 18:44:20'),
(937, 's', NULL, '#ffffff', '800', 150, 1, '2023-08-11 18:46:16', '2023-08-11 18:46:16'),
(938, 'm', NULL, '#ffffff', '800', 150, 1, '2023-08-11 18:46:16', '2023-08-11 18:46:16'),
(939, 'l', NULL, '#ffffff', '799', 150, 1, '2023-08-11 18:46:16', '2023-08-11 18:46:16'),
(940, 'xl', NULL, '#ffffff', '800', 150, 1, '2023-08-11 18:46:16', '2023-08-11 18:46:16'),
(941, 's', NULL, '#ffffff', NULL, 151, 1, '2023-08-11 18:51:53', '2023-08-11 18:51:53'),
(942, 'm', NULL, '#ffffff', NULL, 151, 1, '2023-08-11 18:51:53', '2023-08-11 18:51:53'),
(943, 'l', NULL, '#ffffff', NULL, 151, 1, '2023-08-11 18:51:53', '2023-08-11 18:51:53'),
(944, 'xl', NULL, '#ffffff', NULL, 151, 1, '2023-08-11 18:51:53', '2023-08-11 18:51:53'),
(945, 's', NULL, '#ffffff', '800', 152, 1, '2023-08-11 18:57:42', '2023-08-11 18:57:42'),
(946, 'm', NULL, '#ffffff', '800', 152, 1, '2023-08-11 18:57:42', '2023-08-11 18:57:42'),
(947, 'l', NULL, '#ffffff', '800', 152, 1, '2023-08-11 18:57:42', '2023-08-11 18:57:42'),
(948, 'xl', NULL, '#ffffff', '800', 152, 1, '2023-08-11 18:57:42', '2023-08-11 18:57:42'),
(949, 's', NULL, '#ffffff', '850', 153, 1, '2023-08-18 14:14:50', '2023-08-18 14:14:50'),
(950, 'm', NULL, '#ffffff', '850', 153, 1, '2023-08-18 14:14:50', '2023-08-18 14:14:50'),
(951, 'l', NULL, '#ffffff', '850', 153, 1, '2023-08-18 14:14:50', '2023-08-18 14:14:50'),
(952, 'xl', NULL, '#ffffff', '849', 153, 1, '2023-08-18 14:14:50', '2023-08-18 14:14:50'),
(953, 's', NULL, '#ffffff', '850', 154, 1, '2023-08-18 14:22:56', '2023-08-18 14:22:56'),
(954, 'm', NULL, '#ffffff', '850', 154, 1, '2023-08-18 14:22:56', '2023-08-18 14:22:56'),
(955, 'l', NULL, '#ffffff', '850', 154, 1, '2023-08-18 14:22:56', '2023-08-18 14:22:56'),
(956, 'xl', NULL, '#ffffff', '850', 154, 1, '2023-08-18 14:22:56', '2023-08-18 14:22:56'),
(957, 's', NULL, '#ffffff', '850', 155, 1, '2023-08-18 14:24:39', '2023-08-18 14:24:39'),
(958, 'm', NULL, '#ffffff', '850', 155, 1, '2023-08-18 14:24:39', '2023-08-18 14:24:39'),
(959, 'l', NULL, '#ffffff', '849', 155, 1, '2023-08-18 14:24:39', '2023-08-18 14:24:39'),
(960, 'xl', NULL, '#ffffff', '850', 155, 1, '2023-08-18 14:24:39', '2023-08-18 14:24:39'),
(961, 's', NULL, '#ffffff', '850', 156, 1, '2023-08-18 14:27:37', '2023-08-18 14:27:37'),
(962, 'm', NULL, '#ffffff', '850', 156, 1, '2023-08-18 14:27:37', '2023-08-18 14:27:37'),
(963, 'l', NULL, '#ffffff', '850', 156, 1, '2023-08-18 14:27:37', '2023-08-18 14:27:37'),
(964, 'xl', NULL, '#ffffff', '850', 156, 1, '2023-08-18 14:27:37', '2023-08-18 14:27:37'),
(965, 's', NULL, '#ffffff', '850', 157, 1, '2023-08-18 14:29:04', '2023-08-18 14:29:04'),
(966, 'm', NULL, '#ffffff', '850', 157, 1, '2023-08-18 14:29:04', '2023-08-18 14:29:04'),
(967, 'l', NULL, '#ffffff', '850', 157, 1, '2023-08-18 14:29:04', '2023-08-18 14:29:04'),
(968, 'xl', NULL, '#fffafa', '850', 157, 1, '2023-08-18 14:29:04', '2023-08-18 14:29:04'),
(969, 's', NULL, '#ffffff', '850', 158, 1, '2023-08-18 14:30:42', '2023-08-18 14:30:42'),
(970, 'm', NULL, '#ffffff', '850', 158, 1, '2023-08-18 14:30:42', '2023-08-18 14:30:42'),
(971, 'l', NULL, '#ffffff', '850', 158, 1, '2023-08-18 14:30:42', '2023-08-18 14:30:42'),
(972, 'xl', NULL, '#ffffff', '850', 158, 1, '2023-08-18 14:30:42', '2023-08-18 14:30:42'),
(973, 's', NULL, '#fcfcfc', '850', 159, 1, '2023-08-18 15:23:17', '2023-08-18 15:23:17'),
(974, 'm', NULL, '#ffffff', '850', 159, 1, '2023-08-18 15:23:17', '2023-08-18 15:23:17'),
(975, 'l', NULL, '#ffffff', '848', 159, 1, '2023-08-18 15:23:17', '2023-08-18 15:23:17'),
(976, 'xl', NULL, '#ffffff', '850', 159, 1, '2023-08-18 15:23:17', '2023-08-18 15:23:17'),
(981, 's', NULL, '#ffffff', '850', 161, 1, '2023-08-18 15:27:21', '2023-08-18 15:27:21'),
(982, 'm', NULL, '#ffffff', '850', 161, 1, '2023-08-18 15:27:21', '2023-08-18 15:27:21'),
(983, 'l', NULL, '#ffffff', '850', 161, 1, '2023-08-18 15:27:21', '2023-08-18 15:27:21'),
(984, 'xl', NULL, '#ffffff', '850', 161, 1, '2023-08-18 15:27:21', '2023-08-18 15:27:21'),
(985, 's', NULL, '#ffffff', '850', 162, 1, '2023-08-18 15:30:49', '2023-08-18 15:30:49'),
(986, 'm', NULL, '#ffffff', '850', 162, 1, '2023-08-18 15:30:49', '2023-08-18 15:30:49'),
(987, 'l', NULL, '#ffffff', '849', 162, 1, '2023-08-18 15:30:49', '2023-08-18 15:30:49'),
(988, 'xl', NULL, '#ffffff', '850', 162, 1, '2023-08-18 15:30:49', '2023-08-18 15:30:49'),
(989, 's', NULL, '#ffffff', '850', 163, 1, '2023-08-18 15:32:42', '2023-08-18 15:32:42'),
(990, 'm', NULL, '#ffffff', '850', 163, 1, '2023-08-18 15:32:42', '2023-08-18 15:32:42'),
(991, 'l', NULL, '#ffffff', '848', 163, 1, '2023-08-18 15:32:42', '2023-08-18 15:32:42'),
(992, 'xl', NULL, '#ffffff', '850', 163, 1, '2023-08-18 15:32:42', '2023-08-18 15:32:42'),
(993, 's', NULL, '#ffffff', '450', 165, 1, '2023-08-18 16:08:12', '2023-08-18 16:08:12'),
(994, 'm', NULL, '#ffffff', '450', 165, 1, '2023-08-18 16:08:12', '2023-08-18 16:08:12'),
(995, 'l', NULL, '#ffffff', '450', 165, 1, '2023-08-18 16:08:12', '2023-08-18 16:08:12'),
(996, 'xl', NULL, '#ffffff', '450', 165, 1, '2023-08-18 16:08:12', '2023-08-18 16:08:12'),
(997, 's', NULL, '#ffffff', '450', 166, 1, '2023-08-18 16:09:44', '2023-08-18 16:09:44'),
(998, 'm', NULL, '#ffffff', '450', 166, 1, '2023-08-18 16:09:44', '2023-08-18 16:09:44'),
(999, 'l', NULL, '#ffffff', '450', 166, 1, '2023-08-18 16:09:44', '2023-08-18 16:09:44'),
(1000, 'xl', NULL, '#ffffff', '450', 166, 1, '2023-08-18 16:09:44', '2023-08-18 16:09:44'),
(1001, 's', NULL, '#ffffff', '450', 167, 1, '2023-08-18 16:11:40', '2023-08-18 16:11:40'),
(1002, 'm', NULL, '#ffffff', '450', 167, 1, '2023-08-18 16:11:40', '2023-08-18 16:11:40'),
(1003, 'l', NULL, '#ffffff', '450', 167, 1, '2023-08-18 16:11:40', '2023-08-18 16:11:40'),
(1004, 'xl', NULL, '#ffffff', '450', 167, 1, '2023-08-18 16:11:40', '2023-08-18 16:11:40'),
(1005, 's', NULL, '#ffffff', '450', 168, 1, '2023-08-18 16:12:54', '2023-08-18 16:12:54'),
(1006, 'm', NULL, '#ffffff', '450', 168, 1, '2023-08-18 16:12:54', '2023-08-18 16:12:54'),
(1007, 'l', NULL, '#ffffff', '449', 168, 1, '2023-08-18 16:12:54', '2023-08-18 16:12:54'),
(1008, 'xl', NULL, '#ffffff', '450', 168, 1, '2023-08-18 16:12:54', '2023-08-18 16:12:54'),
(1009, 's', NULL, '#ffffff', '450', 169, 1, '2023-08-18 16:14:20', '2023-08-18 16:14:20'),
(1010, 'm', NULL, '#ffffff', '450', 169, 1, '2023-08-18 16:14:20', '2023-08-18 16:14:20'),
(1011, 'l', NULL, '#ffffff', '449', 169, 1, '2023-08-18 16:14:20', '2023-08-18 16:14:20'),
(1012, 'xl', NULL, '#f7f7f7', '450', 169, 1, '2023-08-18 16:14:20', '2023-08-18 16:14:20'),
(1013, 's', NULL, '#ffffff', '450', 170, 1, '2023-08-18 16:15:34', '2023-08-18 16:15:34'),
(1014, 'm', NULL, '#ffffff', '450', 170, 1, '2023-08-18 16:15:34', '2023-08-18 16:15:34'),
(1015, 'l', NULL, '#ffffff', '449', 170, 1, '2023-08-18 16:15:34', '2023-08-18 16:15:34'),
(1016, 'xl', NULL, '#ffffff', '450', 170, 1, '2023-08-18 16:15:34', '2023-08-18 16:15:34'),
(1017, '', NULL, '#000000', '1500', 171, 1, '2023-09-18 01:29:47', '2023-09-18 01:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_rating` tinyint(4) NOT NULL DEFAULT 0,
  `user_review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` double(8,2) NOT NULL,
  `minimum_amount` double(8,2) NOT NULL DEFAULT 0.00 COMMENT 'Only for freeshipping',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'active = 1, inactive = 0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `single_data`
--

CREATE TABLE `single_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `heading_one` text NOT NULL,
  `picture_one` varchar(255) NOT NULL,
  `heading_second` text NOT NULL,
  `heading_third` text NOT NULL,
  `picture_second` varchar(255) NOT NULL,
  `heading_fourth` text NOT NULL,
  `picture_third` varchar(255) NOT NULL,
  `heading_fifth` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `single_data`
--

INSERT INTO `single_data` (`id`, `product_id`, `heading_one`, `picture_one`, `heading_second`, `heading_third`, `picture_second`, `heading_fourth`, `picture_third`, `heading_fifth`, `created_at`, `updated_at`) VALUES
(1, 48, 'আপনি কি স্পেলারে ভাঙ্গানো পুড়ে যাওয়া অথবা বিভিন্ন ধরনের কেমিক্যাল মিশ্রিত সরিষার তেল খাচ্ছেন?', 'white-gray-clean-shoes-discount-facebook-post-14-1688331305-1699278152.png', 'সয়াবিন তেলের পরিবর্তে কেন আপনার ঘানি ভাঙ্গা সরিষার তেল খাওয়া উচিৎ?', 'সেফফুড এর সরিষার তেলে কেন আস্থা রাখবেন ?', 'white-gray-clean-shoes-discount-facebook-post-14-1688331305-1699278152.png', 'সরিষার তেলের কিছু উপকারিতা যা আমরা অনেকেই জানিনা', 'white-gray-clean-shoes-discount-facebook-post-14-1688331305-1699278152.png', 'প্রথম চাপের ঘানি ভাঙ্গা খাঁটি সরিষার তেল ৫ লিটারের', NULL, '2023-11-06 21:42:32'),
(2, 49, 'first', '1699190770-ad-1699276981.jpeg', 'second', 'third', '1699190734-482874-1024x1024-1699276981.jpg', 'fourth', '1699190734-482874-1024x1024-1699277060.jpg', 'fifth', '2023-11-06 21:05:36', '2023-11-06 21:24:20'),
(3, 173, 'LUXURY LONG PREMIUM WALLET', 'dsc00475-min-1694976571-1699295786.jpg', 'LUXURY LONG PREMIUM WALLET', 'LUXURY LONG PREMIUM WALLET', '391619837-122113532840050349-4450270874976568391-n-1699384387.jpg', 'LUXURY LONG PREMIUM WALLET', '391625677-122113532822050349-7363246556798769438-n-1699384387.jpg', 'LUXURY LONG PREMIUM WALLET', '2023-11-07 02:36:26', '2023-11-08 03:13:07'),
(4, 170, 'test', 'tshirt-1699299177.jpg', 'test', 'test', 'tshirt-1699299177.jpg', 'test', 'tshirt-1699299177.jpg', 'test', '2023-11-07 03:32:57', '2023-11-07 03:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Desktop=1, Mobile=2',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `slider_description`, `slider_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Desktop Slider', NULL, 1, 1, '2022-12-21 12:48:33', '2023-07-13 11:16:45'),
(2, 'Mobile Slider', NULL, 2, 1, '2023-05-08 12:08:51', '2023-07-11 12:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE `slider_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hover_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_images`
--

INSERT INTO `slider_images` (`id`, `title`, `hover_text`, `img`, `slider_id`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '1900-570-1671648525.jpg', 1, 0, 2, NULL, '2023-03-17 14:34:08'),
(2, NULL, NULL, '1900x570-1-1671648525.webp', 1, 1, 2, NULL, '2023-03-17 14:34:08'),
(3, NULL, NULL, 'winter-campaign1900x570-scaled-1671648525.webp', 1, 2, 2, NULL, '2023-03-17 14:34:08'),
(16, NULL, NULL, 'mobile-slider-img1-1632718055-1683569331.jpg', 2, 0, 2, NULL, '2023-07-01 03:30:25'),
(17, NULL, NULL, 'mobile-slider-img2-1632718055-1683569331.jpg', 2, 1, 2, NULL, '2023-07-01 03:30:25'),
(28, NULL, NULL, '1-1688445020.jpg', 1, 5, 1, NULL, NULL),
(33, NULL, NULL, 'white-gray-clean-shoes-discount-facebook-post-72-1688727947-min-1689055054.png', 2, 2, 1, NULL, NULL),
(34, NULL, NULL, 'mobile-slider-min-1689055083.png', 2, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `title`, `slug`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'facebook', 'https://facebodok.com', 'facebook-1683172553.png', 1, '2023-05-03 21:45:31', '2023-05-03 21:56:09'),
(2, 'Twitter', 'twitter', 'https://twitter.com/', 'twitter-1683172092.png', 1, '2023-05-03 21:48:12', '2023-05-03 21:48:12'),
(3, 'Instagram', 'instagram', 'https://www.instagram.com/', 'instagram-1-1683172122.png', 1, '2023-05-03 21:48:42', '2023-05-03 21:48:42'),
(4, 'Youtube', 'youtube', 'https://www.youtube.com/', 'youtube-1683172143.png', 1, '2023-05-03 21:49:03', '2023-05-03 21:49:03'),
(5, 'Whatsapp', 'whatsapp', 'https://www.whatsapp.com/', 'whatsapp-1683172166.png', 1, '2023-05-03 21:49:26', '2023-05-03 21:49:26'),
(6, 'Linkedin', 'linkedin', 'https://www.linkedin.com/', 'linkedin-1683172214.png', 1, '2023-05-03 21:50:14', '2023-05-03 21:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `special_categories`
--

CREATE TABLE `special_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `special_categories`
--

INSERT INTO `special_categories` (`id`, `title`, `slug`, `short_desc`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top Collection', 'top-collection', NULL, NULL, 1, '2023-03-19 12:46:29', '2023-03-19 12:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `district_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Akhaura', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(2, 'Ashuganj', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(3, 'Bancharampur', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(4, 'Bijoynagar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(5, 'Brahmanbaria Sadar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(6, 'Kasba', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(7, 'Nabinagar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(8, 'Nasirnagar', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(9, 'Sarial', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(10, 'Jaldi', 17, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(11, 'Bagerhat Sadar', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(12, 'Chitalmari', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(13, 'Fakirhat', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(14, 'Kachua', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(15, 'Mollahat', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(16, 'Mongla', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(17, 'Morrelganj', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(18, 'Rampal', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(19, 'Sarankhola', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(20, 'Chalna Ankorage', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(21, 'Sajiara', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(22, 'Madinabad', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(23, 'Chalna Bazar', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(24, 'Alaipur', 25, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(25, 'Alikadam', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(26, 'Bandarban Sadar', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(27, 'Lama', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(28, 'Naikhongchhari', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(29, 'Roanchhari', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(30, 'Ruma', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(31, 'Thanchi', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(32, 'Baishari', 23, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(33, 'Agailzhara', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(34, 'Babuganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(35, 'Bakerganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(36, 'Banaripara', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(37, 'Barishal Sadar', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(38, 'Gouranadi', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(39, 'Hizla', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(40, 'Mehendiganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(41, 'Muladi', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(42, 'Uzirpur', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(43, 'Barajalia', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(44, 'Sahebganj', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(45, 'Kajir Hat', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(46, 'Kawnia', 51, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(47, 'Bhola Sadar', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(48, 'Burhanuddin', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(49, 'Char Fasson', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(50, 'Daulatkhan', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(51, 'Lalmohan', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(52, 'Manpura', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(53, 'Tazumuddin', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(54, 'Hajirhat', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(55, 'Hatshoshiganj', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(56, 'Dakshinaicha', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(57, 'Shasibussion', 53, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(58, 'Adamdighi', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(59, 'Bogura Sadar', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(60, 'Dhunat', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(61, 'Dupchanchia', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(62, 'Gabtoli', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(63, 'Kahalu', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(64, 'Nandigram', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(65, 'Sariakandi', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(66, 'Shajahanpur', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(67, 'Sherpur', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(68, 'Shibganj', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(69, 'Sonatola', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(70, 'Tanor', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(71, 'Lalitganj', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(72, 'Khodmohanpur', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(73, 'Bhabaniganj', 48, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(74, 'Amtali', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(75, 'Bamna', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(76, 'Barguna Sadar', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(77, 'Betagi', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(78, 'Patharghata', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(79, 'Taltoli', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(80, 'Taltali', 52, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(81, 'Chandpur Sadar', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(82, 'Faridganj', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(83, 'Hayemchar', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(84, 'Hajiganj', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(85, 'Kachua', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(86, 'Matlab Dakshin', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(87, 'Matlab Uttar', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(88, 'Shahrasti', 19, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(89, 'Bholahat', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(90, 'Gomashtapur', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(91, 'Nachole', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(92, 'Nawabganj Sadar', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(93, 'Shibganj', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(94, 'Rohanpur', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(95, 'Chapainawabganj Sadar', 49, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(96, 'Anwara', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(97, 'Bandar', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(98, 'Banshkhali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(99, 'Boalkhali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(100, 'Chandanaish', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(101, 'Chandgaon', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(102, 'Double Mooring', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(103, 'Fatikchhari', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(104, 'Hathazari', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(105, 'Kotwali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(106, 'Lohagara', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(107, 'Mirsharai', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(108, 'Pahartali', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(109, 'Panchlaish', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(110, 'Patiya', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(111, 'Rangunia', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(112, 'Rouzan', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(113, 'Sandwip', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(114, 'Satkania', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(115, 'Sitakunda', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(116, 'Karnaphuli ', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(117, 'Bhujpur', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(118, 'Chattogram Sadar', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(119, 'Bayazid Bostami', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(120, 'Chittagong Epz', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(121, 'Joraganj', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(122, 'Khulshi', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(123, 'Sadarghat', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(124, 'East Joara', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(125, 'Halishahar', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(126, 'Bakalia', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(127, 'Patenga', 14, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(128, 'Alamdanga', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(129, 'Chuadanga Sadar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(130, 'Chuadanga Sadar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(131, 'Jibannagar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(132, 'Jiban Nagar', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(133, 'Doulatganj', 26, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(134, 'Barura', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(135, 'Brahmanpara', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(136, 'Burichang', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(137, 'Chandina', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(138, 'Chauddagram', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(139, 'Cumilla Adarsha Sadar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(140, 'Cumilla Sadar Dakshin', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(141, 'Daudkandi', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(142, 'Debidwar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(143, 'Homna', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(144, 'Laksam', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(145, 'Meghna', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(146, 'Monohargonj', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(147, 'Muradnagar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(148, 'Nangalkot', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(149, 'Titas', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(150, 'Bangora Bazar', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(151, 'Manoharganj', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(152, 'Lalmai', 18, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(153, 'Chakaria', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(154, 'Cox\'s Bazar Sadar', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(155, 'Kutubdia', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(156, 'Maheshkhali', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(157, 'Pekua', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(158, 'Ramu', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(159, 'Teknaf', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(160, 'Ukhia', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(161, 'Gorakghat', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(162, 'Chiringga', 24, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(163, 'Adabor', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(164, 'Badda', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(165, 'Bangsal', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(166, 'Bimanbandar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(167, 'Cantonment', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(168, 'Chak Bazar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(169, 'Dakshinkhan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(170, 'Darus Salam', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(171, 'Demra', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(172, 'Dhamrai', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(173, 'Dhanmondi', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(174, 'Dohar.', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(175, 'Gendaria', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(176, 'Gulshan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(177, 'Hazaribagh', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(178, 'Jatrabari', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(179, 'Kadamtali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(180, 'Kafrul', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(181, 'Kalabagan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(182, 'Kamrangirchar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(183, 'Keraniganj', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(184, 'Khilgaon', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(185, 'Khilkhet', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(186, 'Kotwali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(187, 'Lalbagh', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(188, 'Mirpur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(189, 'Mohakhali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(190, 'Mohammadpur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(191, 'Motijheel', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(192, 'Nawabganj', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(193, 'Natun Bazar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(194, 'Pallabi', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(195, 'Paltan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(196, 'Ramna', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(197, 'Rampura', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(198, 'Sabujbagh', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(199, 'Savar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(200, 'Shah Ali', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(201, 'Shahbag', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(202, 'Sher-e-Bangla Nagar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(203, 'Shyampur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(204, 'Sutrapur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(205, 'Tejgaon', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(206, 'Tejgaon Industrial Area', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(207, 'Turag', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(208, 'Uttar Khan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(209, 'Uttara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(210, 'Joypara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(211, 'Ashulia', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(212, 'Rupnagar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(213, 'Shahjahanpur', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(214, 'Shahjalal Airport', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(215, 'Uttara East', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(216, 'Uttara West', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(217, 'Vatara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(218, 'Wari', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(219, 'Dakshin Khan', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(220, 'Dhaka Railway', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(221, 'Mugda', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(222, 'New Market', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(223, 'South Keraniganj', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(224, 'Bhashantek', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(225, 'New Market TSO', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(226, 'Shantinagar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(227, 'Banani', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(228, 'Mugdapara', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(229, 'Shankar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(230, 'Kawran Bazar', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(231, 'Banglamotor', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(232, 'Kakrail', 1, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(233, 'Biral', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(234, 'Birampur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(235, 'Birganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(236, 'Bochaganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(237, 'Chirirbandar', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(238, 'Dinajpur Sadar', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(239, 'Ghoraghat', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(240, 'Hakimpur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(241, 'Kaharole', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(242, 'Khansama', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(243, 'Nawabganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(244, 'Parbatipur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(245, 'Phulbari', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(246, 'Setabganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(247, 'Osmanpur', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(248, 'Maharajganj', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(249, 'Bangla Hili', 58, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(250, 'Alfadanga', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(251, 'Bhanga', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(252, 'Boalmari', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(253, 'Charbhadrasan ', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(254, 'Faridpur Sadar', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(255, 'Madhukhali', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(256, 'Nagarkanda', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(257, 'Sadarpur', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(258, 'Saltha', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(259, 'Sundarpur', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(260, 'Shriangan', 9, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(261, 'Chhagalnaiya', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(262, 'Daganbhuiyan', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(263, 'Feni Sadar', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(264, 'Fulgazi', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(265, 'Parshuram', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(266, 'Sonagazi', 16, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(267, 'Gaibandha Sadar', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(268, 'Gobindaganj', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(269, 'Palashbari', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(270, 'Phulchhari', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(271, 'Saadullapur', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(272, 'Sughatta', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(273, 'Sundarganj', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(274, 'Bonarpara', 61, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(275, 'Gazipur Sadar', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(276, 'Kaliakair', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(277, 'Kaliganj', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(278, 'Kapasia', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(279, 'Sreepur', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(280, 'Tongi', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(281, 'Monnunagar', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(282, 'Ostagram', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(283, 'Kashimpur', 2, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(284, 'Gopalganj Sadar', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(285, 'Kashiani', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(286, 'Kotalipara', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(287, 'Muksudpur', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(288, 'Tungipara', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(289, 'Joydebpur', 10, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(290, 'Azmireeganj ', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(291, 'Bahubal', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(292, 'Baniachong', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(293, 'Chunarughat', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(294, 'Habiganj Sadar', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(295, 'Lakhai', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(296, 'Madhabpur', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(297, 'Nabiganj', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(298, 'Shayestaganj', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(299, 'Kalauk', 35, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(300, 'Bakshiganj', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(301, 'Dewanganj', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(302, 'Islampur', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(303, 'Jamalpur Sadar', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(304, 'Madarganj', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(305, 'Melandaha', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(306, 'Sarishabari', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(307, 'River Thana Bahadurabad', 41, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(308, 'Abhaynagar', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(309, 'Bagherpara', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(310, 'Chaugachha', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(311, 'Jashore Sadar', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(312, 'Jhikargachha', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(313, 'Keshabpur', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(314, 'Manirampur', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(315, 'Sharsha', 27, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(316, 'Jhalokati Sadar', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(317, 'Kathalia', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(318, 'Nalchhiti', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(319, 'Rajapur', 54, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(320, 'Harinakundu', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(321, 'Jhenaidah Sadar', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(322, 'Kaliganj', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(323, 'Kotchandpur', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(324, 'Maheshpur', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(325, 'Shailkupa', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(326, 'Benapole Port', 28, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(327, 'Akkelpur', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(328, 'Joypurhat Sadar', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(329, 'Kalai', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(330, 'Khetlal', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(331, 'Panchbibi', 50, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(332, 'Dighinala', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(333, 'Khagrachhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(334, 'Lakshmichhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(335, 'Mahalchhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(336, 'Manikchhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(337, 'Matiranga', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(338, 'Panchhari', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(339, 'Ramgarh', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(340, 'Guimara', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(341, 'Khagrachhari Sadar', 21, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(342, 'Batiaghata', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(343, 'Dacope', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(344, 'Daulatpur', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(345, 'Dighalia', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(346, 'Dumuria', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(347, 'Harintana', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(348, 'Khalishpur', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(349, 'Khan Jahan Ali', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(350, 'Kotwali', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(351, 'Koyra', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(352, 'Paikgachha', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(353, 'Phultala', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(354, 'Rupsha', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(355, 'Sonadanga', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(356, 'Terokhada', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(357, 'Khulna Sadar', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(358, 'Aronghata', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(359, 'Labanchora', 29, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(360, 'Astagram', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(361, 'Bajitpur', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(362, 'Bhairab', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(363, 'Hossainpur', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(364, 'Itna', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(365, 'Karimganj', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(366, 'Katiadi', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(367, 'Kishoreganj Sadar', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(368, 'Kuliarchar', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(369, 'Mithamain', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(370, 'Nikli', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(371, 'Pakundia', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(372, 'Tarail', 3, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(373, 'Bhurungamari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(374, 'Char Rajibpur', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(375, 'Chilmari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(376, 'Kurigram Sadar', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(377, 'Nageshwari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(378, 'Phulbari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(379, 'Rajarhat', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(380, 'Roumari', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(381, 'Ulipur', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(382, 'Dusmara', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(383, 'Kachakata', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(384, 'Rajibpur', 59, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(385, 'Bheramara', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(386, 'Daulatpur', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(387, 'Khoksa', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(388, 'Kumarkhali', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(389, 'Kushtia Sadar', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(390, 'Mirpur', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(391, 'Shekhpara', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(392, 'Islamic University', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(393, 'Rafayetpur', 30, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(394, 'Aditmari', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(395, 'Hatibandha', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(396, 'Kaliganj', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(397, 'Lalmonirhat Sadar', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(398, 'Patgram', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(399, 'Tushbhandar', 64, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(400, 'Kamalnagar', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(401, 'Lakshmipur Sadar', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(402, 'Raipur', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(403, 'Ramganj', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(404, 'Ramgati', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(405, 'Char Alexgander', 20, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(406, 'Kalkini', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(407, 'Madaripur Sadar', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(408, 'Rajoir', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(409, 'Shibchar', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(410, 'Dashar', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(411, 'Barhamganj', 11, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(412, 'Magura Sadar', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(413, 'Mohammadpur', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(414, 'Shalikha', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(415, 'Sreepur', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(416, 'Arpara', 31, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(417, 'Daulatpur', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(418, 'Ghior', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(419, 'Harirampur', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(420, 'Manikganj Sadar', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(421, 'Saturia', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(422, 'Shivalaya', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(423, 'Singair', 4, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(424, 'Gangni', 32, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(425, 'Meherpur Sadar', 32, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(426, 'Mujibnagar', 32, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(427, 'Baralekha', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(428, 'Juri', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(429, 'Kamalganj', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(430, 'Kulaura', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(431, 'Moulvibazar Sadar', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(432, 'Rajnagar', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(433, 'Sreemangal', 36, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(434, 'Gazaria', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(435, 'Lohajang', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(436, 'Munshiganj Sadar', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(437, 'Sirajdikhan', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(438, 'Sreenagar', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(439, 'Tongibari', 5, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(440, 'Bhaluka', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(441, 'Dhobaura', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(442, 'Fulbaria', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(443, 'Gaffargaon', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(444, 'Gouripur', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(445, 'Haluaghat', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(446, 'Isshwargonj', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(447, 'Muktagachha', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(448, 'Mymensingh Sadar', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(449, 'Nandail', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(450, 'Phulpur', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(451, 'Tara Khanda', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(452, 'Trishal', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(453, 'Tarakanda', 39, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(454, 'Atrai', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(455, 'Badalgachhi', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(456, 'Dhamoirhat', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(457, 'Manda', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(458, 'Mohadevpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(459, 'Naogaon Sadar', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(460, 'Niamatpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(461, 'Patnitala', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(462, 'Porsa', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(463, 'Raninagar', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(464, 'Sapahar', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(465, 'Prasadpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(466, 'Nitpur', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(467, 'Ahsanganj', 45, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(468, 'Kalia', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(469, 'Lohagora', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(470, 'Naragati', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(471, 'Narail Sadar', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(472, 'Naragathi', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(473, 'Mohajan', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(474, 'Laxmipasha', 33, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(475, 'Araihazar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(476, 'Bandar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(477, 'Narayanganj Sadar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(478, 'Rupganj', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(479, 'Sonargaon', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(480, 'Fatullah', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(481, 'Siddirganj', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(482, 'Baidder Bazar', 6, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(483, 'Belabo', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(484, 'Monohardi', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(485, 'Narsingdi Sadar', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(486, 'Palash', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(487, 'Raipura', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(488, 'Shibpur', 7, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(489, 'Bagatipara', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(490, 'Baraigram', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(491, 'Gurudaspur', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(492, 'Lalpur', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(493, 'Naldanga', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(494, 'Natore Sadar', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(495, 'Singra', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(496, 'Laxman', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(497, 'Harua', 44, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(498, 'Atpara', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(499, 'Barhatta', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(500, 'Durgapur', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(501, 'Kalmakanda', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(502, 'Kendua', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(503, 'Khaliajhri', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(504, 'Madan', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(505, 'Mohanganj', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(506, 'Netrakona Sadar', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(507, 'Purbadhola', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(508, 'Moddoynagar', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(509, 'Dhobaura', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(510, 'Susnng Durgapur', 40, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(511, 'Dimla', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(512, 'Domar', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(513, 'Jaldhaka', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(514, 'Kishoriganj', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(515, 'Nilphamari Sadar', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(516, 'Saidpur', 60, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(517, 'Begumganj', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(518, 'Chatkhil', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(519, 'Companiganj', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(520, 'Hatiya', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(521, 'Kabirhat', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(522, 'Noakhali Sadar', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(523, 'Senbag', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(524, 'Sonaimuri', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(525, 'Subarnachar', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(526, 'Char Jabbar', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(527, 'Sudharam', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(528, 'Basur Hat', 15, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(529, 'Ataikula', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(530, 'Atgharia', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(531, 'Bera', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(532, 'Bhangura', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(533, 'Chatmohar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(534, 'Faridpur', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(535, 'Ishwardi', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(536, 'Pabna Sadar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(537, 'Sathia', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(538, 'Sujanagar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(539, 'Aminpur', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(540, 'Debottar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(541, 'Banwarinagar', 47, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(542, 'Atwari', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(543, 'Boda', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(544, 'Dabiganj', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(545, 'Panchagar Sadar', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(546, 'Tetulia', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(547, 'Chotto Dab', 63, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(548, 'Bauphal', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(549, 'Dashmina', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(550, 'Dumki', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(551, 'Galachipa', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(552, 'Kalapara', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(553, 'Mirzaganj', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(554, 'Patuakhali Sadar', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(555, 'Rangabali', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(556, 'Khepupara', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(557, 'Subidkhali', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(558, 'Mohipur', 55, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(559, 'Bhandaria', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(560, 'Kaukhali ', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(561, 'Mathbaria', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(562, 'Nazirpur', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(563, 'Nesarabad', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(564, 'Pirojpur Sadar', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(565, 'Zianagor', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(566, 'Swarupkathi', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(567, 'Indurkani', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(568, 'Zianagar', 56, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(569, 'Baliakandi', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(570, 'Goalandaghat', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(571, 'Kalukhali', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(572, 'Pangsha', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(573, 'Rajbari Sadar', 12, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(574, 'Bagha', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(575, 'Bagmara', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(576, 'Boalia', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(577, 'Charghat', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(578, 'Durgapur', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(579, 'Durgapur', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(580, 'Matihar', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(581, 'Mohanpur', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(582, 'Paba', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(583, 'Putia', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(584, 'Rajpara', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(585, 'Shah Mokdum', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(586, 'Tanore', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(587, 'Rajshahi Sadar', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(588, 'Shah Makhdum', 43, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(589, 'Baghaichhari', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(590, 'Barakal', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(591, 'Bilaichari', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(592, 'Jarachhari', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(593, 'Kaptai', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(594, 'Kaukhali ', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(595, 'Langadu', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(596, 'Naniarchar', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(597, 'Rajasthali', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(598, 'Rangamati Sadar', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(599, 'Nanichhar', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(600, 'Marishya', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(601, 'Longachh', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(602, 'Kalampati', 22, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(603, 'Badarganj', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(604, 'Gangachhara', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(605, 'Kaunia', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(606, 'Mithapukur', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(607, 'Pirgachha', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(608, 'Pirganj', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(609, 'Rangpur Sadar', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(610, 'Taraganj', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(611, 'Mitha Pukur', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(612, 'Kotwali', 57, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(613, 'Assasuni', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(614, 'Debhata', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(615, 'Kalaroa', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(616, 'Kaliganj', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(617, 'Satkhira Sadar', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(618, 'Shyamnagar', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(619, 'Tala', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(620, 'Nakipur', 34, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(621, 'Bhedarganj', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(622, 'Damudya', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(623, 'Gosairhat', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(624, 'Naria', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(625, 'Shakhipur', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(626, 'Shariatpur Sadar', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(627, 'Zanjira', 13, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(628, 'Jhenaigati', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(629, 'Nakla', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(630, 'Nalitabari', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(631, 'Sherpur Sadar', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(632, 'Shribardi', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(633, 'Bakshigonj', 42, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(634, 'Belkuchi', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(635, 'Chauhali', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(636, 'Kamarkhanda', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(637, 'Kazipur', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(638, 'Raiganj', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(639, 'Shahjadpur', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(640, 'Sirajganj Sadar', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(641, 'Tarash', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(642, 'Ullapara', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(643, 'Bangabandhu Bridge West', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(644, 'Kamarkanda', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(645, 'Salanga', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(646, 'Dhangora', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(647, 'Baiddya Jam Toil', 46, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(648, 'Bishwamvarpur', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(649, 'Chhatak', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(650, 'Derai', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(651, 'Dharampasha', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(652, 'Dowarabazar', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(653, 'Jagnnathpur', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(654, 'Jamalganj', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(655, 'Dakshin Sunamganj', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(656, 'Sullah', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(657, 'Sunamganj Sadar', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(658, 'Tahirpur', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(659, 'Sachna', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(660, 'Ghungiar', 37, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(661, 'Balaganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(662, 'Beanibazar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(663, 'Bishwanath', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(664, 'Companiganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(665, 'Fenchuganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(666, 'Golapganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(667, 'Goainghat', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(668, 'Jaintapur', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(669, 'Kanaighat', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(670, 'South Shurma', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(671, 'Sylhet Sadar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(672, 'Jakiganj', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(673, 'Osmani Nagar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(674, 'Mogla Bazar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(675, 'Shahporan', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(676, 'Dakshin Surma', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(677, 'Moddho Nagar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(678, 'Moglabazar', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(679, 'Shahparan (R:)', 38, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(680, 'Basail', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(681, 'Bhuapur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(682, 'Delduar', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(683, 'Dhanbari', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(684, 'Ghatail', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(685, 'Gopalpur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(686, 'Kalihati', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(687, 'Madhupur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(688, 'Mirzapur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(689, 'Nagarpur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(690, 'Sakhipur', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(691, 'Tangail Sadar', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(692, 'Bangabandu East Ps', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(693, 'Jamuna Bridge (East)', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(694, 'Kashkawlia', 8, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(695, 'Baliadangi', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(696, 'Haripur', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(697, 'Pirganj', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(698, 'Rani Sankail', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(699, 'Thakurgaon Sadar', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03'),
(700, 'Jibanpur', 62, 1, '2022-09-28 01:37:03', '2022-09-28 01:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Male=1,Female=2,Other=3',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state/district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL COMMENT 'Admin=1, User=2',
  `account_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Normal=1, Google=2,Facebook=3',
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Active=1, Inactive=2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `avatar`, `gender`, `phone`, `address`, `zip`, `city`, `state/district`, `country`, `role`, `account_type`, `provider_id`, `user_currency`, `email_verified_at`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '$2a$12$2N8t47FUKyiQ.4IJrUd8nODbStVT64DNN6XcsTY/oMD8S/hiCWLpi', '', 0, '01715587496', '', NULL, '', '', '', 1, 1, '', NULL, NULL, 1, NULL, '2022-12-19 15:34:58', '2023-05-03 21:10:24'),
(2, 'user', 'hello.user', 'user@gmail.com', '$2y$10$2E6MsRe8Xv5nrovIbaHCnuYzL31z5hwMFG8JIMh5GFoCIkVLU7Qfq', '', 0, '01715587497', '', NULL, '', '', '', 2, 1, '', NULL, NULL, 1, NULL, '2022-12-19 15:34:58', '2022-12-19 15:34:58'),
(3, 'Anik Rahman', 'anik rahman', 'a7604366@gmail.com', '$2y$10$u4lXXPKcqy7XZKN/2VvMfuMK20mM.ch2T2CcjsLKCeOiGFhuet/Uq', '299110-check-sign-icon-1679849036.png', 0, '01740829980', 'Road-2', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '2022-12-30 20:48:46', '2023-03-26 10:43:56'),
(4, 'joker', 'joker123538942', 'joker@gmail.com', '$2y$10$UP2GbSMwRGxvts40lK5b8.FbCL8lGC44UgLLm10VBhcZ7ifIcmTGO', 'new2-1679864696.png', 0, '01458465445', 'dawdwd', NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '2023-03-26 12:45:12', '2023-03-26 15:04:56'),
(5, 'jack', 'jack', 'jack@gmail.com', '$2y$10$NsnRO6uartCntqFIHgq9ZOglZDpTMwKUgvf068wzr9JHQeIkmwPBG', 'new2-1681494335.png', 0, '01742854545', NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '2023-04-14 11:45:36', '2023-04-14 11:45:36'),
(6, 'DavidKaste', 'davidkaste70057702', 'kat-service56ru@ya.ru', '$2y$10$3W3PsqyLnpWa110D2CpEDuXQfZVOjEZsM/jHASeTChKwji4V7.3Li', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '2023-09-09 08:54:12', '2023-09-09 08:54:12'),
(7, 'Orlando Harber', 'orlando harber161014787', 'Meta747.Koss_1982@alabamahomenetwoks.com', '$2y$10$6Qy63O5e1k8dse5pIotf3u/mnggsVdPkxsoWeP/8pcht5WWRdVP0i', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '2023-10-08 01:18:40', '2023-10-08 01:18:40'),
(8, 'Mr. Rudolph Corkery', 'mr. rudolph corkery340157453', 'Nona883Herzog_1997@alabamahomenetwoks.com', '$2y$10$YrRz71CSF9Hj9SwEptr9p.y74ECjI9nUzcCS8UVk7y5L5Aqd3fEy6', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, 1, NULL, '2023-10-19 16:50:57', '2023-10-19 16:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `web_orders`
--

CREATE TABLE `web_orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `web_orders`
--

INSERT INTO `web_orders` (`id`, `product_id`, `price`, `quantity`, `sub_total`, `name`, `phone`, `email`, `address`, `updated_at`, `created_at`) VALUES
(1, 173, '1650', '3', '1650', 'Gazi Nasim', '064567', 'gazinasim001@gmail.com', 'fkdjsfj', '2023-11-08 09:31:58', '2023-11-08 09:31:58'),
(2, 170, '450', '3', '1350', 'Gazi Nasim', '01927788578', 'gazinasim001@gmail.com', 'fassfd', '2023-11-08 10:26:37', '2023-11-08 10:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `why_mustrads`
--

CREATE TABLE `why_mustrads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `why_mustrads`
--

INSERT INTO `why_mustrads` (`id`, `product_id`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, 48, '1699191147_aa-removebg-preview.png', 'হজমশক্তি বৃদ্ধি করে', '2023-11-05 15:32:27', '2023-11-05 15:32:27'),
(2, 48, '1699191147_b1-removebg-preview.png', 'ক্যান্সার প্রতিরোধ করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(3, 48, '1699191148_c1-removebg-preview.png', 'ওজন কমাতে সাহায্য করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(4, 48, '1699191148_Untitled_design__7_-removebg-preview.png', 'সর্দি কাশি উপশম করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(5, 48, '1699191148_Untitled_design__8_-removebg-preview.png', 'ত্বকের কালো দাগ ছোপ কমাতে সাহায্য করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(6, 48, '1699191148_Untitled_design__9_-removebg-preview.png', 'শরীরের ব্যথা কম করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(7, 48, '1699191148_Untitled_design__10_-removebg-preview.png', 'হৃদপিন্ড ঠিক রাখতে সাহায্য করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(8, 48, '1699191148_Untitled_design__11_-removebg-preview.png', 'রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(9, 48, '1699191148_Untitled_design__12_-removebg-preview.png', 'ত্বকের ডার্ক স্পট, ট্যান বা পিগমেন্টশন কমায়।', '2023-11-05 15:32:28', '2023-11-05 15:32:28'),
(11, 48, '1699292303_1699191148_Untitled_design__8_-removebg-preview.png', 'test details', '2023-11-07 01:38:23', '2023-11-07 01:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `why_safefoods`
--

CREATE TABLE `why_safefoods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `why_safefoods`
--

INSERT INTO `why_safefoods` (`id`, `product_id`, `details`, `created_at`, `updated_at`) VALUES
(1, 48, 'বাংলাদেশের কৃষকদের উৎপাদিত বিভিন্ন জাতের সরিষার মধ্য হতে মাঘী সরিষার দানা সব থেকে বেশি পুষ্টিগুন সমৃদ্ধ।', '2023-11-05 15:36:44', '2023-11-05 15:36:44'),
(2, 48, 'সেফফুড প্রান্তিক কৃষকদের কাছ থেকে মাঘী সরিষা সংগ্রহ করে স্টক করে, সারাবছর ব্যাপী সরিষার তেল উৎপাদনের জন্য।', '2023-11-05 15:36:44', '2023-11-05 15:36:44'),
(3, 48, 'সেফফুড এর কর্মীরা পরম মমতায় তেল বোতলজাত এবং হোম ডেলিভারির কাজটি করে থাকে।', '2023-11-05 15:36:44', '2023-11-05 15:36:44'),
(4, 48, 'সেফফুডের উৎপাদিত তেল পরম যত্নের সাথে উন্নতমানের ফিল্টার মেশিনে ফিল্টার করা হয়।', '2023-11-05 15:36:44', '2023-11-05 15:36:44'),
(5, 48, 'সেফফুডের সরিষার তেল ১০০% মাঘী সরিষার দানা থেকে সম্পূর্ণ পুষ্টিগুণ অক্ষুণ্ণ রেখে মোটর চালিত তেতুল কাঠের ঘানিতে কোল্ড প্রেস পদ্ধতিতে উৎপাদন করা হয় ।', '2023-11-05 15:36:45', '2023-11-05 15:36:45'),
(7, 48, 'test', '2023-11-07 03:30:28', '2023-11-07 03:30:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advantages`
--
ALTER TABLE `advantages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_title_unique` (`title`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_title_unique` (`title`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_shippings`
--
ALTER TABLE `local_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `offers_title_unique` (`title`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_title_unique` (`title`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_tags_title_unique` (`title`),
  ADD UNIQUE KEY `product_tags_slug_unique` (`slug`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single_data`
--
ALTER TABLE `single_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_images`
--
ALTER TABLE `slider_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_icons_title_unique` (`title`),
  ADD UNIQUE KEY `social_icons_slug_unique` (`slug`);

--
-- Indexes for table `special_categories`
--
ALTER TABLE `special_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `special_categories_title_unique` (`title`),
  ADD UNIQUE KEY `special_categories_slug_unique` (`slug`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `web_orders`
--
ALTER TABLE `web_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_mustrads`
--
ALTER TABLE `why_mustrads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `why_safefoods`
--
ALTER TABLE `why_safefoods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advantages`
--
ALTER TABLE `advantages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `local_shippings`
--
ALTER TABLE `local_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `single_data`
--
ALTER TABLE `single_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider_images`
--
ALTER TABLE `slider_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `special_categories`
--
ALTER TABLE `special_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `web_orders`
--
ALTER TABLE `web_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `why_mustrads`
--
ALTER TABLE `why_mustrads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `why_safefoods`
--
ALTER TABLE `why_safefoods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
