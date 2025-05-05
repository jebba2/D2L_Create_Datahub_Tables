CREATE TABLE `RubricsEdit` (
  `AuditLogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedObjectType` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `PreviousValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsLocked` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `AuditLogId` (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricsEdit_LOAD` (
  `AuditLogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedObjectType` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `PreviousValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsLocked` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `AuditLogId` (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;