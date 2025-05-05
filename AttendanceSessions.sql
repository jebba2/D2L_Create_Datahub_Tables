CREATE TABLE `AttendanceSessions` (
  `AttendanceSessionId` bigint NOT NULL,
  `AttendanceRegisterId` bigint DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceSessionId` (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceSessions_LOAD` (
  `AttendanceSessionId` bigint NOT NULL,
  `AttendanceRegisterId` bigint DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceSessionId` (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;