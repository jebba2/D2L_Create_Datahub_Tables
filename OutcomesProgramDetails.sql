CREATE TABLE `OutcomesProgramDetails` (
  `ProgramId` bigint NOT NULL,
  `ProgramName` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ProgramId` (`ProgramId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesProgramDetails_LOAD` (
  `ProgramId` bigint NOT NULL,
  `ProgramName` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ProgramId` (`ProgramId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;