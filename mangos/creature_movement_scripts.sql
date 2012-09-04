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
-- Table structure for table `creature_movement_scripts`
--

DROP TABLE IF EXISTS `creature_movement_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_movement_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `buddy_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `search_radius` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_movement_scripts`
--

LOCK TABLES `creature_movement_scripts` WRITE;
/*!40000 ALTER TABLE `creature_movement_scripts` DISABLE KEYS */;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(14241,1,1,35,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - emote'),
(14241,6,1,35,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - emote'),
(14241,9,11,112873,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - open door entry 176907'),
(14241,14,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - fake dead'),
(14241,25,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - despawn self'),
(14241,25,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - set not active'),
(150201,0,26,1,0,1736,20,1,0,0,0,0,0,0,0,0,'W.Ghuol - Attack on Guards'),
(150201,0,22,21,1,1502,5,0,0,0,0,0,0,0,0,0,'W.Ghuol - Faction change'),
(150202,0,20,1,0,1502,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:random'),
(150202,45,20,2,0,1502,5,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(153301,0,20,1,0,1533,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:random'),
(153301,175,20,2,0,1533,5,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(253301,0,25,1,0,2533,5,0,0,0,0,0,0,0,0,0,'RUN ON'),
(253301,1,0,0,0,2533,15,4,2000005059,0,0,0,0,0,0,0,''),
(253301,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253302,1,0,0,0,2533,15,4,2000005057,0,0,0,0,0,0,0,''),
(253302,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253303,1,0,0,0,2533,15,4,2000005058,0,0,0,0,0,0,0,''),
(253303,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253304,1,0,0,0,2533,15,4,2000005059,0,0,0,0,0,0,0,''),
(253304,3,0,0,0,2532,15,4,2000005063,0,0,0,0,0,0,0,''),
(253305,1,0,0,0,2533,15,4,2000005060,0,0,0,0,0,0,0,''),
(253305,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(253306,1,0,0,0,2533,15,4,2000005061,0,0,0,0,0,0,0,''),
(253306,3,0,0,0,2532,15,4,2000005062,0,0,0,0,0,0,0,''),
(406801,2,0,2,0,0,0,0,2000000094,0,0,0,0,0,0,0,'Serpent Messenger - text emote'),
(406801,8,0,2,10,0,3419,4,2000000095,0,0,0,0,0,0,0,'Serpent Messenger: Force NPC to text emote'),
(566601,2,0,0,0,0,0,0,2000000088,0,0,0,0,0,0,0,'Visage Say 1'),
(566601,2,1,2,0,0,0,0,0,0,0,0,0,0,0,0,''),
(566601,7,0,0,0,0,0,0,2000000089,0,0,0,0,0,0,0,'Visage Say 2'),
(1485001,3,0,0,0,14850,5,4,2000005314,0,0,0,0,0,0,0,''),
(1485001,8,0,0,0,14859,5,4,2000005315,0,0,0,0,0,0,0,''),
(1485001,12,0,0,0,14850,5,4,2000005316,0,0,0,0,0,0,0,''),
(1485002,3,0,0,0,14850,5,4,2000005317,0,0,0,0,0,0,0,''),
(1485002,7,0,0,0,14859,5,4,2000005318,0,0,0,0,0,0,0,''),
(1485002,12,0,0,0,14850,5,4,2000005319,0,0,0,0,0,0,0,''),
(1485003,0,20,1,0,14850,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:random'),
(1485003,235,20,2,0,14850,5,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(1485701,0,25,1,0,14857,5,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485702,0,25,0,0,14857,5,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485703,3,0,0,0,14857,5,4,2000005308,0,0,0,0,0,0,0,''),
(1485703,31,0,0,0,14857,5,4,2000005309,0,0,0,0,0,0,0,''),
(1485704,15,0,0,0,14857,5,4,2000005311,0,0,0,0,0,0,0,''),
(1485704,18,25,1,0,14857,5,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1485705,0,25,0,0,14857,5,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1485705,3,0,0,0,14857,5,4,2000005312,0,0,0,0,0,0,0,''),
(1485705,8,0,0,0,14893,5,4,2000005313,0,0,0,0,0,0,0,''),
(1485705,9,1,21,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485705,14,1,7,0,14893,5,0,0,0,0,0,0,0,0,0,''),
(1485705,14,1,7,0,3501,5,0,0,0,0,0,0,0,0,0,''),
(1485705,21,0,0,0,14857,5,4,2000005010,0,0,0,0,0,0,0,''),
(1485706,0,20,1,0,14857,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:random'),
(1485706,235,20,2,0,14857,5,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(1487301,0,25,1,0,14873,5,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487301,5,0,0,0,14873,5,4,2000005320,0,0,0,0,0,0,0,''),
(1487301,13,0,0,0,5907,30,4,2000005321,0,0,0,0,0,0,0,''),
(1487301,20,0,0,0,14873,5,4,2000005322,0,0,0,0,0,0,0,''),
(1487302,0,25,0,0,14873,5,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1487303,0,25,1,0,14873,5,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1487304,0,20,1,0,14873,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:random'),
(1487304,235,20,2,0,14873,5,0,0,0,0,0,0,0,0,0,'movement changed to 2:waypoint'),
(1490101,0,25,1,0,14901,5,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1490102,0,25,0,0,14901,5,0,0,0,0,0,0,0,0,0,'RUN OFF'),
(1490103,0,20,1,0,14901,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:random'),
(1490103,120,20,2,0,14901,5,0,0,0,0,0,0,0,0,0,'movement changed to 1:waypoint'),
(1763501,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lordaeron Commander - set movement to idle'),
(1799501,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lordaeron Veteran - set movement to idle'),
(2399501,3,0,0,0,23579,10,1,2000005015,0,0,0,0,0,0,0,''),
(2399501,3,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2399501,10,0,0,0,23579,10,4,2000005306,0,0,0,0,0,0,0,''),
(2399501,10,1,1,0,23579,10,0,0,0,0,0,0,0,0,0,''),
(2399501,17,0,0,0,23579,10,1,2000005016,0,0,0,0,0,0,0,''),
(2399501,17,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(2399501,24,0,0,0,23579,10,4,2000005014,0,0,0,0,0,0,0,''),
(2399501,25,1,1,0,23579,10,0,0,0,0,0,0,0,0,0,''),
(2399501,31,0,0,0,23579,10,1,2000005017,0,0,0,0,0,0,0,''),
(2399501,31,1,6,0,0,0,0,0,0,0,0,0,0,0,0,''),
(6883501,0,0,1,0,0,0,0,2000005302,2000005303,0,0,0,0,0,0,'Shattrath Saul - Perry Gatner Event Announce'),
(9710301,0,0,1,0,0,0,0,2000005304,2000005305,0,0,0,0,0,0,'Shattrath Saul - L70ETC Event Announce'),
(9711001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Rioter - Set Run Mode On'),
(9711002,0,16,10836,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Rioter - Open Cell Door Sound'),
(9711003,0,16,10837,0,0,0,0,0,0,0,0,0,0,0,0,'Defias Rioter - Close Cell Door Sound'),
(9838901,0,18,744000,0,0,0,0,0,0,0,0,0,0,0,0,'[DND] L70ETC Drums - World\'s End Tavern Despawn Drums on Drummer Spawn'),
(9839501,0,18,744000,0,0,0,0,0,0,0,0,0,0,0,0,'[DND] L70ETC Drums - Grim Guzzler Despawn Drums on Drummer Spawn');
/*!40000 ALTER TABLE `creature_movement_scripts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

