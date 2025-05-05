CREATE TABLE `SCORMVisits` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `FirstAccessDate` datetime DEFAULT NULL,
  `LastAccessDate` datetime DEFAULT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `TimeSpent` int DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMVisits_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `FirstAccessDate` datetime DEFAULT NULL,
  `LastAccessDate` datetime DEFAULT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `TimeSpent` int DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;