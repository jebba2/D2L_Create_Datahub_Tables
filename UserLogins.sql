CREATE TABLE `UserLogins` (
  `UserId` int DEFAULT NULL,
  `UserName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SessionId` int DEFAULT NULL,
  `StatusType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AttemptDate` datetime DEFAULT NULL,
  `ImpersonatingUserId` int DEFAULT NULL,
  `LoginAttemptId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoginSource` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LoginAttemptId` (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserLogins_LOAD` (
  `UserId` int DEFAULT NULL,
  `UserName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SessionId` int DEFAULT NULL,
  `StatusType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AttemptDate` datetime DEFAULT NULL,
  `ImpersonatingUserId` int DEFAULT NULL,
  `LoginAttemptId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoginSource` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LoginAttemptId` (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;