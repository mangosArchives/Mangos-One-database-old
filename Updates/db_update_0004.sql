ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0003 db_update_version_0004 bit;

-- Malacrass - Zul'Aman
DELETE FROM creature_linking_template WHERE entry IN (24240,24241,24242,24243,24244,24245,24246,24247);
INSERT INTO creature_linking_template VALUES
(24240,568,24239,3,0),
(24241,568,24239,3,0),
(24242,568,24239,3,0),
(24243,568,24239,3,0),
(24244,568,24239,3,0),
(24245,568,24239,3,0),
(24246,568,24239,3,0),
(24247,568,24239,3,0);

-- Priestess Delrissa - Magister's Terrace
DELETE FROM creature_linking_template WHERE entry IN (24553,24554,24555,24556,24557,24558,24559,24561);
INSERT INTO creature_linking_template VALUES
(24553,585,24560,11,0),
(24554,585,24560,11,0),
(24555,585,24560,11,0),
(24556,585,24560,11,0),
(24557,585,24560,11,0),
(24558,585,24560,11,0),
(24559,585,24560,11,0),
(24561,585,24560,11,0);

-- Selin Fireheart - Magister's Terrace
DELETE FROM creature_linking_template WHERE entry IN (24722);
INSERT INTO creature_linking_template VALUES
(24722,585,24723,36,0);


-- Gruul's Lair
DELETE FROM creature_linking_template WHERE entry in (18832,18834,18835,18836);
INSERT INTO creature_linking_template VALUES
(18832,565,18831,143,0),
(18834,565,18831,143,0),
(18835,565,18831,143,0),
(18836,565,18831,143,0);

-- Twin Emperors - AQ40
DELETE FROM creature_linking_template WHERE entry IN (15276,15316,15317);
INSERT INTO creature_linking_template VALUES
(15276,531,15275,143,0),
(15316,531,15276,132,0),
(15317,531,15276,132,0);

-- Naxxramas
DELETE FROM creature_linking_template WHERE entry in (16063,16064,16065,16775,16776,16777,16778);
INSERT INTO creature_Linking_template VALUES
(16063,533,16062,143,0),
(16064,533,16062,143,0),
(16065,533,16062,143,0),
(16775,533,16062,256,0),
(16776,533,16065,256,0),
(16777,533,16063,256,0),
(16778,533,16064,256,0);

-- Astromancer Solarian
DELETE FROM creature_linking_template WHERE entry in (18925,18806);
INSERT INTO creature_linking_template VALUES
(18925,550,18805,4112,0),
(18806,550,18805,4112,0);

-- Dark Portal instance
DELETE FROM creature_linking_template WHERE entry in (17838,17879,17880,17881,21697,21698,21104,17839,17835,21818,17892,18994,18995,18553);
INSERT INTO creature_linking_template VALUES
(17838,269,15608,16,0),
(17879,269,15608,16,0),
(17880,269,15608,16,0),
(17881,269,15608,16,0),
(21697,269,15608,16,0),
(21698,269,15608,16,0),
(21104,269,15608,16,0),
(17839,269,15608,16,0),
(17835,269,15608,16,0),
(21818,269,15608,16,0),
(17892,269,15608,16,0),
(18994,269,15608,16,0),
(18995,269,15608,16,0),
(18553,269,15608,16,0);

-- Bloodlord Mandokir - Zul'Gurub
DELETE FROM creature_linking_template WHERE entry in (14988,15117);
INSERT INTO creature_linking_template VALUES
(14988,309,11382,4096,0),
(15117,309,11382,4096,0);

-- Pyroguard Emberseer
DELETE FROM creature_linking_template WHERE entry=10316;
INSERT INTO creature_linking_template VALUES
(10316,229,10316,3,0);

-- Bug Trio
DELETE FROM creature_linking_template WHERE entry in (15544,15543);
INSERT INTO creature_linking_template VALUES
(15544,531,15511,143,0),
(15543,531,15511,143,0);

-- Razorgore
DELETE FROM creature_linking_template WHERE entry in (12557, 14456);
INSERT INTO creature_linking_template VALUES
(12557,469,12435,6,0),
(14456,469,12557,143,0);

-- Quest 10588
DELETE FROM creature_linking_template WHERE entry in (21687,21686);
INSERT INTO creature_linking_template VALUES
(21686,530,21685,3,0),
(21687,530,21685,3,0);

DELETE FROM creature_linking_template WHERE entry IN (20481);
INSERT INTO creature_linking_template VALUES
(20481,554,19221,4112,0);

-- Quest 9737
DELETE FROM creature_linking_template WHERE entry in (17911,17912,17913,17914);
INSERT INTO creature_linking_template VALUES
(17911,329,17910,143,0),
(17912,329,17910,143,0),
(17913,329,17910,143,0),
(17914,329,17910,143,0);

-- Ayamiss
DELETE FROM creature_linking_template WHERE entry in (15546,15934);
INSERT INTO creature_linking_template VALUES
(15546,509,15369,4112,0),
(15934,509,15369,4096,0);
