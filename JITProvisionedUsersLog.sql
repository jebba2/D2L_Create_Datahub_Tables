CREATE TABLE `JITProvisionedUsersLog` (
  `UserId` int NOT NULL,
  `MappingField` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MappingFieldValue` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderType` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderId` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Timestamp` datetime NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `JITProvisionedUsersLog_LOAD` (
  `UserId` int NOT NULL,
  `MappingField` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MappingFieldValue` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderType` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderId` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Timestamp` datetime NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;