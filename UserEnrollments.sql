CREATE TABLE `UserEnrollments` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `RoleName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  `EnrollmentType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserEnrollments_LOAD` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `RoleName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  `EnrollmentType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;