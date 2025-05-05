CREATE TABLE `CompetencyObjects` (
  `ObjectId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReadyForEvaluation` tinyint DEFAULT NULL,
  `Status` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NeedReevaluation` tinyint DEFAULT NULL,
  `ReevaluationIfAchieved` tinyint DEFAULT NULL,
  `ReevaluationIfNotAchieved` tinyint DEFAULT NULL,
  `AdditionalIdentifier` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyObjects_LOAD` (
  `ObjectId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReadyForEvaluation` tinyint DEFAULT NULL,
  `Status` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NeedReevaluation` tinyint DEFAULT NULL,
  `ReevaluationIfAchieved` tinyint DEFAULT NULL,
  `ReevaluationIfNotAchieved` tinyint DEFAULT NULL,
  `AdditionalIdentifier` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;