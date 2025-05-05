CREATE TABLE `Users` (
  `UserId` int NOT NULL,
  `UserName` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgDefinedId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `Organization` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalEmail` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignupDate` datetime DEFAULT NULL,
  `FirstLoginDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgRoleId` int DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Users_LOAD` (
  `UserId` int NOT NULL,
  `UserName` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgDefinedId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `Organization` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalEmail` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignupDate` datetime DEFAULT NULL,
  `FirstLoginDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgRoleId` int DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;