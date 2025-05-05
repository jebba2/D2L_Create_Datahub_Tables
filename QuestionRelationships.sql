CREATE TABLE `QuestionRelationships` (
  `CollectionId` bigint DEFAULT NULL,
  `QuestionId` bigint DEFAULT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `Order` bigint DEFAULT NULL,
  `SectionId` bigint DEFAULT NULL,
  `IsQuestionPool` tinyint DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `Points` decimal(19,9) DEFAULT NULL,
  `Difficulty` int DEFAULT NULL,
  `IsBonus` tinyint DEFAULT NULL,
  `IsMandatory` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ObjectId` bigint NOT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuestionRelationships_LOAD` (
  `CollectionId` bigint DEFAULT NULL,
  `QuestionId` bigint DEFAULT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `Order` bigint DEFAULT NULL,
  `SectionId` bigint DEFAULT NULL,
  `IsQuestionPool` tinyint DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `Points` decimal(19,9) DEFAULT NULL,
  `Difficulty` int DEFAULT NULL,
  `IsBonus` tinyint DEFAULT NULL,
  `IsMandatory` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ObjectId` bigint NOT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;