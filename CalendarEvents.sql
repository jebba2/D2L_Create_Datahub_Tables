CREATE TABLE `CalendarEvents` (
  `ScheduleId` bigint NOT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Title` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `TimeZoneIdentifier` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsAllDayEvent` tinyint DEFAULT NULL,
  `RecurrenceType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecurrenceInterval` int DEFAULT NULL,
  `CreatedByUserId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `EventObjectTypeName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectLookupId1` bigint DEFAULT NULL,
  `ObjectLookupId2` bigint DEFAULT NULL,
  UNIQUE KEY `ScheduleId` (`ScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CalendarEvents_LOAD` (
  `ScheduleId` bigint NOT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Title` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `TimeZoneIdentifier` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsAllDayEvent` tinyint DEFAULT NULL,
  `RecurrenceType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RecurrenceInterval` int DEFAULT NULL,
  `CreatedByUserId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `EventObjectTypeName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectLookupId1` bigint DEFAULT NULL,
  `ObjectLookupId2` bigint DEFAULT NULL,
  UNIQUE KEY `ScheduleId` (`ScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;