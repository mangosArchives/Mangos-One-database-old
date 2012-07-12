ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0000 db_update_version_0001 bit;

-- ------------------------------------ --
--             Quest Start              --
-- ------------------------------------ --

-- Fix Quest Min Level for Quest Mor'zul Bloodbringer (7562)
UPDATE quest_template SET MinLevel=60 WHERE entry=7562;

-- Fix Quest City of Light (10211) Backportet from UDB
UPDATE creature_template SET speed_walk=2 WHERE entry=19685;

-- Fix Quest Curing the Sick [A] (6124) Backportet from UDB
UPDATE quest_template SET ReqCreatureOrGOId1=12299 WHERE entry=6124;

-- Fix Quest Curing the Sick [H] (6129) Backportet from UDB
UPDATE quest_template SET ReqCreatureOrGOId1=12297 WHERE entry=6129;

-- Fix Quest Misson: The Abyssal Shelf (10162) Backportet from UDB
UPDATE spell_area SET gender=2 WHERE spell=33836;
UPDATE quest_template SET SpecialFlags=0 WHERE entry=10162;

-- Fix Quest Inoculation (9303) Backportet from UDB
UPDATE quest_template SET ReqCreatureOrGOId1=16534 WHERE entry=9303;

-- Fix Quest Garments of Darkness (5650) Backportet from UDB
UPDATE creature_template SET faction_A=71, faction_H=71 WHERE entry=12428;

-- Fix Quest The Demoniac Scryer (10838) Backportet from UDB
UPDATE creature_template SET minhealth=9958, maxhealth=9958, armor=3750, faction_A=113, faction_H=113, npcflag=1, speed_walk=1, speed_run=1, mindmg=104, maxdmg=138, attackpower=252, minrangedmg=72, maxrangedmg=106, rangedattackpower=26, type=10 WHERE entry=22258;

-- Fix reputation for Quest Allegiance to the Aldor (10551) and Allegiance to the Scryers (10552) backport from UDB
UPDATE quest_template SET RewRepFaction2=0, RewRepValue2=0 WHERE entry IN (10551,10552);

-- Fix Quest The Final Code [A]/[H] Backportet from UDB
UPDATE quest_template SET ObjectiveText1='', ReqSourceCount1=0, ReqCreatureOrGOId1=0, ReqCreatureOrGOCount1=0, ReqSpellCast1=0, ReqSpellCast2=0 WHERE entry IN (10446,10446);

-- ------------------------------------ --
--              Quest End               --
-- ------------------------------------ --

-- ------------------------------------ --
--             Misc Start               --
-- ------------------------------------ --

-- Fix Netherwing Drake Backportet from UDB
UPDATE creature_template SET unit_flags=33344 WHERE entry=21648;

-- Fix Doors in The Blood Furnace Instance Backportet from UDB
UPDATE gameobject_template SET faction=1375, flags=32 WHERE entry IN (181766,181811,181812,181817,181818,181819,181820,181821,181822,181823);

-- Remove Battlemaster from game_event_creature
DELETE FROM game_event_creature WHERE guid IN (78,79,80,4761,4763,4765,20428,24794,26559,26564,32068,32070,32071,33316,46570,46819,49936,54614,54625,57683,57685,68937,71621,71622,71982,71998,71999,72000,72257,72258,72340,85617);

-- Update xyz for NPC (21502)
UPDATE creature SET position_x=-3300.39, position_y=2927.24, position_z=173.8, orientation=2.54 WHERE guid=86868;

-- Fix NPC Razormaw (17592) he can Fly, needed for Quest Razormaw (9689) Spawn by Item (24221) "game_event_scripts" i think need Waypoints. Backport from UDB
UPDATE creature_template SET InhabitType=7, unk16=2 WHERE entry=17592;

-- ------------------------------------ --
--               Misc End               --
-- ------------------------------------ --

-- ------------------------------------ --
--             By Xfurry                --
-- ------------------------------------ --

-- Grandmaster Vorpil
DELETE FROM spell_script_target WHERE entry=39364;
INSERT INTO spell_script_target VALUES
(39364,1,18732);

DELETE FROM creature_linking_template WHERE entry IN (19224,19226);
INSERT INTO creature_linking_template VALUES
(19224,555,18732,4112,0),
(19226,555,18732,4112,0);

-- Fix M'uru Spells - Sunwell Plateau. Thanks Xfurry
DELETE FROM spell_script_target WHERE entry IN (45976,46177,46178,46208);
INSERT INTO spell_script_target VALUES
(45976,1,25770),
(46177,1,25770),
(46178,1,25741),
(46208,1,25741);

UPDATE creature_template SET InhabitType=5 WHERE entry IN (25319,26262);

-- ------------------------------------ --
--             By Xfurry                --
-- ------------------------------------ --

-- ------------------------------------ --
--   MoltenCore Start  Thanks infernos  --
-- ------------------------------------ --

-- without this stat you cannot use the essenz on the object and so you cant fight again majo and raggy
UPDATE gameobject SET state=0, spawntimesecs=604800 WHERE guid IN (43162,43164); -- rune of mohn and rune of blaz

-- missing, without spell goes on player and the boss is a little trash like hogger :P
DELETE FROM spell_script_target WHERE entry IN (20619,21075);
INSERT INTO spell_script_target VALUES 
(20619,1,11664),
(20619,1,11663),
(21075,1,11664),
(21075,1,11663);

-- same faction as master same as in UDB
UPDATE creature_template SET faction_A=54, faction_H=54 WHERE entry IN (11663,11664);

-- ------------------------------------ --
--           MoltenCore End             --
-- ------------------------------------ --

-- ------------------------------------ --
--            karazhan  Start           --
-- ------------------------------------ --

-- Fix boss_moroes adds he have not movement.
UPDATE creature_template SET MovementType=0 WHERE entry IN (17007,19872,19873,19874,19875,19876);

-- ------------------------------------ --
--             karazhan  End            --
-- ------------------------------------ --
