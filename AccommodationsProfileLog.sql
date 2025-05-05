CREATE TABLE `AccommodationsProfileLog` (
  `AccommodatedUserId` bigint NOT NULL,
  `OrgUnitId` bigint NOT NULL,
  `QuizTimeLimitMultiplier` decimal(5,2) DEFAULT NULL,
  `QuizTimeLimitExtraTime` int DEFAULT NULL,
  `QuizControlAlwaysAllowRightClick` tinyint DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `AccommodatedUserId` (`AccommodatedUserId`,`OrgUnitId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AccommodationsProfileLog_LOAD` (
  `AccommodatedUserId` bigint NOT NULL,
  `OrgUnitId` bigint NOT NULL,
  `QuizTimeLimitMultiplier` decimal(5,2) DEFAULT NULL,
  `QuizTimeLimitExtraTime` int DEFAULT NULL,
  `QuizControlAlwaysAllowRightClick` tinyint DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `AccommodatedUserId` (`AccommodatedUserId`,`OrgUnitId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;