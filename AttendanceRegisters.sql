CREATE TABLE `AttendanceRegisters` (
  `AttendanceRegisterId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeId` bigint DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `IncludeAllUsers` tinyint DEFAULT NULL,
  `CauseForConcern` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceRegisterId` (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceRegisters_LOAD` (
  `AttendanceRegisterId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeId` bigint DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `IncludeAllUsers` tinyint DEFAULT NULL,
  `CauseForConcern` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceRegisterId` (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;