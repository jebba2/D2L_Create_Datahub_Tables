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