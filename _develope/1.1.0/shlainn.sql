-- Fix Quest 746 Dwarven Digging
-- Bug: Did not drop enough Source Items.
-- Fix: Raise Source Item count. Value From Zero.
-- Note: UDB has unlimited source items.

UPDATE quest_template SET ReqSourceCount1 = '5' WHERE entry =746;

-- Fix Quest 11129 Kyle's Gone Missing!
-- Bug: Did not drop the Source Item "Tender Strider Meat" (33009).
-- Fix: Add Source Item 33009. From UDB

UPDATE quest_template SET ReqSourceId1 = '33009' WHERE entry =11129;