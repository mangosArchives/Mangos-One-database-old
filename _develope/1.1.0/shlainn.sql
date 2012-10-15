-- Fix Quest 746 Dwarven Digging
-- Bug: Did not drop enough Source Items.
-- Fix: Raise Source Item count. Value From Zero.
-- Note: UDB has unlimited source items.

UPDATE quest_template SET ReqSourceCount1 = '5' WHERE entry =746;

-- Fix Quest 11129 Kyle's Gone Missing!
-- Bug: Did not drop the Source Item "Tender Strider Meat" (33009).
-- Fix: Add Source Item 33009. From UDB

UPDATE quest_template SET ReqSourceId1 = '33009' WHERE entry =11129;


-- Add Skinning Skill requirement to quest 768
-- From Zero

UPDATE quest_template SET RequiredSkill = '393', RequiredSkillValue = '1' WHERE entry =768;


-- Quest 9720 should be available for both sides

UPDATE quest_template SET RequiredRaces = '0' WHERE entry = 9720;