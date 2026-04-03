-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2026 at 01:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_activity_logs`
--

CREATE TABLE `admin_activity_logs` (
  `id` int(11) NOT NULL,
  `admin_id` varchar(191) NOT NULL,
  `action_type` varchar(191) NOT NULL,
  `target_type` varchar(191) NOT NULL,
  `target_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `author` varchar(191) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `cover_image_url` varchar(191) DEFAULT NULL,
  `original_pdf_url` varchar(191) DEFAULT NULL,
  `original_pdf_path` varchar(191) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `isbn` varchar(191) DEFAULT NULL,
  `reading_time_minutes` int(11) NOT NULL DEFAULT 15,
  `total_audio_duration` int(11) NOT NULL DEFAULT 0,
  `average_rating` decimal(3,2) NOT NULL DEFAULT 0.00,
  `total_reviews` int(11) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `summary_generated` tinyint(1) NOT NULL DEFAULT 0,
  `audio_generated` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` varchar(191) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `slug`, `author`, `category_id`, `description`, `cover_image_url`, `original_pdf_url`, `original_pdf_path`, `publication_year`, `isbn`, `reading_time_minutes`, `total_audio_duration`, `average_rating`, `total_reviews`, `view_count`, `is_featured`, `is_published`, `summary_generated`, `audio_generated`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Atomic Habbits', 'atomic-habbits', 'James Clear', 2, 'Atomic Habits is a powerful self-improvement book that explains how small daily habits can lead to remarkable long-term results. Instead of focusing on big goals or drastic changes, the book teaches that tiny improvements—just 1% better each day—can compound over time and completely transform your life.\nThe book provides a practical framework for building good habits, breaking bad ones, and creating systems that make success easier. It emphasizes that lasting change happens when habits align with the identity of the person you want to become.', '/uploads/covers/1773520150485-40121378.webp', '/uploads/pdfs/1773520150520-1_Atomic_Habits_James_Clear.pdf', NULL, 2024, '216522552178', 15, 922, 0.00, 0, 0, 1, 1, 1, 1, '4cfcf935-1328-4d27-9d1a-97b16bb34a52', '2026-03-14 20:29:10.862', '2026-03-16 20:32:50.357'),
(2, 'The 5AM club', 'the-5am-club', 'Robin Sharma', 5, 'A self-help book that presents a framework for personal mastery by waking up early. Told through a story of a billionaire mentoring an artist and entrepreneur, it outlines how utilizing the \"quiet hours\" (5 a.m. to 6 a.m.) improves productivity, health, and happiness.', '/uploads/covers/1773696236801-37502596.webp', '/uploads/pdfs/1773696236827-2_The_5_AM_Club_Robin_Sharma.pdf', NULL, 2024, '252546468192', 15, 0, 0.00, 0, 0, 1, 1, 1, 0, '4cfcf935-1328-4d27-9d1a-97b16bb34a52', '2026-03-16 21:23:56.942', '2026-03-16 21:27:11.619'),
(3, 'The Happiest Man on Earth', 'the-happiest-man-on-earth', 'Eddie Jaku', 3, 'Life Can Be Beautiful If You\nMake It Beautiful', '/uploads/covers/1775212376805-57449383.webp', '/uploads/pdfs/1775212376830-503_The_Happiest_Man_on_Earth_Eddie_Jaku.pdf', NULL, 2022, '212265521578', 15, 0, 0.00, 0, 0, 1, 1, 1, 0, '4cfcf935-1328-4d27-9d1a-97b16bb34a52', '2026-04-03 10:32:56.906', '2026-04-03 11:13:49.400'),
(5, 'The Psychology of Money', 'the-psychology-of-money', 'Morgan Housel', 1, 'It emphasizes that doing well with money is less about what you know and more about how you behave. Key themes include the difference between being rich and wealthy, the role of luck and risk, and the importance of having a \"enough\" mindset', '/uploads/covers/1775214292347-55290131.webp', '/uploads/pdfs/1775214292380-19_The_Psychology_of_Money_Morgan_Housel.pdf', NULL, 2000, ' 978-0857197689', 15, 0, 0.00, 0, 0, 1, 1, 0, 0, '4cfcf935-1328-4d27-9d1a-97b16bb34a52', '2026-04-03 11:04:52.412', '2026-04-03 11:09:55.434'),
(6, 'The Power of Now', 'the-power-of-now', 'Eckhart Tolle', 2, 'A Guide to Spiritual Enlightenment by Eckhart Tolle is a guide for achieving spiritual enlightenment by living in the present moment. The book explains that emotional problems are rooted in identifying with the mind and worrying about the past or future', '/uploads/covers/1775214705336-6708.webp', '/uploads/pdfs/1775214705361-33_The_Power_of_Now_Eckhart_Tolle.pdf', NULL, 1997, '978-1577314806', 15, 0, 0.00, 0, 0, 1, 1, 0, 0, '4cfcf935-1328-4d27-9d1a-97b16bb34a52', '2026-04-03 11:11:45.386', '2026-04-03 11:11:45.386');

-- --------------------------------------------------------

--
-- Table structure for table `book_chapters`
--

CREATE TABLE `book_chapters` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `chapter_number` int(11) NOT NULL,
  `chapter_title` varchar(191) NOT NULL,
  `chapter_summary` longtext NOT NULL,
  `audio_url` varchar(191) DEFAULT NULL,
  `audio_duration` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_chapters`
--

