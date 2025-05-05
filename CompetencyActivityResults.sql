CREATE TABLE `CompetencyActivityResults` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `LearningObjectId` bigint NOT NULL,
  `IsAchieved` tinyint DEFAULT NULL,
  `PercentAchieved` decimal(19,9) DEFAULT NULL,
  `RubricScore` decimal(19,9) DEFAULT NULL,
  `RubricLevelAchieved` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AchievedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`OrgUnitId`,`UserId`,`LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivityResults_LOAD` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `LearningObjectId` bigint NOT NULL,
  `IsAchieved` tinyint DEFAULT NULL,
  `PercentAchieved` decimal(19,9) DEFAULT NULL,
  `RubricScore` decimal(19,9) DEFAULT NULL,
  `RubricLevelAchieved` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AchievedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`OrgUnitId`,`UserId`,`LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;