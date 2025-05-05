CREATE TABLE `SurveyQuestionAnswers` (
  `AnswerId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `Answer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SurveyObjectId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`SurveyObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyQuestionAnswers_LOAD` (
  `AnswerId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `Answer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SurveyObjectId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`SurveyObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;