CREATE TABLE `GradeResults` (
  `GradeObjectId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `IsReleased` tinyint DEFAULT NULL,
  `IsDropped` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `Comments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrivateComments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsExempt` tinyint DEFAULT NULL,
  `GradeText` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeReleasedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeObjectId` (`GradeObjectId`,`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeResults_LOAD` (
  `GradeObjectId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `IsReleased` tinyint DEFAULT NULL,
  `IsDropped` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `Comments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrivateComments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsExempt` tinyint DEFAULT NULL,
  `GradeText` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeReleasedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeObjectId` (`GradeObjectId`,`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;