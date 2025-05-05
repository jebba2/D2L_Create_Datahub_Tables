CREATE TABLE `SCORMObjects` (
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ContentObjectId` int DEFAULT NULL,
  `ContentServiceContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceRevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceTopicId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearningStandard` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScormObjectId` (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjects_LOAD` (
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ContentObjectId` int DEFAULT NULL,
  `ContentServiceContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceRevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceTopicId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearningStandard` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScormObjectId` (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;