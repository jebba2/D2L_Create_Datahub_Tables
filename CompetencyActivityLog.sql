CREATE TABLE `CompetencyActivityLog` (
  `ActivityId` bigint NOT NULL,
  `ActivityLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivityLog_LOAD` (
  `ActivityId` bigint NOT NULL,
  `ActivityLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;