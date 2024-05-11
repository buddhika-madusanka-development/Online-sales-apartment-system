-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 07:20 PM
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
-- Database: `online_apartment_sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `user_ID` int(11) NOT NULL,
  `agent_ID` int(11) NOT NULL,
  `agent_phone_number` varchar(15) NOT NULL,
  `agent_NIC` varchar(15) NOT NULL,
  `agent_agency` varchar(40) NOT NULL,
  `agent_experience` int(11) NOT NULL,
  `agent_customer_count` int(11) NOT NULL,
  `agent_short_description` varchar(256) NOT NULL,
  `agent_description` text NOT NULL,
  `agent_cover_img` text NOT NULL,
  `project_count` int(11) NOT NULL DEFAULT 4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`user_ID`, `agent_ID`, `agent_phone_number`, `agent_NIC`, `agent_agency`, `agent_experience`, `agent_customer_count`, `agent_short_description`, `agent_description`, `agent_cover_img`, `project_count`) VALUES
(4, 1, '5556667777', 'GHI123', 'Dream Homes', 5, 50, 'Gifted with extraordinary psychic abilities, this agent delves into the supernatural to solve mysteries and confront otherworldly threats. With their unique powers of perception and intuition, they can perceive hidden truths, communicate telepathically, an', 'In a world teetering on the brink of disaster, where the slightest misstep could unleash untold horrors upon humanity, there exists a figure whose bravery knows no bounds – the Biohazard Specialist. Trained to handle the most dangerous substances known to man, this agent is a frontline defender against the threat of biological warfare, equipped with the knowledge and expertise to contain outbreaks and neutralize threats before they can spread.Armed with state-of-the-art protective gear and specialized equipment, the Biohazard Specialist operates in some of the most hazardous environments on Earth, their every move calculated to minimize the risk of contamination. From identifying deadly pathogens to developing countermeasures against bioterrorism, they are the first line of defense against a silent and invisible enemy.But it is not merely their technical expertise that sets them apart, but their compassion and dedication to the greater good. From risking their own lives to save others to tirelessly working to find cures for deadly diseases, the Biohazard Specialist is a hero in every sense of the word.Yet, for all their bravery and selflessness, the Biohazard Specialist remains a mystery to those they serve. Their true identity hidden behind layers of protective gear and hazardous materials, they are a guardian of the unseen, a silent sentinel watching over the world from the shadows. Yet, beneath the surface lies a soul driven by a desire to protect and heal, to ensure that humanity can thrive in a world fraught with danger.In a world where the threat of biological catastrophe looms large, the Biohazard Specialist is a beacon of hope, a protector of the innocent and a defender against the forces of darkness, ready to confront any danger and overcome any', 'John_Doe_Cover.jpg', 4),
(5, 2, '2223334444', 'JKL456', 'Smith Realty', 8, 70, 'Gifted with extraordinary psychic abilities, this agent delves into the supernatural to solve mysteries and confront otherworldly threats. With their unique powers of perception and intuition, they can perceive hidden truths, communicate telepathically, an', 'In the lawless underbelly of society, where the only rule is survival of the fittest, there exists a figure whose name strikes fear into the hearts of their enemies – the Mercenary Maverick. A lone wolf for hire, this agent operates on the fringes of morality, taking on any job for the right price, no matter how dangerous or dirty.Trained in the art of combat and warfare, the Mercenary Maverick is a force to be reckoned with on the battlefield, their skills honed through years of blood, sweat, and tears. Armed with an arsenal of weapons and a ruthless determination, they stop at nothing to accomplish their objectives, leaving a trail of destruction in their wake.But it is not merely their combat prowess that sets them apart, but their cunning and resourcefulness in the face of adversity. From infiltrating enemy strongholds to extracting high-value targets, the Mercenary Maverick approaches every mission with a combination of skill and strategy, always one step ahead of their adversaries.Yet, for all their bravado and swagger, the Mercenary Maverick remains a mystery to those they serve. Their true motives hidden behind a facade of indifference and detachment, they are a lone wolf in a world of wolves, trusting only their instincts and their survival skills to guide them through the chaos. Yet, beneath the surface lies a soul driven by a desire for freedom, a need to carve out their own path in a world ruled by chaos and violence.In a world where loyalty is a commodity and betrayal lurks around every corner, the Mercenary Maverick is a survivor, a warrior without fear and without mercy, ready to take on any job and any adversary that stands in their way.', 'Jane_Smith_Cover.jpg', 4),
(10, 4, '1112223333', 'YZA123', 'Prime Realty', 6, 60, 'A hardened veteran of countless battles, known for their ruthless efficiency and willingness to take on any job for the right price. Operating outside the constraints of conventional morality, this agent is a force to be reckoned with on the battlefield, u', 'In the lawless underbelly of society, where the only rule is survival of the fittest, there exists a figure whose name strikes fear into the hearts of their enemies – the Mercenary Maverick. A lone wolf for hire, this agent operates on the fringes of morality, taking on any job for the right price, no matter how dangerous or dirty.Trained in the art of combat and warfare, the Mercenary Maverick is a force to be reckoned with on the battlefield, their skills honed through years of blood, sweat, and tears. Armed with an arsenal of weapons and a ruthless determination, they stop at nothing to accomplish their objectives, leaving a trail of destruction in their wake.But it is not merely their combat prowess that sets them apart, but their cunning and resourcefulness in the face of adversity. From infiltrating enemy strongholds to extracting high-value targets, the Mercenary Maverick approaches every mission with a combination of skill and strategy, always one step ahead of their adversaries.Yet, for all their bravado and swagger, the Mercenary Maverick remains a mystery to those they serve. Their true motives hidden behind a facade of indifference and detachment, they are a lone wolf in a world of wolves, trusting only their instincts and their survival skills to guide them through the chaos. Yet, beneath the surface lies a soul driven by a desire for freedom, a need to carve out their own path in a world ruled by chaos and violence.In a world where loyalty is a commodity and betrayal lurks around every corner, the Mercenary Maverick is a survivor, a warrior without fear and without mercy, ready to take on any job and any adversary that stands in their way.', 'Olivia_Thomas_Cover.jpg', 4),
(11, 5, '9990001111', 'BCD456', 'Sunset Realty', 4, 40, 'But it\'s not just their physical prowess that sets them apart; it\'s their keen intellect and quick thinking under pressure that truly defines them. Whether infiltrating a high-security facility to retrieve sensitive intel or extracting a high-profile targe', 'In a world teetering on the brink of disaster, where the slightest misstep could unleash untold horrors upon humanity, there exists a figure whose bravery knows no bounds – the Biohazard Specialist. Trained to handle the most dangerous substances known to man, this agent is a frontline defender against the threat of biological warfare, equipped with the knowledge and expertise to contain outbreaks and neutralize threats before they can spread.Armed with state-of-the-art protective gear and specialized equipment, the Biohazard Specialist operates in some of the most hazardous environments on Earth, their every move calculated to minimize the risk of contamination. From identifying deadly pathogens to developing countermeasures against bioterrorism, they are the first line of defense against a silent and invisible enemy.But it is not merely their technical expertise that sets them apart, but their compassion and dedication to the greater good. From risking their own lives to save others to tirelessly working to find cures for deadly diseases, the Biohazard Specialist is a hero in every sense of the word.Yet, for all their bravery and selflessness, the Biohazard Specialist remains a mystery to those they serve. Their true identity hidden behind layers of protective gear and hazardous materials, they are a guardian of the unseen, a silent sentinel watching over the world from the shadows. Yet, beneath the surface lies a soul driven by a desire to protect and heal, to ensure that humanity can thrive in a world fraught with danger.In a world where the threat of biological catastrophe looms large, the Biohazard Specialist is a beacon of hope, a protector of the innocent and a defender against the forces of darkness, ready to confront any danger and overcome any', 'William_White_Cover.jpg', 4),
(12, 6, '6667778888', 'EFG789', 'Metro Properties', 10, 100, 'A digital detective skilled in uncovering secrets and tracking down targets in the vast expanse of cyberspace. With unparalleled expertise in hacking and computer forensics, this agent is a formidable force in the realm of cyber warfare, capable of gatheri', 'In the vast expanse of cyberspace, where data flows like a river and secrets lie hidden behind layers of encryption, there exists a digital detective whose skills are unmatched – the Cyber Sleuth. With a keen eye for detail and an insatiable curiosity, this agent navigates the virtual realm with ease, uncovering secrets and tracking down targets with relentless determination.Trained in the art of hacking and computer forensics, the Cyber Sleuth is a formidable force in the world of cyber warfare, capable of infiltrating even the most secure networks and uncovering information that others thought was lost forever. Armed with a suite of cutting-edge tools and software, they leave no digital stone unturned in their quest for the truth.From tracking down cybercriminals to thwarting enemy cyber attacks, the Cyber Sleuth is always one step ahead, their mind a well-oiled machine of logic and intuition. Yet, it is not merely their technical expertise that sets them apart, but their ability to think outside the box and see patterns where others see only chaos.But for all their prowess in the digital realm, the Cyber Sleuth remains a mystery to those they serve. Their true identity hidden behind layers of code and encryption, they are a ghost in the machine, a digital shadow whose presence is felt but never seen. Yet, beneath the surface lies a soul driven by a desire for justice, a need to uncover the truth and protect the innocent from the dangers of the digital world.In a world where information is power and every click leaves a trace, the Cyber Sleuth is a guardian of the digital frontier, a protector of the innocent and a hunter of the guilty, ready to defend the virtual realm from those who seek to do it harm.', 'Emma_Jackson_Cover.jpg', 4),
(4, 21, '5556667777', 'GHI123', 'Dream Homes', 5, 50, 'Stealth Operative: A master of infiltration and extraction, adept at navigating the shadows and completing missions unnoticed. Armed with cutting-edge technology and elite training, this agent excels in stealthy operations, gathering intel, and neutralizin', 'In the heart of the clandestine world, amidst the shifting shadows of intrigue and deception, there exists a figure whose very existence is shrouded in mystery – the Stealth Operative. This enigmatic agent operates at the nexus of espionage and subterfuge, a master of infiltration and extraction whose skills are matched only by their dedication to the mission. Born from the crucible of elite training programs, the Stealth Operative has honed their craft to perfection, blending seamlessly into the background, their movements as silent as the whispers of the wind.Equipped with the latest in cutting-edge technology and armed with a formidable arsenal of gadgets, the Stealth Operative navigates the treacherous landscapes of enemy territory with ease. From silent grappling hooks to state-of-the-art night vision goggles, every tool serves a purpose, every device a means to an end. Yet, it is not merely their equipment that sets them apart, but their keen intellect and unwavering determination in the face of danger.Whether infiltrating a high-security facility to retrieve sensitive intelligence or extracting a high-value target from hostile territory, the Stealth Operative operates with surgical precision, leaving no room for error. Their missions are fraught with peril, their every move a calculated risk, but they thrive on the adrenaline rush of the chase, turning the tide of battle with a well-placed blow or a perfectly timed distraction.But for all their skill and prowess, the Stealth Operative remains a mystery to those they serve. Their true identity hidden behind layers of aliases and false personas, they are a lone wolf in a world of wolves, trusting only their instincts and their training to guide them through the darkness. Yet, beneath the mask lies a soul driven by a singular purpose: to protect the innocent, uphold justice, and ensure that the shadows remain their domain, where they can strike unseen and vanish without a trace.In a world where secrets are currency and betrayal lurks around every corner, the Stealth Operative is a beacon of hope, a silent guardian watching over the world from the shadows, ready to answer the call of duty whenever and wherever it may lead.', 'John_Doe_Cover.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `apartment_ID` int(11) NOT NULL,
  `apartment_type` varchar(10) NOT NULL,
  `apartment_name` varchar(256) NOT NULL,
  `publisher_date` date NOT NULL,
  `publisher_ID` int(11) NOT NULL,
  `apartment_first_address_line` varchar(60) NOT NULL,
  `apartment_second_address_line` varchar(60) NOT NULL,
  `apartment_city` varchar(20) NOT NULL,
  `apartment_contact_number` varchar(15) NOT NULL,
  `apartment_cost` int(11) NOT NULL,
  `apartment_person_count` int(11) NOT NULL,
  `apartment_number_rooms` int(11) NOT NULL,
  `apartment_description` text NOT NULL,
  `apartment_image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`apartment_ID`, `apartment_type`, `apartment_name`, `publisher_date`, `publisher_ID`, `apartment_first_address_line`, `apartment_second_address_line`, `apartment_city`, `apartment_contact_number`, `apartment_cost`, `apartment_person_count`, `apartment_number_rooms`, `apartment_description`, `apartment_image`) VALUES
