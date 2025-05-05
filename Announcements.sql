CREATE TABLE `Announcements` (
  `AnnouncementId` bigint NOT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `Title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsGlobal` tinyint DEFAULT NULL,
  `IsDraft` tinyint DEFAULT NULL,
  `NumAttachments` int DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `IsAuthorInfoShown` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  UNIQUE KEY `AnnouncementId` (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Announcements_LOAD` (
  `AnnouncementId` bigint NOT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `Title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsGlobal` tinyint DEFAULT NULL,
  `IsDraft` tinyint DEFAULT NULL,
  `NumAttachments` int DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `IsAuthorInfoShown` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  UNIQUE KEY `AnnouncementId` (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;