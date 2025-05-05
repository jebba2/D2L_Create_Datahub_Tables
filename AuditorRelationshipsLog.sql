CREATE TABLE `AuditorRelationshipsLog` (
  `AuditorId` int NOT NULL,
  `UserToAuditId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedDate` datetime NOT NULL,
  UNIQUE KEY `AuditorId` (`AuditorId`,`UserToAuditId`,`OrgUnitId`,`ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AuditorRelationshipsLog_LOAD` (
  `AuditorId` int NOT NULL,
  `UserToAuditId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedDate` datetime NOT NULL,
  UNIQUE KEY `AuditorId` (`AuditorId`,`UserToAuditId`,`OrgUnitId`,`ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;