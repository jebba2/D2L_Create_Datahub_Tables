CREATE TABLE `ContentFilePropertiesLog` (
  `OrgUnitId` int NOT NULL,
  `ContentObjectId` int NOT NULL,
  `Action` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FilePath` varchar(9999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileName` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileExtension` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSizeBytes` bigint DEFAULT NULL,
  `UploadDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`ContentObjectId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentFilePropertiesLog_LOAD` (
  `OrgUnitId` int NOT NULL,
  `ContentObjectId` int NOT NULL,
  `Action` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FilePath` varchar(9999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileName` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileExtension` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSizeBytes` bigint DEFAULT NULL,
  `UploadDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`ContentObjectId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;