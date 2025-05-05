CREATE TABLE `OutcomesInRegistries` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesInRegistries_LOAD` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;