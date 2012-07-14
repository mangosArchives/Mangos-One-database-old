ALTER TABLE db_update_version CHANGE COLUMN db_update_version_0004 db_update_version_0005 bit;

-- Defias Rioter (Stormwind Jail Break Event) - Correct NPC Faction So They Aggro
UPDATE creature_template SET faction_a=17,faction_h=17 WHERE entry IN (5043);

-- When summoned the following npcs fall to the ground - (XFurry)
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` IN (25319, 26262);

-- Winter Veil Boss Loot Improvement (Set at 10% For Initial Values After Discussions) - (Infernos)
REPLACE INTO creature_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,lootcondition,condition_value1,condition_value2) VALUES
(10429, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Warchief Rend Blackhand
(21536, 21524, 10, 0, 1, 1, 12, 2, 0),  -- Nethermancer Sepethrea (Heroic)
(19221, 21524, 10, 0, 1, 1, 12, 2, 0),  -- Nethermancer Sepethrea (Normal)
(21558, 21524, 10, 0, 1, 1, 12, 2, 0),  -- High Botanist Freywinn (Heroic)
(17975, 21524, 10, 0, 1, 1, 12, 2, 0),  -- High Botanist Freywinn (Normal)
(20521, 21524, 10, 0, 1, 1, 12, 2, 0),  -- Captain Skarloc (Heroic)
(17862, 21524, 10, 0, 1, 1, 12, 2, 0),  -- Captain Skarloc (Normal)
(9237, 21524, 10, 0, 1, 1, 12, 2, 0),   -- War Master Voone
(10899, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Goraluk Anvilcrack
(20568, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Grand Warlock Nethekurse (Heroic)
(16807, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Grand Warlock Nethekurse (Normal)
(20653, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Grandmaster Vorpil (Heroic)
(18732, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Grandmaster Vorpil (Normal)
(20306, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Exarch Maladaar (Heroic)
(18373, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Exarch Maladaar (Normal)
(1853, 21525, 10, 0, 1, 1, 12, 2, 0),   -- Darkmaster Gandling
(10997, 21524, 10, 0, 1, 1, 12, 2, 0),  -- Cannon Master Willey
(11486, 21525, 10, 0, 1, 1, 12, 2, 0),  -- Prince Tortheldrin
(9019, 21524, 10, 0, 1, 1, 12, 2, 0);   -- Emperor Dagran Thaurissan

-- Remove NPC From Children's Week Game Event
DELETE FROM game_event_creature WHERE guid IN (31901);
