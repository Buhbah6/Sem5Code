-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 04:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anime_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `anime`
--

CREATE TABLE `anime` (
  `anime_id` int(9) NOT NULL,
  `production_id` int(9) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `year` int(4) NOT NULL DEFAULT 2022,
  `nb_releases` int(4) NOT NULL DEFAULT 1,
  `cover_picture` varchar(50) NOT NULL DEFAULT 'blank.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anime`
--

INSERT INTO `anime` (`anime_id`, `production_id`, `name`, `description`, `year`, `nb_releases`, `cover_picture`) VALUES
(1, 1, 'Sword Art Online', 'Ever since the release of the innovative NerveGear, gamers from all around the globe have been given the opportunity to experience a completely immersive virtual reality. Sword Art Online (SAO), one of the most recent games on the console, offers a gateway into the wondrous world of Aincrad, a vivid, medieval landscape where users can do anything within the limits of imagination. With the release of this worldwide sensation, gaming has never felt more lifelike.\r\n\r\nHowever, the idyllic fantasy ra', 2012, 25, 'blank.png'),
(2, 3, 'Demon Slayer: Kimetsu no Yaiba', 'Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado\'s shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in ', 2019, 26, 'blank.png'),
(3, 4, 'Hunter x Hunter', 'Hunters devote themselves to accomplishing hazardous tasks, all from traversing the world\'s uncharted territories to locating rare items and monsters. Before becoming a Hunter, one must pass the Hunter Examination—a high-risk selection process in which most applicants end up handicapped or worse, deceased.\r\n\r\nAmbitious participants who challenge the notorious exam carry their own reason. What drives 12-year-old Gon Freecss is finding Ging, his father and a Hunter himself. Believing that he will ', 2011, 148, 'blank.png'),
(4, 5, 'Code Geass: Hangyaku no Lelouch', 'In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt to regain independence.\r\n\r\nLelouch Lamperouge, a Britannian student, unfortunately finds himself caught in a crossfire between the Britannian and the Area 11 rebel armed forces. He is able to escape, however, thanks to the timely appearance of a', 2006, 50, 'blank.png'),
(5, 6, 'Dr. Stone', 'After five years of harboring unspoken feelings, high-schooler Taiju Ooki is finally ready to confess his love to Yuzuriha Ogawa. Just when Taiju begins his confession however, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.\r\n\r\nSeveral millennia later, Taiju awakens to find the modern world completely nonexistent, as nature has flourished in the years humanity stood still. Among a stone world of statues, Taiju encounters one ', 2019, 48, 'blank.png'),
(6, 7, 'One Punch Man', 'Hunters devote themselves to accomplishing hazardous tasks, all from traversing the world\'s uncharted territories to locating rare items and monsters. Before becoming a Hunter, one must pass the Hunter Examination—a high-risk selection process in which most applicants end up handicapped or worse, deceased.\r\n\r\nAmbitious participants who challenge the notorious exam carry their own reason. What drives 12-year-old Gon Freecss is finding Ging, his father and a Hunter himself. Believing that he will ', 2011, 24, 'blank.png'),
(7, 8, 'Tokyo Ghoul', 'A sinister threat is invading Tokyo: flesh-eating \"ghouls\" who appear identical to humans and blend into their population. Reserved college student Ken Kaneki buries his nose in books and avoids the news of the growing crisis. However, the appearance of an attractive woman named Rize Kamishiro shatters his solitude when she forwardly asks him on a date.\r\n\r\nWhile walking Rize home, Kaneki discovers she isn\'t as kind as she first appeared, and she has led him on with sinister intent. After a tragi', 2014, 36, 'blank.png'),
(8, 9, 'Naruto', 'Moments prior to Naruto Uzumaki\'s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi\'s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto.\r\n\r\nNow, Naruto is a hyperactive and knuckle-headed ninja still living in Konohagakure. Shunned because of the Kyuubi inside him, Naruto struggles to find his place i', 2002, 220, 'blank.png'),
(9, 10, 'Naruto: Shippuuden', 'It has been two and a half years since Naruto Uzumaki left Konohagakure, the Hidden Leaf Village, for intense training following events which fueled his desire to be stronger. Now Akatsuki, the mysterious organization of elite rogue ninja, is closing in on their grand plan which may threaten the safety of the entire shinobi world.\r\n\r\nAlthough Naruto is older and sinister events loom on the horizon, he has changed little in personality—still rambunctious and childish—though he is now far more con', 2007, 500, 'blank.png'),
(10, 13, 'Jujutsu Kaisen', 'Idly indulging in baseless paranormal activities with the Occult Club, high schooler Yuuji Itadori spends his days at either the clubroom or the hospital, where he visits his bedridden grandfather. However, this leisurely lifestyle soon takes a turn for the strange when he unknowingly encounters a cursed item. Triggering a chain of supernatural occurrences, Yuuji finds himself suddenly thrust into the world of Curses—dreadful beings formed from human malice and negativity—after swallowing the sa', 2020, 24, 'blank.png'),
(11, 15, 'My Hero Academia ', 'As summer arrives for the students at UA Academy, each of these superheroes-in-training puts in their best efforts to become renowned heroes. They head off to a forest training camp run by UA\'s pro heroes, where the students face one another in battle and go through dangerous tests, improving their abilities and pushing past their limits. However, their school trip is suddenly turned upside down when the League of Villains arrives, invading the camp with a mission to capture one of the students.', 2018, 119, 'blank.png'),
(12, 14, 'Attack on Titan ', 'Centuries ago, mankind was slaughtered to near extinction by monstrous humanoid creatures called Titans, forcing humans to hide in fear behind enormous concentric walls. What makes these giants truly terrifying is that their taste for human flesh is not born out of hunger but what appears to be out of pleasure. To ensure their survival, the remnants of humanity began living within defensive barriers, resulting in one hundred years without a single titan encounter. However, that fragile calm is s', 2013, 87, 'blank.png'),
(13, 11, 'Bleach', 'Ichigo Kurosaki is an ordinary high schooler—until his family is attacked by a Hollow, a corrupt spirit that seeks to devour human souls. It is then that he meets a Soul Reaper named Rukia Kuchiki, who gets injured while protecting Ichigo\'s family from the assailant. To save his family, Ichigo accepts Rukia\'s offer of taking her powers and becomes a Soul Reaper as a result.\r\n\r\nHowever, as Rukia is unable to regain her powers, Ichigo is given the daunting task of hunting down the Hollows that pla', 2004, 366, 'blank.png'),
(14, 16, 'One Piece', 'Gol D. Roger was known as the \"Pirate King,\" the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the p', 1999, 1039, 'blank.png'),
(15, 12, 'Black Clover', 'Asta and Yuno were abandoned at the same church on the same day. Raised together as children, they came to know of the \"Wizard King\"—a title given to the strongest mage in the kingdom—and promised that they would compete against each other for the position of the next Wizard King. However, as they grew up, the stark difference between them became evident. While Yuno is able to wield magic with amazing power and control, Asta cannot use magic at all and desperately tries to awaken his powers by t', 2017, 170, 'blank.png'),
(16, 17, 'Fire Force', 'Spontaneous Human Combustion: a chaotic phenomenon that has plagued humanity for years, randomly transforming ordinary people into flaming, violent creatures known as Infernals. While Infernals make up the first-generation accounts of Human Combustion, the second and third generations became known as pyrokinetics—people gifted with the ability to manipulate and control their flames while remaining human. To combat the Infernal threat and discover the cause, the Tokyo Armed Forces, Fire Defense A', 2019, 48, 'blank.png'),
(17, 18, 'Tokyo Revengers', 'akemichi Hanagaki\'s second year of middle school was the highest point in his life. He had respect, a gang of friends he could count on, and even a girlfriend. But that was twelve years ago. Today, he\'s a nobody: a washed-up nonentity made fun of by children and always forced to apologize to his younger boss. A sudden news report on the Tokyo Manji Gang\'s cruel murder of the only girlfriend he ever had alongside her brother only adds insult to injury. Half a second before a train ends his pitifu', 2021, 24, 'blank.png'),
(19, 19, 'Rascal Does Not Dream of Bunny Girl Senpai', 'The rare and inexplicable Puberty Syndrome is thought of as a myth. It is a rare disease which only affects teenagers, and its symptoms are so supernatural that hardly anyone recognizes it as a legitimate occurrence. However, high school student Sakuta Azusagawa knows from personal experience that it is very much real, and happens to be quite prevalent in his school.\r\n\r\nMai Sakurajima is a third-year high school student who gained fame in her youth as a child actress, but recently halted her pro', 2018, 26, 'blank.png'),
(20, 21, 'The Devil is a Part-Timer!', 'Striking fear into the hearts of mortals, the Demon Lord Satan begins to conquer the land of Ente Isla with his vast demon armies. However, while embarking on this brutal quest to take over the continent, his efforts are foiled by the hero Emilia, forcing Satan to make his swift retreat through a dimensional portal only to land in the human world. Along with his loyal general Alsiel, the demon finds himself stranded in modern-day Tokyo and vows to return and complete his subjugation of Ente Isla', 2013, 25, 'blank.png'),
(21, 23, 'Parasyte', 'All of a sudden, they arrived: parasitic aliens that descended upon Earth and quickly infiltrated humanity by burrowing into the brains of vulnerable targets. These insatiable beings acquire full control of their host and are able to morph into a variety of forms in order to feed on unsuspecting prey.\r\n\r\nSixteen-year-old high school student Shinichi Izumi falls victim to one of these parasites, but it fails to take over his brain, ending up in his right hand instead. Unable to relocate, the para', 2014, 24, 'blank.png'),
(22, 22, 'Deadman Wonderland', ' Deadman Wonderland\r\nIt looked like it would be a normal day for Ganta Igarashi and his classmates—they were preparing to go on a class field trip to a certain prison amusement park called Deadman Wonderland, where the convicts perform dangerous acts for the onlookers\' amusement. However, Ganta\'s life is quickly turned upside down when his whole class gets massacred by a mysterious man in red. Framed for the incident and sentenced to death, Ganta is sent to the very jail he was supposed to visit', 2011, 12, 'blank.png'),
(23, 24, 'Toradora!', 'Ryuuji Takasu is a gentle high school student with a love for housework; but in contrast to his kind nature, he has an intimidating face that often gets him labeled as a delinquent. On the other hand is Taiga Aisaka, a small, doll-like student, who is anything but a cute and fragile girl. Equipped with a wooden katana and feisty personality, Taiga is known throughout the school as the \"Palmtop Tiger.\"\r\n', 2008, 25, 'blank.png'),
(24, 2, 'Your Lie in April', 'Kousei Arima is a child prodigy known as the \"Human Metronome\" for playing the piano with precision and perfection. Guided by a strict mother and rigorous training, Kousei dominates every competition he enters, earning the admiration of his musical peers and praise from audiences. When his mother suddenly passes away, the subsequent trauma makes him unable to hear the sound of a piano, and he never takes the stage thereafter.\r\n\r\nNowadays, Kousei lives a quiet and unassuming life as a junior high', 2014, 22, 'blank.png'),
(26, 30, 'Haikyuu!!', 'Ever since having witnessed the \"Little Giant\" and his astonishing skills on the volleyball court, Shouyou Hinata has been bewitched by the dynamic nature of the sport. Even though his attempt to make his debut as a volleyball regular during a middle school tournament went up in flames, he longs to prove that his less-than-impressive height ceases to be a hindrance in the face of his sheer will and perseverance.\r\n\r\nWhen Hinata enrolls in Karasuno High School, the Little Giant\'s alma mater, he be', 2014, 85, 'blank.png'),
(27, 29, 'Kuroko\'s Basketball', 'For the last three years, Teikou Middle School has dominated the national basketball scene with its legendary lineup: the \"Generation of Miracles.\" It consisted of five prodigies who excelled at the sport, but a \"Phantom Sixth Man\" lurked in the shadows and helped earn the team their revered status. Eventually, their monstrous growth jaded them from the sport they loved and made them go their separate ways in high school.\r\n\r\nIn search of new members, the Seirin High School basketball team recrui', 2022, 83, 'blank.png'),
(28, 1, 'My Dress-Up Darling', 'High school student Wakana Gojou spends his days perfecting the art of making hina dolls, hoping to eventually reach his grandfather\'s level of expertise. While his fellow teenagers busy themselves with pop culture, Gojou finds bliss in sewing clothes for his dolls. Nonetheless, he goes to great lengths to keep his unique hobby a secret, as he believes that he would be ridiculed were it revealed.\r\n\r\nEnter Marin Kitagawa, an extraordinarily pretty girl whose confidence and poise are in stark cont', 2022, 12, 'blank.png'),
(29, 2, 'Beastars', 'In a civilized society of anthropomorphic animals, an uneasy tension exists between carnivores and herbivores. At Cherryton Academy, this mutual distrust peaks after a predation incident results in the death of Tem, an alpaca in the school\'s drama club. Tem\'s friend Legoshi, a grey wolf in the stage crew, has been an object of fear and suspicion for his whole life. In the immediate aftermath of the tragedy, he continues to lay low and hide his menacing traits, much to the disapproval of Louis, a', 2019, 24, 'blank.png'),
(30, 4, 'How Not to Summon a Demon Lord', 'When it comes to the fantasy MMORPG Cross Reverie, none can match the power of the Demon King Diablo. Possessing the game\'s rarest artifacts and an unrivaled player level, he overpowers all foolish enough to confront him. But despite his fearsome reputation, Diablo\'s true identity is Takuma Sakamoto, a shut-in gamer devoid of any social skills. Defeating hopeless challengers day by day, Takuma cares about nothing else but his virtual life—that is, until a summoning spell suddenly transports him ', 2018, 12, 'blank.png'),
(31, 3, 'the Rising of the Shield Hero ', 'The Four Cardinal Heroes are a group of ordinary men from modern-day Japan summoned to the kingdom of Melromarc to become its saviors. Melromarc is a country plagued by the Waves of Catastrophe that have repeatedly ravaged the land and brought disaster to its citizens for centuries. The four heroes are respectively bestowed a sword, spear, bow, and shield to vanquish these Waves. Naofumi Iwatani, an otaku, becomes cursed with the fate of being the \"Shield Hero.\" Armed with only a measly shield, ', 2019, 50, 'blank.png'),
(34, 5, 'Trinity Seven', 'One day, the bright red sun stopped shining, causing the \"Breakdown Phenomenon\"—the destruction of Arata Kasuga\'s town and the disappearance of the people inhabiting it. All, however, is not yet lost; by utilizing the magical grimoire given to him by his childhood friend and cousin Hijiri Kasuga, Arata\'s world gets artificially reconstructed.\r\n\r\nIn order to investigate the phenomenon, Lilith Asami appears before Arata, whose artificial world suddenly disintegrates. He is given two choices: hand ', 2014, 12, 'blank.png');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(9) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`, `description`) VALUES
(1, 'Action', 'Exciting action sequences take priority and significant conflicts between characters are usually resolved with one\'s physical power. While the overarching plot may involve one group against another, the narrative in action stories is always focused on the strengths/weaknesses of individual '),
(2, 'Adventure', 'Whether aiming for a specific goal or just struggling to survive, the main character is thrust into unfamiliar situations or lands and continuously faces unexpected dangers. The narrative of adventure stories is always on how the characters react to sudden events or trials during the journey, indicating personal growth or setback based on which actions or choices are taken.'),
(3, 'Comedy', 'Uplifting the audience with positive emotion takes priority, eliciting laughter, amusement, or general entertainment. Almost always, comedy stories are episodic or have happy endings. Nearly every work will use comedy as a plot device to relieve tension, but the overarching narrative must be focused on evoking amusement to be Comedy. Drama and Comedy are not mutually exclusive, but mixing them requires the audience facing human struggle with lightheartedness. Slice of Life and Comedy are incompa'),
(4, 'Drama', 'Plot-driven stories focused on realistic characters experiencing human struggle. Because drama stories ask the question of what it means to be human, the conflict and emotions will be relatable, even if the settings or characters themselves are not. Here, you will see humanity at its worst, its best, and everything in between'),
(5, 'Fantasy', 'Magical powers, unnatural creatures, or other unreal elements which cannot be explained by science are prevalent and normal to the setting they exist in. Fantasy stories can take place on Earth (urban fantasy) or in another world.'),
(6, 'Romance', 'Falling in love and struggling to progress towards—or maintain—a romantic relationship take priority, while other subplots either take backseat or are designed to develop the main love story. The narrative focuses on the thoughts and emotions of the characters, illustrating the connections between them and explaining their reactions to events or conflict. Almost always, the story ends happily and the couple is rewarded for their efforts with lasting love.'),
(7, 'Sports', 'Training for and participating in a sport take priority, with the goal of furthering one\'s athletic abilities—either to win a competition or achieve some social standing. While the featured sport may be individual or team, the main cast will always overcome conflict through discussion and insights gained from other athletes or coaches. This creates a general sense of collective support and achievement that is always present in Sports stories.'),
(8, 'Shounen', 'defined by having a male lead protagonist and being told primarily from a male perspective. also known for being high-action or high-intensity series with increased emphasis on camaraderie and humor compared to other genres. primarily on action, adventure, and the fighting of monsters or other forces of evil.'),
(9, 'Seinen', 'focus on action, politics, science fiction, fantasy, relationships, sports, or comedy. The category involves the subject in the anime and constantly evolves the idea surrounding the theme. having a stronger emphasis on realism. the emphasis on storyline and character development instead of action, very dark works, or those with excessive gore and horror elements. the focus is told by a young teen boys life\'s who are changed by an event that troubles is daily routine.'),
(10, 'Shoujo', 'encapsulate a huge range of stories, including action, adventure, fantasy and so on.  Shoujo increased importance placed on romantic relationships and personal emotions while not always the central focus, these will commonly play a part and are usually handled with a lot more care and nuance'),
(11, 'Slice of Life', 'Slice of Life stories are focused on a seemingly random and mundane period of the main characters\' lives. The absence of a central plot to carry the story towards a charted destination means Slice of Life stories frequently lack overarching conflict and resolution. While life is not without conflict and Slice of Life neither, here conflict appears and dissipates seemingly at will, without a specific narrative to enforce it.\r\n'),
(12, 'Harem', 'features more than two female characters go head-over-heels for a single male character. Anime in this category is typically within the comedy and romance genre. It\'s possible that a harem anime can have no romance and feature mostly slapstick comedy.'),
(13, 'Isekai', 'narrative where a protagonist somehow gets transported to a different world. The new world is more often than not in a fantasy setting, occasionally with traits pulled from JRPG games'),
(14, 'Supernatural', 'referring to stuff or events that are odd and out-of-the-blue. For this category, supernatural might refer to something mythical, mystical, bizarre, or something outside the bounds of accepted reality. There’s a shadow of mystery often found in shows involved with this genre.');

-- --------------------------------------------------------

--
-- Table structure for table `genre_list`
--

CREATE TABLE `genre_list` (
  `genre_list_id` int(9) NOT NULL,
  `genre_id` int(9) NOT NULL,
  `manga_id` int(9) DEFAULT NULL,
  `anime_id` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre_list`
--

INSERT INTO `genre_list` (`genre_list_id`, `genre_id`, `manga_id`, `anime_id`) VALUES
(1, 1, NULL, 1),
(2, 13, NULL, 1),
(3, 2, NULL, 1),
(4, 12, NULL, 1),
(5, 6, NULL, 1),
(6, 2, NULL, 2),
(7, 1, NULL, 2),
(8, 8, NULL, 2),
(9, 5, NULL, 2),
(10, 1, 57, 3),
(11, 2, 57, 3),
(12, 5, 57, 3),
(13, 8, 57, 3),
(14, 4, NULL, 4),
(15, 1, NULL, 4),
(16, 2, NULL, 5),
(17, 1, NULL, 5),
(18, 3, NULL, 5),
(19, 5, NULL, 5),
(20, 8, NULL, 5),
(21, 1, 54, 6),
(22, 3, 54, 6),
(23, 9, 54, 6),
(24, 14, 53, 7),
(25, 1, 53, 7),
(26, 9, 53, 7),
(27, 2, NULL, 8),
(28, 1, NULL, 8),
(29, 5, NULL, 8),
(30, 8, NULL, 8),
(31, 1, NULL, 9),
(32, 2, NULL, 9),
(33, 5, NULL, 9),
(34, 1, 55, 10),
(35, 2, 55, 10),
(36, 5, 55, 10),
(37, 14, 55, 10),
(38, 1, NULL, 11),
(39, 2, NULL, 11),
(40, 8, NULL, 11),
(41, 5, NULL, 11),
(42, 1, 51, 12),
(43, 2, 51, 12),
(44, 5, 51, 12),
(45, 9, 51, 12),
(46, 14, NULL, 13),
(47, 1, NULL, 13),
(48, 3, NULL, 13),
(49, 2, NULL, 13),
(50, 8, NULL, 13),
(51, 4, 51, 12),
(52, 2, NULL, 14),
(53, 1, NULL, 14),
(54, 5, NULL, 14),
(55, 8, NULL, 14),
(56, 1, NULL, 15),
(57, 2, NULL, 15),
(58, 5, NULL, 15),
(59, 8, NULL, 15),
(60, 1, NULL, 16),
(61, 2, NULL, 16),
(62, 5, NULL, 16),
(88, 1, NULL, 17),
(89, 4, NULL, 17),
(90, 14, NULL, 17),
(91, 8, NULL, 17),
(92, 3, NULL, 19),
(93, 4, NULL, 19),
(94, 14, NULL, 19),
(95, 3, NULL, 20),
(96, 5, NULL, 20),
(97, 6, NULL, 20),
(98, 14, NULL, 20),
(99, 12, NULL, 20),
(100, 13, NULL, 20),
(101, 1, NULL, 21),
(102, 2, NULL, 21),
(103, 9, NULL, 21),
(104, 1, NULL, 22),
(105, 14, NULL, 22),
(106, 4, NULL, 23),
(107, 6, NULL, 23),
(108, 10, NULL, 23),
(109, 11, NULL, 23),
(110, 4, NULL, 24),
(111, 6, NULL, 24),
(112, 8, 71, 26),
(113, 7, 71, 26),
(114, 7, 72, 27),
(115, 8, 72, 27),
(116, 6, NULL, 28),
(117, 3, NULL, 28),
(118, 11, NULL, 28),
(119, 3, NULL, 30),
(120, 5, NULL, 30),
(121, 12, NULL, 30),
(122, 13, NULL, 30),
(123, 4, NULL, 29),
(124, 11, NULL, 29),
(125, 14, NULL, 29),
(126, 1, 62, 31),
(127, 2, 62, 31),
(128, 4, 62, 31),
(129, 5, 62, 31),
(130, 13, 62, 31),
(131, 1, NULL, 34),
(132, 3, NULL, 34),
(133, 5, NULL, 34),
(134, 6, NULL, 34),
(135, 14, NULL, 34),
(136, 8, NULL, 34),
(265, 1, 52, NULL),
(266, 2, 52, NULL),
(267, 5, 52, NULL),
(268, 1, 56, NULL),
(269, 3, 56, NULL),
(270, 1, 58, NULL),
(271, 3, 58, NULL),
(272, 14, 58, NULL),
(273, 8, 58, NULL),
(274, 1, 59, NULL),
(275, 8, 59, NULL),
(276, 5, 59, NULL),
(277, 1, 60, NULL),
(278, 2, 60, NULL),
(279, 6, 60, NULL),
(280, 5, 60, NULL),
(281, 6, 61, NULL),
(282, 4, 63, NULL),
(283, 11, 61, NULL),
(284, 9, 63, NULL),
(285, 11, 63, NULL),
(286, 6, 64, NULL),
(287, 4, 64, NULL),
(288, 11, 64, NULL),
(289, 3, 65, NULL),
(304, 11, 66, NULL),
(305, 6, 66, NULL),
(306, 3, 66, NULL),
(307, 6, 67, NULL),
(308, 4, 67, NULL),
(309, 5, 67, NULL),
(310, 6, 68, NULL),
(311, 11, 68, NULL),
(312, 4, 68, NULL),
(313, 3, 69, NULL),
(314, 3, 70, NULL),
(315, 11, 70, NULL),
(316, 6, 70, NULL),
(317, 7, 73, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `list_id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `anime_id` int(9) DEFAULT NULL,
  `manga_id` int(9) DEFAULT NULL,
  `Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`list_id`, `user_id`, `anime_id`, `manga_id`, `Type`) VALUES
(1, 3, 12, NULL, 'to-watch'),
(2, 3, 15, NULL, 'to-watch'),
(3, 3, 4, NULL, 'to-watch'),
(4, 3, NULL, NULL, 'watched'),
(5, 3, 8, NULL, 'watched'),
(6, 3, 16, NULL, 'watched'),
(7, 3, NULL, NULL, 'watched'),
(8, 3, 26, NULL, 'watched'),
(9, 3, NULL, 59, 'to-watch'),
(10, 3, NULL, 54, 'to-watch'),
(11, 1, 34, NULL, 'watched'),
(12, 1, 4, NULL, 'watched'),
(13, 1, 10, NULL, 'watched'),
(14, 1, NULL, 69, 'watched'),
(15, 1, NULL, 63, 'watched'),
(16, 1, NULL, 52, 'watched'),
(17, 1, NULL, 68, 'watched'),
(18, 1, 28, NULL, 'to-watch'),
(19, 1, 5, NULL, 'to-watch'),
(20, 1, 10, NULL, 'to-watch'),
(21, 1, NULL, 61, 'to-watch'),
(22, 1, NULL, 72, 'to-watch'),
(23, 1, 1, NULL, 'to-watch'),
(24, 1, 2, NULL, 'to-watch'),
(25, 1, NULL, 53, 'to-watch'),
(26, 4, 17, NULL, 'to-watch'),
(27, 4, 16, NULL, 'to-watch'),
(28, 4, 14, NULL, 'to-watch'),
(29, 4, NULL, 68, 'to-watch'),
(30, 4, NULL, 63, 'to-watch'),
(31, 4, 12, NULL, 'watched'),
(32, 4, 15, NULL, 'watched'),
(33, 4, 13, NULL, 'watched'),
(34, 4, NULL, 67, 'watched'),
(35, 4, NULL, 66, 'watched'),
(36, 2, 3, NULL, 'watched'),
(37, 2, 8, NULL, 'watched'),
(38, 2, 10, NULL, 'watched'),
(39, 2, 9, NULL, 'to-watch'),
(40, 2, 17, NULL, 'to-watch'),
(41, 2, 12, NULL, 'to-watch'),
(42, 2, NULL, 69, 'to-watch'),
(43, 2, 2, NULL, 'to-watch'),
(44, 2, 6, NULL, 'to-watch'),
(45, 2, 4, NULL, 'to-watch'),
(46, 5, NULL, 71, 'to-watch'),
(47, 5, 24, NULL, 'to-watch'),
(48, 5, 28, NULL, 'to-watch'),
(49, 5, 23, NULL, 'watched'),
(50, 5, 5, NULL, 'to-watch');

-- --------------------------------------------------------

--
-- Table structure for table `manga`
--

CREATE TABLE `manga` (
  `manga_id` int(9) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `year` int(4) NOT NULL DEFAULT 2022,
  `mangaka` varchar(100) NOT NULL,
  `num_of_volumes` int(4) NOT NULL DEFAULT 1,
  `cover_picture` varchar(50) NOT NULL DEFAULT 'blank.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manga`
--

INSERT INTO `manga` (`manga_id`, `name`, `description`, `year`, `mangaka`, `num_of_volumes`, `cover_picture`) VALUES
(51, 'Attack on Titan', 'Hundreds of years ago, horrifying creatures which resembled humans appeared. These mindless, towering giants, called \"Titans,\" proved to be an existential threat, as they preyed on whatever humans they could find in order to satisfy a seemingly unending appetite. Unable to effectively combat the Titans, mankind was forced to barricade themselves within large walls surrounding what may very well be humanity\'s last safe haven in the world.\r\n\r\nIn the present day, life within the walls has finally f', 2009, 'Isayama, Hajime', 34, 'blank.png'),
(52, 'Solo Leveling', 'Ten years ago, \"the Gate\" appeared and connected the real world with the realm of magic and monsters. To combat these vile beasts, ordinary people received superhuman powers and became known as \"Hunters.\" Twenty-year-old Sung Jin-Woo is one such Hunter, but he is known as the \"World\'s Weakest,\" owing to his pathetic power compared to even a measly E-Rank. Still, he hunts monsters tirelessly in low-rank Gates to pay for his mother\'s medical bills.\r\n\r\nHowever, this miserable lifestyle changes when', 2018, 'ChugongJang, Sung-rak', 14, 'blank.png'),
(53, 'Tokyo Ghoul', 'Lurking within the shadows of Tokyo are frightening beings known as \"ghouls,\" who satisfy their hunger by feeding on humans once night falls. An organization known as the Commission of Counter Ghoul (CCG) has been established in response to the constant attacks on citizens and as a means of purging these creatures. However, the problem lies in identifying ghouls as they disguise themselves as humans, living amongst the masses so that hunting prey will be easier. Ken Kaneki, an unsuspecting unive', 2011, 'Ishida, Sui', 14, 'blank.png'),
(54, 'One Punch-Man', 'After rigorously training for three years, the ordinary Saitama has gained immense strength which allows him to take out anyone and anything with just one punch. He decides to put his new skill to good use by becoming a hero. However, he quickly becomes bored with easily defeating monsters, and wants someone to give him a challenge to bring back the spark of being a hero.\r\n\r\nUpon bearing witness to Saitama\'s amazing power, Genos, a cyborg, is determined to become Saitama\'s apprentice. During thi', 2012, 'Murata, YusukeONE', 27, 'blank.png'),
(55, 'Jujutsu Kaisen', 'Hidden in plain sight, an age-old conflict rages on. Supernatural monsters known as \"Curses\" terrorize humanity from the shadows, and powerful humans known as \"Jujutsu\" sorcerers use mystical arts to exterminate them. When high school student Yuuji Itadori finds a dried-up finger of the legendary Curse Sukuna Ryoumen, he suddenly finds himself joining this bloody conflict.\r\n\r\nAttacked by a Curse attracted to the finger\'s power, Yuuji makes a reckless decision to protect himself, gaining the powe', 2018, 'Akutami, Gege', 20, 'blank.png'),
(56, 'Spy x Family', 'For the agent known as \"Twilight,\" no order is too tall if it is for the sake of peace. Operating as Westalis\' master spy, Twilight works tirelessly to prevent extremists from sparking a war with neighboring country Ostania. For his latest mission, he must investigate Ostanian politician Donovan Desmond by infiltrating his son\'s school: the prestigious Eden Academy. Thus, the agent faces the most difficult task of his career: get married, have a child, and play family.\r\n\r\nTwilight, or \"Loid Forg', 2019, 'Endou, Tatsuya', 10, 'blank.png'),
(57, 'Hunter x Hunter', '\"Secret treasure hoards, undiscovered wealth... mystical places, unexplored frontiers... \'The mysterious unknown.\' There\'s magic in such words for those captivated by its spell. They are called \'Hunters\'!\"\r\n\r\nGon Freecss wants to become a Hunter so he can find his father, a man who abandoned him to pursue a life of adventure. But it\'s not that simple: only one in one hundred thousand can pass the Hunter Exam, and that is just the first obstacle on his journey. During the Hunter Exam, Gon befrien', 1998, 'Togashi, Yoshihiro', 37, 'blank.png'),
(58, 'Black Butler', 'Tucked away in the English countryside lies the ominous manor of the Phantomhives, a family which has established itself as the cold and ruthless \"Queen\'s Watchdog\" as well as the head of London\'s criminal underground. After a tragedy leaves the Earl and his wife dead, many are shocked when their son, a young boy named Ciel, claims his place as the new Earl of the Phantomhive house. At first, many perceive him only as a child surrounded by a few eccentric servants. But they soon begin to realize', 2006, 'Toboso, Yana', 32, 'blank.png'),
(59, 'Blue Exorcist', 'After a fight with his foster father Shirou Fujimoto, Rin Okumura\'s life is transformed overnight when Rin is revealed to be the son of the demon lord Satan, king of the demonic realm of Gehenna. Soon after, his foster father becomes possessed and dies at the hands of Satan, leaving Rin and his twin brother Yukio alone in the world. Seeking revenge for Fujimoto\'s death, Rin attends True Cross Academy with Yukio in order to become an exorcist and join the Knights of the True Cross.\r\n\r\nRin\'s new p', 2009, 'Katou, Kazue', 27, 'blank.png'),
(60, 'Yona of the Dawn', 'Once upon a time, the kingdom of Kouka was ruled by a red dragon in human form. By his side, four warriors imbued with dragon blood helped him lead the kingdom to prosperity. Time passed, and this tale became a legend to tell children.\r\n\r\nAs the sole princess of Kouka, Yona lives a life of lavish ease. In love with her cousin, Su-won, and protected by her bodyguard, Son Hak, she wants for nothing and remains sheltered from the harrowing reality outside the castle walls. Contrary to this peaceful', 2009, 'Kusanagi, Mizuho', 39, 'blank.png'),
(61, 'A Silent Voice', 'Shouya Ishida, a mischievous elementary school student, finds himself troubled by deaf transfer student Shouko Nishimiya. Despite her genuine attempts to befriend her new classmates, Shouko only proves herself to be an annoyance for Shouya and his friends, provoking them to ridicule her at any possible chance. Soon enough, their taunts turn into constant assault—yet the teachers heartlessly remain apathetic to the situation.\r\n\r\nShouya\'s misdeeds are finally stopped when Shouko transfers to anoth', 2013, 'Ooima, Yoshitoki', 7, 'blank.png'),
(62, 'The Rising of the Shield Hero', 'Twenty-year-old otaku Naofumi Iwatani is mysteriously transported to the otherworldly kingdom of Melromarc. Appearing before the King, Naofumi and three other summoned individuals learn that they are each one of the Four Cardinal Heroes who are tasked with defeating the malicious \"Waves of Catastrophe.\"\r\n\r\nHowever, Naofumi is given only a measly shield and dubbed the \"Shield Hero,\" the weakest of the Four Cardinal Heroes. Owing to his lack of power, none of the kingdom\'s mercenaries wish to aid ', 2014, 'Aiya, KyuAneko, Yusagi', 22, 'blank.png'),
(63, 'Blue Period', 'Second-year high school student Yatora Yaguchi is bored with his normal life. He studies well and plays around with his friends, but in truth, he does not enjoy either of those activities. Bound by norms, he secretly envies those who do things differently.\r\n\r\nThat is until he discovers the joy of drawing. When he sees a painting made by a member of the Art Club, Yatora becomes fascinated with the colors used in it. Later, in an art exercise, he tries to convey his language without words but inst', 2017, 'Yamaguchi, Tsubasa', 12, 'blank.png'),
(64, 'Ao Haru Ride', 'While most girls desire popularity among boys, Futaba Yoshioka wants the exact opposite. After attracting many admirers back in middle school which resulted in her being shunned by her female classmates, she decided that high school will be her chance to revamp her image. Therefore, she starts acting unfeminine and indifferent to boys, allowing her to make some \"friends\" along the way.\r\n\r\nLittle does Futaba know, her life will take another drastic turn when her first love, Kou Mabuchi, returns a', 2011, 'Sakisaka, Io', 13, 'blank.png'),
(65, 'Don\'t Toy With Me, Miss Nagatoro', 'High schooler Hayase Nagatoro loves to spend her free time doing one thing, and that is to bully her Senpai! After Nagatoro and her friends stumble upon the aspiring artist\'s drawings, they find enjoyment in mercilessly bullying the timid Senpai. Nagatoro resolves to continue her cruel game and visits him daily so that she can force Senpai into doing whatever interests her at the time, especially if it makes him uncomfortable.\r\n\r\nSlightly aroused by and somewhat fearful of Nagatoro, Senpai is co', 2017, 'Nanashi\r\n\r\n', 14, 'blank.png'),
(66, 'Horimiya', 'Although admired at school for her amiability and academic prowess, high school student Kyouko Hori has been hiding another side of her. With her parents often away from home due to work, Hori has to look after her younger brother and do the housework, leaving no chance to socialize away from school.\r\n\r\nMeanwhile, Izumi Miyamura is seen as a brooding, glasses-wearing otaku. However, in reality, he is a gentle person inept at studying. Furthermore, he has nine piercings hidden behind his long hai', 2011, 'Hagiwara, Daisuke,HERO', 16, 'blank.png'),
(67, 'Fruits Basket', 'Tooru Honda is an orphan with nowhere to go but a tent in the woods, until the Souma family takes her in. However, the Souma family is no ordinary family, and they hide a grave secret: when they are hugged by someone of the opposite gender, they turn into animals from the Chinese Zodiac!\r\n\r\nNow, Tooru must help Kyou and Yuki Souma hide their curse from their classmates, as well as her friends Arisa Uotani and Saki Hanajima. As she is drawn further into the mysterious world of the Soumas, she mee', 1998, 'Takaya, Natsuki', 23, 'blank.png'),
(68, 'ReLIFE', 'When the responsibilities of being an adult and the ugly side of corporate bullying betrays one\'s childhood dreams, many would wish to return to their innocent childhood to relive their life and make the right decisions. Dumbfounded by the offer presented to him, 27-year-old Arata Kaizaki hopes to turn his life around through a once-in-a-lifetime opportunity.\r\n\r\nReturning home from his part-time job, Arata is persuaded by Ryou Yoake, an employee of ReLife Research Institute, into participating i', 2012, 'Yayoi, Sou', 15, 'blank.png'),
(69, 'Rent-a-Girlfriend', 'Dumped by his girlfriend, emotionally shattered college student Kazuya Kinoshita attempts to appease the void in his heart through a rental girlfriend from a mobile app. At first, Chizuru Mizuhara seems to be the perfect girl with everything he could possibly ask for: great looks and a cute, caring personality.\r\n\r\nUpon seeing mixed opinions on her profile after their first date, and still tormented by his previous relationship, Kazuya believes that Chizuru is just playing around with the hearts ', 2017, 'Miyajima, Reiji', 21, 'blank.png'),
(70, 'Wotakoi: Love is Hard for Otaku', 'Narumi Momose is a petite and cute young woman who loves idols, games, and everything anime or manga-related, especially in the boys\' love genre. In other words, she is a closet otaku and more specifically, a fujoshi. After a breakup due to these kind of interests, she quits her job and joins a new company. At her new workplace, the only colleagues who know about her secret are her childhood friend Hirotaka Nifuji, a blunt gaming otaku; Hanako Koyanagi, a cool and mature-looking beauty; and Taro', 2015, 'Fujita', 11, 'blank.png'),
(71, 'Haikyuu!!', 'The whistle blows. The ball is up. A dig. A set. A spike.\r\n\r\nVolleyball. A sport where two teams face off, separated by a formidable, wall-like net.\r\n\r\nThe \"Little Giant,\" standing at only 170 cm, overcomes the towering net and the wall of blockers. The awe-inspired Shouyou Hinata looks on at the ace\'s crow-like figure. Determined to reach great heights like the Little Giant, small-statured Hinata finally manages to form a team in his last year of junior high school, and enters his first volleyb', 2012, 'Furudate, Haruichi', 45, 'blank.png'),
(72, 'Kuroko\'s BasketbalL', 'Teikou Middle School is famous for its highly renowned basketball team, which produced the famed \"Generation of Miracles\": a team of five prodigies, each with their own unique abilities, considered to be undefeatable by the time they became third years. However, blinded by pride, they split up, entering different high schools upon graduation.\r\n\r\nTaiga Kagami, having just returned from America, joins the basketball team at Seirin High School in search of strong team members. There, he finds Tetsu', 2008, 'Fujimaki, Tadatoshi', 30, 'blank.png'),
(73, 'Eyeshield 21', 'Timid, diminutive, and frequently the target of bullies, Sena Kobayakawa has just enrolled at Deimon Private High School. When he angers a group of delinquents by refusing to act as their errand boy, he makes an incredibly speedy getaway, an ability he has developed through years of running from his tormentors.\r\n\r\nYouichi Hiruma—the demonic captain of the Deimon Devil Bats football team—happens to be nearby, and seeing Sena\'s \"golden legs\" at work, forcibly recruits him as a running back despite', 2002, 'Inagaki, RiichiroMurata, Yusuke', 37, 'blank.png');

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `production_id` int(9) NOT NULL,
  `studio_id` int(9) NOT NULL,
  `anime_id` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`production_id`, `studio_id`, `anime_id`) VALUES
(1, 7, 1),
(2, 7, 24),
(3, 8, 2),
(4, 9, 3),
(5, 10, 4),
(6, 11, 5),
(7, 12, 6),
(8, 13, 7),
(9, 13, 8),
(10, 13, 9),
(11, 13, 13),
(12, 13, 15),
(13, 14, 10),
(14, 14, 12),
(15, 15, 11),
(16, 16, 14),
(17, 17, 16),
(18, 18, 17),
(19, 1, 19),
(20, 1, 28),
(21, 19, 20),
(22, 20, 22),
(23, 12, 21),
(24, 12, 23),
(25, 2, 29),
(26, 3, 31),
(27, 4, 30),
(28, 5, 34),
(29, 6, 27),
(30, 6, 26);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(9) NOT NULL,
  `anime_id` int(9) DEFAULT NULL,
  `manga_id` int(9) DEFAULT NULL,
  `user_id` int(9) NOT NULL,
  `title` varchar(100) NOT NULL,
  `star_rating` decimal(1,0) NOT NULL DEFAULT 0 COMMENT 'must be between 0 and 5',
  `content` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `anime_id`, `manga_id`, `user_id`, `title`, `star_rating`, `content`) VALUES
