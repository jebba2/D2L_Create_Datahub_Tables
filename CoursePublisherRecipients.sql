CREATE TABLE `CoursePublisherRecipients` (
  `RecipientID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `RecipientID` (`RecipientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CoursePublisherRecipients_LOAD` (
  `RecipientID` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedAt` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `RecipientID` (`RecipientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;