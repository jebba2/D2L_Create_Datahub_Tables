CREATE TABLE `OutcomesRubricAlignments` (
  `RubricId` bigint NOT NULL,
  `CriterionId` bigint NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`,`CriterionId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesRubricAlignments_LOAD` (
  `RubricId` bigint NOT NULL,
  `CriterionId` bigint NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`,`CriterionId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;