(1, 'rental', 'TranquilTerrace', '2024-05-05', 1, 'No. 123, Galle Road', 'Colombo 06', 'Colombo', '0712345678', 50000, 4, 3, 'Spacious apartment with a beautiful view of the city', 'img1.jpg'),
(2, 'sale', 'SereneSlope', '2024-05-05', 4, 'No. 456, Negombo Road', 'Kandy', 'Kandy', '0776543210', 10000000, 2, 2, 'Modern apartment in the heart of Kandy', 'img4.jpg'),
(3, 'rental', 'MajesticMeadows', '2024-05-05', 1, 'No. 789, Havelock Road', 'Colombo 05', 'Colombo', '0765432109', 75000, 3, 2, 'Cozy apartment close to amenities', 'img3.jpg'),
(4, 'sale', 'SunsetSanctuary', '2024-05-05', 4, 'No. 321, Galle Road', 'Mount Lavinia', 'Colombo', '0723456789', 15000000, 3, 3, 'Luxurious beachfront apartment with modern amenities', 'img5.jpg'),
(5, 'sale', 'BlissfulBorough', '2024-05-05', 4, 'No. 456, Negombo Road', 'Kandy', 'Kandy', '0776543210', 10000000, 2, 2, 'Modern apartment in the heart of Kandy', 'img2.jpg'),
(6, 'sale', 'HarmonyHeights', '0000-00-00', 3, '136/c', '2nd Lane', 'Mtara', '0741234567', 500000, 3, 3, 'hjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrkhjrgewhrkelwhrwekrk', 'img6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `apartment_comment`
--

CREATE TABLE `apartment_comment` (
  `comment_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `apartment_ID` int(11) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_ID` int(11) NOT NULL,
  `apartment_id` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `room_count` int(11) NOT NULL,
  `day_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `document_ID` int(11) NOT NULL,
  `agent_ID` int(11) NOT NULL,
  `document_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_ID` int(11) NOT NULL,
  `apartment_ID` int(11) NOT NULL,
  `image_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meeting_date` date DEFAULT NULL,
  `meeting_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`meeting_id`, `user_id`, `meeting_date`, `meeting_time`) VALUES
(7, 13, '2024-05-07', '15:00:00'),
(11, 2, '2024-05-08', '05:16:00'),
(18, 2, '2024-05-10', '08:43:00'),
(19, 2, '2024-05-29', '08:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_ID` int(11) NOT NULL,
  `sender_ID` int(11) NOT NULL,
  `seller_ID` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `request_date` date NOT NULL DEFAULT current_timestamp(),
  `uesr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `request_date`, `uesr_id`) VALUES
(1, '2024-05-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `user_ID` int(11) NOT NULL,
  `seller_ID` int(11) NOT NULL,
  `seller_phone_number` varchar(15) NOT NULL,
  `seller_NIC` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`user_ID`, `seller_ID`, `seller_phone_number`, `seller_NIC`) VALUES
(1, 1, '1234567890', 'ABC123'),
(2, 2, '0987654321', 'XYZ456'),
(3, 3, '1112223333', 'DEF789'),
(7, 4, '7778889999', 'PQR123'),
(8, 5, '4445556666', 'STU456'),
(9, 6, '3332221111', 'VWX789');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `user_mail` varchar(40) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_first_name` varchar(40) NOT NULL,
  `user_last_name` varchar(40) NOT NULL,
  `user_account_type` varchar(15) NOT NULL DEFAULT 'user',
  `user_profile_picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_ID`, `user_mail`, `user_password`, `user_first_name`, `user_last_name`, `user_account_type`, `user_profile_picture`) VALUES
(1, 'john.doe@example.com', 'password123', 'John', 'Doe', 'user', 'John_Doe.jpg'),
(2, 'jane.smith@example.com', 'secret456', 'Jane', 'Smith', 'seller', 'Jane_Smith.jpg'),
(3, 'mike.johnson@example.com', 'p@ssw0rd', 'Mike', 'Johnson', 'agent', 'Mike_Johnson.jpg'),
(4, 'sara.williams@example.com', 'securepass', 'Sara', 'Williams', 'user', 'Sara_Williams.jpg'),
(5, 'david.brown@example.com', '123456', 'David', 'Brown', 'seller', 'David_Brown.jpg'),
(7, 'jacob.anderson@example.com', 'anderson123', 'Jacob', 'Anderson', 'user', 'Jacob_Anderson.jpg'),
(8, 'olivia.thomas@example.com', 'thomas456', 'Olivia', 'Thomas', 'seller', 'Olivia_Thomas.jpg'),
(9, 'william.white@example.com', 'whitepass', 'William', 'White', 'agent', 'William_White.jpg'),
(10, 'emma.jackson@example.com', 'jackson123', 'Emma', 'Jackson', 'user', 'Emma_Jackson.jpg'),
(11, 'noah.harris@example.com', 'harris456', 'Noah', 'Harris', 'seller', 'Noah_Harris.jpg'),
(12, 'ava.martin@example.com', 'martinpass', 'Ava', 'Martin', 'agent', 'Ava_Martin.jpg'),
(13, 'liam.thompson@example.com', 'thompson123', 'Liam', 'Thompson', 'user', 'Liam_Thompson.jpg'),
(14, 'mia.garcia@example.com', 'garciapass', 'Mia', 'Garcia', 'seller', 'Mia_Garcia.jpg'),
(15, 'ethan.martinez@example.com', 'martinez456', 'Ethan', 'Martinez', 'agent', 'Ethan_Martinez.jpg'),
(16, 'isabella.robinson@example.com', 'robinsonpass', 'Isabella', 'Robinson', 'user', 'Isabella_Robinson.jpg'),
(17, 'james.clark@example.com', 'clark123', 'James', 'Clark', 'seller', 'James_Clark.jpg'),
(18, 'ava.rodriguez@example.com', 'rodriguezpass', 'Ava', 'Rodriguez', 'agent', 'Ava_Rodriguez.jpg'),
(19, 'logan.lewis@example.com', 'lewis123', 'Logan', 'Lewis', 'user', 'Logan_Lewis.jpg'),
(20, 'amelia.lee@example.com', 'leepass', 'Amelia', 'Lee', 'seller', 'Amelia_Lee.jpg'),
(21, 'benjamin.walker@example.com', 'walker123', 'Benjamin', 'Walker', 'agent', 'Benjamin_Walker.jpg'),
(22, 'mia.hall@example.com', 'hallpass', 'Mia', 'Hall', 'user', 'Mia_Hall.jpg'),
(23, 'lucas.allen@example.com', 'allen123', 'Lucas', 'Allen', 'seller', 'Lucas_Allen.jpg'),
(24, 'charlotte.young@example.com', 'youngpass', 'Charlotte', 'Young', 'agent', 'Charlotte_Young.jpg'),
(25, 'harper.hernandez@example.com', 'hernandezpass', 'Harper', 'Hernandez', 'user', 'Harper_Hernandez.jpg'),
(26, 'daniel.harris@example.com', 'harris123', 'Daniel', 'Harris', 'seller', 'Daniel_Harris.jpg'),
(27, 'amelia.king@example.com', 'kingpass', 'Amelia', 'King', 'agent', 'Amelia_King.jpg'),
(28, 'oliver.scott@example.com', 'scottpass', 'Oliver', 'Scott', 'user', 'Oliver_Scott.jpg'),
(29, 'madison.green@example.com', 'green123', 'Madison', 'Green', 'seller', 'Madison_Green.jpg'),
(30, 'henry.baker@example.com', 'bakerpass', 'Henry', 'Baker', 'agent', 'Henry_Baker.jpg'),
(31, 'ava.adams@example.com', 'adamspass', 'Ava', 'Adams', 'user', 'Ava_Adams.jpg'),
(32, 'evelyn.campbell@example.com', 'campbell123', 'Evelyn', 'Campbell', 'seller', 'Evelyn_Campbell.jpg'),
(33, 'jackson.hill@example.com', 'hillpass', 'Jackson', 'Hill', 'agent', 'Jackson_Hill.jpg'),
(34, 'scarlett.ward@example.com', '123', 'Scarlett', 'Ward', 'user', 'Scarlett_Ward.jpg'),
(35, 'michael.turner@example.com', 'turnerpass', 'Michael', 'Turner', 'seller', 'Michael_Turner.jpg'),
(36, 'aubrey.perez@example.com', 'perez123', 'Aubrey', 'Perez', 'agent', 'Aubrey_Perez.jpg'),
(37, 'zoe.cooper@example.com', 'cooperpass', 'Zoe', 'Cooper', 'user', 'Zoe_Cooper.jpg'),
(38, 'carter.rivera@example.com', 'riverapass', 'Carter', 'Rivera', 'seller', 'Carter_Rivera.jpg'),
(39, 'grace.ortiz@example.com', 'ortiz123', 'Grace', 'Ortiz', 'agent', 'Grace_Ortiz.jpg'),
(40, 'matthew.mitchell@example.com', 'mitchellpass', 'Matthew', 'Mitchell', 'user', 'Matthew_Mitchell.jpg'),
(41, 'aubrey.bailey@example.com', 'baileypass', 'Aubrey', 'Bailey', 'seller', 'Aubrey_Bailey.jpg'),
(42, 'lily.gomez@example.com', 'gomez123', 'Lily', 'Gomez', 'agent', 'Lily_Gomez.jpg'),
(43, 'owen.edwards@example.com', 'edwardspass', 'Owen', 'Edwards', 'user', 'Owen_Edwards.jpg'),
(44, 'ellie.brooks@example.com', 'brooks123', 'Ellie', 'Brooks', 'seller', 'Ellie_Brooks.jpg'),
(45, 'nathan.collins@example.com', 'collinspass', 'Nathan', 'Collins', 'agent', 'Nathan_Collins.jpg'),
(46, 'buddhikamadusanka2000@gmail.com', '$2y$10$YWI5Tv9QrSHrm', 'Buddhika', 'Madunsaka', '', ''),
(47, 'example@gmail.com', '$2y$10$D1nQvC8KWNbJH', 'sample', 'example', 'user', 'sample_example'),
(48, 'gaveen@gmail.com', '1234', 'gaveen ', 'hasira ', 'user', 'gaveenhasira'),
(49, 'gaveen@gmail.com', '1234', 'gaveen ', 'hasira ', 'user', 'gaveenhasira'),
(50, 'test1@gmail.com', '$2y$10$bKe3pupWcpEN3', 'TEST', 'TEST2', 'user', 'TEST_TEST2'),
(51, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(52, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(53, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(54, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(55, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(56, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(57, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(58, 'test1@gmail.com', '2002061723257', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(59, 'test11@gmail.com', '123456789QWER', 'TEST', 'TEST2', 'user', 'TEST_TEST2.jpg'),
(60, 'Gaveencheck2@gmail.com', '200216907856', 'GAVEEN', 'HASIRA', 'user', 'GAVEEN_HASIRA.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_ID`),
  ADD KEY `AGENT_FK` (`user_ID`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`apartment_ID`),
  ADD KEY `APARTMENT_FK` (`publisher_ID`);

--
-- Indexes for table `apartment_comment`
--
ALTER TABLE `apartment_comment`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `FK_APARTMENT_COMMENT_USER` (`user_ID`),
  ADD KEY `FK_APARTMENT_COMMENT_APARTMENT` (`apartment_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_ID`),
  ADD KEY `FK_BOOKING_APARTMENT` (`apartment_id`),
  ADD KEY `FK_BOOKING_USER` (`user_ID`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_ID`),
  ADD KEY `DOCUMENT_FK` (`agent_ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_ID`),
  ADD KEY `IMAGE_FK` (`apartment_ID`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_ID`),
  ADD KEY `FK_PAYMENT_SELLER` (`seller_ID`),
  ADD KEY `FK_PAYMENT_USER` (`sender_ID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `REQUEST_FK` (`uesr_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_ID`),
  ADD KEY `REG_SELLER_FK` (`user_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent`
--
ALTER TABLE `agent`
  MODIFY `agent_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `apartment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `seller_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agent`
--
ALTER TABLE `agent`
  ADD CONSTRAINT `AGENT_FK` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `apartment`
--
ALTER TABLE `apartment`
  ADD CONSTRAINT `APARTMENT_FK` FOREIGN KEY (`publisher_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `apartment_comment`
--
ALTER TABLE `apartment_comment`
  ADD CONSTRAINT `FK_APARTMENT_COMMENT_APARTMENT` FOREIGN KEY (`apartment_ID`) REFERENCES `apartment` (`apartment_ID`),
  ADD CONSTRAINT `FK_APARTMENT_COMMENT_USER` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_BOOKING_APARTMENT` FOREIGN KEY (`apartment_id`) REFERENCES `apartment` (`apartment_ID`),
  ADD CONSTRAINT `FK_BOOKING_USER` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `DOCUMENT_FK` FOREIGN KEY (`agent_ID`) REFERENCES `agent` (`agent_ID`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `IMAGE_FK` FOREIGN KEY (`apartment_ID`) REFERENCES `apartment` (`apartment_ID`);

--
-- Constraints for table `meeting`
--
ALTER TABLE `meeting`
  ADD CONSTRAINT `meeting_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK_PAYMENT_SELLER` FOREIGN KEY (`seller_ID`) REFERENCES `seller` (`seller_ID`),
  ADD CONSTRAINT `FK_PAYMENT_USER` FOREIGN KEY (`sender_ID`) REFERENCES `users` (`user_ID`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `REQUEST_FK` FOREIGN KEY (`uesr_id`) REFERENCES `agent` (`agent_ID`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `REG_SELLER_FK` FOREIGN KEY (`user_ID`) REFERENCES `users` (`user_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
