CREATE TABLE `EnrollmentsandWithdrawals` (
  `LogId` bigint NOT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Action` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedByUserId` int DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`),
  KEY `idx_UserId_OrgUnitId_ModifiedByUserId` (`UserId`,`OrgUnitId`,`ModifiedByUserId`) USING BTREE,
  KEY `idx_UserId` (`UserId`) USING BTREE,
  KEY `idx_OrgUnitId` (`OrgUnitId`) USING BTREE,
  KEY `idx_ModifiedByUserId` (`ModifiedByUserId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `EnrollmentsandWithdrawals_LOAD` (
  `LogId` bigint NOT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Action` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedByUserId` int DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;