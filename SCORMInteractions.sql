CREATE TABLE `SCORMInteractions` (
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InteractionType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weighting` float DEFAULT NULL,
  `CorrectResponses` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `InteractionId` (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractions_LOAD` (
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InteractionType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weighting` float DEFAULT NULL,
  `CorrectResponses` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `InteractionId` (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;