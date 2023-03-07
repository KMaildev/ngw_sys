-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 07, 2023 at 05:16 AM
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demands`
--
ALTER TABLE `demands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_management`
--
ALTER TABLE `file_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labour_docs`
--
ALTER TABLE `labour_docs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labour_management`
--
ALTER TABLE `labour_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members_lists`
--
ALTER TABLE `members_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passports`
--
ALTER TABLE `passports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passport_payments`
--
ALTER TABLE `passport_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passport_payment_files`
--
ALTER TABLE `passport_payment_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
