CREATE TABLE `AudioVideoProcessed` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionNumber` int DEFAULT NULL,
  `Type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Source` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionSize` bigint DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `RequiredTranscoding` tinyint DEFAULT NULL,
  `RequiredTranscribing` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`,`RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AudioVideoProcessed_LOAD` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionNumber` int DEFAULT NULL,
  `Type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Source` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionSize` bigint DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `RequiredTranscoding` tinyint DEFAULT NULL,
  `RequiredTranscribing` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`,`RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;