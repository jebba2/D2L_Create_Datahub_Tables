CREATE TABLE `SystemAccessLog` (
  `SessionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `State` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Source` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AppVersion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Device` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsOfflineMode` tinyint DEFAULT NULL,
  `IPAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `SessionId` (`SessionId`,`UserId`,`Timestamp`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SystemAccessLog_LOAD` (
  `SessionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `State` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Source` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AppVersion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Device` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsOfflineMode` tinyint DEFAULT NULL,
  `IPAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `SessionId` (`SessionId`,`UserId`,`Timestamp`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
