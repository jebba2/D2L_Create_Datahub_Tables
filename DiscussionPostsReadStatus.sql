CREATE TABLE `DiscussionPostsReadStatus` (
  `TopicId` bigint DEFAULT NULL,
  `UserId` int NOT NULL,
  `PostId` bigint NOT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `FirstReadDate` datetime DEFAULT NULL,
  `LastReadDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionPostsReadStatus_LOAD` (
  `TopicId` bigint DEFAULT NULL,
  `UserId` int NOT NULL,
  `PostId` bigint NOT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `FirstReadDate` datetime DEFAULT NULL,
  `LastReadDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;