INSERT INTO `book_chapters` (`id`, `book_id`, `chapter_number`, `chapter_title`, `chapter_summary`, `audio_url`, `audio_duration`, `display_order`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'The Fundamentals', 'Chapter one of \"Atomic Habits\" by James Clear introduces the transformative power of small, daily habits. Instead of promoting grand goals or drastic changes, Clear advises that minor improvements of just 1% each day can lead to significant long-term results. This concept, known as the compound effect, is the backbone of his practical framework for designing good habits, eradicating harmful ones, and establishing systems that pave the way for success. Clear emphasizes that sustainable change occurs when habits align with the identity of the person we aspire to become. This chapter\'s key takeaway is the power of incremental change: rather than aiming for massive, immediate transformation, we can achieve lasting improvement through small, consistent enhancements that align with our desired identity. This foundational understanding sets the stage for a deeper exploration of how to effectively implement atomic habits in our daily lives.', '/uploads/audio/1-chapter-1-1773693003650.mp3', 76, 0, '2026-03-15 11:58:46.738', '2026-03-16 20:30:14.875'),
(2, 1, 2, 'How Habits Work', 'Chapter 2 of \"Atomic Habits\" by James Clear delves into the potent potential of incremental positive changes. Clear argues that it\'s not grandiose, sweeping changes but rather small, daily habits that can yield significant long-term results. This chapter emphasizes the power of just becoming 1% better each day and how this compounds over time, leading to a transformative effect on one\'s life. Clear provides a practical framework for not only developing beneficial habits but also for dismantling harmful ones. He posits that successful, lasting change is only possible when one\'s habits are in harmony with the identity they aspire to embody. This chapter offers actionable insights into constructing systems that simplify the path to success. It serves as a guide for understanding the inner workings of habits, underscoring the importance of consistency and alignment with one\'s personal identity in the pursuit of meaningful change.', '/uploads/audio/1-chapter-2-1773693017066.mp3', 76, 0, '2026-03-15 11:58:46.813', '2026-03-16 20:30:34.118'),
(3, 1, 3, 'The 1% Rule', 'Chapter 3 of \"Atomic Habits\" by James Clear introduces the powerful concept of the 1% Rule. It posits that consistent tiny improvements, as small as 1% every day, can compound over time to deliver remarkable long-term results. Clear emphasizes that massive success is not necessarily about making substantial, immediate changes, but about the incremental progress that aligns with the identity of the person you aspire to be. He provides a practical framework to cultivate good habits, dismantle bad ones, and create systems that simplify success. The chapter underscores the significance of daily habits in shaping your identity and influencing change, rather than focusing solely on ambitious goals. This chapter\'s key takeaway is the transformative power of small, habitual improvements that align with one\'s desired identity, encouraging readers to adopt the 1% Rule in their journey to self-improvement.', '/uploads/audio/1-chapter-3-1773693037231.mp3', 73, 0, '2026-03-15 11:58:46.883', '2026-03-16 20:30:50.412'),
(4, 1, 4, 'The Power of Habit Stacking', 'Chapter 4 of \"Atomic Habits\" by James Clear discusses the potent technique of \'habit stacking\'. The concept emphasizes the power of small, everyday habits, and how compounding them can lead to significant long-term results. Clear suggests that instead of focusing on monumental goals or drastic changes, making tiny improvements of just 1% each day can completely transform one\'s life. This chapter provides a practical framework for building beneficial habits, breaking harmful ones, and creating systems that facilitate success. Clear underscores the idea that enduring change occurs when habits are in sync with the identity of the person you aspire to be. The key takeaway is the potential of incremental changes and their compound effect over time. This chapter offers valuable insights into how the strategic layering of habits can help one achieve their personal and professional goals with less effort and more efficiency.', '/uploads/audio/1-chapter-4-1773693051567.mp3', 75, 0, '2026-03-15 11:58:46.919', '2026-03-16 20:30:57.541'),
(5, 1, 5, 'The Role of Environment', 'Chapter 5 of \"Atomic Habits\" by James Clear underscores the potency of small daily habits in driving significant long-term outcomes. Clear proposes a radical shift from big goals to minor improvements; an increase by just 1% daily can trigger a transformative compound effect over time. This chapter provides a practical blueprint for constructing beneficial habits, dismantling detrimental ones, and instituting systems that simplify the path to success. Clear emphasizes that enduring change occurs when habits resonate with the identity of the person you aspire to be. Key takeaways include the fundamental role of the environment in habit development and the power of identity-based habits. Readers are encouraged to create supportive environments that nudge them towards positive actions, and to align their habits with the identity they wish to embody, thereby making the process of change not just achievable but inherently attractive.', '/uploads/audio/1-chapter-5-1773693061376.mp3', 76, 0, '2026-03-15 11:58:46.946', '2026-03-16 20:31:16.561'),
(6, 1, 6, 'The Secret to Self-Control', 'Chapter 6 of \"Atomic Habits\" by James Clear, titled \"The Secret to Self-Control,\" explores the power of small daily habits in driving significant long-term transformations. The chapter emphasizes the importance of focusing on incremental improvements, reinforcing that a 1% daily enhancement can compound into remarkable results over time. Clear introduces a practical framework for cultivating good habits, eradicating detrimental ones, and constructing systems that facilitate success. The chapter underscores the concept that lasting change occurs when habits are aligned with the identity of the person one aspires to be. With actionable insights, it emphasizes the importance of self-control in habit formation, indicating that the key to achieving desired outcomes lies in consistent, daily practices aligned with one\'s envisioned identity. This chapter not only provides valuable strategies for self-improvement but also encourages readers to adopt a growth mindset, thereby enhancing their journey towards personal and professional development.', '/uploads/audio/1-chapter-6-1773693077782.mp3', 85, 0, '2026-03-15 11:58:46.966', '2026-03-16 20:31:31.153'),
(7, 1, 7, 'How to Make Good Habits Inevitable and Bad Habits Impossible', 'Chapter 7 of \"Atomic Habits\" by James Clear delves into the concept of making good habits inevitable and bad habits impossible. Clear advocates for small, daily improvements that result in drastic long-term transformations, rather than focusing on large, immediate goals. He argues that a change of just 1% each day can have compounding effects over time, leading to a significant transformation in one\'s life. The chapter provides a practical framework for creating good habits, discarding bad ones, and creating systems that simplify success. Clear underscores that lasting change occurs when habits align with the identity of the person you aspire to be. For readers aiming to instigate positive changes in their lives, this chapter offers actionable insights into habit formation and the power of incremental progress. It is a valuable guide to self-improvement and personal transformation, emphasizing the importance of aligning habits with personal identity.', '/uploads/audio/1-chapter-7-1773693092507.mp3', 78, 0, '2026-03-15 11:58:47.038', '2026-03-16 20:31:45.053'),
(8, 1, 8, 'The Goldilocks Rule', 'Chapter 8: The Goldilocks Rule in \"Atomic Habits\" by James Clear articulates the significance of building habits that are neither too hard nor too easy, but just right—akin to the \'Goldilocks principle\'. Clear argues that the secret to continuous growth and interest is engaging in tasks that reside in a sweet spot of difficulty—not too challenging to be frustrating, yet not too simple to be monotonous. The concept of becoming 1% better each day is underscored as a powerful tool for achieving long-term success. By aligning these incremental habits with the identity one aspires to embody, lasting change becomes attainable. Readers are encouraged to focus on small, daily improvements to foster beneficial habits, shatter detrimental ones, and craft systems aimed at making success more accessible. The chapter provides a practical blueprint for habit formation that champions consistency and balances challenge with capability.', '/uploads/audio/1-chapter-8-1773693107625.mp3', 75, 0, '2026-03-15 11:58:47.104', '2026-03-16 20:31:58.980'),
(9, 1, 9, 'The Law of Least Effort', 'Chapter 9 of \'Atomic Habits\' by James Clear, \'The Law of Least Effort,\' explores the profound impact of small, daily habits on long-term success. Clear argues that minor daily improvements—just 1% better each day—compound over time, leading to significant personal transformation. The chapter underscores the importance of aligning habits with the person\'s desired identity, as this synergy catalyzes lasting change. This alignment, combined with breaking bad habits and creating systems to facilitate success, forms a practical framework for self-improvement. Central to this chapter is the concept of \'The Law of Least Effort,\' which argues for the power of minimal, manageable changes, rather than daunting, sweeping ones. The key takeaway for readers is the value of incremental growth and consistency, which ultimately leads to remarkable results over time. This chapter empowers readers to make small, sustainable changes to their daily habits, leading to profound transformation in the long run.', '/uploads/audio/1-chapter-9-1773693120482.mp3', 81, 0, '2026-03-15 11:58:47.127', '2026-03-16 20:32:15.681'),
(10, 1, 10, 'How to Stay Focused', 'Chapter 10 of \"Atomic Habits\" by James Clear underscores the significance of small, daily habits in achieving remarkable long-term results. Clear champions the notion of focusing less on monumental goals and more on tiny improvements, suggesting that a 1% daily advancement can lead to transformative life changes over time. The chapter offers a practical framework for building beneficial habits, dismantling harmful ones, and creating systems that facilitate success. Clear emphasizes that enduring change happens when individuals\' habits align with the identity of the person they aspire to be. This chapter serves as a guide for readers to concentrate on their daily actions, offering actionable insights on aligning habits with personal goals and identity. The key takeaway is the power of minuscule daily improvements in shaping our long-term success and identity, underscoring the importance of consistency in our journey of personal transformation.\n', '/uploads/audio/1-chapter-10-1773693137283.mp3', 77, 0, '2026-03-15 11:58:47.140', '2026-03-16 20:32:23.530'),
(11, 1, 11, 'The Truth About Talent', 'Chapter 11 of \"Atomic Habits\" by James Clear, titled \"The Truth About Talent,\" underscores the potency of incremental daily habits in achieving long-term profound results. Clear urges readers to shift their focus from ambitious goals or drastic changes to minute improvements which, though small, can cause significant transformations when compounded over time. He stresses aligning these habits with the identity of the person one aspires to become, thus ensuring sustainable change. The chapter offers a practical framework for cultivating beneficial habits, eradicating detrimental ones, and developing systems that facilitate success. The key takeaway from this chapter is the importance of consistency in enhancing one\'s skills or talents. By making a 1% improvement each day, readers are nudged towards continuous progress, demonstrating that success is often a product of consistent, tiny changes over time, rather than sporadic, large-scale efforts.', '/uploads/audio/1-chapter-11-1773693145280.mp3', 77, 0, '2026-03-15 11:58:47.158', '2026-03-16 20:32:35.967'),
(12, 1, 12, 'The Downside of Creating Good Habits', 'Chapter 12 of \"Atomic Habits\" by James Clear discusses the potential downsides of creating good habits. Clear champions the concept of small, daily habits as a powerful tool for self-improvement and lasting change. He argues that incremental improvements of just 1% each day can compound over time, leading to transformative results. However, he cautions that this approach must be carefully aligned with one\'s identity and goals. The chapter highlights the importance of creating habits that align with the identity of the individual and their desired future self. Clear provides a practical framework to build good habits and dispel bad ones, emphasizing the need for systems that facilitate success. This chapter underscores the power of habits, while cautioning readers about potential pitfalls, offering actionable insights into the careful cultivation and management of daily habits for long-term success.', '/uploads/audio/1-chapter-12-1773693158330.mp3', 73, 0, '2026-03-15 11:58:47.170', '2026-03-16 20:32:50.348'),
(13, 2, 1, 'The Shock Begins', 'In Chapter 1, \"The Shock Begins,\" of Robin Sharma\'s \"The 5AM Club,\" the author introduces us to the concept of personal mastery through the discipline of early rising. The chapter is structured around a narrative involving a billionaire mentor guiding an artist and an entrepreneur, which serves as a vehicle to convey the key principles. Sharma posits that the strategic utilization of the \"quiet hours\" between 5 a.m. and 6 a.m. can significantly enhance one\'s productivity, health, and overall happiness. The chapter\'s core message is about transforming these early morning hours into a time of tranquility and introspection, offering profound benefits to one\'s professional and personal life. The actionable takeaway is the encouragement to develop the habit of early rising, leveraging this period for self-improvement and mental conditioning, thereby setting the tone for a successful and fulfilling day. This chapter serves as a compelling introduction to the transformative power of adopting the 5AM routine.', NULL, 0, 0, '2026-03-16 21:26:06.988', '2026-03-16 21:26:06.988'),
(14, 2, 2, 'The Method Explained', 'Chapter 2 of Robin Sharma\'s \"The 5AM Club\" introduces and explains the method behind the concept of rising early for personal mastery. The chapter unfolds through a narrative where a billionaire guides an artist and entrepreneur, demonstrating how the utilization of the \"quiet hours\" between 5 a.m. to 6 a.m. can significantly boost productivity, well-being, and happiness. The quietness and solitude of the early morning hours offer an optimal environment for reflection, planning, and creativity, fostering personal and professional growth. The key takeaway is the actionable insight that shifting one\'s routine to include this \"victory hour\" can lead to substantial improvements in different aspects of life. This chapter encourages the reader to redefine their relationship with time, setting the stage for the transformative habits and tactics discussed in the subsequent chapters, underlining the power of early rising as a tool for achieving success and fulfillment.', NULL, 0, 0, '2026-03-16 21:26:06.997', '2026-03-16 21:26:06.997'),
(15, 2, 3, 'The First Step', 'Chapter 3 of \"The 5AM Club\" by Robin Sharma, titled \"The First Step,\" introduces the concept of personal mastery through early rising. Sharma uses a narrative approach, where a billionaire imparts wisdom on an artist and entrepreneur, to illustrate how the quiet hours between 5 a.m. and 6 a.m. can be harnessed for self-improvement. The chapter underscores the impact of these early hours on productivity, health, and happiness. Readers are encouraged to use this time to focus on personal growth, mental clarity, and planning for the day ahead. This chapter\'s key takeaway is the introduction of the \'5AM Club\' concept itself - the idea that rising early can cultivate success. The actionable insight is for readers to adjust their routines to include this powerful hour, thereby fostering a habit that can lead to significant personal and professional transformation.', NULL, 0, 0, '2026-03-16 21:26:07.002', '2026-03-16 21:26:07.002'),
(16, 2, 4, 'Embracing Change', 'Chapter 4 of \"The 5AM Club\" presents a profound approach to personal mastery through the adoption of early morning habits. The billionaire mentor underscores the transformative potential of embracing the \'quiet hours\' from 5 a.m. to 6 a.m., for the artist and entrepreneur, and implicitly, for the readers. He argues that these early hours, devoid of distractions, can significantly boost productivity, health, and overall happiness. The main takeaway is a bold invitation to alter our daily routines, challenging the standard norms of productivity. By adjusting our schedules to capitalize on the tranquility of the early morning, we can unlock previously untapped reservoirs of creativity and efficiency. This chapter encourages readers to view change not as a disruption but as a catalyst for personal growth and high performance. It offers a compelling case for the transformative power of simple lifestyle adjustments and the profound impact they can have on our personal and professional lives.', NULL, 0, 0, '2026-03-16 21:26:07.007', '2026-03-16 21:26:07.007'),
(17, 2, 5, 'The Power of Habits', 'Chapter 5 of \"The 5AM Club\" by Robin Sharma delves into the potent influence of habits on personal mastery. In this chapter, Sharma highlights the significance of starting the day during the \"quiet hours\" (5 a.m. to 6 a.m.) to enhance productivity, health, and well-being. The billionaire mentor in the narrative emphasizes the transformative power of this early morning routine and its role in nurturing successful habits. Readers are urged to harness these serene, undisturbed hours for personal growth and productivity enhancement. The chapter’s core message lies in the understanding that forming and maintaining productive habits, like rising early, can drastically improve one\'s life quality. The actionable insight is clear: adopt the habit of waking up at 5 a.m. and utilize this undisturbed hour to propel personal mastery, thereby steering oneself towards a healthier, happier, and more productive life.', NULL, 0, 0, '2026-03-16 21:26:07.013', '2026-03-16 21:26:07.013'),
(18, 2, 6, 'Overcoming Resistance', 'In Chapter 6: Overcoming Resistance, of Robin Sharma\'s influential book, \"The 5AM Club,\" the author provides guidance on how to overcome the instinctive resistance to waking up early and embracing the power of the \"quiet hours.\" Through his fictional narrative of a billionaire mentoring an artist and entrepreneur, Sharma asserts that utilizing the serene hour from 5 a.m. to 6 a.m. significantly enhances one\'s productivity, health, and overall happiness. He delves into the psychological barriers that inhibit this change, offering practical strategies to conquer these challenges. The key takeaway is the importance of discipline and consistency in achieving personal mastery. By overcoming resistance to change, readers can unlock a profound transformation in their lives. This chapter is a call to action, encouraging readers to step out of their comfort zones and harness the potential of the early morning for personal and professional growth.', NULL, 0, 0, '2026-03-16 21:26:07.017', '2026-03-16 21:26:07.017'),
(19, 2, 7, 'The Power of Consistency', 'Chapter 7 of \"The 5AM Club\" by Robin Sharma underscores the power of consistency in enhancing personal mastery. Through the narrative of a billionaire\'s guidance to an artist and an entrepreneur, Sharma conveys how consistently waking up during the \"quiet hours\" (5 a.m. to 6 a.m.) can lead to significant improvements in productivity, health, and happiness. The chapter emphasizes that habitual early rising fosters a disciplined lifestyle, subsequently promoting clarity of thought, increased energy levels, and more robust emotional wellbeing. Sharma further suggests that the consistent utilization of these quiet hours enables individuals to harness their peak productivity, thereby allowing them to master their goals. The key takeaway is the transformative power of consistent early rising, encouraging readers to adopt this practice to catalyze personal and professional growth. In essence, Chapter 7 of \"The 5AM Club\" serves as a compelling guide on how to unlock one\'s full potential through the power of consistency.', NULL, 0, 0, '2026-03-16 21:26:07.024', '2026-03-16 21:26:07.024'),
(20, 2, 8, 'The Transformation', 'Chapter 8, \"The Transformation,\" of \"The 5AM Club\" by Robin Sharma, articulates the transformative power of utilizing the early morning\'s \"quiet hours\" for personal growth and productivity. Seen through the lens of a billionaire mentor guiding an artist and entrepreneur, the chapter presents the concept of rising at 5 a.m. as a pathway to mastering personal efficiency, health, and happiness. By dedicating one hour each morning to self-improvement, individuals can tap into a peaceful, uninterrupted space that heightens productivity. Sharma demonstrates how this simple lifestyle change can dramatically transform one\'s life. Key takeaways include the importance of establishing a disciplined routine, embracing solitude for clarity, and using the tranquility of the early morning for personal growth. This chapter encourages readers to reclaim their mornings, harnessing the power of the \'5AM club\' to unlock their maximum potential and achieve holistic success.', NULL, 0, 0, '2026-03-16 21:26:07.028', '2026-03-16 21:26:07.028'),
(21, 2, 9, 'Maintaining the Momentum', 'Chapter 9 of \"The 5AM Club\" by Robin Sharma, titled \"Maintaining the Momentum,\" builds upon the idea of personal mastery through early rising. The chapter underscores the importance of consistency in harnessing the tranquility of the early hours, between 5 a.m. and 6 a.m., to enhance productivity, health, and happiness. The key takeaway is that a habitual early rise instills discipline, which translates into sustained momentum towards personal and professional goals. The chapter encourages readers to persistently engage in this practice, even when the initial excitement wanes, and reinforces that the rewards of this routine are reaped over time. This chapter serves as a motivational guide reminding readers that the path to success requires continuous effort, and the practice of waking up early is a significant step in that journey. It persuasively communicates the chapter\'s core message: maintaining the momentum is crucial to leveraging the transformative power of the \"quiet hours.\"', NULL, 0, 0, '2026-03-16 21:26:07.032', '2026-03-16 21:26:07.032'),
(22, 2, 10, 'The 5AM Club in Action', 'Chapter 10, \"The 5AM Club in Action,\" in Robin Sharma\'s \"The 5AM Club,\" outlines the practical application of the book\'s core principle: utilizing the \"quiet hours\" of 5 a.m. to 6 a.m. for personal mastery. Sharma advocates starting the day early to increase productivity, enhance health, and boost happiness. He uses a narrative involving a billionaire, an artist, and an entrepreneur to illustrate this concept. This chapter conveys the transformative power of this early morning routine, transforming lives and careers. The key takeaway is the actionable step of committing to the 5AM Club. By adjusting one\'s daily schedule to embrace the quiet hours, individuals can tap into a level of focus and solitude that fosters creativity, strategic thinking, and personal growth. This is an essential read for anyone seeking effective strategies to elevate their personal and professional life.\n', NULL, 0, 0, '2026-03-16 21:26:07.037', '2026-03-16 21:26:07.037'),
(23, 2, 11, 'The Journey Ahead', 'Chapter 11 of \"The 5AM Club\" by Robin Sharma continues to unravel the life-changing benefits of waking up early. The chapter underscores the philosophy of using the \"quiet hours\" from 5 a.m. to 6 a.m., which is earmarked as the most tranquil and productive time of the day. Through the narrative of a billionaire mentor guiding an artist and entrepreneur, Sharma showcases how this practice enhances productivity, health, and overall happiness. The key takeaway is that this morning routine, devoid of distractions and stress, fosters personal growth and mastery. The chapter encourages readers to adopt this habit, implying that success and fulfillment are often the fruits of what is done in the early, still hours of dawn. This significant habit, according to Sharma, is a cornerstone for those seeking to make meaningful strides in their personal and professional lives.', NULL, 0, 0, '2026-03-16 21:26:07.043', '2026-03-16 21:26:07.043'),
(24, 2, 12, 'Conclusion', 'In Chapter 12 of \"The 5AM Club\" by Robin Sharma, the power of harnessing the \"quiet hours\" from 5 a.m. to 6 a.m. is emphasized. This chapter concludes the journey of the two mentees - an artist and an entrepreneur, who learn to master their personal and professional lives under the guidance of a billionaire mentor. Sharma proposes that using these early hours of the day for self-improvement activities can lead to enhanced productivity, health, and happiness. Key takeaways include the need for discipline and consistency in maintaining this early morning routine. Sharma encourages readers to prioritize this hour for personal development tasks like meditation, exercise, and strategic thinking. This chapter reinforces the book\'s core message that personal mastery and success can be achieved by disciplining oneself to rise early and utilize the quiet hours constructively.', NULL, 0, 0, '2026-03-16 21:26:07.048', '2026-03-16 21:26:07.048'),
(25, 3, 1, 'The Birth of a Survivor', 'Chapter 1, titled \"The Birth of a Survivor,\" of Eddie Jaku\'s \"The Happiest Man on Earth\" initiates the reader into the author\'s profound belief that life’s beauty lies in one\'s hands. Jaku, a Holocaust survivor, emphasizes the potential for happiness even in the harshest circumstances, using his own life as a testament to resilience and optimism. The chapter underscores the importance of individual perspective in shaping life experiences. Jaku\'s key concept is that we can form our joy by choosing to focus on and value the positives, despite life\'s challenges. He provides a tangible takeaway: the conscious effort to make our lives beautiful is a powerful tool for survival and happiness. This chapter serves as a compelling call to action, encouraging readers to take ownership of their happiness. It offers a valuable perspective shift, making it a source of inspiration for those seeking to cultivate positivity and resilience within their own lives.', NULL, 0, 0, '2026-04-03 11:13:49.344', '2026-04-03 11:13:49.344'),
(26, 3, 2, 'Shadows of the Swastika', 'In Chapter 2, \"Shadows of the Swastika,\" of Eddie Jaku\'s \"The Happiest Man on Earth,\" the author delves into the profound understanding that life\'s beauty is a choice. Despite the ominous presence of the Swastika shadowing his life, Jaku emphasizes the power of perspective and the ability to create one\'s own happiness. He underscores that even in the darkest of times, one can choose to find beauty and joy. The chapter serves as a testament to resilience and the human spirit\'s indomitable will, providing a profound lesson on survival and optimism. The key takeaway is the author\'s empowering belief that we own the pen that writes our life story. Despite external circumstances, we can still decide to paint our lives with the hues of happiness. This chapter encourages readers to harness this power, embody resilience, and choose to make life beautiful - an actionable insight that holds transformative potential.', NULL, 0, 0, '2026-04-03 11:13:49.351', '2026-04-03 11:13:49.351'),
(27, 3, 3, 'The Night of Broken Glass', 'In Chapter 3, \"The Night of Broken Glass,\" of Eddie Jaku\'s \"The Happiest Man on Earth,\" the author poignantly recounts his experiences during the horrific events of Kristallnacht. Jaku\'s perspective during these turbulent times underscores a central tenet of his philosophy - that life’s beauty is defined not by circumstances, but by personal reactions to them. Despite the horror, Jaku finds strength in the human spirit\'s resilience, encouraging readers to actively seek beauty amidst adversity. He underscores the importance of perspective and deliberate positivity, demonstrating that these are tools one can utilize to overcome hardship. This chapter serves as a powerful reminder of the human capacity for endurance and the transformative power of optimism. Jaku\'s story provides an actionable takeaway for readers: life is not merely about surviving adversity, but finding beauty and happiness within it. His philosophy is a testament to the power of maintaining a positive outlook even in the face of grave adversity.', NULL, 0, 0, '2026-04-03 11:13:49.355', '2026-04-03 11:13:49.355'),
(28, 3, 4, 'The Escape', 'Chapter 4 of \"The Happiest Man on Earth\" by Eddie Jaku, titled \"The Escape,\" emphasizes the power of perspective and personal will in the face of adversity. Jaku advocates for the notion that life\'s beauty is highly dependent on our personal outlook and the efforts we make to foster positivity. This chapter is a testament to resilience, as it details Jaku\'s daring escape, symbolizing his refusal to surrender to despair. The central takeaway from this chapter is the transformative power of optimism and positivity, even in dire circumstances. Jaku\'s story encourages readers to actively cultivate happiness in their lives, regardless of external circumstances. This chapter serves as a potent reminder that happiness is not merely a product of our environment but a choice that we consciously make. It emphasizes the importance of resilience, optimism, and the power of the human spirit to overcome adversity. This chapter inspires readers to take charge of their happiness and shape their perception of life.', NULL, 0, 0, '2026-04-03 11:13:49.360', '2026-04-03 11:13:49.360'),
(29, 3, 5, 'The Underground', 'Chapter 5 of \"The Happiest Man on Earth\" by Eddie Jaku, titled \"The Underground,\" serves as a poignant reminder of the profound power of perspective in shaping one\'s life experiences. Jaku, a Holocaust survivor, shares his philosophy that life\'s beauty is often dictated not by external circumstances, but by an individual\'s mindset. He imparts the actionable insight that maintaining a positive outlook, even in the face of adversity, can help one build a beautiful life. This chapter emphasizes the transformative power of optimism and the ability to find joy even in the midst of hardship. Readers are encouraged to embrace Jaku\'s philosophy, practice gratitude, and cultivate a positive mindset. In doing so, they can alter their perception of life\'s challenges and create a more fulfilling, joyful existence. Jaku\'s compelling narrative offers valuable life lessons and serves as an inspiring testament to the resilience of the human spirit.\n', NULL, 0, 0, '2026-04-03 11:13:49.368', '2026-04-03 11:13:49.368'),
(30, 3, 6, 'The Second Capture', 'In Chapter 6 of \"The Happiest Man on Earth\" by Eddie Jaku, we delve into the harrowing account of Eddie\'s second capture during World War II. This chapter serves as a profound reminder of the resilience of the human spirit, even in the face of intense adversity. Eddie\'s courage and determination are palpably felt as he navigates the precarious realities of his capture. The core message revolves around Eddie\'s philosophy that life can be beautiful if one chooses to make it so, even amidst despair. Key actionable insights derived include the power of maintaining a positive mindset and the ability to seek beauty in life, regardless of circumstances. These are encapsulated in Eddie\'s unwavering belief in the potency of hope and the strength of the human spirit. This chapter offers invaluable lessons on resilience, positivity, and the indomitable will to survive, providing readers with a deep understanding of the power of perspective.', NULL, 0, 0, '2026-04-03 11:13:49.373', '2026-04-03 11:13:49.373'),
(31, 3, 7, 'The Death March', 'Chapter 7 of \"The Happiest Man on Earth\" by Eddie Jaku, titled \"The Death March,\" explores the profound power of perspective and resilience during the most challenging circumstances. Jaku delves into his personal journey during a horrific death march, yet he maintains an inspiring, uplifting tone. He emphasizes that life\'s beauty is a subjective construct, contingent upon one\'s conscious effort to perceive it. Despite his harrowing experiences, Jaku chooses to view life as beautiful, a decision that fuels his survival and resilience. The chapter encourages readers to take an active role in shaping their life experience, using Jaku\'s narrative as a testament to the power of optimism. The actionable takeaway is the ability to maintain positivity and perseverance, even in dire circumstances. Jaku\'s message is one of hope, resilience, and the transformative power of a positive outlook - a compelling reminder that one can still find beauty amid the bleakest of scenarios.', NULL, 0, 0, '2026-04-03 11:13:49.378', '2026-04-03 11:13:49.378'),
(32, 3, 8, 'Freedom at Last', 'In Chapter 8, \"Freedom at Last,\" of Eddie Jaku\'s \"The Happiest Man on Earth,\" the author explores the concept that life\'s beauty is a result of one\'s perspective and efforts, not merely circumstance. Jaku, a Holocaust survivor, finds liberation not only in his physical release but also in his mental and emotional resilience. He argues that individuals have the power to shape their realities, turning hardships into lessons and promoting growth. This chapter emphasizes the importance of gratitude, optimism, and the conscious choice to create joy despite adversity. Jaku encourages readers to adopt a positive outlook, regardless of their situations, and to recognize the potential for happiness within their control. This chapter\'s core message is that personal freedom is not only about liberation from physical constraints but also entails liberation from negative mindsets. Jaku provides a compelling call to action for readers to actively create their own happiness and, in doing so, find their own version of freedom.', NULL, 0, 0, '2026-04-03 11:13:49.382', '2026-04-03 11:13:49.382'),
(33, 3, 9, 'Building a New Life', 'In Chapter 9 of \"The Happiest Man on Earth\" by Eddie Jaku, the narrative transitions into a hopeful phase as Eddie seeks to rebuild his life post-trauma. The chapter underscores the central theme that life\'s beauty is a construct of one\'s approach and perception. Eddie contends that the essence of life is not merely to survive, but to derive joy and meaning from our existence. Despite his harrowing experiences, he chooses optimism and resilience, demonstrating the profound power of human spirit. Key actionable insights include the imperative to actively shape one\'s life, utilizing past experiences as catalysts for growth rather than crutches of victimhood. Eddie\'s example is a testament to the importance of maintaining a positive outlook, even amidst adversity. This chapter serves as a powerful reminder that we have control over our life\'s narrative, and we can indeed make life beautiful, regardless of the circumstances that befall us.', NULL, 0, 0, '2026-04-03 11:13:49.387', '2026-04-03 11:13:49.387'),
(34, 3, 10, 'The Happiest Man on Earth', 'In Chapter 10 of \"The Happiest Man on Earth\" by Eddie Jaku, the author drives home the message that the beauty of life is a matter of perspective and conscious effort. Jaku advises readers to proactively mold their lives into beautiful experiences. The chapter\'s primary insight is the transformative power of perspective: how one interprets their circumstances can alter their emotional state and overall satisfaction with life. This chapter emphasizes the importance of optimism, gratitude, and a positive mindset, arguing that these traits can significantly enhance one\'s life experience. Jaku implores readers to actively seek out beauty in daily life and to cultivate a positive outlook as a way of enriching their existence. The actionable takeaway is the encouragement to intentionally shape your life through your perspective and attitudes, making it as beautiful as you wish it to be. This chapter is an inspiring call to conscious living and personal empowerment.', NULL, 0, 0, '2026-04-03 11:13:49.391', '2026-04-03 11:13:49.391'),
(35, 3, 11, 'The Legacy', 'In Chapter 11, \"The Legacy,\" of Eddie Jaku\'s \"The Happiest Man on Earth\", the author embodies resilience and positivity as he instills the profound concept that the beauty of life lies in our hands. Jaku emphasizes that we have the power to carve our destiny and construct a beautiful life amidst adversity. The chapter propounds the importance of self-determination, perseverance, and the relentless pursuit of happiness. Jaku\'s narrative urges readers to embrace life\'s hardships and convert them into stepping stones for success. This chapter provides actionable insight, advocating for a proactive approach to life; essentially, it encourages readers to become architects of their own happiness. It imparts valuable wisdom on the art of living a fulfilling life by nurturing a positive outlook, demonstrating resilience in the face of adversity, and consciously choosing to create beauty in life. The core message underscores the pivotal role of individual agency in shaping one\'s life and happiness.', NULL, 0, 0, '2026-04-03 11:13:49.395', '2026-04-03 11:13:49.395');

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `rating` int(11) NOT NULL,
  `review_title` varchar(191) DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `is_verified_purchase` tinyint(1) NOT NULL DEFAULT 0,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `helpful_count` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`id`, `book_id`, `user_id`, `rating`, `review_title`, `review_text`, `is_verified_purchase`, `is_approved`, `helpful_count`, `created_at`, `updated_at`) VALUES
