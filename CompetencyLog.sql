CREATE TABLE `CompetencyLog` (
  `CompetencyLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ObjectTypeId` int DEFAULT NULL,
  `ObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectVersion` int DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `IndirectObjectId` bigint DEFAULT NULL,
  `IndirectObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IndirectObjectTypeId` int DEFAULT NULL,
  `IndirectObjectVersion` int DEFAULT NULL,
  UNIQUE KEY `CompetencyLogId` (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyLog_LOAD` (
  `CompetencyLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ObjectTypeId` int DEFAULT NULL,
  `ObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectVersion` int DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `IndirectObjectId` bigint DEFAULT NULL,
  `IndirectObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IndirectObjectTypeId` int DEFAULT NULL,
  `IndirectObjectVersion` int DEFAULT NULL,
  UNIQUE KEY `CompetencyLogId` (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;