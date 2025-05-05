CREATE TABLE `OutcomesAssessedCheckpoints` (
  `CheckpointId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ConfigDecayRate` int DEFAULT NULL,
  `ConfigAggregationMethod` int DEFAULT NULL,
  `ConfigIncludedActivities` int DEFAULT NULL,
  `ConfigMultipleAttemptStrategy` int DEFAULT NULL,
  `ConfigRecentlyAssessedActivityCount` int DEFAULT NULL,
  `ConfigTieBreaker` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `HasMetAchievementThreshold` tinyint DEFAULT NULL,
  UNIQUE KEY `CheckpointId` (`CheckpointId`,`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesAssessedCheckpoints_LOAD` (
  `CheckpointId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ConfigDecayRate` int DEFAULT NULL,
  `ConfigAggregationMethod` int DEFAULT NULL,
  `ConfigIncludedActivities` int DEFAULT NULL,
  `ConfigMultipleAttemptStrategy` int DEFAULT NULL,
  `ConfigRecentlyAssessedActivityCount` int DEFAULT NULL,
  `ConfigTieBreaker` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `HasMetAchievementThreshold` tinyint DEFAULT NULL,
  UNIQUE KEY `CheckpointId` (`CheckpointId`,`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;