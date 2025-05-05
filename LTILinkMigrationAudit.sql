CREATE TABLE `LTILinkMigrationAudit` (
  `LTIMigrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` bigint DEFAULT NULL,
  `MigrationDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LinkId` bigint DEFAULT NULL,
  `LinkURL` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistrationDomain` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobId` bigint DEFAULT NULL,
  `Status` smallint DEFAULT NULL,
  `FailureCode` smallint DEFAULT NULL,
  `MigrationType` smallint DEFAULT NULL,
  `LegacyURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTIMigrationId` (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILinkMigrationAudit_LOAD` (
  `LTIMigrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` bigint DEFAULT NULL,
  `MigrationDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LinkId` bigint DEFAULT NULL,
  `LinkURL` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistrationDomain` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobId` bigint DEFAULT NULL,
  `Status` smallint DEFAULT NULL,
  `FailureCode` smallint DEFAULT NULL,
  `MigrationType` smallint DEFAULT NULL,
  `LegacyURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTIMigrationId` (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;