CREATE TABLE `IntelligentAgentRunLog` (
  `AgentId` bigint DEFAULT NULL,
  `AgentRunId` bigint NOT NULL,
  `IsPracticeRun` tinyint DEFAULT NULL,
  `IsRunNow` tinyint DEFAULT NULL,
  `NumUsers` int DEFAULT NULL,
  `NumUsersWithErrors` int DEFAULT NULL,
  `NumUsersWithInfos` int DEFAULT NULL,
  `NumUsersWithWarnings` int DEFAULT NULL,
  `RunUserId` int DEFAULT NULL,
  `RunDate` datetime DEFAULT NULL,
  UNIQUE KEY `AgentRunId` (`AgentRunId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `IntelligentAgentRunLog_LOAD` (
  `AgentId` bigint DEFAULT NULL,
  `AgentRunId` bigint NOT NULL,
  `IsPracticeRun` tinyint DEFAULT NULL,
  `IsRunNow` tinyint DEFAULT NULL,
  `NumUsers` int DEFAULT NULL,
  `NumUsersWithErrors` int DEFAULT NULL,
  `NumUsersWithInfos` int DEFAULT NULL,
  `NumUsersWithWarnings` int DEFAULT NULL,
  `RunUserId` int DEFAULT NULL,
  `RunDate` datetime DEFAULT NULL,
  UNIQUE KEY `AgentRunId` (`AgentRunId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;