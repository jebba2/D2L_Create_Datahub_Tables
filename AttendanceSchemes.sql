CREATE TABLE `AttendanceSchemes` (
  `SchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeSymbolId` bigint NOT NULL,
  `SymbolName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SymbolValue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `SchemeId` (`SchemeId`,`SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceSchemes_LOAD` (
  `SchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeSymbolId` bigint NOT NULL,
  `SymbolName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SymbolValue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `SchemeId` (`SchemeId`,`SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;