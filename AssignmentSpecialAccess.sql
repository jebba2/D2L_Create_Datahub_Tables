CREATE TABLE `AssignmentSpecialAccess` (
  `DropboxId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSpecialAccess_LOAD` (
  `DropboxId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;