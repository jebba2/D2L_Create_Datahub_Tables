CREATE TABLE `TurnItInSubmissions` (
  `DropboxId` bigint DEFAULT NULL,
  `SubmissionId` bigint NOT NULL,
  `FileId` bigint NOT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `SubmissionStatus` smallint DEFAULT NULL,
  `SubmissionErrorType` smallint DEFAULT NULL,
  `ErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmittedBy` int DEFAULT NULL,
  `LastRefreshDate` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `SubmissionId` (`SubmissionId`,`FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `TurnItInSubmissions_LOAD` (
  `DropboxId` bigint DEFAULT NULL,
  `SubmissionId` bigint NOT NULL,
  `FileId` bigint NOT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `SubmissionStatus` smallint DEFAULT NULL,
  `SubmissionErrorType` smallint DEFAULT NULL,
  `ErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmittedBy` int DEFAULT NULL,
  `LastRefreshDate` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `SubmissionId` (`SubmissionId`,`FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;