CREATE TABLE `SCORMActivities` (
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumChildren` int DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionThreshold` float DEFAULT NULL,
  `PassingScore` float DEFAULT NULL,
  `PassingScoreUsed` tinyint DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMActivities_LOAD` (
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumChildren` int DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionThreshold` float DEFAULT NULL,
  `PassingScore` float DEFAULT NULL,
  `PassingScoreUsed` tinyint DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;