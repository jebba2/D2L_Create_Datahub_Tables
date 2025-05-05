CREATE TABLE `CompetencyActivities` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ActivityName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityTypeId` int DEFAULT NULL,
  `AssessmentType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectLookupId` bigint DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AssessmentThresholdCriteria` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssessmentThreshold` decimal(19,9) DEFAULT NULL,
  `IsAutoEval` tinyint DEFAULT NULL,
  `RubricName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricLevelRequired` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivities_LOAD` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ActivityName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityTypeId` int DEFAULT NULL,
  `AssessmentType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectLookupId` bigint DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AssessmentThresholdCriteria` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssessmentThreshold` decimal(19,9) DEFAULT NULL,
  `IsAutoEval` tinyint DEFAULT NULL,
  `RubricName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricLevelRequired` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;