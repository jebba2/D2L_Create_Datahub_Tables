CREATE TABLE `OutcomesCourseSpecificScales` (
  `OrgUnitId` int NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AchievementThreshold` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesCourseSpecificScales_LOAD` (
  `OrgUnitId` int NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AchievementThreshold` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;