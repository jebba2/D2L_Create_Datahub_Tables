CREATE TABLE `QuizUserAnswers` (
  `AttemptId` bigint NOT NULL,
  `QuestionId` bigint DEFAULT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `QuestionNumber` int DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `SectionId` bigint DEFAULT NULL,
  `ObjectId` bigint NOT NULL,
  `OutOf` decimal(19,9) DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `IsBonus` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `QuizTimeCompleted` datetime DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizUserAnswers_LOAD` (
  `AttemptId` bigint NOT NULL,
  `QuestionId` bigint DEFAULT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `QuestionNumber` int DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `SectionId` bigint DEFAULT NULL,
  `ObjectId` bigint NOT NULL,
  `OutOf` decimal(19,9) DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `IsBonus` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `QuizTimeCompleted` datetime DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;