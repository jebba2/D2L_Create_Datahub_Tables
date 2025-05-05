CREATE TABLE `OutcomesDetails` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeDefinitionSource` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeDefinitionId` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentOutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notation` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesDetails_LOAD` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeDefinitionSource` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeDefinitionId` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentOutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notation` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;