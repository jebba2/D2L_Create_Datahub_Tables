CREATE TABLE `CourseAwards` (
  `AssociationId` bigint NOT NULL,
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `HiddenAward` tinyint DEFAULT NULL,
  `ConditionSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Credits` decimal(9,2) DEFAULT NULL,
  `IsAssociated` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssociationId` (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAwards_LOAD` (
  `AssociationId` bigint NOT NULL,
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `HiddenAward` tinyint DEFAULT NULL,
  `ConditionSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Credits` decimal(9,2) DEFAULT NULL,
  `IsAssociated` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssociationId` (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;