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
(5, 'Nasenbruch', 0, 0, 100),
(6, 'Schusswunde Arm', 0, 0, 0),
(7, 'Schusswunde Bein', 0, 0, 0),
(8, '2.3 Selsbtjustiz', 0, 0, 0),
(9, '1.3 Körperverletzung', 0, 0, 0),
(10, '2.2 Erpressung', 0, 0, 0),
(11, '2.4 Entführung/Geiselnahme', 0, 0, 0),
(12, '2.12 Raubüberfall', 0, 0, 0),
(13, '2.12 Raubüberfall auf Geldtransporter', 0, 0, 0),
(14, '2.12 Raubüberfall auf Juweliergeschäft', 0, 0, 0),
(15, '2.12 Ladenüberfall', 0, 0, 0),
(16, '2.12 Raubüberfall auf ein Haus', 0, 0, 0),
(17, '2.8 Bestechung', 0, 0, 0),
(18, '2.9 Korruption', 0, 0, 0),
(19, '2.6 Flucht vor der Festnahme', 0, 0, 0),
(20, '3.1 Maskierung', 0, 0, 0),
(21, '2.13 Betrug', 0, 0, 0),
(22, "3.3 Überhöhte Geschwindigkeit", 0, 0, 0),
(23, "3.4 Rücksichtslose Gefährdung", 0, 0, 0),
(24, "2.6 Nichtanhalten", 0, 0, 0),
(25, "2.16 Drogenherstellung/-anbau", 0, 0, 0),
(26, '2.16 Besitz einer Droge', 0, 0, 0),
(27, '2.16 Verkauf/Vertrieb von Drogen', 0, 0, 0),
(28, '2.15 Verkauf/Vertrieb von illegalen Gegenständen', 0, 0, 0),
(29, '2.6 Strafvereitelung / Vertuschung', 0, 0, 0),
(30, '2.6 Unterschlagung', 0, 0, 0),
(31, '3.8 Vorzeigen einer Schusswaffe', 0, 0, 0),
(32, "3.8 Unerlaubte Entladung einer Feuerwaffe", 0, 0, 0),
(33, '2.7 Falsche Identität eines Regierungsbeamten', 0, 0, 0),
(34, '2.10 Identitätsdiebstahl', 0, 0, 0),
(35, "2.15 Besitz von gestohlenen Waren", 0, 0, 0),
(36, '2.11 Diebstahl', 0, 0, 0),
(37, '3.9 Tierschaendung', 0, 0, 0),
(38, '3.10 Wilderei', 0, 0, 0),
(39, '2.3 Verbrechen - Versuch der Begehung eines Vergehens/Verbrechens', 0, 0, 0),
(40, '2.6 Manipulation von Beweismitteln', 0, 0, 0),
(41, '2.8 Bestechung', 0, 0, 0),
(42, 'Krimineller Unfug', 0, 0, 0),
(43, '3.6 Nichtidentifizierung', 0, 0, 0),
(44, '3.7 Vorzeigepflicht', 0, 0, 0),
(45, '2.6 Behinderung staatlicher Amtspersonen', 0, 0, 0),
(46, "2.6 Widerstand gegen die Festnahme", 0, 0, 0),
(47, 'Störung der öffentlichen Ordnung', 0, 0, 0),
(48, "2.1 Bedrohung", 0, 0, 0),
(49, "2.14 Beschädigung von Staatseigentum", 0, 0, 0),
(50, "2.14 Beschädigung von fremden Eigentum", 0, 0, 0),
(51, "Nichtbefolgung einer rechtmäßigen Anordnung", 0, 0, 0),
(52, 'Falsche Anzeige', 0, 0, 0),
(53, '2.5 Unerlaubtes Betreten', 0, 0, 0),
(54, 'Herumlungern', 0, 0, 0),
(55, 'Unsittliche Entblößung', 0, 0, 0),
(56, '3.2 Beihilfe und Anstiftung', 0, 0, 0),
(57, 'siehe Bericht', 0, 0, 0),
(58, 'Mündliche Verwarnung', 0, 0, 0);
