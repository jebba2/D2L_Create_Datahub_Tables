CREATE TABLE `CourseAccess` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `DayAccessed` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`,`DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAccess_LOAD` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `DayAccessed` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`,`DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;