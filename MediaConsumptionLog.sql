CREATE TABLE `MediaConsumptionLog` (
  `LogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientApp` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateConsumed` datetime DEFAULT NULL,
  `DurationPercentageWatched` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `MediaConsumptionLog_LOAD` (
  `LogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientApp` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateConsumed` datetime DEFAULT NULL,
  `DurationPercentageWatched` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;