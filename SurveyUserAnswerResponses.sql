CREATE TABLE `SurveyUserAnswerResponses` (
  `AttemptId` bigint NOT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `AnswerId` bigint NOT NULL,
  `SortOrder` bigint DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `UserSelection` bigint DEFAULT NULL,
  `UserAnswer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`,`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyUserAnswerResponses_LOAD` (
  `AttemptId` bigint NOT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `AnswerId` bigint NOT NULL,
  `SortOrder` bigint DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `UserSelection` bigint DEFAULT NULL,
  `UserAnswer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`,`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
