CREATE TABLE `RubricAssessmentCriteria` (
  `AssessmentId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreOverridden` tinyint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssessmentId` (`AssessmentId`,`UserId`,`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricAssessmentCriteria_LOAD` (
  `AssessmentId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreOverridden` tinyint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssessmentId` (`AssessmentId`,`UserId`,`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
