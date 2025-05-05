CREATE TABLE `SCORMActivityAttempts` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ActivityId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMActivityAttempts_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ActivityId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;