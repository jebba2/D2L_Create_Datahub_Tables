CREATE TABLE `OutcomesDemonstrations` (
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ExplicitlyEnteredScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutomaticallyGeneratedScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AlignedObjectType` int DEFAULT NULL,
  `AlignedObjectId` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPublished` tinyint DEFAULT NULL,
  `AssessedUserId` int DEFAULT NULL,
  `AssessedDate` datetime DEFAULT NULL,
  `AssessorUserId` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `DemonstrationId` (`DemonstrationId`),
  KEY `idxLearnerOutcome` (`AssessedUserId`,`OutcomeId`),
  KEY `idxOutcome` (`OutcomeId`,`AlignedObjectType`,`AssessedDate`,`ExplicitlyEnteredScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesDemonstrations_LOAD` (
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ExplicitlyEnteredScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutomaticallyGeneratedScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AlignedObjectType` int DEFAULT NULL,
  `AlignedObjectId` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPublished` tinyint DEFAULT NULL,
  `AssessedUserId` int DEFAULT NULL,
  `AssessedDate` datetime DEFAULT NULL,
  `AssessorUserId` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `DemonstrationId` (`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;