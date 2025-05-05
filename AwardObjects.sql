CREATE TABLE `AwardObjects` (
  `AwardId` bigint NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AwardTypeId` int DEFAULT NULL,
  `Type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryCalculationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryNotificationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `ImagePath` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedByUserId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `AwardId` (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AwardObjects_LOAD` (
  `AwardId` bigint NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AwardTypeId` int DEFAULT NULL,
  `Type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryCalculationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryNotificationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `ImagePath` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedByUserId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `AwardId` (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;