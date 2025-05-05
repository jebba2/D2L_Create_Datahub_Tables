CREATE TABLE `SCORMObjectives` (
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectiveType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPrimary` tinyint DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ObjectiveId` (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjectives_LOAD` (
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectiveType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPrimary` tinyint DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ObjectiveId` (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;