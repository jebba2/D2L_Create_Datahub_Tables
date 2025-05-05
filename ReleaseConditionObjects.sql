CREATE TABLE `ReleaseConditionObjects` (
  `PreRequisiteId` int NOT NULL,
  `ResultId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNegativeCondition` tinyint DEFAULT NULL,
  `PreRequisiteToolId` int DEFAULT NULL,
  `Id1` int DEFAULT NULL,
  `Id2` int DEFAULT NULL,
  `ResultToolId` int DEFAULT NULL,
  `UsesPercentage` tinyint DEFAULT NULL,
  `OperatorTypeDesc` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `Guid1` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Guid2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`ResultId`,`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ReleaseConditionObjects_LOAD` (
  `PreRequisiteId` int NOT NULL,
  `ResultId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNegativeCondition` tinyint DEFAULT NULL,
  `PreRequisiteToolId` int DEFAULT NULL,
  `Id1` int DEFAULT NULL,
  `Id2` int DEFAULT NULL,
  `ResultToolId` int DEFAULT NULL,
  `UsesPercentage` tinyint DEFAULT NULL,
  `OperatorTypeDesc` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `Guid1` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Guid2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`ResultId`,`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;