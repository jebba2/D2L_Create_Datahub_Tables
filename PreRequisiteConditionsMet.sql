CREATE TABLE `PreRequisiteConditionsMet` (
  `PreRequisiteId` int NOT NULL,
  `UserId` int NOT NULL,
  `DateMet` datetime DEFAULT NULL,
  `Action` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `PreRequisiteConditionsMet_LOAD` (
  `PreRequisiteId` int NOT NULL,
  `UserId` int NOT NULL,
  `DateMet` datetime DEFAULT NULL,
  `Action` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;