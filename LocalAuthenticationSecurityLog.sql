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