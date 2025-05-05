CREATE TABLE `ContentUserCompletion` (
  `ContentObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentUserCompletion_LOAD` (
  `ContentObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;