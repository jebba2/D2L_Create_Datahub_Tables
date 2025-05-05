CREATE TABLE `OutcomesScaleLevelDefinition` (
  `ScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `PercentageRangeStart` int DEFAULT NULL,
  `RGB` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScaleLevelId` (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesScaleLevelDefinition_LOAD` (
  `ScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `PercentageRangeStart` int DEFAULT NULL,
  `RGB` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScaleLevelId` (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;