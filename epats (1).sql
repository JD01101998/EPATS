-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 26, 2020 at 12:54 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epats`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_email_id`, `admin_password`) VALUES
('tanaya.surve@somaiya.edu', 'tanu123');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Profession` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Organization` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`email_id`, `password`, `first_name`, `Profession`, `Organization`, `last_name`) VALUES
('jahanvi.dave@gmail.com', 'jahanvi', 'Jahanvi', 'student', 'K.J Somaiya Institute of Engineeing and I.T.', 'Dave'),
('jahanvi.dave@somaiya.edu', 'jahanvi', 'Jahanvi', 'Student', 'KJSIEIT', 'Dave'),
('khushboo.thakkar@somaiya.edu', 'khushboo', 'Khushboo', 'Student', 'KJSIEIT', 'Thakkar'),
('tanaya.surve@somaiya.edu', 'tanu', 'TANAYA', 'student', 'KJSIEIT', 'SURVE');

-- --------------------------------------------------------

--
-- Table structure for table `reading`
--

CREATE TABLE `reading` (
  `rid` int(50) NOT NULL,
  `para_content` longblob NOT NULL,
  `q1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `q2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `q3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `q4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `q5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `a5` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reading`
--

INSERT INTO `reading` (`rid`, `para_content`, `q1`, `q2`, `q3`, `q4`, `q5`, `a1`, `a2`, `a3`, `a4`, `a5`) VALUES
(1, 0x526563656e7420796561727320686176652062726f75676874206d696e6f726974792d6f776e6564200d0a627573696e657373657320696e2074686520556e697465642053746174657320756e707265636564656e746564200d0a6f70706f7274756e69746965732d61732077656c6c206173206e657720616e64207369676e69666963616e74207269736b732e0d0a436976696c20726967687473206163746976697374732068617665206c6f6e67206172677565642074686174206f6e65206f66200d0a2835292020746865207072696e636970616c20726561736f6e732077687920426c61636b732c2048697370616e6963732c20616e64200d0a6f74686572206d696e6f726974792067726f757073206861766520646966666963756c74792065737461626c697368696e670d0a7468656d73656c76657320696e20627573696e65737320697320746861742074686579206c61636b2061636365737320746f200d0a7468652073697a61626c65206f726465727320616e6420737562636f6e7472616374732074686174206172652067656e65722d0d0a61746564206279206c6172676520636f6d70616e6965732e204e6f7720436f6e67726573732c20696e2061707061722d0d0a2831302920656e742061677265656d656e742c20686173207265717569726564206279206c6177207468617420627573696e6573736573200d0a61776172646564206665646572616c20636f6e747261637473206f66206d6f7265207468616e20243530302c303030200d0a646f207468656972206265737420746f2066696e64206d696e6f7269747920737562636f6e74726163746f727320616e64200d0a7265636f7264207468656972206566666f72747320746f20646f20736f206f6e20666f726d732066696c6564207769746820746865200d0a676f7665726e6d656e742e20496e646565642c20736f6d65206665646572616c20616e64206c6f63616c206167656e2d0d0a283135292063696573206861766520676f6e6520736f2066617220617320746f207365742073706563696669632070657263656e74616765200d0a676f616c7320666f72206170706f7274696f6e696e67207061727473206f66207075626c696320776f726b7320636f6e2d0d0a74726163747320746f206d696e6f7269747920656e7465727072697365732e0d0a20202020202020436f72706f7261746520726573706f6e7365206170706561727320746f2068617665206265656e207375622d0d0a7374616e7469616c2e204163636f7264696e6720746f206669677572657320636f6c6c656374656420696e20313937372c200d0a283230292074686520746f74616c206f6620636f72706f7261746520636f6e7472616374732077697468206d696e6f7269747920627573692d0d0a6e657373657320726f73652066726f6d20243737206d696c6c696f6e20696e203139373220746f2024312e206c62696c6c696f6e0d0a696e20313937372e205468652070726f6a656374656420746f74616c206f6620636f72706f7261746520636f6e747261637473200d0a77697468206d696e6f7269747920627573696e657373657320666f7220746865206561726c792031393830e2809973206973200d0a657374696d6174656420746f206265206f7665722035332062696c6c696f6e2070657220796561722077697468206e6f200d0a28323529206c6574757020616e74696369706174656420696e20746865206e657874206465636164652e0d0a202050726f6d6973696e6720617320697420697320666f72206d696e6f7269747920627573696e65737365732c20746869730d0a696e6372656173656420706174726f6e61676520706f7365732064616e6765727320666f72207468656d2c20746f6f2e0d0a46697273742c206d696e6f72697479206669726d73207269736b20657870616e64696e6720746f6f206661737420616e64200d0a6f766572657874656e64696e67207468656d73656c7665732066696e616e6369616c6c792c2073696e6365206d6f73740d0a283330292061726520736d616c6c20636f6e6365726e7320616e642c20756e6c696b65206c6172676520627573696e65737365732c200d0a74686579206f6674656e206e65656420746f206d616b65207375627374616e7469616c20696e766573746d656e747320696e200d0a6e657720706c616e74732c2073746166662c2065717569706d656e742c20616e6420746865206c696b6520696e206f726465720d0a746f20706572666f726d20776f726b20737562636f6e7472616374656420746f207468656d2e2049662c2074686572652d0d0a61667465722c20746865697220737562636f6e7472616374732061726520666f7220736f6d6520726561736f6e200d0a2833352920726564756365642c2073756368206669726d732063616e206661636520706f74656e7469616c6c792063726970706c696e670d0a666978656420657870656e7365732e2054686520776f726c64206f6620636f72706f726174652070757263686173696e67200d0a63616e206265206672757374726174696e6720666f7220736d616c6c20656e7472657072656e657572732077686f20676574200d0a726571756573747320666f7220656c61626f7261746520666f726d616c20657374696d6174657320616e6420626964732e200d0a426f746820636f6e73756d652076616c7561626c652074696d6520616e64207265736f75726365732c20616e642061200d0a283430292020736d616c6c20636f6d70616e79e2809973206566666f727473206d75737420736f6f6e20726573756c7420696e200d0a6f72646572732c206f7220626f746820746865206d6f72616c6520616e64207468652066696e616e6369616c206865616c7468200d0a6f662074686520627573696e6573732077696c6c207375666665722e0d0a20202041207365636f6e64207269736b20697320746861742057686974652d6f776e656420636f6d70616e6965730d0a6d6179207365656b20746f206361736820696e206f6e2074686520696e6372656173696e67206170706f7274696f6e2d0d0a28343529206d656e7473207468726f75676820666f726d6174696f6e206f66206a6f696e742076656e74757265732077697468200d0a6d696e6f726974792d6f776e656420636f6e6365726e732e204f6620636f757273652c20696e206d616e79200d0a696e7374616e63657320746865726520617265206c65676974696d61746520726561736f6e7320666f72206a6f696e74200d0a76656e74757265733b20636c6561726c792c20576869746520616e64206d696e6f7269747920656e746572707269736573200d0a63616e207465616d20757020746f206163717569726520627573696e6573732074686174206e65697468657220636f756c64200d0a28353029206163717569726520616c6f6e652e2042757420636976696c207269676874732067726f75707320616e64206d696e6f72697479200d0a627573696e657373206f776e657273206861766520636f6d706c61696e656420746f20436f6e67726573732061626f7574200d0a6d696e6f726974696573206265696e672073657420757020617320e2809c66726f6e7473e2809d2077697468205768697465206261636b2d0d0a696e672c20726174686572207468616e206265696e672061636365707465642061732066756c6c20706172746e65727320696e200d0a6c65676974696d617465206a6f696e742076656e74757265732e0d0a2835352920202020202054686972642c2061206d696e6f7269747920656e74657270726973652074686174207365637572657320746865200d0a627573696e657373206f66206f6e65206c6172676520636f72706f7261746520637573746f6d6572206f6674656e2072756e0d0a7468652064616e676572206f66206265636f6d696e672d2d616e642072656d61696e696e67e28094646570656e64656e742e0d0a4576656e20696e207468652062657374206f662063697263756d7374616e6365732c2066696572636520636f6d70652d0d0a746974696f6e2066726f6d206c61726765722c206d6f72652065737461626c697368656420636f6d70616e6965730d0a28363029206d616b657320697420646966666963756c7420666f7220736d616c6c20636f6e6365726e7320746f2062726f6164656e200d0a746865697220637573746f6d65722062617365733a207768656e2073756368206669726d732068617665206e6561726c790d0a67756172616e74656564206f72646572732066726f6d20612073696e676c6520636f72706f726174652062656e652d0d0a666163746f722c2074686579206d6179207472756c79206861766520746f207374727567676c6520616761696e73740d0a636f6d706c6163656e63792061726973696e672066726f6d2074686569722063757272656e7420737563636573732e, 'The author implies that a minority-owned concern   that does the greater part of its business with one    large corporate customer should ', 'The primary purpose of the passage is to', ' The passage supplies information that would answer ', 'According to the passage, civil rights activists    maintain that one disadvantage under which    minority- owned businesses have traditionally had    to labor is that they have ', 'The passage suggests that the failure of a large    business to have its bids for subcontracts result    quickly in orders might cause it to', 'use its influence with the corporation to promote       subcontracting with other minority concerns', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reading_score`
--

CREATE TABLE `reading_score` (
  `rid` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `date_time` datetime NOT NULL,
  `marks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `speaking`
--

CREATE TABLE `speaking` (
  `sid` int(50) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `speaking`
--

INSERT INTO `speaking` (`sid`, `question`) VALUES
(1, 'Your degree requires that you should choose a history course. Which of the following courses would you prefer? (1) Art history (2) Twentieth-century world history (3) Science history\r\n'),
(2, 'You will need to accomplish an assignment for a presentation. Which one will you choose? (1) Act out a scene from a play (with a partner) (2) Explain your review of a novel you recently read (3) Read a selection of poem.\r\n'),
(3, 'If you are going to choose a roommate, which of the following qualities is the most important to you: (1) Cleanness (2) Friendliness (3) Quietness.\r\n'),
(4, 'Which of the following functions of smart phones most beneficial to students? (1) taking photos (2) listening to the music (3) recording lectures\r\n'),
(5, 'Three kinds of activities will be offered on a special day organized by the International Student office. Which one do you prefer? (1) International food fair (2) International music festival (3) International film festival.\r\n'),
(6, 'The university decides to remodel the dormitory and add a new space to it. Which space do you recommend to add to your dormitory? (1) Café (2) Study room (3) Game room.\r\n'),
(7, 'The university wants to provide students with more types of entertainment and three choices provided below. Which do you prefer and why. (1) A theater performance by the student actors (2) A concert provided by professional musician (3) A lecture from a p'),
(8, '0'),
(9, '0'),
(10, '0'),
(11, '0'),
(12, 'cgh'),
(13, '0'),
(14, '0'),
(15, '0'),
(16, '0'),
(17, 'fghfgh'),
(18, 'ghj'),
(19, 'ukg'),
(20, 'gncn'),
(21, '0'),
(22, '0'),
(23, '0'),
(24, '0'),
(25, '0'),
(26, '0'),
(27, '0'),
(28, '0'),
(29, '0'),
(30, '0'),
(31, '0'),
(32, '0'),
(33, '0'),
(34, '0'),
(35, '0');

-- --------------------------------------------------------

--
-- Table structure for table `speaking_score`
--

CREATE TABLE `speaking_score` (
  `sid` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `date_time` datetime NOT NULL,
  `marks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `speaking_score`
--

INSERT INTO `speaking_score` (`sid`, `user_id`, `date_time`, `marks`) VALUES
(18, 1, '2020-04-23 22:16:16', 0),
(12, 1, '2020-04-23 22:17:12', 0),
(19, 1, '2020-04-23 22:18:56', 0),
(20, 3, '2020-04-26 03:21:24', 93),
(19, 3, '2020-04-26 03:24:09', 93),
(17, 3, '2020-04-26 03:26:11', 93),
(17, 3, '2020-04-26 03:29:34', 0),
(17, 3, '2020-04-26 03:31:18', 93),
(17, 3, '2020-04-26 03:33:01', 0),
(17, 3, '2020-04-26 03:35:10', 93),
(17, 3, '2020-04-26 03:36:37', 93),
(18, 3, '2020-04-26 03:39:46', 93),
(16, 3, '2020-04-26 03:49:26', 93),
(16, 3, '2020-04-26 03:51:37', 93),
(16, 3, '2020-04-26 03:55:36', 93),
(16, 3, '2020-04-26 03:56:23', 0),
(16, 3, '2020-04-26 03:57:06', 0),
(16, 3, '2020-04-26 03:57:57', 0),
(16, 3, '2020-04-26 03:58:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(50) NOT NULL,
  `email_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `test_given` int(50) NOT NULL DEFAULT '0',
  `marks` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `email_id`, `name`, `test_given`, `marks`) VALUES
(1, 'tanaya.surve@somaiya.edu', 'Tanaya Surve', 0, 0),
(2, 'khushboo.thakkar@somaiya.edu', 'Khushboo Thakkar', 0, 0),
(3, 'jahanvi.dave@gmail.com', 'Jahanvi Dave', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `writing`
--

CREATE TABLE `writing` (
  `wid` int(50) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `writing`
--

INSERT INTO `writing` (`wid`, `question`) VALUES
(1, 'Some people think that young people should go to university to further their education while others think they should be encouraged to work as car mechanics or builders etc.to serve society. Discuss both views and give your own opinion.'),
(2, 'Some people believe that to give opportunities to the new generation companies should encourage high level employees who are older than 55 to retire. Do you agree or disagree?'),
(3, 'Nowadays celebrities earn more money than politicians. What are the reasons for this? Is it a positive or negative development?'),
(4, 'Many people believe that countries should produce food for the whole population and import as little food as possible. To what extent do you agree or disagree?'),
(5, 'Some people think that it is necessary to travel abroad to learn about other countries, but others think that it is not necessary to travel abroad because all the information can be seen on TV and the internet. Discuss both views and give your own opinion'),
(6, 'Why are some people who leave school early more successful compared with those who complete their studies. Provide reasons why they are more successful and what are the requirements for success?'),
(7, 'Countries with long average working hours are economically more successful than those countries which do not work long hours. To what extent do you agree or disagree?'),
(8, 'tan1'),
(9, 'tan2'),
(10, 'tan3'),
(11, 'tan4'),
(12, 'k1'),
(13, 'kj2'),
(14, 'k3'),
(15, 'k4'),
(16, 't1'),
(17, 't2'),
(18, 'y1'),
(19, 'y2'),
(20, 'y3'),
(21, 'y4'),
(22, 'a1'),
(23, 'a2'),
(24, 'a3'),
(25, 'a4'),
(26, 'a5'),
(27, 'a6'),
(28, 'a7'),
(29, 'a8'),
(30, 'a5'),
(31, 'a6'),
(32, 'b1'),
(33, 'b2'),
(34, 'b3'),
(35, 'b4');

-- --------------------------------------------------------

--
-- Table structure for table `writing_score`
--

CREATE TABLE `writing_score` (
  `wid` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `date_time` datetime NOT NULL,
  `marks` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `writing_score`
--

INSERT INTO `writing_score` (`wid`, `user_id`, `date_time`, `marks`) VALUES
(17, 1, '2020-04-23 22:23:03', 8),
(13, 1, '2020-04-23 22:23:06', 9),
(9, 1, '2020-04-23 22:23:09', 11),
(5, 1, '2020-04-23 22:23:12', 8),
(20, 3, '2020-04-26 01:35:12', 93),
(21, 3, '2020-04-26 01:35:23', 93),
(26, 3, '2020-04-26 01:35:53', 91);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_email_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `reading_score`
--
ALTER TABLE `reading_score`
  ADD KEY `rid` (`rid`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `speaking`
--
ALTER TABLE `speaking`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `speaking_score`
--
ALTER TABLE `speaking_score`
  ADD KEY `sid` (`sid`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Indexes for table `writing`
--
ALTER TABLE `writing`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `writing_score`
--
ALTER TABLE `writing_score`
  ADD KEY `wid` (`wid`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reading`
--
ALTER TABLE `reading`
  MODIFY `rid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `speaking`
--
ALTER TABLE `speaking`
  MODIFY `sid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `writing`
--
ALTER TABLE `writing`
  MODIFY `wid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reading_score`
--
ALTER TABLE `reading_score`
  ADD CONSTRAINT `reading_score_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `reading` (`rid`),
  ADD CONSTRAINT `reading_score_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);

--
-- Constraints for table `speaking_score`
--
ALTER TABLE `speaking_score`
  ADD CONSTRAINT `speaking_score_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `speaking` (`sid`),
  ADD CONSTRAINT `speaking_score_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`email_id`) REFERENCES `login_details` (`email_id`);

--
-- Constraints for table `writing_score`
--
ALTER TABLE `writing_score`
  ADD CONSTRAINT `writing_score_ibfk_1` FOREIGN KEY (`wid`) REFERENCES `writing` (`wid`),
  ADD CONSTRAINT `writing_score_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_details` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
