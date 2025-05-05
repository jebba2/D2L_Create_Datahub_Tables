CREATE TABLE `OutcomesAlignedtoToolObjects` (
  `ObjectType` int NOT NULL,
  `ObjectId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectType` (`ObjectType`,`ObjectId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesAlignedtoToolObjects_LOAD` (
  `ObjectType` int NOT NULL,
  `ObjectId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectType` (`ObjectType`,`ObjectId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;