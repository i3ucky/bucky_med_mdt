
CREATE TABLE IF NOT EXISTS `med_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `jailtime` int(11) DEFAULT NULL,
	
       PRIMARY KEY (`id`)
);

INSERT INTO `med_types` (`id`, `label`, `amount`, `category`, `jailtime`) VALUES
(1,'Break Nose', 0, 0, 0),
(2,'Break arm', 0, 0, 0),
(3,'Bruise', 0, 0, 0),
(4,'Broken Ribs', 0, 0, 0),
(5,'Brused Ribs', 0, 0, 0),
(6,'Bullet Wound Torso', 0, 0, 0),
(7,'Camp Fever', 0, 0, 0),
(8,'Cholera', 0, 0, 0),
(9,'Cold', 0, 0, 0),
(10,'Concussion', 0, 0, 0),
(11,'Cut', 0, 0, 0),
(12,'Drowning', 0, 0, 0),
(13,'Fracture arm', 0, 0, 0),
(14,'Fracture leg', 0, 0, 0),
(15,'General pain symptoms', 0, 0, 0),
(16,'Gunshot Arm', 0, 0, 0),
(17,'Gunshot Leg', 0, 0, 0),
(18,'Gunshot Lower Body', 0, 0, 0),
(19,'Head Injury', 0, 0, 0),
(20,'Malaria', 0, 0, 0),
(21,'Other complaints', 0, 0, 0),
(22,'Skin disease ', 0, 0, 0);
