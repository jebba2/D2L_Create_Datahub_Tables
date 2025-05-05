CREATE TABLE `GradeSchemesRange` (
  `GradeSchemeRangeId` bigint NOT NULL,
  `GradeSchemeId` bigint NOT NULL,
  `SymbolString` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssignedValue` decimal(19,9) DEFAULT NULL,
  `RangeStart` decimal(19,9) DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeRangeId` (`GradeSchemeRangeId`,`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeSchemesRange_LOAD` (
  `GradeSchemeRangeId` bigint NOT NULL,
  `GradeSchemeId` bigint NOT NULL,
  `SymbolString` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssignedValue` decimal(19,9) DEFAULT NULL,
  `RangeStart` decimal(19,9) DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeRangeId` (`GradeSchemeRangeId`,`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;