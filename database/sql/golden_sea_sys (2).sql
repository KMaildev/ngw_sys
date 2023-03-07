-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2023 at 05:09 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golden_sea_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_lists`
--

CREATE TABLE `agent_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agent_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_front` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_back` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `township_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_lists`
--

INSERT INTO `agent_lists` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`, `agent_code`, `nrc`, `nrc_front`, `nrc_back`, `region_id`, `township_id`, `remark`, `add_user_id`, `join_date`, `photo`) VALUES
(1, 'ABC Co.,Ltd', NULL, NULL, NULL, '2023-02-20 06:37:07', '2023-03-03 01:57:23', 'A-00001', NULL, NULL, NULL, '1', '1', NULL, '1', '2023-03-03 02:57 PM', 'public/agents/SV8yfa4gTWniOzZ4b3WfqHJVuDFOEHReXRycjCtw.jpg'),
(2, 'U Mg Mg', NULL, NULL, NULL, '2023-02-20 06:37:07', '2023-02-21 20:44:49', 'A-00002', '2/abc(N)009221', NULL, NULL, '2', '45', NULL, '1', '2023-02-22 09:44 AM', NULL),
(3, 'Zin Min Tun', 'zinmin@gmail.com', '09444161997', 'Yangon', '2023-02-20 06:37:07', '2023-02-21 20:44:24', 'A-000003', '2/abc(N)009221', 'public/agents/RNS3NkNuuodmfssgbsoi3LHu1KXPewzDEmGzR0ja.jpg', 'public/agents/zB9s1IZux6YBLJxduf8ewidfS8NOgT8vUm1WzRbp.jpg', '1', '1', 'No', '1', '2023-02-22 09:44 AM', 'public/agents/VNcLgCdQD7Jh30A93ZkjHJeEMcfLlntfb9pgPnh9.jpg'),
(4, 'Aung Aung', NULL, '09555161554', 'Mandalay', '2023-02-20 06:41:28', '2023-02-21 07:40:54', 'A-000002', '1/abc(N)992331', '', '', '2', '45', NULL, '1', '2023-02-21 08:40 PM', 'public/agents/TERLmxXJ38SkgrJ17OFCNWuQ8zsWx9oZzae6i4G7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `contract_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_male` int(11) DEFAULT NULL,
  `contract_female` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `contract_date`, `contract_male`, `contract_female`, `remark`, `demand_id`, `created_at`, `updated_at`) VALUES
(4, '1.1.2023', 100, 0, 'Contract', 1, '2023-03-06 04:26:43', '2023-03-06 04:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Thailand', '2023-01-30 10:38:22', '2023-01-30 10:39:38'),
(2, 'Malaysia', '2023-02-06 11:41:27', '2023-02-06 11:41:27'),
(3, 'Japan', '2023-02-06 11:41:32', '2023-02-06 11:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `demands`
--

CREATE TABLE `demands` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countrie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overseas_agencie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `male` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `female` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cabinet_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `demand_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `demands`
--

INSERT INTO `demands` (`id`, `company_name`, `countrie_id`, `overseas_agencie_id`, `male`, `female`, `demand_date`, `cabinet_date`, `issue_date`, `issue_number`, `created_at`, `updated_at`, `demand_status`, `demand_id`, `demand_number`, `job`, `salary`) VALUES
(1, '1', '1', '1', '100', '0', '21.3.2022', '6.4.2022', '30.5.2022', 'စာအမှတ်၊၃/၂၇/အလည(ရွှေ့ပြောင်း)၂၀၂၂(၁၃၁၀၉)', '2023-02-14 21:50:48', '2023-02-14 21:50:48', 'new_demand', NULL, 'D-00001', NULL, NULL),
(2, '1', '1', '3', '100', '0', '21.3.2022', '6.4.2022', '30.5.2022', 'စာအမှတ်၊၃/၂၇/အလည(ရွှေ့ပြောင်း)၂၀၂၂(၁၃၁၀၉)', '2023-02-14 21:52:01', '2023-02-14 21:52:01', 'new_demand', NULL, 'D-00002', NULL, NULL),
(3, '1', '1', '1', '30', '40', '19.2.2023', NULL, NULL, NULL, '2023-02-18 19:36:01', '2023-02-18 19:36:01', 'new_demand', NULL, 'DOE0001', NULL, NULL);

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
-- Table structure for table `file_management`
--

CREATE TABLE `file_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `overseas_agencie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_management`
--

INSERT INTO `file_management` (`id`, `overseas_agencie_id`, `demand_id`, `contract_id`, `sending_id`, `user_id`, `file_name`, `file_path`, `upload_date`, `created_at`, `updated_at`) VALUES
(3, '3', '2', NULL, NULL, '1', 'contract_name_list_2023-02-22 04_17_48.xlsx', 'public/file_management/Y9gk0lqfvfBAVH3Wqoyd6rV6EidjZ1ulcdZWFnJS.xlsx', '2023-03-06', '2023-03-06 05:05:33', '2023-03-06 05:05:33'),
(4, '3', '2', NULL, NULL, '1', 'users.jpeg.png', 'public/file_management/n5c9fXb2LmudZXGBXWeoP4tFuzRICEicu7Mt0uY9.jpg', '2023-03-06', '2023-03-06 05:05:33', '2023-03-06 05:05:33'),
(5, '1', '0', '4', NULL, '1', '4.4.2022 - TUF (Interview name).xlsx', 'public/file_management/dO7Blw8SgMHyPsMoeDI7TRqYz2I1I2fvot7CPBlu.xlsx', '2023-03-06', '2023-03-06 05:11:58', '2023-03-06 05:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `labour_docs`
--

CREATE TABLE `labour_docs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `passport_id` int(11) DEFAULT NULL,
  `online_form_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labour_management`
--

CREATE TABLE `labour_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `overseas_agencies_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_passport` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sending_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labour_management`
--

