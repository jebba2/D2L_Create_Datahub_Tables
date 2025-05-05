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