CREATE TABLE `SCORMObjectiveAttempts` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ObjectiveId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjectiveAttempts_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ObjectiveId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;