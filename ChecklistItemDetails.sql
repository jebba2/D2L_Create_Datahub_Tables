CREATE TABLE `ChecklistItemDetails` (
  `ItemId` bigint NOT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ScheduleId` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsAutoChecked` tinyint DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ItemId` (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistItemDetails_LOAD` (
  `ItemId` bigint NOT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ScheduleId` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsAutoChecked` tinyint DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ItemId` (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;