(1, 10, NULL, 1, 'Jujutsu Kaisen doesn’t feel like a massively grand vision yet', '3', 'In its characters, its story structure, its tone, and its ease to hop into exciting powerup action the animation team flexed over, it gets what audiences want from Shonen material as a strong start to a story while removing or playing down stuff that’s been less palatable overtime'),
(2, 4, NULL, 1, 'LOVE IT', '5', 'Code Geass is one of my favorite anime. Why? It\'s filled with so much action, bombastic dialogue, and has such eye-catching visuals that it tops the charts in entertainment value. This is an exciting and epic anime and it\'s over the top.'),
(3, 10, NULL, 2, 'Jujutsu Kaisen THE BEST', '5', 'GO WATCH IT OH . MY . GODNESS IT IS SOOO GOOD I CANNOT EVEN BEGIN FO TO TELL YOU !!!\r\nThe animation is wonderful plus the voice acting and the characters are wonderful '),
(4, 8, NULL, 2, 'This is a good anime, besides me feeling like the writers or makers are sexist', '0', 'It has cons like plot holes, lack of side character action its like the side characters are forgatten and they show naruto\'s flashback so many times. The female characters are just bad. And another bad thing that it is repetitive I have to be honest Naruto: Shippuden has its repeated parts and its just getting predictable'),
(5, NULL, 52, 1, 'Solo Leveling', '3', 'Solo Leveling is good, but it doesn\'t feel like anything new. Cliches are not always a bad thing, a manga/anime can be very cliche and still be amazing.'),
(6, 16, NULL, 3, 'Fire Force !!!!', '5', 'Loved it! It is definitely in my top ten favorite anime. It is one of the funniest animes I\'ve watched. The setting is never lacking and always feels new. Every fire station is like a whole new world. Just don\'t give up on it on the first episode because it gets way better the farther into the storyline we go, with amazing plot twists and engaging characters. The show did a good job of making serious topics hilarious. This anime is definitely worth a watch.');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `studio_id` int(9) NOT NULL,
  `production_id` int(9) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`studio_id`, `production_id`, `name`, `location`, `description`) VALUES
