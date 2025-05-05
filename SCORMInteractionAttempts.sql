CREATE TABLE `SCORMInteractionAttempts` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Response` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Result` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumericResult` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`InteractionId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractionAttempts_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Response` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Result` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumericResult` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`InteractionId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;