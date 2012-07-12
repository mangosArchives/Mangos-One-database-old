ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0005 db_update_version_0006 bit;

-- Emerald Dragons (Xfurry)
DELETE FROM spell_script_target WHERE entry=24804;
INSERT INTO spell_script_target VALUES
(24804,1,14888);

-- Quest 6403 (Xfurry)
DELETE FROM spell_script_target WHERE entry in (20358,20465);
INSERT INTO spell_script_target VALUES
(20358,1,1749),
(20465,1,12580);

-- Black Moras (Xfurry)
DELETE FROM spell_script_target WHERE entry = 31550;
INSERT INTO spell_script_target VALUES
(31550, 1, 17918);

-- Razorgore Event (Xfurry)
DELETE FROM spell_script_target WHERE entry in (19832,23014);
INSERT INTO spell_script_target VALUES
(19832,1,12435),
(23014,1,12435);

-- The Bug Trio (Xfurry)
DELETE FROM spell_script_target WHERE entry=25790;
INSERT INTO spell_script_target VALUES
(25790,1,15543),
(25790,1,15511);

-- Jeklik (Xfurry)
DELETE FROM spell_script_target WHERE entry=23974;
INSERT INTO spell_script_target VALUES
(23974,1,14758);

-- Prophet Skeram (Xfurry)
DELETE FROM spell_target_position WHERE id IN (4801,8195,20449);
INSERT INTO spell_target_position VALUES
(4801,531,-8340.782227,2083.814453,125.648788,0),
(8195,531,-8341.546875,2118.504639,133.058151,0),
(20449,531,-8318.822266,2058.231201,133.058151,0);

-- Fankriss (Xfurry)
DELETE FROM spell_target_position WHERE id IN (720,1121);
INSERT INTO spell_target_position VALUES
(720,531,-8043.01,1254.21,-84.19,0),
(1121,531,-8022.68,1150.08,-89.33,0);

-- Black Moras (Xfurry)
DELETE FROM spell_scripts WHERE id=31550;
INSERT INTO spell_scripts VALUES 
(31550,0,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Despawn Time Keepers');

-- Emberseer Update (from Sniff) (Xfurry)
UPDATE creature_template SET speed_run=1.42857146263123, Unit_Flags=unit_flags|33554752, faction_A=40, faction_H=40, MovementType=0 WHERE entry=9816;

-- Delete Gyth - it's Summoned in Script (Xfurry)
DELETE FROM creature WHERE id=10339;
DELETE FROM creature WHERE id=10162 AND map=229;
UPDATE creature_template SET MovementType=0 WHERE entry IN (10429,10442,10447,10742,10339);

-- Chromaggus Door Lever (Xfurry)
DELETE FROM gameobject_scripts where id=55359; -- guid for 179148;
INSERT INTO gameobject_scripts VALUES
(55359,1,11,55351,0,0,0,0,0,0,0,0,0,0,0,0,'Open Chromaggus side door'), -- 55351 = guid of entry 179116 
(55359,2,25,1,0,14020,70,0,0,0,0,0,0,0,0,0,'Set Chromaggus run = true'),
(55359,3,3,0,0,14020,70,0,0,0,0,0,-7484.91,-1072.98,476.55,2.18,'Move Chromaggus in the center of the room');

-- Nefarian Event (Xfurry)
DELETE FROM gameobject WHERE id IN (179804,200000);
DELETE FROM gameobject_template_scripts WHERE id=179804;
INSERT INTO gameobject_template_scripts VALUES 
(179804,1,10,14605,60000,0,0,2,0,0,0,0,0,0,0,0,'Drakonid Bones - Summon Bone Construct');

-- The Mechanar (Xfurry)
DELETE FROM creature where id=19220;
UPDATE creature_template SET MovementType=0 WHERE entry IN (19220,19168,20990,19510,20988,20059,19735);
UPDATE creature_template SET MovementType=0 WHERE entry IN (21537,21539,21523,21522,21540,21541,21542);
UPDATE creature_template SET MovementType=0, faction_A=14, faction_H=14 WHERE entry IN (19919,19920);

-- The Arcatraz (Xfurry)
UPDATE creature_template SET MovementType=0 WHERE entry IN (20912,20977,21601,21602);

-- Shadowmoon valley (Xfurry)
UPDATE creature_template SET faction_A=14, faction_H=14, unit_flags=unit_flags|768 WHERE entry=21181;
UPDATE creature_template SET MovementType='0' WHERE entry IN (21685,21687,21686,21181,21739,21740,21738,21741);

-- Temple of AQ (Xfurry)
DELETE FROM creature WHERE id=15630;

-- Zul'Gurub Marli (Xfurry)
DELETE FROM gameobject_template_scripts WHERE id=179985;
INSERT INTO gameobject_template_scripts VALUES 
(179985,1,10,15041,60000,0,0,2,0,0,0,0,0,0,0,0,'Spider Egg - Summon Spawn of Mar\'li');
-- Zul'Gurub Jeklik
DELETE FROM creature_template_addon where entry=14517;
UPDATE creature_template SET InhabitType=InhabitType|4 WHERE entry IN (14517,14750,14965,11368);

-- Auchenai Crypts (Xfurry)
UPDATE creature_template SET MovementType=0 WHERE entry=19412;

-- Shadow Labyrinth (Xfurry)
DELETE FROM creature_template_addon WHERE entry=18794;
DELETE FROM creature_movement_template WHERE entry=18731;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime) VALUES
(18731,1,-157.366,2.177,8.073,0),
(18731,2,-172.266,-18.280,8.073,0),
(18731,3,-171.051,-38.748,8.073,0),
(18731,4,-170.718,-59.436,8.073,0),
(18731,5,-156.659,-72.118,8.073,0),
(18731,6,-142.292,-59.423,8.073,0),
(18731,7,-141.779,-38.972,8.073,0),
(18731,8,-142.922,-18.950,8.073,0),
(18731,9,-157.366,2.177,8.073,0);

-- Quest 9180 (Xfurry)
UPDATE creature_template SET MovementType=0 WHERE entry IN (21628,21641);

-- Quest 6403 (Xfurry)
DELETE FROM creature WHERE id=12580;
DELETE FROM creature_movement WHERE id=86900;

-- Black Moras (Xfurry)
DELETE FROM creature_template_addon WHERE entry IN (15608,21862,18553,18555);
INSERT INTO creature_template_addon VALUES
(15608,0,0,0,0,0,0,'31635 31556'),
(21862,0,0,0,0,0,0,'32570'),
(18553,0,0,0,0,0,0,'32563'),
(18555,0,0,0,0,0,0,'32566');
