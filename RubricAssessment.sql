CREATE TABLE `RubricAssessment` (
  `RubricId` bigint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `Score` decimal(36,2) DEFAULT NULL,
  `AssessedByUserId` int DEFAULT NULL,
  `AssessmentDate` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityObjectId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `AssessmentId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AssessmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricAssessment_LOAD` (
  `RubricId` bigint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `Score` decimal(36,2) DEFAULT NULL,
  `AssessedByUserId` int DEFAULT NULL,
  `AssessmentDate` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityObjectId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `AssessmentId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AssessmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;