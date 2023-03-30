CREATE TABLE `user_med_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,
	`bail` bit DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `user_med_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_med_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_med_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` int(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `med_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
	
       PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_med_notes` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

INSERT INTO `med_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
(1, 'Bruch Arm links', 0, 0, 0),
(2, 'Bruch Arm rechts', 0, 0, 0),
(3, 'Bruch Bein links', 0, 0, 0),
(4, 'Bruch Bein rechts', 0, 0, 0),
(5, 'Nasenbruch', 0, 0, 0),
(6, 'Schusswunde Arm', 0, 0, 0),
(7, 'Schusswunde Bein', 0, 0, 0),
(8, 'Schusswunde Oberkörper', 0, 0, 0),
(9, 'Schusswunde Unterkörper', 0, 0, 0),
(10, 'Kopfverletzung', 0, 0, 0),
(11, 'Erkältung', 0, 0, 0),
(12, 'Cholera', 0, 0, 0),
(13, 'Malaria', 0, 0, 0),
(14, 'Schnitt', 0, 0, 0),
(15, 'Prellung', 0, 0, 0),
(16, 'Hauterkrankung', 0, 0, 0),
(17, 'allgemeine Schmerzsymptome', 0, 0, 0),
(18, 'andere Beschwerden', 0, 0, 0);