(1, 2, '535d9b6b-1b47-4c6d-b36c-434c136c2ae1', 4, NULL, 'This book changed my life', 0, 1, 0, '2026-03-30 12:01:23.865', '2026-04-03 10:18:17.909');

-- --------------------------------------------------------

--
-- Table structure for table `book_summaries`
--

CREATE TABLE `book_summaries` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `main_summary` text DEFAULT NULL,
  `key_takeaways` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`key_takeaways`)),
  `full_summary` longtext DEFAULT NULL,
  `table_of_contents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`table_of_contents`)),
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_summaries`
--

INSERT INTO `book_summaries` (`id`, `book_id`, `main_summary`, `key_takeaways`, `full_summary`, `table_of_contents`, `created_at`, `updated_at`) VALUES
(1, 1, '1. Main Summary:\n\"Atomic Habits\" by James Clear is a transformative manual on how small, consistent habits can significantly shape one\'s life. The book\'s central idea is that substantial change doesn\'t come from grandiose goals or sweeping resolutions but from a series of minor improvements—aiming to be 1% better every day. It imparts a practical framework on creating good habits, eliminating detrimental ones, and establishing systems that simplify the journey to success. Clear emphasizes the importance of aligning these habits with the identity of the person one aspires to be, asserting that true and lasting change occurs when our actions mirror our ideal selves.\n\n2. Key Takeaways:\n   - Significant changes are a product of minor, daily improvements over time, not instant transformations.\n   - Build good habits and break bad ones by understanding the cycle of cue, craving, response, and reward.\n   - True change comes from changing your identity, not just your habits and routines.\n   - For habits to be sustainable, they must align with your self-image and the person you aspire to become.\n   - Success is not a one-time thing but a system, and creating the right system makes success easier and more achievable.\n   - Avoid the pitfall of perfectionism; aim for consistent, incremental improvements instead.\n   - Your environment plays a crucial role in shaping your habits, so design it in a way that supports your preferred habits.\n\n3. Target Audience:\n   This book is tailored for anyone interested in personal development, self-improvement, and productivity. It\'s perfect for individuals seeking to make meaningful changes in their lives through the formation of beneficial habits and routines.\n\n4. Main Themes:\n   The main themes of \"Atomic Habits\" include personal growth, habit formation, and the power of incremental change. The book also explores themes of identity, the role of systems in success, and the impact of environment on behavior.', NULL, NULL, '[{\"chapterNumber\":1,\"title\":\"The Fundamentals\",\"description\":\"Why tiny changes make a big difference\"},{\"chapterNumber\":2,\"title\":\"How Habits Work\",\"description\":\"The science behind how habits are formed and how they work\"},{\"chapterNumber\":3,\"title\":\"The 1% Rule\",\"description\":\"How small improvements add up over time\"},{\"chapterNumber\":4,\"title\":\"The Power of Habit Stacking\",\"description\":\"How to combine habits to get more done\"},{\"chapterNumber\":5,\"title\":\"The Role of Environment\",\"description\":\"How your environment influences your habits\"},{\"chapterNumber\":6,\"title\":\"The Secret to Self-Control\",\"description\":\"Strategies for mastering your habits\"},{\"chapterNumber\":7,\"title\":\"How to Make Good Habits Inevitable and Bad Habits Impossible\",\"description\":\"Practical tips for habit formation\"},{\"chapterNumber\":8,\"title\":\"The Goldilocks Rule\",\"description\":\"How to stay motivated by working on tasks that are \'just right\'\"},{\"chapterNumber\":9,\"title\":\"The Law of Least Effort\",\"description\":\"How to make habits easy and convenient\"},{\"chapterNumber\":10,\"title\":\"How to Stay Focused\",\"description\":\"Ways to avoid distractions and stay on track\"},{\"chapterNumber\":11,\"title\":\"The Truth About Talent\",\"description\":\"Why habits matter more than talent\"},{\"chapterNumber\":12,\"title\":\"The Downside of Creating Good Habits\",\"description\":\"Understanding the potential pitfalls of habits\"}]', '2026-03-15 11:58:46.493', '2026-03-15 11:58:46.493'),
(2, 2, 'Main Summary:\n\"The 5AM Club\" by Robin Sharma is a self-improvement book that advocates for the benefits of waking up early. The narrative unfolds through a billionaire mentoring an artist and an entrepreneur, using their journey to illustrate the transformative power of the early morning \'quiet hours.\' Sharma presents a compelling argument that rising at 5 a.m., before the day\'s distractions set in, can significantly enhance productivity, wellness, and overall satisfaction in life. The book posits that by dedicating the first hour of the day to personal growth activities like exercise, meditation, or learning, individuals can achieve superior mental clarity, physical health, and personal mastery. Sharma\'s philosophy is not just about waking up early, but about how to constructively use that time to set a positive tone for the rest of the day.\n\nKey Takeaways:\n- Rising at 5 a.m. can greatly enhance productivity and wellness.\n- The first hour of the day should be dedicated to personal growth activities.\n- Early morning \'quiet hours\' provide a distraction-free environment for focus and reflection.\n- Regular exercise, meditation, and continuous learning are essential for personal mastery.\n- The principles apply to anyone, regardless of their profession or lifestyle.\n- Consistency in following the 5 a.m. ritual is crucial for lasting transformation.\n- The book advocates for a holistic approach to life, linking physical health, mental clarity, and personal happiness.\n\nTarget Audience:\nThe book is geared towards anyone seeking personal growth and improvement, particularly those struggling with productivity and time management. It is especially beneficial for entrepreneurs, artists, professionals, and students who want to maximize their potential.\n\nMain Themes:\n- Personal Mastery\n- Productivity Enhancement\n- Wellness and Health\n- Time Management\n- Consistency and Habit Formation\n- Holistic approach to life\n', NULL, NULL, '[{\"chapterNumber\":1,\"title\":\"The Shock Begins\",\"description\":\"Introduction of the 5AM club concept through a chance encounter\"},{\"chapterNumber\":2,\"title\":\"The Method Explained\",\"description\":\"Explanation of the 20/20/20 formula and its potential benefits\"},{\"chapterNumber\":3,\"title\":\"The First Step\",\"description\":\"The journey of waking up early, starting from the first day\"},{\"chapterNumber\":4,\"title\":\"Embracing Change\",\"description\":\"The struggle and discomfort of adapting to a new routine\"},{\"chapterNumber\":5,\"title\":\"The Power of Habits\",\"description\":\"Understanding the role of habits in personal transformation\"},{\"chapterNumber\":6,\"title\":\"Overcoming Resistance\",\"description\":\"Strategies to overcome the internal resistance to change\"},{\"chapterNumber\":7,\"title\":\"The Power of Consistency\",\"description\":\"Exploring the importance of consistency in achieving long-term success\"},{\"chapterNumber\":8,\"title\":\"The Transformation\",\"description\":\"Observing the changes brought about by the 5AM routine\"},{\"chapterNumber\":9,\"title\":\"Maintaining the Momentum\",\"description\":\"Tips and tricks to sustain the early morning routine\"},{\"chapterNumber\":10,\"title\":\"The 5AM Club in Action\",\"description\":\"Real-life examples and case studies of successful implementation of the 5AM club principles\"},{\"chapterNumber\":11,\"title\":\"The Journey Ahead\",\"description\":\"Preparing for the journey ahead and the power of lifelong learning\"},{\"chapterNumber\":12,\"title\":\"Conclusion\",\"description\":\"Final thoughts and reflections on the transformative power of the 5AM club\"}]', '2026-03-16 21:26:06.978', '2026-03-16 21:26:06.978'),
(3, 3, '1. Main Summary:\n\"The Happiest Man on Earth\" by Eddie Jaku is a poignant memoir of a Holocaust survivor. The book unfolds Eddie\'s life journey, from the horrors of Auschwitz to his liberation and his efforts towards rebuilding his life. Remarkably, Eddie\'s story is not one of despair but of gratitude, resilience, and optimism. He teaches us that even amidst unimaginable adversity, one can choose happiness. Life, according to Eddie, is a gift that should not be taken for granted. He firmly believes that it\'s our responsibility to make our lives beautiful, regardless of circumstances. Eddie\'s philosophy is rooted in kindness, friendship, love, and understanding, which he claims are the secrets to a fulfilled life.\n\n2. Key Takeaways:\n   - Happiness is a choice, not a circumstance. \n   - Life can be beautiful if we choose to make it so.\n   - Kindness and understanding are critical to leading a fulfilled life.\n   - Each life is precious and should be treated as such.\n   - The power of resilience and optimism in overcoming adversity.\n   - Friendships are a vital part of life\'s happiness.\n   - Love is more potent than any adversity and can heal the deepest wounds.\n\n3. Target Audience:\nThis book is suitable for adults of all ages, particularly those interested in personal growth, history, and inspirational real-life stories. It\'s also beneficial for individuals seeking motivation and a fresh perspective on life.\n\n4. Main Themes:\nThe main themes of the book include resilience, optimism, gratitude, the power of love and friendship, the value of life, and the pursuit of happiness amidst adversity.', NULL, NULL, '[{\"chapterNumber\":1,\"title\":\"The Birth of a Survivor\",\"description\":\"Introduction of Eddie Jaku and his early life in Germany.\"},{\"chapterNumber\":2,\"title\":\"Shadows of the Swastika\",\"description\":\"Eddie\'s life dramatically changes with the rise of the Nazis.\"},{\"chapterNumber\":3,\"title\":\"The Night of Broken Glass\",\"description\":\"Eddie\'s experience during the Kristallnacht.\"},{\"chapterNumber\":4,\"title\":\"The Escape\",\"description\":\"Eddie\'s first escape from a concentration camp.\"},{\"chapterNumber\":5,\"title\":\"The Underground\",\"description\":\"Eddie\'s life in hiding and his encounters with the underground movement.\"},{\"chapterNumber\":6,\"title\":\"The Second Capture\",\"description\":\"Eddie\'s recapture and his life in Auschwitz.\"},{\"chapterNumber\":7,\"title\":\"The Death March\",\"description\":\"Eddie\'s experience during the deadly march from Auschwitz.\"},{\"chapterNumber\":8,\"title\":\"Freedom at Last\",\"description\":\"Eddie\'s liberation and his journey to recovery.\"},{\"chapterNumber\":9,\"title\":\"Building a New Life\",\"description\":\"Eddie\'s post-war life in Australia and his struggle to start anew.\"},{\"chapterNumber\":10,\"title\":\"The Happiest Man on Earth\",\"description\":\"Eddie\'s philosophy of life, gratitude and happiness.\"},{\"chapterNumber\":11,\"title\":\"The Legacy\",\"description\":\"Eddie\'s contributions to society and his lasting legacy.\"}]', '2026-04-03 11:13:49.334', '2026-04-03 11:13:49.334');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `icon`, `display_order`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Business & Finance', 'business-finance', 'Books about business, entrepreneurship, and finance', '💼', 1, 1, '2026-03-07 22:46:49.350', '2026-03-07 22:46:49.350'),
(2, 'Self-Help & Personal Development', 'self-help', 'Books about personal growth and self-improvement', '🌟', 2, 1, '2026-03-07 22:46:49.360', '2026-03-07 22:46:49.360'),
(3, 'Psychology & Mental Health', 'psychology', 'Books about psychology, mental health, and well-being', '🧠', 3, 1, '2026-03-07 22:46:49.364', '2026-03-07 22:46:49.364'),
(4, 'Science & Technology', 'science-technology', 'Books about science, technology, and innovation', '🔬', 4, 1, '2026-03-07 22:46:49.369', '2026-03-07 22:46:49.369'),
(5, 'History & Biography', 'history-biography', 'Books about historical events and notable people', '📜', 5, 1, '2026-03-07 22:46:49.372', '2026-03-07 22:46:49.372'),
(6, 'Health & Fitness', 'health-fitness', 'Books about health, fitness, and nutrition', '💪', 6, 1, '2026-03-07 22:46:49.376', '2026-03-07 22:46:49.376'),
(7, 'Philosophy & Religion', 'philosophy-religion', 'Books about philosophy, spirituality, and religion', '🌙', 7, 1, '2026-03-07 22:46:49.379', '2026-03-08 19:12:16.704'),
(8, 'Productivity & Time Management', 'productivity', 'Books about productivity, efficiency, and time management', '⏰', 8, 1, '2026-03-07 22:46:49.382', '2026-03-07 22:46:49.382'),
(9, 'Leadership & Management', 'leadership', 'Books about leadership, management, and team building', '👔', 9, 1, '2026-03-07 22:46:49.385', '2026-03-07 22:46:49.385'),
(10, 'Marketing & Sales', 'marketing-sales', 'Books about marketing, sales, and customer relations', '📈', 10, 1, '2026-03-07 22:46:49.389', '2026-03-07 22:46:49.389'),
(11, 'Communication & Social Skills', 'communication', 'Books about communication and interpersonal skills', '💬', 11, 1, '2026-03-07 22:46:49.392', '2026-03-07 22:46:49.392'),
(12, 'Creativity & Innovation', 'creativity', 'Books about creativity, innovation, and design thinking', '🎨', 12, 1, '2026-03-07 22:46:49.395', '2026-03-07 22:46:49.395');

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `stripe_payment_intent_id` varchar(191) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(191) NOT NULL DEFAULT 'USD',
  `payment_status` enum('PENDING','SUCCEEDED','FAILED','REFUNDED') NOT NULL,
  `plan_type` enum('MONTHLY','YEARLY','LIFETIME') NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_orders`
--

CREATE TABLE `subscription_orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `plan_type` enum('MONTHLY','YEARLY','LIFETIME') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(191) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(191) NOT NULL DEFAULT 'BANK_TRANSFER',
  `payment_proof_url` varchar(191) DEFAULT NULL,
  `transaction_reference` varchar(191) DEFAULT NULL,
  `order_status` enum('PENDING','APPROVED','REJECTED','CANCELLED') NOT NULL DEFAULT 'PENDING',
  `approved_by` varchar(191) DEFAULT NULL,
  `approved_at` datetime(3) DEFAULT NULL,
  `rejected_reason` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` int(11) NOT NULL,
  `plan_name` varchar(191) NOT NULL,
  `plan_type` enum('MONTHLY','YEARLY','LIFETIME') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`features`)),
  `stripe_price_id` varchar(191) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(191) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_type` enum('STRING','NUMBER','BOOLEAN','JSON') NOT NULL,
  `description` text DEFAULT NULL,
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password_hash` varchar(191) NOT NULL,
  `full_name` varchar(191) NOT NULL,
  `role` enum('USER','ADMIN') NOT NULL DEFAULT 'USER',
  `subscription_tier` enum('FREE','MONTHLY','YEARLY','LIFETIME') NOT NULL DEFAULT 'FREE',
  `subscription_status` enum('ACTIVE','INACTIVE','EXPIRED','CANCELLED') NOT NULL DEFAULT 'INACTIVE',
  `subscription_start_date` datetime(3) DEFAULT NULL,
  `subscription_end_date` datetime(3) DEFAULT NULL,
  `stripe_customer_id` varchar(191) DEFAULT NULL,
  `stripe_subscription_id` varchar(191) DEFAULT NULL,
  `audio_listen_time` int(11) NOT NULL DEFAULT 0,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `full_name`, `role`, `subscription_tier`, `subscription_status`, `subscription_start_date`, `subscription_end_date`, `stripe_customer_id`, `stripe_subscription_id`, `audio_listen_time`, `email_verified`, `created_at`, `updated_at`) VALUES
('4cfcf935-1328-4d27-9d1a-97b16bb34a52', 'admin@bookwise.com', '$2b$10$SiwJD8XY5wA1tJz9y1gmBuuMEwdO3cTBoH1beL9Tbrff6YbP2.e0y', 'Admin User', 'ADMIN', 'LIFETIME', 'ACTIVE', NULL, NULL, NULL, NULL, 0, 1, '2026-03-07 22:46:49.513', '2026-03-07 22:46:49.513'),
('535d9b6b-1b47-4c6d-b36c-434c136c2ae1', 'zuberi580@gmail.com', '$2b$10$12EvtHci5HIC8z9yFvQnO.l5jKmLr7dTagMRSFJD5BqCgaj86fjk2', 'Muhammad Ali Zuberi', 'USER', 'FREE', 'ACTIVE', NULL, NULL, NULL, NULL, 0, 0, '2026-03-06 10:23:18.191', '2026-03-06 10:23:18.191');

-- --------------------------------------------------------

--
-- Table structure for table `user_favorites`
--

CREATE TABLE `user_favorites` (
  `id` int(11) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `book_id` int(11) NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favorites`
