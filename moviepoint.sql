-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2021 at 04:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviepoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `picture` text NOT NULL,
  `role` enum('super_admin','movie_manager') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `role`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$BqCGHI7Tr1nWxX5p.4RleeKPshxUv6WFpf25fWZCkyClA.N6TVjTm', '', 'super_admin'),
(3, 'Ali', 'ali@gmail.com', '$2y$10$M6G.EFk7dRgmQ1P4On7LV.VCdUsTWPzkL/B9fPCmqLHaNogzga33W', '', 'movie_manager');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(3, 'Action'),
(6, 'Fantasy'),
(7, 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `celebrities`
--

CREATE TABLE `celebrities` (
  `id` int(11) NOT NULL,
  `name` text,
  `picture` text,
  `description` text,
  `height` text,
  `weight` text,
  `eye_color` text,
  `hair_color` text,
  `birthday` date DEFAULT NULL,
  `facebook` text,
  `twitter` text,
  `youtube` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `celebrities`
--

INSERT INTO `celebrities` (`id`, `name`, `picture`, `description`, `height`, `weight`, `eye_color`, `hair_color`, `birthday`, `facebook`, `twitter`, `youtube`) VALUES
(4, 'Robert Pattinson', 'uploads/celebrities/1598544397-MV5BNzk0MDQ5OTUxMV5BMl5BanBnXkFtZTcwMDM5ODk5Mg@@._V1_UY317_CR12,0,214,317_AL_.jpg', '', '6.0', '75 kg', 'Blue', 'Golden Brown', '1986-05-13', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(5, 'Mark Ruffalo', 'uploads/celebrities/1598545220-MV5BNDQyNzMzZTMtYjlkNS00YzFhLWFhMTctY2M4YmQ1NmRhODBkXkEyXkFqcGdeQXVyNjcyNzgyOTE@._V1_UY317_CR20,0,214,317_AL_.jpg', '', '5.8', '72 kg', 'Dark Brown', 'Black', '1967-11-22', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(6, 'Chris Evans', 'uploads/celebrities/1598545236-MV5BMTU2NTg1OTQzMF5BMl5BanBnXkFtZTcwNjIyMjkyMg@@._V1_UY317_CR6,0,214,317_AL_.jpg', '', '6.0', '88 kg', 'Blue', 'Light Brown', '1981-06-13', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(7, 'Robert Downey Jr.', 'uploads/celebrities/1598545248-MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_UX214_CR0,0,214,317_AL_.jpg', '', '5.8', '78 kg', 'Dark Brown', 'Dark Brown', '1965-04-04', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(8, 'Margot Robbie', 'uploads/celebrities/1598554735-MV5BMTgxNDcwMzU2Nl5BMl5BanBnXkFtZTcwNDc4NzkzOQ@@._V1_UY317_CR12,0,214,317_AL_.jpg', '', '5.6', '57 kg', 'Blue', 'Blonde', '1990-07-02', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(9, 'Leonardo DiCaprio', 'uploads/celebrities/1598554749-MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_UY317_CR10,0,214,317_AL_.jpg', '', '6.0', '75 kg', 'Blue', 'Blond', '1974-11-11', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(10, 'Brad Pitt', 'uploads/celebrities/1598554765-MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg', '', '5.11', '78 kg', 'Blue', 'Blonde', '1963-12-18', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(11, 'Benedict Cumberbatch', 'uploads/celebrities/1598556304-MV5BMjE0MDkzMDQwOF5BMl5BanBnXkFtZTgwOTE1Mjg1MzE@._V1_UY317_CR2,0,214,317_AL_.jpg', 'Benedict Timothy Carlton Cumberbatch was born and raised in London, England. His parents, Wanda Ventham and Timothy Carlton (born Timothy Carlton Congdon Cumberbatch), are both actors. He is a grandson of submarine commander Henry Carlton Cumberbatch, and a great-grandson of diplomat Henry Arnold Cumberbatch CMG. Cumberbatch attended Brambletye', '6.0', '79 kg', 'Black', 'Black', '1976-07-19', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(12, 'Samuel L. Jackson', 'uploads/celebrities/1598558793-MV5BMTQ1NTQwMTYxNl5BMl5BanBnXkFtZTYwMjA1MzY1._V1_UX214_CR0,0,214,317_AL_.jpg', 'Samuel L. Jackson is an American producer and highly prolific actor, having appeared in over 100 films, including Die Hard: With a Vengeance (1995), Unbreakable (2000), Shaft (2000), The 51st State (2001), Black Snake Moan (2006), Snakes on a Plane (2006), and the Star Wars prequel trilogy (1999-2005), as well as the Marvel Cinematic Universe.', '6.2', '83 kg', 'Black', 'Bald', '1948-12-21', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565'),
(13, 'Brie Larson', 'uploads/celebrities/1598558810-MV5BMjExODkxODU3NF5BMl5BanBnXkFtZTgwNTM0MTk3NjE@._V1_UY317_CR7,0,214,317_AL_.jpg', 'Brie Larson has built an impressive career as an acclaimed television actress, rising feature film star and emerging recording artist. A native of Sacramento, Brie started studying drama at the early age of 6, as the youngest student ever to attend the American Conservatory Theater in San Francisco. She starred in one of Disney Channel\'s most ', '5.7', '59 kg', 'Black', 'Blond', '1989-10-01', 'https://web.facebook.com/ComputerProgrammingTutorial', 'https://twitter.com/adnanafzal565', 'https://youtube.com/c/AdnanAfzal565');

-- --------------------------------------------------------

--
-- Table structure for table `cinemas`
--

CREATE TABLE `cinemas` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cinemas`
--

INSERT INTO `cinemas` (`id`, `name`) VALUES
(2, 'iMax'),
(3, 'Cantt');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text,
  `email` text,
  `phone` text,
  `message` text,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `phone`, `message`, `movie_id`) VALUES
(1, 'Adnan Afzal', 'adnanafzal565@gmail.com', '03156041304', 'very nice', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_codes`
--

CREATE TABLE `coupon_codes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `coupon_code` text NOT NULL,
  `discount` double NOT NULL,
  `valid_till` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` text,
  `description` text,
  `writer` text,
  `director` text,
  `duration` text,
  `release_date` datetime DEFAULT NULL,
  `languages` text,
  `price_per_ticket` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `writer`, `director`, `duration`, `release_date`, `languages`, `price_per_ticket`, `created_by`) VALUES
(1, 'test', 'test', 'Anna Boden', 'Anthony Russo', '1h30m', '2021-05-20 00:00:00', 'English', 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cast`
--

CREATE TABLE `movie_cast` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_cast`
--

INSERT INTO `movie_cast` (`id`, `movie_id`, `cast_id`) VALUES
(1, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `movie_categories`
--

CREATE TABLE `movie_categories` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_categories`
--

INSERT INTO `movie_categories` (`id`, `movie_id`, `category_id`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cinemas`
--

CREATE TABLE `movie_cinemas` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `movie_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_cinemas`
--

INSERT INTO `movie_cinemas` (`id`, `movie_id`, `cinema_id`, `is_deleted`, `movie_time`) VALUES
(1, 1, 2, 0, '2021-05-31 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `movie_ratings`
--

CREATE TABLE `movie_ratings` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ratings` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movie_thumbnails`
--

CREATE TABLE `movie_thumbnails` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `file_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movie_thumbnails`
--

INSERT INTO `movie_thumbnails` (`id`, `movie_id`, `file_path`) VALUES
(1, 1, 'uploads/movie_thumbnails/1620802843-Screenshot 2021-05-09 at 12.50.07 AM.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `coupon_code_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `payment_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sponsors` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `season_episodes`
--

CREATE TABLE `season_episodes` (
  `id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `duration` text NOT NULL,
  `poster` text NOT NULL,
  `video` text NOT NULL,
  `celebrities` text NOT NULL,
  `imdb_ratings` double NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'adnan1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cinema_id` int(11) NOT NULL,
  `ticket_location` text NOT NULL,
  `movie_time` datetime NOT NULL,
  `movie_cinema_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trailers`
--

CREATE TABLE `trailers` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `file_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trailers`
--

INSERT INTO `trailers` (`id`, `movie_id`, `file_path`) VALUES
(1, 1, 'uploads/movie_trailers/1620802843-52523442_947421082677521_2041928397016878390_n.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `mobile_number` text NOT NULL,
  `verification_code` text NOT NULL,
  `verified_at` datetime DEFAULT NULL,
  `reset_password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile_number`, `verification_code`, `verified_at`, `reset_password`) VALUES
(7, 'Adnan Afzal', 'adnan@gmail.com', '$2y$10$HUi/noe1BHjR967b3t08junj5Kl0ZJ6VisGUYhtMAOyKc//GJvinC', '1233', '183898', '2020-08-27 00:48:47', 'd882a17502cdc2bdf4848e6a553d18e4'),
(8, 'Ali', 'ali@gmail.com', '$2y$10$fs2vVOunF7VEddTqvzH5JOPCbe/gTo9RyhgY53iN4kL27FGxy13PC', '123456', '952753', '2020-08-29 11:03:19', NULL),
(9, 'Ahmad', 'ahmad@gmail.com', '$2y$10$yeVfM3yz.jSQYIe3gO20ZeY2nt6cLxKTl4EWS9KyFStOg5waNe2DS', '123456', '316037', '2020-08-29 11:03:51', NULL),
(10, 'Yasir', 'yasir@gmail.com', '$2y$10$7gWks2rF/99/Esc1YqbLDOI1kzPQN71A31UAnU4j3.tfKS4DcsZAW', '123456', '302568', '2020-08-29 11:05:19', NULL),
(11, 'Jinnah', 'jinnah@gmail.com', '$2y$10$uolwHENemBrUhkIPogymT.ZaziF5klBPe7FWwF9O0d3c8hdNaDZoG', '1234567', '250193', '2020-08-29 11:05:17', NULL),
(12, 'Adnan', 'adnanafzal565@gmail.com', '$2y$10$xe2gqMvJG2WSqQToeOZPueSTi7OYV.d0HD8lb1JuD/1xHuy.vRCcC', '12345', '206111', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `celebrities`
--
ALTER TABLE `celebrities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_movie_id` (`movie_id`);

--
-- Indexes for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_ibfk_1` (`created_by`);

--
-- Indexes for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_cast_cast_id` (`cast_id`),
  ADD KEY `movie_cast_movie_id` (`movie_id`);

--
-- Indexes for table `movie_categories`
--
ALTER TABLE `movie_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_categories_category_id` (`category_id`),
  ADD KEY `fk_movie_categories_movie_id` (`movie_id`);

--
-- Indexes for table `movie_cinemas`
--
ALTER TABLE `movie_cinemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_cinemas_cinema_id` (`cinema_id`),
  ADD KEY `fk_movie_cinemas_movie_id` (`movie_id`);

--
-- Indexes for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_ratings_movie_id` (`movie_id`),
  ADD KEY `movie_ratings_user_id` (`user_id`);

--
-- Indexes for table `movie_thumbnails`
--
ALTER TABLE `movie_thumbnails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_thumbnails_movie_id` (`movie_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `season_episodes`
--
ALTER TABLE `season_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_season_id` (`season_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_cinema_id` (`movie_cinema_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `cinema_id` (`cinema_id`);

--
-- Indexes for table `trailers`
--
ALTER TABLE `trailers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_trailers_movie_id` (`movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `celebrities`
--
ALTER TABLE `celebrities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cinemas`
--
ALTER TABLE `cinemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_cast`
--
ALTER TABLE `movie_cast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_categories`
--
ALTER TABLE `movie_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_cinemas`
--
ALTER TABLE `movie_cinemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_thumbnails`
--
ALTER TABLE `movie_thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `season_episodes`
--
ALTER TABLE `season_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trailers`
--
ALTER TABLE `trailers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_codes`
--
ALTER TABLE `coupon_codes`
  ADD CONSTRAINT `coupon_codes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_codes_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_cast_id` FOREIGN KEY (`cast_id`) REFERENCES `celebrities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_cast_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_categories`
--
ALTER TABLE `movie_categories`
  ADD CONSTRAINT `fk_movie_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_movie_categories_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_cinemas`
--
ALTER TABLE `movie_cinemas`
  ADD CONSTRAINT `fk_movie_cinemas_cinema_id` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_movie_cinemas_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_ratings`
--
ALTER TABLE `movie_ratings`
  ADD CONSTRAINT `movie_ratings_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_ratings_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_thumbnails`
--
ALTER TABLE `movie_thumbnails`
  ADD CONSTRAINT `fk_movie_thumbnails_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `season_episodes`
--
ALTER TABLE `season_episodes`
  ADD CONSTRAINT `fk_season_id` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`movie_cinema_id`) REFERENCES `movie_cinemas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tickets_ibfk_5` FOREIGN KEY (`cinema_id`) REFERENCES `cinemas` (`id`);

--
-- Constraints for table `trailers`
--
ALTER TABLE `trailers`
  ADD CONSTRAINT `fk_trailers_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
