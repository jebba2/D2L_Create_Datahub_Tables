CREATE TABLE `SurveyUserAnswers` (
  `AttemptId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `QuestionNumber` int DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `Assigned` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `SurveyTimeCompleted` datetime DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyUserAnswers_LOAD` (
  `AttemptId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `QuestionNumber` int DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `Assigned` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `SurveyTimeCompleted` datetime DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;