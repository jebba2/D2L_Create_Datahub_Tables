CREATE TABLE `GradeObjectsLog` (
  `LogId` bigint NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeObjectId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `GradeSymbolString` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeObjectsLog_LOAD` (
  `LogId` bigint NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeObjectId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `GradeSymbolString` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;