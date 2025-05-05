CREATE TABLE `RubricObjects` (
  `RubricId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricStatus` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoringMethods` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreVisible` tinyint DEFAULT NULL,
  `OrgUnitID` int DEFAULT NULL,
  `IsShared` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjects_LOAD` (
  `RubricId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricStatus` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoringMethods` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreVisible` tinyint DEFAULT NULL,
  `OrgUnitID` int DEFAULT NULL,
  `IsShared` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;