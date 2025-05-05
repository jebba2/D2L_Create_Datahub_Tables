CREATE TABLE `AssignmentSubmissions` (
  `DropboxId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SubmitterId` bigint NOT NULL,
  `SubmitterType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSubmissionCount` int DEFAULT NULL,
  `TotalFileSize` bigint DEFAULT NULL,
  `FeedbackUserId` int DEFAULT NULL,
  `FeedbackIsRead` tinyint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeedbackLastModified` datetime DEFAULT NULL,
  `FeedbackReadDate` datetime DEFAULT NULL,
  `CompletionDate` datetime DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`SubmitterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSubmissions_LOAD` (
  `DropboxId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SubmitterId` bigint NOT NULL,
  `SubmitterType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSubmissionCount` int DEFAULT NULL,
  `TotalFileSize` bigint DEFAULT NULL,
  `FeedbackUserId` int DEFAULT NULL,
  `FeedbackIsRead` tinyint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeedbackLastModified` datetime DEFAULT NULL,
  `FeedbackReadDate` datetime DEFAULT NULL,
  `CompletionDate` datetime DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`SubmitterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;