CREATE TABLE `UserAttributeDefinitions` (
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowMultiple` tinyint DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttributeId` (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserAttributeDefinitions_LOAD` (
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowMultiple` tinyint DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttributeId` (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;