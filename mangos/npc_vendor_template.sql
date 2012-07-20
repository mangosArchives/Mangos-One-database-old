--
-- Copyright (C) 2005-2012 MaNGOS <http://getmangos.com/>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `npc_vendor_template`
--

DROP TABLE IF EXISTS `npc_vendor_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_vendor_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `incrtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_vendor_template`
--

LOCK TABLES `npc_vendor_template` WRITE;
/*!40000 ALTER TABLE `npc_vendor_template` DISABLE KEYS */;
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(1,16302,0,0,0),
(1,16316,0,0,0),
(1,16317,0,0,0),
(1,16318,0,0,0),
(1,16319,0,0,0),
(1,16320,0,0,0),
(1,16321,0,0,0),
(1,16322,0,0,0),
(1,16323,0,0,0),
(1,16324,0,0,0),
(1,16325,0,0,0),
(1,16326,0,0,0),
(1,16327,0,0,0),
(1,16328,0,0,0),
(1,16329,0,0,0),
(1,16330,0,0,0),
(1,16331,0,0,0),
(1,16346,0,0,0),
(1,16347,0,0,0),
(1,16348,0,0,0),
(1,16349,0,0,0),
(1,16350,0,0,0),
(1,16351,0,0,0),
(1,16352,0,0,0),
(1,16353,0,0,0),
(1,16354,0,0,0),
(1,16355,0,0,0),
(1,16356,0,0,0),
(1,16357,0,0,0),
(1,16358,0,0,0),
(1,16359,0,0,0),
(1,16360,0,0,0),
(1,16361,0,0,0),
(1,16362,0,0,0),
(1,16363,0,0,0),
(1,16364,0,0,0),
(1,16365,0,0,0),
(1,16366,0,0,0),
(1,16368,0,0,0),
(1,16371,0,0,0),
(1,16372,0,0,0),
(1,16373,0,0,0),
(1,16374,0,0,0),
(1,16375,0,0,0),
(1,16376,0,0,0),
(1,16377,0,0,0),
(1,16378,0,0,0),
(1,16379,0,0,0),
(1,16380,0,0,0),
(1,16381,0,0,0),
(1,16382,0,0,0),
(1,16383,0,0,0),
(1,16384,0,0,0),
(1,16385,0,0,0),
(1,16386,0,0,0),
(1,16387,0,0,0),
(1,16388,0,0,0),
(1,16389,0,0,0),
(1,16390,0,0,0),
(1,22179,0,0,0),
(1,22180,0,0,0),
(1,22181,0,0,0),
(1,22182,0,0,0),
(1,22184,0,0,0),
(1,22185,0,0,0),
(1,22186,0,0,0),
(1,22187,0,0,0),
(1,22188,0,0,0),
(1,22189,0,0,0),
(1,22190,0,0,0),
(1,23711,0,0,0),
(1,23730,0,0,0),
(1,23731,0,0,0),
(1,23734,0,0,0),
(1,23745,0,0,0),
(1,23755,0,0,0),
(1,25469,0,0,0),
(1,25900,0,0,0),
(1,28068,0,0,0),
(1,28071,0,0,0),
(1,28072,0,0,0),
(1,28073,0,0,0),
(2,16302,0,0,0),
(2,16316,0,0,0),
(2,16317,0,0,0),
(2,16318,0,0,0),
(2,16319,0,0,0),
(2,16320,0,0,0),
(2,16321,0,0,0),
(2,16322,0,0,0),
(2,16323,0,0,0),
(2,16324,0,0,0),
(2,16325,0,0,0),
(2,16326,0,0,0),
(2,16327,0,0,0),
(2,16328,0,0,0),
(2,16329,0,0,0),
(2,16330,0,0,0),
(2,16331,0,0,0),
(2,22179,0,0,0),
(2,22180,0,0,0),
(2,22181,0,0,0),
(3,16302,0,0,0),
(3,16316,0,0,0),
(3,16317,0,0,0),
(3,16318,0,0,0),
(3,16319,0,0,0),
(3,16320,0,0,0),
(3,16321,0,0,0),
(3,16322,0,0,0),
(3,16323,0,0,0),
(3,16324,0,0,0),
(3,16325,0,0,0),
(3,16326,0,0,0),
(3,16327,0,0,0),
(3,16328,0,0,0),
(3,16329,0,0,0),
(3,16330,0,0,0),
(3,16331,0,0,0),
(3,16346,0,0,0),
(3,16347,0,0,0),
(3,16348,0,0,0),
(3,16349,0,0,0),
(3,16350,0,0,0),
(3,16351,0,0,0),
(3,16352,0,0,0),
(3,16353,0,0,0),
(3,16354,0,0,0),
(3,16355,0,0,0),
(3,16356,0,0,0),
(3,16357,0,0,0),
(3,16358,0,0,0),
(3,16359,0,0,0),
(3,16360,0,0,0),
(3,16361,0,0,0),
(3,16362,0,0,0),
(3,16363,0,0,0),
(3,16364,0,0,0),
(3,16365,0,0,0),
(3,16366,0,0,0),
(3,22179,0,0,0),
(3,22180,0,0,0),
(3,22181,0,0,0),
(3,22182,0,0,0),
(3,22183,0,0,0),
(3,22184,0,0,0),
(3,22185,0,0,0),
(3,28068,0,0,0),
(4,2488,0,0,0),
(4,2489,0,0,0),
(4,2490,0,0,0),
(4,2491,0,0,0),
(4,2492,0,0,0),
(4,2493,0,0,0),
(4,2494,0,0,0),
(4,2495,0,0,0),
(5,17402,0,0,0),
(5,17403,0,0,0),
(5,17404,0,0,0),
(5,17405,0,0,0),
(5,17406,0,0,0),
(5,17407,0,0,0),
(5,17408,0,0,0),
(5,34410,0,0,0),
(5,34412,0,0,0),
(6,17194,0,0,0),
(6,17196,0,0,0),
(6,17200,0,0,0),
(6,17201,0,0,0),
(6,17202,0,0,0),
(6,17303,0,0,0),
(6,17304,0,0,0),
(6,17307,0,0,0),
(6,17344,0,0,0);
/*!40000 ALTER TABLE `npc_vendor_template` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

