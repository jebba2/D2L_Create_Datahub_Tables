CREATE TABLE `ChecklistCompletions` (
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `ItemId` bigint NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistCompletions_LOAD` (
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `ItemId` bigint NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;