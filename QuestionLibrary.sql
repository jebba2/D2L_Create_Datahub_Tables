CREATE TABLE `QuestionLibrary` (
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `IsAutoGraded` tinyint DEFAULT NULL,
  `TemplateTypeId` int DEFAULT NULL,
  `QuestionType` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Question` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnswerKey` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `AllowsAttachments` tinyint DEFAULT NULL,
  `AIUtilization` int DEFAULT NULL,
  UNIQUE KEY `QuestionId` (`QuestionId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuestionLibrary_LOAD` (
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `IsAutoGraded` tinyint DEFAULT NULL,
  `TemplateTypeId` int DEFAULT NULL,
  `QuestionType` varchar(28) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Question` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnswerKey` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `AllowsAttachments` tinyint DEFAULT NULL,
  `AIUtilization` int DEFAULT NULL,
  UNIQUE KEY `QuestionId` (`QuestionId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;