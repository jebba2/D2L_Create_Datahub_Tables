CREATE TABLE `IntelligentAgentRunUsers` (
  `AgentId` bigint NOT NULL,
  `AgentRunId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ActionTypeName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActionHasError` tinyint DEFAULT NULL,
  `ActionHasInfo` tinyint DEFAULT NULL,
  `ActionHasWarning` tinyint DEFAULT NULL,
  `ShouldRetry` tinyint DEFAULT NULL,
  UNIQUE KEY `AgentId` (`AgentId`,`AgentRunId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `IntelligentAgentRunUsers_LOAD` (
  `AgentId` bigint NOT NULL,
  `AgentRunId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ActionTypeName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActionHasError` tinyint DEFAULT NULL,
  `ActionHasInfo` tinyint DEFAULT NULL,
  `ActionHasWarning` tinyint DEFAULT NULL,
  `ShouldRetry` tinyint DEFAULT NULL,
  UNIQUE KEY `AgentId` (`AgentId`,`AgentRunId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;