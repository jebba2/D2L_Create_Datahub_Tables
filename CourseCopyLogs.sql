CREATE TABLE `CourseCopyLogs` (
  `SourceOrgUnitId` int DEFAULT NULL,
  `DestinationOrgUnitId` int DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsDestinationNew` tinyint DEFAULT NULL,
  `CopyProtectedResources` tinyint DEFAULT NULL,
  `CopyCourseJobId` bigint NOT NULL,
  `StatusId` int DEFAULT NULL,
  UNIQUE KEY `CopyCourseJobId` (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseCopyLogs_LOAD` (
  `SourceOrgUnitId` int DEFAULT NULL,
  `DestinationOrgUnitId` int DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsDestinationNew` tinyint DEFAULT NULL,
  `CopyProtectedResources` tinyint DEFAULT NULL,
  `CopyCourseJobId` bigint NOT NULL,
  `StatusId` int DEFAULT NULL,
  UNIQUE KEY `CopyCourseJobId` (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
