CREATE TABLE `ContentUserProgress` (
  `ContentObjectId` int NOT NULL,
  `UserId` int NOT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `LastVisited` datetime DEFAULT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `NumRealVisits` int DEFAULT NULL,
  `NumFakeVisits` int DEFAULT NULL,
  `TotalTime` bigint DEFAULT NULL,
  `IsVisited` tinyint DEFAULT NULL,
  `IsCurrentBookmark` tinyint DEFAULT NULL,
  `IsSelfAssessComplete` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentUserProgress_LOAD` (
  `ContentObjectId` int NOT NULL,
  `UserId` int NOT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `LastVisited` datetime DEFAULT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `NumRealVisits` int DEFAULT NULL,
  `NumFakeVisits` int DEFAULT NULL,
  `TotalTime` bigint DEFAULT NULL,
  `IsVisited` tinyint DEFAULT NULL,
  `IsCurrentBookmark` tinyint DEFAULT NULL,
  `IsSelfAssessComplete` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;