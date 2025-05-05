CREATE TABLE `ChecklistCategoryDetails` (
  `CategoryId` bigint NOT NULL,
  `ChecklistId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistCategoryDetails_LOAD` (
  `CategoryId` bigint NOT NULL,
  `ChecklistId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;