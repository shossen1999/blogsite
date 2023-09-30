-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 01:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Javascript'),
(2, 'PHP'),
(3, 'Python'),
(4, 'HTML'),
(5, 'CSS'),
(6, 'C#'),
(8, 'JAVA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'Ainuddin', 'Chowdhury', 'ainuddin@gmail.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Lati', 0, '2018-01-29 03:43:33'),
(3, 'Hasan', 'mahmud', 'mahmud@gmail.com', 'gentle person', 0, '2023-09-28 10:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Soheb Personal Blog');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About ', '<p>\r\nC++ is a versatile and high-performance programming language that builds upon the foundations of C. It is renowned for its efficiency and is widely used in systems programming, game development, and embedded systems. C++ supports both procedural and object-oriented programming paradigms, making it a go-to choice for developing complex applications where performance is critical.\r\n\r\nJava is a robust and platform-independent language known for its \"Write Once, Run Anywhere\" capability. It is highly popular in building web and mobile applications, enterprise-level software, and Android mobile apps. Java emphasizes strong type checking and has a rich standard library, making it a top choice for developing scalable and reliable applications.\r\n\r\nJavaScript:\r\nJavaScript is a dynamic scripting language used primarily for web development. It runs in web browsers, allowing developers to create interactive and responsive web applications. JavaScript is crucial for enhancing user interfaces, implementing real-time features, and handling client-side logic. It plays a pivotal role in modern web development alongside HTML and CSS.\r\n\r\nHTML, or Hypertext Markup Language, is the foundation of the web. It is used to structure web content, defining headings, paragraphs, links, and multimedia elements. HTML is essential for creating the basic structure of web pages and is often combined with CSS for styling and JavaScript for interactivity.\r\n\r\nCSS:\r\nCascading Style Sheets (CSS) is responsible for the visual presentation of web content. It enables developers to control the design, layout, and formatting of HTML elements. CSS is crucial for creating visually appealing and responsive websites, ensuring a consistent user experience across different devices and browsers.\r\n\r\nC# (C-sharp) is a powerful, object-oriented programming language developed by Microsoft. It is integral to Windows application development, game development with Unity, and building web services with ASP.NET. C# boasts a strong type system and asynchronous programming capabilities, making it suitable for a wide range of software development projects.</p>'),
(2, 'Privacy', '<p> We are committed to safeguarding your privacy and ensuring the security of your personal information. Our privacy policy outlines how we collect, use, and protect your data to provide you with the best possible online experience.\r\n\r\nWe collect certain information when you interact with our website, including [mention the types of data, e.g., names, email addresses, and browsing behavior]. We use this data to [explain the purpose, e.g., personalize content, improve user experience, or provide customer support]. Your data is securely stored and never shared with unauthorized third parties.\r\n\r\nWe respect your right to privacy and offer options to control your data, including the ability to [mention user rights, e.g., access, correct, or delete your information]. Our website also uses cookies to [describe the purpose, e.g., enhance functionality or analyze site traffic]. You can manage your cookie preferences in our settings.\r\n\r\nRest assured, we adhere to all applicable privacy laws and regulations, and our dedicated team works tirelessly to protect your data. If you have any questions or concerns about your privacy, please don\'t hesitate to contact us at [provide contact information].\r\n\r\nThank you for choosing [Your Website Name], and we appreciate your trust in us to handle your data responsibly.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `tittle`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(7, 1, 'Javascript Post', '<p>JavaScript is a versatile and essential programming language that powers the dynamic behavior of websites and web applications. It runs in web browsers, enabling interactive user experiences and responsive web design.\r\n\r\nJavaScript allows developers to manipulate HTML and CSS, making it possible to create interactive forms, animations, and real-time updates. Its event-driven nature responds to user actions, such as clicks and keystrokes, facilitating user engagement.\r\n\r\nWith the advent of modern frameworks like React, Angular, and Vue.js, JavaScript has evolved to simplify complex web development tasks and enhance code reusability.\r\n\r\nNode.js extends JavaScript beyond the browser, enabling server-side scripting, making it ideal for building scalable web applications and APIs.\r\n\r\nDespite its widespread use, developers must remain mindful of performance and security concerns when using JavaScript, ensuring efficient code execution and safeguarding against potential vulnerabilities.</p>', 'upload/js2.png', 'Soheb ', 'javascript, javascript Coding, js Practice', '2023-08-27 18:21:24', 1),
(9, 2, 'PHP Fundamental', '<p>PHP, short for \"Hypertext Preprocessor,\" is a widely-used server-side scripting language designed for web development. It seamlessly integrates with HTML, enabling the creation of dynamic and interactive websites. PHP is open-source, platform-independent, and offers extensive database compatibility, making it a versatile choice for web developers. Popular frameworks like Laravel and Symfony simplify complex web application development, while its active community and rich standard library provide ample support and resources. PHP\'s performance has improved over time, making it suitable for high-traffic websites. However, developers must remain vigilant regarding security vulnerabilities like SQL injection and cross-site scripting (XSS) when using PHP in their projects..</p>', 'upload/php.png', 'nasim', 'php', '2018-01-19 18:27:23', 2),
(10, 4, 'HTML', '<p>\r\nHTML, or Hypertext Markup Language, serves as the backbone of the World Wide Web. It is a markup language used to structure content on web pages. In HTML, elements are enclosed in tags, defining the structure and hierarchy of a webpage.\r\n\r\nHTML provides a standardized way to create headings, paragraphs, lists, links, images, and more. It also facilitates the integration of multimedia content like videos and audio.\r\n\r\nSemantic HTML tags such as <header>, <nav>, <article>, and <footer> enhance accessibility and search engine optimization, as they convey the meaning and structure of a page\'s content.\r\n\r\nCascading Style Sheets (CSS) are commonly used in conjunction with HTML to control the presentation and layout of web content, enabling the creation of visually appealing and responsive websites.\r\n\r\nHTML5, the latest version of HTML, introduced new elements and features, including native support for video and audio playback, making it a vital technology for modern web development.</p>', 'upload/html.png', 'Roni', 'html', '2018-01-19 18:28:28', 3),
(12, 8, 'JAVA POST', '<p>Java is a widely-used, high-level, object-oriented programming language known for its platform independence. It allows developers to write code once and run it on multiple platforms, thanks to the Java Virtual Machine (JVM).\r\n\r\nJava\'s robustness and reliability are hallmarks of its design, making it a preferred choice for building critical and enterprise-level applications, including web services and Android mobile apps.\r\n\r\nThe language emphasizes strong type checking and exception handling, which enhances code quality and stability.\r\n\r\nJava\'s extensive standard library provides a wealth of pre-built classes and methods for various tasks, reducing development time and effort.\r\n\r\nJava\'s \"Write Once, Run Anywhere\" philosophy, coupled with its portability, has made it a go-to choice for cross-platform development.\r\n\r\nPopular frameworks and technologies like Spring, Hibernate, and Java EE have further extended Java\'s capabilities in building web applications, middleware, and enterprise systems.\r\n\r\nJava\'s active community contributes to its continuous evolution, ensuring that it remains up-to-date with modern software development trends and practices.\r\n\r\nDespite the rise of newer languages, Java maintains its significance, particularly in areas like server-side development and Android app development, making it a staple in the software development landscape.</p>', 'upload/java-logo.png', 'Asad Mondol', 'JAVA', '2018-01-19 18:33:34', 0),
(13, 6, 'C# POST', '<p>C# (pronounced C-sharp) is a powerful, statically-typed programming language developed by Microsoft. It is a key component of the Microsoft .NET framework, making it a popular choice for developing Windows applications, web applications, and games.\r\n\r\nC# combines the best of both object-oriented and functional programming paradigms, offering developers a versatile toolset for building robust and scalable software.\r\n\r\nOne of C#\'s standout features is its strong type system, which enhances code reliability and safety by catching many errors at compile-time rather than runtime.\r\n\r\nC# also supports asynchronous programming, making it ideal for building responsive and high-performance applications that can handle concurrent tasks efficiently.\r\n\r\nWith the introduction of .NET Core (now known as .NET 5 and later .NET 6), C# has become cross-platform, enabling developers to create applications that run not only on Windows but also on macOS and Linux.\r\n\r\nC# boasts an active and supportive community, offering extensive documentation, libraries, and frameworks like ASP.NET for web development and Unity for game development.\r\n\r\nAs a language with a broad range of applications, C# remains a prominent choice for developers, whether they are creating desktop applications, web services, or engaging in game development. Its evolution and continued integration with modern technologies ensure its relevance in software development.</p>', 'upload/c sharp.png', 'Tamim', 'C# programming ,C# practice', '2018-01-19 18:35:30', 2),
(14, 5, 'CSS Post', '<p>Cascading Style Sheets, or CSS, is a fundamental web technology used for controlling the visual presentation and layout of HTML documents. CSS allows developers to define the appearance of elements on web pages, including colors, fonts, spacing, and positioning.\r\n\r\nCSS operates on a \"cascading\" principle, where styles can be defined in multiple places and cascade down the document, with the most specific styles taking precedence. This allows for efficient and flexible styling.\r\n\r\nSelectors in CSS specify which HTML elements are affected by the defined styles, providing fine-grained control over the design. Combining selectors with properties and values creates powerful styling rules.\r\n\r\nResponsive web design relies heavily on CSS media queries, enabling websites to adapt to different screen sizes and devices, enhancing the user experience.\r\n\r\nFrameworks like Bootstrap and libraries such as Sass and Less simplify CSS development by providing pre-defined styles and features, streamlining the process of building visually appealing and consistent websites.\r\n\r\nDespite its seemingly simple syntax, mastering CSS can be challenging due to its intricacies and browser compatibility issues. However, it remains an integral part of web development, ensuring that web content looks attractive and functions effectively across various platforms and devices.</p>', 'upload/css.png', 'Roman', 'css', '2018-01-19 18:37:20', 0),
(15, 3, 'Python Post ', '<p>Python, a high-level, versatile programming language, is celebrated for its readability and ease of use. Its simplicity makes it an ideal choice for beginners, yet its power and extensibility appeal to experienced developers. Python boasts a rich standard library that simplifies complex tasks, from web development and data analysis to artificial intelligence and scientific computing. Its dynamic typing and automatic memory management reduce development time and errors. Python supports multiple programming paradigms, including object-oriented, functional, and procedural, providing flexibility in coding styles. Popular frameworks like Django and Flask expedite web application development. The Python community is robust, fostering a wealth of resources, tutorials, and libraries. Python\'s cross-platform compatibility ensures code portability across various operating systems, making it a favored language for a wide range of applications.</p>', 'upload/Python.png', 'Editor', 'Python', '2018-02-01 18:56:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'First Slider', 'upload/slider/s1.jpg'),
(2, 'Second Slider ', 'upload/slider/s2.jpg'),
(3, 'Third Slider ', 'upload/slider/s3.jpg'),
(5, 'Forth Silder ', 'upload/slider/s4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/monirdhk.it', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Soheb', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'soheb@gmail.com', '<p>Hey! I am soheb from Bangladesh.</p>', 0),
(2, 'Faisal Khan', 'Author', '202cb962ac59075b964b07152d234b70', 'faisal@gmail.com', '<p>Hey! I am faisal khan from Bangladesh</p>', 1),
(3, 'Humayun Kabir', 'Editor', '202cb962ac59075b964b07152d234b70', 'humayun@gmail.com', '<p>Hey! I am from Bangladesh</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Soheb Personal Blog', 'Learn JS, PHP, JAVA,HTML, CSS ,Python from my blog', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
