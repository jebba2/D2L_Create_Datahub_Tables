CREATE TABLE `ChecklistObjects` (
  `ChecklistId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SharedUserId` int DEFAULT NULL,
  `DisplayInNewWindow` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `ChecklistId` (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistObjects_LOAD` (
  `ChecklistId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SharedUserId` int DEFAULT NULL,
  `DisplayInNewWindow` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `ChecklistId` (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
