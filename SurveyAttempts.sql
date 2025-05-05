CREATE TABLE `SurveyAttempts` (
  `AttemptId` bigint NOT NULL,
  `SurveyId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `AttemptedFromOrgUnitId` int DEFAULT NULL,
  `OldAttemptNumber` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyAttempts_LOAD` (
  `AttemptId` bigint NOT NULL,
  `SurveyId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `AttemptedFromOrgUnitId` int DEFAULT NULL,
  `OldAttemptNumber` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;