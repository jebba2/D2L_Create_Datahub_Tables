CREATE TABLE `RubricObjectsCriteria` (
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `GroupName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GroupSortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `CriterionId` (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjectsCriteria_LOAD` (
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `GroupName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GroupSortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `CriterionId` (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;