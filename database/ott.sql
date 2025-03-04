-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2025 at 12:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ott`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(8) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `description`, `genre`, `poster`, `link`, `detail`, `created_at`) VALUES
(1, 'Lagan', 'The story is set in the late 19th century in a small village called Champaner, which is facing the burden of high taxes (lagaan) imposed by the British Raj. The villagers are struggling to pay the exorbitant taxes, which are due for the third consecutive year. One day, the British officers, led by Captain Russell (played by Paul Blackthorne), decide to increase the taxes further, causing anger among the villagers.\n\nIn a dramatic turn of events, Bhuvan (played by Aamir Khan), a young, courageous villager, challenges the British to a game of cricket. He offers to bet that if his team wins, the villagers will be exempt from paying the increased taxes. However, if they lose, they will have to pay three times the usual tax. The British officers, confident that the villagers, who have no knowledge of cricket, will lose, agree to the wager.\n\nBhuvan forms a cricket team with the help of fellow villagers, including the skilled but initially reluctant Ismail (Raj Zutshi) and a few others. The team must learn the game of cricket, and they are guided by an outsider, Elizabeth (played by Rachel Shelley), who is sympathetic to their cause and teaches them the rules of the game.\n\nAs the story progresses, the villagers face numerous challenges in preparing for the match, including personal conflicts, the tension between the villagers and the British, and the pressure of the wager. The climactic cricket match is a fierce and emotional battle, where teamwork, resilience, and belief in themselves are tested to the limit.', 'tv', 'lagaan.jpg', 'ixr7ZYgH_6I', 'Hit Bollywood Movie 2001', '2025-02-11 12:45:19'),
(2, 'Krrish 3', 'The movie follows Krishna, a young man with supernatural powers, raised by his grandmother in a quiet village in India. Krishna’s life changes when he meets Priya (played by Priyanka Chopra), a scientist who takes an interest in his abilities. Priya brings Krishna to the city, where he becomes entangled in a conflict with the powerful scientist Dr. Siddhant Arya (played by Naseeruddin Shah). Dr. Arya is the mastermind behind experiments that resulted in Krishna\'s birth, making him a genetically enhanced being.\n\nAs Krishna discovers his true origins, he learns about his father, Rohit (from Koi... Mil Gaya), and the secrets behind the experiments that created him. Krishna’s powers—such as super strength, the ability to heal, and heightened senses—make him a target for Dr. Arya, who plans to exploit him for his own gain.\n\nThe film mixes elements of science fiction with action, romance, and drama. It portrays Krishna\'s journey as he tries to understand his identity and fight against those who seek to misuse his extraordinary gifts.', 'movie', 'krish.jpg', '_6Ix1VF_yWM', 'Superhit Bollywood Movie 2013', '2025-02-11 12:45:19'),
(3, 'Fighter', 'A young and talented fighter dreams of making it big in the world of combat sports. Raised in a tough neighborhood, he faces numerous challenges on his journey. After a personal tragedy, he finds motivation to push through his struggles. He starts training under an experienced but disillusioned coach who sees potential in him. Their bond grows as the fighter learns discipline, technique, and self-confidence. He faces tough opponents in the ring, each battle testing his physical and mental strength.\r\n\r\nAs the fighter’s reputation grows, he becomes a symbol of hope for others from his community. However, his rise to fame brings new obstacles: rivalries, temptations, and the pressure of expectations. Despite setbacks, he remains determined to prove himself. In the final showdown, he faces the reigning champion, a seasoned fighter with unmatched skill. The match is intense, pushing both fighters to their limits. In the end, the young fighter triumphs, not just with a victory in the ring, but by conquering his own doubts and fears.\r\n\r\nThe movie ends with him reflecting on his journey, realizing that his true victory was overcoming the personal challenges that once seemed impossible. He’s no longer just a fighter but a symbol of resilience.', 'movie', 'figher.jpeg', '6amIq_mP4xM', 'Hit Bollywood Movie 2024', '2025-02-11 13:38:13'),
(4, 'Dilwale Dulhania Le Jayenge', 'Raj (Shah Rukh Khan) is a young man who travels through Europe with his friends. On his trip, he meets Simran (Kajol), an Indian girl. Initially, they clash but eventually fall in love. Simran is promised to another man. Her strict father (Amrish Puri) insists on the marriage. Raj must win her father’s approval to marry her. The movie is full of emotional moments and beautiful locations. The themes of love and destiny are explored. It’s a journey full of love, family, and self-realization. A film that became iconic in Bollywood.', 'movie', 'dilwale.jpg', 'UgMMqFU7lxI', 'Classic Bollywood Romance, 1995', '2025-02-11 08:20:19'),
(5, '3 Idiots', 'The film focuses on three engineering students. They challenge the conventional educational system. Rancho (Aamir Khan) inspires his friends to follow their passions. They face the intense pressure of academic success. The story mixes humor with life lessons. The struggles of students in India are depicted. Themes of friendship and freedom are prominent. Rancho teaches his friends the importance of thinking differently. The film highlights the pressures faced by the youth. The characters grow over the course of the film. A heartwarming and thought-provoking movie.', 'movie', '3idiots.jpg', 'UgMMqFU7lxI', 'Popular Bollywood Comedy, 2009', '2025-02-11 08:25:19'),
(6, 'Kabhi Khushi Kabhie Gham', 'The story revolves around the complex relationships within a wealthy family. Rahul (Shah Rukh Khan) marries a woman of his choice, disowning him. His younger brother, Rohan (Hrithik Roshan), tries to reunite the family. Themes of love, respect, and family values are explored. The film’s emotional journey centers around relationships. It examines the importance of unconditional love. The story is filled with laughter, tears, and heartfelt moments. The struggles of family members are relatable. A movie that resonates with generations. It is a timeless family drama with rich cultural context.', 'movie', 'kkkg.jpg', 'UgMMqFU7lxI', 'Epic Bollywood Family Drama, 2001', '2025-02-11 08:30:19'),
(8, 'Sholay', 'Two criminals, Jai and Veeru, are hired to capture a notorious bandit leader, Gabbar Singh. Along the way, they bond with the villagers of Ramgarh. The villagers are terrorized by Gabbar and his gang. Jai and Veeru become their last hope. The movie showcases their bravery and the emotional bond they share. It’s filled with action, humor, and intense drama. Gabbar Singh becomes one of the most iconic villains. The movie explores friendship, loyalty, and sacrifice. Jai and Veeru’s journey becomes legendary. Sholay is known for its memorable dialogues and soundtrack.', 'movie', 'sholay.jpg', 'UgMMqFU7lxI', 'Legendary Bollywood Action, 1975', '2025-02-11 08:40:19'),
(9, 'Zindagi Na Milegi Dobara', 'Three friends embark on a road trip through Spain. The trip is meant to fulfill each friend’s personal goals. The journey brings them closer and helps them face their fears. Each friend has to confront unresolved issues in their life. The movie explores themes of friendship, love, and self-discovery. The scenic landscapes of Spain provide a beautiful backdrop. It’s a celebration of life and living in the moment. The film teaches the importance of following one’s heart. The friendships in the movie evolve throughout the journey. A perfect blend of humor, adventure, and emotion.', 'movie', 'zindagi.jpg', 'UgMMqFU7lxI', 'Inspirational Bollywood Drama, 2011', '2025-02-11 08:45:19'),
(10, 'Dangal', 'A true story based on the life of wrestler Mahavir Phogat and his daughters. Mahavir trains his daughters, Geeta and Babita, to become wrestlers. The movie highlights the struggles they face in a male-dominated society. It deals with themes of gender equality, perseverance, and family. Mahavir’s unrelenting determination leads to the daughters’ success. The bond between father and daughters is powerful. It’s an inspiring story of breaking barriers and overcoming obstacles. Geeta and Babita’s journey to the top is heartwarming. Their success makes them national heroes. A true testament to hard work and dedication.', 'movie', 'dangal.jpg', 'UgMMqFU7lxI', 'Inspirational Sports Drama, 2016', '2025-02-11 08:50:19'),
(11, 'Tanu Weds Manu', 'The story revolves around Manu (R. Madhavan), an NRI who returns to India to find a bride. He meets Tanu (Kangana Ranaut), who is wild and unconventional. Despite their differences, they fall in love. However, Tanu’s unpredictable nature creates chaos in Manu’s life. A series of humorous events follow as they navigate their relationship. The film is a mix of romance, comedy, and drama. It also explores the tension between tradition and modernity. Tanu’s character is bold and unapologetically herself. The movie captures the essence of modern love in India.', 'movie', 'tanu.jpg', 'UgMMqFU7lxI', 'Bollywood Romantic Comedy, 2011', '2025-02-11 08:55:19'),
(12, 'Jab We Met', 'The story of Aditya (Shahid Kapoor) and Geet (Kareena Kapoor), who meet by chance. Geet is an exuberant, free-spirited woman, while Aditya is a depressed businessman. Their accidental journey together leads to a beautiful bond. The movie is filled with emotional highs and lows. Aditya finds himself transforming because of Geet’s infectious optimism. The chemistry between the lead actors is electric. It’s a story about rediscovering yourself through the journey of life. The film’s songs and dialogues became iconic. The emotional roller-coaster of love and self-discovery is captured beautifully.', 'movie', 'jabwemet.jpg', 'UgMMqFU7lxI', 'Hit Romantic Bollywood, 2007', '2025-02-11 09:00:19'),
(13, 'Baahubali: The Beginning', 'The story follows the rise of two brothers: Shivudu and Bhallaladeva. The kingdom of Mahishmati is in turmoil, and a battle for the throne begins. Shivudu, unaware of his true heritage, embarks on a journey to reclaim his kingdom. The movie is filled with action, adventure, and drama. The visuals, grandeur, and storytelling are extraordinary. Themes of loyalty, power, and revenge are explored. The characters are larger than life, and their struggles epic. The visual effects are some of the best in Indian cinema. The movie’s success led to a sequel that continues the saga.', 'movie', 'baahubali.jpg', 'UgMMqFU7lxI', 'Epic Historical Bollywood, 2015', '2025-02-11 09:05:19'),
(14, 'Bajrangi Bhaijaan', 'The movie follows Pavan (Salman Khan), a man on a mission to reunite a mute Pakistani girl with her family. The girl, separated from her parents during a trip to India, becomes lost in the country. Pavan, a devout man, takes it upon himself to help her. The journey takes them across various Indian states, facing numerous challenges. The movie highlights love, compassion, and humanity. It also explores cross-border relations between India and Pakistan. Pavan’s selfless determination is the heart of the movie. Themes of kindness, sacrifice, and understanding are explored. The film became one of the biggest blockbusters.', 'movie', 'bajrangi.jpg', 'UgMMqFU7lxI', 'Heartwarming Bollywood Drama, 2015', '2025-02-11 09:10:19'),
(15, 'Padmaavat', 'The story of the legendary queen Padmavati and her devotion to her kingdom. The film is set in the medieval period and follows the journey of her and her king, Maharawal Ratan Singh. The movie showcases the tension between the Rajputs and the invader Sultan Alauddin Khilji. Padmavati’s beauty and her refusal to marry Khilji set the stage for a fierce battle. Themes of sacrifice, honor, and loyalty are explored. The visuals and grand sets are a highlight of the film. The battle sequences and the portrayal of Khilji are intense. The film became a controversial yet highly acclaimed piece of cinema.', 'movie', 'padmaavat.jpg', 'UgMMqFU7lxI', 'Historical Drama, 2018', '2025-02-11 09:15:19'),
(16, 'Kahaani', 'Vidya (Vidya Balan) is a pregnant woman who travels to Kolkata in search of her missing husband. The movie is a thriller, with a tight and gripping plot. Vidya uncovers many secrets, and each revelation adds to the mystery. She is determined to find her husband, even if it means risking her life. As the story progresses, the twists keep the audience on the edge. The movie plays with themes of deception, identity, and revenge. Vidya’s performance is highly praised. The cinematography and direction are top-notch. The suspense builds slowly, making the climax even more shocking.', 'movie', 'kahaani.jpg', 'UgMMqFU7lxI', 'Bollywood Thriller, 2012', '2025-02-11 09:20:19'),
(17, 'Chennai Express', 'A man named Rahul (Shah Rukh Khan) accidentally gets involved with a woman, Meena (Deepika Padukone). They both end up on a train journey to Chennai. Meena is running from a dangerous gang. Rahul’s journey becomes filled with laughter, romance, and action. The film is a blend of romance and comedy. It explores themes of love, fate, and coincidence. The train journey is the movie’s key setting, filled with humor. It’s a light-hearted, entertaining movie. The chemistry between the leads adds charm. The film was a massive box-office success.', 'movie', 'chennaiexpress.jpg', 'UgMMqFU7lxI', 'Bollywood Comedy, 2013', '2025-02-11 09:25:19'),
(18, 'Housefull 2', 'The movie follows a chaotic situation with two families. The families are brought together for an unexpected wedding. What follows is a series of comic situations and misunderstandings. The film is full of slapstick humor and outrageous characters. The movie’s main plot revolves around mistaken identities. Each character has their own unique quirks. Themes of love, family, and humor are explored. The performances, especially by the ensemble cast, are impressive. It’s a typical Bollywood comedy filled with laughter and confusion.', 'movie', 'housefull2.jpg', 'UgMMqFU7lxI', 'Bollywood Comedy, 2012', '2025-02-11 09:30:19'),
(19, 'Raazi', 'Raazi is a story about Sehmat (Alia Bhatt), a young Indian woman who marries a Pakistani military officer during the India-Pakistan war. She becomes a spy for India. The film depicts the emotional struggles Sehmat faces as she balances love and duty. Themes of patriotism, sacrifice, and espionage are explored. The tension in the movie builds as Sehmat gathers intelligence. The film shows the challenges of working in enemy territory. Alia Bhatt’s powerful performance makes the character unforgettable. It’s an intense spy thriller. The story is based on true events from the 1971 war.', 'movie', 'raazi.jpg', 'UgMMqFU7lxI', 'Patriotic Thriller, 2018', '2025-02-11 09:35:19'),
(20, 'Mughal-e-Azam', 'The epic love story between Prince Salim and Anarkali. The prince falls in love with a beautiful courtesan, leading to a tragic tale. The movie is set in the Mughal Empire, with grandeur and royal drama. It is one of the most iconic films in Bollywood. Themes of love, sacrifice, and rebellion are explored. The clash between duty and personal feelings is central to the plot. It’s known for its elaborate sets, costumes, and music. The performances of the lead actors are memorable. A timeless classic that captured Indian cinema’s golden age.', 'movie', 'mughal.jpg', 'UgMMqFU7lxI', 'Bollywood Epic, 1960', '2025-02-11 09:40:19'),
(22, 'Jodha Akbar', 'A historical epic based on the love story between Emperor Akbar and his wife Jodha. Set in the Mughal era, the film portrays the struggles of a royal marriage. Akbar and Jodha face political tensions, personal differences, and family issues. Themes of love, respect, and politics are central. The movie showcases royal grandeur and historical significance. The chemistry between the leads is powerful. The soundtrack and visuals are breathtaking. A story of unity and love that transcends boundaries. It is one of Bollywood’s grandest historical films.', 'movie', 'jodhaakbar.jpg', 'UgMMqFU7lxI', 'Bollywood Historical Romance, 2008', '2025-02-11 09:50:19'),
(23, 'Taare Zameen Par', 'The story follows Ishaan, a young boy who struggles with dyslexia. His parents fail to understand his condition. He faces academic and personal challenges. The movie shows the bond between Ishaan and his art teacher. Themes of education, creativity, and emotional support are explored. The film emphasizes the importance of understanding children’s struggles. Ishaan’s journey is emotional and inspiring. It highlights the importance of nurturing individual talents. A heartwarming and transformative film that changed perceptions on education.', 'movie', 'taarezameenpar.jpg', 'UgMMqFU7lxI', 'Bollywood Drama, 2007', '2025-02-11 09:55:19'),
(24, 'Gully Boy', 'The movie follows Murad (Ranveer Singh), a young man from the streets of Mumbai who aspires to be a rapper. It showcases his struggles with his family and society. He faces many challenges in his pursuit of success in the music industry. The film is a raw and emotional portrayal of dreams and struggles. Themes of identity, class struggles, and expression are explored. Murad’s rise from poverty to success is inspiring. The soundtrack became a sensation, reflecting India’s rap culture. A film that resonated with young people.', 'movie', 'gullyboy.jpg', 'UgMMqFU7lxI', 'Bollywood Music Drama, 2019', '2025-02-11 10:00:19'),
(25, 'Andhadhun', 'A blind pianist, Aakash (Ayushmann Khurrana), becomes embroiled in a murder mystery. As the plot unfolds, Aakash uncovers many secrets. The film is filled with twists and turns, keeping the audience guessing. Themes of deception, greed, and identity are explored. A suspense thriller with elements of black comedy. Aakash’s complex character is portrayed brilliantly. The direction and screenplay are top-notch. The film received critical acclaim and was a box-office success. A movie that keeps the audience on the edge of their seat.', 'movie', 'andhadhun.jpg', 'UgMMqFU7lxI', 'Thriller, 2018', '2025-02-11 10:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
