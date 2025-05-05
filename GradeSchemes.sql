CREATE TABLE `GradeSchemes` (
  `GradeSchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeId` (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeSchemes_LOAD` (
  `GradeSchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeId` (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;