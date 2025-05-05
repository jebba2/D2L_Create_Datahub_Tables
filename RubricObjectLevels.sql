CREATE TABLE `RubricObjectLevels` (
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` decimal(19,9) DEFAULT NULL,
  `RangeStartValue` decimal(19,9) DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LevelId` (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjectLevels_LOAD` (
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` decimal(19,9) DEFAULT NULL,
  `RangeStartValue` decimal(19,9) DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LevelId` (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;