INSERT INTO `labour_management` (`id`, `demand_id`, `contract_id`, `overseas_agencies_id`, `name`, `father_name`, `nrc`, `date_of_birth`, `passport`, `passport_date`, `phone`, `address`, `gender`, `remark`, `place_of_passport`, `owic`, `owic_date`, `created_at`, `updated_at`, `sending_id`) VALUES
(169, 1, 4, 1, 'YU YA WINT CHAL', '', '', '', 'MG 108457', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(170, 1, 4, 1, 'MIN TIN', '', '', '', 'MG 786769', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(171, 1, 4, 1, 'HEIN THU AUNG', '', '', '', 'MG 496802', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(172, 1, 4, 1, 'SAW MYO LIN TUN', '', '', '', 'MG 784559', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(173, 1, 4, 1, 'KHIN YAWAY TUN', '', '', '', 'MG 233290', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(174, 1, 4, 1, 'THAE HSU MON', '', '', '', 'MG 234640', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(175, 1, 4, 1, 'THET PHYO AUNG', '', '', '', 'MG 233292', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(176, 1, 4, 1, 'AUNG THU YA TUN', '', '', '', 'MG 234639', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL),
(177, 1, 4, 1, 'ZAW ZAW', '', '', '', 'MG 784554', '', '', '', '', '', '', '', '', '2023-03-06 05:26:03', '2023-03-06 05:26:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members_lists`
--

CREATE TABLE `members_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_list_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members_lists`
--

INSERT INTO `members_lists` (`id`, `file_path`, `file_name`, `agent_list_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'public/members_lists/PlHM6FmMtB4zyzWjrr33ITqkPrfJawZuxdwI9IlB.jpg', 'user.jpeg', 3, 1, '2023-02-20 06:37:07', '2023-02-20 06:37:07'),
(3, 'public/members_lists/NwyDiw9NLOUDocCQPPevoxDIRzcgJvstSvcZMefj.jpg', 'users.jpeg.png', 2, 1, '2023-02-21 08:18:35', '2023-02-21 08:18:35'),
(4, 'public/members_lists/w02iL4Gl3LPviO8yTycIUh8ALjw9UkmaAMbNzSe8.xlsx', 'thai_interview_name_list.xlsx', 2, 1, '2023-02-21 08:18:50', '2023-02-21 08:18:50'),
(5, 'public/members_lists/4PM3lEAfEv4HXwBlCjTVPhIRZlpTaMVcjfWJqdD0.jpg', 'user.jpeg', 2, 1, '2023-02-21 08:19:05', '2023-02-21 08:19:05'),
(6, 'public/members_lists/HAExlYJrLg6TH6XTOIPZEU0t1vxRWDhHKpSVhZcn.jpg', 'users.jpeg', 2, 1, '2023-02-21 08:19:05', '2023-02-21 08:19:05');

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
(5, '2023_01_30_162400_add_fields_to_users_table', 2),
(6, '2023_01_30_170326_create_countries_table', 3),
(7, '2023_01_30_171039_create_agent_lists_table', 4),
(8, '2023_01_30_173319_create_overseas_agencies_table', 5),
(9, '2023_02_06_040420_create_passports_table', 6),
(10, '2023_02_06_122630_create_demands_table', 7),
(11, '2023_02_06_123519_create_offices_table', 8),
(12, '2023_02_06_134425_create_contracts_table', 9),
(13, '2023_02_06_142050_add_demand_id_to_demands_table', 10),
(14, '2023_02_06_162003_create_labour_management_table', 11),
(15, '2023_02_14_034640_create_sendings_table', 12),
(16, '2023_02_14_053450_add_sending_id_to_labour_management_table', 13),
(17, '2023_02_15_051629_add_demand_number_to_demands_table', 14),
(19, '2023_02_17_025621_add_more_fields_to_passports_table', 15),
(20, '2023_02_17_031305_add_more_fields_v1_to_passports_table', 16),
(21, '2023_02_20_104651_create_regions_table', 17),
(22, '2023_02_20_122130_create_townships_table', 18),
(24, '2023_02_20_123953_add_more_field_v1_to_agent_lists_table', 19),
(25, '2023_02_20_125432_add_more_field_v2_to_agent_lists_table', 20),
(26, '2023_02_20_125823_create_members_lists_table', 20),
(27, '2023_02_22_020736_add_fields_v2_to_passports_table', 21),
(28, '2023_03_05_104609_add_add_fields_v2_to_passports_table', 22),
(29, '2023_03_05_121835_add_fields_v3_to_passports_table', 23),
(30, '2023_03_05_122052_create_passport_payments_table', 23),
(31, '2023_03_05_122503_create_passport_payment_files_table', 23),
(32, '2023_03_06_053459_add_marital_status_to_passports_table', 24),
(33, '2023_03_06_062402_add_leader_to_passports_table', 25),
(34, '2023_03_06_111830_create_file_management_table', 26),
(35, '2023_03_06_120405_add_fields_v1_to_demands_table', 27),
(36, '2023_03_07_031519_create_labour_docs_table', 28);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Golden Sea Myanmar Co.,Ltd', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `overseas_agencies`
--

CREATE TABLE `overseas_agencies` (
  `id` int(11) NOT NULL,
  `company_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_company` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countrie_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overseas_agencies`
--

INSERT INTO `overseas_agencies` (`id`, `company_name`, `type_of_company`, `company_phone`, `company_email`, `company_address`, `countrie_id`, `created_at`, `updated_at`, `contact`) VALUES
(1, 'Seafresh Industry Public Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2022-07-29 08:00:39', '2022-07-29 08:00:39', 'Aung Soe Moe'),
(2, 'SRT Foods Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:28:43', '2023-02-10 03:32:16', NULL),
(3, 'Southland Rubber Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:30:23', '2023-02-10 03:31:09', NULL),
(4, 'Southland Resources Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:33:42', '2023-02-10 03:33:42', NULL),
(5, 'Green River Wood & Lumber Manufacturing (Thailand) Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:34:58', '2023-02-10 03:34:58', NULL),
(6, 'Green River Panels Trang Thailand  Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:36:34', '2023-02-10 03:36:34', NULL),
(7, 'Chaiyaporn Latex  Co.,Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:37:54', '2023-02-10 03:37:54', NULL),
(8, 'Chalong Latex Industry Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:38:54', '2023-02-10 03:38:54', NULL),
(9, 'KTC Concrete Products Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:39:34', '2023-02-10 03:39:34', NULL),
(10, 'Uni Rubber Co., Ltd', 'TMCL Management Co., Ltd', NULL, NULL, NULL, '1', '2023-02-10 03:41:42', '2023-02-10 03:41:42', NULL),
(11, 'YTL Majestic Hotel Sdn Bhd', NULL, NULL, NULL, NULL, '2', '2023-02-10 03:43:40', '2023-02-10 03:43:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passports`
--

CREATE TABLE `passports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_agent_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `join_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owic_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reject_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_passport` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_list_id` int(11) DEFAULT NULL,
  `mother_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `go_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `go_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nation_religion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labour_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_front` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_back` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_expiry_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tatto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smoking` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alcohol` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prominent_sign` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected_country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labour_card_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_of_labour_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identification_card` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date_of_id_card` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `son` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `son_age` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daughter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `daughter_age` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_one` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_family` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_heir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_of_heir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_cost` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_charges` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_register_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leader` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passports`
--

INSERT INTO `passports` (`id`, `name`, `father_name`, `nrc`, `date_of_birth`, `passport`, `passport_date`, `local_agent_name`, `phone`, `address`, `gender`, `remark`, `created_at`, `updated_at`, `join_date`, `owic`, `owic_date`, `reject_status`, `reject_date`, `reject_reason`, `place_of_passport`, `agent_list_id`, `mother_name`, `go_date`, `go_reason`, `entry_date`, `nation_religion`, `region_state`, `labour_code`, `age`, `photo`, `nrc_front`, `nrc_back`, `passport_expiry_date`, `qualification`, `weight`, `height`, `tatto`, `smoking`, `alcohol`, `prominent_sign`, `working_experience`, `selected_country`, `labour_card_no`, `issue_of_labour_date`, `identification_card`, `issue_date_of_id_card`, `son`, `son_age`, `daughter`, `daughter_age`, `address_line_one`, `phone_family`, `name_of_heir`, `relative`, `nrc_of_heir`, `passport_cost`, `car_charges`, `passport_register_status`, `user_id`, `marital_status`, `leader`) VALUES
(1, 'YU YA WINT CHAL', 'U WIN NAING', '14/NGA PA TA (N) 240503', '3.3.1999', 'MG 108457', '4.7.2022', NULL, '-', 'NGAPUTAW TSP', 'female', 'NEW', '2023-01-18 19:17:33', '2023-01-18 19:17:33', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'MYAWADDY', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'CHAN NYEIN AUNG', NULL, NULL, '30.9.1996', 'MG 784551', '5.11.2022', '', '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-18 19:19:02', '2023-02-09 12:46:11', '2023-01-19', NULL, NULL, 'rejected', '1.1.2023', NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'MIN TIN', NULL, NULL, '16.12.1999', 'MG 786769', '5.11.2022', NULL, '-', 'PATHEINGYEE TSP', 'male', 'NEW', '2023-01-18 19:21:00', '2023-01-18 19:22:59', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'HEIN THU AUNG', NULL, NULL, NULL, 'MG 496802', '14.9.2022', NULL, '-', 'KAWLIN TSP', 'male', 'NEW', '2023-01-18 19:25:14', '2023-01-18 19:25:14', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'SAW MYO LIN TUN', NULL, NULL, NULL, 'MG 784559', '5.11.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-18 19:28:03', '2023-01-18 19:28:03', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'KHIN YAWAY TUN', 'U TUN TUN SOE', '14/NGA PA TA (N) 230755', '9.1.1999', 'MG 233290', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'female', 'NEW', '2023-01-18 19:30:13', '2023-01-18 19:30:13', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'THAE HSU MON', 'U THEIN OO', '14/LA PA TA (N) 230526', '9.7.1999', 'MG 234640', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'female', 'NEW', '2023-01-18 19:31:58', '2023-01-18 19:31:58', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'THET PHYO AUNG', 'U WIN NAING', '14/NGA PA TA (N) 283214', '11.3.2001', 'MG 233292', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'male', 'NEW', '2023-01-18 19:34:18', '2023-01-18 19:34:18', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'AUNG THU YA TUN', 'U TUN TUN', '14/NGA PA TA (N) 280968', '25.6.2003', 'MG 234639', '4.8.2022', NULL, '-', 'NGAPUTAW TSP', 'male', 'NEW', '2023-01-18 19:35:58', '2023-01-18 19:35:58', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ZAW ZAW', NULL, NULL, '1.1.1996', 'MG 784554', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:39:24', '2023-01-18 19:39:24', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'AUNG AUNG', NULL, NULL, '15.6.1986', 'MG 784553', '5.11.2022', NULL, '-', 'MYINGYAN TSP', 'male', 'NEW', '2023-01-18 19:40:19', '2023-01-18 19:43:01', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'AUNG PIKE', NULL, NULL, '2.1.1978', 'MG 784550', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:41:19', '2023-01-18 19:43:51', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'MIN MIN OO', NULL, NULL, '18.12.1987', 'MG 786767', '5.11.2022', NULL, '-', 'MAHLAING TSP', 'male', 'NEW', '2023-01-18 19:42:25', '2023-01-18 19:42:25', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'BO GYI', NULL, NULL, '15.5.1987', 'MG 786651', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:45:54', '2023-01-18 19:45:54', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'HTET LIN', NULL, NULL, '8.7.2003', 'MG 784548', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:46:52', '2023-01-18 19:46:52', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'SI THU MOE', NULL, NULL, '10.3.1998', 'MG 784555', '5.11.2022', NULL, '-', 'KYAUKSE TSP', 'male', 'NEW', '2023-01-18 19:48:00', '2023-01-18 19:48:00', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'THAN ZAW WIN', NULL, NULL, '16.10.1992', 'MG 784556', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:49:19', '2023-01-18 19:49:19', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'KHAING ZIN PHYO', NULL, NULL, '25.3.1998', 'MG 786768', '5.11.2022', NULL, '-', 'TAUNNGTHA TSP', 'male', 'NEW', '2023-01-18 19:50:24', '2023-01-18 19:50:24', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'THEIN MIN OO', NULL, NULL, '19.12.1982', 'MG 784547', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:53:20', '2023-01-18 19:53:20', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'WIN THAN OO', NULL, NULL, '18.12.1996', 'MG 784557', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:54:55', '2023-01-18 19:54:55', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'HTET OO', NULL, NULL, '12.2.1994', 'MG 784549', '5.11.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-18 19:55:51', '2023-01-18 19:55:51', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'SHIN THANT THU', 'U MYINT THU', '14/LA BU TA (N) 321761', '28.2.2004', 'MG 568647', '30.9.2022', NULL, '-', 'LABUTA', 'male', 'NEW', '2023-01-18 20:07:25', '2023-01-18 20:07:25', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'AUNG MOE MIN', NULL, NULL, '12.1.2997', 'MG 054615', '20.6.2022', NULL, '-', 'NGAPE TSP', 'male', 'NEW', '2023-01-18 20:10:12', '2023-01-18 20:10:12', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'MAGWAY', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'KHANT HMUE KO', 'U AYE KO', '7/NYA LA PA (N) 172108', '3.3.1997', 'MH 029455', '29.12.2022', NULL, '-', 'NYAUNGLEBIN TSP', 'male', 'NEW', '2023-01-18 20:44:19', '2023-01-18 20:44:19', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'CHIT PWAR', 'U TUN THEIN', '7/YA KA NA (N) 089999', '21.12.2998', 'MH 029504', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-18 20:45:49', '2023-01-18 20:45:49', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'AYE MYAT MOE', 'U SHWE HLA WIN', '7/YA KA NA (N) 066860', '25.4.1994', 'MH 029446', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 20:48:59', '2023-01-18 20:48:59', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'KHIN YADANAR OO', 'U SAW TO TO', '7/YA KA NA (N) 081379', '24.4.2003', 'MH 029440', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 20:57:14', '2023-01-18 20:57:14', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'MAY MYAAT NOE', 'U KO KO MAUNG', '7/YA KA NA (N) 081518', '27.8.2022', 'MH 029437', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 20:59:35', '2023-01-18 20:59:35', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'NANDAR SOE', 'U TUN TUN WIN', '7/YA KA NA (N) 081514', '4.8.2004', 'MH 029435', '29.12.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:22:41', '2023-01-18 21:22:41', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'PHYU', 'PHYU HLAING WAI', NULL, '4.7.1993', 'MG 909702', '30.11.2022', NULL, '-', 'NYAUNGLEBIN TSP', 'female', 'NEW', '2023-01-18 21:24:50', '2023-01-18 21:24:50', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'WIN WIN', NULL, NULL, '10.9.1983', 'MG 848572', '17.11.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-18 21:27:35', '2023-01-18 21:27:35', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'MYA SU MON', NULL, NULL, '4.3.2004', 'MG 909700', '30.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:29:39', '2023-01-18 21:29:39', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'ZAR CHI MOE', NULL, NULL, '26.11.1995', 'MG 909701', '30.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:31:49', '2023-01-18 21:31:49', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'WIN PA PA HLAING', NULL, NULL, '5.7.2000', 'MG 909703', '30.11.2022', NULL, '-', 'YANGON TSP', 'female', 'NEW', '2023-01-18 21:32:55', '2023-01-18 21:32:55', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'KYI PYAR LIN', NULL, NULL, '23.3.1993', 'MG 909704', '30.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:34:21', '2023-01-18 21:34:21', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'KYAW SAN', NULL, NULL, '2.10.1982', 'MG 568646', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-18 21:35:26', '2023-01-18 21:35:26', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'CHIT HTOO SAN', NULL, NULL, '22.9.2001', 'MG 568637', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'male', 'NEW', '2023-01-18 21:39:26', '2023-01-18 21:39:26', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'KHAING NAN KYI', NULL, NULL, '6.3.1998', 'MG 568638', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:47:13', '2023-01-18 21:47:13', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'PYAE PHYO AUNG', NULL, NULL, '5.3.2003', 'MG 568644', '30.9.2022', NULL, '-', 'NYAUNGLEBIN TSP', 'male', 'NEW', '2023-01-18 21:48:16', '2023-01-18 21:48:16', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'KHAING THIN GYI', NULL, NULL, '3.5.1993', 'MG 568648', '30.9.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:49:24', '2023-01-18 21:49:24', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'HTOO MAY PHAW', NULL, NULL, '8.11.1989', 'MG 784546', '5.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:50:48', '2023-01-18 21:50:48', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'LWIN LWIN HTWE', NULL, NULL, '5.10.1994', 'MG 786770', '5.11.2022', NULL, '-', 'SHWEGYIN TSP', 'female', 'NEW', '2023-01-18 21:52:07', '2023-01-18 21:52:07', '2023-01-19', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'ZAW NAING WIN', 'U TUN HLA AYE', '11/KA TA NA (N) 160133', '14.1.1997', 'ME 913856', '11.1.2020', NULL, '-', 'KYAUKTAW TSP', 'male', 'OLD', '2023-01-19 13:34:08', '2023-01-19 13:34:08', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'NU NU WAI', 'U KHIN THEIN', '7/KA WA NA (N) 140302', '25.10.1992', 'MD 782519', '6.12.2018', NULL, '-', 'KAWA TSP', 'female', 'OLD', '2023-01-19 13:36:02', '2023-01-19 13:36:02', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'ZAR ZAR AYE', 'U SEIN HTUN', '14/PA MA NA (N) 3167576', '11.12.1997', 'MD 804566', '14.12.2018', NULL, '-', 'MYAUNGMYA TSP', 'female', 'OLD', '2023-01-19 13:37:41', '2023-01-19 13:37:41', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'AUNG SAN WIN', 'U MYA HAN', '12/KHA YA NA (N) 136441', '4.5.1989', 'MD 909139', '24.1.2019', NULL, '-', 'KHAYAN TSP', 'male', 'REACH THAI', '2023-01-19 13:40:09', '2023-01-19 13:40:09', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'PHYO PHYO WAI', 'U HAN WIN ZAW', '12/LHA YA NA (N) 162397', '3.3.1995', 'MD 909147', '24.1.2019', NULL, '-', 'KHAYAN TSP', 'female', 'OLD', '2023-01-19 13:41:37', '2023-01-19 13:41:37', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'AUNG MYO THAN', 'U THAN TUN HLA', '11/KA HTA NA (N) 159007', '21.12.1997', 'ME 913855', '11.1.2020', NULL, '-', 'KYAUKTAW TSP', 'male', 'OLD', '2023-01-19 13:56:21', '2023-01-19 13:56:21', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'YE LIN AUNG', NULL, NULL, '7.12.2002', 'MF 962781', '27.5.2022', NULL, '-', 'TAUNGTHA TSP', 'male', 'NEW', '2023-01-19 13:57:54', '2023-01-19 13:57:54', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'AUNG MYO OO', NULL, NULL, '11.2.1980', 'MG 077435', '27.6.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 13:59:36', '2023-01-19 13:59:36', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'PATHEIN TSP', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'NI NI LWIN', NULL, NULL, '7.9.1996', 'MF 496505', '16.12.2021', NULL, '-', 'KYAUNGKONE TSP', 'female', 'NEW', '2023-01-19 14:01:16', '2023-01-19 14:01:16', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'PATHEIN', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'TUN WIN HLAING', 'U SOE THEIN', '14/KA KA NA (N) 120923', '9.1.1995', 'MH 029573', '29.12.2022', NULL, '-', 'KANGYIDAUNT TSP', 'male', 'NEW', '2023-01-19 14:03:35', '2023-01-19 14:03:35', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'ZAW LAT', 'U THAN WIN', '14/KA KA NA (N) 10552', '17.8.1983', 'MH 029578', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:05:19', '2023-01-19 14:05:19', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'ZA', 'ZAW TUN OO', '14/KA KA NA (N) 124238', '17.12.1984', 'MH 029582', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:07:00', '2023-01-19 14:07:00', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'MYO KO OO', 'U MYO AUNG', '14/PA THA NA (N) 316190', '7.6.2022', 'MH 029590', '29.12.2022', NULL, '-', 'PATHEIN TSP', 'male', 'NEW', '2023-01-19 14:08:59', '2023-01-19 14:08:59', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'WIN KO KO TUN', 'U SHWE OO', '14/THA PA NA (N) 124567', '7.12.1994', 'MH 029574', '29.12.2022', NULL, '-', 'THARBAUNG TSP', 'male', 'NEW', '2023-01-19 14:10:43', '2023-01-19 14:10:43', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'KYAW ZIN PHYO', 'U SOE WIN', '14.KA KA NA (N) 120901', '6.8.1995', 'MH 029584', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:13:15', '2023-01-19 14:13:15', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'PYAW HPYO AUNG', 'U KI NYUNT', '14/KA KA NA (N) 144792', '13.12.2000', 'MH 029587', '29.12.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:15:28', '2023-01-19 14:15:28', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'THU ZAR MYINT', 'U SOE MYINT', '7/AH TA NA (N) 119402', '27.11.1987', 'MH 029596', '29.12.2022', NULL, '-', 'OKTWIN TSP', 'female', 'NEW', '2023-01-19 14:17:33', '2023-01-19 14:17:33', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'PHYO WAI AUNG', 'U ZAW MOE LWIN', '14/KA KA NA (N) 173388', '15.1.2003', 'MG 616343', '12.10.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:20:25', '2023-01-19 14:20:25', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'TAY ZAR AUNG', 'U TUN LWIN', '12/KHA YA NA (N) 164849', '6.9.2001', 'MG 651440', '15.10.2022', NULL, '-', 'KHAYAN TSP', 'male', 'NEW', '2023-01-19 14:22:44', '2023-01-19 14:22:44', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'HTET LIN AUNG', 'U TUN LWIN', '12/KHA YA NA (N) 130907', '7.9.1996', 'MG 651441', '15.10.2022', NULL, '-', 'KHAYAN TSP', 'male', 'NEW', '2023-01-19 14:24:55', '2023-01-19 14:24:55', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'SOE MIN HTET', 'U ZAW MIN OO', '14/KA KA NA (N) 190309', '2.6.1999', 'MG 616341', '12.10.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:26:46', '2023-01-19 14:26:46', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'SOE MIN HTET', 'U ZAW MIN OO', '14/KA KA NA (N) 190309', '2.6.1999', 'MG 616341', '12.10.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:28:40', '2023-01-19 14:28:40', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'ZAW YE', 'U THAN WIN', '14/KA KA NA (N) 161402', '27.1.1992', 'MG 616340', '12.10.1992', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:38:15', '2023-01-19 14:38:15', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'PHYO WAI SOE', NULL, NULL, '18.8.1997', 'MG 909694', '30.11.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:41:42', '2023-01-19 14:41:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'PHYO WAI AUNG', NULL, NULL, '16.4.1996', 'MG 909714', '30.11.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:44:26', '2023-01-19 14:44:26', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'THET WAI', NULL, NULL, '26.11.1998', 'MG 848563', '17.11.2022', NULL, '-', 'MAUBIN TSP', 'male', 'NEW', '2023-01-19 14:47:05', '2023-01-19 14:47:05', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'LIN PHYO MAUNG', NULL, NULL, '26.2.2003', 'MG 909695', '30.11.2022', NULL, '-', 'KYAUNGKONE TSP', 'male', 'NEW', '2023-01-19 14:48:13', '2023-01-19 14:48:13', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'THU MAUNG', 'U TUN KYINE', '14/DA NA PHA (N) 158275', '2.1.1990', 'MG 506252', '16.9.2022', NULL, '-', 'DANUBYU TSP', 'male', 'NEW', '2023-01-19 14:50:36', '2023-01-19 14:50:36', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'AUNG PYAR PHYO KYAW', 'U KYAW MOE', '14/DA NA PHA (N) 226222', '31.7.2004', 'MG 506253', '16.9.2022', NULL, '-', 'DANUBYU TSP', 'male', 'NEW', '2023-01-19 14:52:21', '2023-01-19 14:52:21', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'YE YINT KYAW', 'U KYAW HTAY', '14/HA THA TA (N) 253569', '9.5.1995', 'MH 029475', '29.12.2022', NULL, '-', 'HINTHADA TSP', 'male', 'NEW', '2023-01-19 15:00:35', '2023-01-19 15:00:35', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'AUNG PYAE PHYO WIN', 'U AUNG MYINT THEIN', '14/HA THA TA (N) 406948', '31.7.2003', 'MH 029438', '29.12.2022', NULL, '-', 'HINTHADA TSP', 'male', 'NEW', '2023-01-19 15:02:50', '2023-01-19 15:02:50', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'KYAW THET', 'U AUNG SHANE', '8/AH LA NA (N) 238932', '10.6.2022', 'MH 029601', '29.12.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 15:04:25', '2023-01-19 15:04:25', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'AUNG THET PAING', 'U MYO LWIN', '8/AH LA NA (N) 259814', '4.7.2004', 'MH 029480', '29.12.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 15:06:37', '2023-01-19 15:06:37', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'KYAW THU HTET', 'U KHIN MAUNG ZAW', '8/AH LA NA (N) 238852', '1.4.2022', 'MH 029507', '29.12.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 15:08:42', '2023-01-19 15:08:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'PA PA SOE', 'U KYI SOE', '8/AH LA NA (N) 241775', '2.12.2998', 'MD 941606', '2.2.2019', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 15:10:23', '2023-01-19 15:10:23', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'THET AUNG', NULL, NULL, '31.5.2985', 'MD 520244', '18.8.2018', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 15:12:49', '2023-01-19 15:12:49', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'AUNG KO WIN', NULL, NULL, '21.9.1985', 'MC 984412', '31.1.2018', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 15:15:35', '2023-01-19 15:15:35', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'ZAR ZAR SOE', 'U KYI SOE', '8/AH LA NA (N) 169612', '19.4.1988', 'MD 941607', '2.2.2019', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 15:17:02', '2023-01-19 15:17:02', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'NWE MAR WIN', 'U TIN HLAING', '8/AH LA NA (N) 163844', '6.8.1995', 'MG 145052', '13.7.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 15:18:58', '2023-01-19 15:18:58', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'MU MU LWIN', 'U MYINT LWIN', '8/AH LA NA (N) 201506', '22.9.1988', 'MF 965834', '28.5.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 15:20:17', '2023-01-19 15:20:55', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'KHIN KYU SWE', 'U TUN LWIN', '8/AH LA NA (N) 224163', '4.5.2000', 'MG 271588', '10.8.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 15:22:42', '2023-01-19 15:22:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'THET WAI PHYO', 'U THAN LWIN', '8/AH LA NA (N) 161774', '15.7.1995', 'MG 651430', '15.1.2022', NULL, '-', 'AUNGLAN TSP', 'female', 'NEW', '2023-01-19 15:23:52', '2023-01-19 15:23:52', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'HAN MYO TUN', 'U SEIN TINT', '5/KA LA NA (N) 069553', '28.6.1995', 'MF 932497', '18.5.2022', NULL, '-', 'KYUNHLA TSP', 'male', 'NEW', '2023-01-19 15:28:34', '2023-01-19 15:28:34', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'PHOE LA PYAE', 'U SEIN HLA NGWE', '8/AH LA NA (N) 144124', '7.10.1987', 'MG 145064', '13.7.2022', NULL, '-', 'AUNGLAN TSP', 'male', 'NEW', '2023-01-19 15:29:56', '2023-01-19 15:29:56', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'SOE MOE WIN', 'U HLA TIN', '10/KA HTA NA (N) 177589', '3.8.2000', 'MG 420018', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 15:37:52', '2023-01-19 15:37:52', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'SU MAR', NULL, NULL, '27.2.1993', 'MG 447421', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 15:39:39', '2023-01-19 15:39:39', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'THET MAR WIN', 'U HLA WIN', '10/KA HTA NA (N) 185338', '6.3.2003', 'MG 420017', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 15:40:52', '2023-01-19 15:40:52', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'THAN THAN MOE', 'U HTAY LWIN', '10/BA LA NA (N) 138073', '7.3.1997', 'MG 423491', '3.9.2022', NULL, '-', 'BILIN TSP', 'female', 'NEW', '2023-01-19 16:16:51', '2023-01-19 16:16:51', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'SANDAR KHAING', 'U KYAW SAN', '10/KA HTA NA (N) 179276', '7.10.2003', 'MG 420021', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 16:22:16', '2023-01-19 16:22:16', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'ZIN MI MI ZAW', 'U ZAW WIN', '10/BA LA NA (N) 163968', '13.8.2002', 'MG 423492', '3.9.2022', NULL, '-', 'BILIN TSP', 'female', 'NEW', '2023-01-19 16:25:43', '2023-01-19 16:25:43', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'MA HTWE', 'U MAUNG WIN', '10/KA HTA NA (N) 190290', '18.11.1996', 'MG 423631', '3.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 16:29:00', '2023-01-19 16:29:00', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'WIN ZAW OO', 'U WIN KYAING', '14/NYA TA NA (N) 162178', '2.3.1994', 'MG 412915', '1.9.2022', NULL, '-', 'NYAUNGDON TSP', 'male', 'NEW', '2023-01-19 16:30:56', '2023-01-19 16:33:36', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'AUNG NAING WIN', NULL, NULL, '14.4.1990', 'MG 447423', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 16:37:42', '2023-01-19 16:37:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'THA PYAY AUNG', 'U THEIN SINE', '10/KA HTA NA (N) 164751', '11.7.2022', 'MG 038972', '15.6.2022', NULL, '-', 'KYAILHTO TSP', 'male', 'NEW', '2023-01-19 16:39:50', '2023-01-19 16:39:50', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'NAING ZIN', 'U HTUN NYUNT', '10/KA HTA NA (N) 196883', '11.11.1997', 'MG 042018', '16.6.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 16:43:44', '2023-01-19 16:43:44', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'ZIN MIN AUNG', 'U AUNG NAING WIN', '10/KA HTA NA (N) 187856', '25.5.2003', 'MG 419760', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 16:46:04', '2023-01-19 16:46:04', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'MYO MYINT NAING', 'U KYAW MIN NAING', '10/KA HTA NA (N) 178442', '27.12.2001', 'MG 420019', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 16:50:13', '2023-01-19 16:50:13', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'HTAY HTAY WIN', 'U MYINT THEIN', '10/KA HTA NA (N) 140423', '5.4.1997', 'MG 150043', '14.7.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 16:56:32', '2023-01-19 16:56:32', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'TOKE LOE KO', 'U TIN THEIN', '10/BA LA NA (N) 2204392', '23.8.1992', 'ME 425460', '19.7.2019', NULL, '-', 'BILIN TSP', 'male', 'NEW', '2023-01-19 16:58:39', '2023-01-19 16:58:39', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'AYE MYA OO', NULL, NULL, '17.8.2003', 'MG 447422', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 21:32:42', '2023-01-19 21:32:42', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'PO PO CHIT', 'U CHIT NGWE', '10/KA HTA NA (N) 178856', '29.7.2022', 'MG 420013', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 21:34:01', '2023-01-19 21:34:01', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGION', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `passports` (`id`, `name`, `father_name`, `nrc`, `date_of_birth`, `passport`, `passport_date`, `local_agent_name`, `phone`, `address`, `gender`, `remark`, `created_at`, `updated_at`, `join_date`, `owic`, `owic_date`, `reject_status`, `reject_date`, `reject_reason`, `place_of_passport`, `agent_list_id`, `mother_name`, `go_date`, `go_reason`, `entry_date`, `nation_religion`, `region_state`, `labour_code`, `age`, `photo`, `nrc_front`, `nrc_back`, `passport_expiry_date`, `qualification`, `weight`, `height`, `tatto`, `smoking`, `alcohol`, `prominent_sign`, `working_experience`, `selected_country`, `labour_card_no`, `issue_of_labour_date`, `identification_card`, `issue_date_of_id_card`, `son`, `son_age`, `daughter`, `daughter_age`, `address_line_one`, `phone_family`, `name_of_heir`, `relative`, `nrc_of_heir`, `passport_cost`, `car_charges`, `passport_register_status`, `user_id`, `marital_status`, `leader`) VALUES
(104, 'AYE AYE MYINT', 'U TIN OO', '10/KA HTA NA (N) 154240', '23.8.1999', 'MG 038968', '15.6.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 21:35:29', '2023-01-19 21:35:29', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'AYE CHAN MAY', 'U MYA SOE', '10/KA HTA NA (N) 164661', '4.5.2000', 'MG 420016', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 21:36:45', '2023-01-19 21:36:45', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'SANDAR LIN', 'U KYAW MYINT', '10/KA HTA NA (N) 148564', '4.6.1998', 'MG 145050', '13.7.2022', NULL, '-', 'KYAIKHTO TSP', 'female', 'NEW', '2023-01-19 21:38:07', '2023-01-19 21:38:07', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'WIN ZAW OO', 'U WIN KYAING', '14/NYA TA NA (N) 162178', '1.3.2994', 'MG 412915', '1.9.2022', NULL, '-', 'NYAUNGDON TSP', 'male', 'NEW', '2023-01-19 21:49:27', '2023-01-19 21:49:27', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'AUNG NAING WIN', NULL, NULL, '14.4.1990', 'MG 447423', '9.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 21:51:02', '2023-01-19 21:51:02', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'THA PYAY AUNG', NULL, NULL, '11.7.2003', 'MG 038972', '15.6.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 21:56:13', '2023-01-19 21:56:13', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'NAING ZIN', 'U TUN NYUNT', '10/KA HTA NA (N) 196883', '11.10.1997', 'MG 042018', '16.6.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 21:57:48', '2023-01-19 21:57:48', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'ZIN MIN AUNG', 'U AUNG NAING WIN', '10/KA HTA NA (N) 187856', '25.5.2003', 'MG 419760', 'YANGON', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 21:59:33', '2023-01-19 21:59:33', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'MYO MYINT NAING', 'U KYAW MIN NAING', '10/KA HTA NA (N) 178442', '27.12.2001', 'MG 420019', '2.9.2022', NULL, '-', 'KYAIKHTO TSP', 'male', 'NEW', '2023-01-19 22:00:58', '2023-01-19 22:00:58', '2023-01-20', NULL, NULL, NULL, NULL, NULL, 'YANGON', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'Mg Mg', 'U Mya', '1/abc(N)009221', '1.1.1995', 'MF615452', '19.1.2022', '', '09555161776', 'Yangon', 'male', 'No Remark', '2023-03-05 20:26:50', '2023-03-05 20:26:50', '2023-03-06', '-', '-', NULL, NULL, NULL, 'Yangon', 1, 'Day Mya', NULL, 'Job', NULL, 'Burmese / Buddhis', NULL, 'L000001', '20', 'public/labour/KGfSbviPPm9cWfffpaxCOSHViAYydr0W4hgFVcbF.jpg', 'public/labour/6sWlOO7nJPt6XcOxCkeC0MINg9S1hPYybBeyLVrq.jpg', 'public/labour/A46jRNFq1CXNPwTiHGCAU9MskTsRwXHZgtiN5i0H.jpg', NULL, '10', '120', '51', 'No', 'No', 'No', 'Remark', '5', 'Thailand', 'YGN/KTD3564710', '7.7.2022', NULL, '-', 'No', NULL, 'No', NULL, 'Yangon', '09833736625', 'No', 'No', 'No', '15000', NULL, 'No', '1', NULL, NULL),
(114, 'Mg Mg', 'U Mg Mg', '1/abc(N)009221', '', 'MF615425', '19.1.2022', 'U Mg', '9555161776', 'Yangon', 'M', 'No Remark', '2023-03-05 23:13:24', '2023-03-05 23:13:24', '2023-03-06', 'YGNOW00001', '7.7.2022', NULL, NULL, NULL, 'Yangon', NULL, 'Daw Mya', '', '', '6.3.2023', 'Burmese / Buddhis', '', NULL, '23', NULL, NULL, NULL, NULL, '10', '120kg', '51cm', 'No', 'No', 'No', 'No', '5 Years', NULL, NULL, '7.7.2022', 'IYGN000292', '7.7.2022', 'Yes', '20', 'Yes', '15', 'Yangon', '9877387736', 'U Mya', 'Untrne', '1/abc(B)009332', '150000', '20000', NULL, NULL, 'Single', NULL),
(115, 'Mg Mg', 'U Mg Mg', '1/abc(N)009221', '', 'MF615425', '19.1.2022', 'U Mg', '9555161776', 'Yangon', 'M', 'No Remark', '2023-03-05 23:18:27', '2023-03-05 23:18:27', '2023-03-06', 'YGNOW00001', '7.7.2022', NULL, NULL, NULL, 'Yangon', NULL, 'Daw Mya', '', '', '6.3.2023', 'Burmese / Buddhis', '', NULL, '23', NULL, NULL, NULL, '', '10', '120kg', '51cm', 'No', 'No', 'No', 'No', '5 Years', NULL, NULL, '7.7.2022', 'IYGN000292', '7.7.2022', 'Yes', '20', 'Yes', '15', 'Yangon', '9877387736', 'U Mya', 'Untrne', '1/abc(B)009332', '150000', '20000', 'Yes', '1', 'Single', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passport_payments`
--

CREATE TABLE `passport_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `deposit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passport_payments`
--

INSERT INTO `passport_payments` (`id`, `deposit`, `deposit_date`, `passport_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '5000', '2023-03-06', 113, 1, '2023-03-05 20:26:50', '2023-03-05 20:26:50'),
(2, '5000', '2023-03-06', 113, 1, '2023-03-05 20:26:50', '2023-03-05 20:26:50'),
(3, '15000', '2023-03-07 10:18 AM', 1, 1, '2023-03-06 21:18:27', '2023-03-06 21:18:27'),
(4, '15000', '2023-03-07 10:18 AM', 3, 1, '2023-03-06 21:18:50', '2023-03-06 21:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `passport_payment_files`
--

CREATE TABLE `passport_payment_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `deposit_file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_file_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_payment_id` int(11) DEFAULT NULL,
  `passport_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `passport_payment_files`
--

INSERT INTO `passport_payment_files` (`id`, `deposit_file_name`, `deposit_file_path`, `passport_payment_id`, `passport_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'receipt.jpeg', 'public/deposit_vouchers/pZx2G5bfTFJNWDj9ysm94lFswdm09FdT88MkfV7k.jpg', 1, 113, 1, '2023-03-05 20:26:50', '2023-03-05 20:26:50'),
(2, '25.4.2022 OKF (Interview).xlsx', 'public/deposit_vouchers/8m9BEuaHGR9zNTCl5DDHnQEyJh7hg4c3tkLCkxgI.xlsx', 4, 3, 1, '2023-03-06 21:18:50', '2023-03-06 21:18:50'),
(3, '4.4.2022 - TUF (Interview name).xlsx', 'public/deposit_vouchers/jGSioTEx15MlXsmFOegCm1PfqEXpuHiy5qLtw3ED.xlsx', 4, 3, 1, '2023-03-06 21:29:12', '2023-03-06 21:29:12');

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
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `region` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_mm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `region`, `region_mm`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Yangon Region', 'ရန်ကုန်', '1', NULL, NULL),
(2, 'Mandalay Region', 'မန္တလေးတိုင်းဒေသကြီး', '1', NULL, NULL),
(3, 'Nay Pyi Taw', 'နေပြည်တော်', '1', NULL, NULL),
(4, 'Bago Region', 'ပဲခူးတိုင်းဒေသကြီး', '1', NULL, NULL),
(5, 'Ayeyarwady Region', 'ဧရာဝတီတိုင်းဒေသကြီး', '1', NULL, NULL),
(6, 'Magway Region', 'မကွေးတိုင်းဒေသကြီး', '1', NULL, NULL),
(7, 'Sagaing Region', 'စစ်ကိုင်းတိုင်းဒေသကြီ', '1', NULL, NULL),
(8, 'Tanintharyi Region', 'တနင်္သာရီတိုင်းဒေသကြီ', '1', NULL, NULL),
(9, 'Shan State', 'ရှမ်းပြည်နယ်', '1', NULL, NULL),
(10, 'Kayin State', 'ကရင်ပြည်နယ်', '1', NULL, NULL),
(11, 'Mon State', 'မွန်ပြည်နယ်', '1', NULL, NULL),
(12, 'Rakhine State', 'ရခိုင်ပြည်နယ်', '1', NULL, NULL),
(13, 'Chin State', 'ချင်းပြည်နယ်', '1', NULL, NULL),
(14, 'Kachin State', 'ကချင်ပြည်နယ်', '1', NULL, NULL),
(15, 'Kayah State', 'ကယားပြည်နယ်', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sendings`
--

CREATE TABLE `sendings` (
  `id` int(10) UNSIGNED NOT NULL,
  `sending_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sending_male` int(11) DEFAULT NULL,
  `sending_female` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `demand_id` int(11) DEFAULT NULL,
  `contract_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sendings`
--

INSERT INTO `sendings` (`id`, `sending_date`, `sending_male`, `sending_female`, `remark`, `demand_id`, `contract_id`, `created_at`, `updated_at`) VALUES
(2, '2.2.2023', 100, 0, 'Sending', 1, 4, '2023-03-06 05:14:34', '2023-03-06 05:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` int(10) UNSIGNED NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `township` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `townships_mm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `region_id`, `township`, `townships_mm`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lanmadaw', 'လမ်းမတော်', '1', NULL, NULL),
(2, 1, 'Latha', 'လသာ', '1', NULL, NULL),
(3, 1, 'Kyauktada', 'ကျောက်တံတား', '1', NULL, NULL),
(4, 1, 'Pabedan', 'ပန်းပဲတန်း', '1', NULL, NULL),
(5, 1, 'Pazundaung', 'ပုဇွန်တောင်', '1', NULL, NULL),
(6, 1, 'Ahlone', 'အလုံ', '1', NULL, NULL),
(7, 1, 'Kyeemyindaing', 'ကြည့်မြင်တိုင်', '1', NULL, NULL),
(8, 1, 'Sanchaung', 'စမ်းချောင်း', '1', NULL, NULL),
(9, 1, 'Bahan', 'ဗဟန်း', '1', NULL, NULL),
(10, 1, 'Botahtaung', 'ဗိုလ်တထောင်', '1', NULL, NULL),
(11, 1, 'Mingalartaungnyunt', 'မင်္ဂလာတောင်ညွန့်', '1', NULL, NULL),
(12, 1, 'Tamwe', 'တာမွေ', '1', NULL, NULL),
(13, 1, 'Yankin', 'ရန်ကင်း', '1', NULL, NULL),
(14, 1, 'Dagon', 'ဒဂုံ', '1', NULL, NULL),
(15, 1, 'East Dagon', 'ဒဂုံမြို့သစ် အရှေ့ပိုင်း', '1', NULL, NULL),
(16, 1, 'North Dagon', 'ဒဂုံမြို့သစ် မြောက်ပိုင်း', '1', NULL, NULL),
(17, 1, 'South Dagon', 'ဒဂုံမြို့သစ် တောင်ပိုင်း', '1', NULL, NULL),
(18, 1, 'Dagon Seikkan', 'ဒဂုံမြို့သစ် ဆိပ်ကမ်း', '1', NULL, NULL),
(19, 1, 'Kamaryut', 'ကမာရွတ်', '1', NULL, NULL),
(20, 1, 'Insein', 'အင်းစိန်', '1', NULL, NULL),
(21, 1, 'Hlaing', 'လှိုင်', '1', NULL, NULL),
(22, 1, 'Hlaingtharya', 'လှိုင်သာယာ', '1', NULL, NULL),
(23, 1, 'Mayangone', 'မရမ်းကုန်း', '1', NULL, NULL),
(24, 1, 'Mingaladon', 'မင်္ဂလာဒုံ', '1', NULL, NULL),
(25, 1, 'North Okkalapa', 'မြောက်ဥက္ကလာပ', '1', NULL, NULL),
(26, 1, 'South Okkalapa', 'တောင်ဥက္ကလာပ', '1', NULL, NULL),
(27, 1, 'Thingangyun', 'သင်္ဃန်းကျွန်း', '1', NULL, NULL),
(28, 1, 'Thaketa', 'သာကေတ', '1', NULL, NULL),
(29, 1, 'Thanlyin', 'သံလျင်', '1', NULL, NULL),
(30, 1, 'Dala', 'ဒလ', '1', NULL, NULL),
(31, 1, 'Dawbon', 'ဒေါပုံ', '1', NULL, NULL),
(32, 1, 'Hmawbi', 'မှော်ဘီ', '1', NULL, NULL),
(33, 1, 'Hlegu', 'လှည်းကူး', '1', NULL, NULL),
(34, 1, 'Htantabin', 'ထန်းတပင်', '1', NULL, NULL),
(35, 1, 'Kawhmu', 'ကော့မှူး', '1', NULL, NULL),
(36, 1, 'Kayan', 'ခရမ်း', '1', NULL, NULL),
(37, 1, 'Kungyangon', 'ကွမ်းခြံကုန်း', '1', NULL, NULL),
(38, 1, 'Shwepyithar', 'ရွှေပြည်သာ', '1', NULL, NULL),
(39, 1, 'Taikkyi', 'တိုက်ကြီး', '1', NULL, NULL),
(40, 1, 'Thongwa', 'သုံးခွ', '1', NULL, NULL),
(41, 1, 'Twantay', 'တွံ့တေး', '1', NULL, NULL),
(42, 1, 'Kyauktan', 'ကျောက်တန်း', '1', NULL, NULL),
(43, 1, 'Seikgyikanaungto', 'ဆိပ်ကြီးခနောင်တို', '1', NULL, NULL),
(44, 1, 'Palae Myothit', 'ပုလဲမြို့သစ်', '1', NULL, NULL),
(45, 2, 'Aung Myay Thar Zan', 'အောင်မြေသာဇံ', '1', NULL, NULL),
(46, 2, 'Chan Aye Thar Zan', 'ချမ်းအေးသာဇံ', '1', NULL, NULL),
(47, 2, 'Mahar Aung Myay', 'မဟာအောင်မြေ', '1', NULL, NULL),
(48, 2, 'Chan Mya Thar Si', 'ချမ်းမြသာစည်', '1', NULL, NULL),
(49, 2, 'Pyi Gyi Tan Kon', 'ပြည်ကြီးတံခွန်', '1', NULL, NULL),
(50, 2, 'Amarapura', 'အမရပူရ', '1', NULL, NULL),
(51, 2, 'Pa Thein Gyi', 'ပုသိမ်ကြီး', '1', NULL, NULL),
(52, 2, 'Pyin Oo Lwin', 'ပြင်ဦးလွင်', '1', NULL, NULL),
(53, 2, 'Madaya', 'မတ္တရာ', '1', NULL, NULL),
(54, 2, 'Singu', 'စဉ့်ကူး', '1', NULL, NULL),
(55, 2, 'Thabeikkyin', 'Thabeikkyin', '1', NULL, NULL),
(56, 2, 'Mogok', 'မိုးကုတ်', '1', NULL, NULL),
(57, 2, 'Kyaukpadaung', 'ကျောက်ပန်းတောင်း', '1', NULL, NULL),
(58, 2, 'Kyaukse', 'ကျောက်ဆည်', '1', NULL, NULL),
(59, 2, 'Sintgaing', 'စဉ့်ကိုင်', '1', NULL, NULL),
(60, 2, 'Myittha', 'မြစ်သား', '1', NULL, NULL),
(61, 2, 'Tada-U', 'တံတားဦး', '1', NULL, NULL),
(62, 2, 'Myingyan', 'မြင်းခြံ', '1', NULL, NULL),
(63, 2, 'Thaungtha', 'တောင်သာ', '1', NULL, NULL),
(64, 2, 'Natogyi', 'နွားထိုးကြီး', '1', NULL, NULL),
(65, 2, 'Nyaung-U', 'ညောင်ဦး', '1', NULL, NULL),
(66, 2, 'Meiktila', 'မိတ္ထီလာ', '1', NULL, NULL),
(67, 2, 'Mahlaing', 'မလှိုင်', '1', NULL, NULL),
(68, 2, 'Thazi', 'သာစည်', '1', NULL, NULL),
(69, 2, 'Wundwin', 'ဝမ်းတွင်း', '1', NULL, NULL),
(70, 2, 'Pyawbwe', 'ပျော်ဘွယ်', '1', NULL, NULL),
(71, 2, 'Yamethin', 'ရမည်းသင်း', '1', NULL, NULL),
(72, 3, 'Pyinmana', 'ပျဉ်းမနား', '1', NULL, NULL),
(73, 3, 'Tatkon', 'တပ်ကုန်း', '1', NULL, NULL),
(74, 3, 'Lewe', 'လယ်ဝေး', '1', NULL, NULL),
(75, 3, 'Dekkhinathiri', 'ဒက္ခိဏသီရိ', '1', NULL, NULL),
(76, 3, 'Ottarathiri', 'ဥတ္တရသီရိ', '1', NULL, NULL),
(77, 3, 'Pobbathiri', 'ပုပ္ဗသီရိ', '1', NULL, NULL),
(78, 3, 'Zabuthiri', 'ဇမ္မူသီရိ', '1', NULL, NULL),
(79, 3, 'Zeyathiri', 'ဇေယျာသီရိ', '1', NULL, NULL),
(80, 4, 'Bago', 'ပဲခူး', '1', NULL, NULL),
(81, 4, 'Daik-U', 'ဒိုက်ဦး', '1', NULL, NULL),
(82, 4, 'Kawa', 'ကဝ', '1', NULL, NULL),
(83, 4, 'Thanatpin', 'သနပ်ပင်', '1', NULL, NULL),
(84, 4, 'Waw', 'ဝေါ', '1', NULL, NULL),
(85, 4, 'Nyaunglebin', 'ညောင်လေးပင်', '1', NULL, NULL),
(86, 4, 'Shwegyin', 'ရွှေကျင်', '1', NULL, NULL),
(87, 4, 'Pyay', 'ပြည်', '1', NULL, NULL),
(88, 4, 'Paukkaung', 'ပေါက်ခေါင်း', '1', NULL, NULL),
(89, 4, 'Thegon', 'သဲကုန်း', '1', NULL, NULL),
(90, 4, 'Shwedaung', 'ရွှေတောင်', '1', NULL, NULL),
(91, 4, 'Padaung', 'ပန်းတောင်း', '1', NULL, NULL),
(92, 4, 'Paungde', 'ပေါင်းတည်', '1', NULL, NULL),
(93, 4, 'Nattalin', 'နတ်တလင်း', '1', NULL, NULL),
(94, 4, 'Zigon', 'ဇီးကုန်း', '1', NULL, NULL),
(95, 4, 'Tharrawaddy', 'သာယာဝတီ', '1', NULL, NULL),
(96, 4, 'Gyobingauk', 'ကြို့ပင်ကောက်', '1', NULL, NULL),
(97, 4, 'Letpadan', 'လက်ပံတန်း', '1', NULL, NULL),
(98, 4, 'Minhla', 'မင်းလှ', '1', NULL, NULL),
(99, 4, 'Monyo', 'မိုးညို', '1', NULL, NULL),
(100, 4, 'Okpho', 'အုတ်ဖို', '1', NULL, NULL),
(101, 4, 'Taungoo', 'တောင်ငူ', '1', NULL, NULL),
(102, 4, 'Oktwin', 'အုတ်တွင်း', '1', NULL, NULL),
(103, 4, 'Tantabin', 'ထန်းတပင်', '1', NULL, NULL),
(104, 4, 'Yedashe', 'ရေတာရှည်', '1', NULL, NULL),
(105, 4, 'Pyu', 'ဖြူ း', '1', NULL, NULL),
(106, 4, 'Kyauktaga', 'ကျောက်တံခါး', '1', NULL, NULL),
(107, 4, 'Kyaukkyi', 'ကျောက်ကြီး', '1', NULL, NULL),
(108, 4, 'Hpa Yar Gyi', 'ဘုရားကြီး', '1', NULL, NULL),
(109, 5, 'Bogale', 'ဘိုကလေး', '1', NULL, NULL),
(110, 5, 'Danubyu', 'ဓနုဖြူ', '1', NULL, NULL),
(111, 5, 'Einme', 'အိမ်မဲ', '1', NULL, NULL),
(112, 5, 'Hinthada', 'ဟင်္သာတ', '1', NULL, NULL),
(113, 5, 'Ingapu', 'အင်္ဂပူ', '1', NULL, NULL),
(114, 5, 'Kangyidaunt', 'ကန်ကြီးထောင့်', '1', NULL, NULL),
(115, 5, 'Kyaiklat', 'ကျိုက်လတ်', '1', NULL, NULL),
(116, 5, 'Kyangin', 'ကြံခင်း', '1', NULL, NULL),
(117, 5, 'Kyaunggon', 'ကျောင်းကုန်း', '1', NULL, NULL),
(118, 5, 'Kyonpyaw', 'ကျုံပျော်', '1', NULL, NULL),
(119, 5, 'Labutta', 'လပွတ္တာ', '1', NULL, NULL),
(120, 5, 'Lemyethna', 'လေးမျက်နှာ', '1', NULL, NULL),
(121, 5, 'Maubin', 'မအူပင်', '1', NULL, NULL),
(122, 5, 'Mawlamyinegyun', 'မော်လမြိုင်ကျွန်း', '1', NULL, NULL),
(123, 5, 'Myanaung', 'မြန်အောင်', '1', NULL, NULL),
(124, 5, 'Myaungmya', 'မြောင်းမြ', '1', NULL, NULL),
(125, 5, 'Ngapudaw', 'ငပုတော', '1', NULL, NULL),
(126, 5, 'Nyaungdon', 'ညောင်တုန်း', '1', NULL, NULL),
(127, 5, 'Pantanaw', 'ပန်းတနော်', '1', NULL, NULL),
(128, 5, 'Pathein', 'ပုသိမ်', '1', NULL, NULL),
(129, 5, 'Pyapon', 'ဖျာပုံ', '1', NULL, NULL),
(130, 5, 'Thabaung', 'သာပေါင်း', '1', NULL, NULL),
(131, 5, 'Wakema', 'ဝါးခယ်မ', '1', NULL, NULL),
(132, 5, 'Yegyi', 'ရေကြည်', '1', NULL, NULL),
(133, 5, 'Zalun', 'ဇလွန်', '1', NULL, NULL),
(134, 6, 'Aunglan', 'အောင်လံ', '1', NULL, NULL),
(135, 6, 'Chauk', 'ချောက်', '1', NULL, NULL),
(136, 6, 'Gangaw', 'ဂန့်ဂေါ', '1', NULL, NULL),
(137, 6, 'Kamma', 'ကံမ', '1', NULL, NULL),
(138, 6, 'Magway', 'မကွေး', '1', NULL, NULL),
(139, 6, 'Minbu', 'မင်းဘူး', '1', NULL, NULL),
(140, 6, 'Mindon', 'မင်းတုန်း', '1', NULL, NULL),
(141, 6, 'Minhla', 'မင်းလှ', '1', NULL, NULL),
(142, 6, 'Myaing', 'မြိုင်', '1', NULL, NULL),
(143, 6, 'Myothit', 'မြို့သစ်', '1', NULL, NULL),
(144, 6, 'Natmauk', 'နတ်မောက်', '1', NULL, NULL),
(145, 6, 'Ngape', 'ငဖဲ', '1', NULL, NULL),
(146, 6, 'Pakokku', 'ပခုက္ကူ', '1', NULL, NULL),
(147, 6, 'Pauk', 'ပေါက်', '1', NULL, NULL),
(148, 6, 'Pwintbyu', 'ပွင့်ဖြူ', '1', NULL, NULL),
(149, 6, 'Salin', 'စလင်း', '1', NULL, NULL),
(150, 6, 'Saw', 'ဆော', '1', NULL, NULL),
(151, 6, 'Seikphyu', 'ဆိပ်ဖြူ', '1', NULL, NULL),
(152, 6, 'Sidoktaya', 'စေတုတ္တရာ', '1', NULL, NULL),
(153, 6, 'Sinbaungwe', 'ဆင်ပေါင်ဝဲ', '1', NULL, NULL),
(154, 6, 'Taungdwingyi', 'တောင်တွင်းကြီး', '1', NULL, NULL),
(155, 6, 'Thayet', 'သရပ်', '1', NULL, NULL),
(156, 6, 'Tilin', 'ထီးလင်း', '1', NULL, NULL),
(157, 6, 'Yenangyaung', 'ရေနံချောင်း', '1', NULL, NULL),
(158, 6, 'Yesagyo', 'ရေစကြို', '1', NULL, NULL),
(159, 7, 'Sagaing', 'စစ်ကိုင်း', '1', NULL, NULL),
(160, 7, 'Monywa', 'မုံရွာ', '1', NULL, NULL),
(161, 7, 'Shwebo', 'ရွှေဘို', '1', NULL, NULL),
(162, 7, 'Tabayin', 'ဒီပဲယင်း', '1', NULL, NULL),
(163, 7, 'Katha', 'ကသာ', '1', NULL, NULL),
(164, 7, 'Ayadaw', 'အရာတော်', '1', NULL, NULL),
(165, 7, 'Banmauk', 'ဗန်းမောက်', '1', NULL, NULL),
(166, 7, 'Budalin', 'မုတလင်', '1', NULL, NULL),
(167, 7, 'Chaung-U', 'ချောင်ဦး', '1', NULL, NULL),
(168, 7, 'Hkamti', 'ခန္တီး', '1', NULL, NULL),
(169, 7, 'Homalin', 'ဟုမ္မလင်း', '1', NULL, NULL),
(170, 7, 'Indaw', 'အင်းတော်', '1', NULL, NULL),
(171, 7, 'Kale', 'ကလေး', '1', NULL, NULL),
(172, 7, 'Kalewa', 'ကလေးဝ', '1', NULL, NULL),
(173, 7, 'kanbalu', 'ကန့်ဘလူ', '1', NULL, NULL),
(174, 7, 'Kani', 'ကနီး', '1', NULL, NULL),
(175, 7, 'Kawlin', 'ကောလင်း', '1', NULL, NULL),
(176, 7, 'Khin-U', 'ခင်ဦး', '1', NULL, NULL),
(177, 7, 'Kyunhla', 'ကျွန်းလှ', '1', NULL, NULL),
(178, 7, 'Lahe', 'လဟယ်', '1', NULL, NULL),
(179, 7, 'Mawlaik', 'မော်လိုက်', '1', NULL, NULL),
(180, 7, 'Mingin', 'မင်းကင်း', '1', NULL, NULL),
(181, 7, 'Myaung', 'မြိုင်', '1', NULL, NULL),
(182, 7, 'Myinmu', 'မြင်းမူ', '1', NULL, NULL),
(183, 7, 'Nanyun', 'နန်းယွန်း', '1', NULL, NULL),
(184, 7, 'Pale', 'ပုလဲ', '1', NULL, NULL),
(185, 7, 'Paungbyin', 'ဖောင်းပြင်', '1', NULL, NULL),
(186, 7, 'Pinlebu', 'ပင်လယ်ဘူး', '1', NULL, NULL),
(187, 7, 'Salingyi', 'ဆားလင်းကြီး', '1', NULL, NULL),
(188, 7, 'Tamu', 'တမူး', '1', NULL, NULL),
(189, 7, 'Taze', 'တန့်ဆည်', '1', NULL, NULL),
(190, 7, 'Tigyaing', 'ထီးချိုင့်', '1', NULL, NULL),
(191, 7, 'Wetlet', 'ဝက်လက်', '1', NULL, NULL),
(192, 7, 'Wuntho', 'ဝန်းသို', '1', NULL, NULL),
(193, 7, 'Ye-U', 'ရေဦး', '1', NULL, NULL),
(194, 7, 'Yinmabin', 'ယင်းမာပင်', '1', NULL, NULL),
(195, 8, 'Dawei', 'ထားဝယ်', '1', NULL, NULL),
(196, 8, 'Kawthoung', 'ကော့သောင်း', '1', NULL, NULL),
(197, 8, 'Myeik', 'မြိတ်', '1', NULL, NULL),
(198, 8, 'Bokpyin', 'ဘုတ်ပြင်း', '1', NULL, NULL),
(199, 8, 'Kyunsu', 'ကျွန်းစု', '1', NULL, NULL),
(200, 8, 'Palaw', 'ပူလော', '1', NULL, NULL),
(201, 8, 'Tanintharyi', 'တနင်္သာရီ', '1', NULL, NULL),
(202, 8, 'Thayetchaung', 'သရက်ချောင်း', '1', NULL, NULL),
(203, 8, 'Yebyu', 'ရေဖြူ', '1', NULL, NULL),
(204, 9, 'Taunggyi', 'တောင်ကြီး', '1', NULL, NULL),
(205, 9, 'Kalaw', 'ကလော', '1', NULL, NULL),
(206, 9, 'Aung Ban', 'အောင်ပန်း', '1', NULL, NULL),
(207, 9, 'Kengtung', 'ကျိုင်းတုံ', '1', NULL, NULL),
(208, 9, 'Tachileik', 'တာချီလိတ်', '1', NULL, NULL),
(209, 9, 'Hsipaw', 'သီပေါ', '1', NULL, NULL),
(210, 9, 'Kyuakme', 'ကျောက်မဲ', '1', NULL, NULL),
(211, 9, 'Lashio', 'လားရှိုး', '1', NULL, NULL),
(212, 9, 'Muse', 'မူဆယ်', '1', NULL, NULL),
(213, 9, 'Nawnghkio', 'နောင်ချို', '1', NULL, NULL),
(214, 9, 'Hopong', 'ဟိုပုံး', '1', NULL, NULL),
(215, 9, 'Loilen', 'လွိုင်လင်', '1', NULL, NULL),
(216, 9, 'Nyaungshwe', 'ညောင်ရွှေ', '1', NULL, NULL),
(217, 9, 'Pindaya', 'ပင်းတယ', '1', NULL, NULL),
(218, 9, 'Pinlaung', 'ပင်လောင်း', '1', NULL, NULL),
(219, 9, 'Matman', 'မက်မန်း', '1', NULL, NULL),
(220, 9, 'Monghpyak', 'မိုင်းဖြတ်', '1', NULL, NULL),
(221, 9, 'Monghsat', 'မိုင်းဆတ်', '1', NULL, NULL),
(222, 9, 'Mongkhet', 'မိုင်းခတ်', '1', NULL, NULL),
(223, 9, 'Mongla', 'မိုင်းလား', '1', NULL, NULL),
(224, 9, 'Mongping', 'မိုင်းပြင်း', '1', NULL, NULL),
(225, 9, 'Mongton', 'မိုင်းတုန်း', '1', NULL, NULL),
(226, 9, 'Mongyang', 'မိုင်းယန်း', '1', NULL, NULL),
(227, 9, 'Mongyawng', 'မိုင်းယောင်း', '1', NULL, NULL),
(228, 9, 'Hopang', 'ဟိုပန်', '1', NULL, NULL),
(229, 9, 'Hseni', 'သိန္နီ', '1', NULL, NULL),
(230, 9, 'Konkyan', 'ကုန်းကြမ်း', '1', NULL, NULL),
(231, 9, 'Kunlong', 'ကွမ်းလုံ', '1', NULL, NULL),
(232, 9, 'Kutkai', 'ကွတ်ခိုင်', '1', NULL, NULL),
(233, 9, 'Laukkaing', 'လောက်ကိုင်', '1', NULL, NULL),
(234, 9, 'Mabein', 'မဘိန်း', '1', NULL, NULL),
(235, 9, 'Mongmao', 'မိုင်းမော', '1', NULL, NULL),
(236, 9, 'Mongmit', 'မိုးမိတ်', '1', NULL, NULL),
(237, 9, 'Mongyai', 'မိုင်းရယ်', '1', NULL, NULL),
(238, 9, 'Namhsan', 'နမ့်ဆန်', '1', NULL, NULL),
(239, 9, 'Namtu', 'နမ္မတူ', '1', NULL, NULL),
(240, 9, 'Nanhkan', 'နမ့်ခမ်း', '1', NULL, NULL),
(241, 9, 'Pangsang', 'ပန်ဆန်း', '1', NULL, NULL),
(242, 9, 'Pangwaun', 'ပန်ဝိုင်', '1', NULL, NULL),
(243, 9, 'Tangyan', 'တန့်ယန်း', '1', NULL, NULL),
(244, 9, 'Hsihseng', 'ဆီဆိုင်', '1', NULL, NULL),
(245, 9, 'Kunhing', 'ကွန်ဟိန်း', '1', NULL, NULL),
(246, 9, 'Kyethi', 'ကျေးသီး', '1', NULL, NULL),
(247, 9, 'Laihka', 'လဲချား', '1', NULL, NULL),
(248, 9, 'Langkho', 'လင်းခေး', '1', NULL, NULL),
(249, 9, 'Lawksawk', 'ရပ်စောက်', '1', NULL, NULL),
(250, 9, 'Mawkmai', 'မောက်မယ်', '1', NULL, NULL),
(251, 9, 'Monghsu', 'မိုင်းရှုး', '1', NULL, NULL),
(252, 9, 'Mongkaung', 'မိုင်းကောင်း', '1', NULL, NULL),
(253, 9, 'Mongnai', 'မိုးနဲ', '1', NULL, NULL),
(254, 9, 'Mongpan', 'မိုင်းပန်', '1', NULL, NULL),
(255, 9, 'Nansang', 'နမ့်စန်', '1', NULL, NULL),
(256, 9, 'Pekon', 'ဖယ်ခုံ', '1', NULL, NULL),
(257, 9, 'Ywangan', 'ရွာငံ', '1', NULL, NULL),
(258, 10, 'Hpa-An', 'ဘားအံ', '1', NULL, NULL),
(259, 10, 'Kawkareik', 'ကော့ကရိတ်', '1', NULL, NULL),
(260, 10, 'Myawaddy', 'မြဝတီ', '1', NULL, NULL),
(261, 10, 'Thandaung', 'သံတောင်', '1', NULL, NULL),
(262, 10, 'Hlaingbwe', 'လှိုင်းဘွဲ့', '1', NULL, NULL),
(263, 10, 'Hpapun', 'ဖာပွန်', '1', NULL, NULL),
(264, 10, 'Kyain Seikgyi', 'ကြာအင်းဆိပ်ကြီး', '1', NULL, NULL),
(265, 11, 'Kyaikto', 'ကျိုက်ထို', '1', NULL, NULL),
(266, 11, 'Mawlamyine', 'မော်လမြိုင်', '1', NULL, NULL),
(267, 11, 'Thaton', 'သထုံ', '1', NULL, NULL),
(268, 11, 'Bilin', 'ဘီးလင်း', '1', NULL, NULL),
(269, 11, 'Chaungzon', 'ချောင်းဆုံ', '1', NULL, NULL),
(270, 11, 'Kyaikmaraw', 'ကျိုက်မရော', '1', NULL, NULL),
(271, 11, 'Mudon', 'မုဒုံ', '1', NULL, NULL),
(272, 11, 'Paung', 'ပေါင်', '1', NULL, NULL),
(273, 11, 'Thanbyuzayat', 'သံဖြူဇရပ်', '1', NULL, NULL),
(274, 11, 'Ye', 'ရေး', '1', NULL, NULL),
(275, 12, 'Sittwe', 'စစ်တွေ', '1', NULL, NULL),
(276, 12, 'Thandwe', 'သံတွဲ', '1', NULL, NULL),
(277, 12, 'Toungup', 'တောင်ကုတ်', '1', NULL, NULL),
(278, 12, 'Ann', 'အမ်း', '1', NULL, NULL),
(279, 12, 'Buthidaung', 'ဘူးသီးတောင်', '1', NULL, NULL),
(280, 12, 'Gwa', 'ဂွ', '1', NULL, NULL),
(281, 12, 'Kyaukpyu', 'ကျောက်ဖြူ', '1', NULL, NULL),
(282, 12, 'Kyauktaw', 'ကျောက်တော်', '1', NULL, NULL),
(283, 12, 'Maungdaw', 'မောင်တော', '1', NULL, NULL),
(284, 12, 'Minbya', 'မင်းပြား', '1', NULL, NULL),
(285, 12, 'Mrauk-U', 'မြောက်ဦး', '1', NULL, NULL),
(286, 12, 'Munaung', 'မာန်အောင်', '1', NULL, NULL),
(287, 12, 'Myebon', 'မြေပုံ', '1', NULL, NULL),
(288, 12, 'Pauktaw', 'ပေါက်တော', '1', NULL, NULL),
(289, 12, 'Ponnagyun', 'ပုဏ္ဏားကျွန်း', '1', NULL, NULL),
(290, 12, 'Ramree', 'ရမ်းဗြဲ', '1', NULL, NULL),
(291, 12, 'Rathedaung', 'ရသေ့တောင်', '1', NULL, NULL),
(292, 13, 'Hakha', 'ဟားခါး', '1', NULL, NULL),
(293, 13, 'Mindat', 'မင်းတပ်', '1', NULL, NULL),
(294, 13, 'Falam', 'ဖလန်း', '1', NULL, NULL),
(295, 13, 'Htantlang', 'ထန်တလန်', '1', NULL, NULL),
(296, 13, 'Kanpetlet', 'ကန်ပက်လက်', '1', NULL, NULL),
(297, 13, 'Madupi', 'မတူပီ', '1', NULL, NULL),
(298, 13, 'Paletwa', 'ပလက်ဝ', '1', NULL, NULL),
(299, 13, 'Tiddim', 'တီးတိန်', '1', NULL, NULL),
(300, 13, 'Tonzang', 'တွမ်းဇံ', '1', NULL, NULL),
(301, 14, 'Myitkyina', 'မြစ်ကြီးနား', '1', NULL, NULL),
(302, 14, 'Puta-O', 'ပူတာအို', '1', NULL, NULL),
(303, 14, 'Bhamo', 'ဗန်းမော်', '1', NULL, NULL),
(304, 14, 'Hpakan', 'ဖားကန့်', '1', NULL, NULL),
(305, 14, 'Mogaung', 'မိုးကောင်း', '1', NULL, NULL),
(306, 14, 'Mohnyin', 'မိုးညှင်း', '1', NULL, NULL),
(307, 14, 'Momauk', 'မိုးမောက်', '1', NULL, NULL),
(308, 14, 'Shwegu', 'ရွှေကူ', '1', NULL, NULL),
(309, 14, 'Injangyang', 'အင်ဂျန်းယန်', '1', NULL, NULL),
(310, 14, 'Kawnglanghpu', 'ခေါင်လံဖူး', '1', NULL, NULL),
(311, 14, 'Machanbaw', 'မချမ်းဘော', '1', NULL, NULL),
(312, 14, 'Mansi', 'မံစီ', '1', NULL, NULL),
(313, 14, 'Nogmung', 'နောင်မွန်း', '1', NULL, NULL),
(314, 14, 'Sumprabum', 'ဆွမ်ပရာဘွမ်', '1', NULL, NULL),
(315, 14, 'Tanai', 'တနိုင်း', '1', NULL, NULL),
(316, 14, 'Tsawlaw', 'ဆော့လော်', '1', NULL, NULL),
(317, 14, 'Waingmaw', 'ဝိုင်းမော်', '1', NULL, NULL),
(318, 15, 'Loikaw', 'လွိုင်ကော်', '1', NULL, NULL),
(319, 15, 'Bawlakhe', 'ဘောလခဲ', '1', NULL, NULL),
(320, 15, 'Demoso', 'ဒီမောဆို', '1', NULL, NULL),
(321, 15, 'Hpasawng', 'ဖားဆောင်း', '1', NULL, NULL),
(322, 15, 'Hpruso', 'ဖရှုးဆိုး', '1', NULL, NULL),
(323, 15, 'Mese', 'မယ်ဆဲ့', '1', NULL, NULL),
(324, 15, 'Shadaw', 'ရှားတော', '1', NULL, NULL),
(325, 1, 'Thuwana', 'သုဝဏ္ဏ', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `address`, `join_date`, `remember_token`, `created_at`, `updated_at`, `employee_id`, `nrc_number`, `gender`, `passport_photo`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Le4a7vAtroc7NGRRAbESu.Tpuz2KF4e.CjYDmU3wiRNOtpCj/WiAG', '09444161997', 'Yangon', '1.1.2022', NULL, '2023-01-29 22:34:39', '2023-01-30 10:20:38', 'EMP-00001', '1/abc(N)009221', 'male', NULL),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$.vQP72TfB9e6QdPF9e8ZruQ0S/QeFwRfiSEixisaYjQlRP1mK2R0u', '09123123123', 'Yangon', '1.1.2022', NULL, '2023-01-30 10:16:30', '2023-01-30 10:16:30', 'EMP-00002', '1/abc(N)009112', 'male', 'public/images/YXikmMIGdTWpjKSefrLF91Mdedk0YXU0lfrp4Nfa.png'),
(3, 'Mg Mg', 'mgmg@gmail.com', NULL, '$2y$10$WsBifexGEuyuZiVkjAAKFet3bK261AM3h/azLzy34cRgOk/srYcbq', '0912312313', 'Yangon', '1.1.2022', NULL, '2023-01-30 10:19:28', '2023-01-30 10:19:28', 'EMP-00003', '1/abc(N)009112', 'male', 'public/images/xVI3Z7akPvMAIwhnwvzcnKZtNIOiafM4aww9I0Sv.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_lists`
--
ALTER TABLE `agent_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `file_management`
--
ALTER TABLE `file_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labour_docs`
--
ALTER TABLE `labour_docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labour_management`
--
ALTER TABLE `labour_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_lists`
--
ALTER TABLE `members_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overseas_agencies`
--
ALTER TABLE `overseas_agencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passports`
--
ALTER TABLE `passports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passport_payments`
--
ALTER TABLE `passport_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passport_payment_files`
--
ALTER TABLE `passport_payment_files`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sendings`
--
ALTER TABLE `sendings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_lists`
--
ALTER TABLE `agent_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_management`
--
ALTER TABLE `file_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `labour_docs`
--
ALTER TABLE `labour_docs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `labour_management`
--
ALTER TABLE `labour_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `members_lists`
--
ALTER TABLE `members_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `overseas_agencies`
--
ALTER TABLE `overseas_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `passports`
--
ALTER TABLE `passports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `passport_payments`
--
ALTER TABLE `passport_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passport_payment_files`
--
ALTER TABLE `passport_payment_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sendings`
--
ALTER TABLE `sendings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
