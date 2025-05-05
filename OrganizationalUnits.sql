CREATE TABLE `OrganizationalUnits` (
  `OrgUnitId` int NOT NULL,
  `Organization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `RecycledDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgUnitTypeId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnits_LOAD` (
  `OrgUnitId` int NOT NULL,
  `Organization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `RecycledDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgUnitTypeId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;