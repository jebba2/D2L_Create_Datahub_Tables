CREATE TABLE `LTILaunches` (
  `LTILaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `IMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImpersonatingUserId` bigint DEFAULT NULL,
  `ImpersonatingUserIMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LaunchDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LTILinkId` bigint DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ToolProviderId` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentTopicId` bigint DEFAULT NULL,
  `ParentModuleId` bigint DEFAULT NULL,
  `Placement` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MessageVersion` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTILaunchId` (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILaunches_LOAD` (
  `LTILaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `IMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImpersonatingUserId` bigint DEFAULT NULL,
  `ImpersonatingUserIMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LaunchDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LTILinkId` bigint DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ToolProviderId` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentTopicId` bigint DEFAULT NULL,
  `ParentModuleId` bigint DEFAULT NULL,
  `Placement` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MessageVersion` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTILaunchId` (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;