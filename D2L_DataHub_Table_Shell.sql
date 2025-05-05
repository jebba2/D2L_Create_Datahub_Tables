
# Created: May 2, 2025 at 4:43:43 PM EDT
# Encoding: Unicode (UTF-8)


SET @ORIG_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS = 0;

SET @ORIG_UNIQUE_CHECKS = @@UNIQUE_CHECKS;
SET UNIQUE_CHECKS = 0;

SET @ORIG_TIME_ZONE = @@TIME_ZONE;
SET TIME_ZONE = '+00:00';

CREATE TABLE `AccommodationsProfileLog` (
  `AccommodatedUserId` bigint NOT NULL,
  `OrgUnitId` bigint NOT NULL,
  `QuizTimeLimitMultiplier` decimal(5,2) DEFAULT NULL,
  `QuizTimeLimitExtraTime` int DEFAULT NULL,
  `QuizControlAlwaysAllowRightClick` tinyint DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `AccommodatedUserId` (`AccommodatedUserId`,`OrgUnitId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AccommodationsProfileLog_LOAD` (
  `AccommodatedUserId` bigint NOT NULL,
  `OrgUnitId` bigint NOT NULL,
  `QuizTimeLimitMultiplier` decimal(5,2) DEFAULT NULL,
  `QuizTimeLimitExtraTime` int DEFAULT NULL,
  `QuizControlAlwaysAllowRightClick` tinyint DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `AccommodatedUserId` (`AccommodatedUserId`,`OrgUnitId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `Announcements` (
  `AnnouncementId` bigint NOT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `Title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsGlobal` tinyint DEFAULT NULL,
  `IsDraft` tinyint DEFAULT NULL,
  `NumAttachments` int DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `IsAuthorInfoShown` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  UNIQUE KEY `AnnouncementId` (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Announcements_LOAD` (
  `AnnouncementId` bigint NOT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `Title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsGlobal` tinyint DEFAULT NULL,
  `IsDraft` tinyint DEFAULT NULL,
  `NumAttachments` int DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `IsAuthorInfoShown` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  UNIQUE KEY `AnnouncementId` (`AnnouncementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSpecialAccess` (
  `DropboxId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSpecialAccess_LOAD` (
  `DropboxId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSubmissions` (
  `DropboxId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SubmitterId` bigint NOT NULL,
  `SubmitterType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSubmissionCount` int DEFAULT NULL,
  `TotalFileSize` bigint DEFAULT NULL,
  `FeedbackUserId` int DEFAULT NULL,
  `FeedbackIsRead` tinyint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeedbackLastModified` datetime DEFAULT NULL,
  `FeedbackReadDate` datetime DEFAULT NULL,
  `CompletionDate` datetime DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`SubmitterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSubmissions_LOAD` (
  `DropboxId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SubmitterId` bigint NOT NULL,
  `SubmitterType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSubmissionCount` int DEFAULT NULL,
  `TotalFileSize` bigint DEFAULT NULL,
  `FeedbackUserId` int DEFAULT NULL,
  `FeedbackIsRead` tinyint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeedbackLastModified` datetime DEFAULT NULL,
  `FeedbackReadDate` datetime DEFAULT NULL,
  `CompletionDate` datetime DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`,`SubmitterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSummary` (
  `DropboxId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Category` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeItemId` bigint DEFAULT NULL,
  `PossibleScore` decimal(19,9) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `IsRestricted` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `TurnItInEnabled` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `SubmissionType` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionType` varchar(27) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  `AIUtilization` int DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AssignmentSummary_LOAD` (
  `DropboxId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Category` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeItemId` bigint DEFAULT NULL,
  `PossibleScore` decimal(19,9) DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `IsRestricted` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `TurnItInEnabled` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `SubmissionType` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionType` varchar(27) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  `AIUtilization` int DEFAULT NULL,
  UNIQUE KEY `DropboxId` (`DropboxId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceRegisters` (
  `AttendanceRegisterId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeId` bigint DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `IncludeAllUsers` tinyint DEFAULT NULL,
  `CauseForConcern` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceRegisterId` (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceRegisters_LOAD` (
  `AttendanceRegisterId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeId` bigint DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `IncludeAllUsers` tinyint DEFAULT NULL,
  `CauseForConcern` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceRegisterId` (`AttendanceRegisterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceSchemes` (
  `SchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeSymbolId` bigint NOT NULL,
  `SymbolName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SymbolValue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `SchemeId` (`SchemeId`,`SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceSchemes_LOAD` (
  `SchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SchemeSymbolId` bigint NOT NULL,
  `SymbolName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SymbolValue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Percentage` decimal(19,9) DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `SchemeId` (`SchemeId`,`SchemeSymbolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceSessions` (
  `AttendanceSessionId` bigint NOT NULL,
  `AttendanceRegisterId` bigint DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceSessionId` (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceSessions_LOAD` (
  `AttendanceSessionId` bigint NOT NULL,
  `AttendanceRegisterId` bigint DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `AttendanceSessionId` (`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceUserSessions` (
  `UserId` int NOT NULL,
  `AttendanceSessionId` bigint NOT NULL,
  `SchemeSymbolId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AttendanceUserSessions_LOAD` (
  `UserId` int NOT NULL,
  `AttendanceSessionId` bigint NOT NULL,
  `SchemeSymbolId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttendanceSessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AudioVideoProcessed` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionNumber` int DEFAULT NULL,
  `Type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Source` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionSize` bigint DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `RequiredTranscoding` tinyint DEFAULT NULL,
  `RequiredTranscribing` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`,`RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AudioVideoProcessed_LOAD` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RevisionNumber` int DEFAULT NULL,
  `Type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Source` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionSize` bigint DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `RequiredTranscoding` tinyint DEFAULT NULL,
  `RequiredTranscribing` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`,`RevisionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AuditorRelationshipsLog` (
  `AuditorId` int NOT NULL,
  `UserToAuditId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedDate` datetime NOT NULL,
  UNIQUE KEY `AuditorId` (`AuditorId`,`UserToAuditId`,`OrgUnitId`,`ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AuditorRelationshipsLog_LOAD` (
  `AuditorId` int NOT NULL,
  `UserToAuditId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedDate` datetime NOT NULL,
  UNIQUE KEY `AuditorId` (`AuditorId`,`UserToAuditId`,`OrgUnitId`,`ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AwardsIssued` (
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `IssuedBy` int DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `IssuedId` bigint NOT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evidence` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedDate` datetime DEFAULT NULL,
  `RevokedReason` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedBy` bigint DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `IssuedId` (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AwardsIssued_LOAD` (
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `IssuedBy` int DEFAULT NULL,
  `IssueDate` datetime DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `IssuedId` bigint NOT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Evidence` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedDate` datetime DEFAULT NULL,
  `RevokedReason` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevokedBy` bigint DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `IssuedId` (`IssuedId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AwardObjects` (
  `AwardId` bigint NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AwardTypeId` int DEFAULT NULL,
  `Type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryCalculationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryNotificationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `ImagePath` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedByUserId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `AwardId` (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `AwardObjects_LOAD` (
  `AwardId` bigint NOT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AwardTypeId` int DEFAULT NULL,
  `Type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryCalculationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryNotificationType` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `ImagePath` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedByUserId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Criteria` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `AwardId` (`AwardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `ChecklistCategoryDetails` (
  `CategoryId` bigint NOT NULL,
  `ChecklistId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistCategoryDetails_LOAD` (
  `CategoryId` bigint NOT NULL,
  `ChecklistId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `CategoryId` (`CategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistCompletions` (
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `ItemId` bigint NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistCompletions_LOAD` (
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `ItemId` bigint NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistItemDetails` (
  `ItemId` bigint NOT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ScheduleId` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsAutoChecked` tinyint DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ItemId` (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistItemDetails_LOAD` (
  `ItemId` bigint NOT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ScheduleId` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsAutoChecked` tinyint DEFAULT NULL,
  `LastModifiedUtc` datetime DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ItemId` (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistObjects` (
  `ChecklistId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SharedUserId` int DEFAULT NULL,
  `DisplayInNewWindow` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `ChecklistId` (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ChecklistObjects_LOAD` (
  `ChecklistId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionIsHtml` tinyint DEFAULT NULL,
  `SharedUserId` int DEFAULT NULL,
  `DisplayInNewWindow` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `ChecklistId` (`ChecklistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivities` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ActivityName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityTypeId` int DEFAULT NULL,
  `AssessmentType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectLookupId` bigint DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AssessmentThresholdCriteria` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssessmentThreshold` decimal(19,9) DEFAULT NULL,
  `IsAutoEval` tinyint DEFAULT NULL,
  `RubricName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricLevelRequired` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivities_LOAD` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ActivityName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityTypeId` int DEFAULT NULL,
  `AssessmentType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectLookupId` bigint DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AssessmentThresholdCriteria` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssessmentThreshold` decimal(19,9) DEFAULT NULL,
  `IsAutoEval` tinyint DEFAULT NULL,
  `RubricName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricLevelRequired` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivityLog` (
  `ActivityId` bigint NOT NULL,
  `ActivityLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivityLog_LOAD` (
  `ActivityId` bigint NOT NULL,
  `ActivityLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`ActivityLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivityResults` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `LearningObjectId` bigint NOT NULL,
  `IsAchieved` tinyint DEFAULT NULL,
  `PercentAchieved` decimal(19,9) DEFAULT NULL,
  `RubricScore` decimal(19,9) DEFAULT NULL,
  `RubricLevelAchieved` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AchievedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`OrgUnitId`,`UserId`,`LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyActivityResults_LOAD` (
  `ActivityId` bigint NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `LearningObjectId` bigint NOT NULL,
  `IsAchieved` tinyint DEFAULT NULL,
  `PercentAchieved` decimal(19,9) DEFAULT NULL,
  `RubricScore` decimal(19,9) DEFAULT NULL,
  `RubricLevelAchieved` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricId` bigint DEFAULT NULL,
  `RubricCriterionId` bigint DEFAULT NULL,
  `AchievedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`,`OrgUnitId`,`UserId`,`LearningObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyLog` (
  `CompetencyLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ObjectTypeId` int DEFAULT NULL,
  `ObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectVersion` int DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `IndirectObjectId` bigint DEFAULT NULL,
  `IndirectObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IndirectObjectTypeId` int DEFAULT NULL,
  `IndirectObjectVersion` int DEFAULT NULL,
  UNIQUE KEY `CompetencyLogId` (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyLog_LOAD` (
  `CompetencyLogId` bigint NOT NULL,
  `LogTypeId` int DEFAULT NULL,
  `LogTypeName` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint DEFAULT NULL,
  `ObjectTypeId` int DEFAULT NULL,
  `ObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectVersion` int DEFAULT NULL,
  `LogDateTime` datetime DEFAULT NULL,
  `ModifiedBy` bigint DEFAULT NULL,
  `IndirectObjectId` bigint DEFAULT NULL,
  `IndirectObjectTypeName` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IndirectObjectTypeId` int DEFAULT NULL,
  `IndirectObjectVersion` int DEFAULT NULL,
  UNIQUE KEY `CompetencyLogId` (`CompetencyLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyObjects` (
  `ObjectId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReadyForEvaluation` tinyint DEFAULT NULL,
  `Status` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NeedReevaluation` tinyint DEFAULT NULL,
  `ReevaluationIfAchieved` tinyint DEFAULT NULL,
  `ReevaluationIfNotAchieved` tinyint DEFAULT NULL,
  `AdditionalIdentifier` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyObjects_LOAD` (
  `ObjectId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReadyForEvaluation` tinyint DEFAULT NULL,
  `Status` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NeedReevaluation` tinyint DEFAULT NULL,
  `ReevaluationIfAchieved` tinyint DEFAULT NULL,
  `ReevaluationIfNotAchieved` tinyint DEFAULT NULL,
  `AdditionalIdentifier` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyStructure` (
  `ObjectId` bigint NOT NULL,
  `ParentObjectId` bigint NOT NULL,
  `BaseObjectID` bigint NOT NULL,
  `Depth` int DEFAULT NULL,
  `EntryTime` int NOT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`,`ParentObjectId`,`BaseObjectID`,`EntryTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CompetencyStructure_LOAD` (
  `ObjectId` bigint NOT NULL,
  `ParentObjectId` bigint NOT NULL,
  `BaseObjectID` bigint NOT NULL,
  `Depth` int DEFAULT NULL,
  `EntryTime` int NOT NULL,
  UNIQUE KEY `ObjectId` (`ObjectId`,`ParentObjectId`,`BaseObjectID`,`EntryTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentFilePropertiesLog` (
  `OrgUnitId` int NOT NULL,
  `ContentObjectId` int NOT NULL,
  `Action` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FilePath` varchar(9999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileName` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileExtension` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSizeBytes` bigint DEFAULT NULL,
  `UploadDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`ContentObjectId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentFilePropertiesLog_LOAD` (
  `OrgUnitId` int NOT NULL,
  `ContentObjectId` int NOT NULL,
  `Action` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FilePath` varchar(9999) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileName` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileExtension` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSizeBytes` bigint DEFAULT NULL,
  `UploadDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `LastModified` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`ContentObjectId`,`LastModified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentObjects` (
  `ContentObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentObjectType` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentContentObjectId` int DEFAULT NULL,
  `Location` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ObjectId1` int DEFAULT NULL,
  `ObjectId2` int DEFAULT NULL,
  `ObjectId3` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Depth` int DEFAULT NULL,
  `ToolId` int DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentObjects_LOAD` (
  `ContentObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentObjectType` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionType` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentContentObjectId` int DEFAULT NULL,
  `Location` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `ObjectId1` int DEFAULT NULL,
  `ObjectId2` int DEFAULT NULL,
  `ObjectId3` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Depth` int DEFAULT NULL,
  `ToolId` int DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentUserCompletion` (
  `ContentObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentUserCompletion_LOAD` (
  `ContentObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `DateCompleted` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentUserProgress` (
  `ContentObjectId` int NOT NULL,
  `UserId` int NOT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `LastVisited` datetime DEFAULT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `NumRealVisits` int DEFAULT NULL,
  `NumFakeVisits` int DEFAULT NULL,
  `TotalTime` bigint DEFAULT NULL,
  `IsVisited` tinyint DEFAULT NULL,
  `IsCurrentBookmark` tinyint DEFAULT NULL,
  `IsSelfAssessComplete` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ContentUserProgress_LOAD` (
  `ContentObjectId` int NOT NULL,
  `UserId` int NOT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `LastVisited` datetime DEFAULT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `NumRealVisits` int DEFAULT NULL,
  `NumFakeVisits` int DEFAULT NULL,
  `TotalTime` bigint DEFAULT NULL,
  `IsVisited` tinyint DEFAULT NULL,
  `IsCurrentBookmark` tinyint DEFAULT NULL,
  `IsSelfAssessComplete` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ContentObjectId` (`ContentObjectId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAccess` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `DayAccessed` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`,`DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAccess_LOAD` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `DayAccessed` datetime NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`,`DayAccessed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAccessLog` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`,`Timestamp`,`Source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAccessLog_LOAD` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Source` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`,`Timestamp`,`Source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAwards` (
  `AssociationId` bigint NOT NULL,
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `HiddenAward` tinyint DEFAULT NULL,
  `ConditionSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Credits` decimal(9,2) DEFAULT NULL,
  `IsAssociated` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssociationId` (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseAwards_LOAD` (
  `AssociationId` bigint NOT NULL,
  `AwardId` bigint DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `HiddenAward` tinyint DEFAULT NULL,
  `ConditionSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `Credits` decimal(9,2) DEFAULT NULL,
  `IsAssociated` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssociationId` (`AssociationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseCopyLogs` (
  `SourceOrgUnitId` int DEFAULT NULL,
  `DestinationOrgUnitId` int DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsDestinationNew` tinyint DEFAULT NULL,
  `CopyProtectedResources` tinyint DEFAULT NULL,
  `CopyCourseJobId` bigint NOT NULL,
  `StatusId` int DEFAULT NULL,
  UNIQUE KEY `CopyCourseJobId` (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CourseCopyLogs_LOAD` (
  `SourceOrgUnitId` int DEFAULT NULL,
  `DestinationOrgUnitId` int DEFAULT NULL,
  `UserId` bigint DEFAULT NULL,
  `Status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsDestinationNew` tinyint DEFAULT NULL,
  `CopyProtectedResources` tinyint DEFAULT NULL,
  `CopyCourseJobId` bigint NOT NULL,
  `StatusId` int DEFAULT NULL,
  UNIQUE KEY `CopyCourseJobId` (`CopyCourseJobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CoursePublisherLaunches` (
  `LaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RecipientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `LaunchMethod` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalUserId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalLMSType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNewUser` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `LaunchId` (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `CoursePublisherLaunches_LOAD` (
  `LaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RecipientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `LaunchMethod` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalUserId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalLMSType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNewUser` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `LaunchId` (`LaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `DiscussionForums` (
  `OrgUnitId` int DEFAULT NULL,
  `ForumId` bigint NOT NULL,
  `Name` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MustPostToParticipate` tinyint DEFAULT NULL,
  `AllowAnon` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `RequiresApproval` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `ForumId` (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionForums_LOAD` (
  `OrgUnitId` int DEFAULT NULL,
  `ForumId` bigint NOT NULL,
  `Name` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MustPostToParticipate` tinyint DEFAULT NULL,
  `AllowAnon` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `RequiresApproval` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `ForumId` (`ForumId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionPosts` (
  `OrgUnitId` int DEFAULT NULL,
  `TopicId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `PostId` bigint NOT NULL,
  `ThreadId` bigint DEFAULT NULL,
  `IsReply` tinyint DEFAULT NULL,
  `ParentPostId` bigint DEFAULT NULL,
  `NumReplies` int DEFAULT NULL,
  `DatePosted` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `RatingSum` bigint DEFAULT NULL,
  `NumRatings` bigint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `LastEditDate` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Depth` int DEFAULT NULL,
  `Thread` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WordCount` int DEFAULT NULL,
  `AttachmentCount` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `PostId` (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionPosts_LOAD` (
  `OrgUnitId` int DEFAULT NULL,
  `TopicId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `PostId` bigint NOT NULL,
  `ThreadId` bigint DEFAULT NULL,
  `IsReply` tinyint DEFAULT NULL,
  `ParentPostId` bigint DEFAULT NULL,
  `NumReplies` int DEFAULT NULL,
  `DatePosted` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `RatingSum` bigint DEFAULT NULL,
  `NumRatings` bigint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `LastEditDate` datetime DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Depth` int DEFAULT NULL,
  `Thread` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WordCount` int DEFAULT NULL,
  `AttachmentCount` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `PostId` (`PostId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `DiscussionTopics` (
  `OrgUnitId` int DEFAULT NULL,
  `TopicId` bigint NOT NULL,
  `ForumId` bigint DEFAULT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MustPostToParticipate` tinyint DEFAULT NULL,
  `AllowAnon` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `RequiresApproval` tinyint DEFAULT NULL,
  `LastPostDate` datetime DEFAULT NULL,
  `LastPostUserId` bigint DEFAULT NULL,
  `NumViews` bigint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `GradeItemId` int DEFAULT NULL,
  `ScoreOutOf` float DEFAULT NULL,
  `ScoreCalculationMethod` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IncludeNonScoredValues` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `TopicId` (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionTopics_LOAD` (
  `OrgUnitId` int DEFAULT NULL,
  `TopicId` bigint NOT NULL,
  `ForumId` bigint DEFAULT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MustPostToParticipate` tinyint DEFAULT NULL,
  `AllowAnon` tinyint DEFAULT NULL,
  `IsHidden` tinyint DEFAULT NULL,
  `RequiresApproval` tinyint DEFAULT NULL,
  `LastPostDate` datetime DEFAULT NULL,
  `LastPostUserId` bigint DEFAULT NULL,
  `NumViews` bigint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `GradeItemId` int DEFAULT NULL,
  `ScoreOutOf` float DEFAULT NULL,
  `ScoreCalculationMethod` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IncludeNonScoredValues` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `StartDateAvailabilityType` smallint DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `EndDateAvailabilityType` smallint DEFAULT NULL,
  UNIQUE KEY `TopicId` (`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionTopicUserScores` (
  `UserId` int NOT NULL,
  `TopicId` bigint NOT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `DiscussionTopicUserScores_LOAD` (
  `UserId` int NOT NULL,
  `TopicId` bigint NOT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`TopicId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `EnrollmentsandWithdrawals` (
  `LogId` bigint NOT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Action` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedByUserId` int DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`),
  KEY `idx_UserId_OrgUnitId_ModifiedByUserId` (`UserId`,`OrgUnitId`,`ModifiedByUserId`) USING BTREE,
  KEY `idx_UserId` (`UserId`) USING BTREE,
  KEY `idx_OrgUnitId` (`OrgUnitId`) USING BTREE,
  KEY `idx_ModifiedByUserId` (`ModifiedByUserId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `EnrollmentsandWithdrawals_LOAD` (
  `LogId` bigint NOT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Action` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedByUserId` int DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradebookSettings` (
  `OrgUnitId` int NOT NULL,
  `GradeSchemeId` bigint NOT NULL,
  `GradingSystem` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UngradedItems` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsAdjustedFinalGradeReleased` tinyint DEFAULT NULL,
  `IsCalculatedFinalGradeReleased` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradebookSettings_LOAD` (
  `OrgUnitId` int NOT NULL,
  `GradeSchemeId` bigint NOT NULL,
  `GradingSystem` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UngradedItems` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsAdjustedFinalGradeReleased` tinyint DEFAULT NULL,
  `IsCalculatedFinalGradeReleased` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeObjects` (
  `GradeObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ParentGradeObjectId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsAutoPointed` tinyint DEFAULT NULL,
  `IsFormula` tinyint DEFAULT NULL,
  `IsBonus` tinyint DEFAULT NULL,
  `MaxPoints` decimal(19,9) DEFAULT NULL,
  `CanExceedMaxGrade` tinyint DEFAULT NULL,
  `ExcludeFromFinalGradeCalc` tinyint DEFAULT NULL,
  `GradeSchemeId` bigint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `NumLowestGradesToDrop` int DEFAULT NULL,
  `NumHighestGradesToDrop` int DEFAULT NULL,
  `WeightDistributionType` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ToolName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssociatedToolItemId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ShortName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeObjectTypeId` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  UNIQUE KEY `GradeObjectId` (`GradeObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeObjects_LOAD` (
  `GradeObjectId` int NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ParentGradeObjectId` int DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsAutoPointed` tinyint DEFAULT NULL,
  `IsFormula` tinyint DEFAULT NULL,
  `IsBonus` tinyint DEFAULT NULL,
  `MaxPoints` decimal(19,9) DEFAULT NULL,
  `CanExceedMaxGrade` tinyint DEFAULT NULL,
  `ExcludeFromFinalGradeCalc` tinyint DEFAULT NULL,
  `GradeSchemeId` bigint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `NumLowestGradesToDrop` int DEFAULT NULL,
  `NumHighestGradesToDrop` int DEFAULT NULL,
  `WeightDistributionType` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `ToolName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssociatedToolItemId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ShortName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeObjectTypeId` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `DeletedByUserId` int DEFAULT NULL,
  `ResultId` int DEFAULT NULL,
  UNIQUE KEY `GradeObjectId` (`GradeObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeObjectsLog` (
  `LogId` bigint NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeObjectId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `GradeSymbolString` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeObjectsLog_LOAD` (
  `LogId` bigint NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeObjectId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `GradeSymbolString` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `Modified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeResults` (
  `GradeObjectId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `IsReleased` tinyint DEFAULT NULL,
  `IsDropped` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `Comments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrivateComments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsExempt` tinyint DEFAULT NULL,
  `GradeText` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeReleasedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeObjectId` (`GradeObjectId`,`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeResults_LOAD` (
  `GradeObjectId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `PointsNumerator` decimal(19,9) DEFAULT NULL,
  `PointsDenominator` decimal(19,9) DEFAULT NULL,
  `WeightedNumerator` decimal(19,9) DEFAULT NULL,
  `WeightedDenominator` decimal(19,9) DEFAULT NULL,
  `IsReleased` tinyint DEFAULT NULL,
  `IsDropped` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `Comments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PrivateComments` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsExempt` tinyint DEFAULT NULL,
  `GradeText` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GradeReleasedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeObjectId` (`GradeObjectId`,`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeSchemes` (
  `GradeSchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeId` (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeSchemes_LOAD` (
  `GradeSchemeId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `SchemeName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeId` (`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeSchemesRange` (
  `GradeSchemeRangeId` bigint NOT NULL,
  `GradeSchemeId` bigint NOT NULL,
  `SymbolString` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssignedValue` decimal(19,9) DEFAULT NULL,
  `RangeStart` decimal(19,9) DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeRangeId` (`GradeSchemeRangeId`,`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `GradeSchemesRange_LOAD` (
  `GradeSchemeRangeId` bigint NOT NULL,
  `GradeSchemeId` bigint NOT NULL,
  `SymbolString` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssignedValue` decimal(19,9) DEFAULT NULL,
  `RangeStart` decimal(19,9) DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `GradeSchemeRangeId` (`GradeSchemeRangeId`,`GradeSchemeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `IntelligentAgentObjects` (
  `AgentId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AgentName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Enabled` tinyint DEFAULT NULL,
  `SpecificRoles` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LoginConditionEnabled` tinyint DEFAULT NULL,
  `LoginConditionThreshold` int DEFAULT NULL,
  `LoginConditionType` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccessConditionEnabled` tinyint DEFAULT NULL,
  `AccessConditionThreshold` int DEFAULT NULL,
  `AccessConditionType` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  `RepeatType` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailWhenSatisfied` tinyint DEFAULT NULL,
  `EnableSchedule` tinyint DEFAULT NULL,
  `ScheduleType` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScheduleRepeatsEvery` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AgentId` (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `IntelligentAgentObjects_LOAD` (
  `AgentId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AgentName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Enabled` tinyint DEFAULT NULL,
  `SpecificRoles` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LoginConditionEnabled` tinyint DEFAULT NULL,
  `LoginConditionThreshold` int DEFAULT NULL,
  `LoginConditionType` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccessConditionEnabled` tinyint DEFAULT NULL,
  `AccessConditionThreshold` int DEFAULT NULL,
  `AccessConditionType` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  `RepeatType` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailWhenSatisfied` tinyint DEFAULT NULL,
  `EnableSchedule` tinyint DEFAULT NULL,
  `ScheduleType` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScheduleRepeatsEvery` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AgentId` (`AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `JITProvisionedUsersLog` (
  `UserId` int NOT NULL,
  `MappingField` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MappingFieldValue` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderType` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderId` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Timestamp` datetime NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `JITProvisionedUsersLog_LOAD` (
  `UserId` int NOT NULL,
  `MappingField` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MappingFieldValue` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderType` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProviderId` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  `Timestamp` datetime NOT NULL,
  `Action` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LocalAuthenticationSecurityLog` (
  `UserId` int NOT NULL,
  `Action` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ModifiedBy` int NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  UNIQUE KEY `UserId` (`UserId`,`Action`,`ModifiedBy`,`ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LocalAuthenticationSecurityLog_LOAD` (
  `UserId` int NOT NULL,
  `Action` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ModifiedBy` int NOT NULL,
  `ModifiedDate` datetime NOT NULL,
  UNIQUE KEY `UserId` (`UserId`,`Action`,`ModifiedBy`,`ModifiedDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILaunches` (
  `LTILaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `IMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImpersonatingUserId` bigint DEFAULT NULL,
  `ImpersonatingUserIMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LaunchDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LTILinkId` bigint DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ToolProviderId` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentTopicId` bigint DEFAULT NULL,
  `ParentModuleId` bigint DEFAULT NULL,
  `Placement` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MessageVersion` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTILaunchId` (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILaunches_LOAD` (
  `LTILaunchId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `IMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ImpersonatingUserId` bigint DEFAULT NULL,
  `ImpersonatingUserIMSRoleNames` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LaunchDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LTILinkId` bigint DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ToolProviderId` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentTopicId` bigint DEFAULT NULL,
  `ParentModuleId` bigint DEFAULT NULL,
  `Placement` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MessageVersion` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RequestType` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTILaunchId` (`LTILaunchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILinks` (
  `LtiLinkId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkType` int DEFAULT NULL,
  `LTIVersion` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `SendTCInfo` tinyint DEFAULT NULL,
  `SendContextInfo` tinyint DEFAULT NULL,
  `SendCourseInfo` tinyint DEFAULT NULL,
  `SendOrgUnitInfo` tinyint DEFAULT NULL,
  `SendUserId` tinyint DEFAULT NULL,
  `SendUserName` tinyint DEFAULT NULL,
  `SendUserEmail` tinyint DEFAULT NULL,
  `SendLinkTitle` tinyint DEFAULT NULL,
  `SendLinkDescription` tinyint DEFAULT NULL,
  `SendD2LUserName` tinyint DEFAULT NULL,
  `SendD2LOrgDefinedId` tinyint DEFAULT NULL,
  `SendD2LOrgRoleId` tinyint DEFAULT NULL,
  `SendBrightspaceUserId` tinyint DEFAULT NULL,
  `Anonymous` tinyint DEFAULT NULL,
  `Shared` tinyint DEFAULT NULL,
  `UseToolProviderSecuritySettings` tinyint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `OuAvailabilitySetId` bigint DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LtiLinkId` (`LtiLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILinks_LOAD` (
  `LtiLinkId` bigint NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkType` int DEFAULT NULL,
  `LTIVersion` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `SendTCInfo` tinyint DEFAULT NULL,
  `SendContextInfo` tinyint DEFAULT NULL,
  `SendCourseInfo` tinyint DEFAULT NULL,
  `SendOrgUnitInfo` tinyint DEFAULT NULL,
  `SendUserId` tinyint DEFAULT NULL,
  `SendUserName` tinyint DEFAULT NULL,
  `SendUserEmail` tinyint DEFAULT NULL,
  `SendLinkTitle` tinyint DEFAULT NULL,
  `SendLinkDescription` tinyint DEFAULT NULL,
  `SendD2LUserName` tinyint DEFAULT NULL,
  `SendD2LOrgDefinedId` tinyint DEFAULT NULL,
  `SendD2LOrgRoleId` tinyint DEFAULT NULL,
  `SendBrightspaceUserId` tinyint DEFAULT NULL,
  `Anonymous` tinyint DEFAULT NULL,
  `Shared` tinyint DEFAULT NULL,
  `UseToolProviderSecuritySettings` tinyint DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `OuAvailabilitySetId` bigint DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LtiLinkId` (`LtiLinkId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILinkMigrationAudit` (
  `LTIMigrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` bigint DEFAULT NULL,
  `MigrationDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LinkId` bigint DEFAULT NULL,
  `LinkURL` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistrationDomain` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobId` bigint DEFAULT NULL,
  `Status` smallint DEFAULT NULL,
  `FailureCode` smallint DEFAULT NULL,
  `MigrationType` smallint DEFAULT NULL,
  `LegacyURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTIMigrationId` (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `LTILinkMigrationAudit_LOAD` (
  `LTIMigrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` bigint DEFAULT NULL,
  `MigrationDate` datetime DEFAULT NULL,
  `OrgUnitId` bigint DEFAULT NULL,
  `LinkId` bigint DEFAULT NULL,
  `LinkURL` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistrationDomain` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DeploymentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JobId` bigint DEFAULT NULL,
  `Status` smallint DEFAULT NULL,
  `FailureCode` smallint DEFAULT NULL,
  `MigrationType` smallint DEFAULT NULL,
  `LegacyURL` varchar(2083) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LTIMigrationId` (`LTIMigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `MediaConsumptionLog` (
  `LogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientApp` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateConsumed` datetime DEFAULT NULL,
  `DurationPercentageWatched` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `MediaConsumptionLog_LOAD` (
  `LogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int DEFAULT NULL,
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentType` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClientApp` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateConsumed` datetime DEFAULT NULL,
  `DurationPercentageWatched` int DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `MediaObjects` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionCount` int DEFAULT NULL,
  `OwnerId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `MediaObjects_LOAD` (
  `ContentId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RevisionCount` int DEFAULT NULL,
  `OwnerId` int DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ContentId` (`ContentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnits` (
  `OrgUnitId` int NOT NULL,
  `Organization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `RecycledDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgUnitTypeId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnits_LOAD` (
  `OrgUnitId` int NOT NULL,
  `Organization` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `DeletedDate` datetime DEFAULT NULL,
  `RecycledDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgUnitTypeId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitAncestors` (
  `OrgUnitId` int NOT NULL,
  `AncestorOrgUnitId` int NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`AncestorOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitAncestors_LOAD` (
  `OrgUnitId` int NOT NULL,
  `AncestorOrgUnitId` int NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`AncestorOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitDescendants` (
  `OrgUnitId` int NOT NULL,
  `DescendantOrgUnitId` int NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`DescendantOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitDescendants_LOAD` (
  `OrgUnitId` int NOT NULL,
  `DescendantOrgUnitId` int NOT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`DescendantOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitParents` (
  `OrgUnitId` int NOT NULL,
  `ParentOrgUnitId` int NOT NULL,
  `RowVersion` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`ParentOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitParents_LOAD` (
  `OrgUnitId` int NOT NULL,
  `ParentOrgUnitId` int NOT NULL,
  `RowVersion` bigint DEFAULT NULL,
  `DateDeleted` datetime DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`ParentOrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitRecentAccess` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `LastAccessedDate` datetime DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OrganizationalUnitRecentAccess_LOAD` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `LastAccessedDate` datetime DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesAlignedtoToolObjects` (
  `ObjectType` int NOT NULL,
  `ObjectId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectType` (`ObjectType`,`ObjectId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesAlignedtoToolObjects_LOAD` (
  `ObjectType` int NOT NULL,
  `ObjectId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ObjectType` (`ObjectType`,`ObjectId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesAssessedCheckpoints` (
  `CheckpointId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ConfigDecayRate` int DEFAULT NULL,
  `ConfigAggregationMethod` int DEFAULT NULL,
  `ConfigIncludedActivities` int DEFAULT NULL,
  `ConfigMultipleAttemptStrategy` int DEFAULT NULL,
  `ConfigRecentlyAssessedActivityCount` int DEFAULT NULL,
  `ConfigTieBreaker` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `HasMetAchievementThreshold` tinyint DEFAULT NULL,
  UNIQUE KEY `CheckpointId` (`CheckpointId`,`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesAssessedCheckpoints_LOAD` (
  `CheckpointId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ConfigDecayRate` int DEFAULT NULL,
  `ConfigAggregationMethod` int DEFAULT NULL,
  `ConfigIncludedActivities` int DEFAULT NULL,
  `ConfigMultipleAttemptStrategy` int DEFAULT NULL,
  `ConfigRecentlyAssessedActivityCount` int DEFAULT NULL,
  `ConfigTieBreaker` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `HasMetAchievementThreshold` tinyint DEFAULT NULL,
  UNIQUE KEY `CheckpointId` (`CheckpointId`,`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesCourseSpecificScales` (
  `OrgUnitId` int NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AchievementThreshold` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesCourseSpecificScales_LOAD` (
  `OrgUnitId` int NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AchievementThreshold` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesDemonstrations` (
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ExplicitlyEnteredScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutomaticallyGeneratedScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AlignedObjectType` int DEFAULT NULL,
  `AlignedObjectId` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPublished` tinyint DEFAULT NULL,
  `AssessedUserId` int DEFAULT NULL,
  `AssessedDate` datetime DEFAULT NULL,
  `AssessorUserId` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `DemonstrationId` (`DemonstrationId`),
  KEY `idxLearnerOutcome` (`AssessedUserId`,`OutcomeId`),
  KEY `idxOutcome` (`OutcomeId`,`AlignedObjectType`,`AssessedDate`,`ExplicitlyEnteredScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesDemonstrations_LOAD` (
  `DemonstrationId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ExplicitlyEnteredScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AutomaticallyGeneratedScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AlignedObjectType` int DEFAULT NULL,
  `AlignedObjectId` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPublished` tinyint DEFAULT NULL,
  `AssessedUserId` int DEFAULT NULL,
  `AssessedDate` datetime DEFAULT NULL,
  `AssessorUserId` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `DemonstrationId` (`DemonstrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesDetails` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeDefinitionSource` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeDefinitionId` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentOutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notation` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesDetails_LOAD` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OutcomeDefinitionSource` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutcomeDefinitionId` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentOutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notation` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesProgramDetails` (
  `ProgramId` bigint NOT NULL,
  `ProgramName` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ProgramId` (`ProgramId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesProgramDetails_LOAD` (
  `ProgramId` bigint NOT NULL,
  `ProgramName` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `ProgramId` (`ProgramId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesInRegistries` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesInRegistries_LOAD` (
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OutcomeId` (`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomeRegistryOwners` (
  `OwnerType` int NOT NULL,
  `OwnerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OwnerType` (`OwnerType`,`OwnerId`,`RegistryId`),
  KEY `idxRegistryId` (`RegistryId`,`OwnerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomeRegistryOwners_LOAD` (
  `OwnerType` int NOT NULL,
  `OwnerId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `OwnerType` (`OwnerType`,`OwnerId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesRubricAlignments` (
  `RubricId` bigint NOT NULL,
  `CriterionId` bigint NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`,`CriterionId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesRubricAlignments_LOAD` (
  `RubricId` bigint NOT NULL,
  `CriterionId` bigint NOT NULL,
  `OutcomeId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`,`CriterionId`,`OutcomeId`,`RegistryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesScaleDefinition` (
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `UsePercentages` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ScaleId` (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesScaleDefinition_LOAD` (
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `UsePercentages` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `RegistryId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `ScaleId` (`ScaleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesScaleLevelDefinition` (
  `ScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `PercentageRangeStart` int DEFAULT NULL,
  `RGB` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScaleLevelId` (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `OutcomesScaleLevelDefinition_LOAD` (
  `ScaleLevelId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScaleId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `PercentageRangeStart` int DEFAULT NULL,
  `RGB` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScaleLevelId` (`ScaleLevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



CREATE TABLE `PreRequisiteConditionsMet` (
  `PreRequisiteId` int NOT NULL,
  `UserId` int NOT NULL,
  `DateMet` datetime DEFAULT NULL,
  `Action` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `PreRequisiteConditionsMet_LOAD` (
  `PreRequisiteId` int NOT NULL,
  `UserId` int NOT NULL,
  `DateMet` datetime DEFAULT NULL,
  `Action` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `QuizAttempts` (
  `AttemptId` bigint NOT NULL,
  `QuizId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `OldAttemptNumber` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `PossibleScore` decimal(19,9) DEFAULT NULL,
  `IsRetakeIncorrectOnly` tinyint DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `TimeLimit` int DEFAULT NULL,
  `TimeLimitEnforced` tinyint DEFAULT NULL,
  `TimeLimitExceededBehaviour` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsSynchronous` tinyint DEFAULT NULL,
  `DeductionPercentage` int DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizAttempts_LOAD` (
  `AttemptId` bigint NOT NULL,
  `QuizId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `IsGraded` tinyint DEFAULT NULL,
  `OldAttemptNumber` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `PossibleScore` decimal(19,9) DEFAULT NULL,
  `IsRetakeIncorrectOnly` tinyint DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `TimeLimit` int DEFAULT NULL,
  `TimeLimitEnforced` tinyint DEFAULT NULL,
  `TimeLimitExceededBehaviour` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsSynchronous` tinyint DEFAULT NULL,
  `DeductionPercentage` int DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizAttemptsLog` (
  `LogId` bigint NOT NULL,
  `AttemptId` bigint DEFAULT NULL,
  `EventTypeId` int DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EventTime` datetime DEFAULT NULL,
  `IPAddress` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizAttemptsLog_LOAD` (
  `LogId` bigint NOT NULL,
  `AttemptId` bigint DEFAULT NULL,
  `EventTypeId` int DEFAULT NULL,
  `Name` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EventTime` datetime DEFAULT NULL,
  `IPAddress` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LogId` (`LogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizObjects` (
  `QuizId` bigint NOT NULL,
  `QuizName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QuizDescription` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QuizCategory` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `GradeObjectId` bigint DEFAULT NULL,
  `OverallScoreCalculation` varchar(23) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QuizScoreDenominator` decimal(19,9) DEFAULT NULL,
  `HasPassword` tinyint DEFAULT NULL,
  `IPRestricted` tinyint DEFAULT NULL,
  `TimeLimit` int DEFAULT NULL,
  `TimeLimitEnforced` tinyint DEFAULT NULL,
  `AttemptsAllowed` int DEFAULT NULL,
  `PreventMovingBackwards` tinyint DEFAULT NULL,
  `AllowHints` tinyint DEFAULT NULL,
  `NotificationEmail` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisablePagerAccess` tinyint DEFAULT NULL,
  `DisplayInCalendar` tinyint DEFAULT NULL,
  `IsAttemptRldb` tinyint DEFAULT NULL,
  `IsSubviewRldb` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  `IsRetakeIncorrectOnly` tinyint DEFAULT NULL,
  `PagingTypeId` int DEFAULT NULL,
  `IsSynchronous` tinyint DEFAULT NULL,
  `DeductionPercentage` int DEFAULT NULL,
  UNIQUE KEY `QuizId` (`QuizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizObjects_LOAD` (
  `QuizId` bigint NOT NULL,
  `QuizName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QuizDescription` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QuizCategory` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DueDate` datetime DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatedBy` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` bigint DEFAULT NULL,
  `GradeObjectId` bigint DEFAULT NULL,
  `OverallScoreCalculation` varchar(23) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `QuizScoreDenominator` decimal(19,9) DEFAULT NULL,
  `HasPassword` tinyint DEFAULT NULL,
  `IPRestricted` tinyint DEFAULT NULL,
  `TimeLimit` int DEFAULT NULL,
  `TimeLimitEnforced` tinyint DEFAULT NULL,
  `AttemptsAllowed` int DEFAULT NULL,
  `PreventMovingBackwards` tinyint DEFAULT NULL,
  `AllowHints` tinyint DEFAULT NULL,
  `NotificationEmail` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisablePagerAccess` tinyint DEFAULT NULL,
  `DisplayInCalendar` tinyint DEFAULT NULL,
  `IsAttemptRldb` tinyint DEFAULT NULL,
  `IsSubviewRldb` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  `IsRetakeIncorrectOnly` tinyint DEFAULT NULL,
  `PagingTypeId` int DEFAULT NULL,
  `IsSynchronous` tinyint DEFAULT NULL,
  `DeductionPercentage` int DEFAULT NULL,
  UNIQUE KEY `QuizId` (`QuizId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizQuestionAnswers` (
  `AnswerId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `Answer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizQuestionAnswers_LOAD` (
  `AnswerId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `Answer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizQuestionAnswerOptions` (
  `AnswerId` bigint NOT NULL,
  `AnswerText` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `QuizObjectId` bigint NOT NULL,
  `AnswerOptionId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`QuizObjectId`,`AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizQuestionAnswerOptions_LOAD` (
  `AnswerId` bigint NOT NULL,
  `AnswerText` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `QuizObjectId` bigint NOT NULL,
  `AnswerOptionId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`QuizObjectId`,`AnswerOptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `QuizUserAnswerResponses` (
  `AttemptId` bigint NOT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `AnswerId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `UserSelection` bigint DEFAULT NULL,
  `UserAnswer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`,`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `QuizUserAnswerResponses_LOAD` (
  `AttemptId` bigint NOT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `AnswerId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `UserSelection` bigint DEFAULT NULL,
  `UserAnswer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`,`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ReleaseConditionObjects` (
  `PreRequisiteId` int NOT NULL,
  `ResultId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNegativeCondition` tinyint DEFAULT NULL,
  `PreRequisiteToolId` int DEFAULT NULL,
  `Id1` int DEFAULT NULL,
  `Id2` int DEFAULT NULL,
  `ResultToolId` int DEFAULT NULL,
  `UsesPercentage` tinyint DEFAULT NULL,
  `OperatorTypeDesc` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `Guid1` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Guid2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`ResultId`,`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ReleaseConditionObjects_LOAD` (
  `PreRequisiteId` int NOT NULL,
  `ResultId` int NOT NULL,
  `OrgUnitId` int NOT NULL,
  `Name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsNegativeCondition` tinyint DEFAULT NULL,
  `PreRequisiteToolId` int DEFAULT NULL,
  `Id1` int DEFAULT NULL,
  `Id2` int DEFAULT NULL,
  `ResultToolId` int DEFAULT NULL,
  `UsesPercentage` tinyint DEFAULT NULL,
  `OperatorTypeDesc` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `Guid1` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Guid2` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `PreRequisiteId` (`PreRequisiteId`,`ResultId`,`OrgUnitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ReleaseConditionResults` (
  `ResultId` int NOT NULL,
  `UserId` int NOT NULL,
  `Met` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ResultId` (`ResultId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `ReleaseConditionResults_LOAD` (
  `ResultId` int NOT NULL,
  `UserId` int NOT NULL,
  `Met` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ResultId` (`ResultId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RoleDetails` (
  `RoleId` int NOT NULL,
  `RoleName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsCascading` tinyint DEFAULT NULL,
  `InClassList` tinyint DEFAULT NULL,
  `ClassListRoleName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClassListShowGroups` tinyint DEFAULT NULL,
  `ClassListShowSections` tinyint DEFAULT NULL,
  `ClassListDisplayRole` tinyint DEFAULT NULL,
  `AccessInactiveCO` tinyint DEFAULT NULL,
  `HasSpecialAccess` tinyint DEFAULT NULL,
  `AddToCourseOfferingGroups` tinyint DEFAULT NULL,
  `CanBeAutoEnrolledIntoGroups` tinyint DEFAULT NULL,
  `AddToCourseOfferingSections` tinyint DEFAULT NULL,
  `CanBeAutoEnrolledIntoSections` tinyint DEFAULT NULL,
  `ClassListDisplayRoleCategory` tinyint DEFAULT NULL,
  `AccessPastCourses` tinyint DEFAULT NULL,
  `AccessFutureCourses` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `ShowInContent` tinyint DEFAULT NULL,
  `ShowInDiscussionAssess` tinyint DEFAULT NULL,
  `ShowInDiscussionStats` tinyint DEFAULT NULL,
  `ShowInGrades` tinyint DEFAULT NULL,
  `ShowInAttendance` tinyint DEFAULT NULL,
  `AllowSelfEnrollInGroups` tinyint DEFAULT NULL,
  `ShowInRegistration` tinyint DEFAULT NULL,
  `ShowInUserProgress` tinyint DEFAULT NULL,
  `RoleAlias` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleCode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `RoleId` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RoleDetails_LOAD` (
  `RoleId` int NOT NULL,
  `RoleName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsCascading` tinyint DEFAULT NULL,
  `InClassList` tinyint DEFAULT NULL,
  `ClassListRoleName` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ClassListShowGroups` tinyint DEFAULT NULL,
  `ClassListShowSections` tinyint DEFAULT NULL,
  `ClassListDisplayRole` tinyint DEFAULT NULL,
  `AccessInactiveCO` tinyint DEFAULT NULL,
  `HasSpecialAccess` tinyint DEFAULT NULL,
  `AddToCourseOfferingGroups` tinyint DEFAULT NULL,
  `CanBeAutoEnrolledIntoGroups` tinyint DEFAULT NULL,
  `AddToCourseOfferingSections` tinyint DEFAULT NULL,
  `CanBeAutoEnrolledIntoSections` tinyint DEFAULT NULL,
  `ClassListDisplayRoleCategory` tinyint DEFAULT NULL,
  `AccessPastCourses` tinyint DEFAULT NULL,
  `AccessFutureCourses` tinyint DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `ShowInContent` tinyint DEFAULT NULL,
  `ShowInDiscussionAssess` tinyint DEFAULT NULL,
  `ShowInDiscussionStats` tinyint DEFAULT NULL,
  `ShowInGrades` tinyint DEFAULT NULL,
  `ShowInAttendance` tinyint DEFAULT NULL,
  `AllowSelfEnrollInGroups` tinyint DEFAULT NULL,
  `ShowInRegistration` tinyint DEFAULT NULL,
  `ShowInUserProgress` tinyint DEFAULT NULL,
  `RoleAlias` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleCode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `DeletedBy` int DEFAULT NULL,
  UNIQUE KEY `RoleId` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricAssessment` (
  `RubricId` bigint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `Score` decimal(36,2) DEFAULT NULL,
  `AssessedByUserId` int DEFAULT NULL,
  `AssessmentDate` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityObjectId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `AssessmentId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AssessmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricAssessment_LOAD` (
  `RubricId` bigint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `UserId` int NOT NULL,
  `Score` decimal(36,2) DEFAULT NULL,
  `AssessedByUserId` int DEFAULT NULL,
  `AssessmentDate` datetime DEFAULT NULL,
  `IsCompleted` tinyint DEFAULT NULL,
  `ActivityType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityObjectId` bigint DEFAULT NULL,
  `DateCreated` datetime DEFAULT NULL,
  `AssessmentId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AssessmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricAssessmentCriteria` (
  `AssessmentId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreOverridden` tinyint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssessmentId` (`AssessmentId`,`UserId`,`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricAssessmentCriteria_LOAD` (
  `AssessmentId` bigint NOT NULL,
  `UserId` int NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreOverridden` tinyint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `LevelAchievedId` bigint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AssessmentId` (`AssessmentId`,`UserId`,`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricCriteriaLevels` (
  `RubricId` bigint NOT NULL,
  `CriterionId` bigint NOT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` decimal(19,9) DEFAULT NULL,
  `LevelId` bigint NOT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`,`CriterionId`,`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricCriteriaLevels_LOAD` (
  `RubricId` bigint NOT NULL,
  `CriterionId` bigint NOT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` decimal(19,9) DEFAULT NULL,
  `LevelId` bigint NOT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`,`CriterionId`,`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricsEdit` (
  `AuditLogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedObjectType` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `PreviousValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsLocked` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `AuditLogId` (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricsEdit_LOAD` (
  `AuditLogId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint DEFAULT NULL,
  `LevelId` bigint DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `ModifiedObjectType` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `ModifiedDate` datetime DEFAULT NULL,
  `PreviousValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ModifiedValue` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsLocked` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `AuditLogId` (`AuditLogId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjects` (
  `RubricId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricStatus` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoringMethods` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreVisible` tinyint DEFAULT NULL,
  `OrgUnitID` int DEFAULT NULL,
  `IsShared` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjects_LOAD` (
  `RubricId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricStatus` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RubricType` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoringMethods` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsScoreVisible` tinyint DEFAULT NULL,
  `OrgUnitID` int DEFAULT NULL,
  `IsShared` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `RubricId` (`RubricId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjectsCriteria` (
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `GroupName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GroupSortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `CriterionId` (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjectsCriteria_LOAD` (
  `RubricId` bigint DEFAULT NULL,
  `CriterionId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CriteriaGroupId` bigint DEFAULT NULL,
  `GroupName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GroupSortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `CriterionId` (`CriterionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjectLevels` (
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` decimal(19,9) DEFAULT NULL,
  `RangeStartValue` decimal(19,9) DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LevelId` (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `RubricObjectLevels_LOAD` (
  `RubricId` bigint DEFAULT NULL,
  `LevelId` bigint NOT NULL,
  `Name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Feedback` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Value` decimal(19,9) DEFAULT NULL,
  `RangeStartValue` decimal(19,9) DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `LevelSetId` bigint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `LevelId` (`LevelId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMActivities` (
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumChildren` int DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionThreshold` float DEFAULT NULL,
  `PassingScore` float DEFAULT NULL,
  `PassingScoreUsed` tinyint DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMActivities_LOAD` (
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumChildren` int DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CompletionThreshold` float DEFAULT NULL,
  `PassingScore` float DEFAULT NULL,
  `PassingScoreUsed` tinyint DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ActivityId` (`ActivityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMActivityAttempts` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ActivityId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMActivityAttempts_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ActivityId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractions` (
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InteractionType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weighting` float DEFAULT NULL,
  `CorrectResponses` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `InteractionId` (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractions_LOAD` (
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InteractionType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Weighting` float DEFAULT NULL,
  `CorrectResponses` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `InteractionId` (`InteractionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractionAttempts` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Response` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Result` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumericResult` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`InteractionId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractionAttempts_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Timestamp` datetime DEFAULT NULL,
  `Response` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Result` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumericResult` float DEFAULT NULL,
  `TimeSpent` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`InteractionId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractionObjectives` (
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `InteractionId` (`InteractionId`,`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMInteractionObjectives_LOAD` (
  `InteractionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `InteractionId` (`InteractionId`,`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjects` (
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ContentObjectId` int DEFAULT NULL,
  `ContentServiceContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceRevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceTopicId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearningStandard` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScormObjectId` (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjects_LOAD` (
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `ContentObjectId` int DEFAULT NULL,
  `ContentServiceContentId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceRevisionId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ContentServiceTopicId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LearningStandard` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  UNIQUE KEY `ScormObjectId` (`ScormObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjectives` (
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectiveType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPrimary` tinyint DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ObjectiveId` (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjectives_LOAD` (
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ObjectiveType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ActivityId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `InternalId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsPrimary` tinyint DEFAULT NULL,
  `Description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ScoreMin` float DEFAULT NULL,
  `ScoreMax` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `ObjectiveId` (`ObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjectiveAttempts` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ObjectiveId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMObjectiveAttempts_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ObjectiveId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AttemptNumber` int NOT NULL,
  `Score` float DEFAULT NULL,
  `ScoreRaw` float DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`,`ObjectiveId`,`AttemptNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMVisits` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `FirstAccessDate` datetime DEFAULT NULL,
  `LastAccessDate` datetime DEFAULT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `TimeSpent` int DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SCORMVisits_LOAD` (
  `VisitId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ScormObjectId` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `FirstAccessDate` datetime DEFAULT NULL,
  `LastAccessDate` datetime DEFAULT NULL,
  `CompletedDate` datetime DEFAULT NULL,
  `Completion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Success` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Score` float DEFAULT NULL,
  `TimeSpent` int DEFAULT NULL,
  `Progress` float DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `VisitId` (`VisitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


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


CREATE TABLE `SurveyAttempts` (
  `AttemptId` bigint NOT NULL,
  `SurveyId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `AttemptedFromOrgUnitId` int DEFAULT NULL,
  `OldAttemptNumber` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyAttempts_LOAD` (
  `AttemptId` bigint NOT NULL,
  `SurveyId` bigint DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `TimeStarted` datetime DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `AttemptedFromOrgUnitId` int DEFAULT NULL,
  `OldAttemptNumber` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyObjects` (
  `SurveyId` bigint NOT NULL,
  `SurveyName` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionEnabled` tinyint DEFAULT NULL,
  `HasInstantFeedback` tinyint DEFAULT NULL,
  `IsAnonymous` tinyint DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `SubmissionMessage` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Footer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FooterIsDisplayed` tinyint DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DisplayInCalendar` tinyint DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  `AttemptsAllowed` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `CategoryName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `SurveyId` (`SurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyObjects_LOAD` (
  `SurveyId` bigint NOT NULL,
  `SurveyName` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoryId` bigint DEFAULT NULL,
  `OrgUnitId` int DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescriptionEnabled` tinyint DEFAULT NULL,
  `HasInstantFeedback` tinyint DEFAULT NULL,
  `IsAnonymous` tinyint DEFAULT NULL,
  `IsVisible` tinyint DEFAULT NULL,
  `SubmissionMessage` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Footer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FooterIsDisplayed` tinyint DEFAULT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `DisplayInCalendar` tinyint DEFAULT NULL,
  `ResultId` bigint DEFAULT NULL,
  `AttemptsAllowed` int DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `CreatedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `CategoryName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `SurveyId` (`SurveyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyQuestionAnswers` (
  `AnswerId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `Answer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SurveyObjectId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`SurveyObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyQuestionAnswers_LOAD` (
  `AnswerId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `SortOrder` int DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `Weight` decimal(19,9) DEFAULT NULL,
  `Answer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SurveyObjectId` bigint NOT NULL,
  UNIQUE KEY `AnswerId` (`AnswerId`,`QuestionId`,`QuestionVersionId`,`SurveyObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyUserAnswers` (
  `AttemptId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `QuestionNumber` int DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `Assigned` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `SurveyTimeCompleted` datetime DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyUserAnswers_LOAD` (
  `AttemptId` bigint NOT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint DEFAULT NULL,
  `TimeCompleted` datetime DEFAULT NULL,
  `QuestionNumber` int DEFAULT NULL,
  `Comment` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SortOrder` int DEFAULT NULL,
  `Score` decimal(19,9) DEFAULT NULL,
  `Page` int DEFAULT NULL,
  `Assigned` tinyint DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `LastModifiedBy` int DEFAULT NULL,
  `SurveyTimeCompleted` datetime DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyUserAnswerResponses` (
  `AttemptId` bigint NOT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `AnswerId` bigint NOT NULL,
  `SortOrder` bigint DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `UserSelection` bigint DEFAULT NULL,
  `UserAnswer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`,`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SurveyUserAnswerResponses_LOAD` (
  `AttemptId` bigint NOT NULL,
  `AttemptNumber` int DEFAULT NULL,
  `QuestionId` bigint NOT NULL,
  `QuestionVersionId` bigint NOT NULL,
  `AnswerId` bigint NOT NULL,
  `SortOrder` bigint DEFAULT NULL,
  `IsCorrect` tinyint DEFAULT NULL,
  `UserSelection` bigint DEFAULT NULL,
  `UserAnswer` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileSetId` bigint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  UNIQUE KEY `AttemptId` (`AttemptId`,`QuestionId`,`QuestionVersionId`,`AnswerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SystemAccessLog` (
  `SessionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `State` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Source` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AppVersion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Device` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsOfflineMode` tinyint DEFAULT NULL,
  `IPAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `SessionId` (`SessionId`,`UserId`,`Timestamp`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `SystemAccessLog_LOAD` (
  `SessionId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserId` int NOT NULL,
  `Timestamp` datetime NOT NULL,
  `State` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Source` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AppVersion` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Device` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsOfflineMode` tinyint DEFAULT NULL,
  `IPAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `SessionId` (`SessionId`,`UserId`,`Timestamp`,`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Tools` (
  `ToolId` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisplayName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ToolId` (`ToolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Tools_LOAD` (
  `ToolId` int NOT NULL,
  `Name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DisplayName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `ToolId` (`ToolId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `TurnItInSubmissions` (
  `DropboxId` bigint DEFAULT NULL,
  `SubmissionId` bigint NOT NULL,
  `FileId` bigint NOT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `SubmissionStatus` smallint DEFAULT NULL,
  `SubmissionErrorType` smallint DEFAULT NULL,
  `ErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmittedBy` int DEFAULT NULL,
  `LastRefreshDate` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `SubmissionId` (`SubmissionId`,`FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `TurnItInSubmissions_LOAD` (
  `DropboxId` bigint DEFAULT NULL,
  `SubmissionId` bigint NOT NULL,
  `FileId` bigint NOT NULL,
  `LastSubmissionDate` datetime DEFAULT NULL,
  `SubmissionStatus` smallint DEFAULT NULL,
  `SubmissionErrorType` smallint DEFAULT NULL,
  `ErrorMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SubmittedBy` int DEFAULT NULL,
  `LastRefreshDate` datetime DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  UNIQUE KEY `SubmissionId` (`SubmissionId`,`FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Users` (
  `UserId` int NOT NULL,
  `UserName` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgDefinedId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `Organization` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalEmail` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignupDate` datetime DEFAULT NULL,
  `FirstLoginDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgRoleId` int DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `Users_LOAD` (
  `UserId` int NOT NULL,
  `UserName` varchar(270) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OrgDefinedId` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` tinyint DEFAULT NULL,
  `Organization` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ExternalEmail` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SignupDate` datetime DEFAULT NULL,
  `FirstLoginDate` datetime DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  `OrgRoleId` int DEFAULT NULL,
  `LastAccessed` datetime DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserAttributeDefinitions` (
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowMultiple` tinyint DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttributeId` (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserAttributeDefinitions_LOAD` (
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AllowMultiple` tinyint DEFAULT NULL,
  `IsDefault` tinyint DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` bigint DEFAULT NULL,
  UNIQUE KEY `AttributeId` (`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserAttributeValues` (
  `UserId` int NOT NULL,
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserAttributeValues_LOAD` (
  `UserId` int NOT NULL,
  `AttributeId` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value` varchar(4000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModified` datetime DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  `IsDeleted` tinyint DEFAULT NULL,
  `Version` int DEFAULT NULL,
  UNIQUE KEY `UserId` (`UserId`,`AttributeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserEnrollments` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `RoleName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  `EnrollmentType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserEnrollments_LOAD` (
  `OrgUnitId` int NOT NULL,
  `UserId` int NOT NULL,
  `RoleName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EnrollmentDate` datetime DEFAULT NULL,
  `EnrollmentType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RoleId` int DEFAULT NULL,
  UNIQUE KEY `OrgUnitId` (`OrgUnitId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserLogins` (
  `UserId` int DEFAULT NULL,
  `UserName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SessionId` int DEFAULT NULL,
  `StatusType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AttemptDate` datetime DEFAULT NULL,
  `ImpersonatingUserId` int DEFAULT NULL,
  `LoginAttemptId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoginSource` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LoginAttemptId` (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE TABLE `UserLogins_LOAD` (
  `UserId` int DEFAULT NULL,
  `UserName` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IP` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SessionId` int DEFAULT NULL,
  `StatusType` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AttemptDate` datetime DEFAULT NULL,
  `ImpersonatingUserId` int DEFAULT NULL,
  `LoginAttemptId` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoginSource` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `LoginAttemptId` (`LoginAttemptId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




SET FOREIGN_KEY_CHECKS = @ORIG_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS = @ORIG_UNIQUE_CHECKS;

SET @ORIG_TIME_ZONE = @@TIME_ZONE;
SET TIME_ZONE = @ORIG_TIME_ZONE;



#  Export Finished: May 2, 2025 at 4:44:01 PM EDT
