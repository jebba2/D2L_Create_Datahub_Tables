CREATE TABLE `SessionHistory` (
  `SessionId` bigint DEFAULT NULL,
  `OrgId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `DateStarted` datetime DEFAULT NULL,
  `DateEnded` datetime DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  `TimedOut` tinyint DEFAULT NULL,
  `HistoryID` bigint NOT NULL,
  UNIQUE KEY `HistoryID` (`HistoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SessionHistory_LOAD` (
  `SessionId` bigint DEFAULT NULL,
  `OrgId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `DateStarted` datetime DEFAULT NULL,
  `DateEnded` datetime DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  `TimedOut` tinyint DEFAULT NULL,
  `HistoryID` bigint NOT NULL,
  UNIQUE KEY `HistoryID` (`HistoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;