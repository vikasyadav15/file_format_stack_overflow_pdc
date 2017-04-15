DROP TABLE IF EXISTS `Badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Badges` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Class` smallint(6) DEFAULT NULL,
  `TagBased` bit(64) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comments` (
  `Id` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `Score` int(11) NOT NULL DEFAULT '0',
  `Text` text,
  `CreationDate` datetime DEFAULT NULL,
  `UserDisplayName` varchar(30) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HADOOP_FILE_FORMAT_LOAD_DETAILS`
--

DROP TABLE IF EXISTS `HADOOP_FILE_FORMAT_LOAD_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HADOOP_FILE_FORMAT_LOAD_DETAILS` (
  `TABLENAME` varchar(20) DEFAULT NULL,
  `TABLECOUNT` bigint(20) DEFAULT NULL,
  `DATA_SIZE_IN_SOURCE_IN_GB` decimal(10,5) DEFAULT NULL,
  `DATA_SIZE_IN_SOURCE_IN_MB` decimal(10,5) DEFAULT NULL,
  `TEXT_FILE_SIZE_IN_GB` decimal(10,5) DEFAULT NULL,
  `TEXT_FILE_SIZE_IN_MB` decimal(10,5) DEFAULT NULL,
  `GZ_FILE_SIZE_IN_GB` decimal(10,5) DEFAULT NULL,
  `GZ_FILE_SIZE_IN_MB` decimal(10,5) DEFAULT NULL,
  `ORC_ZLIB_FILE_SIZE_IN_GB` decimal(10,5) DEFAULT NULL,
  `ORC_ZLIB_FILE_SIZE_IN_MB` decimal(10,5) DEFAULT NULL,
  `ORC_SNAPPY_FILE_SIZE_IN_GB` decimal(10,5) DEFAULT NULL,
  `ORC_SNAPPY_FILE_SIZE_IN_MB` decimal(10,5) DEFAULT NULL,
  `parquet_FILE_SIZE_IN_GB` decimal(10,5) DEFAULT NULL,
  `parquet_FILE_SIZE_IN_MB` decimal(10,5) DEFAULT NULL,
  `AVRO_FILE_SIZE_IN_GB` decimal(10,5) DEFAULT NULL,
  `AVRO_FILE_SIZE_IN_MB` decimal(10,5) DEFAULT NULL,
  `WRITE_TIME_TEXT_SECS` decimal(7,2) DEFAULT NULL,
  `WRITE_TIME_GZ_SECS` decimal(7,2) DEFAULT NULL,
  `WRITE_TIME_AVRO_SECS` decimal(7,2) DEFAULT NULL,
  `WRITE_TIME_ORC_ZLIB_SECS` decimal(7,2) DEFAULT NULL,
  `WRITE_TIME_ORC_SNAPPY_SECS` decimal(7,2) DEFAULT NULL,
  `WRITE_TIME_PARQUET_SECS` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PostHistory`
--

DROP TABLE IF EXISTS `PostHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PostHistory` (
  `Id` int(11) NOT NULL,
  `PostHistoryTypeId` smallint(6) NOT NULL,
  `PostId` int(11) NOT NULL,
  `RevisionGUID` varchar(36) NOT NULL,
  `CreationDate` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `UserDisplayName` varchar(40) DEFAULT NULL,
  `Comment` varchar(400) DEFAULT NULL,
  `Text` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PostLinks`
--

DROP TABLE IF EXISTS `PostLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PostLinks` (
  `Id` int(11) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `PostId` int(11) NOT NULL,
  `RelatedPostId` int(11) NOT NULL,
  `LinkTypeId` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

--
-- Table structure for table `Tags`
--

DROP TABLE IF EXISTS `Tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tags` (
  `Id` int(11) NOT NULL,
  `TagName` varchar(50) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `ExcerptPostId` int(11) DEFAULT NULL,
  `WikiPostId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `Id` int(11) NOT NULL,
  `Reputation` int(11) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `DisplayName` varchar(40) DEFAULT NULL,
  `LastAccessDate` datetime NOT NULL,
  `WebsiteUrl` varchar(256) DEFAULT NULL,
  `Location` varchar(256) DEFAULT NULL,
  `AboutMe` text,
  `Views` int(11) DEFAULT '0',
  `UpVotes` int(11) DEFAULT NULL,
  `DownVotes` int(11) DEFAULT NULL,
  `ProfileImageUrl` varchar(200) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `AccountId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Votes`
--

DROP TABLE IF EXISTS `Votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Votes` (
  `Id` int(11) NOT NULL,
  `PostId` int(11) NOT NULL,
  `VoteTypeId` smallint(6) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `BountyAmount` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
