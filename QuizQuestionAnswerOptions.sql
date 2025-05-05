CREATE TABLE `QuizQuestionAnswerOptions` (
  `AnswerId` bigint NOT NULL,
  `AnswerText` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `QuizObjectId` bigint NOT NULL,
  `AnswerOptionId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`QuizObjectId`,`AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizQuestionAnswerOptions_LOAD` (
  `AnswerId` bigint NOT NULL,
  `AnswerText` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `QuizObjectId` bigint NOT NULL,
  `AnswerOptionId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`QuizObjectId`,`AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;