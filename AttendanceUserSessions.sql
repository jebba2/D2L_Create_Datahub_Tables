CREATE TABLE `AttendanceUserSessions` (
  `UserId` int NOT NULL,
  `AttendanceSessionId` bigint NOT NULL,
  `SchemeSymbolId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceUserSessions_LOAD` (
  `UserId` int NOT NULL,
  `AttendanceSessionId` bigint NOT NULL,
  `SchemeSymbolId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;