CREATE TABLE `OutcomesScaleDefinition` (
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `UsePercentages` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ScaleId` (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesScaleDefinition_LOAD` (
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `UsePercentages` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ScaleId` (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;