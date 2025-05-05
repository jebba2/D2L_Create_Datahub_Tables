CREATE TABLE `CoursePublisherLaunches` (
  `LaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RecipientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `LaunchMethod` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalUserId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalLMSType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNewUser` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `LaunchId` (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CoursePublisherLaunches_LOAD` (
  `LaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RecipientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `LaunchMethod` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalUserId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalLMSType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNewUser` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `LaunchId` (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;