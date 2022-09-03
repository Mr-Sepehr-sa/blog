-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2022 at 09:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'news', '2022-08-31 12:22:00', '2022-08-31 14:11:22'),
(2, 'sport', '2022-08-31 12:22:00', '2022-08-31 12:22:00'),
(3, 'culture', '2022-08-31 12:43:08', NULL),
(11, 'other', '2022-09-01 08:47:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `image` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `cat_id`, `status`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Post 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui ut ornare lectus sit amet est. Faucibus purus in massa tempor nec feugiat nisl. Amet est placerat in egestas erat. Id aliquet risus feugiat in. Bibendum neque egestas congue quisque. Odio pellentesque diam volutpat commodo sed egestas egestas. Venenatis cras sed felis eget velit aliquet sagittis. Egestas purus viverra accumsan in nisl nisi scelerisque eu. Id diam vel quam elementum pulvinar etiam non quam. Platea dictumst quisque sagittis purus sit. In est ante in nibh mauris cursus mattis molestie a.\r\n\r\nPretium fusce id velit ut tortor pretium. Enim diam vulputate ut pharetra sit. Eget magna fermentum iaculis eu. Non tellus orci ac auctor augue mauris augue neque gravida. Scelerisque purus semper eget duis at tellus at. Neque viverra justo nec ultrices dui sapien. Interdum posuere lorem ipsum dolor sit amet consectetur. Urna condimentum mattis pellentesque id nibh tortor id. Ultricies integer quis auctor elit sed vulputate mi. Nibh tortor id aliquet lectus proin nibh nisl condimentum. Donec adipiscing tristique risus nec feugiat in fermentum posuere urna. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin. Scelerisque eu ultrices vitae auctor eu augue ut lectus. Integer eget aliquet nibh praesent tristique. Interdum velit euismod in pellentesque. Cursus metus aliquam eleifend mi. Nulla porttitor massa id neque aliquam vestibulum morbi.\r\n\r\nMauris augue neque gravida in fermentum et sollicitudin ac. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus. Nulla at volutpat diam ut. Diam ut venenatis tellus in metus. Risus quis varius quam quisque. Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Nisl condimentum id venenatis a. Adipiscing at in tellus integer feugiat. Ultrices vitae auctor eu augue. Eu turpis egestas pretium aenean pharetra.\r\n\r\nUt morbi tincidunt augue interdum. Aliquet nec ullamcorper sit amet risus. Orci eu lobortis elementum nibh tellus molestie nunc non. Pulvinar etiam non quam lacus suspendisse faucibus interdum. Mollis aliquam ut porttitor leo. Vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat. Vel turpis nunc eget lorem. Sed felis eget velit aliquet. Sed id semper risus in hendrerit. Quam pellentesque nec nam aliquam. Quam vulputate dignissim suspendisse in est ante in. Adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Ut lectus arcu bibendum at varius vel. Blandit massa enim nec dui nunc mattis enim ut tellus. Nulla facilisi etiam dignissim diam quis. Et tortor at risus viverra adipiscing at. Mollis aliquam ut porttitor leo a diam. Semper viverra nam libero justo. Nec tincidunt praesent semper feugiat nibh sed. Quis imperdiet massa tincidunt nunc pulvinar.\r\n\r\nInterdum consectetur libero id faucibus nisl tincidunt eget nullam non. Nibh ipsum consequat nisl vel pretium. Malesuada fames ac turpis egestas integer eget aliquet. Rhoncus mattis rhoncus urna neque. Molestie a iaculis at erat. Duis tristique sollicitudin nibh sit. Ac ut consequat semper viverra. Mattis enim ut tellus elementum sagittis vitae et. Pellentesque dignissim enim sit amet venenatis urna cursus eget nunc. Amet nulla facilisi morbi tempus iaculis urna id. Duis at tellus at urna condimentum mattis pellentesque. Eget mi proin sed libero. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Pellentesque elit eget gravida cum sociis. Sed euismod nisi porta lorem mollis. Nam aliquam sem et tortor consequat id porta nibh venenatis. Vestibulum morbi blandit cursus risus. A erat nam at lectus. Vulputate enim nulla aliquet porttitor. Aliquam malesuada bibendum arcu vitae elementum.', 1, 1, '/assets/images/posts/2022_09_01_08_08_39.jpg', '2022-09-01 10:38:39', NULL),
(4, 'Post 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Auctor eu augue ut lectus. Eu mi bibendum neque egestas congue quisque egestas diam. Lectus proin nibh nisl condimentum id venenatis. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Nascetur ridiculus mus mauris vitae ultricies. Eros donec ac odio tempor. Amet volutpat consequat mauris nunc congue nisi vitae. Tincidunt eget nullam non nisi est sit. Tristique senectus et netus et malesuada.\r\n\r\nRisus quis varius quam quisque id diam vel quam elementum. Nunc faucibus a pellentesque sit amet porttitor. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Nec dui nunc mattis enim ut tellus elementum. Vitae congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque. Enim nunc faucibus a pellentesque sit amet porttitor eget dolor. Adipiscing bibendum est ultricies integer quis auctor elit sed vulputate. Semper eget duis at tellus at urna. Quam viverra orci sagittis eu. Arcu dui vivamus arcu felis bibendum ut tristique et. Consectetur libero id faucibus nisl tincidunt eget nullam non nisi. Commodo ullamcorper a lacus vestibulum sed arcu. Nunc sed id semper risus. Sociis natoque penatibus et magnis dis. Sit amet consectetur adipiscing elit pellentesque. Morbi tristique senectus et netus. Aenean pharetra magna ac placerat vestibulum lectus mauris. Et magnis dis parturient montes nascetur ridiculus mus mauris vitae. Purus in mollis nunc sed id semper risus.\r\n\r\nPurus in mollis nunc sed id semper risus. Vitae elementum curabitur vitae nunc sed. Massa tincidunt dui ut ornare lectus sit amet est placerat. Dictum at tempor commodo ullamcorper a lacus. Elit ut aliquam purus sit amet. Viverra ipsum nunc aliquet bibendum enim facilisis. Lacus luctus accumsan tortor posuere ac. Porttitor massa id neque aliquam vestibulum morbi blandit. Gravida in fermentum et sollicitudin ac orci phasellus. Euismod lacinia at quis risus. Sed arcu non odio euismod lacinia at. Habitasse platea dictumst vestibulum rhoncus est pellentesque. Id volutpat lacus laoreet non curabitur.\r\n\r\nFaucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper. Cursus in hac habitasse platea dictumst quisque sagittis purus sit. Ullamcorper eget nulla facilisi etiam dignissim diam. Aenean pharetra magna ac placerat vestibulum lectus. Bibendum arcu vitae elementum curabitur vitae nunc sed. Purus sit amet volutpat consequat mauris. Sociis natoque penatibus et magnis dis parturient. Cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris. Arcu cursus euismod quis viverra nibh cras pulvinar mattis. Aliquam sem et tortor consequat id porta nibh venenatis cras. Pellentesque adipiscing commodo elit at imperdiet. Habitant morbi tristique senectus et netus et malesuada fames ac. In nulla posuere sollicitudin aliquam ultrices sagittis. Facilisis magna etiam tempor orci eu lobortis elementum nibh tellus. Arcu risus quis varius quam quisque id diam vel. Vitae justo eget magna fermentum iaculis eu non. Vivamus at augue eget arcu dictum varius. Aliquet sagittis id consectetur purus ut. Elementum tempus egestas sed sed risus. Nam libero justo laoreet sit amet cursus sit amet dictum.\r\n\r\nConvallis a cras semper auctor neque vitae. Sed libero enim sed faucibus turpis in. Nulla pellentesque dignissim enim sit amet venenatis urna cursus eget. At urna condimentum mattis pellentesque id nibh. Id aliquet risus feugiat in ante metus dictum at. Amet tellus cras adipiscing enim eu turpis egestas pretium. Sed sed risus pretium quam vulputate dignissim. Viverra ipsum nunc aliquet bibendum enim facilisis. Tincidunt tortor aliquam nulla facilisi cras fermentum odio eu. Consequat id porta nibh venenatis cras sed. Pretium lectus quam id leo in vitae. Aliquam nulla facilisi cras fermentum odio eu feugiat. Enim praesent elementum facilisis leo vel. Scelerisque varius morbi enim nunc faucibus a pellentesque. Viverra mauris in aliquam sem fringilla ut morbi.\r\n\r\nOrci porta non pulvinar neque laoreet. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Mauris in aliquam sem fringilla ut morbi tincidunt augue. Vel pharetra vel turpis nunc eget. Sed euismod nisi porta lorem mollis aliquam ut porttitor. Eu feugiat pretium nibh ipsum. Cum sociis natoque penatibus et magnis dis parturient. Elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere. Lobortis mattis aliquam faucibus purus in. Mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Eu nisl nunc mi ipsum faucibus. Feugiat vivamus at augue eget arcu dictum varius duis at. Ac orci phasellus egestas tellus rutrum.', 3, 1, '/assets/images/posts/2022_09_01_08_12_21.jpg', '2022-09-01 10:42:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `created_at`) VALUES
(1, 'sepehr@gmail.com', '$2y$10$658UjEf8/TScyrgP7lOkEuvHUFbYpzbRXwyPFWbTUHqTr/EthiwtK', 'sepehr', 'sabz', '2022-09-03 08:23:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
