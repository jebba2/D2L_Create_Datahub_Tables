CREATE TABLE `LTILinks` (
  `LtiLinkId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkType` int DEFAULT NULL,
  `LTIVersion` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `SendTCInfo` tinyint DEFAULT NULL,
  `SendContextInfo` tinyint DEFAULT NULL,
  `SendCourseInfo` tinyint DEFAULT NULL,
  `SendOrgUnitInfo` tinyint DEFAULT NULL,
  `SendUserId` tinyint DEFAULT NULL,
  `SendUserName` tinyint DEFAULT NULL,
  `SendUserEmail` tinyint DEFAULT NULL,
  `SendLinkTitle` tinyint DEFAULT NULL,
  `SendLinkDescription` tinyint DEFAULT NULL,
  `SendD2LUserName` tinyint DEFAULT NULL,
  `SendD2LOrgDefinedId` tinyint DEFAULT NULL,
  `SendD2LOrgRoleId` tinyint DEFAULT NULL,
  `SendBrightspaceUserId` tinyint DEFAULT NULL,
  `Anonymous` tinyint DEFAULT NULL,
  `Shared` tinyint DEFAULT NULL,
  `UseToolProviderSecuritySettings` tinyint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `OuAvailabilitySetId` bigint DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LtiLinkId` (`LtiLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILinks_LOAD` (
  `LtiLinkId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkType` int DEFAULT NULL,
  `LTIVersion` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `SendTCInfo` tinyint DEFAULT NULL,
  `SendContextInfo` tinyint DEFAULT NULL,
  `SendCourseInfo` tinyint DEFAULT NULL,
  `SendOrgUnitInfo` tinyint DEFAULT NULL,
  `SendUserId` tinyint DEFAULT NULL,
  `SendUserName` tinyint DEFAULT NULL,
  `SendUserEmail` tinyint DEFAULT NULL,
  `SendLinkTitle` tinyint DEFAULT NULL,
  `SendLinkDescription` tinyint DEFAULT NULL,
  `SendD2LUserName` tinyint DEFAULT NULL,
  `SendD2LOrgDefinedId` tinyint DEFAULT NULL,
  `SendD2LOrgRoleId` tinyint DEFAULT NULL,
  `SendBrightspaceUserId` tinyint DEFAULT NULL,
  `Anonymous` tinyint DEFAULT NULL,
  `Shared` tinyint DEFAULT NULL,
  `UseToolProviderSecuritySettings` tinyint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `OuAvailabilitySetId` bigint DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LtiLinkId` (`LtiLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;