(1, NULL, 'CloverWork', NULL, 'CloverWorks (CloverWorks, Inc) is a Japanese subsidiary animation company from Suginami, Tokyo. It was original named Kouenji Studio under A-1 Pictures owned by parent company Aniplex. The studio was '),
(2, NULL, 'Orange', 'Musashino, Tokyo ', 'Orange Co., Ltd. is a Japanese animation studio that specializes in the production of 3DCG animation. The studio is known for its exaggerated 3D and directing style, which differs from the traditional'),
(3, NULL, 'Kinema Citrus', 'Suginami, Tokyo', 'Kinema Citrus Co., Ltd. is a Japanese animation studio, founded on March 3, 2008, by former Production I.G and Bones members. Its business directors are Muneki Ogasawara, Yuichiro Matsuka and Masaki T'),
(4, NULL, 'Ajia-do Animation Works Inc.', '', 'Ajia-do Animation Works Inc is a Japanese animation studio established on October 4, 1978. It is noted for anime series including Spirit of Wonder, Absolute Boy, Izetta: The Last Witch, and several ot'),
(5, NULL, 'Seven Arcs ', '', 'Seven Arcs Co., Ltd. (Japanese: 株式会社Seven Arcs, Hepburn: Kabushiki-gaisha Sebun Ākusu) is a Japanese anime production company and former studio, established on May 31, 2002, by former Pierrot staff. T'),
(6, NULL, 'Production I.G', 'Musashino, Tokyo, Japan', 'Production I.G, Inc. is a Japanese animation studio and production enterprise, founded on December 15, 1987, by Mitsuhisa Ishikawa. The letters I and G derive from the names of the company founders: p'),
(7, NULL, 'A-1 Pictures', 'Tokyo', 'A-1 Pictures Inc. is a Japanese animation studio founded by ex-Sunrise producer\r\nMikihiro Iwata and it is a subsidiary of Sony Music Entertainment Japan\'s anime\r\nproduction firm Aniplex'),
(8, NULL, 'Ufotable', 'Tokyo', 'Ufotable, Inc is a Japanese animation studio founded in October 2000 by former\r\nstaff of the TMS Entertainment subsidiary Telecom Animation Film'),
(9, NULL, 'Studio Nippon Animation', 'Tokyo', 'Nippon Animation is a Japanese animation studio. The company is\r\nheadquartered in Tokyo, with chief offices in the Ginza district of Chūō and\r\nproduction facilities in Tama City. Nippon Animation. Typ'),
(10, NULL, 'Bandai Namco Filmworks', '', 'Bandai Namco Filmworks Inc., previously and still famously known as Sunrise, Inc.,\r\nis a Japanese animation studio founded in September 1972 and is based in\r\nSuginami, Tokyo. Its former names were als'),
(11, NULL, 'TMS Entertainment', 'Tokyo', 'TMS Entertainment Co., Ltd., formerly known as the Tokyo Movie Shinsha Co., Ltd,\r\nalso known as Tokyo Movie or TMS-Kyokuichi, is a Japanese animation studio\r\nestablished on October 22, 1946'),
(12, NULL, 'Madhouse Inc', '', 'Madhouse Inc is a Japanese animation studio founded in 1972 by ex–Mushi Pro\r\nanimators, including Masao Maruyama, Osamu Dezaki, Rintaro and Yoshiaki\r\nKawajiri. Madhouse is one of the most successful a'),
(13, NULL, 'Pierrot', 'Mitaka, Tokyo', 'Pierrot Co., Ltd. is a Japanese animation studio established in May 1979 by former\r\nemployees of both Tatsunoko Production and Mushi Production. '),
(14, NULL, 'MAPPA', 'Suginami,Tokyo', 'MAPPA Co., Ltd. is a Japanese animation studio Founded in 2011 by Madhouse co-founder and producer Masao Maruyama'),
(15, NULL, 'Bones', '', 'Bones Inc. is a Japanese animation studio. It has produced numerous series,\r\nincluding RahXephon, No. 6, Wolf\'s Rain, Scrapped Princess, Eureka Seven,\r\nAngelic Layer, Darker than Black, Soul Eater.'),
(16, NULL, 'Toei Animation', 'Tokyo', 'Toei Animation Co., Ltd. is a Japanese animation studio primarily controlled by its\r\nnamesake Toei Company'),
(17, NULL, 'David Production', 'Nishitōkyō, Tokyo.', 'David Production Inc. is a Japanese animation studio founded in September 2007.  Notable works from the studio include JoJo\'s\r\nBizarre Adventure, Cells at Work!, and Fire Force.'),
(18, NULL, 'Liden Films', ' Kamiogi, Suginami, Tokyo,', 'Liden Films, Inc. is a Japanese animation studio and production.The company has since expanded, currently consisting of five separate branches and the Suginami branch: Liden Films Kyoto Studio.'),
(19, NULL, 'White Fox', NULL, 'White Fox is a Japanese animation studio founded in April 2007 by Gaku Iwasa. The studio\'s most successful productions include adaptations of Steins;Gate, and Re:Zero − Starting Life in Another World,'),
(20, NULL, 'Manglobe', 'Suginami, Tokyo ', 'Manglobe Inc. was a Japanese animation studio and active from 2002 to 2015. The studio was formed on February 7, 2002 by Sunrise producers Shinichirō Kobayashi and Takashi Kochiyama.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(9) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password_hash` varchar(63) NOT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `fname`, `lname`, `email`, `password_hash`, `phone`) VALUES
(1, 'Al', 'Alfred', 'Rath', 'alfredrath@gmail.com', 'FHAKUFEBSFHKFSZFISJDL', '514 779 9903'),
(2, 'Pete', 'Peter', 'Dash', 'peteeee4044@hotmail.com', 'JSFSLIMPFAFNLAZMlMO', '427 904 9900'),
(3, 'Abdul', 'Abdullah', 'Mukherjee', 'AbdullahMuj69@gmail.com', 'UIROWEIROWEUCCVJYHGUYJ', '514 666 7777'),
(4, 'AW', 'Annie ', 'Williams', 'AnnieTheBest@hotmail.com', 'YTERUOWEUROWEDLSJFIE', '514 889 9333'),
(5, 'trice', 'Beatrice ', 'Johnson', 'BeatriceLove4@gmail.com', 'TRUWYERTEUUREOWOU', '438 898 1009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`anime_id`),
  ADD UNIQUE KEY `ANIME_NAME_UNIQUE` (`name`),
  ADD KEY `ANIME_PRODUCTION_FK` (`production_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `genre_list`
--
ALTER TABLE `genre_list`
  ADD PRIMARY KEY (`genre_list_id`),
  ADD KEY `GENRELIST_GENRE_FK` (`genre_id`),
  ADD KEY `GENRELIST_ANIME_FK` (`anime_id`),
  ADD KEY `GENRELIST_MANGA_FK` (`manga_id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `LIST_USER_FK` (`user_id`),
  ADD KEY `LIST_ANIME_FK` (`anime_id`),
  ADD KEY `LIST_MANGA_FK` (`manga_id`);

--
-- Indexes for table `manga`
--
ALTER TABLE `manga`
  ADD PRIMARY KEY (`manga_id`),
  ADD UNIQUE KEY `MANGA_NAME_UNIQUE` (`name`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`production_id`),
  ADD KEY `PRODUCTION_STUDIO_FK` (`studio_id`),
  ADD KEY `PRODUCTION_ANIME_FK` (`anime_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `REVIEW_USER_FK` (`user_id`),
  ADD KEY `REVIEW_ANIME_FK` (`anime_id`),
  ADD KEY `REVIEW_MANGA_FK` (`manga_id`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`studio_id`),
  ADD KEY `STUDIO_PRODUCTION_FK` (`production_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `USERNAME_UNIQUE` (`username`),
  ADD UNIQUE KEY `USER_EMAIL_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anime`
--
ALTER TABLE `anime`
  MODIFY `anime_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `genre_list`
--
ALTER TABLE `genre_list`
  MODIFY `genre_list_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `list_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `manga`
--
ALTER TABLE `manga`
  MODIFY `manga_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `production_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `studio`
--
ALTER TABLE `studio`
  MODIFY `studio_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anime`
--
ALTER TABLE `anime`
  ADD CONSTRAINT `ANIME_PRODUCTION_FK` FOREIGN KEY (`production_id`) REFERENCES `production` (`production_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `genre_list`
--
ALTER TABLE `genre_list`
  ADD CONSTRAINT `GENRELIST_ANIME_FK` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GENRELIST_GENRE_FK` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GENRELIST_MANGA_FK` FOREIGN KEY (`manga_id`) REFERENCES `manga` (`manga_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `list`
--
ALTER TABLE `list`
  ADD CONSTRAINT `LIST_ANIME_FK` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `LIST_MANGA_FK` FOREIGN KEY (`manga_id`) REFERENCES `manga` (`manga_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `LIST_USER_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `PRODUCTION_ANIME_FK` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PRODUCTION_STUDIO_FK` FOREIGN KEY (`studio_id`) REFERENCES `studio` (`studio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ANIME_FK` FOREIGN KEY (`anime_id`) REFERENCES `anime` (`anime_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `REVIEW_MANGA_FK` FOREIGN KEY (`manga_id`) REFERENCES `manga` (`manga_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `REVIEW_USER_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `STUDIO_PRODUCTION_FK` FOREIGN KEY (`production_id`) REFERENCES `production` (`production_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
