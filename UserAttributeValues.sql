CREATE TABLE `UserAttributeValues` (
  `UserId` int NOT NULL,
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserAttributeValues_LOAD` (
  `UserId` int NOT NULL,
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
