CREATE TABLE `QuizSurveySections` (
  `CollectionId` bigint DEFAULT NULL,
  `SectionId` bigint NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NameIsDisplayed` tinyint DEFAULT NULL,
  `IsQuestionPool` tinyint DEFAULT NULL,
  `SectionText` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SectionTextIsHTML` tinyint DEFAULT NULL,
  `IsSectionTextHidden` tinyint DEFAULT NULL,
  `QuestionPoints` decimal(19,9) DEFAULT NULL,
  `NumQuestions` int DEFAULT NULL,
  `NumChoices` int DEFAULT NULL,
  `Shuffle` tinyint DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `SectionId` (`SectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizSurveySections_LOAD` (
  `CollectionId` bigint DEFAULT NULL,
  `SectionId` bigint NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NameIsDisplayed` tinyint DEFAULT NULL,
  `IsQuestionPool` tinyint DEFAULT NULL,
  `SectionText` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SectionTextIsHTML` tinyint DEFAULT NULL,
  `IsSectionTextHidden` tinyint DEFAULT NULL,
  `QuestionPoints` decimal(19,9) DEFAULT NULL,
  `NumQuestions` int DEFAULT NULL,
  `NumChoices` int DEFAULT NULL,
  `Shuffle` tinyint DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `SectionId` (`SectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;