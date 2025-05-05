CREATE TABLE `ReleaseConditionResults` (
  `ResultId` int NOT NULL,
  `UserId` int NOT NULL,
  `Met` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ResultId` (`ResultId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ReleaseConditionResults_LOAD` (
  `ResultId` int NOT NULL,
  `UserId` int NOT NULL,
  `Met` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ResultId` (`ResultId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;