--

INSERT INTO `user_favorites` (`id`, `user_id`, `book_id`, `created_at`) VALUES
(2, '535d9b6b-1b47-4c6d-b36c-434c136c2ae1', 2, '2026-03-29 19:59:39.145');

-- --------------------------------------------------------

--
-- Table structure for table `user_reading_history`
--

CREATE TABLE `user_reading_history` (
  `id` int(11) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `book_id` int(11) NOT NULL,
  `last_accessed` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `completion_percentage` int(11) NOT NULL DEFAULT 0,
  `audio_position` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_at` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_activity_logs_admin_id_idx` (`admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_key` (`slug`),
  ADD KEY `books_category_id_idx` (`category_id`),
  ADD KEY `books_created_by_idx` (`created_by`),
  ADD KEY `books_slug_idx` (`slug`);

--
-- Indexes for table `book_chapters`
--
ALTER TABLE `book_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_chapters_book_id_idx` (`book_id`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_reviews_book_id_user_id_key` (`book_id`,`user_id`),
  ADD KEY `book_reviews_book_id_idx` (`book_id`),
  ADD KEY `book_reviews_user_id_idx` (`user_id`);

--
-- Indexes for table `book_summaries`
--
ALTER TABLE `book_summaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_summaries_book_id_key` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_key` (`name`),
  ADD UNIQUE KEY `categories_slug_key` (`slug`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_transactions_user_id_idx` (`user_id`);

--
-- Indexes for table `subscription_orders`
--
ALTER TABLE `subscription_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_orders_user_id_idx` (`user_id`),
  ADD KEY `subscription_orders_order_status_idx` (`order_status`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_settings_setting_key_key` (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`);

--
-- Indexes for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favorites_user_id_book_id_key` (`user_id`,`book_id`),
  ADD KEY `user_favorites_user_id_idx` (`user_id`),
  ADD KEY `user_favorites_book_id_idx` (`book_id`);

--
-- Indexes for table `user_reading_history`
--
ALTER TABLE `user_reading_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_reading_history_user_id_book_id_key` (`user_id`,`book_id`),
  ADD KEY `user_reading_history_user_id_idx` (`user_id`),
  ADD KEY `user_reading_history_book_id_idx` (`book_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `book_chapters`
--
ALTER TABLE `book_chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `book_reviews`
--
ALTER TABLE `book_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_summaries`
--
ALTER TABLE `book_summaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_orders`
--
ALTER TABLE `subscription_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_favorites`
--
ALTER TABLE `user_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_reading_history`
--
ALTER TABLE `user_reading_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_activity_logs`
--
ALTER TABLE `admin_activity_logs`
  ADD CONSTRAINT `admin_activity_logs_admin_id_fkey` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_fkey` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `books_created_by_fkey` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `book_chapters`
--
ALTER TABLE `book_chapters`
  ADD CONSTRAINT `book_chapters_book_id_fkey` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD CONSTRAINT `book_reviews_book_id_fkey` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_reviews_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book_summaries`
--
ALTER TABLE `book_summaries`
  ADD CONSTRAINT `book_summaries_book_id_fkey` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `subscription_orders`
--
ALTER TABLE `subscription_orders`
  ADD CONSTRAINT `subscription_orders_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `user_favorites_book_id_fkey` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_favorites_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_reading_history`
--
ALTER TABLE `user_reading_history`
  ADD CONSTRAINT `user_reading_history_book_id_fkey` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_reading_history_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
