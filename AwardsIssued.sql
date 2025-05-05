CREATE TABLE `AwardsIssued` (
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `IssuedBy` int DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `IssuedId` bigint NOT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evidence` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedDate` datetime DEFAULT NULL,
  `RevokedReason` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedBy` bigint DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `IssuedId` (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AwardsIssued_LOAD` (
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `IssuedBy` int DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `IssuedId` bigint NOT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evidence` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedDate` datetime DEFAULT NULL,
  `RevokedReason` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedBy` bigint DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `IssuedId` (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;