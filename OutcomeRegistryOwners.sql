CREATE TABLE `OutcomeRegistryOwners` (
  `OwnerType` int NOT NULL,
  `OwnerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OwnerType` (`OwnerType`,`OwnerId`,`RegistryId`),
  KEY `idxRegistryId` (`RegistryId`,`OwnerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomeRegistryOwners_LOAD` (
  `OwnerType` int NOT NULL,
  `OwnerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OwnerType` (`OwnerType`,`OwnerId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
