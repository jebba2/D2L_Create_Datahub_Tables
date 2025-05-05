CREATE TABLE `MediaObjects` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionCount` int DEFAULT NULL,
  `OwnerId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `MediaObjects_LOAD` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionCount` int DEFAULT NULL,
  `OwnerId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;