-- Fix Quest 746 Dwarven Digging
-- Bug: Did not drop enough Source Items.
-- Fix: Raise Source Item count. Value From Zero.
-- Note: UDB has unlimited source items.

UPDATE quest_template SET ReqSourceCount1 = '5' WHERE entry =746;