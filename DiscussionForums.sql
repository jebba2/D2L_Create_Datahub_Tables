CREATE TABLE `DiscussionForums` (
  `OrgUnitId` int DEFAULT NULL,
  `ForumId` bigint NOT NULL,
  `Name` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MustPostToParticipate` tinyint DEFAULT NULL,
  `AllowAnon` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `RequiresApproval` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `ForumId` (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionForums_LOAD` (
  `OrgUnitId` int DEFAULT NULL,
  `ForumId` bigint NOT NULL,
  `Name` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MustPostToParticipate` tinyint DEFAULT NULL,
  `AllowAnon` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `RequiresApproval` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `ForumId` (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
