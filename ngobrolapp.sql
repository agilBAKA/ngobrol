-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 06:41 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngobrolapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(100) NOT NULL,
  `to` text NOT NULL,
  `from` text NOT NULL,
  `msg` text NOT NULL,
  `status` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=522 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `to`, `from`, `msg`, `status`, `time`) VALUES
(451, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'hello\r\n', '0', '2017-03-21 08:15:59'),
(452, 'agil@tlab.co.id', 'devi.krisdiansyah@gmail.com', 'aku disini\r\n', '0', '2017-03-21 08:16:14'),
(453, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'disana\r\n', '0', '2017-03-21 08:16:17'),
(454, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'Hai Gil\r\n', '1', '2017-03-21 08:23:16'),
(455, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'Eh Dev\r\n', '1', '2017-03-21 08:23:26'),
(456, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'heheh\r\n', '1', '2017-03-21 08:23:28'),
(457, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'harus ada ada scroll disini\r\n', '1', '2017-03-21 08:23:53'),
(458, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'kalo nggak jadi aneh\r\n', '1', '2017-03-21 08:23:59'),
(459, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'hello\r\n', '1', '2017-03-21 08:37:48'),
(460, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'it''s me\r\n', '1', '2017-03-21 08:37:51'),
(461, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'I was wondering\r\n', '1', '2017-03-21 08:37:55'),
(462, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'all you give to me is an fake\r\n', '1', '2017-03-21 08:38:07'),
(463, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'Hahahah seriously?\r\n', '1', '2017-03-21 08:39:49'),
(464, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'hei Gil\r\n', '1', '2017-03-21 08:43:15'),
(465, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'Apa kabs?\r\n', '1', '2017-03-21 08:43:19'),
(466, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'are you okey?\r\n', '1', '2017-03-21 08:43:25'),
(467, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'haha\r\n', '1', '2017-03-21 08:43:36'),
(468, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'kok gini yah\r\n', '1', '2017-03-21 08:43:43'),
(469, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'gini gimana?\r\n', '1', '2017-03-21 08:43:49'),
(470, 'devi.krisdiansyah@gmail.com', 'agil@tlab.co.id', 'nah, PR Lagi hahaaha\r\n', '1', '2017-03-21 08:50:53'),
(471, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'hahahah\r\n', '1', '2017-03-21 09:56:53'),
(472, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'Siaaap Bro\r\n', '1', '2017-03-21 09:56:57'),
(473, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'Muffin donut apple pie dragÃ©e gummi bears. Pudding jelly beans jelly tart pie cupcake sweet chocolate bar. Pudding dragÃ©e toffee chupa chups chocolate. Tart topping gingerbread cake.\r\n', '1', '2017-03-21 09:57:23'),
(474, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(475, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(476, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(477, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(478, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(479, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(480, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(481, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(482, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(483, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(484, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(485, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(486, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(487, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(488, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(489, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(490, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(491, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(492, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(493, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(494, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(495, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(496, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(497, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(498, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(499, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'ssssssssssssssssss', '1', '2017-03-21 09:58:19'),
(500, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'sssssss', '1', '2017-03-21 09:58:28'),
(501, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'sssssss', '1', '2017-03-21 09:58:28'),
(502, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'sssssss', '1', '2017-03-21 09:58:28'),
(503, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'aaa', '1', '2017-03-21 09:59:45'),
(504, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'sadasd', '1', '2017-03-21 09:59:49'),
(505, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'asdasdasd', '1', '2017-03-21 09:59:51'),
(506, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'asdasdasd', '1', '2017-03-21 09:59:52'),
(507, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'asdasd', '1', '2017-03-21 09:59:54'),
(508, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'sadasdasd', '1', '2017-03-21 09:59:55'),
(509, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'aaaaaaaaaaaaaa\r\n', '1', '2017-03-21 10:00:42'),
(510, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'Hello\r\n', '1', '2017-03-21 10:00:48'),
(511, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'It''s me\r\n', '1', '2017-03-21 10:00:54'),
(512, 'kygiq@hotmail.com', 'munyn@hotmail.com', 'hahaha\r\n', '1', '2017-03-21 10:02:32'),
(513, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'Testing dari sini\r\n', '1', '2017-03-21 10:03:20'),
(514, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'Are you ready to rock ?\r\n', '1', '2017-03-21 10:04:20'),
(515, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'terus kenapa nih\r\n', '1', '2017-03-21 10:04:28'),
(516, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'masalah scroll\r\n', '1', '2017-03-21 10:04:31'),
(517, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'hahah\r\n', '1', '2017-03-21 10:10:43'),
(518, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'Send the message', '1', '2017-03-21 10:11:37'),
(519, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'aaaa', '1', '2017-03-21 10:15:39'),
(520, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'aaaa', '1', '2017-03-21 10:16:40'),
(521, 'vubige@yahoo.com', 'lywaxoqaki@hotmail.com', 'aaaa\r\n', '1', '2017-03-21 10:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'agilbaka', 'agil@tlab.co.id', '123456'),
(2, 'bakabaka', 'devi.krisdiansyah@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=522;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
