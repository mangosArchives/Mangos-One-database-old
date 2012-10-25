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

-- ------------
-- NPC Vendor Templates
-- Starting Value: 1397 unique vendors in npc_vendor
-- ------------
-- Singletons - These are one of a kind vendors.They only sell only stuff noone else sells.
-- I put them here just for bookkeeping... (And also to exclude them from DB queries using "entry NOT IN (...)"
-- 1261,1263,3362,3685,4730,4731,6367,6548,7564,7683,7772,7775,7952,7955,8401,8665,8666,9499,10216,10618,11278,12783,12784,12785,12794,12795,12796,12919,12944,13018,14437,14522,14845,14860,14921,15197,15289,15291,15292,15293,15315,15471,15898,16264,16528,16860,17584,18266,18267,18382,18525,18564,18581,18664,18672,18756,19227,19321,19331,19536,20240,20241,20278,20494,20510,20807,20808,21019,22208,22212,22213,23159,23243,23244,23245,23367,23381,23428,23437,23447,23482,23489,23510,23511,23533,23699,24501,25976,25977,26089,26090,26091,26092,26300,26301,26303,26305,26306,26308,26309,27806,27810,27811,27812,27813,27814,27815,27816,27817,27818,27819,27820
-- And these guys sell very few items, which appear other groups
-- 2910,1650,6496,9099,8403,15309,18988,27478,793,3177,1324,3134,21643,21655,21432
-- 20378,20377,5748,23110,18255,17585,17904,17657,19539,19664
-- 2663,8404,3491,20980,19531
-- 23363,14844,23710,340,15127,15126,14964,14846,1316,4581,19661,19223,25032,26302,1310,19038,12793,14754,4453
-- And finally, those who already have a template and only leftovers in npc_vendor
-- 54,5520,5749,5750,5753,5815,6027,6328,6373,6374,6376,6382,12776,12807,13418,13420,13429,13430,13431,13432,13433,13434,13435,13436,15494,16267,16649,23535,23009,23010
-- ------------

-- ------------
-- Groups:
-- 0XX - Random Stuff that did not fit in any other group
-- 1XX - Trade Suppliers (All Professions)
-- 2XX - Armor
-- 3XX - Weapons
-- 4XX - General Supplies, Food, Innkeepers
-- 5XX - Arena, PVP, BG
-- 6XX - Events
-- ------------

-- ------------
-- Please note that I felt no desire to sort this stuff in the file -- shlainn
-- ------------

-- ------------
-- Arena Vendors - Brutal Gladiator Gear
-- 25176,25179,26352,26378,26383,26384,27668,27721,27722,28225
-- ------------
DELETE FROM npc_vendor WHERE entry IN (25176,25179,26352,26378,26383,26384,27668,27721,27722,28225);
UPDATE creature_template SET vendor_id=500 WHERE entry IN (25176,25179,26352,26378,26383,26384,27668,27721,27722,28225);

INSERT INTO npc_vendor_template VALUES (500,34985,0,0,2339); -- Brutal Gladiator's Baton of Light [10/10]
INSERT INTO npc_vendor_template VALUES (500,34986,0,0,2364); -- Brutal Gladiator's Barrier [10/10]
INSERT INTO npc_vendor_template VALUES (500,34987,0,0,2360); -- Brutal Gladiator's Battle Staff [10/10]
INSERT INTO npc_vendor_template VALUES (500,34988,0,0,2363); -- Brutal Gladiator's Bonecracker [10/10]
INSERT INTO npc_vendor_template VALUES (500,34989,0,0,2360); -- Brutal Gladiator's Bonegrinder [10/10]
INSERT INTO npc_vendor_template VALUES (500,34990,0,0,2337); -- Brutal Gladiator's Chain Armor [10/10]
INSERT INTO npc_vendor_template VALUES (500,34992,0,0,2365); -- Brutal Gladiator's Chain Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,34993,0,0,2366); -- Brutal Gladiator's Chain Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,34994,0,0,2359); -- Brutal Gladiator's Chain Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,34995,0,0,2363); -- Brutal Gladiator's Chopper [10/10]
INSERT INTO npc_vendor_template VALUES (500,34996,0,0,2362); -- Brutal Gladiator's Cleaver [10/10]
INSERT INTO npc_vendor_template VALUES (500,34997,0,0,2360); -- Brutal Gladiator's Decapitator [10/10]
INSERT INTO npc_vendor_template VALUES (500,34998,0,0,2342); -- Brutal Gladiator's Dragonhide Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,34999,0,0,2365); -- Brutal Gladiator's Dragonhide Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35000,0,0,2366); -- Brutal Gladiator's Dragonhide Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35001,0,0,2359); -- Brutal Gladiator's Dragonhide Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35002,0,0,2337); -- Brutal Gladiator's Dragonhide Tunic [10/10]
INSERT INTO npc_vendor_template VALUES (500,35003,0,0,2342); -- Brutal Gladiator's Dreadweave Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35004,0,0,2365); -- Brutal Gladiator's Dreadweave Hood [10/10]
INSERT INTO npc_vendor_template VALUES (500,35005,0,0,2366); -- Brutal Gladiator's Dreadweave Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,35006,0,0,2359); -- Brutal Gladiator's Dreadweave Mantle [10/10]
INSERT INTO npc_vendor_template VALUES (500,35007,0,0,2337); -- Brutal Gladiator's Dreadweave Robe [10/10]
INSERT INTO npc_vendor_template VALUES (500,35008,0,0,2363); -- Brutal Gladiator's Endgame [10/10]
INSERT INTO npc_vendor_template VALUES (500,35009,0,0,2359); -- Brutal Gladiator's Felweave Amice [10/10]
INSERT INTO npc_vendor_template VALUES (500,35010,0,0,2365); -- Brutal Gladiator's Felweave Cowl [10/10]
INSERT INTO npc_vendor_template VALUES (500,35011,0,0,2342); -- Brutal Gladiator's Felweave Handguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35012,0,0,2337); -- Brutal Gladiator's Felweave Raiment [10/10]
INSERT INTO npc_vendor_template VALUES (500,35013,0,0,2366); -- Brutal Gladiator's Felweave Trousers [10/10]
INSERT INTO npc_vendor_template VALUES (500,35014,0,0,2361); -- Brutal Gladiator's Gavel [10/10]
INSERT INTO npc_vendor_template VALUES (500,35015,0,0,2360); -- Brutal Gladiator's Greatsword [10/10]
INSERT INTO npc_vendor_template VALUES (500,35016,0,0,2363); -- Brutal Gladiator's Grimoire [10/10]
INSERT INTO npc_vendor_template VALUES (500,35017,0,0,2363); -- Brutal Gladiator's Hacker [10/10]
INSERT INTO npc_vendor_template VALUES (500,35018,0,0,2360); -- Brutal Gladiator's Heavy Crossbow [10/10]
INSERT INTO npc_vendor_template VALUES (500,35019,0,0,2339); -- Brutal Gladiator's Idol of Resolve [10/10]
INSERT INTO npc_vendor_template VALUES (500,35020,0,0,2339); -- Brutal Gladiator's Idol of Steadfastness [10/10]
INSERT INTO npc_vendor_template VALUES (500,35021,0,0,2339); -- Brutal Gladiator's Idol of Tenacity [10/10]
INSERT INTO npc_vendor_template VALUES (500,35022,0,0,2342); -- Brutal Gladiator's Kodohide Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35023,0,0,2365); -- Brutal Gladiator's Kodohide Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35024,0,0,2366); -- Brutal Gladiator's Kodohide Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35025,0,0,2359); -- Brutal Gladiator's Kodohide Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35026,0,0,2337); -- Brutal Gladiator's Kodohide Tunic [10/10]
INSERT INTO npc_vendor_template VALUES (500,35027,0,0,2337); -- Brutal Gladiator's Lamellar Chestpiece [10/10]
INSERT INTO npc_vendor_template VALUES (500,35028,0,0,2342); -- Brutal Gladiator's Lamellar Gauntlets [10/10]
INSERT INTO npc_vendor_template VALUES (500,35029,0,0,2365); -- Brutal Gladiator's Lamellar Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35030,0,0,2366); -- Brutal Gladiator's Lamellar Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35031,0,0,2359); -- Brutal Gladiator's Lamellar Shoulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35032,0,0,2342); -- Brutal Gladiator's Leather Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35033,0,0,2365); -- Brutal Gladiator's Leather Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35034,0,0,2366); -- Brutal Gladiator's Leather Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35035,0,0,2359); -- Brutal Gladiator's Leather Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35036,0,0,2337); -- Brutal Gladiator's Leather Tunic [10/10]
INSERT INTO npc_vendor_template VALUES (500,35037,0,0,2363); -- Brutal Gladiator's Left Render [10/10]
INSERT INTO npc_vendor_template VALUES (500,35038,0,0,2363); -- Brutal Gladiator's Left Ripper [10/10]
INSERT INTO npc_vendor_template VALUES (500,35039,0,0,2339); -- Brutal Gladiator's Libram of Fortitude [10/10]
INSERT INTO npc_vendor_template VALUES (500,35040,0,0,2339); -- Brutal Gladiator's Libram of Justice [10/10]
INSERT INTO npc_vendor_template VALUES (500,35041,0,0,2339); -- Brutal Gladiator's Libram of Vengeance [10/10]
INSERT INTO npc_vendor_template VALUES (500,35042,0,0,2337); -- Brutal Gladiator's Linked Armor [10/10]
INSERT INTO npc_vendor_template VALUES (500,35043,0,0,2342); -- Brutal Gladiator's Linked Gauntlets [10/10]
INSERT INTO npc_vendor_template VALUES (500,35044,0,0,2365); -- Brutal Gladiator's Linked Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35045,0,0,2366); -- Brutal Gladiator's Linked Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,35046,0,0,2359); -- Brutal Gladiator's Linked Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35047,0,0,2360); -- Brutal Gladiator's Longbow [10/10]
INSERT INTO npc_vendor_template VALUES (500,35048,0,0,2337); -- Brutal Gladiator's Mail Armor [10/10]
INSERT INTO npc_vendor_template VALUES (500,35049,0,0,2342); -- Brutal Gladiator's Mail Gauntlets [10/10]
INSERT INTO npc_vendor_template VALUES (500,35050,0,0,2365); -- Brutal Gladiator's Mail Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35051,0,0,2366); -- Brutal Gladiator's Mail Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,35052,0,0,2359); -- Brutal Gladiator's Mail Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35053,0,0,2342); -- Brutal Gladiator's Mooncloth Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35054,0,0,2365); -- Brutal Gladiator's Mooncloth Hood [10/10]
INSERT INTO npc_vendor_template VALUES (500,35055,0,0,2366); -- Brutal Gladiator's Mooncloth Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,35056,0,0,2359); -- Brutal Gladiator's Mooncloth Mantle [10/10]
INSERT INTO npc_vendor_template VALUES (500,35057,0,0,2337); -- Brutal Gladiator's Mooncloth Robe [10/10]
INSERT INTO npc_vendor_template VALUES (500,35058,0,0,2363); -- Brutal Gladiator's Mutilator [10/10]
INSERT INTO npc_vendor_template VALUES (500,35059,0,0,2337); -- Brutal Gladiator's Ornamented Chestguard [10/10]
INSERT INTO npc_vendor_template VALUES (500,35060,0,0,2342); -- Brutal Gladiator's Ornamented Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35061,0,0,2365); -- Brutal Gladiator's Ornamented Headcover [10/10]
INSERT INTO npc_vendor_template VALUES (500,35062,0,0,2366); -- Brutal Gladiator's Ornamented Legplates [10/10]
INSERT INTO npc_vendor_template VALUES (500,35063,0,0,2359); -- Brutal Gladiator's Ornamented Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35064,0,0,2360); -- Brutal Gladiator's Painsaw [10/10]
INSERT INTO npc_vendor_template VALUES (500,35065,0,0,2339); -- Brutal Gladiator's Piercing Touch [10/10]
INSERT INTO npc_vendor_template VALUES (500,35066,0,0,2337); -- Brutal Gladiator's Plate Chestpiece [10/10]
INSERT INTO npc_vendor_template VALUES (500,35067,0,0,2342); -- Brutal Gladiator's Plate Gauntlets [10/10]
INSERT INTO npc_vendor_template VALUES (500,35068,0,0,2365); -- Brutal Gladiator's Plate Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35069,0,0,2366); -- Brutal Gladiator's Plate Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35070,0,0,2359); -- Brutal Gladiator's Plate Shoulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35071,0,0,2362); -- Brutal Gladiator's Pummeler [10/10]
INSERT INTO npc_vendor_template VALUES (500,35073,0,0,2364); -- Brutal Gladiator's Redoubt [10/10]
INSERT INTO npc_vendor_template VALUES (500,35074,0,0,2363); -- Brutal Gladiator's Reprieve [10/10]
INSERT INTO npc_vendor_template VALUES (500,35075,0,0,2360); -- Brutal Gladiator's Rifle [10/10]
INSERT INTO npc_vendor_template VALUES (500,35076,0,0,2362); -- Brutal Gladiator's Right Ripper [10/10]
INSERT INTO npc_vendor_template VALUES (500,35077,0,0,2337); -- Brutal Gladiator's Ringmail Armor [10/10]
INSERT INTO npc_vendor_template VALUES (500,35078,0,0,2342); -- Brutal Gladiator's Ringmail Gauntlets [10/10]
INSERT INTO npc_vendor_template VALUES (500,35079,0,0,2365); -- Brutal Gladiator's Ringmail Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35080,0,0,2366); -- Brutal Gladiator's Ringmail Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,35081,0,0,2359); -- Brutal Gladiator's Ringmail Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35082,0,0,2361); -- Brutal Gladiator's Salvation [10/10]
INSERT INTO npc_vendor_template VALUES (500,35083,0,0,2342); -- Brutal Gladiator's Satin Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35084,0,0,2365); -- Brutal Gladiator's Satin Hood [10/10]
INSERT INTO npc_vendor_template VALUES (500,35085,0,0,2366); -- Brutal Gladiator's Satin Leggings [10/10]
INSERT INTO npc_vendor_template VALUES (500,35086,0,0,2359); -- Brutal Gladiator's Satin Mantle [10/10]
INSERT INTO npc_vendor_template VALUES (500,35087,0,0,2337); -- Brutal Gladiator's Satin Robe [10/10]
INSERT INTO npc_vendor_template VALUES (500,35088,0,0,2337); -- Brutal Gladiator's Scaled Chestpiece [10/10]
INSERT INTO npc_vendor_template VALUES (500,35089,0,0,2342); -- Brutal Gladiator's Scaled Gauntlets [10/10]
INSERT INTO npc_vendor_template VALUES (500,35090,0,0,2365); -- Brutal Gladiator's Scaled Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35091,0,0,2366); -- Brutal Gladiator's Scaled Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35092,0,0,2359); -- Brutal Gladiator's Scaled Shoulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35093,0,0,2362); -- Brutal Gladiator's Shanker [10/10]
INSERT INTO npc_vendor_template VALUES (500,35094,0,0,2364); -- Brutal Gladiator's Shield Wall [10/10]
INSERT INTO npc_vendor_template VALUES (500,35095,0,0,2363); -- Brutal Gladiator's Shiv [10/10]
INSERT INTO npc_vendor_template VALUES (500,35096,0,0,2359); -- Brutal Gladiator's Silk Amice [10/10]
INSERT INTO npc_vendor_template VALUES (500,35097,0,0,2365); -- Brutal Gladiator's Silk Cowl [10/10]
INSERT INTO npc_vendor_template VALUES (500,35098,0,0,2342); -- Brutal Gladiator's Silk Handguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35099,0,0,2337); -- Brutal Gladiator's Silk Raiment [10/10]
INSERT INTO npc_vendor_template VALUES (500,35100,0,0,2366); -- Brutal Gladiator's Silk Trousers [10/10]
INSERT INTO npc_vendor_template VALUES (500,35102,0,0,2361); -- Brutal Gladiator's Spellblade [10/10]
INSERT INTO npc_vendor_template VALUES (500,35103,0,0,2360); -- Brutal Gladiator's Staff [10/10]
INSERT INTO npc_vendor_template VALUES (500,35104,0,0,2339); -- Brutal Gladiator's Totem of Indomitability [10/10]
INSERT INTO npc_vendor_template VALUES (500,35105,0,0,2339); -- Brutal Gladiator's Totem of Survival [10/10]
INSERT INTO npc_vendor_template VALUES (500,35106,0,0,2339); -- Brutal Gladiator's Totem of the Third Wind [10/10]
INSERT INTO npc_vendor_template VALUES (500,35107,0,0,2339); -- Brutal Gladiator's Touch of Defeat [10/10]
INSERT INTO npc_vendor_template VALUES (500,35109,0,0,2360); -- Brutal Gladiator's War Staff [10/10]
INSERT INTO npc_vendor_template VALUES (500,35110,0,0,2339); -- Brutal Gladiator's Waraxe [10/10]
INSERT INTO npc_vendor_template VALUES (500,35111,0,0,2342); -- Brutal Gladiator's Wyrmhide Gloves [10/10]
INSERT INTO npc_vendor_template VALUES (500,35112,0,0,2365); -- Brutal Gladiator's Wyrmhide Helm [10/10]
INSERT INTO npc_vendor_template VALUES (500,35113,0,0,2366); -- Brutal Gladiator's Wyrmhide Legguards [10/10]
INSERT INTO npc_vendor_template VALUES (500,35114,0,0,2359); -- Brutal Gladiator's Wyrmhide Spaulders [10/10]
INSERT INTO npc_vendor_template VALUES (500,35115,0,0,2337); -- Brutal Gladiator's Wyrmhide Tunic [10/10]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 34991,0,0,2342 Brutal Gladiator's Chain Gauntlets [2/10]
-- 34991,0,0,2363 Brutal Gladiator's Chain Gauntlets [8/10]
-- 35072,0,0,2362 Brutal Gladiator's Quickblade [1/10]
-- 35072,0,0,2363 Brutal Gladiator's Quickblade [9/10]
-- 35101,0,0,2362 Brutal Gladiator's Slicer [8/10]
-- 35108,0,0,2339 Brutal Gladiator's War Edge [8/10]
-- 36737,0,0,2393 Brutal Gladiator's Hatchet [1/10]
-- 38545,0,0,2388 Bold Ornate Ruby [8/10]
-- 38546,0,0,2388 Gleaming Ornate Dawnstone [8/10]
-- 38547,0,0,2388 Inscribed Ornate Topaz [8/10]
-- 38548,0,0,2388 Potent Ornate Topaz [8/10]
-- 38549,0,0,2388 Runed Ornate Ruby [8/10]
-- 38550,0,0,2388 Smooth Ornate Dawnstone [8/10]

INSERT INTO npc_vendor VALUES (25176,34991,0,0,2342); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (25179,34991,0,0,2342); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (26352,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (26378,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (26383,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (26384,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (27668,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (27721,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (27722,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (28225,34991,0,0,2363); -- Brutal Gladiator's Chain Gauntlets
INSERT INTO npc_vendor VALUES (28225,35072,0,0,2362); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (25176,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (25179,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (26352,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (26378,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (26383,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (26384,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (27668,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (27721,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (27722,35072,0,0,2363); -- Brutal Gladiator's Quickblade
INSERT INTO npc_vendor VALUES (26352,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (26378,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (26383,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (26384,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (27668,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (27721,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (27722,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (28225,35101,0,0,2362); -- Brutal Gladiator's Slicer
INSERT INTO npc_vendor VALUES (26352,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (26378,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (26383,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (26384,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (27668,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (27721,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (27722,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (28225,35108,0,0,2339); -- Brutal Gladiator's War Edge
INSERT INTO npc_vendor VALUES (28225,36737,0,0,2393); -- Brutal Gladiator's Hatchet
INSERT INTO npc_vendor VALUES (26352,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (26378,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (26383,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (26384,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (27668,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (27721,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (27722,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (28225,38545,0,0,2388); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (26352,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26378,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26383,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26384,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (27668,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (27721,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (27722,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (28225,38546,0,0,2388); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26352,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (26378,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (26383,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (26384,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (27668,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (27721,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (27722,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (28225,38547,0,0,2388); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (26352,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (26378,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (26383,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (26384,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (27668,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (27721,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (27722,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (28225,38548,0,0,2388); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (26352,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (26378,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (26383,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (26384,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (27668,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (27721,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (27722,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (28225,38549,0,0,2388); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (26352,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26378,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26383,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (26384,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (27668,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (27721,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (27722,38550,0,0,2388); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (28225,38550,0,0,2388); -- Smooth Ornate Dawnstone

-- Total count: Templates: 127, single 85, sum 212, before: 1355

-- ------------
-- Arena Vendors - Merciless Gladiator Gear
-- 23396,25177
-- ------------
DELETE FROM npc_vendor WHERE entry IN (23396,25177);
UPDATE creature_template SET vendor_id=501 WHERE entry IN (23396,25177);

INSERT INTO npc_vendor_template VALUES (501,30486,0,0,22); -- Merciless Gladiator's Plate Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (501,30487,0,0,21); -- Merciless Gladiator's Plate Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,30488,0,0,22); -- Merciless Gladiator's Plate Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,30489,0,0,22); -- Merciless Gladiator's Plate Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,30490,0,0,24); -- Merciless Gladiator's Plate Shoulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,31958,0,0,21); -- Merciless Gladiator's Bonecracker [2/2]
INSERT INTO npc_vendor_template VALUES (501,31959,0,0,26); -- Merciless Gladiator's Bonegrinder [2/2]
INSERT INTO npc_vendor_template VALUES (501,31960,0,0,22); -- Merciless Gladiator's Chain Armor [2/2]
INSERT INTO npc_vendor_template VALUES (501,31961,0,0,21); -- Merciless Gladiator's Chain Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,31962,0,0,22); -- Merciless Gladiator's Chain Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,31963,0,0,22); -- Merciless Gladiator's Chain Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,31964,0,0,24); -- Merciless Gladiator's Chain Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,31965,0,0,133); -- Merciless Gladiator's Cleaver [2/2]
INSERT INTO npc_vendor_template VALUES (501,31966,0,0,26); -- Merciless Gladiator's Decapitator [2/2]
INSERT INTO npc_vendor_template VALUES (501,31967,0,0,21); -- Merciless Gladiator's Dragonhide Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,31968,0,0,22); -- Merciless Gladiator's Dragonhide Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,31969,0,0,22); -- Merciless Gladiator's Dragonhide Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,31971,0,0,24); -- Merciless Gladiator's Dragonhide Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,31972,0,0,22); -- Merciless Gladiator's Dragonhide Tunic [2/2]
INSERT INTO npc_vendor_template VALUES (501,31973,0,0,21); -- Merciless Gladiator's Dreadweave Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,31974,0,0,22); -- Merciless Gladiator's Dreadweave Hood [2/2]
INSERT INTO npc_vendor_template VALUES (501,31975,0,0,22); -- Merciless Gladiator's Dreadweave Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,31976,0,0,24); -- Merciless Gladiator's Dreadweave Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (501,31977,0,0,22); -- Merciless Gladiator's Dreadweave Robe [2/2]
INSERT INTO npc_vendor_template VALUES (501,31978,0,0,21); -- Merciless Gladiator's Endgame [2/2]
INSERT INTO npc_vendor_template VALUES (501,31979,0,0,24); -- Merciless Gladiator's Felweave Amice [2/2]
INSERT INTO npc_vendor_template VALUES (501,31980,0,0,22); -- Merciless Gladiator's Felweave Cowl [2/2]
INSERT INTO npc_vendor_template VALUES (501,31981,0,0,21); -- Merciless Gladiator's Felweave Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,31982,0,0,22); -- Merciless Gladiator's Felweave Raiment [2/2]
INSERT INTO npc_vendor_template VALUES (501,31983,0,0,22); -- Merciless Gladiator's Felweave Trousers [2/2]
INSERT INTO npc_vendor_template VALUES (501,31984,0,0,26); -- Merciless Gladiator's Greatsword [2/2]
INSERT INTO npc_vendor_template VALUES (501,31985,0,0,21); -- Merciless Gladiator's Hacker [2/2]
INSERT INTO npc_vendor_template VALUES (501,31986,0,0,26); -- Merciless Gladiator's Crossbow of the Phoenix [2/2]
INSERT INTO npc_vendor_template VALUES (501,31987,0,0,21); -- Merciless Gladiator's Kodohide Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,31988,0,0,22); -- Merciless Gladiator's Kodohide Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,31989,0,0,22); -- Merciless Gladiator's Kodohide Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,31990,0,0,24); -- Merciless Gladiator's Kodohide Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,31991,0,0,22); -- Merciless Gladiator's Kodohide Tunic [2/2]
INSERT INTO npc_vendor_template VALUES (501,31992,0,0,22); -- Merciless Gladiator's Lamellar Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (501,31993,0,0,21); -- Merciless Gladiator's Lamellar Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,31995,0,0,22); -- Merciless Gladiator's Lamellar Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,31996,0,0,24); -- Merciless Gladiator's Lamellar Shoulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,31997,0,0,22); -- Merciless Gladiator's Lamellar Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,31998,0,0,21); -- Merciless Gladiator's Leather Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,31999,0,0,22); -- Merciless Gladiator's Leather Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,32000,0,0,22); -- Merciless Gladiator's Leather Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,32001,0,0,24); -- Merciless Gladiator's Leather Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32002,0,0,22); -- Merciless Gladiator's Leather Tunic [2/2]
INSERT INTO npc_vendor_template VALUES (501,32003,0,0,21); -- Merciless Gladiator's Left Ripper [2/2]
INSERT INTO npc_vendor_template VALUES (501,32004,0,0,22); -- Merciless Gladiator's Linked Armor [2/2]
INSERT INTO npc_vendor_template VALUES (501,32005,0,0,21); -- Merciless Gladiator's Linked Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,32006,0,0,22); -- Merciless Gladiator's Linked Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,32007,0,0,22); -- Merciless Gladiator's Linked Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,32008,0,0,24); -- Merciless Gladiator's Linked Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32009,0,0,22); -- Merciless Gladiator's Mail Armor [2/2]
INSERT INTO npc_vendor_template VALUES (501,32010,0,0,21); -- Merciless Gladiator's Mail Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,32011,0,0,22); -- Merciless Gladiator's Mail Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,32012,0,0,22); -- Merciless Gladiator's Mail Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,32013,0,0,24); -- Merciless Gladiator's Mail Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32014,0,0,26); -- Merciless Gladiator's Maul [2/2]
INSERT INTO npc_vendor_template VALUES (501,32015,0,0,21); -- Merciless Gladiator's Mooncloth Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,32016,0,0,22); -- Merciless Gladiator's Mooncloth Hood [2/2]
INSERT INTO npc_vendor_template VALUES (501,32017,0,0,22); -- Merciless Gladiator's Mooncloth Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,32018,0,0,24); -- Merciless Gladiator's Mooncloth Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (501,32019,0,0,22); -- Merciless Gladiator's Mooncloth Robe [2/2]
INSERT INTO npc_vendor_template VALUES (501,32020,0,0,22); -- Merciless Gladiator's Ornamented Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (501,32021,0,0,21); -- Merciless Gladiator's Ornamented Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,32022,0,0,22); -- Merciless Gladiator's Ornamented Headcover [2/2]
INSERT INTO npc_vendor_template VALUES (501,32023,0,0,22); -- Merciless Gladiator's Ornamented Legplates [2/2]
INSERT INTO npc_vendor_template VALUES (501,32024,0,0,24); -- Merciless Gladiator's Ornamented Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32025,0,0,26); -- Merciless Gladiator's Painsaw [2/2]
INSERT INTO npc_vendor_template VALUES (501,32026,0,0,133); -- Merciless Gladiator's Pummeler [2/2]
INSERT INTO npc_vendor_template VALUES (501,32027,0,0,21); -- Merciless Gladiator's Quickblade [2/2]
INSERT INTO npc_vendor_template VALUES (501,32028,0,0,133); -- Merciless Gladiator's Right Ripper [2/2]
INSERT INTO npc_vendor_template VALUES (501,32029,0,0,22); -- Merciless Gladiator's Ringmail Armor [2/2]
INSERT INTO npc_vendor_template VALUES (501,32030,0,0,21); -- Merciless Gladiator's Ringmail Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,32031,0,0,22); -- Merciless Gladiator's Ringmail Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,32032,0,0,22); -- Merciless Gladiator's Ringmail Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,32033,0,0,24); -- Merciless Gladiator's Ringmail Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32034,0,0,21); -- Merciless Gladiator's Satin Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,32035,0,0,22); -- Merciless Gladiator's Satin Hood [2/2]
INSERT INTO npc_vendor_template VALUES (501,32036,0,0,22); -- Merciless Gladiator's Satin Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (501,32037,0,0,24); -- Merciless Gladiator's Satin Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (501,32038,0,0,22); -- Merciless Gladiator's Satin Robe [2/2]
INSERT INTO npc_vendor_template VALUES (501,32039,0,0,22); -- Merciless Gladiator's Scaled Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (501,32040,0,0,21); -- Merciless Gladiator's Scaled Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (501,32041,0,0,22); -- Merciless Gladiator's Scaled Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,32042,0,0,22); -- Merciless Gladiator's Scaled Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,32043,0,0,24); -- Merciless Gladiator's Scaled Shoulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32044,0,0,133); -- Merciless Gladiator's Shanker [2/2]
INSERT INTO npc_vendor_template VALUES (501,32045,0,0,22); -- Merciless Gladiator's Shield Wall [2/2]
INSERT INTO npc_vendor_template VALUES (501,32046,0,0,21); -- Merciless Gladiator's Shiv [2/2]
INSERT INTO npc_vendor_template VALUES (501,32047,0,0,24); -- Merciless Gladiator's Silk Amice [2/2]
INSERT INTO npc_vendor_template VALUES (501,32048,0,0,22); -- Merciless Gladiator's Silk Cowl [2/2]
INSERT INTO npc_vendor_template VALUES (501,32049,0,0,21); -- Merciless Gladiator's Silk Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,32050,0,0,22); -- Merciless Gladiator's Silk Raiment [2/2]
INSERT INTO npc_vendor_template VALUES (501,32051,0,0,22); -- Merciless Gladiator's Silk Trousers [2/2]
INSERT INTO npc_vendor_template VALUES (501,32052,0,0,133); -- Merciless Gladiator's Slicer [2/2]
INSERT INTO npc_vendor_template VALUES (501,32053,0,0,148); -- Merciless Gladiator's Spellblade [2/2]
INSERT INTO npc_vendor_template VALUES (501,32054,0,0,146); -- Merciless Gladiator's War Edge [2/2]
INSERT INTO npc_vendor_template VALUES (501,32055,0,0,26); -- Merciless Gladiator's War Staff [2/2]
INSERT INTO npc_vendor_template VALUES (501,32056,0,0,21); -- Merciless Gladiator's Wyrmhide Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (501,32057,0,0,22); -- Merciless Gladiator's Wyrmhide Helm [2/2]
INSERT INTO npc_vendor_template VALUES (501,32058,0,0,22); -- Merciless Gladiator's Wyrmhide Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (501,32059,0,0,24); -- Merciless Gladiator's Wyrmhide Spaulders [2/2]
INSERT INTO npc_vendor_template VALUES (501,32060,0,0,22); -- Merciless Gladiator's Wyrmhide Tunic [2/2]
INSERT INTO npc_vendor_template VALUES (501,32961,0,0,21); -- Merciless Gladiator's Reprieve [2/2]
INSERT INTO npc_vendor_template VALUES (501,32962,0,0,146); -- Merciless Gladiator's Touch of Defeat [2/2]
INSERT INTO npc_vendor_template VALUES (501,32963,0,0,148); -- Merciless Gladiator's Gavel [2/2]
INSERT INTO npc_vendor_template VALUES (501,32964,0,0,148); -- Merciless Gladiator's Salvation [2/2]
INSERT INTO npc_vendor_template VALUES (501,33076,0,0,146); -- Merciless Gladiator's Idol of Tenacity [2/2]
INSERT INTO npc_vendor_template VALUES (501,33077,0,0,146); -- Merciless Gladiator's Libram of Justice [2/2]
INSERT INTO npc_vendor_template VALUES (501,33078,0,0,146); -- Merciless Gladiator's Totem of the Third Wind [2/2]
INSERT INTO npc_vendor_template VALUES (501,33309,0,0,22); -- Merciless Gladiator's Redoubt [2/2]
INSERT INTO npc_vendor_template VALUES (501,33313,0,0,22); -- Merciless Gladiator's Barrier [2/2]
INSERT INTO npc_vendor_template VALUES (501,33937,0,0,146); -- Merciless Gladiator's Libram of Fortitude [2/2]
INSERT INTO npc_vendor_template VALUES (501,33940,0,0,146); -- Merciless Gladiator's Totem of Indomitability [2/2]
INSERT INTO npc_vendor_template VALUES (501,33943,0,0,146); -- Merciless Gladiator's Idol of Steadfastness [2/2]
INSERT INTO npc_vendor_template VALUES (501,33946,0,0,146); -- Merciless Gladiator's Idol of Resolve [2/2]
INSERT INTO npc_vendor_template VALUES (501,33949,0,0,146); -- Merciless Gladiator's Libram of Vengeance [2/2]
INSERT INTO npc_vendor_template VALUES (501,33952,0,0,146); -- Merciless Gladiator's Totem of Survival [2/2]

-- Total count: Templates: 121, single 0, sum 121, before: 242

-- ------------
-- Arena Vendors Merciless Gladiator Gear 2
-- 12777,12792,26393,26397
-- ------------
DELETE FROM npc_vendor WHERE entry IN (12777,12792,26393,26397);
UPDATE creature_template SET vendor_id=502 WHERE entry IN (12777,12792,26393,26397);

INSERT INTO npc_vendor_template VALUES (502,30486,0,0,2279); -- Merciless Gladiator's Plate Chestpiece [4/4]
INSERT INTO npc_vendor_template VALUES (502,30487,0,0,2277); -- Merciless Gladiator's Plate Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,30488,0,0,2280); -- Merciless Gladiator's Plate Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,30489,0,0,2281); -- Merciless Gladiator's Plate Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,30490,0,0,2278); -- Merciless Gladiator's Plate Shoulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,31960,0,0,2279); -- Merciless Gladiator's Chain Armor [4/4]
INSERT INTO npc_vendor_template VALUES (502,31961,0,0,2277); -- Merciless Gladiator's Chain Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,31962,0,0,2280); -- Merciless Gladiator's Chain Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,31963,0,0,2281); -- Merciless Gladiator's Chain Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,31964,0,0,2278); -- Merciless Gladiator's Chain Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,31967,0,0,2277); -- Merciless Gladiator's Dragonhide Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,31968,0,0,2280); -- Merciless Gladiator's Dragonhide Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,31969,0,0,2281); -- Merciless Gladiator's Dragonhide Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,31971,0,0,2278); -- Merciless Gladiator's Dragonhide Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,31972,0,0,2279); -- Merciless Gladiator's Dragonhide Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (502,31973,0,0,2277); -- Merciless Gladiator's Dreadweave Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,31974,0,0,2280); -- Merciless Gladiator's Dreadweave Hood [4/4]
INSERT INTO npc_vendor_template VALUES (502,31975,0,0,2281); -- Merciless Gladiator's Dreadweave Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,31976,0,0,2278); -- Merciless Gladiator's Dreadweave Mantle [4/4]
INSERT INTO npc_vendor_template VALUES (502,31977,0,0,2279); -- Merciless Gladiator's Dreadweave Robe [4/4]
INSERT INTO npc_vendor_template VALUES (502,31979,0,0,2278); -- Merciless Gladiator's Felweave Amice [4/4]
INSERT INTO npc_vendor_template VALUES (502,31980,0,0,2280); -- Merciless Gladiator's Felweave Cowl [4/4]
INSERT INTO npc_vendor_template VALUES (502,31981,0,0,2277); -- Merciless Gladiator's Felweave Handguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,31982,0,0,2279); -- Merciless Gladiator's Felweave Raiment [4/4]
INSERT INTO npc_vendor_template VALUES (502,31983,0,0,2281); -- Merciless Gladiator's Felweave Trousers [4/4]
INSERT INTO npc_vendor_template VALUES (502,31987,0,0,2277); -- Merciless Gladiator's Kodohide Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,31988,0,0,2280); -- Merciless Gladiator's Kodohide Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,31989,0,0,2281); -- Merciless Gladiator's Kodohide Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,31990,0,0,2278); -- Merciless Gladiator's Kodohide Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,31991,0,0,2279); -- Merciless Gladiator's Kodohide Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (502,31992,0,0,2279); -- Merciless Gladiator's Lamellar Chestpiece [4/4]
INSERT INTO npc_vendor_template VALUES (502,31993,0,0,2277); -- Merciless Gladiator's Lamellar Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,31995,0,0,2281); -- Merciless Gladiator's Lamellar Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,31996,0,0,2278); -- Merciless Gladiator's Lamellar Shoulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,31997,0,0,2280); -- Merciless Gladiator's Lamellar Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,31998,0,0,2277); -- Merciless Gladiator's Leather Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,31999,0,0,2280); -- Merciless Gladiator's Leather Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,32000,0,0,2281); -- Merciless Gladiator's Leather Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,32001,0,0,2278); -- Merciless Gladiator's Leather Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32002,0,0,2279); -- Merciless Gladiator's Leather Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (502,32004,0,0,2279); -- Merciless Gladiator's Linked Armor [4/4]
INSERT INTO npc_vendor_template VALUES (502,32005,0,0,2277); -- Merciless Gladiator's Linked Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,32006,0,0,2280); -- Merciless Gladiator's Linked Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,32007,0,0,2281); -- Merciless Gladiator's Linked Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,32008,0,0,2278); -- Merciless Gladiator's Linked Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32009,0,0,2279); -- Merciless Gladiator's Mail Armor [4/4]
INSERT INTO npc_vendor_template VALUES (502,32010,0,0,2277); -- Merciless Gladiator's Mail Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,32011,0,0,2280); -- Merciless Gladiator's Mail Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,32012,0,0,2281); -- Merciless Gladiator's Mail Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,32013,0,0,2278); -- Merciless Gladiator's Mail Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32015,0,0,2277); -- Merciless Gladiator's Mooncloth Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,32016,0,0,2280); -- Merciless Gladiator's Mooncloth Hood [4/4]
INSERT INTO npc_vendor_template VALUES (502,32017,0,0,2281); -- Merciless Gladiator's Mooncloth Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,32018,0,0,2278); -- Merciless Gladiator's Mooncloth Mantle [4/4]
INSERT INTO npc_vendor_template VALUES (502,32019,0,0,2279); -- Merciless Gladiator's Mooncloth Robe [4/4]
INSERT INTO npc_vendor_template VALUES (502,32020,0,0,2279); -- Merciless Gladiator's Ornamented Chestguard [4/4]
INSERT INTO npc_vendor_template VALUES (502,32021,0,0,2277); -- Merciless Gladiator's Ornamented Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,32022,0,0,2280); -- Merciless Gladiator's Ornamented Headcover [4/4]
INSERT INTO npc_vendor_template VALUES (502,32023,0,0,2281); -- Merciless Gladiator's Ornamented Legplates [4/4]
INSERT INTO npc_vendor_template VALUES (502,32024,0,0,2278); -- Merciless Gladiator's Ornamented Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32029,0,0,2279); -- Merciless Gladiator's Ringmail Armor [4/4]
INSERT INTO npc_vendor_template VALUES (502,32030,0,0,2277); -- Merciless Gladiator's Ringmail Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,32031,0,0,2280); -- Merciless Gladiator's Ringmail Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,32032,0,0,2281); -- Merciless Gladiator's Ringmail Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,32033,0,0,2278); -- Merciless Gladiator's Ringmail Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32034,0,0,2277); -- Merciless Gladiator's Satin Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,32035,0,0,2280); -- Merciless Gladiator's Satin Hood [4/4]
INSERT INTO npc_vendor_template VALUES (502,32036,0,0,2281); -- Merciless Gladiator's Satin Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (502,32037,0,0,2278); -- Merciless Gladiator's Satin Mantle [4/4]
INSERT INTO npc_vendor_template VALUES (502,32038,0,0,2279); -- Merciless Gladiator's Satin Robe [4/4]
INSERT INTO npc_vendor_template VALUES (502,32039,0,0,2279); -- Merciless Gladiator's Scaled Chestpiece [4/4]
INSERT INTO npc_vendor_template VALUES (502,32040,0,0,2277); -- Merciless Gladiator's Scaled Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (502,32041,0,0,2280); -- Merciless Gladiator's Scaled Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,32042,0,0,2281); -- Merciless Gladiator's Scaled Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,32043,0,0,2278); -- Merciless Gladiator's Scaled Shoulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32047,0,0,2278); -- Merciless Gladiator's Silk Amice [4/4]
INSERT INTO npc_vendor_template VALUES (502,32048,0,0,2280); -- Merciless Gladiator's Silk Cowl [4/4]
INSERT INTO npc_vendor_template VALUES (502,32049,0,0,2277); -- Merciless Gladiator's Silk Handguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,32050,0,0,2279); -- Merciless Gladiator's Silk Raiment [4/4]
INSERT INTO npc_vendor_template VALUES (502,32051,0,0,2281); -- Merciless Gladiator's Silk Trousers [4/4]
INSERT INTO npc_vendor_template VALUES (502,32056,0,0,2277); -- Merciless Gladiator's Wyrmhide Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (502,32057,0,0,2280); -- Merciless Gladiator's Wyrmhide Helm [4/4]
INSERT INTO npc_vendor_template VALUES (502,32058,0,0,2281); -- Merciless Gladiator's Wyrmhide Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (502,32059,0,0,2278); -- Merciless Gladiator's Wyrmhide Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (502,32060,0,0,2279); -- Merciless Gladiator's Wyrmhide Tunic [4/4]

-- Total count: Templates: 85, single 0, sum 85, before: 340

-- ------------
-- Arena Vendors Merciless Gladiator Gear 3
-- 12782,14581,26394,26396
-- ------------
DELETE FROM npc_vendor WHERE entry IN (12782,14581,26394,26396);
UPDATE creature_template SET vendor_id=503 WHERE entry IN (12782,14581,26394,26396);

INSERT INTO npc_vendor_template VALUES (503,31958,0,0,2240); -- Merciless Gladiator's Bonecracker [4/4]
INSERT INTO npc_vendor_template VALUES (503,31959,0,0,2237); -- Merciless Gladiator's Bonegrinder [4/4]
INSERT INTO npc_vendor_template VALUES (503,31965,0,0,2239); -- Merciless Gladiator's Cleaver [4/4]
INSERT INTO npc_vendor_template VALUES (503,31966,0,0,2237); -- Merciless Gladiator's Decapitator [4/4]
INSERT INTO npc_vendor_template VALUES (503,31978,0,0,2240); -- Merciless Gladiator's Endgame [4/4]
INSERT INTO npc_vendor_template VALUES (503,31984,0,0,2237); -- Merciless Gladiator's Greatsword [4/4]
INSERT INTO npc_vendor_template VALUES (503,31985,0,0,2240); -- Merciless Gladiator's Hacker [4/4]
INSERT INTO npc_vendor_template VALUES (503,31986,0,0,2237); -- Merciless Gladiator's Crossbow of the Phoenix [4/4]
INSERT INTO npc_vendor_template VALUES (503,32003,0,0,2240); -- Merciless Gladiator's Left Ripper [4/4]
INSERT INTO npc_vendor_template VALUES (503,32014,0,0,2237); -- Merciless Gladiator's Maul [4/4]
INSERT INTO npc_vendor_template VALUES (503,32025,0,0,2237); -- Merciless Gladiator's Painsaw [4/4]
INSERT INTO npc_vendor_template VALUES (503,32026,0,0,2239); -- Merciless Gladiator's Pummeler [4/4]
INSERT INTO npc_vendor_template VALUES (503,32027,0,0,2240); -- Merciless Gladiator's Quickblade [4/4]
INSERT INTO npc_vendor_template VALUES (503,32028,0,0,2239); -- Merciless Gladiator's Right Ripper [4/4]
INSERT INTO npc_vendor_template VALUES (503,32044,0,0,2239); -- Merciless Gladiator's Shanker [4/4]
INSERT INTO npc_vendor_template VALUES (503,32045,0,0,2242); -- Merciless Gladiator's Shield Wall [4/4]
INSERT INTO npc_vendor_template VALUES (503,32046,0,0,2240); -- Merciless Gladiator's Shiv [4/4]
INSERT INTO npc_vendor_template VALUES (503,32052,0,0,2239); -- Merciless Gladiator's Slicer [4/4]
INSERT INTO npc_vendor_template VALUES (503,32053,0,0,2238); -- Merciless Gladiator's Spellblade [4/4]
INSERT INTO npc_vendor_template VALUES (503,32054,0,0,2241); -- Merciless Gladiator's War Edge [4/4]
INSERT INTO npc_vendor_template VALUES (503,32055,0,0,2237); -- Merciless Gladiator's War Staff [4/4]
INSERT INTO npc_vendor_template VALUES (503,32961,0,0,2240); -- Merciless Gladiator's Reprieve [4/4]
INSERT INTO npc_vendor_template VALUES (503,32962,0,0,2241); -- Merciless Gladiator's Touch of Defeat [4/4]
INSERT INTO npc_vendor_template VALUES (503,32963,0,0,2238); -- Merciless Gladiator's Gavel [4/4]
INSERT INTO npc_vendor_template VALUES (503,32964,0,0,2238); -- Merciless Gladiator's Salvation [4/4]
INSERT INTO npc_vendor_template VALUES (503,33076,0,0,2241); -- Merciless Gladiator's Idol of Tenacity [4/4]
INSERT INTO npc_vendor_template VALUES (503,33077,0,0,2241); -- Merciless Gladiator's Libram of Justice [4/4]
INSERT INTO npc_vendor_template VALUES (503,33078,0,0,2241); -- Merciless Gladiator's Totem of the Third Wind [4/4]
INSERT INTO npc_vendor_template VALUES (503,33309,0,0,2242); -- Merciless Gladiator's Redoubt [4/4]
INSERT INTO npc_vendor_template VALUES (503,33313,0,0,2242); -- Merciless Gladiator's Barrier [4/4]
INSERT INTO npc_vendor_template VALUES (503,33937,0,0,2241); -- Merciless Gladiator's Libram of Fortitude [4/4]
INSERT INTO npc_vendor_template VALUES (503,33940,0,0,2241); -- Merciless Gladiator's Totem of Indomitability [4/4]
INSERT INTO npc_vendor_template VALUES (503,33943,0,0,2241); -- Merciless Gladiator's Idol of Steadfastness [4/4]
INSERT INTO npc_vendor_template VALUES (503,33946,0,0,2241); -- Merciless Gladiator's Idol of Resolve [4/4]
INSERT INTO npc_vendor_template VALUES (503,33949,0,0,2241); -- Merciless Gladiator's Libram of Vengeance [4/4]
INSERT INTO npc_vendor_template VALUES (503,33952,0,0,2241); -- Merciless Gladiator's Totem of Survival [4/4]

-- Total count: Templates: 36, single 0, sum 36, before: 144

-- ------------
-- PVP Vendors
-- 23446,24520,26395,26398
-- ------------
DELETE FROM npc_vendor WHERE entry IN (23446,24520,26395,26398);
UPDATE creature_template SET vendor_id=504 WHERE entry IN (23446,24520,26395,26398);

INSERT INTO npc_vendor_template VALUES (504,33812,0,0,2406); -- Vindicator's Plate Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,33813,0,0,2405); -- Vindicator's Plate Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33853,0,0,129); -- Vindicator's Band of Dominance [4/4]
INSERT INTO npc_vendor_template VALUES (504,33876,0,0,2405); -- Vindicator's Chain Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33878,0,0,2406); -- Vindicator's Chain Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,33880,0,0,2406); -- Vindicator's Dragonhide Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,33881,0,0,2405); -- Vindicator's Dragonhide Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33883,0,0,2405); -- Vindicator's Dreadweave Cuffs [4/4]
INSERT INTO npc_vendor_template VALUES (504,33884,0,0,2406); -- Vindicator's Dreadweave Stalkers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33886,0,0,2406); -- Vindicator's Kodohide Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,33887,0,0,2405); -- Vindicator's Kodohide Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33889,0,0,2405); -- Vindicator's Lamellar Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33890,0,0,2406); -- Vindicator's Lamellar Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,33892,0,0,2406); -- Vindicator's Leather Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,33893,0,0,2405); -- Vindicator's Leather Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33894,0,0,2405); -- Vindicator's Linked Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33896,0,0,2406); -- Vindicator's Linked Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,33897,0,0,2405); -- Vindicator's Mail Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33899,0,0,2406); -- Vindicator's Mail Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,33901,0,0,2405); -- Vindicator's Mooncloth Cuffs [4/4]
INSERT INTO npc_vendor_template VALUES (504,33902,0,0,2406); -- Vindicator's Mooncloth Slippers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33904,0,0,2405); -- Vindicator's Ornamented Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33905,0,0,2406); -- Vindicator's Ornamented Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,33906,0,0,2405); -- Vindicator's Ringmail Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33908,0,0,2406); -- Vindicator's Ringmail Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,33910,0,0,2405); -- Vindicator's Scaled Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33911,0,0,2406); -- Vindicator's Scaled Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,33913,0,0,2405); -- Vindicator's Silk Cuffs [4/4]
INSERT INTO npc_vendor_template VALUES (504,33914,0,0,2406); -- Vindicator's Silk Footguards [4/4]
INSERT INTO npc_vendor_template VALUES (504,33916,0,0,2406); -- Vindicator's Wyrmhide Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,33917,0,0,2405); -- Vindicator's Wyrmhide Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,33918,0,0,129); -- Vindicator's Band of Salvation [4/4]
INSERT INTO npc_vendor_template VALUES (504,33919,0,0,129); -- Vindicator's Band of Triumph [4/4]
INSERT INTO npc_vendor_template VALUES (504,34576,0,0,2289); -- Battlemaster's Cruelty [4/4]
INSERT INTO npc_vendor_template VALUES (504,35129,0,0,2402); -- Guardian's Band of Dominance [4/4]
INSERT INTO npc_vendor_template VALUES (504,35130,0,0,2402); -- Guardian's Band of Salvation [4/4]
INSERT INTO npc_vendor_template VALUES (504,35131,0,0,2402); -- Guardian's Band of Triumph [4/4]
INSERT INTO npc_vendor_template VALUES (504,35132,0,0,127); -- Guardian's Pendant of Conquest [4/4]
INSERT INTO npc_vendor_template VALUES (504,35133,0,0,127); -- Guardian's Pendant of Dominance [4/4]
INSERT INTO npc_vendor_template VALUES (504,35134,0,0,127); -- Guardian's Pendant of Salvation [4/4]
INSERT INTO npc_vendor_template VALUES (504,35135,0,0,127); -- Guardian's Pendant of Triumph [4/4]
INSERT INTO npc_vendor_template VALUES (504,35136,0,0,2400); -- Guardian's Chain Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,35137,0,0,2400); -- Guardian's Dragonhide Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,35138,0,0,2400); -- Guardian's Dreadweave Stalkers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35139,0,0,2400); -- Guardian's Kodohide Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,35140,0,0,2400); -- Guardian's Lamellar Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,35141,0,0,2400); -- Guardian's Leather Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,35142,0,0,2400); -- Guardian's Linked Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,35143,0,0,2400); -- Guardian's Mail Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,35144,0,0,2400); -- Guardian's Mooncloth Slippers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35145,0,0,2400); -- Guardian's Ornamented Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,35146,0,0,2400); -- Guardian's Plate Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,35147,0,0,2400); -- Guardian's Ringmail Sabatons [4/4]
INSERT INTO npc_vendor_template VALUES (504,35148,0,0,2400); -- Guardian's Scaled Greaves [4/4]
INSERT INTO npc_vendor_template VALUES (504,35149,0,0,2400); -- Guardian's Silk Footguards [4/4]
INSERT INTO npc_vendor_template VALUES (504,35150,0,0,2400); -- Guardian's Wyrmhide Boots [4/4]
INSERT INTO npc_vendor_template VALUES (504,35151,0,0,1923); -- Guardian's Chain Girdle [4/4]
INSERT INTO npc_vendor_template VALUES (504,35152,0,0,1923); -- Guardian's Dragonhide Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35153,0,0,1923); -- Guardian's Dreadweave Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35154,0,0,1923); -- Guardian's Kodohide Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35155,0,0,1923); -- Guardian's Lamellar Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35156,0,0,1923); -- Guardian's Leather Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35157,0,0,1923); -- Guardian's Linked Girdle [4/4]
INSERT INTO npc_vendor_template VALUES (504,35158,0,0,1923); -- Guardian's Mail Girdle [4/4]
INSERT INTO npc_vendor_template VALUES (504,35159,0,0,1923); -- Guardian's Mooncloth Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35160,0,0,1923); -- Guardian's Ornamented Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35161,0,0,1923); -- Guardian's Plate Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35162,0,0,1923); -- Guardian's Ringmail Girdle [4/4]
INSERT INTO npc_vendor_template VALUES (504,35163,0,0,1923); -- Guardian's Scaled Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35164,0,0,1923); -- Guardian's Silk Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35165,0,0,1923); -- Guardian's Wyrmhide Belt [4/4]
INSERT INTO npc_vendor_template VALUES (504,35166,0,0,2401); -- Guardian's Chain Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35167,0,0,2401); -- Guardian's Dragonhide Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35168,0,0,2401); -- Guardian's Dreadweave Cuffs [4/4]
INSERT INTO npc_vendor_template VALUES (504,35169,0,0,2401); -- Guardian's Kodohide Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35170,0,0,2401); -- Guardian's Lamellar Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35171,0,0,2401); -- Guardian's Leather Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35172,0,0,2401); -- Guardian's Linked Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35173,0,0,2401); -- Guardian's Mail Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35174,0,0,2401); -- Guardian's Mooncloth Cuffs [4/4]
INSERT INTO npc_vendor_template VALUES (504,35175,0,0,2401); -- Guardian's Ornamented Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35176,0,0,2401); -- Guardian's Plate Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35177,0,0,2401); -- Guardian's Ringmail Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35178,0,0,2401); -- Guardian's Scaled Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35179,0,0,2401); -- Guardian's Silk Cuffs [4/4]
INSERT INTO npc_vendor_template VALUES (504,35180,0,0,2401); -- Guardian's Wyrmhide Bracers [4/4]
INSERT INTO npc_vendor_template VALUES (504,35320,0,0,129); -- Vindicator's Band of Subjugation [4/4]
INSERT INTO npc_vendor_template VALUES (504,35327,0,0,2289); -- Battlemaster's Alacrity [4/4]
INSERT INTO npc_vendor_template VALUES (504,37927,0,0,2402); -- Guardian's Band of Subjugation [4/4]
INSERT INTO npc_vendor_template VALUES (504,37928,0,0,127); -- Guardian's Pendant of Subjugation [4/4]
INSERT INTO npc_vendor_template VALUES (504,37929,0,0,127); -- Guardian's Pendant of Reprieve [4/4]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 34577,0,0,2289 Battlemaster's Depravity [3/4]
-- 34578,0,0,2289 Battlemaster's Determination [3/4]
-- 34579,0,0,2289 Battlemaster's Audacity [3/4]
-- 34580,0,0,2289 Battlemaster's Perseverance [3/4]

INSERT INTO npc_vendor VALUES (23446,34577,0,0,2289); -- Battlemaster's Depravity
INSERT INTO npc_vendor VALUES (24520,34577,0,0,2289); -- Battlemaster's Depravity
INSERT INTO npc_vendor VALUES (26395,34577,0,0,2289); -- Battlemaster's Depravity
INSERT INTO npc_vendor VALUES (23446,34578,0,0,2289); -- Battlemaster's Determination
INSERT INTO npc_vendor VALUES (24520,34578,0,0,2289); -- Battlemaster's Determination
INSERT INTO npc_vendor VALUES (26395,34578,0,0,2289); -- Battlemaster's Determination
INSERT INTO npc_vendor VALUES (23446,34579,0,0,2289); -- Battlemaster's Audacity
INSERT INTO npc_vendor VALUES (24520,34579,0,0,2289); -- Battlemaster's Audacity
INSERT INTO npc_vendor VALUES (26395,34579,0,0,2289); -- Battlemaster's Audacity
INSERT INTO npc_vendor VALUES (23446,34580,0,0,2289); -- Battlemaster's Perseverance
INSERT INTO npc_vendor VALUES (24520,34580,0,0,2289); -- Battlemaster's Perseverance
INSERT INTO npc_vendor VALUES (26395,34580,0,0,2289); -- Battlemaster's Perseverance

-- Total count: Templates: 91, single 12, sum 103, before: 376

-- ------------
-- Shattered Sun Offensive
-- 25046,27667
-- ------------
DELETE FROM npc_vendor WHERE entry IN (25046,27667);
UPDATE creature_template SET vendor_id=505 WHERE entry IN (25046,27667);

INSERT INTO npc_vendor_template VALUES (505,34887,0,0,2059); -- Angelista's Revenge [2/2]
INSERT INTO npc_vendor_template VALUES (505,34888,0,0,2059); -- Ring of the Stalwart Protector [2/2]
INSERT INTO npc_vendor_template VALUES (505,34889,0,0,2059); -- Fused Nethergon Band [2/2]
INSERT INTO npc_vendor_template VALUES (505,34890,0,0,2059); -- Anveena's Touch [2/2]
INSERT INTO npc_vendor_template VALUES (505,34891,0,0,2329); -- The Blade of Harbingers [2/2]
INSERT INTO npc_vendor_template VALUES (505,34892,0,0,2329); -- Crossbow of Relentless Strikes [2/2]
INSERT INTO npc_vendor_template VALUES (505,34893,0,0,2331); -- Vanir's Right Fist of Brutality [2/2]
INSERT INTO npc_vendor_template VALUES (505,34894,0,0,2331); -- Blade of Serration [2/2]
INSERT INTO npc_vendor_template VALUES (505,34895,0,0,2329); -- Scryer's Blade of Focus [2/2]
INSERT INTO npc_vendor_template VALUES (505,34896,0,0,2329); -- Gavel of Naaru Blessings [2/2]
INSERT INTO npc_vendor_template VALUES (505,34898,0,0,2329); -- Staff of the Forest Lord [2/2]
INSERT INTO npc_vendor_template VALUES (505,34900,0,0,2333); -- Shroud of Nature's Harmony [2/2]
INSERT INTO npc_vendor_template VALUES (505,34901,0,0,2333); -- Grovewalker's Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (505,34902,0,0,2049); -- Oakleaf-Spun Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (505,34903,0,0,2333); -- Embrace of Starlight [2/2]
INSERT INTO npc_vendor_template VALUES (505,34904,0,0,2049); -- Barbed Gloves of the Sage [2/2]
INSERT INTO npc_vendor_template VALUES (505,34905,0,0,2333); -- Crystalwind Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (505,34906,0,0,2333); -- Embrace of Everlasting Prowess [2/2]
INSERT INTO npc_vendor_template VALUES (505,34910,0,0,2333); -- Tameless Breeches [2/2]
INSERT INTO npc_vendor_template VALUES (505,34911,0,0,2049); -- Handwraps of the Aggressor [2/2]
INSERT INTO npc_vendor_template VALUES (505,34912,0,0,2333); -- Scaled Drakeskin Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (505,34914,0,0,2333); -- Leggings of the Pursuit [2/2]
INSERT INTO npc_vendor_template VALUES (505,34916,0,0,2049); -- Gauntlets of Rapidity [2/2]
INSERT INTO npc_vendor_template VALUES (505,34917,0,0,2333); -- Shroud of the Lore`nial [2/2]
INSERT INTO npc_vendor_template VALUES (505,34918,0,0,2333); -- Legwraps of Sweltering Flame [2/2]
INSERT INTO npc_vendor_template VALUES (505,34919,0,0,2049); -- Boots of Incantations [2/2]
INSERT INTO npc_vendor_template VALUES (505,34921,0,0,2333); -- Ecclesiastical Cuirass [2/2]
INSERT INTO npc_vendor_template VALUES (505,34922,0,0,2333); -- Greaves of Pacification [2/2]
INSERT INTO npc_vendor_template VALUES (505,34923,0,0,2049); -- Waistguard of Reparation [2/2]
INSERT INTO npc_vendor_template VALUES (505,34924,0,0,2333); -- Gown of Spiritual Wonder [2/2]
INSERT INTO npc_vendor_template VALUES (505,34925,0,0,2333); -- Adorned Supernal Legwraps [2/2]
INSERT INTO npc_vendor_template VALUES (505,34926,0,0,2049); -- Slippers of Dutiful Mending [2/2]
INSERT INTO npc_vendor_template VALUES (505,34927,0,0,2333); -- Tunic of the Dark Hour [2/2]
INSERT INTO npc_vendor_template VALUES (505,34928,0,0,2333); -- Trousers of the Scryers' Retainer [2/2]
INSERT INTO npc_vendor_template VALUES (505,34929,0,0,2049); -- Belt of the Silent Path [2/2]
INSERT INTO npc_vendor_template VALUES (505,34930,0,0,2333); -- Wave of Life Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (505,34931,0,0,2333); -- Runed Scales of Antiquity [2/2]
INSERT INTO npc_vendor_template VALUES (505,34932,0,0,2049); -- Clutch of the Soothing Breeze [2/2]
INSERT INTO npc_vendor_template VALUES (505,34933,0,0,2333); -- Hauberk of Whirling Fury [2/2]
INSERT INTO npc_vendor_template VALUES (505,34934,0,0,2333); -- Rushing Storm Kilt [2/2]
INSERT INTO npc_vendor_template VALUES (505,34935,0,0,2049); -- Aftershock Waistguard [2/2]
INSERT INTO npc_vendor_template VALUES (505,34936,0,0,2333); -- Tormented Demonsoul Robes [2/2]
INSERT INTO npc_vendor_template VALUES (505,34937,0,0,2333); -- Corrupted Soulcloth Pantaloons [2/2]
INSERT INTO npc_vendor_template VALUES (505,34938,0,0,2049); -- Enslaved Doomguard Soulgrips [2/2]
INSERT INTO npc_vendor_template VALUES (505,34939,0,0,2333); -- Chestplate of Stoicism [2/2]
INSERT INTO npc_vendor_template VALUES (505,34940,0,0,2333); -- Sunguard Legplates [2/2]
INSERT INTO npc_vendor_template VALUES (505,34941,0,0,2049); -- Girdle of the Fearless [2/2]
INSERT INTO npc_vendor_template VALUES (505,34942,0,0,2333); -- Breastplate of Ire [2/2]
INSERT INTO npc_vendor_template VALUES (505,34943,0,0,2333); -- Legplates of Unending Fury [2/2]
INSERT INTO npc_vendor_template VALUES (505,34944,0,0,2049); -- Girdle of Seething Rage [2/2]
INSERT INTO npc_vendor_template VALUES (505,34945,0,0,2333); -- Shattrath Protectorate's Breastplate [2/2]
INSERT INTO npc_vendor_template VALUES (505,34946,0,0,2333); -- Inscribed Legplates of the Aldor [2/2]
INSERT INTO npc_vendor_template VALUES (505,34947,0,0,2049); -- Blue's Greaves of the Righteous Guardian [2/2]
INSERT INTO npc_vendor_template VALUES (505,34949,0,0,2332); -- Swift Blade of Uncertainty [2/2]
INSERT INTO npc_vendor_template VALUES (505,34950,0,0,2332); -- Vanir's Left Fist of Savagery [2/2]
INSERT INTO npc_vendor_template VALUES (505,34951,0,0,2332); -- Vanir's Left Fist of Brutality [2/2]
INSERT INTO npc_vendor_template VALUES (505,34952,0,0,2332); -- The Mutilator [2/2]

-- Total count: Templates: 57, single 0, sum 57, before: 114

-- ------------
-- Keeper of Sha'tari Heirlooms
-- 21905,21906
-- ------------
DELETE FROM npc_vendor WHERE entry IN (21905,21906);
UPDATE creature_template SET vendor_id=506 WHERE entry IN (21905,21906);

INSERT INTO npc_vendor_template VALUES (506,30113,0,0,1332); -- Destroyer Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30114,0,0,1333); -- Destroyer Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30115,0,0,1334); -- Destroyer Greathelm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30116,0,0,1335); -- Destroyer Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30117,0,0,1336); -- Destroyer Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30118,0,0,1332); -- Destroyer Breastplate [2/2]
INSERT INTO npc_vendor_template VALUES (506,30119,0,0,1333); -- Destroyer Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (506,30120,0,0,1334); -- Destroyer Battle-Helm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30121,0,0,1335); -- Destroyer Greaves [2/2]
INSERT INTO npc_vendor_template VALUES (506,30122,0,0,1336); -- Destroyer Shoulderblades [2/2]
INSERT INTO npc_vendor_template VALUES (506,30123,0,0,1342); -- Crystalforge Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30124,0,0,1343); -- Crystalforge Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30125,0,0,1344); -- Crystalforge Faceguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30126,0,0,1345); -- Crystalforge Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30127,0,0,1346); -- Crystalforge Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30129,0,0,1342); -- Crystalforge Breastplate [2/2]
INSERT INTO npc_vendor_template VALUES (506,30130,0,0,1343); -- Crystalforge Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (506,30131,0,0,1344); -- Crystalforge War-Helm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30132,0,0,1345); -- Crystalforge Greaves [2/2]
INSERT INTO npc_vendor_template VALUES (506,30133,0,0,1346); -- Crystalforge Shoulderbraces [2/2]
INSERT INTO npc_vendor_template VALUES (506,30134,0,0,1342); -- Crystalforge Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (506,30135,0,0,1343); -- Crystalforge Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (506,30136,0,0,1344); -- Crystalforge Greathelm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30137,0,0,1345); -- Crystalforge Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (506,30138,0,0,1346); -- Crystalforge Pauldrons [2/2]
INSERT INTO npc_vendor_template VALUES (506,30139,0,0,1357); -- Rift Stalker Hauberk [2/2]
INSERT INTO npc_vendor_template VALUES (506,30140,0,0,1358); -- Rift Stalker Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (506,30141,0,0,1359); -- Rift Stalker Helm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30142,0,0,1360); -- Rift Stalker Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (506,30143,0,0,1361); -- Rift Stalker Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (506,30144,0,0,1342); -- Deathmantle Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30145,0,0,1343); -- Deathmantle Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30146,0,0,1344); -- Deathmantle Helm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30148,0,0,1345); -- Deathmantle Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30149,0,0,1346); -- Deathmantle Shoulderpads [2/2]
INSERT INTO npc_vendor_template VALUES (506,30150,0,0,1332); -- Vestments of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30151,0,0,1333); -- Gloves of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30152,0,0,1334); -- Cowl of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30153,0,0,1335); -- Breeches of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30154,0,0,1336); -- Mantle of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30159,0,0,1332); -- Shroud of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30160,0,0,1333); -- Handguards of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30161,0,0,1334); -- Hood of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30162,0,0,1335); -- Leggings of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30163,0,0,1336); -- Wings of the Avatar [2/2]
INSERT INTO npc_vendor_template VALUES (506,30164,0,0,1342); -- Cataclysm Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30165,0,0,1343); -- Cataclysm Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (506,30166,0,0,1344); -- Cataclysm Headguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30167,0,0,1345); -- Cataclysm Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30168,0,0,1346); -- Cataclysm Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (506,30169,0,0,1342); -- Cataclysm Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (506,30170,0,0,1343); -- Cataclysm Handgrips [2/2]
INSERT INTO npc_vendor_template VALUES (506,30171,0,0,1344); -- Cataclysm Headpiece [2/2]
INSERT INTO npc_vendor_template VALUES (506,30172,0,0,1345); -- Cataclysm Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (506,30173,0,0,1346); -- Cataclysm Shoulderpads [2/2]
INSERT INTO npc_vendor_template VALUES (506,30185,0,0,1342); -- Cataclysm Chestplate [2/2]
INSERT INTO npc_vendor_template VALUES (506,30189,0,0,1343); -- Cataclysm Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (506,30190,0,0,1344); -- Cataclysm Helm [2/2]
INSERT INTO npc_vendor_template VALUES (506,30192,0,0,1345); -- Cataclysm Legplates [2/2]
INSERT INTO npc_vendor_template VALUES (506,30194,0,0,1346); -- Cataclysm Shoulderplates [2/2]
INSERT INTO npc_vendor_template VALUES (506,30196,0,0,1357); -- Robes of Tirisfal [2/2]
INSERT INTO npc_vendor_template VALUES (506,30205,0,0,1358); -- Gloves of Tirisfal [2/2]
INSERT INTO npc_vendor_template VALUES (506,30206,0,0,1359); -- Cowl of Tirisfal [2/2]
INSERT INTO npc_vendor_template VALUES (506,30207,0,0,1360); -- Leggings of Tirisfal [2/2]
INSERT INTO npc_vendor_template VALUES (506,30210,0,0,1361); -- Mantle of Tirisfal [2/2]
INSERT INTO npc_vendor_template VALUES (506,30211,0,0,1358); -- Gloves of the Corruptor [2/2]
INSERT INTO npc_vendor_template VALUES (506,30212,0,0,1359); -- Hood of the Corruptor [2/2]
INSERT INTO npc_vendor_template VALUES (506,30213,0,0,1360); -- Leggings of the Corruptor [2/2]
INSERT INTO npc_vendor_template VALUES (506,30214,0,0,1357); -- Robe of the Corruptor [2/2]
INSERT INTO npc_vendor_template VALUES (506,30215,0,0,1361); -- Mantle of the Corruptor [2/2]
INSERT INTO npc_vendor_template VALUES (506,30216,0,0,1332); -- Nordrassil Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30217,0,0,1333); -- Nordrassil Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (506,30219,0,0,1334); -- Nordrassil Headguard [2/2]
INSERT INTO npc_vendor_template VALUES (506,30220,0,0,1335); -- Nordrassil Life-Kilt [2/2]
INSERT INTO npc_vendor_template VALUES (506,30221,0,0,1336); -- Nordrassil Life-Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (506,30222,0,0,1332); -- Nordrassil Chestplate [2/2]
INSERT INTO npc_vendor_template VALUES (506,30223,0,0,1333); -- Nordrassil Handgrips [2/2]
INSERT INTO npc_vendor_template VALUES (506,30228,0,0,1334); -- Nordrassil Headdress [2/2]
INSERT INTO npc_vendor_template VALUES (506,30229,0,0,1335); -- Nordrassil Feral-Kilt [2/2]
INSERT INTO npc_vendor_template VALUES (506,30230,0,0,1336); -- Nordrassil Feral-Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (506,30231,0,0,1332); -- Nordrassil Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (506,30232,0,0,1333); -- Nordrassil Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (506,30233,0,0,1334); -- Nordrassil Headpiece [2/2]
INSERT INTO npc_vendor_template VALUES (506,30234,0,0,1335); -- Nordrassil Wrath-Kilt [2/2]
INSERT INTO npc_vendor_template VALUES (506,30235,0,0,1336); -- Nordrassil Wrath-Mantle [2/2]

-- Total count: Templates: 85, single 0, sum 85, before: 170

-- ------------
-- Keeper of Sha'tari Artifacts
-- 20613,20616
-- ------------
DELETE FROM npc_vendor WHERE entry IN (20613,20616);
UPDATE creature_template SET vendor_id=507 WHERE entry IN (20613,20616);

INSERT INTO npc_vendor_template VALUES (507,28963,0,0,1217); -- Voidheart Crown [2/2]
INSERT INTO npc_vendor_template VALUES (507,28964,0,0,1215); -- Voidheart Robe [2/2]
INSERT INTO npc_vendor_template VALUES (507,28966,0,0,1218); -- Voidheart Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (507,28967,0,0,1219); -- Voidheart Mantle [2/2]
INSERT INTO npc_vendor_template VALUES (507,28968,0,0,1216); -- Voidheart Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29011,0,0,1239); -- Warbringer Greathelm [2/2]
INSERT INTO npc_vendor_template VALUES (507,29012,0,0,1235); -- Warbringer Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (507,29015,0,0,1241); -- Warbringer Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29016,0,0,1243); -- Warbringer Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29017,0,0,1237); -- Warbringer Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29019,0,0,1235); -- Warbringer Breastplate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29020,0,0,1237); -- Warbringer Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (507,29021,0,0,1239); -- Warbringer Battle-Helm [2/2]
INSERT INTO npc_vendor_template VALUES (507,29022,0,0,1241); -- Warbringer Greaves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29023,0,0,1243); -- Warbringer Shoulderplates [2/2]
INSERT INTO npc_vendor_template VALUES (507,29028,0,0,1206); -- Cyclone Headdress [2/2]
INSERT INTO npc_vendor_template VALUES (507,29029,0,0,1200); -- Cyclone Hauberk [2/2]
INSERT INTO npc_vendor_template VALUES (507,29030,0,0,1209); -- Cyclone Kilt [2/2]
INSERT INTO npc_vendor_template VALUES (507,29031,0,0,1212); -- Cyclone Shoulderpads [2/2]
INSERT INTO npc_vendor_template VALUES (507,29032,0,0,1203); -- Cyclone Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29033,0,0,1200); -- Cyclone Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (507,29034,0,0,1203); -- Cyclone Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29035,0,0,1206); -- Cyclone Faceguard [2/2]
INSERT INTO npc_vendor_template VALUES (507,29036,0,0,1209); -- Cyclone Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29037,0,0,1212); -- Cyclone Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29038,0,0,1200); -- Cyclone Breastplate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29039,0,0,1203); -- Cyclone Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (507,29040,0,0,1206); -- Cyclone Helm [2/2]
INSERT INTO npc_vendor_template VALUES (507,29042,0,0,1209); -- Cyclone War-Kilt [2/2]
INSERT INTO npc_vendor_template VALUES (507,29043,0,0,1212); -- Cyclone Shoulderplates [2/2]
INSERT INTO npc_vendor_template VALUES (507,29044,0,0,1206); -- Netherblade Facemask [2/2]
INSERT INTO npc_vendor_template VALUES (507,29045,0,0,1200); -- Netherblade Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (507,29046,0,0,1209); -- Netherblade Breeches [2/2]
INSERT INTO npc_vendor_template VALUES (507,29047,0,0,1212); -- Netherblade Shoulderpads [2/2]
INSERT INTO npc_vendor_template VALUES (507,29048,0,0,1203); -- Netherblade Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29049,0,0,1239); -- Light-Collar of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29050,0,0,1235); -- Robes of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29053,0,0,1241); -- Trousers of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29054,0,0,1243); -- Light-Mantle of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29055,0,0,1237); -- Handwraps of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29056,0,0,1235); -- Shroud of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29057,0,0,1237); -- Gloves of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29058,0,0,1239); -- Soul-Collar of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29059,0,0,1241); -- Leggings of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29060,0,0,1243); -- Soul-Mantle of the Incarnate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29061,0,0,1206); -- Justicar Diadem [2/2]
INSERT INTO npc_vendor_template VALUES (507,29062,0,0,1200); -- Justicar Chestpiece [2/2]
INSERT INTO npc_vendor_template VALUES (507,29063,0,0,1209); -- Justicar Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (507,29064,0,0,1212); -- Justicar Pauldrons [2/2]
INSERT INTO npc_vendor_template VALUES (507,29065,0,0,1203); -- Justicar Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29066,0,0,1200); -- Justicar Chestguard [2/2]
INSERT INTO npc_vendor_template VALUES (507,29067,0,0,1203); -- Justicar Handguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29068,0,0,1206); -- Justicar Faceguard [2/2]
INSERT INTO npc_vendor_template VALUES (507,29069,0,0,1209); -- Justicar Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29070,0,0,1212); -- Justicar Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29071,0,0,1200); -- Justicar Breastplate [2/2]
INSERT INTO npc_vendor_template VALUES (507,29072,0,0,1203); -- Justicar Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (507,29073,0,0,1206); -- Justicar Crown [2/2]
INSERT INTO npc_vendor_template VALUES (507,29074,0,0,1209); -- Justicar Greaves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29075,0,0,1212); -- Justicar Shoulderplates [2/2]
INSERT INTO npc_vendor_template VALUES (507,29076,0,0,1217); -- Collar of the Aldor [2/2]
INSERT INTO npc_vendor_template VALUES (507,29077,0,0,1215); -- Vestments of the Aldor [2/2]
INSERT INTO npc_vendor_template VALUES (507,29078,0,0,1218); -- Legwraps of the Aldor [2/2]
INSERT INTO npc_vendor_template VALUES (507,29079,0,0,1219); -- Pauldrons of the Aldor [2/2]
INSERT INTO npc_vendor_template VALUES (507,29080,0,0,1216); -- Gloves of the Aldor [2/2]
INSERT INTO npc_vendor_template VALUES (507,29081,0,0,1217); -- Demon Stalker Greathelm [2/2]
INSERT INTO npc_vendor_template VALUES (507,29082,0,0,1215); -- Demon Stalker Harness [2/2]
INSERT INTO npc_vendor_template VALUES (507,29083,0,0,1218); -- Demon Stalker Greaves [2/2]
INSERT INTO npc_vendor_template VALUES (507,29084,0,0,1219); -- Demon Stalker Shoulderguards [2/2]
INSERT INTO npc_vendor_template VALUES (507,29085,0,0,1216); -- Demon Stalker Gauntlets [2/2]
INSERT INTO npc_vendor_template VALUES (507,29086,0,0,1239); -- Crown of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29087,0,0,1235); -- Chestguard of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29088,0,0,1241); -- Legguards of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29089,0,0,1243); -- Shoulderguards of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29090,0,0,1237); -- Handguards of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29091,0,0,1235); -- Chestpiece of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29092,0,0,1237); -- Gloves of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29093,0,0,1239); -- Antlers of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29094,0,0,1241); -- Britches of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29095,0,0,1243); -- Pauldrons of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29096,0,0,1235); -- Breastplate of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29097,0,0,1237); -- Gauntlets of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29098,0,0,1239); -- Stag-Helm of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29099,0,0,1241); -- Greaves of Malorne [2/2]
INSERT INTO npc_vendor_template VALUES (507,29100,0,0,1243); -- Mantle of Malorne [2/2]

-- Total count: Templates: 85, single 0, sum 85, before: 170

-- ------------
-- Arena Vendors Vengeful Gladiator Gear
-- 18898,19857,24392,25178
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18898,19857,24392,25178);
UPDATE creature_template SET vendor_id=508 WHERE entry IN (18898,19857,24392,25178);

INSERT INTO npc_vendor_template VALUES (508,33006,0,0,2386); -- Vengeful Gladiator's Heavy Crossbow [4/4]
INSERT INTO npc_vendor_template VALUES (508,33661,0,0,2391); -- Vengeful Gladiator's Barrier [4/4]
INSERT INTO npc_vendor_template VALUES (508,33662,0,0,2390); -- Vengeful Gladiator's Bonecracker [4/4]
INSERT INTO npc_vendor_template VALUES (508,33663,0,0,2386); -- Vengeful Gladiator's Bonegrinder [4/4]
INSERT INTO npc_vendor_template VALUES (508,33664,0,0,2288); -- Vengeful Gladiator's Chain Armor [4/4]
INSERT INTO npc_vendor_template VALUES (508,33665,0,0,2387); -- Vengeful Gladiator's Chain Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33666,0,0,2288); -- Vengeful Gladiator's Chain Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33667,0,0,2288); -- Vengeful Gladiator's Chain Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33669,0,0,2389); -- Vengeful Gladiator's Cleaver [4/4]
INSERT INTO npc_vendor_template VALUES (508,33670,0,0,2386); -- Vengeful Gladiator's Decapitator [4/4]
INSERT INTO npc_vendor_template VALUES (508,33671,0,0,2387); -- Vengeful Gladiator's Dragonhide Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33672,0,0,2288); -- Vengeful Gladiator's Dragonhide Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33673,0,0,2288); -- Vengeful Gladiator's Dragonhide Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33675,0,0,2288); -- Vengeful Gladiator's Dragonhide Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (508,33676,0,0,2387); -- Vengeful Gladiator's Dreadweave Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33677,0,0,2288); -- Vengeful Gladiator's Dreadweave Hood [4/4]
INSERT INTO npc_vendor_template VALUES (508,33678,0,0,2288); -- Vengeful Gladiator's Dreadweave Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33680,0,0,2288); -- Vengeful Gladiator's Dreadweave Robe [4/4]
INSERT INTO npc_vendor_template VALUES (508,33681,0,0,2283); -- Vengeful Gladiator's Endgame [4/4]
INSERT INTO npc_vendor_template VALUES (508,33683,0,0,2288); -- Vengeful Gladiator's Felweave Cowl [4/4]
INSERT INTO npc_vendor_template VALUES (508,33684,0,0,2387); -- Vengeful Gladiator's Felweave Handguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33685,0,0,2288); -- Vengeful Gladiator's Felweave Raiment [4/4]
INSERT INTO npc_vendor_template VALUES (508,33686,0,0,2288); -- Vengeful Gladiator's Felweave Trousers [4/4]
INSERT INTO npc_vendor_template VALUES (508,33687,0,0,2385); -- Vengeful Gladiator's Gavel [4/4]
INSERT INTO npc_vendor_template VALUES (508,33688,0,0,2386); -- Vengeful Gladiator's Greatsword [4/4]
INSERT INTO npc_vendor_template VALUES (508,33689,0,0,2390); -- Vengeful Gladiator's Hacker [4/4]
INSERT INTO npc_vendor_template VALUES (508,33690,0,0,2387); -- Vengeful Gladiator's Kodohide Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33691,0,0,2288); -- Vengeful Gladiator's Kodohide Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33692,0,0,2288); -- Vengeful Gladiator's Kodohide Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33694,0,0,2288); -- Vengeful Gladiator's Kodohide Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (508,33695,0,0,2288); -- Vengeful Gladiator's Lamellar Chestpiece [4/4]
INSERT INTO npc_vendor_template VALUES (508,33696,0,0,2387); -- Vengeful Gladiator's Lamellar Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33697,0,0,2288); -- Vengeful Gladiator's Lamellar Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33698,0,0,2288); -- Vengeful Gladiator's Lamellar Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33700,0,0,2387); -- Vengeful Gladiator's Leather Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33701,0,0,2288); -- Vengeful Gladiator's Leather Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33702,0,0,2288); -- Vengeful Gladiator's Leather Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33704,0,0,2288); -- Vengeful Gladiator's Leather Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (508,33705,0,0,2390); -- Vengeful Gladiator's Left Ripper [4/4]
INSERT INTO npc_vendor_template VALUES (508,33706,0,0,2288); -- Vengeful Gladiator's Linked Armor [4/4]
INSERT INTO npc_vendor_template VALUES (508,33707,0,0,2387); -- Vengeful Gladiator's Linked Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33708,0,0,2288); -- Vengeful Gladiator's Linked Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33709,0,0,2288); -- Vengeful Gladiator's Linked Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33711,0,0,2288); -- Vengeful Gladiator's Mail Armor [4/4]
INSERT INTO npc_vendor_template VALUES (508,33712,0,0,2387); -- Vengeful Gladiator's Mail Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33713,0,0,2288); -- Vengeful Gladiator's Mail Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33714,0,0,2288); -- Vengeful Gladiator's Mail Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33716,0,0,2386); -- Vengeful Gladiator's Staff [4/4]
INSERT INTO npc_vendor_template VALUES (508,33717,0,0,2387); -- Vengeful Gladiator's Mooncloth Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33718,0,0,2288); -- Vengeful Gladiator's Mooncloth Hood [4/4]
INSERT INTO npc_vendor_template VALUES (508,33719,0,0,2288); -- Vengeful Gladiator's Mooncloth Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33721,0,0,2288); -- Vengeful Gladiator's Mooncloth Robe [4/4]
INSERT INTO npc_vendor_template VALUES (508,33722,0,0,2288); -- Vengeful Gladiator's Ornamented Chestguard [4/4]
INSERT INTO npc_vendor_template VALUES (508,33723,0,0,2387); -- Vengeful Gladiator's Ornamented Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33724,0,0,2288); -- Vengeful Gladiator's Ornamented Headcover [4/4]
INSERT INTO npc_vendor_template VALUES (508,33725,0,0,2288); -- Vengeful Gladiator's Ornamented Legplates [4/4]
INSERT INTO npc_vendor_template VALUES (508,33727,0,0,2386); -- Vengeful Gladiator's Painsaw [4/4]
INSERT INTO npc_vendor_template VALUES (508,33728,0,0,2288); -- Vengeful Gladiator's Plate Chestpiece [4/4]
INSERT INTO npc_vendor_template VALUES (508,33729,0,0,2387); -- Vengeful Gladiator's Plate Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33730,0,0,2288); -- Vengeful Gladiator's Plate Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33731,0,0,2288); -- Vengeful Gladiator's Plate Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33733,0,0,2389); -- Vengeful Gladiator's Pummeler [4/4]
INSERT INTO npc_vendor_template VALUES (508,33734,0,0,2390); -- Vengeful Gladiator's Quickblade [4/4]
INSERT INTO npc_vendor_template VALUES (508,33735,0,0,2391); -- Vengeful Gladiator's Redoubt [4/4]
INSERT INTO npc_vendor_template VALUES (508,33736,0,0,2283); -- Vengeful Gladiator's Reprieve [4/4]
INSERT INTO npc_vendor_template VALUES (508,33737,0,0,2389); -- Vengeful Gladiator's Right Ripper [4/4]
INSERT INTO npc_vendor_template VALUES (508,33738,0,0,2288); -- Vengeful Gladiator's Ringmail Armor [4/4]
INSERT INTO npc_vendor_template VALUES (508,33739,0,0,2387); -- Vengeful Gladiator's Ringmail Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33740,0,0,2288); -- Vengeful Gladiator's Ringmail Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33741,0,0,2288); -- Vengeful Gladiator's Ringmail Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33742,0,0,2288); -- Vengeful Gladiator's Ringmail Spaulders [4/4]
INSERT INTO npc_vendor_template VALUES (508,33743,0,0,2385); -- Vengeful Gladiator's Salvation [4/4]
INSERT INTO npc_vendor_template VALUES (508,33744,0,0,2387); -- Vengeful Gladiator's Satin Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33745,0,0,2288); -- Vengeful Gladiator's Satin Hood [4/4]
INSERT INTO npc_vendor_template VALUES (508,33746,0,0,2288); -- Vengeful Gladiator's Satin Leggings [4/4]
INSERT INTO npc_vendor_template VALUES (508,33747,0,0,2288); -- Vengeful Gladiator's Satin Mantle [4/4]
INSERT INTO npc_vendor_template VALUES (508,33748,0,0,2288); -- Vengeful Gladiator's Satin Robe [4/4]
INSERT INTO npc_vendor_template VALUES (508,33749,0,0,2288); -- Vengeful Gladiator's Scaled Chestpiece [4/4]
INSERT INTO npc_vendor_template VALUES (508,33750,0,0,2387); -- Vengeful Gladiator's Scaled Gauntlets [4/4]
INSERT INTO npc_vendor_template VALUES (508,33751,0,0,2288); -- Vengeful Gladiator's Scaled Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33752,0,0,2288); -- Vengeful Gladiator's Scaled Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33754,0,0,2389); -- Vengeful Gladiator's Shanker [4/4]
INSERT INTO npc_vendor_template VALUES (508,33755,0,0,2391); -- Vengeful Gladiator's Shield Wall [4/4]
INSERT INTO npc_vendor_template VALUES (508,33756,0,0,2390); -- Vengeful Gladiator's Shiv [4/4]
INSERT INTO npc_vendor_template VALUES (508,33758,0,0,2288); -- Vengeful Gladiator's Silk Cowl [4/4]
INSERT INTO npc_vendor_template VALUES (508,33759,0,0,2387); -- Vengeful Gladiator's Silk Handguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33760,0,0,2288); -- Vengeful Gladiator's Silk Raiment [4/4]
INSERT INTO npc_vendor_template VALUES (508,33761,0,0,2288); -- Vengeful Gladiator's Silk Trousers [4/4]
INSERT INTO npc_vendor_template VALUES (508,33762,0,0,2389); -- Vengeful Gladiator's Slicer [4/4]
INSERT INTO npc_vendor_template VALUES (508,33763,0,0,2385); -- Vengeful Gladiator's Spellblade [4/4]
INSERT INTO npc_vendor_template VALUES (508,33764,0,0,2388); -- Vengeful Gladiator's Touch of Defeat [4/4]
INSERT INTO npc_vendor_template VALUES (508,33765,0,0,2388); -- Vengeful Gladiator's War Edge [4/4]
INSERT INTO npc_vendor_template VALUES (508,33766,0,0,2386); -- Vengeful Gladiator's War Staff [4/4]
INSERT INTO npc_vendor_template VALUES (508,33767,0,0,2387); -- Vengeful Gladiator's Wyrmhide Gloves [4/4]
INSERT INTO npc_vendor_template VALUES (508,33768,0,0,2288); -- Vengeful Gladiator's Wyrmhide Helm [4/4]
INSERT INTO npc_vendor_template VALUES (508,33769,0,0,2288); -- Vengeful Gladiator's Wyrmhide Legguards [4/4]
INSERT INTO npc_vendor_template VALUES (508,33771,0,0,2288); -- Vengeful Gladiator's Wyrmhide Tunic [4/4]
INSERT INTO npc_vendor_template VALUES (508,33801,0,0,2390); -- Vengeful Gladiator's Mutilator [4/4]
INSERT INTO npc_vendor_template VALUES (508,33841,0,0,2388); -- Vengeful Gladiator's Idol of Tenacity [4/4]
INSERT INTO npc_vendor_template VALUES (508,33842,0,0,2388); -- Vengeful Gladiator's Libram of Justice [4/4]
INSERT INTO npc_vendor_template VALUES (508,33843,0,0,2388); -- Vengeful Gladiator's Totem of the Third Wind [4/4]
INSERT INTO npc_vendor_template VALUES (508,33938,0,0,2388); -- Vengeful Gladiator's Libram of Fortitude [4/4]
INSERT INTO npc_vendor_template VALUES (508,33941,0,0,2388); -- Vengeful Gladiator's Totem of Indomitability [4/4]
INSERT INTO npc_vendor_template VALUES (508,33944,0,0,2388); -- Vengeful Gladiator's Idol of Steadfastness [4/4]
INSERT INTO npc_vendor_template VALUES (508,33947,0,0,2388); -- Vengeful Gladiator's Idol of Resolve [4/4]
INSERT INTO npc_vendor_template VALUES (508,33950,0,0,2388); -- Vengeful Gladiator's Libram of Vengeance [4/4]
INSERT INTO npc_vendor_template VALUES (508,33953,0,0,2388); -- Vengeful Gladiator's Totem of Survival [4/4]
INSERT INTO npc_vendor_template VALUES (508,34014,0,0,2388); -- Vengeful Gladiator's Waraxe [4/4]
INSERT INTO npc_vendor_template VALUES (508,34015,0,0,2390); -- Vengeful Gladiator's Chopper [4/4]
INSERT INTO npc_vendor_template VALUES (508,34016,0,0,2390); -- Vengeful Gladiator's Left Render [4/4]
INSERT INTO npc_vendor_template VALUES (508,34033,0,0,2387); -- Vengeful Gladiator's Grimoire [4/4]
INSERT INTO npc_vendor_template VALUES (508,34059,0,0,2388); -- Vengeful Gladiator's Baton of Light [4/4]
INSERT INTO npc_vendor_template VALUES (508,34066,0,0,2388); -- Vengeful Gladiator's Piercing Touch [4/4]
INSERT INTO npc_vendor_template VALUES (508,34529,0,0,2386); -- Vengeful Gladiator's Longbow [4/4]
INSERT INTO npc_vendor_template VALUES (508,34530,0,0,2386); -- Vengeful Gladiator's Rifle [4/4]
INSERT INTO npc_vendor_template VALUES (508,34540,0,0,2386); -- Vengeful Gladiator's Battle Staff [4/4]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 33668,0,0,2288 Vengeful Gladiator's Chain Spaulders [1/4]
-- 33668,0,0,2392 Vengeful Gladiator's Chain Spaulders [3/4]
-- 33674,0,0,2288 Vengeful Gladiator's Dragonhide Spaulders [1/4]
-- 33674,0,0,2392 Vengeful Gladiator's Dragonhide Spaulders [3/4]
-- 33679,0,0,2288 Vengeful Gladiator's Dreadweave Mantle [1/4]
-- 33679,0,0,2392 Vengeful Gladiator's Dreadweave Mantle [3/4]
-- 33682,0,0,2288 Vengeful Gladiator's Felweave Amice [1/4]
-- 33682,0,0,2392 Vengeful Gladiator's Felweave Amice [3/4]
-- 33693,0,0,2288 Vengeful Gladiator's Kodohide Spaulders [1/4]
-- 33693,0,0,2392 Vengeful Gladiator's Kodohide Spaulders [3/4]
-- 33699,0,0,2288 Vengeful Gladiator's Lamellar Shoulders [1/4]
-- 33699,0,0,2392 Vengeful Gladiator's Lamellar Shoulders [3/4]
-- 33703,0,0,2288 Vengeful Gladiator's Leather Spaulders [1/4]
-- 33703,0,0,2392 Vengeful Gladiator's Leather Spaulders [3/4]
-- 33710,0,0,2288 Vengeful Gladiator's Linked Spaulders [1/4]
-- 33710,0,0,2392 Vengeful Gladiator's Linked Spaulders [3/4]
-- 33715,0,0,2288 Vengeful Gladiator's Mail Spaulders [1/4]
-- 33715,0,0,2392 Vengeful Gladiator's Mail Spaulders [3/4]
-- 33720,0,0,2288 Vengeful Gladiator's Mooncloth Mantle [1/4]
-- 33720,0,0,2392 Vengeful Gladiator's Mooncloth Mantle [3/4]
-- 33726,0,0,2288 Vengeful Gladiator's Ornamented Spaulders [1/4]
-- 33726,0,0,2392 Vengeful Gladiator's Ornamented Spaulders [3/4]
-- 33732,0,0,2288 Vengeful Gladiator's Plate Shoulders [1/4]
-- 33732,0,0,2392 Vengeful Gladiator's Plate Shoulders [3/4]
-- 33753,0,0,2288 Vengeful Gladiator's Scaled Shoulders [1/4]
-- 33753,0,0,2392 Vengeful Gladiator's Scaled Shoulders [3/4]
-- 33757,0,0,2288 Vengeful Gladiator's Silk Amice [1/4]
-- 33757,0,0,2392 Vengeful Gladiator's Silk Amice [3/4]
-- 33770,0,0,2288 Vengeful Gladiator's Wyrmhide Spaulders [1/4]
-- 33770,0,0,2392 Vengeful Gladiator's Wyrmhide Spaulders [3/4]

INSERT INTO npc_vendor VALUES (18898,33668,0,0,2288); -- Vengeful Gladiator's Chain Spaulders
INSERT INTO npc_vendor VALUES (19857,33668,0,0,2392); -- Vengeful Gladiator's Chain Spaulders
INSERT INTO npc_vendor VALUES (24392,33668,0,0,2392); -- Vengeful Gladiator's Chain Spaulders
INSERT INTO npc_vendor VALUES (25178,33668,0,0,2392); -- Vengeful Gladiator's Chain Spaulders
INSERT INTO npc_vendor VALUES (18898,33674,0,0,2288); -- Vengeful Gladiator's Dragonhide Spaulders
INSERT INTO npc_vendor VALUES (19857,33674,0,0,2392); -- Vengeful Gladiator's Dragonhide Spaulders
INSERT INTO npc_vendor VALUES (24392,33674,0,0,2392); -- Vengeful Gladiator's Dragonhide Spaulders
INSERT INTO npc_vendor VALUES (25178,33674,0,0,2392); -- Vengeful Gladiator's Dragonhide Spaulders
INSERT INTO npc_vendor VALUES (18898,33679,0,0,2288); -- Vengeful Gladiator's Dreadweave Mantle
INSERT INTO npc_vendor VALUES (19857,33679,0,0,2392); -- Vengeful Gladiator's Dreadweave Mantle
INSERT INTO npc_vendor VALUES (24392,33679,0,0,2392); -- Vengeful Gladiator's Dreadweave Mantle
INSERT INTO npc_vendor VALUES (25178,33679,0,0,2392); -- Vengeful Gladiator's Dreadweave Mantle
INSERT INTO npc_vendor VALUES (18898,33682,0,0,2288); -- Vengeful Gladiator's Felweave Amice
INSERT INTO npc_vendor VALUES (19857,33682,0,0,2392); -- Vengeful Gladiator's Felweave Amice
INSERT INTO npc_vendor VALUES (24392,33682,0,0,2392); -- Vengeful Gladiator's Felweave Amice
INSERT INTO npc_vendor VALUES (25178,33682,0,0,2392); -- Vengeful Gladiator's Felweave Amice
INSERT INTO npc_vendor VALUES (18898,33693,0,0,2288); -- Vengeful Gladiator's Kodohide Spaulders
INSERT INTO npc_vendor VALUES (19857,33693,0,0,2392); -- Vengeful Gladiator's Kodohide Spaulders
INSERT INTO npc_vendor VALUES (24392,33693,0,0,2392); -- Vengeful Gladiator's Kodohide Spaulders
INSERT INTO npc_vendor VALUES (25178,33693,0,0,2392); -- Vengeful Gladiator's Kodohide Spaulders
INSERT INTO npc_vendor VALUES (18898,33699,0,0,2288); -- Vengeful Gladiator's Lamellar Shoulders
INSERT INTO npc_vendor VALUES (19857,33699,0,0,2392); -- Vengeful Gladiator's Lamellar Shoulders
INSERT INTO npc_vendor VALUES (24392,33699,0,0,2392); -- Vengeful Gladiator's Lamellar Shoulders
INSERT INTO npc_vendor VALUES (25178,33699,0,0,2392); -- Vengeful Gladiator's Lamellar Shoulders
INSERT INTO npc_vendor VALUES (18898,33703,0,0,2288); -- Vengeful Gladiator's Leather Spaulders
INSERT INTO npc_vendor VALUES (19857,33703,0,0,2392); -- Vengeful Gladiator's Leather Spaulders
INSERT INTO npc_vendor VALUES (24392,33703,0,0,2392); -- Vengeful Gladiator's Leather Spaulders
INSERT INTO npc_vendor VALUES (25178,33703,0,0,2392); -- Vengeful Gladiator's Leather Spaulders
INSERT INTO npc_vendor VALUES (18898,33710,0,0,2288); -- Vengeful Gladiator's Linked Spaulders
INSERT INTO npc_vendor VALUES (19857,33710,0,0,2392); -- Vengeful Gladiator's Linked Spaulders
INSERT INTO npc_vendor VALUES (24392,33710,0,0,2392); -- Vengeful Gladiator's Linked Spaulders
INSERT INTO npc_vendor VALUES (25178,33710,0,0,2392); -- Vengeful Gladiator's Linked Spaulders
INSERT INTO npc_vendor VALUES (18898,33715,0,0,2288); -- Vengeful Gladiator's Mail Spaulders
INSERT INTO npc_vendor VALUES (19857,33715,0,0,2392); -- Vengeful Gladiator's Mail Spaulders
INSERT INTO npc_vendor VALUES (24392,33715,0,0,2392); -- Vengeful Gladiator's Mail Spaulders
INSERT INTO npc_vendor VALUES (25178,33715,0,0,2392); -- Vengeful Gladiator's Mail Spaulders
INSERT INTO npc_vendor VALUES (18898,33720,0,0,2288); -- Vengeful Gladiator's Mooncloth Mantle
INSERT INTO npc_vendor VALUES (19857,33720,0,0,2392); -- Vengeful Gladiator's Mooncloth Mantle
INSERT INTO npc_vendor VALUES (24392,33720,0,0,2392); -- Vengeful Gladiator's Mooncloth Mantle
INSERT INTO npc_vendor VALUES (25178,33720,0,0,2392); -- Vengeful Gladiator's Mooncloth Mantle
INSERT INTO npc_vendor VALUES (18898,33726,0,0,2288); -- Vengeful Gladiator's Ornamented Spaulders
INSERT INTO npc_vendor VALUES (19857,33726,0,0,2392); -- Vengeful Gladiator's Ornamented Spaulders
INSERT INTO npc_vendor VALUES (24392,33726,0,0,2392); -- Vengeful Gladiator's Ornamented Spaulders
INSERT INTO npc_vendor VALUES (25178,33726,0,0,2392); -- Vengeful Gladiator's Ornamented Spaulders
INSERT INTO npc_vendor VALUES (18898,33732,0,0,2288); -- Vengeful Gladiator's Plate Shoulders
INSERT INTO npc_vendor VALUES (19857,33732,0,0,2392); -- Vengeful Gladiator's Plate Shoulders
INSERT INTO npc_vendor VALUES (24392,33732,0,0,2392); -- Vengeful Gladiator's Plate Shoulders
INSERT INTO npc_vendor VALUES (25178,33732,0,0,2392); -- Vengeful Gladiator's Plate Shoulders
INSERT INTO npc_vendor VALUES (18898,33753,0,0,2288); -- Vengeful Gladiator's Scaled Shoulders
INSERT INTO npc_vendor VALUES (19857,33753,0,0,2392); -- Vengeful Gladiator's Scaled Shoulders
INSERT INTO npc_vendor VALUES (24392,33753,0,0,2392); -- Vengeful Gladiator's Scaled Shoulders
INSERT INTO npc_vendor VALUES (25178,33753,0,0,2392); -- Vengeful Gladiator's Scaled Shoulders
INSERT INTO npc_vendor VALUES (18898,33757,0,0,2288); -- Vengeful Gladiator's Silk Amice
INSERT INTO npc_vendor VALUES (19857,33757,0,0,2392); -- Vengeful Gladiator's Silk Amice
INSERT INTO npc_vendor VALUES (24392,33757,0,0,2392); -- Vengeful Gladiator's Silk Amice
INSERT INTO npc_vendor VALUES (25178,33757,0,0,2392); -- Vengeful Gladiator's Silk Amice
INSERT INTO npc_vendor VALUES (18898,33770,0,0,2288); -- Vengeful Gladiator's Wyrmhide Spaulders
INSERT INTO npc_vendor VALUES (19857,33770,0,0,2392); -- Vengeful Gladiator's Wyrmhide Spaulders
INSERT INTO npc_vendor VALUES (24392,33770,0,0,2392); -- Vengeful Gladiator's Wyrmhide Spaulders
INSERT INTO npc_vendor VALUES (25178,33770,0,0,2392); -- Vengeful Gladiator's Wyrmhide Spaulders

-- Total count: Templates: 116, single 60, sum 176, before: 524

-- ------------
-- Consortium Quartermasters
-- 20242,23007
-- ------------
DELETE FROM npc_vendor WHERE entry IN (20242,23007);
UPDATE creature_template SET vendor_id=100 WHERE entry IN (20242,23007);

INSERT INTO npc_vendor_template VALUES (100,22552,0,0,0); -- Formula: Enchant Weapon - Major Striking [2/2]
INSERT INTO npc_vendor_template VALUES (100,23134,0,0,0); -- Design: Delicate Blood Garnet [2/2]
INSERT INTO npc_vendor_template VALUES (100,23136,0,0,0); -- Design: Luminous Flame Spessarite [2/2]
INSERT INTO npc_vendor_template VALUES (100,23146,0,0,0); -- Design: Shifting Shadow Draenite [2/2]
INSERT INTO npc_vendor_template VALUES (100,23150,0,0,0); -- Design: Thick Golden Draenite [2/2]
INSERT INTO npc_vendor_template VALUES (100,23155,0,0,0); -- Design: Lustrous Azure Moonstone [2/2]
INSERT INTO npc_vendor_template VALUES (100,23874,0,0,0); -- Schematic: Elemental Seaforium Charge [2/2]
INSERT INTO npc_vendor_template VALUES (100,24178,0,0,0); -- Design: Pendant of the Null Rune [2/2]
INSERT INTO npc_vendor_template VALUES (100,24314,0,0,0); -- Pattern: Bag of Jewels [2/2]
INSERT INTO npc_vendor_template VALUES (100,25732,0,0,0); -- Pattern: Fel Leather Gloves [2/2]
INSERT INTO npc_vendor_template VALUES (100,25733,0,0,0); -- Pattern: Fel Leather Boots [2/2]
INSERT INTO npc_vendor_template VALUES (100,25734,0,0,0); -- Pattern: Fel Leather Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (100,25908,0,0,0); -- Design: Swift Skyfire Diamond [2/2]
INSERT INTO npc_vendor_template VALUES (100,28274,0,0,0); -- Formula: Enchant Cloak - Spell Penetration [2/2]
INSERT INTO npc_vendor_template VALUES (100,29115,0,0,0); -- Consortium Blaster [2/2]
INSERT INTO npc_vendor_template VALUES (100,29116,0,0,0); -- Nomad's Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (100,29117,0,0,0); -- Stormspire Vest [2/2]
INSERT INTO npc_vendor_template VALUES (100,29118,0,0,0); -- Smuggler's Ammo Pouch [2/2]
INSERT INTO npc_vendor_template VALUES (100,29119,0,0,0); -- Haramad's Bargain [2/2]
INSERT INTO npc_vendor_template VALUES (100,29121,0,0,0); -- Guile of Khoraazi [2/2]
INSERT INTO npc_vendor_template VALUES (100,29122,0,0,0); -- Nether Runner's Cowl [2/2]
INSERT INTO npc_vendor_template VALUES (100,29456,0,0,0); -- Gift of the Ethereal [2/2]
INSERT INTO npc_vendor_template VALUES (100,29457,0,0,0); -- Nethershard [2/2]
INSERT INTO npc_vendor_template VALUES (100,31776,0,0,0); -- Consortium Tabard [2/2]
INSERT INTO npc_vendor_template VALUES (100,32412,0,0,0); -- Design: Relentless Earthstorm Diamond [2/2]
INSERT INTO npc_vendor_template VALUES (100,33156,0,0,0); -- Design: Crimson Sun [2/2]
INSERT INTO npc_vendor_template VALUES (100,33305,0,0,0); -- Design: Don Julio's Heart [2/2]

-- Total count: Templates: 27, single 0, sum 27, before: 54

-- ------------
-- (Officer) Accessories Quartermaster
-- 12781,12805
-- ------------
DELETE FROM npc_vendor WHERE entry IN (12781,12805);
UPDATE creature_template SET vendor_id=509 WHERE entry IN (12781,12805);

INSERT INTO npc_vendor_template VALUES (509,15196,0,0,1007); -- Private's Tabard [2/2]
INSERT INTO npc_vendor_template VALUES (509,16342,0,0,774); -- Sergeant's Cape [2/2]
INSERT INTO npc_vendor_template VALUES (509,18440,0,0,1050); -- Sergeant's Cape [2/2]
INSERT INTO npc_vendor_template VALUES (509,18441,0,0,986); -- Sergeant's Cape [2/2]
INSERT INTO npc_vendor_template VALUES (509,18442,0,0,838); -- Master Sergeant's Insignia [2/2]
INSERT INTO npc_vendor_template VALUES (509,18443,0,0,491); -- Master Sergeant's Insignia [2/2]
INSERT INTO npc_vendor_template VALUES (509,18444,0,0,930); -- Master Sergeant's Insignia [2/2]
INSERT INTO npc_vendor_template VALUES (509,18445,0,0,492); -- Sergeant Major's Plate Wristguards [2/2]
INSERT INTO npc_vendor_template VALUES (509,18447,0,0,931); -- Sergeant Major's Plate Wristguards [2/2]
INSERT INTO npc_vendor_template VALUES (509,18448,0,0,492); -- Sergeant Major's Chain Armguards [2/2]
INSERT INTO npc_vendor_template VALUES (509,18449,0,0,931); -- Sergeant Major's Chain Armguards [2/2]
INSERT INTO npc_vendor_template VALUES (509,18452,0,0,492); -- Sergeant Major's Leather Armsplints [2/2]
INSERT INTO npc_vendor_template VALUES (509,18453,0,0,931); -- Sergeant Major's Leather Armsplints [2/2]
INSERT INTO npc_vendor_template VALUES (509,18454,0,0,492); -- Sergeant Major's Dragonhide Armsplints [2/2]
INSERT INTO npc_vendor_template VALUES (509,18455,0,0,931); -- Sergeant Major's Dragonhide Armsplints [2/2]
INSERT INTO npc_vendor_template VALUES (509,18456,0,0,492); -- Sergeant Major's Silk Cuffs [2/2]
INSERT INTO npc_vendor_template VALUES (509,18457,0,0,931); -- Sergeant Major's Silk Cuffs [2/2]
INSERT INTO npc_vendor_template VALUES (509,18854,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18856,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18857,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18858,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18859,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18862,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18863,0,0,634); -- Insignia of the Alliance [2/2]
INSERT INTO npc_vendor_template VALUES (509,18864,0,0,634); -- Insignia of the Alliance [2/2]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 15198,0,0,1006 Knight's Colors [1/2]
-- 18606,0,0,386 Alliance Battle Standard [1/2]
-- 18664,0,0,0 A Treatise on Military Ranks [1/2]
-- 18839,0,0,460 Combat Healing Potion [1/2]
-- 18841,0,0,460 Combat Mana Potion [1/2]
-- 25829,0,0,125 Talisman of the Alliance [1/2]
-- 28118,0,0,95 Runed Ornate Ruby [1/2]
-- 28119,0,0,95 Smooth Ornate Dawnstone [1/2]
-- 28120,0,0,95 Gleaming Ornate Dawnstone [1/2]
-- 28123,0,0,99 Potent Ornate Topaz [1/2]
-- 28234,0,0,2404 Medallion of the Alliance [1/2]
-- 28235,0,0,2404 Medallion of the Alliance [1/2]
-- 28236,0,0,2404 Medallion of the Alliance [1/2]
-- 28237,0,0,2404 Medallion of the Alliance [1/2]
-- 28238,0,0,2404 Medallion of the Alliance [1/2]
-- 28244,0,0,127 Pendant of Triumph [1/2]
-- 28245,0,0,127 Pendant of Dominance [1/2]
-- 28246,0,0,129 Band of Triumph [1/2]
-- 28247,0,0,129 Band of Dominance [1/2]
-- 28362,0,0,95 Bold Ornate Ruby [1/2]
-- 28363,0,0,99 Inscribed Ornate Topaz [1/2]
-- 28379,0,0,165 Sergeant's Heavy Cape [1/2]
-- 28380,0,0,165 Sergeant's Heavy Cloak [1/2]
-- 29593,0,0,634 Insignia of the Alliance [1/2]
-- 30348,0,0,2404 Medallion of the Alliance [1/2]
-- 30349,0,0,2404 Medallion of the Alliance [1/2]
-- 30350,0,0,2404 Medallion of the Alliance [1/2]
-- 30351,0,0,2404 Medallion of the Alliance [1/2]
-- 31838,0,0,1648 Major Combat Healing Potion [1/2]
-- 31839,0,0,1649 Major Combat Healing Potion [1/2]
-- 31840,0,0,1648 Major Combat Mana Potion [1/2]
-- 31841,0,0,1649 Major Combat Mana Potion [1/2]
-- 31852,0,0,1652 Major Combat Healing Potion [1/2]
-- 31853,0,0,1653 Major Combat Healing Potion [1/2]
-- 31854,0,0,1652 Major Combat Mana Potion [1/2]
-- 31855,0,0,1653 Major Combat Mana Potion [1/2]
-- 32453,0,0,1564 Star's Tears [1/2]
-- 32455,0,0,460 Star's Lament [1/2]
-- 37864,0,0,2403 Medallion of the Alliance [1/2]

INSERT INTO npc_vendor VALUES (12781,15198,0,0,1006); -- Knight's Colors
INSERT INTO npc_vendor VALUES (12781,18606,0,0,386); -- Alliance Battle Standard
INSERT INTO npc_vendor VALUES (12805,18664,0,0,0); -- A Treatise on Military Ranks
INSERT INTO npc_vendor VALUES (12781,18839,0,0,460); -- Combat Healing Potion
INSERT INTO npc_vendor VALUES (12781,18841,0,0,460); -- Combat Mana Potion
INSERT INTO npc_vendor VALUES (12781,25829,0,0,125); -- Talisman of the Alliance
INSERT INTO npc_vendor VALUES (12781,28118,0,0,95); -- Runed Ornate Ruby
INSERT INTO npc_vendor VALUES (12781,28119,0,0,95); -- Smooth Ornate Dawnstone
INSERT INTO npc_vendor VALUES (12781,28120,0,0,95); -- Gleaming Ornate Dawnstone
INSERT INTO npc_vendor VALUES (12781,28123,0,0,99); -- Potent Ornate Topaz
INSERT INTO npc_vendor VALUES (12781,28234,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,28235,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,28236,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,28237,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,28238,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,28244,0,0,127); -- Pendant of Triumph
INSERT INTO npc_vendor VALUES (12781,28245,0,0,127); -- Pendant of Dominance
INSERT INTO npc_vendor VALUES (12781,28246,0,0,129); -- Band of Triumph
INSERT INTO npc_vendor VALUES (12781,28247,0,0,129); -- Band of Dominance
INSERT INTO npc_vendor VALUES (12781,28362,0,0,95); -- Bold Ornate Ruby
INSERT INTO npc_vendor VALUES (12781,28363,0,0,99); -- Inscribed Ornate Topaz
INSERT INTO npc_vendor VALUES (12781,28379,0,0,165); -- Sergeant's Heavy Cape
INSERT INTO npc_vendor VALUES (12781,28380,0,0,165); -- Sergeant's Heavy Cloak
INSERT INTO npc_vendor VALUES (12781,29593,0,0,634); -- Insignia of the Alliance
INSERT INTO npc_vendor VALUES (12781,30348,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,30349,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,30350,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,30351,0,0,2404); -- Medallion of the Alliance
INSERT INTO npc_vendor VALUES (12781,31838,0,0,1648); -- Major Combat Healing Potion
INSERT INTO npc_vendor VALUES (12781,31839,0,0,1649); -- Major Combat Healing Potion
INSERT INTO npc_vendor VALUES (12781,31840,0,0,1648); -- Major Combat Mana Potion
INSERT INTO npc_vendor VALUES (12781,31841,0,0,1649); -- Major Combat Mana Potion
INSERT INTO npc_vendor VALUES (12781,31852,0,0,1652); -- Major Combat Healing Potion
INSERT INTO npc_vendor VALUES (12781,31853,0,0,1653); -- Major Combat Healing Potion
INSERT INTO npc_vendor VALUES (12781,31854,0,0,1652); -- Major Combat Mana Potion
INSERT INTO npc_vendor VALUES (12781,31855,0,0,1653); -- Major Combat Mana Potion
INSERT INTO npc_vendor VALUES (12781,32453,0,0,1564); -- Star's Tears
INSERT INTO npc_vendor VALUES (12781,32455,0,0,460); -- Star's Lament
INSERT INTO npc_vendor VALUES (12781,37864,0,0,2403); -- Medallion of the Alliance

-- Total count: Templates: 25, single 39, sum 64, before: 89

-- ------------
-- Midsummer
-- 26123,26124
-- ------------
DELETE FROM npc_vendor WHERE entry IN (26123,26124);
UPDATE creature_template SET vendor_id=600 WHERE entry IN (26123,26124);

INSERT INTO npc_vendor_template VALUES (600,23083,0,0,2353); -- Captured Flame [2/2]
INSERT INTO npc_vendor_template VALUES (600,23211,0,0,2349); -- Toasted Smorc [2/2]
INSERT INTO npc_vendor_template VALUES (600,23215,0,0,2349); -- Bag of Smorc Ingredients [2/2]
INSERT INTO npc_vendor_template VALUES (600,23246,0,0,2348); -- Fiery Festival Brew [2/2]
INSERT INTO npc_vendor_template VALUES (600,23324,0,0,2351); -- Mantle of the Fire Festival [2/2]
INSERT INTO npc_vendor_template VALUES (600,23326,0,0,2349); -- Midsummer Sausage [2/2]
INSERT INTO npc_vendor_template VALUES (600,23327,0,0,2349); -- Fire-toasted Bun [2/2]
INSERT INTO npc_vendor_template VALUES (600,23435,0,0,2349); -- Elderberry Pie [2/2]
INSERT INTO npc_vendor_template VALUES (600,34683,0,0,2352); -- Sandals of Summer [2/2]
INSERT INTO npc_vendor_template VALUES (600,34684,0,0,2348); -- Handful of Summer Petals [2/2]
INSERT INTO npc_vendor_template VALUES (600,34685,0,0,2351); -- Vestment of Summer [2/2]
INSERT INTO npc_vendor_template VALUES (600,34686,0,0,2353); -- Brazier of Dancing Flames [2/2]

-- Total count: Templates: 12, single 0, sum 12, before: 24

-- ------------
-- PVP Rewards Spirit Sage
-- 19772,19773
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19772,19773);
UPDATE creature_template SET vendor_id=510 WHERE entry IN (19772,19773);

INSERT INTO npc_vendor_template VALUES (510,28553,0,0,293); -- Band of the Exorcist [2/2]
INSERT INTO npc_vendor_template VALUES (510,28555,0,0,293); -- Seal of the Exorcist [2/2]
INSERT INTO npc_vendor_template VALUES (510,28556,0,0,298); -- Swift Windfire Diamond [2/2]
INSERT INTO npc_vendor_template VALUES (510,28557,0,0,298); -- Swift Starfire Diamond [2/2]
INSERT INTO npc_vendor_template VALUES (510,28559,0,0,194); -- Exorcist's Plate Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28560,0,0,194); -- Exorcist's Lamellar Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28561,0,0,194); -- Exorcist's Leather Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28574,0,0,194); -- Exorcist's Dragonhide Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28575,0,0,194); -- Exorcist's Wyrmhide Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28576,0,0,194); -- Exorcist's Chain Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28577,0,0,194); -- Exorcist's Linked Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28758,0,0,194); -- Exorcist's Mail Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,28759,0,0,194); -- Exorcist's Dreadweave Hood [2/2]
INSERT INTO npc_vendor_template VALUES (510,28760,0,0,194); -- Exorcist's Silk Hood [2/2]
INSERT INTO npc_vendor_template VALUES (510,28761,0,0,194); -- Exorcist's Scaled Helm [2/2]
INSERT INTO npc_vendor_template VALUES (510,32947,0,0,1992); -- Auchenai Healing Potion [2/2]
INSERT INTO npc_vendor_template VALUES (510,32948,0,0,1992); -- Auchenai Mana Potion [2/2]

-- Total count: Templates: 17, single 0, sum 17, before: 34

-- ------------
-- Nagrand Quartermasters
-- 18821,18822
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18821,18822);
UPDATE creature_template SET vendor_id=511 WHERE entry IN (18821,18822);

INSERT INTO npc_vendor_template VALUES (511,27637,0,0,6); -- Shadowstalker's Sash [2/2]
INSERT INTO npc_vendor_template VALUES (511,27638,0,0,6); -- Hierophant's Sash [2/2]
INSERT INTO npc_vendor_template VALUES (511,27639,0,0,6); -- Slayer's Waistguard [2/2]
INSERT INTO npc_vendor_template VALUES (511,27643,0,0,6); -- Stormbreaker's Girdle [2/2]
INSERT INTO npc_vendor_template VALUES (511,27644,0,0,6); -- Avenger's Waistguard [2/2]
INSERT INTO npc_vendor_template VALUES (511,27645,0,0,6); -- Dreamstalker Sash [2/2]
INSERT INTO npc_vendor_template VALUES (511,27646,0,0,6); -- Marksman's Belt [2/2]
INSERT INTO npc_vendor_template VALUES (511,27647,0,0,5); -- Marksman's Legguards [2/2]
INSERT INTO npc_vendor_template VALUES (511,27648,0,0,5); -- Dreamstalker Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (511,27649,0,0,5); -- Hierophant's Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (511,27650,0,0,5); -- Shadowstalker's Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (511,27652,0,0,5); -- Stormbreaker's Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (511,27653,0,0,5); -- Slayer's Leggings [2/2]
INSERT INTO npc_vendor_template VALUES (511,27654,0,0,5); -- Avenger's Legplates [2/2]
INSERT INTO npc_vendor_template VALUES (511,27679,0,0,18); -- Sublime Mystic Dawnstone [2/2]
INSERT INTO npc_vendor_template VALUES (511,27680,0,0,7); -- Halaani Bag [2/2]
INSERT INTO npc_vendor_template VALUES (511,32071,0,0,1765); -- Recipe: Elixir of Ironskin [2/2]
INSERT INTO npc_vendor_template VALUES (511,33783,0,0,2236); -- Design: Steady Talasite [2/2]

-- Total count: Templates: 18, single 0, sum 18, before: 36

-- ------------
-- Jewelcrafting 1
-- 19065,19330,19538,22225,22227
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19065,19330,19538,22225,22227);
UPDATE creature_template SET vendor_id=101 WHERE entry IN (19065,19330,19538,22225,22227);

INSERT INTO npc_vendor_template VALUES (101,28458,0,0,0); -- Bold Tourmaline [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28459,0,0,0); -- Delicate Tourmaline [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28460,0,0,0); -- Teardrop Tourmaline [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28461,0,0,0); -- Runed Tourmaline [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28462,0,0,0); -- Bright Tourmaline [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28463,0,0,0); -- Solid Zircon [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28464,0,0,0); -- Sparkling Zircon [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28465,0,0,0); -- Lustrous Zircon [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28466,0,0,0); -- Brilliant Amber [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28467,0,0,0); -- Smooth Amber [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28468,0,0,0); -- Rigid Amber [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28469,0,0,0); -- Gleaming Amber [5/5/5]
INSERT INTO npc_vendor_template VALUES (101,28470,0,0,0); -- Thick Amber [5/5/5]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 20815,0,0,0 Jeweler's Kit [2/5/28]
-- 20824,0,0,0 Simple Grinder [2/5/28]
-- 23094,0,0,0 Teardrop Blood Garnet [1/5/1]
-- 23095,1,43200,0 Bold Blood Garnet [1/5/1]
-- 23096,0,0,0 Runed Blood Garnet [1/5/1]
-- 23097,1,43200,0 Delicate Blood Garnet [1/5/1]
-- 23098,0,0,0 Inscribed Flame Spessarite [1/5/1]
-- 23099,0,0,0 Luminous Flame Spessarite [1/5/1]
-- 23100,0,0,0 Glinting Flame Spessarite [1/5/1]
-- 23101,0,0,0 Potent Flame Spessarite [1/5/1]
-- 23103,0,0,0 Radiant Deep Peridot [1/5/1]
-- 23104,1,43200,0 Jagged Deep Peridot [1/5/1]
-- 23105,1,43200,0 Enduring Deep Peridot [1/5/1]
-- 23106,0,0,0 Dazzling Deep Peridot [1/5/1]
-- 23108,0,0,0 Glowing Shadow Draenite [1/5/1]
-- 23109,0,0,0 Royal Shadow Draenite [1/5/1]
-- 23110,0,0,0 Shifting Shadow Draenite [1/5/1]
-- 23111,0,0,0 Sovereign Shadow Draenite [1/5/1]
-- 23113,0,0,0 Brilliant Golden Draenite [1/5/1]
-- 23114,0,0,0 Gleaming Golden Draenite [1/5/1]
-- 23115,0,0,0 Thick Golden Draenite [1/5/1]
-- 23116,1,43200,0 Rigid Golden Draenite [1/5/1]
-- 23118,0,0,0 Solid Azure Moonstone [1/5/1]
-- 23119,0,0,0 Sparkling Azure Moonstone [1/5/1]
-- 23120,0,0,0 Stormy Azure Moonstone [1/5/1]
-- 23121,1,43200,0 Lustrous Azure Moonstone [1/5/1]
-- 28290,0,0,0 Smooth Golden Draenite [1/5/1]
-- 28595,0,0,0 Bright Blood Garnet [1/5/1]

INSERT INTO npc_vendor VALUES (19065,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (19538,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (19065,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (19538,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (19538,23094,0,0,0); -- Teardrop Blood Garnet
INSERT INTO npc_vendor VALUES (19538,23095,1,43200,0); -- Bold Blood Garnet
INSERT INTO npc_vendor VALUES (19538,23096,0,0,0); -- Runed Blood Garnet
INSERT INTO npc_vendor VALUES (19538,23097,1,43200,0); -- Delicate Blood Garnet
INSERT INTO npc_vendor VALUES (19538,23098,0,0,0); -- Inscribed Flame Spessarite
INSERT INTO npc_vendor VALUES (19538,23099,0,0,0); -- Luminous Flame Spessarite
INSERT INTO npc_vendor VALUES (19538,23100,0,0,0); -- Glinting Flame Spessarite
INSERT INTO npc_vendor VALUES (19538,23101,0,0,0); -- Potent Flame Spessarite
INSERT INTO npc_vendor VALUES (19538,23103,0,0,0); -- Radiant Deep Peridot
INSERT INTO npc_vendor VALUES (19538,23104,1,43200,0); -- Jagged Deep Peridot
INSERT INTO npc_vendor VALUES (19538,23105,1,43200,0); -- Enduring Deep Peridot
INSERT INTO npc_vendor VALUES (19538,23106,0,0,0); -- Dazzling Deep Peridot
INSERT INTO npc_vendor VALUES (19538,23108,0,0,0); -- Glowing Shadow Draenite
INSERT INTO npc_vendor VALUES (19538,23109,0,0,0); -- Royal Shadow Draenite
INSERT INTO npc_vendor VALUES (19538,23110,0,0,0); -- Shifting Shadow Draenite
INSERT INTO npc_vendor VALUES (19538,23111,0,0,0); -- Sovereign Shadow Draenite
INSERT INTO npc_vendor VALUES (19538,23113,0,0,0); -- Brilliant Golden Draenite
INSERT INTO npc_vendor VALUES (19538,23114,0,0,0); -- Gleaming Golden Draenite
INSERT INTO npc_vendor VALUES (19538,23115,0,0,0); -- Thick Golden Draenite
INSERT INTO npc_vendor VALUES (19538,23116,1,43200,0); -- Rigid Golden Draenite
INSERT INTO npc_vendor VALUES (19538,23118,0,0,0); -- Solid Azure Moonstone
INSERT INTO npc_vendor VALUES (19538,23119,0,0,0); -- Sparkling Azure Moonstone
INSERT INTO npc_vendor VALUES (19538,23120,0,0,0); -- Stormy Azure Moonstone
INSERT INTO npc_vendor VALUES (19538,23121,1,43200,0); -- Lustrous Azure Moonstone
INSERT INTO npc_vendor VALUES (19538,28290,0,0,0); -- Smooth Golden Draenite
INSERT INTO npc_vendor VALUES (19538,28595,0,0,0); -- Bright Blood Garnet

-- Total count: Templates: 13, single 30, sum 43, before: 95

-- ------------
-- Jewelcrafting 2
-- 25950,27666
-- ------------
DELETE FROM npc_vendor WHERE entry IN (25950,27666);
UPDATE creature_template SET vendor_id=102 WHERE entry IN (25950,27666);

INSERT INTO npc_vendor_template VALUES (102,32227,0,0,1642); -- Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,32228,0,0,1642); -- Empyrean Sapphire [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,32229,0,0,1642); -- Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,32230,0,0,1642); -- Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,32231,0,0,1642); -- Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,32249,0,0,1642); -- Seaspray Emerald [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35238,0,0,0); -- Design: Balanced Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35239,0,0,0); -- Design: Glowing Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35240,0,0,0); -- Design: Infused Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35241,0,0,0); -- Design: Royal Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35242,0,0,0); -- Design: Shifting Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35243,0,0,0); -- Design: Sovereign Shadowsong Amethyst [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35244,0,0,0); -- Design: Bold Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35245,0,0,0); -- Design: Bright Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35246,0,0,0); -- Design: Delicate Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35247,0,0,0); -- Design: Flashing Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35248,0,0,0); -- Design: Runed Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35249,0,0,0); -- Design: Subtle Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35250,0,0,0); -- Design: Teardrop Crimson Spinel [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35251,0,0,0); -- Design: Dazzling Seaspray Emerald [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35252,0,0,0); -- Design: Enduring Seaspray Emerald [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35253,0,0,0); -- Design: Jagged Seaspray Emerald [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35254,0,0,0); -- Design: Radiant Seaspray Emerald [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35255,0,0,0); -- Design: Brilliant Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35256,0,0,0); -- Design: Gleaming Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35257,0,0,0); -- Design: Great Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35258,0,0,0); -- Design: Mystic Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35259,0,0,0); -- Design: Rigid Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35260,0,0,0); -- Design: Smooth Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35261,0,0,0); -- Design: Thick Lionseye [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35262,0,0,0); -- Design: Lustrous Empyrean Sapphire [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35263,0,0,0); -- Design: Solid Empyrean Sapphire [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35264,0,0,0); -- Design: Sparkling Empyrean Sapphire [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35265,0,0,0); -- Design: Stormy Empyrean Sapphire [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35266,0,0,0); -- Design: Glinting Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35267,0,0,0); -- Design: Inscribed Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35268,0,0,0); -- Design: Luminous Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35269,0,0,0); -- Design: Potent Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35270,0,0,0); -- Design: Veiled Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35271,0,0,0); -- Design: Wicked Pyrestone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35322,0,0,0); -- Design: Quick Dawnstone [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35323,0,0,0); -- Design: Reckless Noble Topaz [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35325,0,0,0); -- Design: Forceful Talasite [2/2/2]
INSERT INTO npc_vendor_template VALUES (102,35766,0,0,0); -- Design: Steady Seaspray Emerald [2/2/3]
INSERT INTO npc_vendor_template VALUES (102,35767,0,0,0); -- Design: Reckless Pyrestone [2/2/3]
INSERT INTO npc_vendor_template VALUES (102,35768,0,0,0); -- Design: Quick Lionseye [2/2/3]
INSERT INTO npc_vendor_template VALUES (102,35769,0,0,0); -- Design: Forceful Seaspray Emerald [2/2/3]
INSERT INTO npc_vendor_template VALUES (102,37504,0,0,0); -- Design: Purified Shadowsong Amethyst [2/2/2]

-- Total count: Templates: 48, single 0, sum 48, before: 96

-- ------------
-- Jewelcrafting 3
-- 16624,17512
-- ------------
DELETE FROM npc_vendor WHERE entry IN (16624,17512);
UPDATE creature_template SET vendor_id=103 WHERE entry IN (16624,17512);

INSERT INTO npc_vendor_template VALUES (103,7337,0,0,0); -- The Rock [2/2/3]
INSERT INTO npc_vendor_template VALUES (103,7338,0,0,0); -- Mood Ring [2/2/3]
INSERT INTO npc_vendor_template VALUES (103,7339,0,0,0); -- Miniscule Diamond Ring [2/2/3]
INSERT INTO npc_vendor_template VALUES (103,7340,0,0,0); -- Flawless Diamond Solitaire [2/2/3]
INSERT INTO npc_vendor_template VALUES (103,7341,0,0,0); -- Cubic Zirconia Ring [2/2/3]
INSERT INTO npc_vendor_template VALUES (103,7342,0,0,0); -- Silver Piffeny Band [2/2/3]
INSERT INTO npc_vendor_template VALUES (103,20815,0,0,0); -- Jeweler's Kit [2/2/28]
INSERT INTO npc_vendor_template VALUES (103,20824,0,0,0); -- Simple Grinder [2/2/28]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 20854,0,0,0 Design: Amulet of the Moon [1/2/1]
-- 20854,1,43200,0 Design: Amulet of the Moon [1/2/1]
-- 20856,0,0,0 Design: Heavy Golden Necklace of Battle [1/2/2]
-- 20856,1,43200,0 Design: Heavy Golden Necklace of Battle [1/2/1]
-- 20975,0,0,0 Design: The Jade Eye [1/2/2]
-- 20975,1,43200,0 Design: The Jade Eye [1/2/1]
-- 21948,0,0,0 Design: Opal Necklace of Impact [1/2/2]
-- 21948,1,43200,0 Design: Opal Necklace of Impact [1/2/1]

INSERT INTO npc_vendor VALUES (17512,20854,0,0,0); -- Design: Amulet of the Moon
INSERT INTO npc_vendor VALUES (16624,20854,1,43200,0); -- Design: Amulet of the Moon
INSERT INTO npc_vendor VALUES (17512,20856,0,0,0); -- Design: Heavy Golden Necklace of Battle
INSERT INTO npc_vendor VALUES (16624,20856,1,43200,0); -- Design: Heavy Golden Necklace of Battle
INSERT INTO npc_vendor VALUES (17512,20975,0,0,0); -- Design: The Jade Eye
INSERT INTO npc_vendor VALUES (16624,20975,1,43200,0); -- Design: The Jade Eye
INSERT INTO npc_vendor VALUES (17512,21948,0,0,0); -- Design: Opal Necklace of Impact
INSERT INTO npc_vendor VALUES (16624,21948,1,43200,0); -- Design: Opal Necklace of Impact

-- Total count: Templates: 8, single 8, sum 16, before: 24

-- ------------
-- Master Jewelcrafting
-- 18751,18774
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18751,18774);
UPDATE creature_template SET vendor_id=104 WHERE entry IN (18751,18774);

INSERT INTO npc_vendor_template VALUES (104,20815,0,0,0); -- Jeweler's Kit [2/2/28]
INSERT INTO npc_vendor_template VALUES (104,20824,0,0,0); -- Simple Grinder [2/2/28]
INSERT INTO npc_vendor_template VALUES (104,23130,0,0,0); -- Design: Teardrop Blood Garnet [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23131,0,0,0); -- Design: Bold Blood Garnet [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23135,0,0,0); -- Design: Inscribed Flame Spessarite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23137,0,0,0); -- Design: Glinting Flame Spessarite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23140,0,0,0); -- Design: Radiant Deep Peridot [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23141,0,0,0); -- Design: Jagged Deep Peridot [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23144,0,0,0); -- Design: Glowing Shadow Draenite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23147,0,0,0); -- Design: Sovereign Shadow Draenite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23148,0,0,0); -- Design: Brilliant Golden Draenite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23151,0,0,0); -- Design: Rigid Golden Draenite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23152,0,0,0); -- Design: Solid Azure Moonstone [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,23153,0,0,0); -- Design: Sparkling Azure Moonstone [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,28291,0,0,0); -- Design: Smooth Golden Draenite [2/2/2]
INSERT INTO npc_vendor_template VALUES (104,28596,0,0,0); -- Design: Bright Blood Garnet [2/2/2]

-- Total count: Templates: 16, single 0, sum 16, before: 32

-- ------------
-- Alterac Valley 1
-- 13216,13217
-- ------------
DELETE FROM npc_vendor WHERE entry IN (13216,13217);
UPDATE creature_template SET vendor_id=512 WHERE entry IN (13216,13217);

INSERT INTO npc_vendor_template VALUES (512,17348,0,0,1564); -- Major Healing Draught [2/2]
INSERT INTO npc_vendor_template VALUES (512,17349,0,0,460); -- Superior Healing Draught [2/2]
INSERT INTO npc_vendor_template VALUES (512,17351,0,0,1564); -- Major Mana Draught [2/2]
INSERT INTO npc_vendor_template VALUES (512,17352,0,0,460); -- Superior Mana Draught [2/2]
INSERT INTO npc_vendor_template VALUES (512,19030,0,0,1005); -- Stormpike Battle Charger [2/2]
INSERT INTO npc_vendor_template VALUES (512,19032,0,0,1003); -- Stormpike Battle Tabard [2/2]
INSERT INTO npc_vendor_template VALUES (512,19045,0,0,1002); -- Stormpike Battle Standard [2/2]
INSERT INTO npc_vendor_template VALUES (512,19084,0,0,532); -- Stormpike Soldier's Cloak [2/2]
INSERT INTO npc_vendor_template VALUES (512,19086,0,0,532); -- Stormpike Sage's Cloak [2/2]
INSERT INTO npc_vendor_template VALUES (512,19091,0,0,428); -- Stormpike Plate Girdle [2/2]
INSERT INTO npc_vendor_template VALUES (512,19092,0,0,428); -- Stormpike Mail Girdle [2/2]
INSERT INTO npc_vendor_template VALUES (512,19093,0,0,428); -- Stormpike Leather Girdle [2/2]
INSERT INTO npc_vendor_template VALUES (512,19094,0,0,428); -- Stormpike Cloth Girdle [2/2]
INSERT INTO npc_vendor_template VALUES (512,19097,0,0,533); -- Stormpike Soldier's Pendant [2/2]
INSERT INTO npc_vendor_template VALUES (512,19098,0,0,533); -- Stormpike Sage's Pendant [2/2]
INSERT INTO npc_vendor_template VALUES (512,19100,0,0,496); -- Electrified Dagger [2/2]
INSERT INTO npc_vendor_template VALUES (512,19102,0,0,497); -- Crackling Staff [2/2]
INSERT INTO npc_vendor_template VALUES (512,19104,0,0,496); -- Stormstrike Hammer [2/2]
INSERT INTO npc_vendor_template VALUES (512,19301,0,0,0); -- Alterac Manna Biscuit [2/2]
INSERT INTO npc_vendor_template VALUES (512,19307,0,0,0); -- Alterac Heavy Runecloth Bandage [2/2]
INSERT INTO npc_vendor_template VALUES (512,19308,0,0,702); -- Tome of Arcane Domination [2/2]
INSERT INTO npc_vendor_template VALUES (512,19309,0,0,702); -- Tome of Shadow Force [2/2]
INSERT INTO npc_vendor_template VALUES (512,19310,0,0,702); -- Tome of the Ice Lord [2/2]
INSERT INTO npc_vendor_template VALUES (512,19311,0,0,702); -- Tome of Fiery Arcana [2/2]
INSERT INTO npc_vendor_template VALUES (512,19312,0,0,702); -- Lei of the Lifegiver [2/2]
INSERT INTO npc_vendor_template VALUES (512,19315,0,0,702); -- Therazane's Touch [2/2]
INSERT INTO npc_vendor_template VALUES (512,19316,0,0,460); -- Ice Threaded Arrow [2/2]
INSERT INTO npc_vendor_template VALUES (512,19317,0,0,460); -- Ice Threaded Bullet [2/2]
INSERT INTO npc_vendor_template VALUES (512,19318,0,0,0); -- Bottled Alterac Spring Water [2/2]
INSERT INTO npc_vendor_template VALUES (512,19319,0,0,532); -- Harpy Hide Quiver [2/2]
INSERT INTO npc_vendor_template VALUES (512,19320,0,0,532); -- Gnoll Skin Bandolier [2/2]
INSERT INTO npc_vendor_template VALUES (512,19321,0,0,702); -- The Immovable Object [2/2]
INSERT INTO npc_vendor_template VALUES (512,19323,0,0,702); -- The Unstoppable Force [2/2]
INSERT INTO npc_vendor_template VALUES (512,19324,0,0,702); -- The Lobotomizer [2/2]
INSERT INTO npc_vendor_template VALUES (512,19325,0,0,489); -- Don Julio's Band [2/2]
INSERT INTO npc_vendor_template VALUES (512,21563,0,0,489); -- Don Rodrigo's Band [2/2]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 19484,0,0,0 The Frostwolf Artichoke [1/2]

INSERT INTO npc_vendor VALUES (13217,19484,0,0,0); -- The Frostwolf Artichoke

-- Total count: Templates: 36, single 1, sum 37, before: 73

-- ------------
-- Alterac Valley 2
-- 13218,13219
-- ------------
DELETE FROM npc_vendor WHERE entry IN (13218,13219);
UPDATE creature_template SET vendor_id=513 WHERE entry IN (13218,13219);

INSERT INTO npc_vendor_template VALUES (513,17348,0,0,1564); -- Major Healing Draught [2/2]
INSERT INTO npc_vendor_template VALUES (513,17349,0,0,460); -- Superior Healing Draught [2/2]
INSERT INTO npc_vendor_template VALUES (513,17351,0,0,1564); -- Major Mana Draught [2/2]
INSERT INTO npc_vendor_template VALUES (513,17352,0,0,460); -- Superior Mana Draught [2/2]
INSERT INTO npc_vendor_template VALUES (513,19029,0,0,1005); -- Horn of the Frostwolf Howler [2/2]
INSERT INTO npc_vendor_template VALUES (513,19031,0,0,1003); -- Frostwolf Battle Tabard [2/2]
INSERT INTO npc_vendor_template VALUES (513,19046,0,0,1002); -- Frostwolf Battle Standard [2/2]
INSERT INTO npc_vendor_template VALUES (513,19083,0,0,532); -- Frostwolf Legionnaire's Cloak [2/2]
INSERT INTO npc_vendor_template VALUES (513,19085,0,0,532); -- Frostwolf Advisor's Cloak [2/2]
INSERT INTO npc_vendor_template VALUES (513,19087,0,0,428); -- Frostwolf Plate Belt [2/2]
INSERT INTO npc_vendor_template VALUES (513,19088,0,0,428); -- Frostwolf Mail Belt [2/2]
INSERT INTO npc_vendor_template VALUES (513,19089,0,0,428); -- Frostwolf Leather Belt [2/2]
INSERT INTO npc_vendor_template VALUES (513,19090,0,0,428); -- Frostwolf Cloth Belt [2/2]
INSERT INTO npc_vendor_template VALUES (513,19095,0,0,533); -- Frostwolf Legionnaire's Pendant [2/2]
INSERT INTO npc_vendor_template VALUES (513,19096,0,0,533); -- Frostwolf Advisor's Pendant [2/2]
INSERT INTO npc_vendor_template VALUES (513,19099,0,0,496); -- Glacial Blade [2/2]
INSERT INTO npc_vendor_template VALUES (513,19101,0,0,497); -- Whiteout Staff [2/2]
INSERT INTO npc_vendor_template VALUES (513,19103,0,0,496); -- Frostbite [2/2]
INSERT INTO npc_vendor_template VALUES (513,19301,0,0,0); -- Alterac Manna Biscuit [2/2]
INSERT INTO npc_vendor_template VALUES (513,19307,0,0,0); -- Alterac Heavy Runecloth Bandage [2/2]
INSERT INTO npc_vendor_template VALUES (513,19308,0,0,702); -- Tome of Arcane Domination [2/2]
INSERT INTO npc_vendor_template VALUES (513,19309,0,0,702); -- Tome of Shadow Force [2/2]
INSERT INTO npc_vendor_template VALUES (513,19310,0,0,702); -- Tome of the Ice Lord [2/2]
INSERT INTO npc_vendor_template VALUES (513,19311,0,0,702); -- Tome of Fiery Arcana [2/2]
INSERT INTO npc_vendor_template VALUES (513,19312,0,0,702); -- Lei of the Lifegiver [2/2]
INSERT INTO npc_vendor_template VALUES (513,19315,0,0,702); -- Therazane's Touch [2/2]
INSERT INTO npc_vendor_template VALUES (513,19316,0,0,460); -- Ice Threaded Arrow [2/2]
INSERT INTO npc_vendor_template VALUES (513,19317,0,0,460); -- Ice Threaded Bullet [2/2]
INSERT INTO npc_vendor_template VALUES (513,19318,0,0,0); -- Bottled Alterac Spring Water [2/2]
INSERT INTO npc_vendor_template VALUES (513,19319,0,0,532); -- Harpy Hide Quiver [2/2]
INSERT INTO npc_vendor_template VALUES (513,19320,0,0,532); -- Gnoll Skin Bandolier [2/2]
INSERT INTO npc_vendor_template VALUES (513,19321,0,0,702); -- The Immovable Object [2/2]
INSERT INTO npc_vendor_template VALUES (513,19323,0,0,702); -- The Unstoppable Force [2/2]
INSERT INTO npc_vendor_template VALUES (513,19324,0,0,702); -- The Lobotomizer [2/2]
INSERT INTO npc_vendor_template VALUES (513,19325,0,0,489); -- Don Julio's Band [2/2]
INSERT INTO npc_vendor_template VALUES (513,21563,0,0,489); -- Don Rodrigo's Band [2/2]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 19483,0,0,0 Peeling the Onion [1/2]

INSERT INTO npc_vendor VALUES (13219,19483,0,0,0); -- Peeling the Onion

-- Total count: Templates: 36, single 1, sum 37, before: 73


-- ------------
-- Argent Dawn Quartermasters
-- 10856,10857,11536
-- ------------
DELETE FROM npc_vendor WHERE entry IN (10856,10857,11536);
UPDATE creature_template SET vendor_id=10 WHERE entry IN (10856,10857,11536);

INSERT INTO npc_vendor_template VALUES (10,13482,0,0,0); -- Recipe: Transmute Air to Fire [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,13724,0,0,0); -- Enriched Manna Biscuit [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,13810,0,0,0); -- Blessed Sunfruit [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,13813,0,0,0); -- Blessed Sunfruit Juice [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19203,0,0,0); -- Plans: Girdle of the Dawn [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19205,0,0,0); -- Plans: Gloves of the Dawn [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19216,0,0,0); -- Pattern: Argent Boots [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19217,0,0,0); -- Pattern: Argent Shoulders [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19328,0,0,0); -- Pattern: Dawn Treaders [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19329,0,0,0); -- Pattern: Golden Mantle of the Dawn [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19442,0,0,0); -- Formula: Powerful Anti-Venom [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19446,0,0,0); -- Formula: Enchant Bracer - Mana Regeneration [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,19447,0,0,0); -- Formula: Enchant Bracer - Healing [3/3/3]
INSERT INTO npc_vendor_template VALUES (10,22014,0,0,0); -- Hallowed Brazier [3/3/3]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 18169,0,0,0 Flame Mantle of the Dawn [2/3/2]
-- 18170,0,0,0 Frost Mantle of the Dawn [2/3/2]
-- 18171,0,0,0 Arcane Mantle of the Dawn [2/3/2]
-- 18172,0,0,0 Nature Mantle of the Dawn [2/3/2]
-- 18173,0,0,0 Shadow Mantle of the Dawn [2/3/2]
-- 18182,0,0,0 Chromatic Mantle of the Dawn [2/3/2]

INSERT INTO npc_vendor VALUES (10857,18169,0,0,0); -- Flame Mantle of the Dawn
INSERT INTO npc_vendor VALUES (11536,18169,0,0,0); -- Flame Mantle of the Dawn
INSERT INTO npc_vendor VALUES (10857,18170,0,0,0); -- Frost Mantle of the Dawn
INSERT INTO npc_vendor VALUES (11536,18170,0,0,0); -- Frost Mantle of the Dawn
INSERT INTO npc_vendor VALUES (10857,18171,0,0,0); -- Arcane Mantle of the Dawn
INSERT INTO npc_vendor VALUES (11536,18171,0,0,0); -- Arcane Mantle of the Dawn
INSERT INTO npc_vendor VALUES (10857,18172,0,0,0); -- Nature Mantle of the Dawn
INSERT INTO npc_vendor VALUES (11536,18172,0,0,0); -- Nature Mantle of the Dawn
INSERT INTO npc_vendor VALUES (10857,18173,0,0,0); -- Shadow Mantle of the Dawn
INSERT INTO npc_vendor VALUES (11536,18173,0,0,0); -- Shadow Mantle of the Dawn
INSERT INTO npc_vendor VALUES (10857,18182,0,0,0); -- Chromatic Mantle of the Dawn
INSERT INTO npc_vendor VALUES (11536,18182,0,0,0); -- Chromatic Mantle of the Dawn

-- Total count: Templates: 14, single 12, sum 26, before: 54

-- ------------
-- Brewfest Mount
-- 24468,24510
-- ------------
DELETE FROM npc_vendor WHERE entry IN (24468,24510);
UPDATE creature_template SET vendor_id=601 WHERE entry IN (24468,24510);

INSERT INTO npc_vendor_template VALUES (601,33976,0,0,2273); -- Brewfest Ram [2/2/2]
INSERT INTO npc_vendor_template VALUES (601,33977,0,0,2273); -- Swift Brewfest Ram [2/2/2]

-- Total count: Templates: 2, single 0, sum 2, before: 4

-- ------------
-- Brew of the Month Club
-- 24495,27489
-- ------------
DELETE FROM npc_vendor WHERE entry IN (24495,27489);
UPDATE creature_template SET vendor_id=602 WHERE entry IN (24495,27489);

INSERT INTO npc_vendor_template VALUES (602,37599,0,0,2276); -- "Brew of the Month" Club Membership Form [2/2/2]

-- Total count: Templates: 1, single 0, sum 1, before: 2

-- ------------
-- Tabard Vendors
-- 5049,5052,5188,5189,5190,5191,5193,16610,16766
-- ------------
DELETE FROM npc_vendor WHERE entry IN (5049,5052,5188,5189,5190,5191,5193,16610,16766);
UPDATE creature_template SET vendor_id=11 WHERE entry IN (5049,5052,5188,5189,5190,5191,5193,16610,16766);

INSERT INTO npc_vendor_template VALUES (11,5976,0,0,0); -- Guild Tabard [9/9/9]

-- Total count: Templates: 1, single 0, sum 1, before: 9

-- ------------
-- Arcane Quickener
-- 11056,11057
-- ------------
DELETE FROM npc_vendor WHERE entry IN (11056,11057);
UPDATE creature_template SET vendor_id=12 WHERE entry IN (11056,11057);

INSERT INTO npc_vendor_template VALUES (12,13320,0,0,0); -- Arcane Quickener [2/2/2]

-- Total count: Templates: 1, single 0, sum 1, before: 2

-- ------------
-- Keepers of Time Ammo
-- 19932,20130
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19932,20130);
UPDATE creature_template SET vendor_id=300 WHERE entry IN (19932,20130);

INSERT INTO npc_vendor_template VALUES (300,31735,0,0,0); -- Timeless Shell [2/2/4]
INSERT INTO npc_vendor_template VALUES (300,31737,0,0,0); -- Timeless Arrow [2/2/4]

-- Total count: Templates: 2, single 0, sum 2, before: 4

-- ------------
-- Specialty Ammunition Vendor
-- 25195,25196
-- ------------
DELETE FROM npc_vendor WHERE entry IN (25195,25196);
UPDATE creature_template SET vendor_id=301 WHERE entry IN (25195,25196);

INSERT INTO npc_vendor_template VALUES (301,28056,0,0,0); -- Blackflight Arrow [2/2/49]
INSERT INTO npc_vendor_template VALUES (301,28061,0,0,0); -- Ironbite Shell [2/2/51]
INSERT INTO npc_vendor_template VALUES (301,31735,0,0,0); -- Timeless Shell [2/2/4]
INSERT INTO npc_vendor_template VALUES (301,31737,0,0,0); -- Timeless Arrow [2/2/4]
INSERT INTO npc_vendor_template VALUES (301,31949,0,0,0); -- Warden's Arrow [2/2/3]
INSERT INTO npc_vendor_template VALUES (301,32882,0,0,0); -- Hellfire Shot [2/2/3]
INSERT INTO npc_vendor_template VALUES (301,32883,0,0,0); -- Felbane Slugs [2/2/3]
INSERT INTO npc_vendor_template VALUES (301,34581,0,0,0); -- Mysterious Arrow [2/2/4]
INSERT INTO npc_vendor_template VALUES (301,34582,0,0,0); -- Mysterious Shell [2/2/4]

-- Total count: Templates: 9, single 0, sum 9, before: 18

-- ------------
-- Fireworks
-- 1304,2838,5569,16650,23208
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1304,2838,5569,16650,23208);
UPDATE creature_template SET vendor_id=13 WHERE entry IN (1304,2838,5569,16650,23208);

INSERT INTO npc_vendor_template VALUES (13,5740,0,0,0); -- Red Fireworks Rocket [5/5/11]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 9314,0,0,0 Red Streaks Firework [1/5/8]
-- 18648,1,43200,0 Schematic: Green Firework [1/5/2]
-- 18649,0,0,0 Schematic: Blue Firework [1/5/2]
-- 23768,3,3600,0 White Smoke Flare [1/5/1]
-- 23769,3,3600,0 Red Smoke Flare [1/5/1]

INSERT INTO npc_vendor VALUES (23208,9314,0,0,0); -- Red Streaks Firework
INSERT INTO npc_vendor VALUES (2838,18648,1,43200,0); -- Schematic: Green Firework
INSERT INTO npc_vendor VALUES (1304,18649,0,0,0); -- Schematic: Blue Firework
INSERT INTO npc_vendor VALUES (23208,23768,3,3600,0); -- White Smoke Flare
INSERT INTO npc_vendor VALUES (23208,23769,3,3600,0); -- Red Smoke Flare

-- Total count: Templates: 1, single 5, sum 6, before: 10

-- ------------
-- More Fireworks
-- 8116,8117,8118,8121,8122
-- ------------
DELETE FROM npc_vendor WHERE entry IN (8116,8117,8118,8121,8122);
UPDATE creature_template SET vendor_id=14 WHERE entry IN (8116,8117,8118,8121,8122);

INSERT INTO npc_vendor_template VALUES (14,5740,0,0,0); -- Red Fireworks Rocket [5/5/11]
INSERT INTO npc_vendor_template VALUES (14,8624,0,0,0); -- Red Sparkler [5/5/5]
INSERT INTO npc_vendor_template VALUES (14,8625,0,0,0); -- White Sparkler [5/5/5]
INSERT INTO npc_vendor_template VALUES (14,8626,0,0,0); -- Blue Sparkler [5/5/5]
INSERT INTO npc_vendor_template VALUES (14,9312,0,0,0); -- Blue Firework [5/5/7]
INSERT INTO npc_vendor_template VALUES (14,9313,0,0,0); -- Green Firework [5/5/7]
INSERT INTO npc_vendor_template VALUES (14,9314,0,0,0); -- Red Streaks Firework [5/5/8]
INSERT INTO npc_vendor_template VALUES (14,9315,0,0,0); -- Yellow Rose Firework [5/5/7]
INSERT INTO npc_vendor_template VALUES (14,9317,0,0,0); -- Red, White and Blue Firework [5/5/5]
INSERT INTO npc_vendor_template VALUES (14,9318,0,0,0); -- Red Firework [5/5/7]

-- Total count: Templates: 10, single 0, sum 10, before: 50

-- ------------
-- And some more Fireworks
-- 15011,15012
-- ------------
DELETE FROM npc_vendor WHERE entry IN (15011,15012);
UPDATE creature_template SET vendor_id=15 WHERE entry IN (15011,15012);

INSERT INTO npc_vendor_template VALUES (15,9312,0,0,0); -- Blue Firework [2/2/7]
INSERT INTO npc_vendor_template VALUES (15,9313,0,0,0); -- Green Firework [2/2/7]
INSERT INTO npc_vendor_template VALUES (15,9314,0,0,0); -- Red Streaks Firework [2/2/8]
INSERT INTO npc_vendor_template VALUES (15,9315,0,0,0); -- Yellow Rose Firework [2/2/7]
INSERT INTO npc_vendor_template VALUES (15,9318,0,0,0); -- Red Firework [2/2/7]

-- Total count: Templates: 5, single 0, sum 5, before: 10

-- ------------
-- Staff Vendors
-- 1315,3022,3330,3349,4234,4570,19043,19238
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1315,3022,3330,3349,4234,4570,19043,19238);
UPDATE creature_template SET vendor_id=302 WHERE entry IN (1315,3022,3330,3349,4234,4570,19043,19238);

INSERT INTO npc_vendor_template VALUES (302,2527,0,0,0); -- Battle Staff [8/8/26]
INSERT INTO npc_vendor_template VALUES (302,2535,0,0,0); -- War Staff [8/8/27]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 854,0,0,0 Quarter Staff [1/8/22]
-- 928,0,0,0 Long Staff [1/8/18]
-- 2030,0,0,0 Gnarled Staff [1/8/19]
-- 2495,0,0,0 Walking Stick [1/8/19]
-- 12251,1,3600,0 Big Stick [1/8/4]
-- 12252,1,43200,0 Staff of Protection [1/8/2]

INSERT INTO npc_vendor VALUES (19238,854,0,0,0); -- Quarter Staff
INSERT INTO npc_vendor VALUES (19238,928,0,0,0); -- Long Staff
INSERT INTO npc_vendor VALUES (19238,2030,0,0,0); -- Gnarled Staff
INSERT INTO npc_vendor VALUES (19238,2495,0,0,0); -- Walking Stick
INSERT INTO npc_vendor VALUES (19043,12251,1,3600,0); -- Big Stick
INSERT INTO npc_vendor VALUES (19238,12252,1,43200,0); -- Staff of Protection

-- Total count: Templates: 2, single 6, sum 8, before: 22

-- ------------
-- That UnGoro Quest...
-- 4217,7879,9087
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4217,7879,9087);
UPDATE creature_template SET vendor_id=16 WHERE entry IN (4217,7879,9087);

INSERT INTO npc_vendor_template VALUES (16,11020,0,0,0); -- Evergreen Pouch [3/3/3]
INSERT INTO npc_vendor_template VALUES (16,11022,0,0,0); -- Packet of Tharlendris Seeds [3/3/3]

-- Total count: Templates: 2, single 0, sum 2, before: 6

-- ------------
-- Bag Vendors
-- 3487,3016,18947
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3487,3016,18947);
UPDATE creature_template SET vendor_id=400 WHERE entry IN (3487,3016,18947);

INSERT INTO npc_vendor_template VALUES (400,4496,0,0,0); -- Small Brown Pouch [3/3/53]
INSERT INTO npc_vendor_template VALUES (400,4497,0,0,0); -- Heavy Brown Bag [3/3/55]
INSERT INTO npc_vendor_template VALUES (400,4498,0,0,0); -- Brown Leather Satchel [3/3/82]

-- Total count: Templates: 3, single 0, sum 3, before: 9

-- ------------
-- Bag Vendors 2
-- 1321,3369,4230,4590,5132,8364,16690,16709
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1321,3369,4230,4590,5132,8364,16690,16709);
UPDATE creature_template SET vendor_id=401 WHERE entry IN (1321,3369,4230,4590,5132,8364,16690,16709);

INSERT INTO npc_vendor_template VALUES (401,4496,0,0,0); -- Small Brown Pouch [8/8/53]
INSERT INTO npc_vendor_template VALUES (401,4497,0,0,0); -- Heavy Brown Bag [8/8/55]
INSERT INTO npc_vendor_template VALUES (401,4498,0,0,0); -- Brown Leather Satchel [8/8/82]
INSERT INTO npc_vendor_template VALUES (401,4499,0,0,0); -- Huge Brown Sack [8/8/10]

-- Total count: Templates: 4, single 0, sum 4, before: 32

-- ------------
-- Orphan-related? - Should be sold by more people according to WoWHead (5698,4165,3044,15006,5173) (Also 11038 but he is selling different things, too, so he goes to another group)
-- 14450,16543
-- ------------
DELETE FROM npc_vendor WHERE entry IN (14450,16543);
UPDATE creature_template SET vendor_id=603 WHERE entry IN (14450,16543);

INSERT INTO npc_vendor_template VALUES (603,23160,0,0,0); -- Friendship Bread [2/2/2]
INSERT INTO npc_vendor_template VALUES (603,23161,0,0,0); -- Freshly-Squeezed Lemonade [2/2/2]

-- Total count: Templates: 2, single 0, sum 2, before: 4

-- ------------
-- War Harness Vendors
-- 3023,3359
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3023,3359);
UPDATE creature_template SET vendor_id=200 WHERE entry IN (3023,3359);

INSERT INTO npc_vendor_template VALUES (200,6523,0,0,0); -- Buckled Harness [2/2/2]
INSERT INTO npc_vendor_template VALUES (200,6524,0,0,0); -- Studded Leather Harness [2/2/2]
INSERT INTO npc_vendor_template VALUES (200,6525,0,0,0); -- Grunt's Harness [2/2/2]
INSERT INTO npc_vendor_template VALUES (200,6526,0,0,0); -- Battle Harness [2/2/2]

-- Total count: Templates: 4, single 0, sum 4, before: 8

-- ------------
-- Hallows End
-- 14480,14481,15353,15354
-- ------------
DELETE FROM npc_vendor WHERE entry IN (14480,14481,15353,15354);
UPDATE creature_template SET vendor_id=604 WHERE entry IN (14480,14481,15353,15354);

INSERT INTO npc_vendor_template VALUES (604,7228,0,0,0); -- Tigule and Foror's Strawberry Ice Cream [4/4/7]
INSERT INTO npc_vendor_template VALUES (604,18632,0,0,0); -- Moonbrook Riot Taffy [4/4/4]
INSERT INTO npc_vendor_template VALUES (604,18633,0,0,0); -- Styleen's Sour Suckerpop [4/4/4]
INSERT INTO npc_vendor_template VALUES (604,18635,0,0,0); -- Bellara's Nutterbar [4/4/4]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 20557,0,0,0 Hallow's End Pumpkin Treat [2/4/2]

INSERT INTO npc_vendor VALUES (15353,20557,0,0,0); -- Hallow's End Pumpkin Treat
INSERT INTO npc_vendor VALUES (15354,20557,0,0,0); -- Hallow's End Pumpkin Treat

-- Total count: Templates: 4, single 2, sum 6, before: 18

-- ------------
-- Drinks Vendors 1
-- 277,1301,1305,1311,5570,16442,18542,18954,19186,19245,23525,23606
-- ------------
DELETE FROM npc_vendor WHERE entry IN (277,1301,1305,1311,5570,16442,18542,18954,19186,19245,23525,23606);
UPDATE creature_template SET vendor_id=402 WHERE entry IN (277,1301,1305,1311,5570,16442,18542,18954,19186,19245,23525,23606);

INSERT INTO npc_vendor_template VALUES (402,2593,0,0,0); -- Flask of Port [12/12/24]
INSERT INTO npc_vendor_template VALUES (402,2594,0,0,0); -- Flagon of Mead [12/12/28]
INSERT INTO npc_vendor_template VALUES (402,2595,0,0,0); -- Jug of Bourbon [12/12/24]
INSERT INTO npc_vendor_template VALUES (402,2596,0,0,0); -- Skin of Dwarven Stout [12/12/24]
INSERT INTO npc_vendor_template VALUES (402,2723,0,0,0); -- Bottle of Pinot Noir [12/12/24]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1941,0,0,0 Cask of Merlot [1/12/1]
-- 2327,0,0,0 Sturdy Leather Bracers [1/12/1]
-- 4600,0,0,0 Cherry Grog [1/12/6]
-- 8766,0,0,0 Morning Glory Dew [1/12/188]
-- 22775,0,0,0 Suntouched Special Reserve [1/12/1]
-- 27860,0,0,0 Purified Draenic Water [1/12/51]
-- 28399,0,0,0 Filtered Draenic Water [1/12/51]

INSERT INTO npc_vendor VALUES (277,1941,0,0,0); -- Cask of Merlot
INSERT INTO npc_vendor VALUES (19186,2327,0,0,0); -- Sturdy Leather Bracers
INSERT INTO npc_vendor VALUES (5570,4600,0,0,0); -- Cherry Grog
INSERT INTO npc_vendor VALUES (19245,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (16442,22775,0,0,0); -- Suntouched Special Reserve
INSERT INTO npc_vendor VALUES (19245,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (19245,28399,0,0,0); -- Filtered Draenic Water

-- Total count: Templates: 5, single 7, sum 12, before: 67

-- ------------
-- Drinks Vendors 2
-- 274,2366,3577,4192,4893,5871,6495,14371,23995
-- ------------
DELETE FROM npc_vendor WHERE entry IN (274,2366,3577,4192,4893,5871,6495,14371,23995);
UPDATE creature_template SET vendor_id=403 WHERE entry IN (274,2366,3577,4192,4893,5871,6495,14371,23995);

INSERT INTO npc_vendor_template VALUES (403,159,0,0,0); -- Refreshing Spring Water [8/8/227]
INSERT INTO npc_vendor_template VALUES (403,1179,0,0,0); -- Ice Cold Milk [8/8/169]
INSERT INTO npc_vendor_template VALUES (403,1205,0,0,0); -- Melon Juice [8/8/175]
INSERT INTO npc_vendor_template VALUES (403,1645,0,0,0); -- Moonberry Juice [8/8/163]
INSERT INTO npc_vendor_template VALUES (403,1708,0,0,0); -- Sweet Nectar [8/8/164]
INSERT INTO npc_vendor_template VALUES (403,8766,0,0,0); -- Morning Glory Dew [8/8/188]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1942,0,0,0 Bottle of Moonshine [1/8/1]
-- 2594,0,0,0 Flagon of Mead [1/8/28]
-- 3703,0,0,0 Southshore Stout [1/8/3]
-- 4600,0,0,0 Cherry Grog [1/8/6]
-- 18487,0,0,0 Pattern: Mooncloth Robe [1/8/1]
-- 19222,0,0,0 Cheap Beer [1/8/3]
-- 21151,0,0,0 Rumsey Rum Black Label [1/8/2]
-- 23585,5,43200,0 Stouthammer Lite [1/8/1]
-- 27860,0,0,0 Purified Draenic Water [1/8/51]
-- 28399,0,0,0 Filtered Draenic Water [1/8/51]
-- 29401,5,43200,0 Sparkling Southshore Cider [1/8/1]

INSERT INTO npc_vendor VALUES (274,1942,0,0,0); -- Bottle of Moonshine
INSERT INTO npc_vendor VALUES (2366,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (2366,3703,0,0,0); -- Southshore Stout
INSERT INTO npc_vendor VALUES (2366,4600,0,0,0); -- Cherry Grog
INSERT INTO npc_vendor VALUES (14371,18487,0,0,0); -- Pattern: Mooncloth Robe
INSERT INTO npc_vendor VALUES (2366,19222,0,0,0); -- Cheap Beer
INSERT INTO npc_vendor VALUES (2366,21151,0,0,0); -- Rumsey Rum Black Label
INSERT INTO npc_vendor VALUES (2366,23585,5,43200,0); -- Stouthammer Lite
INSERT INTO npc_vendor VALUES (23995,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (23995,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (2366,29401,5,43200,0); -- Sparkling Southshore Cider

-- Total count: Templates: 6, single 11, sum 17, before: 59

-- ------------
-- Drinks Vendors 3 (kinda 1+2)
-- 258,955,1328,1697,5112,5140,19617
-- ------------
DELETE FROM npc_vendor WHERE entry IN (258,955,1328,1697,5112,5140,19617);
UPDATE creature_template SET vendor_id=404 WHERE entry IN (258,955,1328,1697,5112,5140,19617);

INSERT INTO npc_vendor_template VALUES (404,159,0,0,0); -- Refreshing Spring Water [7/7/227]
INSERT INTO npc_vendor_template VALUES (404,1179,0,0,0); -- Ice Cold Milk [7/7/169]
INSERT INTO npc_vendor_template VALUES (404,1205,0,0,0); -- Melon Juice [7/7/175]
INSERT INTO npc_vendor_template VALUES (404,1645,0,0,0); -- Moonberry Juice [7/7/163]
INSERT INTO npc_vendor_template VALUES (404,1708,0,0,0); -- Sweet Nectar [7/7/164]
INSERT INTO npc_vendor_template VALUES (404,2593,0,0,0); -- Flask of Port [7/7/24]
INSERT INTO npc_vendor_template VALUES (404,2594,0,0,0); -- Flagon of Mead [7/7/28]
INSERT INTO npc_vendor_template VALUES (404,2595,0,0,0); -- Jug of Bourbon [7/7/24]
INSERT INTO npc_vendor_template VALUES (404,2596,0,0,0); -- Skin of Dwarven Stout [7/7/24]
INSERT INTO npc_vendor_template VALUES (404,2723,0,0,0); -- Bottle of Pinot Noir [7/7/24]
INSERT INTO npc_vendor_template VALUES (404,8766,0,0,0); -- Morning Glory Dew [7/7/188]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4600,0,0,0 Cherry Grog [1/7/6]
-- 27860,0,0,0 Purified Draenic Water [1/7/51]
-- 28284,0,0,0 Don Carlos Tequila [1/7/1]
-- 28399,0,0,0 Filtered Draenic Water [1/7/51]

INSERT INTO npc_vendor VALUES (19617,4600,0,0,0); -- Cherry Grog
INSERT INTO npc_vendor VALUES (19617,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (19617,28284,0,0,0); -- Don Carlos Tequila
INSERT INTO npc_vendor VALUES (19617,28399,0,0,0); -- Filtered Draenic Water

-- Total count: Templates: 11, single 4, sum 15, before: 81

-- ------------
-- Trade Goods 1
-- 18015,18960,19015,19017,19345,19497,19533,19573,20250,20891,21083
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18015,18960,19015,19017,19345,19497,19533,19573,20250,20891,21083);
UPDATE creature_template SET vendor_id=105 WHERE entry IN (18015,18960,19015,19017,19345,19497,19533,19573,20250,20891,21083);

INSERT INTO npc_vendor_template VALUES (105,2928,0,0,0); -- Dust of Decay [11/11/88]
INSERT INTO npc_vendor_template VALUES (105,3713,0,0,0); -- Soothing Spices [11/11/93]
INSERT INTO npc_vendor_template VALUES (105,6532,0,0,0); -- Bright Baubles [11/11/96]
INSERT INTO npc_vendor_template VALUES (105,14341,0,0,0); -- Rune Thread [11/11/126]
INSERT INTO npc_vendor_template VALUES (105,18256,0,0,0); -- Imbued Vial [11/11/88]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 21893,0,0,0 Pattern: Imbued Netherweave Bag [1/11/2]
-- 21894,0,0,0 Pattern: Bolt of Soulcloth [1/11/2]
-- 21894,1,43200,0 Pattern: Bolt of Soulcloth [1/11/2]
-- 21902,0,0,0 Pattern: Soulcloth Gloves [1/11/1]
-- 21902,1,43200,0 Pattern: Soulcloth Gloves [1/11/1]
-- 25848,1,43200,0 Formula: Runed Adamantite Rod [1/11/2]
-- 27694,0,0,0 Recipe: Blackened Trout [1/11/2]
-- 27699,0,0,0 Recipe: Golden Fish Sticks [1/11/2]
-- 27700,0,0,0 Recipe: Spicy Crawdad [1/11/2]

INSERT INTO npc_vendor VALUES (19015,21893,0,0,0); -- Pattern: Imbued Netherweave Bag
INSERT INTO npc_vendor VALUES (19017,21894,0,0,0); -- Pattern: Bolt of Soulcloth
INSERT INTO npc_vendor VALUES (19015,21894,1,43200,0); -- Pattern: Bolt of Soulcloth
INSERT INTO npc_vendor VALUES (19017,21902,0,0,0); -- Pattern: Soulcloth Gloves
INSERT INTO npc_vendor VALUES (19015,21902,1,43200,0); -- Pattern: Soulcloth Gloves
INSERT INTO npc_vendor VALUES (18960,25848,1,43200,0); -- Formula: Runed Adamantite Rod
INSERT INTO npc_vendor VALUES (18015,27694,0,0,0); -- Recipe: Blackened Trout
INSERT INTO npc_vendor VALUES (18960,27699,0,0,0); -- Recipe: Golden Fish Sticks
INSERT INTO npc_vendor VALUES (18960,27700,0,0,0); -- Recipe: Spicy Crawdad

-- Total count: Templates: 5, single 9, sum 14, before: 64

-- ------------
-- Trade Goods 2
-- 19042,19194,19562,21113,22271,25034
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19042,19194,19562,21113,22271,25034);
UPDATE creature_template SET vendor_id=106 WHERE entry IN (19042,19194,19562,21113,22271,25034);

INSERT INTO npc_vendor_template VALUES (106,3713,0,0,0); -- Soothing Spices [6/6/93]
INSERT INTO npc_vendor_template VALUES (106,4470,0,0,0); -- Simple Wood [6/6/132]
INSERT INTO npc_vendor_template VALUES (106,4471,0,0,0); -- Flint and Tinder [6/6/85]
INSERT INTO npc_vendor_template VALUES (106,14341,0,0,0); -- Rune Thread [6/6/126]
INSERT INTO npc_vendor_template VALUES (106,18256,0,0,0); -- Imbued Vial [6/6/88]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2928,0,0,0 Dust of Decay [3/6/88]
-- 6532,0,0,0 Bright Baubles [5/6/96]
-- 22901,1,7200,0 Recipe: Sneaking Potion [1/6/1]
-- 22911,1,7200,0 Recipe: Major Dreamless Sleep Potion [1/6/1]
-- 31674,0,0,0 Recipe: Crunchy Serpent [1/6/1]
-- 31675,0,0,0 Recipe: Mok'Nathal Shortribs [1/6/1]

INSERT INTO npc_vendor VALUES (19042,2928,0,0,0); -- Dust of Decay
INSERT INTO npc_vendor VALUES (19194,2928,0,0,0); -- Dust of Decay
INSERT INTO npc_vendor VALUES (21113,2928,0,0,0); -- Dust of Decay
INSERT INTO npc_vendor VALUES (19194,6532,0,0,0); -- Bright Baubles
INSERT INTO npc_vendor VALUES (19562,6532,0,0,0); -- Bright Baubles
INSERT INTO npc_vendor VALUES (21113,6532,0,0,0); -- Bright Baubles
INSERT INTO npc_vendor VALUES (22271,6532,0,0,0); -- Bright Baubles
INSERT INTO npc_vendor VALUES (25034,6532,0,0,0); -- Bright Baubles
INSERT INTO npc_vendor VALUES (19042,22901,1,7200,0); -- Recipe: Sneaking Potion
INSERT INTO npc_vendor VALUES (19042,22911,1,7200,0); -- Recipe: Major Dreamless Sleep Potion
INSERT INTO npc_vendor VALUES (21113,31674,0,0,0); -- Recipe: Crunchy Serpent
INSERT INTO npc_vendor VALUES (21113,31675,0,0,0); -- Recipe: Mok'Nathal Shortribs

-- Total count: Templates: 5, single 12, sum 17, before: 42

-- ------------
-- Trade Supplies 1
-- 1148,2821,3367,4229,4561,4775,5817,8145,8363,12028,12245,12941,12957,12958,16613,16768,17486,18009,19244,19372,19450
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1148,2821,3367,4229,4561,4775,5817,8145,8363,12028,12245,12941,12957,12958,16613,16768,17486,18009,19244,19372,19450);
UPDATE creature_template SET vendor_id=107 WHERE entry IN (1148,2821,3367,4229,4561,4775,5817,8145,8363,12028,12245,12941,12957,12958,16613,16768,17486,18009,19244,19372,19450);

INSERT INTO npc_vendor_template VALUES (107,2320,0,0,0); -- Coarse Thread [21/21/130]
INSERT INTO npc_vendor_template VALUES (107,2321,0,0,0); -- Fine Thread [21/21/120]
INSERT INTO npc_vendor_template VALUES (107,2325,0,0,0); -- Black Dye [21/21/101]
INSERT INTO npc_vendor_template VALUES (107,2604,0,0,0); -- Red Dye [21/21/119]
INSERT INTO npc_vendor_template VALUES (107,2678,0,0,0); -- Mild Spices [21/21/90]
INSERT INTO npc_vendor_template VALUES (107,2692,0,0,0); -- Hot Spices [21/21/80]
INSERT INTO npc_vendor_template VALUES (107,2880,0,0,0); -- Weak Flux [21/21/156]
INSERT INTO npc_vendor_template VALUES (107,2901,0,0,0); -- Mining Pick [21/21/157]
INSERT INTO npc_vendor_template VALUES (107,2928,0,0,0); -- Dust of Decay [21/21/88]
INSERT INTO npc_vendor_template VALUES (107,3371,0,0,0); -- Empty Vial [21/21/133]
INSERT INTO npc_vendor_template VALUES (107,3372,0,0,0); -- Leaded Vial [21/21/115]
INSERT INTO npc_vendor_template VALUES (107,3466,0,0,0); -- Strong Flux [21/21/134]
INSERT INTO npc_vendor_template VALUES (107,3713,0,0,0); -- Soothing Spices [21/21/93]
INSERT INTO npc_vendor_template VALUES (107,3857,0,0,0); -- Coal [21/21/99]
INSERT INTO npc_vendor_template VALUES (107,4289,0,0,0); -- Salt [21/21/98]
INSERT INTO npc_vendor_template VALUES (107,4291,0,0,0); -- Silken Thread [21/21/108]
INSERT INTO npc_vendor_template VALUES (107,4340,0,0,0); -- Gray Dye [21/21/101]
INSERT INTO npc_vendor_template VALUES (107,4341,0,0,0); -- Yellow Dye [21/21/101]
INSERT INTO npc_vendor_template VALUES (107,4342,0,0,0); -- Purple Dye [21/21/101]
INSERT INTO npc_vendor_template VALUES (107,4399,0,0,0); -- Wooden Stock [21/21/80]
INSERT INTO npc_vendor_template VALUES (107,4400,0,0,0); -- Heavy Stock [21/21/80]
INSERT INTO npc_vendor_template VALUES (107,5956,0,0,0); -- Blacksmith Hammer [21/21/144]
INSERT INTO npc_vendor_template VALUES (107,6217,0,0,0); -- Copper Rod [21/21/87]
INSERT INTO npc_vendor_template VALUES (107,6256,0,0,0); -- Fishing Pole [21/21/87]
INSERT INTO npc_vendor_template VALUES (107,6530,0,0,0); -- Nightcrawlers [21/21/84]
INSERT INTO npc_vendor_template VALUES (107,6532,0,0,0); -- Bright Baubles [21/21/96]
INSERT INTO npc_vendor_template VALUES (107,7005,0,0,0); -- Skinning Knife [21/21/90]
INSERT INTO npc_vendor_template VALUES (107,8343,0,0,0); -- Heavy Silken Thread [21/21/101]
INSERT INTO npc_vendor_template VALUES (107,8925,0,0,0); -- Crystal Vial [21/21/119]
INSERT INTO npc_vendor_template VALUES (107,14341,0,0,0); -- Rune Thread [21/21/126]
INSERT INTO npc_vendor_template VALUES (107,18256,0,0,0); -- Imbued Vial [21/21/88]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1710,3,7200,0 Greater Healing Potion [1/21/1]
-- 2324,0,0,0 Bleach [4/21/77]
-- 2605,0,0,0 Green Dye [2/21/78]
-- 3682,0,0,0 Recipe: Curiously Tasty Omelet [2/21/3]
-- 3735,1,7200,0 Recipe: Hot Lion Chops [1/21/1]
-- 3827,3,7200,0 Mana Potion [1/21/1]
-- 5489,1,7200,0 Recipe: Lean Venison [1/21/1]
-- 6260,0,0,0 Blue Dye [2/21/88]
-- 6529,0,0,0 Shiny Bauble [3/21/57]
-- 11163,1,43200,0 Formula: Enchant Bracer - Lesser Deflection [1/21/1]
-- 11223,1,7200,0 Formula: Enchant Bracer - Deflection [1/21/1]
-- 12228,0,0,0 Recipe: Roast Raptor [2/21/6]
-- 12228,1,7200,0 Recipe: Roast Raptor [1/21/1]
-- 12229,0,0,0 Recipe: Hot Wolf Ribs [1/21/3]
-- 12231,0,0,0 Recipe: Jungle Stew [1/21/2]
-- 12231,1,7200,0 Recipe: Jungle Stew [1/21/1]
-- 12232,1,7200,0 Recipe: Carrion Surprise [1/21/1]
-- 12240,1,7200,0 Recipe: Heavy Kodo Stew [1/21/1]
-- 13947,0,0,0 Recipe: Lobster Stew [1/21/2]
-- 13948,0,0,0 Recipe: Mightfish Steak [1/21/2]
-- 13949,0,0,0 Recipe: Baked Salmon [1/21/2]
-- 15729,1,7200,0 Pattern: Chimeric Gloves [1/21/1]
-- 15735,1,43200,0 Pattern: Ironfeather Shoulders [1/21/1]
-- 15751,1,7200,0 Pattern: Blue Dragonscale Breastplate [1/21/1]
-- 16217,1,3600,0 Formula: Enchant Shield - Greater Stamina [1/21/1]
-- 16217,1,7200,0 Formula: Enchant Shield - Greater Stamina [1/21/1]
-- 20815,0,0,0 Jeweler's Kit [3/21/28]
-- 20824,0,0,0 Simple Grinder [3/21/28]
-- 20854,1,3600,0 Design: Amulet of the Moon [1/21/1]
-- 20854,1,7200,0 Design: Amulet of the Moon [1/21/1]
-- 20856,1,7200,0 Design: Heavy Golden Necklace of Battle [1/21/1]
-- 20975,1,7200,0 Design: The Jade Eye [1/21/1]
-- 21942,1,7200,0 Design: Ruby Crown of Restoration [1/21/1]
-- 21943,1,300,0 Design: Truesilver Crab [1/21/1]
-- 21948,1,7200,0 Design: Opal Necklace of Impact [1/21/1]
-- 21954,1,7200,0 Design: Ring of Bitter Shadows [1/21/1]
-- 30817,0,0,0 Simple Flour [1/21/33]

INSERT INTO npc_vendor VALUES (12245,1710,3,7200,0); -- Greater Healing Potion
INSERT INTO npc_vendor VALUES (5817,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (8145,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (12028,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (16768,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (5817,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (16768,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (1148,3682,0,0,0); -- Recipe: Curiously Tasty Omelet
INSERT INTO npc_vendor VALUES (2821,3682,0,0,0); -- Recipe: Curiously Tasty Omelet
INSERT INTO npc_vendor VALUES (12245,3735,1,7200,0); -- Recipe: Hot Lion Chops
INSERT INTO npc_vendor VALUES (12245,3827,3,7200,0); -- Mana Potion
INSERT INTO npc_vendor VALUES (12245,5489,1,7200,0); -- Recipe: Lean Venison
INSERT INTO npc_vendor VALUES (5817,6260,0,0,0); -- Blue Dye
INSERT INTO npc_vendor VALUES (16768,6260,0,0,0); -- Blue Dye
INSERT INTO npc_vendor VALUES (5817,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (12028,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (16768,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (2821,11163,1,43200,0); -- Formula: Enchant Bracer - Lesser Deflection
INSERT INTO npc_vendor VALUES (4229,11223,1,7200,0); -- Formula: Enchant Bracer - Deflection
INSERT INTO npc_vendor VALUES (1148,12228,0,0,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (2821,12228,0,0,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (12245,12228,1,7200,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (8145,12229,0,0,0); -- Recipe: Hot Wolf Ribs
INSERT INTO npc_vendor VALUES (1148,12231,0,0,0); -- Recipe: Jungle Stew
INSERT INTO npc_vendor VALUES (12245,12231,1,7200,0); -- Recipe: Jungle Stew
INSERT INTO npc_vendor VALUES (12245,12232,1,7200,0); -- Recipe: Carrion Surprise
INSERT INTO npc_vendor VALUES (12245,12240,1,7200,0); -- Recipe: Heavy Kodo Stew
INSERT INTO npc_vendor VALUES (8145,13947,0,0,0); -- Recipe: Lobster Stew
INSERT INTO npc_vendor VALUES (8145,13948,0,0,0); -- Recipe: Mightfish Steak
INSERT INTO npc_vendor VALUES (8145,13949,0,0,0); -- Recipe: Baked Salmon
INSERT INTO npc_vendor VALUES (12957,15729,1,7200,0); -- Pattern: Chimeric Gloves
INSERT INTO npc_vendor VALUES (12958,15735,1,43200,0); -- Pattern: Ironfeather Shoulders
INSERT INTO npc_vendor VALUES (12957,15751,1,7200,0); -- Pattern: Blue Dragonscale Breastplate
INSERT INTO npc_vendor VALUES (4229,16217,1,3600,0); -- Formula: Enchant Shield - Greater Stamina
INSERT INTO npc_vendor VALUES (4561,16217,1,7200,0); -- Formula: Enchant Shield - Greater Stamina
INSERT INTO npc_vendor VALUES (16613,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (16768,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (17486,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (16613,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (16768,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (17486,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (4229,20854,1,3600,0); -- Design: Amulet of the Moon
INSERT INTO npc_vendor VALUES (4561,20854,1,7200,0); -- Design: Amulet of the Moon
INSERT INTO npc_vendor VALUES (3367,20856,1,7200,0); -- Design: Heavy Golden Necklace of Battle
INSERT INTO npc_vendor VALUES (4775,20975,1,7200,0); -- Design: The Jade Eye
INSERT INTO npc_vendor VALUES (2821,21942,1,7200,0); -- Design: Ruby Crown of Restoration
INSERT INTO npc_vendor VALUES (1148,21943,1,300,0); -- Design: Truesilver Crab
INSERT INTO npc_vendor VALUES (8363,21948,1,7200,0); -- Design: Opal Necklace of Impact
INSERT INTO npc_vendor VALUES (12941,21954,1,7200,0); -- Design: Ring of Bitter Shadows
INSERT INTO npc_vendor VALUES (5817,30817,0,0,0); -- Simple Flour

-- Total count: Templates: 31, single 50, sum 81, before: 701

-- ------------
-- Trade Supplies 1.5
-- 989,1286,2225,2810,3779,3955,5135,5163,6301,7947,8934
-- ------------
DELETE FROM npc_vendor WHERE entry IN (989,1286,2225,2810,3779,3955,5135,5163,6301,7947,8934);
UPDATE creature_template SET vendor_id=108 WHERE entry IN (989,1286,2225,2810,3779,3955,5135,5163,6301,7947,8934);

INSERT INTO npc_vendor_template VALUES (108,2320,0,0,0); -- Coarse Thread [11/11/130]
INSERT INTO npc_vendor_template VALUES (108,2321,0,0,0); -- Fine Thread [11/11/120]
INSERT INTO npc_vendor_template VALUES (108,2325,0,0,0); -- Black Dye [11/11/101]
INSERT INTO npc_vendor_template VALUES (108,2604,0,0,0); -- Red Dye [11/11/119]
INSERT INTO npc_vendor_template VALUES (108,2678,0,0,0); -- Mild Spices [11/11/90]
INSERT INTO npc_vendor_template VALUES (108,2692,0,0,0); -- Hot Spices [11/11/80]
INSERT INTO npc_vendor_template VALUES (108,2880,0,0,0); -- Weak Flux [11/11/156]
INSERT INTO npc_vendor_template VALUES (108,2901,0,0,0); -- Mining Pick [11/11/157]
INSERT INTO npc_vendor_template VALUES (108,2928,0,0,0); -- Dust of Decay [11/11/88]
INSERT INTO npc_vendor_template VALUES (108,3371,0,0,0); -- Empty Vial [11/11/133]
INSERT INTO npc_vendor_template VALUES (108,3372,0,0,0); -- Leaded Vial [11/11/115]
INSERT INTO npc_vendor_template VALUES (108,3466,0,0,0); -- Strong Flux [11/11/134]
INSERT INTO npc_vendor_template VALUES (108,3713,0,0,0); -- Soothing Spices [11/11/93]
INSERT INTO npc_vendor_template VALUES (108,3857,0,0,0); -- Coal [11/11/99]
INSERT INTO npc_vendor_template VALUES (108,4289,0,0,0); -- Salt [11/11/98]
INSERT INTO npc_vendor_template VALUES (108,4291,0,0,0); -- Silken Thread [11/11/108]
INSERT INTO npc_vendor_template VALUES (108,4340,0,0,0); -- Gray Dye [11/11/101]
INSERT INTO npc_vendor_template VALUES (108,4341,0,0,0); -- Yellow Dye [11/11/101]
INSERT INTO npc_vendor_template VALUES (108,4342,0,0,0); -- Purple Dye [11/11/101]
INSERT INTO npc_vendor_template VALUES (108,4399,0,0,0); -- Wooden Stock [11/11/80]
INSERT INTO npc_vendor_template VALUES (108,4400,0,0,0); -- Heavy Stock [11/11/80]
INSERT INTO npc_vendor_template VALUES (108,5956,0,0,0); -- Blacksmith Hammer [11/11/144]
INSERT INTO npc_vendor_template VALUES (108,6217,0,0,0); -- Copper Rod [11/11/87]
INSERT INTO npc_vendor_template VALUES (108,6256,0,0,0); -- Fishing Pole [11/11/87]
INSERT INTO npc_vendor_template VALUES (108,6530,0,0,0); -- Nightcrawlers [11/11/84]
INSERT INTO npc_vendor_template VALUES (108,6532,0,0,0); -- Bright Baubles [11/11/96]
INSERT INTO npc_vendor_template VALUES (108,7005,0,0,0); -- Skinning Knife [11/11/90]
INSERT INTO npc_vendor_template VALUES (108,8343,0,0,0); -- Heavy Silken Thread [11/11/101]
INSERT INTO npc_vendor_template VALUES (108,14341,0,0,0); -- Rune Thread [11/11/126]
INSERT INTO npc_vendor_template VALUES (108,18256,5,43200,0); -- Imbued Vial [11/11/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2324,0,0,0 Bleach [7/11/77]
-- 2605,0,0,0 Green Dye [4/11/78]
-- 3777,0,0,0 Lethargy Root [9/11/53]
-- 5973,0,0,0 Pattern: Barbaric Leggings [1/11/2]
-- 6260,0,0,0 Blue Dye [4/11/88]
-- 6529,0,0,0 Shiny Bauble [4/11/57]
-- 8925,0,0,0 Crystal Vial [10/11/119]
-- 8925,5,43200,0 Crystal Vial [1/11/1]
-- 11223,0,0,0 Formula: Enchant Bracer - Deflection [1/11/1]
-- 12228,0,0,0 Recipe: Roast Raptor [1/11/6]
-- 12229,0,0,0 Recipe: Hot Wolf Ribs [1/11/3]
-- 12232,0,0,0 Recipe: Carrion Surprise [1/11/3]
-- 13947,0,0,0 Recipe: Lobster Stew [1/11/2]
-- 13948,0,0,0 Recipe: Mightfish Steak [1/11/2]
-- 13949,0,0,0 Recipe: Baked Salmon [1/11/2]
-- 16072,0,0,0 Expert Cookbook [1/11/2]
-- 16111,0,0,0 Recipe: Spiced Chili Crab [1/11/3]
-- 20856,0,0,0 Design: Heavy Golden Necklace of Battle [1/11/2]
-- 20975,0,0,0 Design: The Jade Eye [1/11/2]
-- 21941,0,0,0 Design: Black Pearl Panther [1/11/2]
-- 21942,0,0,0 Design: Ruby Crown of Restoration [1/11/1]
-- 21948,0,0,0 Design: Opal Necklace of Impact [1/11/2]
-- 30817,0,0,0 Simple Flour [1/11/33]

INSERT INTO npc_vendor VALUES (989,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (2225,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (5135,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (5163,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (6301,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (7947,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (8934,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (2225,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (5135,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (6301,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (8934,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (989,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (2225,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (2810,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (3779,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (3955,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (5135,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (6301,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (7947,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (8934,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (2810,5973,0,0,0); -- Pattern: Barbaric Leggings
INSERT INTO npc_vendor VALUES (2225,6260,0,0,0); -- Blue Dye
INSERT INTO npc_vendor VALUES (5135,6260,0,0,0); -- Blue Dye
INSERT INTO npc_vendor VALUES (6301,6260,0,0,0); -- Blue Dye
INSERT INTO npc_vendor VALUES (8934,6260,0,0,0); -- Blue Dye
INSERT INTO npc_vendor VALUES (2225,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (5135,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (6301,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (8934,6529,0,0,0); -- Shiny Bauble
INSERT INTO npc_vendor VALUES (989,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (1286,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (2225,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (2810,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (3779,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (3955,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (5135,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (6301,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (7947,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (8934,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (5163,8925,5,43200,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (989,11223,0,0,0); -- Formula: Enchant Bracer - Deflection
INSERT INTO npc_vendor VALUES (2810,12228,0,0,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (7947,12229,0,0,0); -- Recipe: Hot Wolf Ribs
INSERT INTO npc_vendor VALUES (989,12232,0,0,0); -- Recipe: Carrion Surprise
INSERT INTO npc_vendor VALUES (7947,13947,0,0,0); -- Recipe: Lobster Stew
INSERT INTO npc_vendor VALUES (7947,13948,0,0,0); -- Recipe: Mightfish Steak
INSERT INTO npc_vendor VALUES (7947,13949,0,0,0); -- Recipe: Baked Salmon
INSERT INTO npc_vendor VALUES (3955,16072,0,0,0); -- Expert Cookbook
INSERT INTO npc_vendor VALUES (989,16111,0,0,0); -- Recipe: Spiced Chili Crab
INSERT INTO npc_vendor VALUES (1286,20856,0,0,0); -- Design: Heavy Golden Necklace of Battle
INSERT INTO npc_vendor VALUES (5163,20975,0,0,0); -- Design: The Jade Eye
INSERT INTO npc_vendor VALUES (989,21941,0,0,0); -- Design: Black Pearl Panther
INSERT INTO npc_vendor VALUES (2810,21942,0,0,0); -- Design: Ruby Crown of Restoration
INSERT INTO npc_vendor VALUES (5163,21948,0,0,0); -- Design: Opal Necklace of Impact
INSERT INTO npc_vendor VALUES (8934,30817,0,0,0); -- Simple Flour

-- Total count: Templates: 30, single 55, sum 85, before: 385

-- ------------
-- Trade Supplies 2
-- 960,1456,2381,2393,4877,5100,9636
-- ------------
DELETE FROM npc_vendor WHERE entry IN (960,1456,2381,2393,4877,5100,9636);
UPDATE creature_template SET vendor_id=109 WHERE entry IN (960,1456,2381,2393,4877,5100,9636);

INSERT INTO npc_vendor_template VALUES (109,2320,0,0,0); -- Coarse Thread [7/7/130]
INSERT INTO npc_vendor_template VALUES (109,2321,0,0,0); -- Fine Thread [7/7/120]
INSERT INTO npc_vendor_template VALUES (109,2324,0,0,0); -- Bleach [7/7/77]
INSERT INTO npc_vendor_template VALUES (109,2678,0,0,0); -- Mild Spices [7/7/90]
INSERT INTO npc_vendor_template VALUES (109,2692,0,0,0); -- Hot Spices [7/7/80]
INSERT INTO npc_vendor_template VALUES (109,2880,0,0,0); -- Weak Flux [7/7/156]
INSERT INTO npc_vendor_template VALUES (109,2901,0,0,0); -- Mining Pick [7/7/157]
INSERT INTO npc_vendor_template VALUES (109,3371,0,0,0); -- Empty Vial [7/7/133]
INSERT INTO npc_vendor_template VALUES (109,3372,0,0,0); -- Leaded Vial [7/7/115]
INSERT INTO npc_vendor_template VALUES (109,3466,0,0,0); -- Strong Flux [7/7/134]
INSERT INTO npc_vendor_template VALUES (109,3713,0,0,0); -- Soothing Spices [7/7/93]
INSERT INTO npc_vendor_template VALUES (109,3857,0,0,0); -- Coal [7/7/99]
INSERT INTO npc_vendor_template VALUES (109,4289,0,0,0); -- Salt [7/7/98]
INSERT INTO npc_vendor_template VALUES (109,4291,0,0,0); -- Silken Thread [7/7/108]
INSERT INTO npc_vendor_template VALUES (109,4399,0,0,0); -- Wooden Stock [7/7/80]
INSERT INTO npc_vendor_template VALUES (109,4400,0,0,0); -- Heavy Stock [7/7/80]
INSERT INTO npc_vendor_template VALUES (109,5956,0,0,0); -- Blacksmith Hammer [7/7/144]
INSERT INTO npc_vendor_template VALUES (109,6217,0,0,0); -- Copper Rod [7/7/87]
INSERT INTO npc_vendor_template VALUES (109,6530,0,0,0); -- Nightcrawlers [7/7/84]
INSERT INTO npc_vendor_template VALUES (109,6532,0,0,0); -- Bright Baubles [7/7/96]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 159,0,0,0 Refreshing Spring Water [1/7/227]
-- 4355,0,0,0 Pattern: Icy Cloak [1/7/1]
-- 5788,1,43200,0 Pattern: Thick Murloc Armor [2/7/3]
-- 5973,1,7200,0 Pattern: Barbaric Leggings [1/7/1]
-- 6054,1,7200,0 Recipe: Shadow Protection Potion [1/7/1]
-- 7114,1,7200,0 Pattern: Azure Silk Gloves [1/7/1]
-- 11163,0,0,0 Formula: Enchant Bracer - Lesser Deflection [1/7/1]
-- 12232,0,0,0 Recipe: Carrion Surprise [1/7/3]
-- 12240,0,0,0 Recipe: Heavy Kodo Stew [1/7/2]
-- 20970,1,7200,0 Design: Pendant of the Agate Shield [1/7/1]
-- 20971,0,0,0 Design: Heavy Iron Knuckles [1/7/1]
-- 20971,1,7200,0 Design: Heavy Iron Knuckles [1/7/1]
-- 20973,0,0,0 Design: Blazing Citrine Ring [1/7/1]
-- 20973,1,7200,0 Design: Blazing Citrine Ring [1/7/1]
-- 21099,0,0,0 Recipe: Smoked Sagefish [1/7/19]
-- 21219,0,0,0 Recipe: Sagefish Delight [1/7/19]
-- 30817,0,0,0 Simple Flour [1/7/33]

INSERT INTO npc_vendor VALUES (2381,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (2381,4355,0,0,0); -- Pattern: Icy Cloak
INSERT INTO npc_vendor VALUES (2381,5788,1,43200,0); -- Pattern: Thick Murloc Armor
INSERT INTO npc_vendor VALUES (2393,5788,1,43200,0); -- Pattern: Thick Murloc Armor
INSERT INTO npc_vendor VALUES (4877,5973,1,7200,0); -- Pattern: Barbaric Leggings
INSERT INTO npc_vendor VALUES (2393,6054,1,7200,0); -- Recipe: Shadow Protection Potion
INSERT INTO npc_vendor VALUES (9636,7114,1,7200,0); -- Pattern: Azure Silk Gloves
INSERT INTO npc_vendor VALUES (2381,11163,0,0,0); -- Formula: Enchant Bracer - Lesser Deflection
INSERT INTO npc_vendor VALUES (9636,12232,0,0,0); -- Recipe: Carrion Surprise
INSERT INTO npc_vendor VALUES (9636,12240,0,0,0); -- Recipe: Heavy Kodo Stew
INSERT INTO npc_vendor VALUES (4877,20970,1,7200,0); -- Design: Pendant of the Agate Shield
INSERT INTO npc_vendor VALUES (2381,20971,0,0,0); -- Design: Heavy Iron Knuckles
INSERT INTO npc_vendor VALUES (2393,20971,1,7200,0); -- Design: Heavy Iron Knuckles
INSERT INTO npc_vendor VALUES (2381,20973,0,0,0); -- Design: Blazing Citrine Ring
INSERT INTO npc_vendor VALUES (9636,20973,1,7200,0); -- Design: Blazing Citrine Ring
INSERT INTO npc_vendor VALUES (2381,21099,0,0,0); -- Recipe: Smoked Sagefish
INSERT INTO npc_vendor VALUES (2381,21219,0,0,0); -- Recipe: Sagefish Delight
INSERT INTO npc_vendor VALUES (2381,30817,0,0,0); -- Simple Flour

-- Total count: Templates: 20, single 18, sum 38, before: 158
-- ------------
-- Trade Supplies 3
-- 777,3499,3556,12043
-- ------------
DELETE FROM npc_vendor WHERE entry IN (777,3499,3556,12043);
UPDATE creature_template SET vendor_id=110 WHERE entry IN (777,3499,3556,12043);

INSERT INTO npc_vendor_template VALUES (110,2320,0,0,0); -- Coarse Thread [4/4/130]
INSERT INTO npc_vendor_template VALUES (110,2321,0,0,0); -- Fine Thread [4/4/120]
INSERT INTO npc_vendor_template VALUES (110,2324,0,0,0); -- Bleach [4/4/77]
INSERT INTO npc_vendor_template VALUES (110,2678,0,0,0); -- Mild Spices [4/4/90]
INSERT INTO npc_vendor_template VALUES (110,2692,0,0,0); -- Hot Spices [4/4/80]
INSERT INTO npc_vendor_template VALUES (110,2880,0,0,0); -- Weak Flux [4/4/156]
INSERT INTO npc_vendor_template VALUES (110,2901,0,0,0); -- Mining Pick [4/4/157]
INSERT INTO npc_vendor_template VALUES (110,2928,0,0,0); -- Dust of Decay [4/4/88]
INSERT INTO npc_vendor_template VALUES (110,3371,0,0,0); -- Empty Vial [4/4/133]
INSERT INTO npc_vendor_template VALUES (110,3372,0,0,0); -- Leaded Vial [4/4/115]
INSERT INTO npc_vendor_template VALUES (110,4289,0,0,0); -- Salt [4/4/98]
INSERT INTO npc_vendor_template VALUES (110,5956,0,0,0); -- Blacksmith Hammer [4/4/144]
INSERT INTO npc_vendor_template VALUES (110,6217,0,0,0); -- Copper Rod [4/4/87]
INSERT INTO npc_vendor_template VALUES (110,6256,0,0,0); -- Fishing Pole [4/4/87]
INSERT INTO npc_vendor_template VALUES (110,6529,0,0,0); -- Shiny Bauble [4/4/57]
INSERT INTO npc_vendor_template VALUES (110,6530,0,0,0); -- Nightcrawlers [4/4/84]
INSERT INTO npc_vendor_template VALUES (110,7005,0,0,0); -- Skinning Knife [4/4/90]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 5640,1,7200,0 Recipe: Rage Potion [1/4/1]
-- 5771,1,7200,0 Pattern: Red Linen Bag [1/4/3]
-- 5772,1,7200,0 Pattern: Red Woolen Bag [1/4/11]
-- 5786,1,7200,0 Pattern: Murloc Scale Belt [1/4/1]
-- 5787,1,7200,0 Pattern: Murloc Scale Breastplate [1/4/1]
-- 6272,1,7200,0 Pattern: Blue Linen Robe [2/4/5]
-- 6892,0,0,0 Recipe: Smoked Bear Meat [1/4/2]
-- 11039,1,7200,0 Formula: Enchant Cloak - Minor Agility [1/4/1]
-- 11101,1,7200,0 Formula: Enchant Bracer - Lesser Strength [1/4/1]
-- 20576,0,0,0 Pattern: Black Whelp Tunic [1/4/1]
-- 20855,1,7200,0 Design: Wicked Moonstone Ring [1/4/1]

INSERT INTO npc_vendor VALUES (3499,5640,1,7200,0); -- Recipe: Rage Potion
INSERT INTO npc_vendor VALUES (3556,5771,1,7200,0); -- Pattern: Red Linen Bag
INSERT INTO npc_vendor VALUES (777,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (3556,5786,1,7200,0); -- Pattern: Murloc Scale Belt
INSERT INTO npc_vendor VALUES (3556,5787,1,7200,0); -- Pattern: Murloc Scale Breastplate
INSERT INTO npc_vendor VALUES (3499,6272,1,7200,0); -- Pattern: Blue Linen Robe
INSERT INTO npc_vendor VALUES (3556,6272,1,7200,0); -- Pattern: Blue Linen Robe
INSERT INTO npc_vendor VALUES (3556,6892,0,0,0); -- Recipe: Smoked Bear Meat
INSERT INTO npc_vendor VALUES (12043,11039,1,7200,0); -- Formula: Enchant Cloak - Minor Agility
INSERT INTO npc_vendor VALUES (12043,11101,1,7200,0); -- Formula: Enchant Bracer - Lesser Strength
INSERT INTO npc_vendor VALUES (777,20576,0,0,0); -- Pattern: Black Whelp Tunic
INSERT INTO npc_vendor VALUES (3499,20855,1,7200,0); -- Design: Wicked Moonstone Ring

-- Total count: Templates: 17, single 12, sum 29, before: 80

-- ------------
-- Trade Supplies 4
-- 843,1465,3482,17490,18427
-- ------------
DELETE FROM npc_vendor WHERE entry IN (843,1465,3482,17490,18427);
UPDATE creature_template SET vendor_id=111 WHERE entry IN (843,1465,3482,17490,18427);

INSERT INTO npc_vendor_template VALUES (111,2320,0,0,0); -- Coarse Thread [5/5/130]
INSERT INTO npc_vendor_template VALUES (111,2321,0,0,0); -- Fine Thread [5/5/120]
INSERT INTO npc_vendor_template VALUES (111,2324,0,0,0); -- Bleach [5/5/77]
INSERT INTO npc_vendor_template VALUES (111,2604,0,0,0); -- Red Dye [5/5/119]
INSERT INTO npc_vendor_template VALUES (111,2605,0,0,0); -- Green Dye [5/5/78]
INSERT INTO npc_vendor_template VALUES (111,2678,0,0,0); -- Mild Spices [5/5/90]
INSERT INTO npc_vendor_template VALUES (111,2692,0,0,0); -- Hot Spices [5/5/80]
INSERT INTO npc_vendor_template VALUES (111,2880,0,0,0); -- Weak Flux [5/5/156]
INSERT INTO npc_vendor_template VALUES (111,2901,0,0,0); -- Mining Pick [5/5/157]
INSERT INTO npc_vendor_template VALUES (111,3371,0,0,0); -- Empty Vial [5/5/133]
INSERT INTO npc_vendor_template VALUES (111,4289,0,0,0); -- Salt [5/5/98]
INSERT INTO npc_vendor_template VALUES (111,5956,0,0,0); -- Blacksmith Hammer [5/5/144]
INSERT INTO npc_vendor_template VALUES (111,6217,0,0,0); -- Copper Rod [5/5/87]
INSERT INTO npc_vendor_template VALUES (111,6256,0,0,0); -- Fishing Pole [5/5/87]
INSERT INTO npc_vendor_template VALUES (111,6260,0,0,0); -- Blue Dye [5/5/88]
INSERT INTO npc_vendor_template VALUES (111,6529,0,0,0); -- Shiny Bauble [5/5/57]
INSERT INTO npc_vendor_template VALUES (111,6530,0,0,0); -- Nightcrawlers [5/5/84]
INSERT INTO npc_vendor_template VALUES (111,7005,0,0,0); -- Skinning Knife [5/5/90]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 5486,0,0,0 Recipe: Strider Stew [1/5/1]
-- 5488,0,0,0 Recipe: Crispy Lizard Tail [1/5/1]
-- 5771,0,0,0 Pattern: Red Linen Bag [1/5/2]
-- 5786,0,0,0 Pattern: Murloc Scale Belt [1/5/2]
-- 5787,0,0,0 Pattern: Murloc Scale Breastplate [1/5/2]
-- 6274,0,0,0 Pattern: Blue Overalls [1/5/2]
-- 6892,0,0,0 Recipe: Smoked Bear Meat [1/5/2]
-- 20815,0,0,0 Jeweler's Kit [1/5/28]
-- 20824,0,0,0 Simple Grinder [1/5/28]
-- 22647,0,0,0 Recipe: Crunchy Spider Surprise [1/5/2]
-- 30817,0,0,0 Simple Flour [1/5/33]

INSERT INTO npc_vendor VALUES (3482,5486,0,0,0); -- Recipe: Strider Stew
INSERT INTO npc_vendor VALUES (3482,5488,0,0,0); -- Recipe: Crispy Lizard Tail
INSERT INTO npc_vendor VALUES (843,5771,0,0,0); -- Pattern: Red Linen Bag
INSERT INTO npc_vendor VALUES (843,5786,0,0,0); -- Pattern: Murloc Scale Belt
INSERT INTO npc_vendor VALUES (843,5787,0,0,0); -- Pattern: Murloc Scale Breastplate
INSERT INTO npc_vendor VALUES (843,6274,0,0,0); -- Pattern: Blue Overalls
INSERT INTO npc_vendor VALUES (1465,6892,0,0,0); -- Recipe: Smoked Bear Meat
INSERT INTO npc_vendor VALUES (18427,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (18427,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (18427,22647,0,0,0); -- Recipe: Crunchy Spider Surprise
INSERT INTO npc_vendor VALUES (17490,30817,0,0,0); -- Simple Flour

-- Total count: Templates: 18, single 11, sum 29, before: 101

-- ------------
-- Trade Supplies 5
-- 66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262,18426
-- ------------
DELETE FROM npc_vendor WHERE entry IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262,18426);
UPDATE creature_template SET vendor_id=112 WHERE entry IN (66,1250,1692,2118,3081,3168,3187,3614,4194,16224,16261,16262,18426);

INSERT INTO npc_vendor_template VALUES (112,2320,0,0,0); -- Coarse Thread [13/13/130]
INSERT INTO npc_vendor_template VALUES (112,2324,0,0,0); -- Bleach [13/13/77]
INSERT INTO npc_vendor_template VALUES (112,2604,0,0,0); -- Red Dye [13/13/119]
INSERT INTO npc_vendor_template VALUES (112,2678,0,0,0); -- Mild Spices [13/13/90]
INSERT INTO npc_vendor_template VALUES (112,2880,0,0,0); -- Weak Flux [13/13/156]
INSERT INTO npc_vendor_template VALUES (112,2901,0,0,0); -- Mining Pick [13/13/157]
INSERT INTO npc_vendor_template VALUES (112,3371,0,0,0); -- Empty Vial [13/13/133]
INSERT INTO npc_vendor_template VALUES (112,4289,0,0,0); -- Salt [13/13/98]
INSERT INTO npc_vendor_template VALUES (112,5956,0,0,0); -- Blacksmith Hammer [13/13/144]
INSERT INTO npc_vendor_template VALUES (112,6217,0,0,0); -- Copper Rod [13/13/87]
INSERT INTO npc_vendor_template VALUES (112,6256,0,0,0); -- Fishing Pole [13/13/87]
INSERT INTO npc_vendor_template VALUES (112,6260,0,0,0); -- Blue Dye [13/13/88]
INSERT INTO npc_vendor_template VALUES (112,6529,0,0,0); -- Shiny Bauble [13/13/57]
INSERT INTO npc_vendor_template VALUES (112,7005,0,0,0); -- Skinning Knife [13/13/90]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 159,0,0,0 Refreshing Spring Water [2/13/227]
-- 765,3,43200,0 Silverleaf [1/13/2]
-- 785,3,43200,0 Mageroyal [1/13/1]
-- 954,3,43200,0 Scroll of Strength [1/13/1]
-- 955,3,43200,0 Scroll of Intellect [1/13/1]
-- 1179,0,0,0 Ice Cold Milk [1/13/169]
-- 1180,3,43200,0 Scroll of Stamina [1/13/1]
-- 1181,3,43200,0 Scroll of Spirit [1/13/1]
-- 2321,0,0,0 Fine Thread [3/13/120]
-- 2447,3,43200,0 Peacebloom [1/13/1]
-- 2449,3,43200,0 Earthroot [1/13/1]
-- 2453,3,43200,0 Bruiseweed [1/13/1]
-- 2512,0,0,0 Rough Arrow [2/13/94]
-- 2515,0,0,0 Sharp Arrow [1/13/104]
-- 2516,0,0,0 Light Shot [2/13/72]
-- 2519,0,0,0 Heavy Shot [1/13/84]
-- 2605,0,0,0 Green Dye [3/13/78]
-- 2692,0,0,0 Hot Spices [3/13/80]
-- 2770,5,43200,0 Copper Ore [1/13/1]
-- 2771,3,43200,0 Tin Ore [1/13/1]
-- 2775,1,43200,0 Silver Ore [1/13/1]
-- 3012,3,43200,0 Scroll of Agility [1/13/1]
-- 3013,3,43200,0 Scroll of Protection [1/13/1]
-- 4470,0,0,0 Simple Wood [2/13/132]
-- 4471,0,0,0 Flint and Tinder [2/13/85]
-- 4496,0,0,0 Small Brown Pouch [2/13/53]
-- 4498,0,0,0 Brown Leather Satchel [2/13/82]
-- 5042,0,0,0 Red Ribboned Wrapping Paper [2/13/31]
-- 5484,0,0,0 Recipe: Roasted Kodo Meat [1/13/1]
-- 5771,1,7200,0 Pattern: Red Linen Bag [1/13/3]
-- 6183,0,0,0 Unlit Poor Torch [1/13/4]
-- 6270,0,0,0 Pattern: Blue Linen Vest [1/13/3]
-- 6272,1,7200,0 Pattern: Blue Linen Robe [1/13/5]
-- 6325,0,0,0 Recipe: Brilliant Smallfish [1/13/9]
-- 6328,0,0,0 Recipe: Longjaw Mud Snapper [1/13/8]
-- 6530,0,0,0 Nightcrawlers [3/13/84]
-- 12226,0,0,0 Recipe: Crispy Bat Wing [1/13/1]
-- 20815,0,0,0 Jeweler's Kit [2/13/28]
-- 20824,0,0,0 Simple Grinder [2/13/28]
-- 25861,0,0,0 Crude Throwing Axe [2/13/44]
-- 25872,0,0,0 Balanced Throwing Dagger [2/13/44]
-- 27685,0,0,0 Recipe: Lynx Steak [1/13/1]
-- 28979,0,0,0 Light Throwing Knife [2/13/36]
-- 29007,0,0,0 Weighted Throwing Axe [2/13/39]
-- 30817,0,0,0 Simple Flour [11/13/33]

INSERT INTO npc_vendor VALUES (1250,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (18426,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (16224,765,3,43200,0); -- Silverleaf
INSERT INTO npc_vendor VALUES (16224,785,3,43200,0); -- Mageroyal
INSERT INTO npc_vendor VALUES (16224,954,3,43200,0); -- Scroll of Strength
INSERT INTO npc_vendor VALUES (16224,955,3,43200,0); -- Scroll of Intellect
INSERT INTO npc_vendor VALUES (18426,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (16224,1180,3,43200,0); -- Scroll of Stamina
INSERT INTO npc_vendor VALUES (16224,1181,3,43200,0); -- Scroll of Spirit
INSERT INTO npc_vendor VALUES (4194,2321,0,0,0); -- Fine Thread
INSERT INTO npc_vendor VALUES (16224,2321,0,0,0); -- Fine Thread
INSERT INTO npc_vendor VALUES (18426,2321,0,0,0); -- Fine Thread
INSERT INTO npc_vendor VALUES (16224,2447,3,43200,0); -- Peacebloom
INSERT INTO npc_vendor VALUES (16224,2449,3,43200,0); -- Earthroot
INSERT INTO npc_vendor VALUES (16224,2453,3,43200,0); -- Bruiseweed
INSERT INTO npc_vendor VALUES (1250,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (18426,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (18426,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (1250,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (18426,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (18426,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (4194,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (16224,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (18426,2605,0,0,0); -- Green Dye
INSERT INTO npc_vendor VALUES (4194,2692,0,0,0); -- Hot Spices
INSERT INTO npc_vendor VALUES (16224,2692,0,0,0); -- Hot Spices
INSERT INTO npc_vendor VALUES (18426,2692,0,0,0); -- Hot Spices
INSERT INTO npc_vendor VALUES (16224,2770,5,43200,0); -- Copper Ore
INSERT INTO npc_vendor VALUES (16224,2771,3,43200,0); -- Tin Ore
INSERT INTO npc_vendor VALUES (16224,2775,1,43200,0); -- Silver Ore
INSERT INTO npc_vendor VALUES (16224,3012,3,43200,0); -- Scroll of Agility
INSERT INTO npc_vendor VALUES (16224,3013,3,43200,0); -- Scroll of Protection
INSERT INTO npc_vendor VALUES (1250,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (18426,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (1250,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (18426,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (1250,4496,0,0,0); -- Small Brown Pouch
INSERT INTO npc_vendor VALUES (18426,4496,0,0,0); -- Small Brown Pouch
INSERT INTO npc_vendor VALUES (1250,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (18426,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (1250,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (18426,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (3081,5484,0,0,0); -- Recipe: Roasted Kodo Meat
INSERT INTO npc_vendor VALUES (16224,5771,1,7200,0); -- Pattern: Red Linen Bag
INSERT INTO npc_vendor VALUES (1250,6183,0,0,0); -- Unlit Poor Torch
INSERT INTO npc_vendor VALUES (66,6270,0,0,0); -- Pattern: Blue Linen Vest
INSERT INTO npc_vendor VALUES (1250,6272,1,7200,0); -- Pattern: Blue Linen Robe
INSERT INTO npc_vendor VALUES (66,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (66,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (4194,6530,0,0,0); -- Nightcrawlers
INSERT INTO npc_vendor VALUES (16224,6530,0,0,0); -- Nightcrawlers
INSERT INTO npc_vendor VALUES (18426,6530,0,0,0); -- Nightcrawlers
INSERT INTO npc_vendor VALUES (2118,12226,0,0,0); -- Recipe: Crispy Bat Wing
INSERT INTO npc_vendor VALUES (16224,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (16262,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (16224,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (16262,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (1250,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (18426,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (1250,25872,0,0,0); -- Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (18426,25872,0,0,0); -- Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (16262,27685,0,0,0); -- Recipe: Lynx Steak
INSERT INTO npc_vendor VALUES (1250,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (18426,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (1250,29007,0,0,0); -- Weighted Throwing Axe
INSERT INTO npc_vendor VALUES (18426,29007,0,0,0); -- Weighted Throwing Axe
INSERT INTO npc_vendor VALUES (66,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (1250,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (1692,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (2118,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (3081,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (3168,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (3187,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (3614,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (16261,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (16262,30817,0,0,0); -- Simple Flour
INSERT INTO npc_vendor VALUES (18426,30817,0,0,0); -- Simple Flour

-- Total count: Templates: 14, single 77, sum 91, before: 259

-- ------------
-- Trade Supplies 6
-- 3954,4897,11189,12022,15179
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3954,4897,11189,12022,15179);
UPDATE creature_template SET vendor_id=113 WHERE entry IN (3954,4897,11189,12022,15179);

INSERT INTO npc_vendor_template VALUES (113,2320,0,0,0); -- Coarse Thread [5/5/130]
INSERT INTO npc_vendor_template VALUES (113,2321,0,0,0); -- Fine Thread [5/5/120]
INSERT INTO npc_vendor_template VALUES (113,2325,0,0,0); -- Black Dye [5/5/101]
INSERT INTO npc_vendor_template VALUES (113,2604,0,0,0); -- Red Dye [5/5/119]
INSERT INTO npc_vendor_template VALUES (113,2678,0,0,0); -- Mild Spices [5/5/90]
INSERT INTO npc_vendor_template VALUES (113,2692,0,0,0); -- Hot Spices [5/5/80]
INSERT INTO npc_vendor_template VALUES (113,2880,0,0,0); -- Weak Flux [5/5/156]
INSERT INTO npc_vendor_template VALUES (113,2901,0,0,0); -- Mining Pick [5/5/157]
INSERT INTO npc_vendor_template VALUES (113,2928,0,0,0); -- Dust of Decay [5/5/88]
INSERT INTO npc_vendor_template VALUES (113,3371,0,0,0); -- Empty Vial [5/5/133]
INSERT INTO npc_vendor_template VALUES (113,3372,0,0,0); -- Leaded Vial [5/5/115]
INSERT INTO npc_vendor_template VALUES (113,3466,0,0,0); -- Strong Flux [5/5/134]
INSERT INTO npc_vendor_template VALUES (113,3713,0,0,0); -- Soothing Spices [5/5/93]
INSERT INTO npc_vendor_template VALUES (113,3857,0,0,0); -- Coal [5/5/99]
INSERT INTO npc_vendor_template VALUES (113,4289,0,0,0); -- Salt [5/5/98]
INSERT INTO npc_vendor_template VALUES (113,4291,0,0,0); -- Silken Thread [5/5/108]
INSERT INTO npc_vendor_template VALUES (113,4340,0,0,0); -- Gray Dye [5/5/101]
INSERT INTO npc_vendor_template VALUES (113,4341,0,0,0); -- Yellow Dye [5/5/101]
INSERT INTO npc_vendor_template VALUES (113,4342,0,0,0); -- Purple Dye [5/5/101]
INSERT INTO npc_vendor_template VALUES (113,4399,0,0,0); -- Wooden Stock [5/5/80]
INSERT INTO npc_vendor_template VALUES (113,4400,0,0,0); -- Heavy Stock [5/5/80]
INSERT INTO npc_vendor_template VALUES (113,5956,0,0,0); -- Blacksmith Hammer [5/5/144]
INSERT INTO npc_vendor_template VALUES (113,6217,0,0,0); -- Copper Rod [5/5/87]
INSERT INTO npc_vendor_template VALUES (113,6256,0,0,0); -- Fishing Pole [5/5/87]
INSERT INTO npc_vendor_template VALUES (113,6530,0,0,0); -- Nightcrawlers [5/5/84]
INSERT INTO npc_vendor_template VALUES (113,6532,0,0,0); -- Bright Baubles [5/5/96]
INSERT INTO npc_vendor_template VALUES (113,7005,0,0,0); -- Skinning Knife [5/5/90]
INSERT INTO npc_vendor_template VALUES (113,8343,0,0,0); -- Heavy Silken Thread [5/5/101]
INSERT INTO npc_vendor_template VALUES (113,8925,0,0,0); -- Crystal Vial [5/5/119]
INSERT INTO npc_vendor_template VALUES (113,14341,0,0,0); -- Rune Thread [5/5/126]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2324,0,0,0 Bleach [2/5/77]
-- 3777,0,0,0 Lethargy Root [2/5/53]
-- 5789,1,43200,0 Pattern: Murloc Scale Bracers [1/5/2]
-- 11039,0,0,0 Formula: Enchant Cloak - Minor Agility [1/5/1]
-- 11101,0,0,0 Formula: Enchant Bracer - Lesser Strength [1/5/1]
-- 12228,0,0,0 Recipe: Roast Raptor [1/5/6]
-- 12233,0,0,0 Recipe: Mystery Stew [1/5/3]
-- 12239,0,0,0 Recipe: Dragonbreath Chili [1/5/3]
-- 14468,1,1200,0 Pattern: Runecloth Bag [1/5/1]
-- 14483,1,7200,0 Pattern: Felcloth Pants [1/5/1]
-- 14526,0,0,0 Pattern: Mooncloth [1/5/1]
-- 15740,1,1200,0 Pattern: Frostsaber Boots [1/5/1]
-- 16221,1,1200,0 Formula: Enchant Chest - Major Health [1/5/1]
-- 16224,1,7200,0 Formula: Enchant Cloak - Superior Defense [1/5/1]
-- 16243,1,7200,0 Formula: Runed Arcanite Rod [1/5/1]
-- 18256,0,0,0 Imbued Vial [3/5/88]
-- 18256,5,43200,0 Imbued Vial [2/5/13]
-- 20855,0,0,0 Design: Wicked Moonstone Ring [1/5/1]
-- 21941,0,0,0 Design: Black Pearl Panther [1/5/2]
-- 21943,0,0,0 Design: Truesilver Crab [1/5/1]
-- 21952,1,7200,0 Design: Emerald Crown of Destruction [1/5/1]
-- 21957,1,7200,0 Design: Necklace of the Diamond Tower [1/5/1]
-- 22310,0,0,0 Pattern: Cenarion Herb Bag [1/5/1]
-- 22312,0,0,0 Pattern: Satchel of Cenarius [1/5/1]
-- 22683,0,0,0 Pattern: Gaea's Embrace [1/5/1]
-- 22772,0,0,0 Pattern: Sylvan Shoulders [1/5/1]
-- 22773,0,0,0 Pattern: Sylvan Crown [1/5/1]
-- 22774,0,0,0 Pattern: Sylvan Vest [1/5/1]

INSERT INTO npc_vendor VALUES (4897,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (12022,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (3954,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (4897,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (4897,5789,1,43200,0); -- Pattern: Murloc Scale Bracers
INSERT INTO npc_vendor VALUES (3954,11039,0,0,0); -- Formula: Enchant Cloak - Minor Agility
INSERT INTO npc_vendor VALUES (3954,11101,0,0,0); -- Formula: Enchant Bracer - Lesser Strength
INSERT INTO npc_vendor VALUES (4897,12228,0,0,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (4897,12233,0,0,0); -- Recipe: Mystery Stew
INSERT INTO npc_vendor VALUES (4897,12239,0,0,0); -- Recipe: Dragonbreath Chili
INSERT INTO npc_vendor VALUES (11189,14468,1,1200,0); -- Pattern: Runecloth Bag
INSERT INTO npc_vendor VALUES (12022,14483,1,7200,0); -- Pattern: Felcloth Pants
INSERT INTO npc_vendor VALUES (11189,14526,0,0,0); -- Pattern: Mooncloth
INSERT INTO npc_vendor VALUES (11189,15740,1,1200,0); -- Pattern: Frostsaber Boots
INSERT INTO npc_vendor VALUES (11189,16221,1,1200,0); -- Formula: Enchant Chest - Major Health
INSERT INTO npc_vendor VALUES (12022,16224,1,7200,0); -- Formula: Enchant Cloak - Superior Defense
INSERT INTO npc_vendor VALUES (12022,16243,1,7200,0); -- Formula: Runed Arcanite Rod
INSERT INTO npc_vendor VALUES (11189,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (12022,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (15179,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (3954,18256,5,43200,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (4897,18256,5,43200,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (3954,20855,0,0,0); -- Design: Wicked Moonstone Ring
INSERT INTO npc_vendor VALUES (4897,21941,0,0,0); -- Design: Black Pearl Panther
INSERT INTO npc_vendor VALUES (4897,21943,0,0,0); -- Design: Truesilver Crab
INSERT INTO npc_vendor VALUES (15179,21952,1,7200,0); -- Design: Emerald Crown of Destruction
INSERT INTO npc_vendor VALUES (11189,21957,1,7200,0); -- Design: Necklace of the Diamond Tower
INSERT INTO npc_vendor VALUES (15179,22310,0,0,0); -- Pattern: Cenarion Herb Bag
INSERT INTO npc_vendor VALUES (15179,22312,0,0,0); -- Pattern: Satchel of Cenarius
INSERT INTO npc_vendor VALUES (15179,22683,0,0,0); -- Pattern: Gaea's Embrace
INSERT INTO npc_vendor VALUES (15179,22772,0,0,0); -- Pattern: Sylvan Shoulders
INSERT INTO npc_vendor VALUES (15179,22773,0,0,0); -- Pattern: Sylvan Crown
INSERT INTO npc_vendor VALUES (15179,22774,0,0,0); -- Pattern: Sylvan Vest

-- Total count: Templates: 30, single 33, sum 63, before: 183

-- ------------
-- Trade Supplies 7
-- 16602,16826,18907,19197,20092,20194,22099
-- ------------
DELETE FROM npc_vendor WHERE entry IN (16602,16826,18907,19197,20092,20194,22099);
UPDATE creature_template SET vendor_id=114 WHERE entry IN (16602,16826,18907,19197,20092,20194,22099);

INSERT INTO npc_vendor_template VALUES (114,2928,0,0,0); -- Dust of Decay [7/7/88]
INSERT INTO npc_vendor_template VALUES (114,3713,0,0,0); -- Soothing Spices [7/7/93]
INSERT INTO npc_vendor_template VALUES (114,4470,0,0,0); -- Simple Wood [7/7/132]
INSERT INTO npc_vendor_template VALUES (114,6532,0,0,0); -- Bright Baubles [7/7/96]
INSERT INTO npc_vendor_template VALUES (114,11284,0,0,0); -- Accurate Slugs [7/7/95]
INSERT INTO npc_vendor_template VALUES (114,11285,0,0,0); -- Jagged Arrow [7/7/100]
INSERT INTO npc_vendor_template VALUES (114,14341,0,0,0); -- Rune Thread [7/7/126]
INSERT INTO npc_vendor_template VALUES (114,18256,0,0,0); -- Imbued Vial [7/7/88]
INSERT INTO npc_vendor_template VALUES (114,28053,0,0,0); -- Wicked Arrow [7/7/100]
INSERT INTO npc_vendor_template VALUES (114,28056,0,0,0); -- Blackflight Arrow [7/7/49]
INSERT INTO npc_vendor_template VALUES (114,28060,0,0,0); -- Impact Shot [7/7/89]
INSERT INTO npc_vendor_template VALUES (114,28061,0,0,0); -- Ironbite Shell [7/7/51]
INSERT INTO npc_vendor_template VALUES (114,29013,0,0,0); -- Jagged Throwing Axe [7/7/73]
INSERT INTO npc_vendor_template VALUES (114,29014,0,0,0); -- Blacksteel Throwing Dagger [7/7/72]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2931,0,0,0 Maiden's Anguish [1/7/42]
-- 3777,0,0,0 Lethargy Root [1/7/53]
-- 4425,1,43200,0 Scroll of Agility III [1/7/1]
-- 4426,1,43200,0 Scroll of Strength III [1/7/1]
-- 4471,0,0,0 Flint and Tinder [2/7/85]
-- 4496,0,0,0 Small Brown Pouch [1/7/53]
-- 4497,0,0,0 Heavy Brown Bag [1/7/55]
-- 4498,0,0,0 Brown Leather Satchel [1/7/82]
-- 4499,0,0,0 Huge Brown Sack [1/7/10]
-- 5042,0,0,0 Red Ribboned Wrapping Paper [1/7/31]
-- 5048,0,0,0 Blue Ribboned Wrapping Paper [1/7/16]
-- 5140,0,0,0 Flash Powder [1/7/43]
-- 5173,0,0,0 Deathweed [1/7/42]
-- 5565,0,0,0 Infernal Stone [1/7/68]
-- 8766,0,0,0 Morning Glory Dew [3/7/188]
-- 8923,0,0,0 Essence of Agony [1/7/42]
-- 8924,0,0,0 Dust of Deterioration [1/7/41]
-- 8925,0,0,0 Crystal Vial [1/7/119]
-- 8950,0,0,0 Homemade Cherry Pie [1/7/66]
-- 8952,0,0,0 Roasted Quail [2/7/101]
-- 10306,2,43200,0 Scroll of Spirit IV [1/7/1]
-- 10307,2,43200,0 Scroll of Stamina IV [1/7/1]
-- 10308,2,43200,0 Scroll of Intellect IV [1/7/1]
-- 13444,2,43200,0 Major Mana Potion [1/7/2]
-- 13446,2,43200,0 Major Healing Potion [1/7/2]
-- 16583,0,0,0 Demonic Figurine [1/7/68]
-- 17020,0,0,0 Arcane Powder [1/7/68]
-- 17021,0,0,0 Wild Berries [1/7/67]
-- 17026,0,0,0 Wild Thornroot [1/7/67]
-- 17028,0,0,0 Holy Candle [1/7/67]
-- 17029,0,0,0 Sacred Candle [1/7/69]
-- 17030,0,0,0 Ankh [1/7/69]
-- 17031,0,0,0 Rune of Teleportation [1/7/67]
-- 17032,0,0,0 Rune of Portals [1/7/67]
-- 17033,0,0,0 Symbol of Divinity [1/7/69]
-- 17037,0,0,0 Hornbeam Seed [1/7/66]
-- 17038,0,0,0 Ironwood Seed [1/7/66]
-- 21177,0,0,0 Symbol of Kings [1/7/69]
-- 22147,0,0,0 Flintweed Seed [1/7/69]
-- 22148,0,0,0 Wild Quillvine [1/7/61]
-- 27688,0,0,0 Recipe: Ravager Dog [1/7/2]
-- 27854,0,0,0 Smoked Talbuk Venison [2/7/35]
-- 27855,0,0,0 Mag'har Grainbread [1/7/16]
-- 27860,0,0,0 Purified Draenic Water [3/7/51]
-- 28100,4,43200,0 Volatile Healing Potion [1/7/1]
-- 28101,0,0,0 Unstable Mana Potion [1/7/1]
-- 28399,0,0,0 Filtered Draenic Water [3/7/51]
-- 29112,0,0,0 Cenarion Spirits [1/7/1]
-- 29449,0,0,0 Bladespire Bagel [1/7/17]
-- 29451,0,0,0 Clefthoof Ribs [2/7/36]
-- 30744,0,0,0 Draenic Leather Pack [1/7/3]
-- 30745,1,43200,0 Heavy Toolbox [1/7/2]
-- 30746,1,43200,0 Mining Sack [1/7/2]
-- 30747,1,43200,0 Gem Pouch [1/7/2]
-- 30748,1,43200,0 Enchanter's Satchel [1/7/2]
-- 31337,0,0,0 Orb of the Blackwhelp [1/7/1]
-- 31341,0,0,0 Wyrmcultist's Cloak [1/7/1]

INSERT INTO npc_vendor VALUES (20194,2931,0,0,0); -- Maiden's Anguish
INSERT INTO npc_vendor VALUES (20194,3777,0,0,0); -- Lethargy Root
INSERT INTO npc_vendor VALUES (20092,4425,1,43200,0); -- Scroll of Agility III
INSERT INTO npc_vendor VALUES (20092,4426,1,43200,0); -- Scroll of Strength III
INSERT INTO npc_vendor VALUES (19197,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (20092,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (19197,4496,0,0,0); -- Small Brown Pouch
INSERT INTO npc_vendor VALUES (19197,4497,0,0,0); -- Heavy Brown Bag
INSERT INTO npc_vendor VALUES (19197,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (19197,4499,0,0,0); -- Huge Brown Sack
INSERT INTO npc_vendor VALUES (19197,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (19197,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (20194,5140,0,0,0); -- Flash Powder
INSERT INTO npc_vendor VALUES (20194,5173,0,0,0); -- Deathweed
INSERT INTO npc_vendor VALUES (20092,5565,0,0,0); -- Infernal Stone
INSERT INTO npc_vendor VALUES (16602,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (16826,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (18907,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (20194,8923,0,0,0); -- Essence of Agony
INSERT INTO npc_vendor VALUES (20194,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (20194,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (18907,8950,0,0,0); -- Homemade Cherry Pie
INSERT INTO npc_vendor VALUES (16602,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (16826,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (20092,10306,2,43200,0); -- Scroll of Spirit IV
INSERT INTO npc_vendor VALUES (20092,10307,2,43200,0); -- Scroll of Stamina IV
INSERT INTO npc_vendor VALUES (20092,10308,2,43200,0); -- Scroll of Intellect IV
INSERT INTO npc_vendor VALUES (20092,13444,2,43200,0); -- Major Mana Potion
INSERT INTO npc_vendor VALUES (20092,13446,2,43200,0); -- Major Healing Potion
INSERT INTO npc_vendor VALUES (20092,16583,0,0,0); -- Demonic Figurine
INSERT INTO npc_vendor VALUES (20092,17020,0,0,0); -- Arcane Powder
INSERT INTO npc_vendor VALUES (20092,17021,0,0,0); -- Wild Berries
INSERT INTO npc_vendor VALUES (20092,17026,0,0,0); -- Wild Thornroot
INSERT INTO npc_vendor VALUES (20092,17028,0,0,0); -- Holy Candle
INSERT INTO npc_vendor VALUES (20092,17029,0,0,0); -- Sacred Candle
INSERT INTO npc_vendor VALUES (20092,17030,0,0,0); -- Ankh
INSERT INTO npc_vendor VALUES (20092,17031,0,0,0); -- Rune of Teleportation
INSERT INTO npc_vendor VALUES (20092,17032,0,0,0); -- Rune of Portals
INSERT INTO npc_vendor VALUES (20092,17033,0,0,0); -- Symbol of Divinity
INSERT INTO npc_vendor VALUES (20092,17037,0,0,0); -- Hornbeam Seed
INSERT INTO npc_vendor VALUES (20092,17038,0,0,0); -- Ironwood Seed
INSERT INTO npc_vendor VALUES (20092,21177,0,0,0); -- Symbol of Kings
INSERT INTO npc_vendor VALUES (20092,22147,0,0,0); -- Flintweed Seed
INSERT INTO npc_vendor VALUES (20092,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (16826,27688,0,0,0); -- Recipe: Ravager Dog
INSERT INTO npc_vendor VALUES (16602,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (16826,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (18907,27855,0,0,0); -- Mag'har Grainbread
INSERT INTO npc_vendor VALUES (16602,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (16826,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (18907,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (22099,28100,4,43200,0); -- Volatile Healing Potion
INSERT INTO npc_vendor VALUES (22099,28101,0,0,0); -- Unstable Mana Potion
INSERT INTO npc_vendor VALUES (16602,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (16826,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (18907,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (18907,29112,0,0,0); -- Cenarion Spirits
INSERT INTO npc_vendor VALUES (18907,29449,0,0,0); -- Bladespire Bagel
INSERT INTO npc_vendor VALUES (16602,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (16826,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (16602,30744,0,0,0); -- Draenic Leather Pack
INSERT INTO npc_vendor VALUES (16602,30745,1,43200,0); -- Heavy Toolbox
INSERT INTO npc_vendor VALUES (16602,30746,1,43200,0); -- Mining Sack
INSERT INTO npc_vendor VALUES (16602,30747,1,43200,0); -- Gem Pouch
INSERT INTO npc_vendor VALUES (16602,30748,1,43200,0); -- Enchanter's Satchel
INSERT INTO npc_vendor VALUES (22099,31337,0,0,0); -- Orb of the Blackwhelp
INSERT INTO npc_vendor VALUES (22099,31341,0,0,0); -- Wyrmcultist's Cloak

-- Total count: Templates: 14, single 67, sum 81, before: 165

-- ------------
-- Food & Drink 1
-- 18245,18251,19451,19495,19518
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18245,18251,19451,19495,19518);
UPDATE creature_template SET vendor_id=405 WHERE entry IN (18245,18251,19451,19495,19518);

INSERT INTO npc_vendor_template VALUES (405,8766,0,0,0); -- Morning Glory Dew [5/5/188]
INSERT INTO npc_vendor_template VALUES (405,8950,0,0,0); -- Homemade Cherry Pie [5/5/66]
INSERT INTO npc_vendor_template VALUES (405,27855,0,0,0); -- Mag'har Grainbread [5/5/16]
INSERT INTO npc_vendor_template VALUES (405,27860,0,0,0); -- Purified Draenic Water [5/5/51]
INSERT INTO npc_vendor_template VALUES (405,28399,0,0,0); -- Filtered Draenic Water [5/5/51]
INSERT INTO npc_vendor_template VALUES (405,29449,0,0,0); -- Bladespire Bagel [5/5/17]

-- Total count: Templates: 6, single 0, sum 6, before: 30

-- ------------
-- Food & Drink 2
-- 16585,18905,18906,18908,18913,18914,18957,19435,19470,19528,19559,21084
-- ------------
DELETE FROM npc_vendor WHERE entry IN (16585,18905,18906,18908,18913,18914,18957,19435,19470,19528,19559,21084);
UPDATE creature_template SET vendor_id=406 WHERE entry IN (16585,18905,18906,18908,18913,18914,18957,19435,19470,19528,19559,21084);

INSERT INTO npc_vendor_template VALUES (406,8766,0,0,0); -- Morning Glory Dew [12/12/188]
INSERT INTO npc_vendor_template VALUES (406,8952,0,0,0); -- Roasted Quail [12/12/101]
INSERT INTO npc_vendor_template VALUES (406,27854,0,0,0); -- Smoked Talbuk Venison [12/12/35]
INSERT INTO npc_vendor_template VALUES (406,27860,0,0,0); -- Purified Draenic Water [12/12/51]
INSERT INTO npc_vendor_template VALUES (406,28399,0,0,0); -- Filtered Draenic Water [12/12/51]
INSERT INTO npc_vendor_template VALUES (406,29451,0,0,0); -- Clefthoof Ribs [12/12/36]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 3928,1,43200,0 Superior Healing Potion [1/12/1]
-- 3928,2,43200,0 Superior Healing Potion [1/12/1]
-- 6149,1,43200,0 Greater Mana Potion [1/12/1]
-- 6149,2,43200,0 Greater Mana Potion [1/12/1]
-- 7228,0,0,0 Tigule and Foror's Strawberry Ice Cream [2/12/7]
-- 8953,0,0,0 Deep Fried Plantains [1/12/41]
-- 27688,0,0,0 Recipe: Ravager Dog [1/12/2]
-- 27690,0,0,0 Recipe: Blackened Basilisk [1/12/2]
-- 27692,0,0,0 Recipe: Warp Burger [1/12/4]
-- 27856,0,0,0 Skethyl Berries [1/12/15]
-- 29450,0,0,0 Telaari Grapes [1/12/16]
-- 30744,0,0,0 Draenic Leather Pack [1/12/3]
-- 30745,1,43200,0 Heavy Toolbox [1/12/2]
-- 30746,1,43200,0 Mining Sack [1/12/2]
-- 30747,1,43200,0 Gem Pouch [1/12/2]
-- 30748,1,43200,0 Enchanter's Satchel [1/12/2]

INSERT INTO npc_vendor VALUES (18905,3928,1,43200,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (18908,3928,2,43200,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (18905,6149,1,43200,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (18908,6149,2,43200,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (18913,7228,0,0,0); -- Tigule and Foror's Strawberry Ice Cream
INSERT INTO npc_vendor VALUES (18914,7228,0,0,0); -- Tigule and Foror's Strawberry Ice Cream
INSERT INTO npc_vendor VALUES (18957,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (16585,27688,0,0,0); -- Recipe: Ravager Dog
INSERT INTO npc_vendor VALUES (18957,27690,0,0,0); -- Recipe: Blackened Basilisk
INSERT INTO npc_vendor VALUES (18957,27692,0,0,0); -- Recipe: Warp Burger
INSERT INTO npc_vendor VALUES (18957,27856,0,0,0); -- Skethyl Berries
INSERT INTO npc_vendor VALUES (18957,29450,0,0,0); -- Telaari Grapes
INSERT INTO npc_vendor VALUES (18906,30744,0,0,0); -- Draenic Leather Pack
INSERT INTO npc_vendor VALUES (18906,30745,1,43200,0); -- Heavy Toolbox
INSERT INTO npc_vendor VALUES (18906,30746,1,43200,0); -- Mining Sack
INSERT INTO npc_vendor VALUES (18906,30747,1,43200,0); -- Gem Pouch
INSERT INTO npc_vendor VALUES (18906,30748,1,43200,0); -- Enchanter's Satchel

-- Total count: Templates: 6, single 17, sum 23, before: 89

-- ------------
-- Food & Drink 3
-- 19050,21484,21487
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19050,21484,21487);
UPDATE creature_template SET vendor_id=407 WHERE entry IN (19050,21484,21487);

INSERT INTO npc_vendor_template VALUES (407,8766,0,0,0); -- Morning Glory Dew [3/3/188]
INSERT INTO npc_vendor_template VALUES (407,8953,0,0,0); -- Deep Fried Plantains [3/3/41]
INSERT INTO npc_vendor_template VALUES (407,27856,0,0,0); -- Skethyl Berries [3/3/15]
INSERT INTO npc_vendor_template VALUES (407,27860,0,0,0); -- Purified Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (407,28399,0,0,0); -- Filtered Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (407,29450,0,0,0); -- Telaari Grapes [3/3/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 30615,0,0,0 Halaani Whiskey [2/3/2]

INSERT INTO npc_vendor VALUES (21484,30615,0,0,0); -- Halaani Whiskey
INSERT INTO npc_vendor VALUES (21487,30615,0,0,0); -- Halaani Whiskey

-- Total count: Templates: 6, single 2, sum 8, before: 20

-- ------------
-- Food & Drink 4
-- 16798,17277,19572,25036
-- ------------
DELETE FROM npc_vendor WHERE entry IN (16798,17277,19572,25036);
UPDATE creature_template SET vendor_id=408 WHERE entry IN (16798,17277,19572,25036);

INSERT INTO npc_vendor_template VALUES (408,8766,0,0,0); -- Morning Glory Dew [4/4/188]
INSERT INTO npc_vendor_template VALUES (408,8952,0,0,0); -- Roasted Quail [4/4/101]
INSERT INTO npc_vendor_template VALUES (408,8953,0,0,0); -- Deep Fried Plantains [4/4/41]
INSERT INTO npc_vendor_template VALUES (408,27854,0,0,0); -- Smoked Talbuk Venison [4/4/35]
INSERT INTO npc_vendor_template VALUES (408,27856,0,0,0); -- Skethyl Berries [4/4/15]
INSERT INTO npc_vendor_template VALUES (408,27860,0,0,0); -- Purified Draenic Water [4/4/51]
INSERT INTO npc_vendor_template VALUES (408,28399,0,0,0); -- Filtered Draenic Water [4/4/51]
INSERT INTO npc_vendor_template VALUES (408,29450,0,0,0); -- Telaari Grapes [4/4/16]
INSERT INTO npc_vendor_template VALUES (408,29451,0,0,0); -- Clefthoof Ribs [4/4/36]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 8957,0,0,0 Spinefin Halibut [1/4/35]
-- 27858,0,0,0 Sunspring Carp [1/4/6]
-- 29452,0,0,0 Zangar Trout [1/4/6]

INSERT INTO npc_vendor VALUES (25036,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (25036,27858,0,0,0); -- Sunspring Carp
INSERT INTO npc_vendor VALUES (25036,29452,0,0,0); -- Zangar Trout

-- Total count: Templates: 9, single 3, sum 12, before: 39

-- ------------
-- Food & Drink 5
-- 19348,19352,20893
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19348,19352,20893);
UPDATE creature_template SET vendor_id=409 WHERE entry IN (19348,19352,20893);

INSERT INTO npc_vendor_template VALUES (409,8766,0,0,0); -- Morning Glory Dew [3/3/188]
INSERT INTO npc_vendor_template VALUES (409,8950,0,0,0); -- Homemade Cherry Pie [3/3/66]
INSERT INTO npc_vendor_template VALUES (409,8952,0,0,0); -- Roasted Quail [3/3/101]
INSERT INTO npc_vendor_template VALUES (409,27854,0,0,0); -- Smoked Talbuk Venison [3/3/35]
INSERT INTO npc_vendor_template VALUES (409,27855,0,0,0); -- Mag'har Grainbread [3/3/16]
INSERT INTO npc_vendor_template VALUES (409,27860,0,0,0); -- Purified Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (409,28399,0,0,0); -- Filtered Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (409,29449,0,0,0); -- Bladespire Bagel [3/3/17]
INSERT INTO npc_vendor_template VALUES (409,29451,0,0,0); -- Clefthoof Ribs [3/3/36]

-- Total count: Templates: 9, single 0, sum 9, before: 27

-- ------------
-- Food & Drink 6
-- 982,2388,3411,3621,3881,3882,4169,4782,4875,4879,4963,5611,6928,6929,7485,7731,7733,8125,9356,11118,12196,16443,19182,24208
-- ------------
DELETE FROM npc_vendor WHERE entry IN (982,2388,3411,3621,3881,3882,4169,4782,4875,4879,4963,5611,6928,6929,7485,7731,7733,8125,9356,11118,12196,16443,19182,24208);
UPDATE creature_template SET vendor_id=410 WHERE entry IN (982,2388,3411,3621,3881,3882,4169,4782,4875,4879,4963,5611,6928,6929,7485,7731,7733,8125,9356,11118,12196,16443,19182,24208);

INSERT INTO npc_vendor_template VALUES (410,117,0,0,0); -- Tough Jerky [24/24/63]
INSERT INTO npc_vendor_template VALUES (410,159,0,0,0); -- Refreshing Spring Water [24/24/227]
INSERT INTO npc_vendor_template VALUES (410,1179,0,0,0); -- Ice Cold Milk [24/24/169]
INSERT INTO npc_vendor_template VALUES (410,1205,0,0,0); -- Melon Juice [24/24/175]
INSERT INTO npc_vendor_template VALUES (410,1645,0,0,0); -- Moonberry Juice [24/24/163]
INSERT INTO npc_vendor_template VALUES (410,1708,0,0,0); -- Sweet Nectar [24/24/164]
INSERT INTO npc_vendor_template VALUES (410,2287,0,0,0); -- Haunch of Meat [24/24/64]
INSERT INTO npc_vendor_template VALUES (410,3770,0,0,0); -- Mutton Chop [24/24/66]
INSERT INTO npc_vendor_template VALUES (410,3771,0,0,0); -- Wild Hog Shank [24/24/66]
INSERT INTO npc_vendor_template VALUES (410,4599,0,0,0); -- Cured Ham Steak [24/24/67]
INSERT INTO npc_vendor_template VALUES (410,8766,0,0,0); -- Morning Glory Dew [24/24/188]
INSERT INTO npc_vendor_template VALUES (410,8952,0,0,0); -- Roasted Quail [24/24/101]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 414,0,0,0 Dalaran Sharp [1/24/26]
-- 422,0,0,0 Dwarven Mild [1/24/27]
-- 1707,0,0,0 Stormwind Brie [1/24/26]
-- 2070,0,0,0 Darnassian Bleu [1/24/26]
-- 2593,0,0,0 Flask of Port [1/24/24]
-- 2594,0,0,0 Flagon of Mead [2/24/28]
-- 2595,0,0,0 Jug of Bourbon [1/24/24]
-- 2596,0,0,0 Skin of Dwarven Stout [1/24/24]
-- 2723,0,0,0 Bottle of Pinot Noir [1/24/24]
-- 3703,0,0,0 Southshore Stout [1/24/3]
-- 3927,0,0,0 Fine Aged Cheddar [1/24/26]
-- 4536,0,0,0 Shiny Red Apple [1/24/22]
-- 4537,0,0,0 Tel'Abim Banana [1/24/21]
-- 4538,0,0,0 Snapvine Watermelon [1/24/25]
-- 4539,0,0,0 Goldenbark Apple [1/24/25]
-- 4540,0,0,0 Tough Hunk of Bread [1/24/61]
-- 4541,0,0,0 Freshly Baked Bread [1/24/51]
-- 4542,0,0,0 Moist Cornbread [1/24/51]
-- 4544,0,0,0 Mulgore Spice Bread [1/24/51]
-- 4600,0,0,0 Cherry Grog [1/24/6]
-- 4601,0,0,0 Soft Banana Bread [1/24/51]
-- 4602,0,0,0 Moon Harvest Pumpkin [1/24/24]
-- 5483,0,0,0 Recipe: Scorpid Surprise [1/24/1]
-- 8932,0,0,0 Alterac Swiss [1/24/35]
-- 8950,0,0,0 Homemade Cherry Pie [1/24/66]
-- 8953,0,0,0 Deep Fried Plantains [1/24/41]
-- 12228,0,0,0 Recipe: Roast Raptor [1/24/6]
-- 12232,0,0,0 Recipe: Carrion Surprise [1/24/3]
-- 12239,0,0,0 Recipe: Dragonbreath Chili [1/24/3]
-- 18046,0,0,0 Recipe: Tender Wolf Steak [3/24/3]
-- 20075,0,0,0 Recipe: Heavy Crocolisk Stew [1/24/1]
-- 22324,0,0,0 Winter Kimchi [1/24/1]
-- 22776,0,0,0 Springpaw Appetizers [1/24/1]
-- 27854,0,0,0 Smoked Talbuk Venison [1/24/35]
-- 27860,0,0,0 Purified Draenic Water [1/24/51]
-- 28399,0,0,0 Filtered Draenic Water [1/24/51]
-- 29451,0,0,0 Clefthoof Ribs [1/24/36]

INSERT INTO npc_vendor VALUES (4782,414,0,0,0); -- Dalaran Sharp
INSERT INTO npc_vendor VALUES (4782,422,0,0,0); -- Dwarven Mild
INSERT INTO npc_vendor VALUES (4782,1707,0,0,0); -- Stormwind Brie
INSERT INTO npc_vendor VALUES (4782,2070,0,0,0); -- Darnassian Bleu
INSERT INTO npc_vendor VALUES (5611,2593,0,0,0); -- Flask of Port
INSERT INTO npc_vendor VALUES (4963,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (5611,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (5611,2595,0,0,0); -- Jug of Bourbon
INSERT INTO npc_vendor VALUES (5611,2596,0,0,0); -- Skin of Dwarven Stout
INSERT INTO npc_vendor VALUES (5611,2723,0,0,0); -- Bottle of Pinot Noir
INSERT INTO npc_vendor VALUES (2388,3703,0,0,0); -- Southshore Stout
INSERT INTO npc_vendor VALUES (4782,3927,0,0,0); -- Fine Aged Cheddar
INSERT INTO npc_vendor VALUES (16443,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (16443,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (16443,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (16443,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (7485,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (7485,4541,0,0,0); -- Freshly Baked Bread
INSERT INTO npc_vendor VALUES (7485,4542,0,0,0); -- Moist Cornbread
INSERT INTO npc_vendor VALUES (7485,4544,0,0,0); -- Mulgore Spice Bread
INSERT INTO npc_vendor VALUES (4782,4600,0,0,0); -- Cherry Grog
INSERT INTO npc_vendor VALUES (7485,4601,0,0,0); -- Soft Banana Bread
INSERT INTO npc_vendor VALUES (16443,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (3881,5483,0,0,0); -- Recipe: Scorpid Surprise
INSERT INTO npc_vendor VALUES (4782,8932,0,0,0); -- Alterac Swiss
INSERT INTO npc_vendor VALUES (7485,8950,0,0,0); -- Homemade Cherry Pie
INSERT INTO npc_vendor VALUES (16443,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (4879,12228,0,0,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (4879,12232,0,0,0); -- Recipe: Carrion Surprise
INSERT INTO npc_vendor VALUES (4879,12239,0,0,0); -- Recipe: Dragonbreath Chili
INSERT INTO npc_vendor VALUES (4782,18046,0,0,0); -- Recipe: Tender Wolf Steak
INSERT INTO npc_vendor VALUES (7733,18046,0,0,0); -- Recipe: Tender Wolf Steak
INSERT INTO npc_vendor VALUES (8125,18046,0,0,0); -- Recipe: Tender Wolf Steak
INSERT INTO npc_vendor VALUES (4879,20075,0,0,0); -- Recipe: Heavy Crocolisk Stew
INSERT INTO npc_vendor VALUES (11118,22324,0,0,0); -- Winter Kimchi
INSERT INTO npc_vendor VALUES (16443,22776,0,0,0); -- Springpaw Appetizers
INSERT INTO npc_vendor VALUES (19182,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (19182,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (19182,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (19182,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (2388,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (2388,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (2388,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6928,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6928,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6928,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6929,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6929,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6929,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7731,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (7731,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7731,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7733,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (7733,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7733,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (9356,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (9356,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (9356,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (11118,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (11118,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (11118,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (12196,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (12196,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (12196,21833,0,0,0); -- Cologne Bottle [added for LiitA]


-- Total count: Templates: 12, single 40, sum 52, before: 328
-- ------------
-- Food & Drink 7
-- 295,465,3298,4981,6746,6790,9501,11106,11116,16553
-- ------------
DELETE FROM npc_vendor WHERE entry IN (295,465,3298,4981,6746,6790,9501,11106,11116,16553);
UPDATE creature_template SET vendor_id=411 WHERE entry IN (295,465,3298,4981,6746,6790,9501,11106,11116,16553);

INSERT INTO npc_vendor_template VALUES (411,159,0,0,0); -- Refreshing Spring Water [10/10/227]
INSERT INTO npc_vendor_template VALUES (411,414,0,0,0); -- Dalaran Sharp [10/10/26]
INSERT INTO npc_vendor_template VALUES (411,422,0,0,0); -- Dwarven Mild [10/10/27]
INSERT INTO npc_vendor_template VALUES (411,1179,0,0,0); -- Ice Cold Milk [10/10/169]
INSERT INTO npc_vendor_template VALUES (411,1205,0,0,0); -- Melon Juice [10/10/175]
INSERT INTO npc_vendor_template VALUES (411,1645,0,0,0); -- Moonberry Juice [10/10/163]
INSERT INTO npc_vendor_template VALUES (411,1707,0,0,0); -- Stormwind Brie [10/10/26]
INSERT INTO npc_vendor_template VALUES (411,1708,0,0,0); -- Sweet Nectar [10/10/164]
INSERT INTO npc_vendor_template VALUES (411,2070,0,0,0); -- Darnassian Bleu [10/10/26]
INSERT INTO npc_vendor_template VALUES (411,3927,0,0,0); -- Fine Aged Cheddar [10/10/26]
INSERT INTO npc_vendor_template VALUES (411,8766,0,0,0); -- Morning Glory Dew [10/10/188]
INSERT INTO npc_vendor_template VALUES (411,8932,0,0,0); -- Alterac Swiss [10/10/35]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1939,0,0,0 Skin of Sweet Rum [1/10/1]
-- 2593,0,0,0 Flask of Port [1/10/24]
-- 2594,0,0,0 Flagon of Mead [1/10/28]
-- 2595,0,0,0 Jug of Bourbon [1/10/24]
-- 2596,0,0,0 Skin of Dwarven Stout [1/10/24]
-- 2723,0,0,0 Bottle of Pinot Noir [1/10/24]
-- 6948,0,0,0 Hearthstone [2/10/18]
-- 21815,10,43200,0 Love Token [2/10/18]
-- 21829,0,0,0 Perfume Bottle [2/10/18]
-- 21833,0,0,0 Cologne Bottle [2/10/18]

INSERT INTO npc_vendor VALUES (465,1939,0,0,0); -- Skin of Sweet Rum
INSERT INTO npc_vendor VALUES (465,2593,0,0,0); -- Flask of Port
INSERT INTO npc_vendor VALUES (465,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (465,2595,0,0,0); -- Jug of Bourbon
INSERT INTO npc_vendor VALUES (465,2596,0,0,0); -- Skin of Dwarven Stout
INSERT INTO npc_vendor VALUES (465,2723,0,0,0); -- Bottle of Pinot Noir
INSERT INTO npc_vendor VALUES (295,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (6790,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (295,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (6790,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (295,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (6790,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (295,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (6790,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (6746,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6746,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6746,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (9501,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (9501,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (9501,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (11106,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (11106,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (11106,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (11116,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (11116,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (11116,21833,0,0,0); -- Cologne Bottle [added for LiitA]


-- Total count: Templates: 12, single 14, sum 26, before: 134
-- ------------
-- Food & Drink 8 (Drink + Mushrooms)
-- 4554,4571,5688,6739,6741,8150,8152
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4554,4571,5688,6739,6741,8150,8152);
UPDATE creature_template SET vendor_id=412 WHERE entry IN (4554,4571,5688,6739,6741,8150,8152);

INSERT INTO npc_vendor_template VALUES (412,159,0,0,0); -- Refreshing Spring Water [7/7/227]
INSERT INTO npc_vendor_template VALUES (412,1179,0,0,0); -- Ice Cold Milk [7/7/169]
INSERT INTO npc_vendor_template VALUES (412,1205,0,0,0); -- Melon Juice [7/7/175]
INSERT INTO npc_vendor_template VALUES (412,1645,0,0,0); -- Moonberry Juice [7/7/163]
INSERT INTO npc_vendor_template VALUES (412,1708,0,0,0); -- Sweet Nectar [7/7/164]
INSERT INTO npc_vendor_template VALUES (412,4604,0,0,0); -- Forest Mushroom Cap [7/7/18]
INSERT INTO npc_vendor_template VALUES (412,4605,0,0,0); -- Red-speckled Mushroom [7/7/18]
INSERT INTO npc_vendor_template VALUES (412,4606,0,0,0); -- Spongy Morel [7/7/21]
INSERT INTO npc_vendor_template VALUES (412,4607,0,0,0); -- Delicious Cave Mold [7/7/21]
INSERT INTO npc_vendor_template VALUES (412,4608,0,0,0); -- Raw Black Truffle [7/7/21]
INSERT INTO npc_vendor_template VALUES (412,8766,0,0,0); -- Morning Glory Dew [7/7/188]
INSERT INTO npc_vendor_template VALUES (412,8948,0,0,0); -- Dried King Bolete [7/7/27]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 12233,0,0,0 Recipe: Mystery Stew [1/7/3]
-- 12240,0,0,0 Recipe: Heavy Kodo Stew [1/7/2]

INSERT INTO npc_vendor VALUES (8150,12233,0,0,0); -- Recipe: Mystery Stew
INSERT INTO npc_vendor VALUES (8150,12240,0,0,0); -- Recipe: Heavy Kodo Stew
INSERT INTO npc_vendor VALUES (5688,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (5688,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (5688,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6739,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6739,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6739,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6741,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6741,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6741,21833,0,0,0); -- Cologne Bottle [added for LiitA]

-- Total count: Templates: 12, single 2, sum 14, before: 86

-- ------------
-- Food & Drink 9 (Drink + Fruit)
-- 734,3934,6735,7714,16542,21145,23573
-- ------------
DELETE FROM npc_vendor WHERE entry IN (734,3934,6735,7714,16542,21145,23573);
UPDATE creature_template SET vendor_id=413 WHERE entry IN (734,3934,6735,7714,16542,21145,23573);

INSERT INTO npc_vendor_template VALUES (413,159,0,0,0); -- Refreshing Spring Water [7/7/227]
INSERT INTO npc_vendor_template VALUES (413,1179,0,0,0); -- Ice Cold Milk [7/7/169]
INSERT INTO npc_vendor_template VALUES (413,1205,0,0,0); -- Melon Juice [7/7/175]
INSERT INTO npc_vendor_template VALUES (413,1645,0,0,0); -- Moonberry Juice [7/7/163]
INSERT INTO npc_vendor_template VALUES (413,1708,0,0,0); -- Sweet Nectar [7/7/164]
INSERT INTO npc_vendor_template VALUES (413,4536,0,0,0); -- Shiny Red Apple [7/7/22]
INSERT INTO npc_vendor_template VALUES (413,4537,0,0,0); -- Tel'Abim Banana [7/7/21]
INSERT INTO npc_vendor_template VALUES (413,4538,0,0,0); -- Snapvine Watermelon [7/7/25]
INSERT INTO npc_vendor_template VALUES (413,4539,0,0,0); -- Goldenbark Apple [7/7/25]
INSERT INTO npc_vendor_template VALUES (413,4602,0,0,0); -- Moon Harvest Pumpkin [7/7/24]
INSERT INTO npc_vendor_template VALUES (413,8766,0,0,0); -- Morning Glory Dew [7/7/188]
INSERT INTO npc_vendor_template VALUES (413,8953,0,0,0); -- Deep Fried Plantains [7/7/41]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2515,0,0,0 Sharp Arrow [1/7/104]
-- 2519,0,0,0 Heavy Shot [1/7/84]
-- 3030,0,0,0 Razor Arrow [1/7/75]
-- 3033,0,0,0 Solid Shot [1/7/61]
-- 4470,0,0,0 Simple Wood [1/7/132]
-- 4471,0,0,0 Flint and Tinder [1/7/85]
-- 4497,0,0,0 Heavy Brown Bag [1/7/55]
-- 4498,0,0,0 Brown Leather Satchel [1/7/82]
-- 11284,0,0,0 Accurate Slugs [1/7/95]
-- 11285,0,0,0 Jagged Arrow [1/7/100]
-- 12228,0,0,0 Recipe: Roast Raptor [1/7/6]
-- 12231,0,0,0 Recipe: Jungle Stew [1/7/2]
-- 25873,0,0,0 Keen Throwing Knife [1/7/51]
-- 25875,0,0,0 Deadly Throwing Axe [1/7/45]
-- 25876,0,0,0 Gleaming Throwing Axe [1/7/39]
-- 28053,0,0,0 Wicked Arrow [1/7/100]
-- 28060,0,0,0 Impact Shot [1/7/89]
-- 29009,0,0,0 Heavy Throwing Dagger [1/7/41]
-- 29010,0,0,0 Wicked Throwing Dagger [1/7/34]
-- 29013,0,0,0 Jagged Throwing Axe [1/7/73]
-- 29014,0,0,0 Blacksteel Throwing Dagger [1/7/72]

INSERT INTO npc_vendor VALUES (734,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (734,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (734,3030,0,0,0); -- Razor Arrow
INSERT INTO npc_vendor VALUES (734,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (734,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (734,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (734,4497,0,0,0); -- Heavy Brown Bag
INSERT INTO npc_vendor VALUES (734,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (734,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (734,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (734,12228,0,0,0); -- Recipe: Roast Raptor
INSERT INTO npc_vendor VALUES (734,12231,0,0,0); -- Recipe: Jungle Stew
INSERT INTO npc_vendor VALUES (734,25873,0,0,0); -- Keen Throwing Knife
INSERT INTO npc_vendor VALUES (734,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (734,25876,0,0,0); -- Gleaming Throwing Axe
INSERT INTO npc_vendor VALUES (734,28053,0,0,0); -- Wicked Arrow
INSERT INTO npc_vendor VALUES (734,28060,0,0,0); -- Impact Shot
INSERT INTO npc_vendor VALUES (734,29009,0,0,0); -- Heavy Throwing Dagger
INSERT INTO npc_vendor VALUES (734,29010,0,0,0); -- Wicked Throwing Dagger
INSERT INTO npc_vendor VALUES (734,29013,0,0,0); -- Jagged Throwing Axe
INSERT INTO npc_vendor VALUES (734,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (3934,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (3934,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (3934,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6735,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6735,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6735,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7714,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (7714,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7714,21833,0,0,0); -- Cologne Bottle [added for LiitA]

-- Total count: Templates: 12, single 21, sum 33, before: 105

-- ------------
-- Food & Drink 10 (Drink + Fish)
-- 5814,6727,6791,6807,8137,8931,14731
-- ------------
DELETE FROM npc_vendor WHERE entry IN (5814,6727,6791,6807,8137,8931,14731);
UPDATE creature_template SET vendor_id=414 WHERE entry IN (5814,6727,6791,6807,8137,8931,14731);

INSERT INTO npc_vendor_template VALUES (414,159,0,0,0); -- Refreshing Spring Water [7/7/227]
INSERT INTO npc_vendor_template VALUES (414,787,0,0,0); -- Slitherskin Mackerel [7/7/30]
INSERT INTO npc_vendor_template VALUES (414,1179,0,0,0); -- Ice Cold Milk [7/7/169]
INSERT INTO npc_vendor_template VALUES (414,1205,0,0,0); -- Melon Juice [7/7/175]
INSERT INTO npc_vendor_template VALUES (414,1645,0,0,0); -- Moonberry Juice [7/7/163]
INSERT INTO npc_vendor_template VALUES (414,1708,0,0,0); -- Sweet Nectar [7/7/164]
INSERT INTO npc_vendor_template VALUES (414,4592,0,0,0); -- Longjaw Mud Snapper [7/7/30]
INSERT INTO npc_vendor_template VALUES (414,4593,0,0,0); -- Bristle Whisker Catfish [7/7/31]
INSERT INTO npc_vendor_template VALUES (414,4594,0,0,0); -- Rockscale Cod [7/7/30]
INSERT INTO npc_vendor_template VALUES (414,8766,0,0,0); -- Morning Glory Dew [7/7/188]
INSERT INTO npc_vendor_template VALUES (414,8957,0,0,0); -- Spinefin Halibut [7/7/35]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4536,0,0,0 Shiny Red Apple [1/7/22]
-- 4537,0,0,0 Tel'Abim Banana [1/7/21]
-- 4538,0,0,0 Snapvine Watermelon [1/7/25]
-- 4539,0,0,0 Goldenbark Apple [1/7/25]
-- 4602,0,0,0 Moon Harvest Pumpkin [1/7/24]
-- 6887,0,0,0 Spotted Yellowtail [2/7/16]
-- 6948,0,0,0 Hearthstone [2/7/18]
-- 8953,0,0,0 Deep Fried Plantains [1/7/41]
-- 13939,0,0,0 Recipe: Spotted Yellowtail [1/7/1]
-- 13942,0,0,0 Recipe: Grilled Squid [1/7/1]
-- 13945,0,0,0 Recipe: Nightfin Soup [1/7/1]
-- 13946,0,0,0 Recipe: Poached Sunscale Salmon [1/7/1]
-- 21552,0,0,0 Striped Yellowtail [5/7/14]
-- 21552,5,43200,0 Striped Yellowtail [2/7/16]
-- 21815,10,43200,0 Love Token [2/7/18]
-- 21829,0,0,0 Perfume Bottle [2/7/18]
-- 21833,0,0,0 Cologne Bottle [2/7/18]

INSERT INTO npc_vendor VALUES (5814,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (5814,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (5814,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (5814,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (5814,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (6727,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (8931,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (6727,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (8931,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (5814,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (8137,13939,0,0,0); -- Recipe: Spotted Yellowtail
INSERT INTO npc_vendor VALUES (8137,13942,0,0,0); -- Recipe: Grilled Squid
INSERT INTO npc_vendor VALUES (8137,13945,0,0,0); -- Recipe: Nightfin Soup
INSERT INTO npc_vendor VALUES (8137,13946,0,0,0); -- Recipe: Poached Sunscale Salmon
INSERT INTO npc_vendor VALUES (5814,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (6791,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (6807,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (8137,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (14731,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (6727,21552,5,43200,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (8931,21552,5,43200,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (5814,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6727,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (8931,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (5814,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6727,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (8931,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (5814,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6727,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (8931,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (6791,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6791,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6791,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6807,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6807,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6807,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (14731,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (14731,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (14731,21833,0,0,0); -- Cologne Bottle [added for LiitA]


-- Total count: Templates: 11, single 27, sum 38, before: 104

-- ------------
-- Food & Drink 11 (Drink + Bread)
-- 1247,2832,3086,3689,3708,3883,3884,3937,3959,4190,6736,6740,6747,6776,7737,7744,8143,8999,16256
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1247,2832,3086,3689,3708,3883,3884,3937,3959,4190,6736,6740,6747,6776,7737,7744,8143,8999,16256);
UPDATE creature_template SET vendor_id=415 WHERE entry IN (1247,2832,3086,3689,3708,3883,3884,3937,3959,4190,6736,6740,6747,6776,7737,7744,8143,8999,16256);

INSERT INTO npc_vendor_template VALUES (415,159,0,0,0); -- Refreshing Spring Water [19/19/227]
INSERT INTO npc_vendor_template VALUES (415,1179,0,0,0); -- Ice Cold Milk [19/19/169]
INSERT INTO npc_vendor_template VALUES (415,1205,0,0,0); -- Melon Juice [19/19/175]
INSERT INTO npc_vendor_template VALUES (415,1645,0,0,0); -- Moonberry Juice [19/19/163]
INSERT INTO npc_vendor_template VALUES (415,1708,0,0,0); -- Sweet Nectar [19/19/164]
INSERT INTO npc_vendor_template VALUES (415,4540,0,0,0); -- Tough Hunk of Bread [19/19/61]
INSERT INTO npc_vendor_template VALUES (415,4541,0,0,0); -- Freshly Baked Bread [19/19/51]
INSERT INTO npc_vendor_template VALUES (415,4542,0,0,0); -- Moist Cornbread [19/19/51]
INSERT INTO npc_vendor_template VALUES (415,4544,0,0,0); -- Mulgore Spice Bread [19/19/51]
INSERT INTO npc_vendor_template VALUES (415,4601,0,0,0); -- Soft Banana Bread [19/19/51]
INSERT INTO npc_vendor_template VALUES (415,8766,0,0,0); -- Morning Glory Dew [19/19/188]
INSERT INTO npc_vendor_template VALUES (415,8950,0,0,0); -- Homemade Cherry Pie [19/19/66]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 787,0,0,0 Slitherskin Mackerel [1/19/30]
-- 2593,0,0,0 Flask of Port [1/19/24]
-- 2594,0,0,0 Flagon of Mead [1/19/28]
-- 2595,0,0,0 Jug of Bourbon [1/19/24]
-- 2596,0,0,0 Skin of Dwarven Stout [1/19/24]
-- 2686,0,0,0 Thunder Ale [3/19/4]
-- 2723,0,0,0 Bottle of Pinot Noir [1/19/24]
-- 2894,0,0,0 Rhapsody Malt [3/19/4]
-- 4592,0,0,0 Longjaw Mud Snapper [1/19/30]
-- 4593,0,0,0 Bristle Whisker Catfish [1/19/31]
-- 4594,0,0,0 Rockscale Cod [1/19/30]
-- 4595,0,0,0 Junglevine Wine [1/19/1]
-- 4600,0,0,0 Cherry Grog [1/19/6]
-- 6887,0,0,0 Spotted Yellowtail [1/19/16]
-- 6948,0,0,0 Hearthstone [3/19/18]
-- 8957,0,0,0 Spinefin Halibut [1/19/35]
-- 21552,5,43200,0 Striped Yellowtail [1/19/16]
-- 21815,10,43200,0 Love Token [2/19/18]
-- 21829,0,0,0 Perfume Bottle [2/19/18]
-- 21833,0,0,0 Cologne Bottle [2/19/18]

INSERT INTO npc_vendor VALUES (3086,787,0,0,0); -- Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (2832,2593,0,0,0); -- Flask of Port
INSERT INTO npc_vendor VALUES (2832,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (2832,2595,0,0,0); -- Jug of Bourbon
INSERT INTO npc_vendor VALUES (2832,2596,0,0,0); -- Skin of Dwarven Stout
INSERT INTO npc_vendor VALUES (1247,2686,0,0,0); -- Thunder Ale
INSERT INTO npc_vendor VALUES (7744,2686,0,0,0); -- Thunder Ale
INSERT INTO npc_vendor VALUES (8999,2686,0,0,0); -- Thunder Ale
INSERT INTO npc_vendor VALUES (2832,2723,0,0,0); -- Bottle of Pinot Noir
INSERT INTO npc_vendor VALUES (1247,2894,0,0,0); -- Rhapsody Malt
INSERT INTO npc_vendor VALUES (7744,2894,0,0,0); -- Rhapsody Malt
INSERT INTO npc_vendor VALUES (8999,2894,0,0,0); -- Rhapsody Malt
INSERT INTO npc_vendor VALUES (3086,4592,0,0,0); -- Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (3086,4593,0,0,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (3086,4594,0,0,0); -- Rockscale Cod
INSERT INTO npc_vendor VALUES (2832,4595,0,0,0); -- Junglevine Wine
INSERT INTO npc_vendor VALUES (2832,4600,0,0,0); -- Cherry Grog
INSERT INTO npc_vendor VALUES (3086,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (1247,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (7744,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (8999,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (3086,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (3086,21552,5,43200,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (1247,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (7744,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (1247,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (7744,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (1247,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (7744,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (6736,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6736,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6736,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6740,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6740,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6740,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6747,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (6747,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (6747,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7737,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (7737,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (7737,21833,0,0,0); -- Cologne Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (16256,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (16256,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (16256,21833,0,0,0); -- Cologne Bottle [added for LiitA]


-- Total count: Templates: 12, single 29, sum 41, before: 257

-- ------------
-- Food & Drink 12
-- 19232,21744,21746
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19232,21744,21746);
UPDATE creature_template SET vendor_id=416 WHERE entry IN (19232,21744,21746);

INSERT INTO npc_vendor_template VALUES (416,8766,0,0,0); -- Morning Glory Dew [3/3/188]
INSERT INTO npc_vendor_template VALUES (416,8932,0,0,0); -- Alterac Swiss [3/3/35]
INSERT INTO npc_vendor_template VALUES (416,8950,0,0,0); -- Homemade Cherry Pie [3/3/66]
INSERT INTO npc_vendor_template VALUES (416,8953,0,0,0); -- Deep Fried Plantains [3/3/41]
INSERT INTO npc_vendor_template VALUES (416,27855,0,0,0); -- Mag'har Grainbread [3/3/16]
INSERT INTO npc_vendor_template VALUES (416,27856,0,0,0); -- Skethyl Berries [3/3/15]
INSERT INTO npc_vendor_template VALUES (416,27857,0,0,0); -- Garadar Sharp [3/3/11]
INSERT INTO npc_vendor_template VALUES (416,27860,0,0,0); -- Purified Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (416,28399,0,0,0); -- Filtered Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (416,29448,0,0,0); -- Mag'har Mild Cheese [3/3/11]
INSERT INTO npc_vendor_template VALUES (416,29449,0,0,0); -- Bladespire Bagel [3/3/17]
INSERT INTO npc_vendor_template VALUES (416,29450,0,0,0); -- Telaari Grapes [3/3/16]

-- Total count: Templates: 12, single 0, sum 12, before: 36

-- ------------
-- Food & Drink 13
-- 4167,4181,4266,6091,12019,12026
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4167,4181,4266,6091,12019,12026);
UPDATE creature_template SET vendor_id=417 WHERE entry IN (4167,4181,4266,6091,12019,12026);

INSERT INTO npc_vendor_template VALUES (417,159,0,0,0); -- Refreshing Spring Water [6/6/227]
INSERT INTO npc_vendor_template VALUES (417,1179,0,0,0); -- Ice Cold Milk [6/6/169]
INSERT INTO npc_vendor_template VALUES (417,1205,0,0,0); -- Melon Juice [6/6/175]
INSERT INTO npc_vendor_template VALUES (417,1645,0,0,0); -- Moonberry Juice [6/6/163]
INSERT INTO npc_vendor_template VALUES (417,1708,0,0,0); -- Sweet Nectar [6/6/164]
INSERT INTO npc_vendor_template VALUES (417,8766,0,0,0); -- Morning Glory Dew [6/6/188]
INSERT INTO npc_vendor_template VALUES (417,16166,0,0,0); -- Bean Soup [6/6/12]
INSERT INTO npc_vendor_template VALUES (417,16167,0,0,0); -- Versicolor Treat [6/6/12]
INSERT INTO npc_vendor_template VALUES (417,16168,0,0,0); -- Heaven Peach [6/6/12]
INSERT INTO npc_vendor_template VALUES (417,16169,0,0,0); -- Wild Ricecake [6/6/12]
INSERT INTO npc_vendor_template VALUES (417,16170,0,0,0); -- Steamed Mandu [6/6/12]
INSERT INTO npc_vendor_template VALUES (417,21030,0,0,0); -- Darnassus Kimchi Pie [6/6/6]
INSERT INTO npc_vendor_template VALUES (417,21031,0,0,0); -- Cabbage Kimchi [6/6/6]
INSERT INTO npc_vendor_template VALUES (417,21033,0,0,0); -- Radish Kimchi [6/6/6]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4540,0,0,0 Tough Hunk of Bread [1/6/61]
-- 4541,0,0,0 Freshly Baked Bread [1/6/51]
-- 4542,0,0,0 Moist Cornbread [1/6/51]
-- 4544,0,0,0 Mulgore Spice Bread [1/6/51]
-- 4601,0,0,0 Soft Banana Bread [1/6/51]
-- 8950,0,0,0 Homemade Cherry Pie [1/6/66]

INSERT INTO npc_vendor VALUES (4266,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (4266,4541,0,0,0); -- Freshly Baked Bread
INSERT INTO npc_vendor VALUES (4266,4542,0,0,0); -- Moist Cornbread
INSERT INTO npc_vendor VALUES (4266,4544,0,0,0); -- Mulgore Spice Bread
INSERT INTO npc_vendor VALUES (4266,4601,0,0,0); -- Soft Banana Bread
INSERT INTO npc_vendor VALUES (4266,8950,0,0,0); -- Homemade Cherry Pie

-- Total count: Templates: 14, single 6, sum 20, before: 90

-- ------------
-- Food & Drink 14
-- 6272,6734,6737,6738,11103,16458
-- ------------
DELETE FROM npc_vendor WHERE entry IN (6272,6734,6737,6738,11103,16458);
UPDATE creature_template SET vendor_id=418 WHERE entry IN (6272,6734,6737,6738,11103,16458);

INSERT INTO npc_vendor_template VALUES (418,159,0,0,0); -- Refreshing Spring Water [6/6/227]
INSERT INTO npc_vendor_template VALUES (418,1179,0,0,0); -- Ice Cold Milk [6/6/169]
INSERT INTO npc_vendor_template VALUES (418,1205,0,0,0); -- Melon Juice [6/6/175]
INSERT INTO npc_vendor_template VALUES (418,1645,0,0,0); -- Moonberry Juice [6/6/163]
INSERT INTO npc_vendor_template VALUES (418,1708,0,0,0); -- Sweet Nectar [6/6/164]
INSERT INTO npc_vendor_template VALUES (418,4540,0,0,0); -- Tough Hunk of Bread [6/6/61]
INSERT INTO npc_vendor_template VALUES (418,4541,0,0,0); -- Freshly Baked Bread [6/6/51]
INSERT INTO npc_vendor_template VALUES (418,4542,0,0,0); -- Moist Cornbread [6/6/51]
INSERT INTO npc_vendor_template VALUES (418,4544,0,0,0); -- Mulgore Spice Bread [6/6/51]
INSERT INTO npc_vendor_template VALUES (418,4601,0,0,0); -- Soft Banana Bread [6/6/51]
INSERT INTO npc_vendor_template VALUES (418,8766,0,0,0); -- Morning Glory Dew [6/6/188]
INSERT INTO npc_vendor_template VALUES (418,8950,0,0,0); -- Homemade Cherry Pie [6/6/66]
INSERT INTO npc_vendor_template VALUES (418,21815,10,43200,0); -- Love Token [6/6/18]
INSERT INTO npc_vendor_template VALUES (418,21829,0,0,0); -- Perfume Bottle [6/6/18]
INSERT INTO npc_vendor_template VALUES (418,21833,0,0,0); -- Cologne Bottle [6/6/18]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 787,5,43200,0 Slitherskin Mackerel [1/6/1]
-- 4592,5,43200,0 Longjaw Mud Snapper [1/6/1]
-- 4593,5,43200,0 Bristle Whisker Catfish [1/6/1]
-- 4594,5,43200,0 Rockscale Cod [1/6/1]
-- 6948,0,0,0 Hearthstone [5/6/18]
-- 8957,5,43200,0 Spinefin Halibut [1/6/1]
-- 21552,5,43200,0 Striped Yellowtail [1/6/16]

INSERT INTO npc_vendor VALUES (6738,787,5,43200,0); -- Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (6738,4592,5,43200,0); -- Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (6738,4593,5,43200,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (6738,4594,5,43200,0); -- Rockscale Cod
INSERT INTO npc_vendor VALUES (6272,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (6734,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (6737,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (6738,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (11103,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (6738,8957,5,43200,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (6738,21552,5,43200,0); -- Striped Yellowtail

-- Total count: Templates: 15, single 11, sum 26, before: 101

-- ------------
-- Food & Drink 15 (Meat, Drink, Fish)
-- 11187,16618,16739,17553,17656
-- ------------
DELETE FROM npc_vendor WHERE entry IN (11187,16618,16739,17553,17656);
UPDATE creature_template SET vendor_id=419 WHERE entry IN (11187,16618,16739,17553,17656);

INSERT INTO npc_vendor_template VALUES (419,117,0,0,0); -- Tough Jerky [5/5/63]
INSERT INTO npc_vendor_template VALUES (419,159,0,0,0); -- Refreshing Spring Water [5/5/227]
INSERT INTO npc_vendor_template VALUES (419,787,0,0,0); -- Slitherskin Mackerel [5/5/30]
INSERT INTO npc_vendor_template VALUES (419,1179,0,0,0); -- Ice Cold Milk [5/5/169]
INSERT INTO npc_vendor_template VALUES (419,1205,0,0,0); -- Melon Juice [5/5/175]
INSERT INTO npc_vendor_template VALUES (419,1645,0,0,0); -- Moonberry Juice [5/5/163]
INSERT INTO npc_vendor_template VALUES (419,1708,0,0,0); -- Sweet Nectar [5/5/164]
INSERT INTO npc_vendor_template VALUES (419,2287,0,0,0); -- Haunch of Meat [5/5/64]
INSERT INTO npc_vendor_template VALUES (419,3770,0,0,0); -- Mutton Chop [5/5/66]
INSERT INTO npc_vendor_template VALUES (419,3771,0,0,0); -- Wild Hog Shank [5/5/66]
INSERT INTO npc_vendor_template VALUES (419,4592,0,0,0); -- Longjaw Mud Snapper [5/5/30]
INSERT INTO npc_vendor_template VALUES (419,4593,0,0,0); -- Bristle Whisker Catfish [5/5/31]
INSERT INTO npc_vendor_template VALUES (419,4594,0,0,0); -- Rockscale Cod [5/5/30]
INSERT INTO npc_vendor_template VALUES (419,4599,0,0,0); -- Cured Ham Steak [5/5/67]
INSERT INTO npc_vendor_template VALUES (419,8766,0,0,0); -- Morning Glory Dew [5/5/188]
INSERT INTO npc_vendor_template VALUES (419,8952,0,0,0); -- Roasted Quail [5/5/101]
INSERT INTO npc_vendor_template VALUES (419,8957,0,0,0); -- Spinefin Halibut [5/5/35]
INSERT INTO npc_vendor_template VALUES (419,21552,0,0,0); -- Striped Yellowtail [5/5/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2593,0,0,0 Flask of Port [1/5/24]
-- 2594,0,0,0 Flagon of Mead [1/5/28]
-- 2595,0,0,0 Jug of Bourbon [1/5/24]
-- 2596,0,0,0 Skin of Dwarven Stout [1/5/24]
-- 2723,0,0,0 Bottle of Pinot Noir [1/5/24]
-- 4540,0,0,0 Tough Hunk of Bread [1/5/61]
-- 4541,0,0,0 Freshly Baked Bread [1/5/51]
-- 4542,0,0,0 Moist Cornbread [1/5/51]
-- 4544,0,0,0 Mulgore Spice Bread [1/5/51]
-- 4601,0,0,0 Soft Banana Bread [1/5/51]
-- 4604,0,0,0 Forest Mushroom Cap [1/5/18]
-- 4605,0,0,0 Red-speckled Mushroom [1/5/18]
-- 4606,0,0,0 Spongy Morel [1/5/21]
-- 4607,0,0,0 Delicious Cave Mold [1/5/21]
-- 4608,0,0,0 Raw Black Truffle [1/5/21]
-- 8948,0,0,0 Dried King Bolete [1/5/27]
-- 8950,0,0,0 Homemade Cherry Pie [1/5/66]
-- 16110,0,0,0 Recipe: Monster Omelet [1/5/3]

INSERT INTO npc_vendor VALUES (17553,2593,0,0,0); -- Flask of Port
INSERT INTO npc_vendor VALUES (17553,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (17553,2595,0,0,0); -- Jug of Bourbon
INSERT INTO npc_vendor VALUES (17553,2596,0,0,0); -- Skin of Dwarven Stout
INSERT INTO npc_vendor VALUES (17553,2723,0,0,0); -- Bottle of Pinot Noir
INSERT INTO npc_vendor VALUES (16739,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (16739,4541,0,0,0); -- Freshly Baked Bread
INSERT INTO npc_vendor VALUES (16739,4542,0,0,0); -- Moist Cornbread
INSERT INTO npc_vendor VALUES (16739,4544,0,0,0); -- Mulgore Spice Bread
INSERT INTO npc_vendor VALUES (16739,4601,0,0,0); -- Soft Banana Bread
INSERT INTO npc_vendor VALUES (17656,4604,0,0,0); -- Forest Mushroom Cap
INSERT INTO npc_vendor VALUES (17656,4605,0,0,0); -- Red-speckled Mushroom
INSERT INTO npc_vendor VALUES (17656,4606,0,0,0); -- Spongy Morel
INSERT INTO npc_vendor VALUES (17656,4607,0,0,0); -- Delicious Cave Mold
INSERT INTO npc_vendor VALUES (17656,4608,0,0,0); -- Raw Black Truffle
INSERT INTO npc_vendor VALUES (17656,8948,0,0,0); -- Dried King Bolete
INSERT INTO npc_vendor VALUES (16739,8950,0,0,0); -- Homemade Cherry Pie
INSERT INTO npc_vendor VALUES (11187,16110,0,0,0); -- Recipe: Monster Omelet

-- Total count: Templates: 18, single 18, sum 36, before: 108

-- ------------
-- Food & Drink 16 (Food, Drink, Cheese)
-- 4255,5620,10367,17630
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4255,5620,10367,17630);
UPDATE creature_template SET vendor_id=420 WHERE entry IN (4255,5620,10367,17630);

INSERT INTO npc_vendor_template VALUES (420,117,0,0,0); -- Tough Jerky [4/4/63]
INSERT INTO npc_vendor_template VALUES (420,159,0,0,0); -- Refreshing Spring Water [4/4/227]
INSERT INTO npc_vendor_template VALUES (420,414,0,0,0); -- Dalaran Sharp [4/4/26]
INSERT INTO npc_vendor_template VALUES (420,422,0,0,0); -- Dwarven Mild [4/4/27]
INSERT INTO npc_vendor_template VALUES (420,1179,0,0,0); -- Ice Cold Milk [4/4/169]
INSERT INTO npc_vendor_template VALUES (420,1205,0,0,0); -- Melon Juice [4/4/175]
INSERT INTO npc_vendor_template VALUES (420,1645,0,0,0); -- Moonberry Juice [4/4/163]
INSERT INTO npc_vendor_template VALUES (420,1707,0,0,0); -- Stormwind Brie [4/4/26]
INSERT INTO npc_vendor_template VALUES (420,1708,0,0,0); -- Sweet Nectar [4/4/164]
INSERT INTO npc_vendor_template VALUES (420,2070,0,0,0); -- Darnassian Bleu [4/4/26]
INSERT INTO npc_vendor_template VALUES (420,2287,0,0,0); -- Haunch of Meat [4/4/64]
INSERT INTO npc_vendor_template VALUES (420,3770,0,0,0); -- Mutton Chop [4/4/66]
INSERT INTO npc_vendor_template VALUES (420,3771,0,0,0); -- Wild Hog Shank [4/4/66]
INSERT INTO npc_vendor_template VALUES (420,3927,0,0,0); -- Fine Aged Cheddar [4/4/26]
INSERT INTO npc_vendor_template VALUES (420,4540,0,0,0); -- Tough Hunk of Bread [4/4/61]
INSERT INTO npc_vendor_template VALUES (420,4541,0,0,0); -- Freshly Baked Bread [4/4/51]
INSERT INTO npc_vendor_template VALUES (420,4542,0,0,0); -- Moist Cornbread [4/4/51]
INSERT INTO npc_vendor_template VALUES (420,4544,0,0,0); -- Mulgore Spice Bread [4/4/51]
INSERT INTO npc_vendor_template VALUES (420,4599,0,0,0); -- Cured Ham Steak [4/4/67]
INSERT INTO npc_vendor_template VALUES (420,4601,0,0,0); -- Soft Banana Bread [4/4/51]
INSERT INTO npc_vendor_template VALUES (420,8766,0,0,0); -- Morning Glory Dew [4/4/188]
INSERT INTO npc_vendor_template VALUES (420,8932,0,0,0); -- Alterac Swiss [4/4/35]
INSERT INTO npc_vendor_template VALUES (420,8950,0,0,0); -- Homemade Cherry Pie [4/4/66]
INSERT INTO npc_vendor_template VALUES (420,8952,0,0,0); -- Roasted Quail [4/4/101]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 787,0,0,0 Slitherskin Mackerel [2/4/30]
-- 4536,0,0,0 Shiny Red Apple [2/4/22]
-- 4537,0,0,0 Tel'Abim Banana [2/4/21]
-- 4538,0,0,0 Snapvine Watermelon [2/4/25]
-- 4539,0,0,0 Goldenbark Apple [2/4/25]
-- 4592,0,0,0 Longjaw Mud Snapper [2/4/30]
-- 4593,0,0,0 Bristle Whisker Catfish [2/4/31]
-- 4594,0,0,0 Rockscale Cod [2/4/30]
-- 4602,0,0,0 Moon Harvest Pumpkin [2/4/24]
-- 4604,0,0,0 Forest Mushroom Cap [1/4/18]
-- 4605,0,0,0 Red-speckled Mushroom [1/4/18]
-- 4606,0,0,0 Spongy Morel [1/4/21]
-- 4607,0,0,0 Delicious Cave Mold [1/4/21]
-- 4608,0,0,0 Raw Black Truffle [1/4/21]
-- 6887,0,0,0 Spotted Yellowtail [2/4/16]
-- 8948,0,0,0 Dried King Bolete [1/4/27]
-- 8953,0,0,0 Deep Fried Plantains [2/4/41]
-- 8957,0,0,0 Spinefin Halibut [2/4/35]
-- 21552,5,43200,0 Striped Yellowtail [2/4/16]
-- 27860,0,0,0 Purified Draenic Water [1/4/51]
-- 28399,0,0,0 Filtered Draenic Water [1/4/51]

INSERT INTO npc_vendor VALUES (4255,787,0,0,0); -- Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (10367,787,0,0,0); -- Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (4255,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (17630,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (4255,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (17630,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (4255,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (17630,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (4255,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (17630,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (4255,4592,0,0,0); -- Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (10367,4592,0,0,0); -- Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (4255,4593,0,0,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (10367,4593,0,0,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (4255,4594,0,0,0); -- Rockscale Cod
INSERT INTO npc_vendor VALUES (10367,4594,0,0,0); -- Rockscale Cod
INSERT INTO npc_vendor VALUES (4255,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (17630,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (10367,4604,0,0,0); -- Forest Mushroom Cap
INSERT INTO npc_vendor VALUES (10367,4605,0,0,0); -- Red-speckled Mushroom
INSERT INTO npc_vendor VALUES (10367,4606,0,0,0); -- Spongy Morel
INSERT INTO npc_vendor VALUES (10367,4607,0,0,0); -- Delicious Cave Mold
INSERT INTO npc_vendor VALUES (10367,4608,0,0,0); -- Raw Black Truffle
INSERT INTO npc_vendor VALUES (4255,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (10367,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (10367,8948,0,0,0); -- Dried King Bolete
INSERT INTO npc_vendor VALUES (4255,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (17630,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (4255,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (10367,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (4255,21552,5,43200,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (10367,21552,5,43200,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (17630,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (17630,28399,0,0,0); -- Filtered Draenic Water

-- Total count: Templates: 24, single 34, sum 58, before: 130

-- ------------
-- Food & Drink 17
-- 19296,20916,21110
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19296,20916,21110);
UPDATE creature_template SET vendor_id=421 WHERE entry IN (19296,20916,21110);

INSERT INTO npc_vendor_template VALUES (421,8766,0,0,0); -- Morning Glory Dew [3/3/188]
INSERT INTO npc_vendor_template VALUES (421,8932,0,0,0); -- Alterac Swiss [3/3/35]
INSERT INTO npc_vendor_template VALUES (421,27857,0,0,0); -- Garadar Sharp [3/3/11]
INSERT INTO npc_vendor_template VALUES (421,27860,0,0,0); -- Purified Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (421,28399,0,0,0); -- Filtered Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (421,29448,0,0,0); -- Mag'har Mild Cheese [3/3/11]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 8957,0,0,0 Spinefin Halibut [1/3/35]
-- 21815,10,43200,0 Love Token [1/3/18]
-- 21829,0,0,0 Perfume Bottle [1/3/18]
-- 21833,0,0,0 Cologne Bottle [1/3/18]
-- 27699,0,0,0 Recipe: Golden Fish Sticks [1/3/2]
-- 27700,0,0,0 Recipe: Spicy Crawdad [1/3/2]
-- 27858,0,0,0 Sunspring Carp [1/3/6]
-- 29452,0,0,0 Zangar Trout [1/3/6]
-- 31674,1,43200,0 Recipe: Crunchy Serpent [1/3/1]
-- 31675,1,43200,0 Recipe: Mok'Nathal Shortribs [1/3/1]

INSERT INTO npc_vendor VALUES (19296,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (21110,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (21110,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (21110,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (19296,27699,0,0,0); -- Recipe: Golden Fish Sticks
INSERT INTO npc_vendor VALUES (19296,27700,0,0,0); -- Recipe: Spicy Crawdad
INSERT INTO npc_vendor VALUES (19296,27858,0,0,0); -- Sunspring Carp
INSERT INTO npc_vendor VALUES (19296,29452,0,0,0); -- Zangar Trout
INSERT INTO npc_vendor VALUES (20916,31674,1,43200,0); -- Recipe: Crunchy Serpent
INSERT INTO npc_vendor VALUES (20916,31675,1,43200,0); -- Recipe: Mok'Nathal Shortribs

-- Total count: Templates: 6, single 10, sum 16, before: 28

-- ------------
-- Food & Drink 18 (Meat, Cheese, Bread)
-- 4891,4894
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4891,4894);
UPDATE creature_template SET vendor_id=422 WHERE entry IN (4891,4894);

INSERT INTO npc_vendor_template VALUES (422,117,0,0,0); -- Tough Jerky [2/2/63]
INSERT INTO npc_vendor_template VALUES (422,414,0,0,0); -- Dalaran Sharp [2/2/26]
INSERT INTO npc_vendor_template VALUES (422,422,0,0,0); -- Dwarven Mild [2/2/27]
INSERT INTO npc_vendor_template VALUES (422,1707,0,0,0); -- Stormwind Brie [2/2/26]
INSERT INTO npc_vendor_template VALUES (422,2070,0,0,0); -- Darnassian Bleu [2/2/26]
INSERT INTO npc_vendor_template VALUES (422,2287,0,0,0); -- Haunch of Meat [2/2/64]
INSERT INTO npc_vendor_template VALUES (422,3770,0,0,0); -- Mutton Chop [2/2/66]
INSERT INTO npc_vendor_template VALUES (422,3771,0,0,0); -- Wild Hog Shank [2/2/66]
INSERT INTO npc_vendor_template VALUES (422,3927,0,0,0); -- Fine Aged Cheddar [2/2/26]
INSERT INTO npc_vendor_template VALUES (422,4540,0,0,0); -- Tough Hunk of Bread [2/2/61]
INSERT INTO npc_vendor_template VALUES (422,4541,0,0,0); -- Freshly Baked Bread [2/2/51]
INSERT INTO npc_vendor_template VALUES (422,4542,0,0,0); -- Moist Cornbread [2/2/51]
INSERT INTO npc_vendor_template VALUES (422,4544,0,0,0); -- Mulgore Spice Bread [2/2/51]
INSERT INTO npc_vendor_template VALUES (422,4599,0,0,0); -- Cured Ham Steak [2/2/67]
INSERT INTO npc_vendor_template VALUES (422,4601,0,0,0); -- Soft Banana Bread [2/2/51]
INSERT INTO npc_vendor_template VALUES (422,8932,0,0,0); -- Alterac Swiss [2/2/35]
INSERT INTO npc_vendor_template VALUES (422,8950,0,0,0); -- Homemade Cherry Pie [2/2/66]
INSERT INTO npc_vendor_template VALUES (422,8952,0,0,0); -- Roasted Quail [2/2/101]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4536,0,0,0 Shiny Red Apple [1/2/22]
-- 4537,0,0,0 Tel'Abim Banana [1/2/21]
-- 4538,0,0,0 Snapvine Watermelon [1/2/25]
-- 4539,0,0,0 Goldenbark Apple [1/2/25]
-- 4602,0,0,0 Moon Harvest Pumpkin [1/2/24]
-- 8953,0,0,0 Deep Fried Plantains [1/2/41]

INSERT INTO npc_vendor VALUES (4891,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (4891,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (4891,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (4891,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (4891,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (4891,8953,0,0,0); -- Deep Fried Plantains

-- Total count: Templates: 18, single 6, sum 24, before: 42

-- ------------
-- Food & Drink 19
-- 2303,3961,4191,4195,7941,14753
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2303,3961,4191,4195,7941,14753);
UPDATE creature_template SET vendor_id=423 WHERE entry IN (2303,3961,4191,4195,7941,14753);

INSERT INTO npc_vendor_template VALUES (423,159,0,0,0); -- Refreshing Spring Water [6/6/227]
INSERT INTO npc_vendor_template VALUES (423,1179,0,0,0); -- Ice Cold Milk [6/6/169]
INSERT INTO npc_vendor_template VALUES (423,1205,0,0,0); -- Melon Juice [6/6/175]
INSERT INTO npc_vendor_template VALUES (423,1645,0,0,0); -- Moonberry Juice [6/6/163]
INSERT INTO npc_vendor_template VALUES (423,1708,0,0,0); -- Sweet Nectar [6/6/164]
INSERT INTO npc_vendor_template VALUES (423,8766,0,0,0); -- Morning Glory Dew [6/6/188]
INSERT INTO npc_vendor_template VALUES (423,16166,0,0,0); -- Bean Soup [6/6/12]
INSERT INTO npc_vendor_template VALUES (423,16167,0,0,0); -- Versicolor Treat [6/6/12]
INSERT INTO npc_vendor_template VALUES (423,16168,0,0,0); -- Heaven Peach [6/6/12]
INSERT INTO npc_vendor_template VALUES (423,16169,0,0,0); -- Wild Ricecake [6/6/12]
INSERT INTO npc_vendor_template VALUES (423,16170,0,0,0); -- Steamed Mandu [6/6/12]
INSERT INTO npc_vendor_template VALUES (423,16171,0,0,0); -- Shinsollo [6/6/6]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 117,0,0,0 Tough Jerky [1/6/63]
-- 2287,0,0,0 Haunch of Meat [1/6/64]
-- 3770,0,0,0 Mutton Chop [1/6/66]
-- 3771,0,0,0 Wild Hog Shank [1/6/66]
-- 4536,0,0,0 Shiny Red Apple [3/6/22]
-- 4537,0,0,0 Tel'Abim Banana [3/6/21]
-- 4538,0,0,0 Snapvine Watermelon [3/6/25]
-- 4539,0,0,0 Goldenbark Apple [3/6/25]
-- 4540,0,0,0 Tough Hunk of Bread [1/6/61]
-- 4541,0,0,0 Freshly Baked Bread [1/6/51]
-- 4542,0,0,0 Moist Cornbread [1/6/51]
-- 4544,0,0,0 Mulgore Spice Bread [1/6/51]
-- 4599,0,0,0 Cured Ham Steak [1/6/67]
-- 4601,0,0,0 Soft Banana Bread [1/6/51]
-- 4602,0,0,0 Moon Harvest Pumpkin [3/6/24]
-- 8950,0,0,0 Homemade Cherry Pie [1/6/66]
-- 8952,0,0,0 Roasted Quail [1/6/101]
-- 8953,0,0,0 Deep Fried Plantains [3/6/41]
-- 17348,0,0,1564 Major Healing Draught [1/6/6]
-- 17349,0,0,460 Superior Healing Draught [1/6/8]
-- 17351,0,0,1564 Major Mana Draught [1/6/6]
-- 17352,0,0,460 Superior Mana Draught [1/6/8]
-- 19060,0,0,0 Warsong Gulch Enriched Ration [1/6/2]
-- 19061,0,0,0 Warsong Gulch Iron Ration [1/6/2]
-- 19062,0,0,0 Warsong Gulch Field Ration [1/6/2]
-- 19066,0,0,0 Warsong Gulch Runecloth Bandage [1/6/2]
-- 19067,0,0,0 Warsong Gulch Mageweave Bandage [1/6/2]
-- 19068,0,0,0 Warsong Gulch Silk Bandage [1/6/2]
-- 19506,0,0,1009 Silverwing Battle Tabard [1/6/1]
-- 19514,0,0,491 Protector's Band [1/6/1]
-- 19515,0,0,884 Protector's Band [1/6/1]
-- 19516,0,0,930 Protector's Band [1/6/1]
-- 19517,0,0,838 Protector's Band [1/6/1]
-- 19522,0,0,491 Lorekeeper's Ring [1/6/1]
-- 19523,0,0,930 Lorekeeper's Ring [1/6/1]
-- 19524,0,0,884 Lorekeeper's Ring [1/6/1]
-- 19525,0,0,838 Lorekeeper's Ring [1/6/1]
-- 19530,0,0,492 Caretaker's Cape [1/6/1]
-- 19531,0,0,931 Caretaker's Cape [1/6/1]
-- 19532,0,0,885 Caretaker's Cape [1/6/1]
-- 19533,0,0,839 Caretaker's Cape [1/6/1]
-- 19538,0,0,491 Sentinel's Medallion [1/6/1]
-- 19539,0,0,930 Sentinel's Medallion [1/6/1]
-- 19540,0,0,884 Sentinel's Medallion [1/6/1]
-- 19541,0,0,838 Sentinel's Medallion [1/6/1]
-- 19546,0,0,747 Sentinel's Blade [1/6/1]
-- 19547,0,0,968 Sentinel's Blade [1/6/1]
-- 19548,0,0,917 Sentinel's Blade [1/6/1]
-- 19549,0,0,871 Sentinel's Blade [1/6/1]
-- 19554,0,0,747 Protector's Sword [1/6/1]
-- 19555,0,0,968 Protector's Sword [1/6/1]
-- 19556,0,0,917 Protector's Sword [1/6/1]
-- 19557,0,0,871 Protector's Sword [1/6/1]
-- 19562,0,0,747 Outrunner's Bow [1/6/1]
-- 19563,0,0,968 Outrunner's Bow [1/6/1]
-- 19564,0,0,917 Outrunner's Bow [1/6/1]
-- 19565,0,0,871 Outrunner's Bow [1/6/1]
-- 19570,0,0,490 Lorekeeper's Staff [1/6/1]
-- 19571,0,0,929 Lorekeeper's Staff [1/6/1]
-- 19572,0,0,883 Lorekeeper's Staff [1/6/1]
-- 19573,0,0,837 Lorekeeper's Staff [1/6/1]
-- 19578,0,0,488 Berserker Bracers [1/6/2]
-- 19580,0,0,990 Berserker Bracers [1/6/2]
-- 19581,0,0,989 Berserker Bracers [1/6/2]
-- 19582,0,0,488 Windtalker's Wristguards [1/6/2]
-- 19583,0,0,990 Windtalker's Wristguards [1/6/2]
-- 19584,0,0,989 Windtalker's Wristguards [1/6/2]
-- 19587,0,0,488 Forest Stalker's Bracers [1/6/2]
-- 19589,0,0,990 Forest Stalker's Bracers [1/6/2]
-- 19590,0,0,989 Forest Stalker's Bracers [1/6/2]
-- 19595,0,0,488 Dryad's Wrist Bindings [1/6/2]
-- 19596,0,0,990 Dryad's Wrist Bindings [1/6/2]
-- 19597,0,0,989 Dryad's Wrist Bindings [1/6/2]
-- 20428,0,0,823 Caretaker's Cape [1/6/1]
-- 20431,0,0,822 Lorekeeper's Ring [1/6/1]
-- 20434,0,0,821 Lorekeeper's Staff [1/6/1]
-- 20438,0,0,826 Outrunner's Bow [1/6/1]
-- 20439,0,0,822 Protector's Band [1/6/1]
-- 20440,0,0,826 Protector's Sword [1/6/1]
-- 20443,0,0,826 Sentinel's Blade [1/6/1]
-- 20444,0,0,822 Sentinel's Medallion [1/6/1]
-- 21030,5,43200,0 Darnassus Kimchi Pie [5/6/5]
-- 21031,5,43200,0 Cabbage Kimchi [5/6/5]
-- 21033,5,43200,0 Radish Kimchi [5/6/5]
-- 21565,0,0,1054 Rune of Perfection [1/6/1]
-- 21566,0,0,1055 Rune of Perfection [1/6/1]
-- 21567,0,0,1054 Rune of Duty [1/6/2]
-- 21568,0,0,1055 Rune of Duty [1/6/2]
-- 22672,0,0,748 Sentinel's Plate Legguards [1/6/1]
-- 22748,0,0,748 Sentinel's Chain Leggings [1/6/1]
-- 22749,0,0,748 Sentinel's Leather Pants [1/6/1]
-- 22750,0,0,748 Sentinel's Lizardhide Pants [1/6/1]
-- 22752,0,0,748 Sentinel's Silk Leggings [1/6/1]
-- 22753,0,0,748 Sentinel's Lamellar Legguards [1/6/1]
-- 30497,0,0,1442 Sentinel's Mail Leggings [1/6/1]

INSERT INTO npc_vendor VALUES (7941,117,0,0,0); -- Tough Jerky
INSERT INTO npc_vendor VALUES (7941,2287,0,0,0); -- Haunch of Meat
INSERT INTO npc_vendor VALUES (7941,3770,0,0,0); -- Mutton Chop
INSERT INTO npc_vendor VALUES (7941,3771,0,0,0); -- Wild Hog Shank
INSERT INTO npc_vendor VALUES (3961,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (4191,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (4195,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (3961,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (4191,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (4195,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (3961,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (4191,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (4195,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (3961,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (4191,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (4195,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (7941,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (7941,4541,0,0,0); -- Freshly Baked Bread
INSERT INTO npc_vendor VALUES (7941,4542,0,0,0); -- Moist Cornbread
INSERT INTO npc_vendor VALUES (7941,4544,0,0,0); -- Mulgore Spice Bread
INSERT INTO npc_vendor VALUES (7941,4599,0,0,0); -- Cured Ham Steak
INSERT INTO npc_vendor VALUES (7941,4601,0,0,0); -- Soft Banana Bread
INSERT INTO npc_vendor VALUES (3961,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (4191,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (4195,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (7941,8950,0,0,0); -- Homemade Cherry Pie
INSERT INTO npc_vendor VALUES (7941,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (3961,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (4191,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (4195,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (14753,17348,0,0,1564); -- Major Healing Draught
INSERT INTO npc_vendor VALUES (14753,17349,0,0,460); -- Superior Healing Draught
INSERT INTO npc_vendor VALUES (14753,17351,0,0,1564); -- Major Mana Draught
INSERT INTO npc_vendor VALUES (14753,17352,0,0,460); -- Superior Mana Draught
INSERT INTO npc_vendor VALUES (14753,19060,0,0,0); -- Warsong Gulch Enriched Ration
INSERT INTO npc_vendor VALUES (14753,19061,0,0,0); -- Warsong Gulch Iron Ration
INSERT INTO npc_vendor VALUES (14753,19062,0,0,0); -- Warsong Gulch Field Ration
INSERT INTO npc_vendor VALUES (14753,19066,0,0,0); -- Warsong Gulch Runecloth Bandage
INSERT INTO npc_vendor VALUES (14753,19067,0,0,0); -- Warsong Gulch Mageweave Bandage
INSERT INTO npc_vendor VALUES (14753,19068,0,0,0); -- Warsong Gulch Silk Bandage
INSERT INTO npc_vendor VALUES (14753,19506,0,0,1009); -- Silverwing Battle Tabard
INSERT INTO npc_vendor VALUES (14753,19514,0,0,491); -- Protector's Band
INSERT INTO npc_vendor VALUES (14753,19515,0,0,884); -- Protector's Band
INSERT INTO npc_vendor VALUES (14753,19516,0,0,930); -- Protector's Band
INSERT INTO npc_vendor VALUES (14753,19517,0,0,838); -- Protector's Band
INSERT INTO npc_vendor VALUES (14753,19522,0,0,491); -- Lorekeeper's Ring
INSERT INTO npc_vendor VALUES (14753,19523,0,0,930); -- Lorekeeper's Ring
INSERT INTO npc_vendor VALUES (14753,19524,0,0,884); -- Lorekeeper's Ring
INSERT INTO npc_vendor VALUES (14753,19525,0,0,838); -- Lorekeeper's Ring
INSERT INTO npc_vendor VALUES (14753,19530,0,0,492); -- Caretaker's Cape
INSERT INTO npc_vendor VALUES (14753,19531,0,0,931); -- Caretaker's Cape
INSERT INTO npc_vendor VALUES (14753,19532,0,0,885); -- Caretaker's Cape
INSERT INTO npc_vendor VALUES (14753,19533,0,0,839); -- Caretaker's Cape
INSERT INTO npc_vendor VALUES (14753,19538,0,0,491); -- Sentinel's Medallion
INSERT INTO npc_vendor VALUES (14753,19539,0,0,930); -- Sentinel's Medallion
INSERT INTO npc_vendor VALUES (14753,19540,0,0,884); -- Sentinel's Medallion
INSERT INTO npc_vendor VALUES (14753,19541,0,0,838); -- Sentinel's Medallion
INSERT INTO npc_vendor VALUES (14753,19546,0,0,747); -- Sentinel's Blade
INSERT INTO npc_vendor VALUES (14753,19547,0,0,968); -- Sentinel's Blade
INSERT INTO npc_vendor VALUES (14753,19548,0,0,917); -- Sentinel's Blade
INSERT INTO npc_vendor VALUES (14753,19549,0,0,871); -- Sentinel's Blade
INSERT INTO npc_vendor VALUES (14753,19554,0,0,747); -- Protector's Sword
INSERT INTO npc_vendor VALUES (14753,19555,0,0,968); -- Protector's Sword
INSERT INTO npc_vendor VALUES (14753,19556,0,0,917); -- Protector's Sword
INSERT INTO npc_vendor VALUES (14753,19557,0,0,871); -- Protector's Sword
INSERT INTO npc_vendor VALUES (14753,19562,0,0,747); -- Outrunner's Bow
INSERT INTO npc_vendor VALUES (14753,19563,0,0,968); -- Outrunner's Bow
INSERT INTO npc_vendor VALUES (14753,19564,0,0,917); -- Outrunner's Bow
INSERT INTO npc_vendor VALUES (14753,19565,0,0,871); -- Outrunner's Bow
INSERT INTO npc_vendor VALUES (14753,19570,0,0,490); -- Lorekeeper's Staff
INSERT INTO npc_vendor VALUES (14753,19571,0,0,929); -- Lorekeeper's Staff
INSERT INTO npc_vendor VALUES (14753,19572,0,0,883); -- Lorekeeper's Staff
INSERT INTO npc_vendor VALUES (14753,19573,0,0,837); -- Lorekeeper's Staff
INSERT INTO npc_vendor VALUES (14753,19578,0,0,488); -- Berserker Bracers
INSERT INTO npc_vendor VALUES (14753,19580,0,0,990); -- Berserker Bracers
INSERT INTO npc_vendor VALUES (14753,19581,0,0,989); -- Berserker Bracers
INSERT INTO npc_vendor VALUES (14753,19582,0,0,488); -- Windtalker's Wristguards
INSERT INTO npc_vendor VALUES (14753,19583,0,0,990); -- Windtalker's Wristguards
INSERT INTO npc_vendor VALUES (14753,19584,0,0,989); -- Windtalker's Wristguards
INSERT INTO npc_vendor VALUES (14753,19587,0,0,488); -- Forest Stalker's Bracers
INSERT INTO npc_vendor VALUES (14753,19589,0,0,990); -- Forest Stalker's Bracers
INSERT INTO npc_vendor VALUES (14753,19590,0,0,989); -- Forest Stalker's Bracers
INSERT INTO npc_vendor VALUES (14753,19595,0,0,488); -- Dryad's Wrist Bindings
INSERT INTO npc_vendor VALUES (14753,19596,0,0,990); -- Dryad's Wrist Bindings
INSERT INTO npc_vendor VALUES (14753,19597,0,0,989); -- Dryad's Wrist Bindings
INSERT INTO npc_vendor VALUES (14753,20428,0,0,823); -- Caretaker's Cape
INSERT INTO npc_vendor VALUES (14753,20431,0,0,822); -- Lorekeeper's Ring
INSERT INTO npc_vendor VALUES (14753,20434,0,0,821); -- Lorekeeper's Staff
INSERT INTO npc_vendor VALUES (14753,20438,0,0,826); -- Outrunner's Bow
INSERT INTO npc_vendor VALUES (14753,20439,0,0,822); -- Protector's Band
INSERT INTO npc_vendor VALUES (14753,20440,0,0,826); -- Protector's Sword
INSERT INTO npc_vendor VALUES (14753,20443,0,0,826); -- Sentinel's Blade
INSERT INTO npc_vendor VALUES (14753,20444,0,0,822); -- Sentinel's Medallion
INSERT INTO npc_vendor VALUES (2303,21030,5,43200,0); -- Darnassus Kimchi Pie
INSERT INTO npc_vendor VALUES (3961,21030,5,43200,0); -- Darnassus Kimchi Pie
INSERT INTO npc_vendor VALUES (4191,21030,5,43200,0); -- Darnassus Kimchi Pie
INSERT INTO npc_vendor VALUES (4195,21030,5,43200,0); -- Darnassus Kimchi Pie
INSERT INTO npc_vendor VALUES (7941,21030,5,43200,0); -- Darnassus Kimchi Pie
INSERT INTO npc_vendor VALUES (2303,21031,5,43200,0); -- Cabbage Kimchi
INSERT INTO npc_vendor VALUES (3961,21031,5,43200,0); -- Cabbage Kimchi
INSERT INTO npc_vendor VALUES (4191,21031,5,43200,0); -- Cabbage Kimchi
INSERT INTO npc_vendor VALUES (4195,21031,5,43200,0); -- Cabbage Kimchi
INSERT INTO npc_vendor VALUES (7941,21031,5,43200,0); -- Cabbage Kimchi
INSERT INTO npc_vendor VALUES (2303,21033,5,43200,0); -- Radish Kimchi
INSERT INTO npc_vendor VALUES (3961,21033,5,43200,0); -- Radish Kimchi
INSERT INTO npc_vendor VALUES (4191,21033,5,43200,0); -- Radish Kimchi
INSERT INTO npc_vendor VALUES (4195,21033,5,43200,0); -- Radish Kimchi
INSERT INTO npc_vendor VALUES (7941,21033,5,43200,0); -- Radish Kimchi
INSERT INTO npc_vendor VALUES (14753,21565,0,0,1054); -- Rune of Perfection
INSERT INTO npc_vendor VALUES (14753,21566,0,0,1055); -- Rune of Perfection
INSERT INTO npc_vendor VALUES (14753,21567,0,0,1054); -- Rune of Duty
INSERT INTO npc_vendor VALUES (14753,21568,0,0,1055); -- Rune of Duty
INSERT INTO npc_vendor VALUES (14753,22672,0,0,748); -- Sentinel's Plate Legguards
INSERT INTO npc_vendor VALUES (14753,22748,0,0,748); -- Sentinel's Chain Leggings
INSERT INTO npc_vendor VALUES (14753,22749,0,0,748); -- Sentinel's Leather Pants
INSERT INTO npc_vendor VALUES (14753,22750,0,0,748); -- Sentinel's Lizardhide Pants
INSERT INTO npc_vendor VALUES (14753,22752,0,0,748); -- Sentinel's Silk Leggings
INSERT INTO npc_vendor VALUES (14753,22753,0,0,748); -- Sentinel's Lamellar Legguards
INSERT INTO npc_vendor VALUES (14753,30497,0,0,1442); -- Sentinel's Mail Leggings

-- Total count: Templates: 12, single 119, sum 131, before: 191

-- ------------
-- Food & Drink 20
-- 1237,2352,2364,3546,11287
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1237,2352,2364,3546,11287);
UPDATE creature_template SET vendor_id=424 WHERE entry IN (1237,2352,2364,3546,11287);

INSERT INTO npc_vendor_template VALUES (424,159,0,0,0); -- Refreshing Spring Water [5/5/227]
INSERT INTO npc_vendor_template VALUES (424,414,0,0,0); -- Dalaran Sharp [5/5/26]
INSERT INTO npc_vendor_template VALUES (424,422,0,0,0); -- Dwarven Mild [5/5/27]
INSERT INTO npc_vendor_template VALUES (424,1179,0,0,0); -- Ice Cold Milk [5/5/169]
INSERT INTO npc_vendor_template VALUES (424,1205,0,0,0); -- Melon Juice [5/5/175]
INSERT INTO npc_vendor_template VALUES (424,1645,0,0,0); -- Moonberry Juice [5/5/163]
INSERT INTO npc_vendor_template VALUES (424,1707,0,0,0); -- Stormwind Brie [5/5/26]
INSERT INTO npc_vendor_template VALUES (424,1708,0,0,0); -- Sweet Nectar [5/5/164]
INSERT INTO npc_vendor_template VALUES (424,2070,0,0,0); -- Darnassian Bleu [5/5/26]
INSERT INTO npc_vendor_template VALUES (424,3927,0,0,0); -- Fine Aged Cheddar [5/5/26]
INSERT INTO npc_vendor_template VALUES (424,4540,0,0,0); -- Tough Hunk of Bread [5/5/61]
INSERT INTO npc_vendor_template VALUES (424,4541,0,0,0); -- Freshly Baked Bread [5/5/51]
INSERT INTO npc_vendor_template VALUES (424,4542,0,0,0); -- Moist Cornbread [5/5/51]
INSERT INTO npc_vendor_template VALUES (424,4544,0,0,0); -- Mulgore Spice Bread [5/5/51]
INSERT INTO npc_vendor_template VALUES (424,4601,0,0,0); -- Soft Banana Bread [5/5/51]
INSERT INTO npc_vendor_template VALUES (424,8766,0,0,0); -- Morning Glory Dew [5/5/188]
INSERT INTO npc_vendor_template VALUES (424,8932,0,0,0); -- Alterac Swiss [5/5/35]
INSERT INTO npc_vendor_template VALUES (424,8950,0,0,0); -- Homemade Cherry Pie [5/5/66]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6948,0,0,0 Hearthstone [1/5/18]
-- 21815,10,43200,0 Love Token [1/5/18]
-- 21829,0,0,0 Perfume Bottle [1/5/18]
-- 21833,0,0,0 Cologne Bottle [1/5/18]
-- 23848,0,0,0 Nethergarde Bitter [1/5/1]

INSERT INTO npc_vendor VALUES (2352,6948,0,0,0); -- Hearthstone
INSERT INTO npc_vendor VALUES (2352,21815,10,43200,0); -- Love Token
INSERT INTO npc_vendor VALUES (2352,21829,0,0,0); -- Perfume Bottle
INSERT INTO npc_vendor VALUES (2352,21833,0,0,0); -- Cologne Bottle
INSERT INTO npc_vendor VALUES (3546,23848,0,0,0); -- Nethergarde Bitter

-- Total count: Templates: 18, single 5, sum 23, before: 95

-- ------------
-- Meat
-- 2365,2814,3025,3089,3312,3368,3489,3705,3933,3935,3960,4954,5124,5870,23263,23481,23605
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2365,2814,3025,3089,3312,3368,3489,3705,3933,3935,3960,4954,5124,5870,23263,23481,23605);
UPDATE creature_template SET vendor_id=425 WHERE entry IN (2365,2814,3025,3089,3312,3368,3489,3705,3933,3935,3960,4954,5124,5870,23263,23481,23605);

INSERT INTO npc_vendor_template VALUES (425,117,0,0,0); -- Tough Jerky [17/17/63]
INSERT INTO npc_vendor_template VALUES (425,2287,0,0,0); -- Haunch of Meat [17/17/64]
INSERT INTO npc_vendor_template VALUES (425,3770,0,0,0); -- Mutton Chop [17/17/66]
INSERT INTO npc_vendor_template VALUES (425,3771,0,0,0); -- Wild Hog Shank [17/17/66]
INSERT INTO npc_vendor_template VALUES (425,4599,0,0,0); -- Cured Ham Steak [17/17/67]
INSERT INTO npc_vendor_template VALUES (425,8952,0,0,0); -- Roasted Quail [17/17/101]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 3734,0,0,0 Recipe: Big Bear Steak [1/17/2]
-- 3735,0,0,0 Recipe: Hot Lion Chops [1/17/1]
-- 4609,0,0,0 Recipe: Barbecued Buzzard Wing [1/17/2]
-- 5489,0,0,0 Recipe: Lean Venison [1/17/1]
-- 27854,0,0,0 Smoked Talbuk Venison [3/17/35]
-- 29451,0,0,0 Clefthoof Ribs [3/17/36]
-- 33023,0,0,0 Savory Sausage [2/17/2]
-- 33024,0,0,0 Pickled Sausage [2/17/2]
-- 33025,0,0,0 Spicy Smoked Sausage [2/17/2]
-- 33026,0,0,0 The Golden Link [2/17/2]
-- 34063,0,0,0 Dried Sausage [2/17/2]
-- 34064,0,0,0 Succulent Sausage [2/17/2]

INSERT INTO npc_vendor VALUES (3960,3734,0,0,0); -- Recipe: Big Bear Steak
INSERT INTO npc_vendor VALUES (3489,3735,0,0,0); -- Recipe: Hot Lion Chops
INSERT INTO npc_vendor VALUES (2814,4609,0,0,0); -- Recipe: Barbecued Buzzard Wing
INSERT INTO npc_vendor VALUES (3960,5489,0,0,0); -- Recipe: Lean Venison
INSERT INTO npc_vendor VALUES (23263,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (23481,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (23605,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (23263,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (23481,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (23605,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (23481,33023,0,0,0); -- Savory Sausage
INSERT INTO npc_vendor VALUES (23605,33023,0,0,0); -- Savory Sausage
INSERT INTO npc_vendor VALUES (23481,33024,0,0,0); -- Pickled Sausage
INSERT INTO npc_vendor VALUES (23605,33024,0,0,0); -- Pickled Sausage
INSERT INTO npc_vendor VALUES (23481,33025,0,0,0); -- Spicy Smoked Sausage
INSERT INTO npc_vendor VALUES (23605,33025,0,0,0); -- Spicy Smoked Sausage
INSERT INTO npc_vendor VALUES (23481,33026,0,0,0); -- The Golden Link
INSERT INTO npc_vendor VALUES (23605,33026,0,0,0); -- The Golden Link
INSERT INTO npc_vendor VALUES (23481,34063,0,0,0); -- Dried Sausage
INSERT INTO npc_vendor VALUES (23605,34063,0,0,0); -- Dried Sausage
INSERT INTO npc_vendor VALUES (23481,34064,0,0,0); -- Succulent Sausage
INSERT INTO npc_vendor VALUES (23605,34064,0,0,0); -- Succulent Sausage

-- Total count: Templates: 6, single 22, sum 28, before: 124

-- ------------
-- General Supplies 1
-- 152,829,2115,3072,3158,3587
-- ------------
DELETE FROM npc_vendor WHERE entry IN (152,829,2115,3072,3158,3587);
UPDATE creature_template SET vendor_id=426 WHERE entry IN (152,829,2115,3072,3158,3587);

INSERT INTO npc_vendor_template VALUES (426,159,0,0,0); -- Refreshing Spring Water [6/6/227]
INSERT INTO npc_vendor_template VALUES (426,2512,0,0,0); -- Rough Arrow [6/6/94]
INSERT INTO npc_vendor_template VALUES (426,2516,0,0,0); -- Light Shot [6/6/72]
INSERT INTO npc_vendor_template VALUES (426,4540,0,0,0); -- Tough Hunk of Bread [6/6/61]
INSERT INTO npc_vendor_template VALUES (426,25861,0,0,0); -- Crude Throwing Axe [6/6/44]
INSERT INTO npc_vendor_template VALUES (426,28979,0,0,0); -- Light Throwing Knife [6/6/36]

-- Total count: Templates: 6, single 0, sum 6, before: 36

-- ------------
-- General Supplies 2
-- 1285,3313,4170,4241,4555,7942,8362,12027,12960,16191
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1285,3313,4170,4241,4555,7942,8362,12027,12960,16191);
UPDATE creature_template SET vendor_id=427 WHERE entry IN (1285,3313,4170,4241,4555,7942,8362,12027,12960,16191);

INSERT INTO npc_vendor_template VALUES (427,159,0,0,0); -- Refreshing Spring Water [10/10/227]
INSERT INTO npc_vendor_template VALUES (427,1205,0,0,0); -- Melon Juice [10/10/175]
INSERT INTO npc_vendor_template VALUES (427,1645,0,0,0); -- Moonberry Juice [10/10/163]
INSERT INTO npc_vendor_template VALUES (427,1708,0,0,0); -- Sweet Nectar [10/10/164]
INSERT INTO npc_vendor_template VALUES (427,2512,0,0,0); -- Rough Arrow [10/10/94]
INSERT INTO npc_vendor_template VALUES (427,2515,0,0,0); -- Sharp Arrow [10/10/104]
INSERT INTO npc_vendor_template VALUES (427,2516,0,0,0); -- Light Shot [10/10/72]
INSERT INTO npc_vendor_template VALUES (427,2519,0,0,0); -- Heavy Shot [10/10/84]
INSERT INTO npc_vendor_template VALUES (427,3030,0,0,0); -- Razor Arrow [10/10/75]
INSERT INTO npc_vendor_template VALUES (427,3033,0,0,0); -- Solid Shot [10/10/61]
INSERT INTO npc_vendor_template VALUES (427,4470,0,0,0); -- Simple Wood [10/10/132]
INSERT INTO npc_vendor_template VALUES (427,4471,0,0,0); -- Flint and Tinder [10/10/85]
INSERT INTO npc_vendor_template VALUES (427,4496,0,0,0); -- Small Brown Pouch [10/10/53]
INSERT INTO npc_vendor_template VALUES (427,4497,0,0,0); -- Heavy Brown Bag [10/10/55]
INSERT INTO npc_vendor_template VALUES (427,4498,0,0,0); -- Brown Leather Satchel [10/10/82]
INSERT INTO npc_vendor_template VALUES (427,11284,0,0,0); -- Accurate Slugs [10/10/95]
INSERT INTO npc_vendor_template VALUES (427,11285,0,0,0); -- Jagged Arrow [10/10/100]
INSERT INTO npc_vendor_template VALUES (427,25872,0,0,0); -- Balanced Throwing Dagger [10/10/44]
INSERT INTO npc_vendor_template VALUES (427,25873,0,0,0); -- Keen Throwing Knife [10/10/51]
INSERT INTO npc_vendor_template VALUES (427,25875,0,0,0); -- Deadly Throwing Axe [10/10/45]
INSERT INTO npc_vendor_template VALUES (427,25876,0,0,0); -- Gleaming Throwing Axe [10/10/39]
INSERT INTO npc_vendor_template VALUES (427,28053,0,0,0); -- Wicked Arrow [10/10/100]
INSERT INTO npc_vendor_template VALUES (427,28060,0,0,0); -- Impact Shot [10/10/89]
INSERT INTO npc_vendor_template VALUES (427,29007,0,0,0); -- Weighted Throwing Axe [10/10/39]
INSERT INTO npc_vendor_template VALUES (427,29009,0,0,0); -- Heavy Throwing Dagger [10/10/41]
INSERT INTO npc_vendor_template VALUES (427,29010,0,0,0); -- Wicked Throwing Dagger [10/10/34]
INSERT INTO npc_vendor_template VALUES (427,29013,0,0,0); -- Jagged Throwing Axe [10/10/73]
INSERT INTO npc_vendor_template VALUES (427,29014,0,0,0); -- Blacksteel Throwing Dagger [10/10/72]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1179,0,0,0 Ice Cold Milk [8/10/169]
-- 4540,0,0,0 Tough Hunk of Bread [4/10/61]
-- 5042,0,0,0 Red Ribboned Wrapping Paper [6/10/31]
-- 5048,0,0,0 Blue Ribboned Wrapping Paper [8/10/16]
-- 8766,0,0,0 Morning Glory Dew [1/10/188]
-- 25861,0,0,0 Crude Throwing Axe [6/10/44]
-- 28979,0,0,0 Light Throwing Knife [6/10/36]
-- 29008,0,0,0 Sharp Throwing Axe [8/10/26]

INSERT INTO npc_vendor VALUES (1285,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (3313,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (4555,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (7942,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (8362,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (12027,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (12960,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (16191,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (1285,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (3313,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (8362,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (16191,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (1285,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (3313,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (4170,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (4241,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (8362,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (16191,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (1285,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (3313,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (4555,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (7942,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (8362,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (12027,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (12960,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (16191,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (4555,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (1285,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (3313,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (4170,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (4241,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (8362,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (16191,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (1285,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (3313,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (4170,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (4241,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (8362,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (16191,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (1285,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (3313,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (4555,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (7942,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (8362,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (12027,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (12960,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (16191,29008,0,0,0); -- Sharp Throwing Axe

-- Total count: Templates: 28, single 47, sum 75, before: 327

-- ------------
-- General Supplies 3
-- 16732,17489
-- ------------
DELETE FROM npc_vendor WHERE entry IN (16732,17489);
UPDATE creature_template SET vendor_id=428 WHERE entry IN (16732,17489);

INSERT INTO npc_vendor_template VALUES (428,159,0,0,0); -- Refreshing Spring Water [2/2/227]
INSERT INTO npc_vendor_template VALUES (428,1179,0,0,0); -- Ice Cold Milk [2/2/169]
INSERT INTO npc_vendor_template VALUES (428,1205,0,0,0); -- Melon Juice [2/2/175]
INSERT INTO npc_vendor_template VALUES (428,2512,0,0,0); -- Rough Arrow [2/2/94]
INSERT INTO npc_vendor_template VALUES (428,2515,0,0,0); -- Sharp Arrow [2/2/104]
INSERT INTO npc_vendor_template VALUES (428,2516,0,0,0); -- Light Shot [2/2/72]
INSERT INTO npc_vendor_template VALUES (428,2519,0,0,0); -- Heavy Shot [2/2/84]
INSERT INTO npc_vendor_template VALUES (428,3030,0,0,0); -- Razor Arrow [2/2/75]
INSERT INTO npc_vendor_template VALUES (428,3033,0,0,0); -- Solid Shot [2/2/61]
INSERT INTO npc_vendor_template VALUES (428,4470,0,0,0); -- Simple Wood [2/2/132]
INSERT INTO npc_vendor_template VALUES (428,4471,0,0,0); -- Flint and Tinder [2/2/85]
INSERT INTO npc_vendor_template VALUES (428,4496,0,0,0); -- Small Brown Pouch [2/2/53]
INSERT INTO npc_vendor_template VALUES (428,4497,0,0,0); -- Heavy Brown Bag [2/2/55]
INSERT INTO npc_vendor_template VALUES (428,4498,0,0,0); -- Brown Leather Satchel [2/2/82]
INSERT INTO npc_vendor_template VALUES (428,5042,0,0,0); -- Red Ribboned Wrapping Paper [2/2/31]
INSERT INTO npc_vendor_template VALUES (428,5048,0,0,0); -- Blue Ribboned Wrapping Paper [2/2/16]
INSERT INTO npc_vendor_template VALUES (428,25861,0,0,0); -- Crude Throwing Axe [2/2/44]
INSERT INTO npc_vendor_template VALUES (428,25872,0,0,0); -- Balanced Throwing Dagger [2/2/44]
INSERT INTO npc_vendor_template VALUES (428,25873,0,0,0); -- Keen Throwing Knife [2/2/51]
INSERT INTO npc_vendor_template VALUES (428,25875,0,0,0); -- Deadly Throwing Axe [2/2/45]
INSERT INTO npc_vendor_template VALUES (428,28979,0,0,0); -- Light Throwing Knife [2/2/36]
INSERT INTO npc_vendor_template VALUES (428,29007,0,0,0); -- Weighted Throwing Axe [2/2/39]
INSERT INTO npc_vendor_template VALUES (428,29008,0,0,0); -- Sharp Throwing Axe [2/2/26]
INSERT INTO npc_vendor_template VALUES (428,29009,0,0,0); -- Heavy Throwing Dagger [2/2/41]

-- Total count: Templates: 24, single 0, sum 24, before: 48

-- ------------
-- General Supplies 4
-- 18011,18959,19020,19021,19053,19243,19343,19374,19436,19452,19474,19498,19534,19560,19574,19625,19649,20249,20892,21082,21111,21172,21183,22270,25035
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18011,18959,19020,19021,19053,19243,19343,19374,19436,19452,19474,19498,19534,19560,19574,19625,19649,20249,20892,21082,21111,21172,21183,22270,25035);
UPDATE creature_template SET vendor_id=429 WHERE entry IN (18011,18959,19020,19021,19053,19243,19343,19374,19436,19452,19474,19498,19534,19560,19574,19625,19649,20249,20892,21082,21111,21172,21183,22270,25035);

INSERT INTO npc_vendor_template VALUES (429,4470,0,0,0); -- Simple Wood [25/25/132]
INSERT INTO npc_vendor_template VALUES (429,11284,0,0,0); -- Accurate Slugs [25/25/95]
INSERT INTO npc_vendor_template VALUES (429,11285,0,0,0); -- Jagged Arrow [25/25/100]
INSERT INTO npc_vendor_template VALUES (429,28053,0,0,0); -- Wicked Arrow [25/25/100]
INSERT INTO npc_vendor_template VALUES (429,28056,0,0,0); -- Blackflight Arrow [25/25/49]
INSERT INTO npc_vendor_template VALUES (429,28060,0,0,0); -- Impact Shot [25/25/89]
INSERT INTO npc_vendor_template VALUES (429,28061,0,0,0); -- Ironbite Shell [25/25/51]
INSERT INTO npc_vendor_template VALUES (429,29013,0,0,0); -- Jagged Throwing Axe [25/25/73]
INSERT INTO npc_vendor_template VALUES (429,29014,0,0,0); -- Blacksteel Throwing Dagger [25/25/72]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2512,0,0,0 Rough Arrow [2/25/94]
-- 2515,0,0,0 Sharp Arrow [2/25/104]
-- 3026,0,0,0 Reinforced Bow [2/25/34]
-- 3027,0,0,0 Heavy Recurve Bow [2/25/26]
-- 3030,0,0,0 Razor Arrow [2/25/75]
-- 4471,0,0,0 Flint and Tinder [6/25/85]
-- 4496,0,0,0 Small Brown Pouch [2/25/53]
-- 4497,0,0,0 Heavy Brown Bag [2/25/55]
-- 4498,0,0,0 Brown Leather Satchel [2/25/82]
-- 4499,0,0,0 Huge Brown Sack [1/25/10]
-- 5439,0,0,0 Small Quiver [2/25/44]
-- 8766,0,0,0 Morning Glory Dew [1/25/188]
-- 11362,0,0,0 Medium Quiver [2/25/47]
-- 21898,1,7200,0 Pattern: Imbued Netherweave Pants [1/25/1]
-- 21899,1,7200,0 Pattern: Imbued Netherweave Boots [1/25/1]
-- 27695,0,0,0 Recipe: Feltail Delight [1/25/2]
-- 27860,0,0,0 Purified Draenic Water [1/25/51]
-- 28399,0,0,0 Filtered Draenic Water [1/25/51]
-- 30355,0,0,0 Grilled Shadowmoon Tuber [1/25/1]
-- 30744,0,0,0 Draenic Leather Pack [1/25/3]
-- 30745,1,7200,0 Heavy Toolbox [1/25/1]
-- 30746,1,7200,0 Mining Sack [1/25/1]
-- 30747,1,7200,0 Gem Pouch [1/25/1]
-- 30748,1,7200,0 Enchanter's Satchel [1/25/1]
-- 30757,0,0,0 Draenic Light Crossbow [1/25/4]
-- 30758,0,0,0 Aldor Guardian Rifle [1/25/5]
-- 30759,0,0,0 Mag'hari Light Recurve [1/25/4]
-- 32758,0,0,0 Brute Cologne [1/25/1]

INSERT INTO npc_vendor VALUES (19020,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (19021,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (19020,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (19021,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (19020,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (19021,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (19020,3027,0,0,0); -- Heavy Recurve Bow
INSERT INTO npc_vendor VALUES (19021,3027,0,0,0); -- Heavy Recurve Bow
INSERT INTO npc_vendor VALUES (19020,3030,0,0,0); -- Razor Arrow
INSERT INTO npc_vendor VALUES (19021,3030,0,0,0); -- Razor Arrow
INSERT INTO npc_vendor VALUES (18011,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (19243,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (19560,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (21172,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (22270,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (25035,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (19053,4496,0,0,0); -- Small Brown Pouch
INSERT INTO npc_vendor VALUES (19560,4496,0,0,0); -- Small Brown Pouch
INSERT INTO npc_vendor VALUES (19053,4497,0,0,0); -- Heavy Brown Bag
INSERT INTO npc_vendor VALUES (19560,4497,0,0,0); -- Heavy Brown Bag
INSERT INTO npc_vendor VALUES (19053,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (19560,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (19053,4499,0,0,0); -- Huge Brown Sack
INSERT INTO npc_vendor VALUES (19020,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (19021,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (21183,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (19020,11362,0,0,0); -- Medium Quiver
INSERT INTO npc_vendor VALUES (19021,11362,0,0,0); -- Medium Quiver
INSERT INTO npc_vendor VALUES (18011,21898,1,7200,0); -- Pattern: Imbued Netherweave Pants
INSERT INTO npc_vendor VALUES (18011,21899,1,7200,0); -- Pattern: Imbued Netherweave Boots
INSERT INTO npc_vendor VALUES (18011,27695,0,0,0); -- Recipe: Feltail Delight
INSERT INTO npc_vendor VALUES (21183,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (21183,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (21183,30355,0,0,0); -- Grilled Shadowmoon Tuber
INSERT INTO npc_vendor VALUES (19053,30744,0,0,0); -- Draenic Leather Pack
INSERT INTO npc_vendor VALUES (19053,30745,1,7200,0); -- Heavy Toolbox
INSERT INTO npc_vendor VALUES (19053,30746,1,7200,0); -- Mining Sack
INSERT INTO npc_vendor VALUES (19053,30747,1,7200,0); -- Gem Pouch
INSERT INTO npc_vendor VALUES (19053,30748,1,7200,0); -- Enchanter's Satchel
INSERT INTO npc_vendor VALUES (19021,30757,0,0,0); -- Draenic Light Crossbow
INSERT INTO npc_vendor VALUES (19021,30758,0,0,0); -- Aldor Guardian Rifle
INSERT INTO npc_vendor VALUES (19021,30759,0,0,0); -- Mag'hari Light Recurve
INSERT INTO npc_vendor VALUES (22270,32758,0,0,0); -- Brute Cologne

-- Total count: Templates: 9, single 43, sum 52, before: 268

-- ------------
-- General Supplies 5
-- 151,1691,2134,3076,3164,3186,3608,16259,16260,17446
-- ------------
DELETE FROM npc_vendor WHERE entry IN (151,1691,2134,3076,3164,3186,3608,16259,16260,17446);
UPDATE creature_template SET vendor_id=430 WHERE entry IN (151,1691,2134,3076,3164,3186,3608,16259,16260,17446);

INSERT INTO npc_vendor_template VALUES (430,159,0,0,0); -- Refreshing Spring Water [10/10/227]
INSERT INTO npc_vendor_template VALUES (430,2512,0,0,0); -- Rough Arrow [10/10/94]
INSERT INTO npc_vendor_template VALUES (430,2516,0,0,0); -- Light Shot [10/10/72]
INSERT INTO npc_vendor_template VALUES (430,4470,0,0,0); -- Simple Wood [10/10/132]
INSERT INTO npc_vendor_template VALUES (430,4471,0,0,0); -- Flint and Tinder [10/10/85]
INSERT INTO npc_vendor_template VALUES (430,4496,0,0,0); -- Small Brown Pouch [10/10/53]
INSERT INTO npc_vendor_template VALUES (430,4498,0,0,0); -- Brown Leather Satchel [10/10/82]
INSERT INTO npc_vendor_template VALUES (430,5042,0,0,0); -- Red Ribboned Wrapping Paper [10/10/31]
INSERT INTO npc_vendor_template VALUES (430,25861,0,0,0); -- Crude Throwing Axe [10/10/44]
INSERT INTO npc_vendor_template VALUES (430,25872,0,0,0); -- Balanced Throwing Dagger [10/10/44]
INSERT INTO npc_vendor_template VALUES (430,28979,0,0,0); -- Light Throwing Knife [10/10/36]
INSERT INTO npc_vendor_template VALUES (430,29007,0,0,0); -- Weighted Throwing Axe [10/10/39]

-- Total count: Templates: 12, single 0, sum 12, before: 120

-- ------------
-- General Supplies 6
-- 2084,2808,2820,2908,3350,3625,4896,5101,5134
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2084,2808,2820,2908,3350,3625,4896,5101,5134);
UPDATE creature_template SET vendor_id=431 WHERE entry IN (2084,2808,2820,2908,3350,3625,4896,5101,5134);

INSERT INTO npc_vendor_template VALUES (431,159,0,0,0); -- Refreshing Spring Water [9/9/227]
INSERT INTO npc_vendor_template VALUES (431,1205,0,0,0); -- Melon Juice [9/9/175]
INSERT INTO npc_vendor_template VALUES (431,1645,0,0,0); -- Moonberry Juice [9/9/163]
INSERT INTO npc_vendor_template VALUES (431,1708,0,0,0); -- Sweet Nectar [9/9/164]
INSERT INTO npc_vendor_template VALUES (431,2515,0,0,0); -- Sharp Arrow [9/9/104]
INSERT INTO npc_vendor_template VALUES (431,2519,0,0,0); -- Heavy Shot [9/9/84]
INSERT INTO npc_vendor_template VALUES (431,3030,0,0,0); -- Razor Arrow [9/9/75]
INSERT INTO npc_vendor_template VALUES (431,3033,0,0,0); -- Solid Shot [9/9/61]
INSERT INTO npc_vendor_template VALUES (431,4470,0,0,0); -- Simple Wood [9/9/132]
INSERT INTO npc_vendor_template VALUES (431,4471,0,0,0); -- Flint and Tinder [9/9/85]
INSERT INTO npc_vendor_template VALUES (431,4497,0,0,0); -- Heavy Brown Bag [9/9/55]
INSERT INTO npc_vendor_template VALUES (431,4498,0,0,0); -- Brown Leather Satchel [9/9/82]
INSERT INTO npc_vendor_template VALUES (431,11284,0,0,0); -- Accurate Slugs [9/9/95]
INSERT INTO npc_vendor_template VALUES (431,11285,0,0,0); -- Jagged Arrow [9/9/100]
INSERT INTO npc_vendor_template VALUES (431,25873,0,0,0); -- Keen Throwing Knife [9/9/51]
INSERT INTO npc_vendor_template VALUES (431,25875,0,0,0); -- Deadly Throwing Axe [9/9/45]
INSERT INTO npc_vendor_template VALUES (431,25876,0,0,0); -- Gleaming Throwing Axe [9/9/39]
INSERT INTO npc_vendor_template VALUES (431,28053,0,0,0); -- Wicked Arrow [9/9/100]
INSERT INTO npc_vendor_template VALUES (431,28060,0,0,0); -- Impact Shot [9/9/89]
INSERT INTO npc_vendor_template VALUES (431,29009,0,0,0); -- Heavy Throwing Dagger [9/9/41]
INSERT INTO npc_vendor_template VALUES (431,29010,0,0,0); -- Wicked Throwing Dagger [9/9/34]
INSERT INTO npc_vendor_template VALUES (431,29013,0,0,0); -- Jagged Throwing Axe [9/9/73]
INSERT INTO npc_vendor_template VALUES (431,29014,0,0,0); -- Blacksteel Throwing Dagger [9/9/72]

-- Total count: Templates: 23, single 0, sum 23, before: 207

-- ------------
-- General Supplies 7
-- 491,1682,2140,3481,4182,16187,16444
-- ------------
DELETE FROM npc_vendor WHERE entry IN (491,1682,2140,3481,4182,16187,16444);
UPDATE creature_template SET vendor_id=432 WHERE entry IN (491,1682,2140,3481,4182,16187,16444);

INSERT INTO npc_vendor_template VALUES (432,159,0,0,0); -- Refreshing Spring Water [7/7/227]
INSERT INTO npc_vendor_template VALUES (432,1179,0,0,0); -- Ice Cold Milk [7/7/169]
INSERT INTO npc_vendor_template VALUES (432,2512,0,0,0); -- Rough Arrow [7/7/94]
INSERT INTO npc_vendor_template VALUES (432,2515,0,0,0); -- Sharp Arrow [7/7/104]
INSERT INTO npc_vendor_template VALUES (432,2516,0,0,0); -- Light Shot [7/7/72]
INSERT INTO npc_vendor_template VALUES (432,2519,0,0,0); -- Heavy Shot [7/7/84]
INSERT INTO npc_vendor_template VALUES (432,4470,0,0,0); -- Simple Wood [7/7/132]
INSERT INTO npc_vendor_template VALUES (432,4471,0,0,0); -- Flint and Tinder [7/7/85]
INSERT INTO npc_vendor_template VALUES (432,4496,0,0,0); -- Small Brown Pouch [7/7/53]
INSERT INTO npc_vendor_template VALUES (432,4498,0,0,0); -- Brown Leather Satchel [7/7/82]
INSERT INTO npc_vendor_template VALUES (432,5042,0,0,0); -- Red Ribboned Wrapping Paper [7/7/31]
INSERT INTO npc_vendor_template VALUES (432,25861,0,0,0); -- Crude Throwing Axe [7/7/44]
INSERT INTO npc_vendor_template VALUES (432,25872,0,0,0); -- Balanced Throwing Dagger [7/7/44]
INSERT INTO npc_vendor_template VALUES (432,28979,0,0,0); -- Light Throwing Knife [7/7/36]
INSERT INTO npc_vendor_template VALUES (432,29007,0,0,0); -- Weighted Throwing Axe [7/7/39]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 858,2,7200,0 Lesser Healing Potion [1/7/1]
-- 2686,0,0,0 Thunder Ale [1/7/4]
-- 2894,0,0,0 Rhapsody Malt [1/7/4]
-- 22777,0,0,0 Bundle of Fireworks [1/7/1]

INSERT INTO npc_vendor VALUES (2140,858,2,7200,0); -- Lesser Healing Potion
INSERT INTO npc_vendor VALUES (1682,2686,0,0,0); -- Thunder Ale
INSERT INTO npc_vendor VALUES (1682,2894,0,0,0); -- Rhapsody Malt
INSERT INTO npc_vendor VALUES (16444,22777,0,0,0); -- Bundle of Fireworks

-- Total count: Templates: 15, single 4, sum 19, before: 109

-- ------------
-- General Supplies 8
-- 227,1452,3962,4876
-- ------------
DELETE FROM npc_vendor WHERE entry IN (227,1452,3962,4876);
UPDATE creature_template SET vendor_id=433 WHERE entry IN (227,1452,3962,4876);

INSERT INTO npc_vendor_template VALUES (433,159,0,0,0); -- Refreshing Spring Water [4/4/227]
INSERT INTO npc_vendor_template VALUES (433,1179,0,0,0); -- Ice Cold Milk [4/4/169]
INSERT INTO npc_vendor_template VALUES (433,1205,0,0,0); -- Melon Juice [4/4/175]
INSERT INTO npc_vendor_template VALUES (433,2515,0,0,0); -- Sharp Arrow [4/4/104]
INSERT INTO npc_vendor_template VALUES (433,2519,0,0,0); -- Heavy Shot [4/4/84]
INSERT INTO npc_vendor_template VALUES (433,3030,0,0,0); -- Razor Arrow [4/4/75]
INSERT INTO npc_vendor_template VALUES (433,3033,0,0,0); -- Solid Shot [4/4/61]
INSERT INTO npc_vendor_template VALUES (433,4470,0,0,0); -- Simple Wood [4/4/132]
INSERT INTO npc_vendor_template VALUES (433,4471,0,0,0); -- Flint and Tinder [4/4/85]
INSERT INTO npc_vendor_template VALUES (433,4497,0,0,0); -- Heavy Brown Bag [4/4/55]
INSERT INTO npc_vendor_template VALUES (433,4498,0,0,0); -- Brown Leather Satchel [4/4/82]
INSERT INTO npc_vendor_template VALUES (433,25873,0,0,0); -- Keen Throwing Knife [4/4/51]
INSERT INTO npc_vendor_template VALUES (433,25875,0,0,0); -- Deadly Throwing Axe [4/4/45]
INSERT INTO npc_vendor_template VALUES (433,29008,0,0,0); -- Sharp Throwing Axe [4/4/26]
INSERT INTO npc_vendor_template VALUES (433,29009,0,0,0); -- Heavy Throwing Dagger [4/4/41]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 5503,0,0,0 Clam Meat [1/4/1]
-- 6183,0,0,0 Unlit Poor Torch [1/4/4]

INSERT INTO npc_vendor VALUES (3962,5503,0,0,0); -- Clam Meat
INSERT INTO npc_vendor VALUES (1452,6183,0,0,0); -- Unlit Poor Torch

-- Total count: Templates: 15, single 2, sum 17, before: 62

-- ------------
-- General Supplies 9
-- 3498,4082,4084,18811
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3498,4082,4084,18811);
UPDATE creature_template SET vendor_id=434 WHERE entry IN (3498,4082,4084,18811);

INSERT INTO npc_vendor_template VALUES (434,159,0,0,0); -- Refreshing Spring Water [4/4/227]
INSERT INTO npc_vendor_template VALUES (434,1179,0,0,0); -- Ice Cold Milk [4/4/169]
INSERT INTO npc_vendor_template VALUES (434,1205,0,0,0); -- Melon Juice [4/4/175]
INSERT INTO npc_vendor_template VALUES (434,2512,0,0,0); -- Rough Arrow [4/4/94]
INSERT INTO npc_vendor_template VALUES (434,2515,0,0,0); -- Sharp Arrow [4/4/104]
INSERT INTO npc_vendor_template VALUES (434,2516,0,0,0); -- Light Shot [4/4/72]
INSERT INTO npc_vendor_template VALUES (434,2519,0,0,0); -- Heavy Shot [4/4/84]
INSERT INTO npc_vendor_template VALUES (434,4470,0,0,0); -- Simple Wood [4/4/132]
INSERT INTO npc_vendor_template VALUES (434,4471,0,0,0); -- Flint and Tinder [4/4/85]
INSERT INTO npc_vendor_template VALUES (434,4496,0,0,0); -- Small Brown Pouch [4/4/53]
INSERT INTO npc_vendor_template VALUES (434,4498,0,0,0); -- Brown Leather Satchel [4/4/82]
INSERT INTO npc_vendor_template VALUES (434,5048,0,0,0); -- Blue Ribboned Wrapping Paper [4/4/16]
INSERT INTO npc_vendor_template VALUES (434,25872,0,0,0); -- Balanced Throwing Dagger [4/4/44]
INSERT INTO npc_vendor_template VALUES (434,25873,0,0,0); -- Keen Throwing Knife [4/4/51]
INSERT INTO npc_vendor_template VALUES (434,29007,0,0,0); -- Weighted Throwing Axe [4/4/39]
INSERT INTO npc_vendor_template VALUES (434,29008,0,0,0); -- Sharp Throwing Axe [4/4/26]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 117,0,0,0 Tough Jerky [1/4/63]
-- 422,0,0,0 Dwarven Mild [1/4/27]
-- 2287,0,0,0 Haunch of Meat [1/4/64]
-- 3770,0,0,0 Mutton Chop [1/4/66]
-- 3771,0,0,0 Wild Hog Shank [1/4/66]
-- 4538,0,0,0 Snapvine Watermelon [1/4/25]
-- 4593,0,0,0 Bristle Whisker Catfish [1/4/31]
-- 4599,0,0,0 Cured Ham Steak [1/4/67]
-- 8952,0,0,0 Roasted Quail [1/4/101]

INSERT INTO npc_vendor VALUES (4084,117,0,0,0); -- Tough Jerky
INSERT INTO npc_vendor VALUES (4084,422,0,0,0); -- Dwarven Mild
INSERT INTO npc_vendor VALUES (4084,2287,0,0,0); -- Haunch of Meat
INSERT INTO npc_vendor VALUES (4084,3770,0,0,0); -- Mutton Chop
INSERT INTO npc_vendor VALUES (4084,3771,0,0,0); -- Wild Hog Shank
INSERT INTO npc_vendor VALUES (4084,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (4084,4593,0,0,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (4084,4599,0,0,0); -- Cured Ham Steak
INSERT INTO npc_vendor VALUES (4084,8952,0,0,0); -- Roasted Quail

-- Total count: Templates: 16, single 9, sum 25, before: 73

-- ------------
-- General Supplies 10
-- 20080,23143
-- ------------
DELETE FROM npc_vendor WHERE entry IN (20080,23143);
UPDATE creature_template SET vendor_id=435 WHERE entry IN (20080,23143);

INSERT INTO npc_vendor_template VALUES (435,4470,0,0,0); -- Simple Wood [2/2/132]
INSERT INTO npc_vendor_template VALUES (435,4471,0,0,0); -- Flint and Tinder [2/2/85]
INSERT INTO npc_vendor_template VALUES (435,8766,0,0,0); -- Morning Glory Dew [2/2/188]
INSERT INTO npc_vendor_template VALUES (435,11284,0,0,0); -- Accurate Slugs [2/2/95]
INSERT INTO npc_vendor_template VALUES (435,11285,0,0,0); -- Jagged Arrow [2/2/100]
INSERT INTO npc_vendor_template VALUES (435,27860,0,0,0); -- Purified Draenic Water [2/2/51]
INSERT INTO npc_vendor_template VALUES (435,28053,0,0,0); -- Wicked Arrow [2/2/100]
INSERT INTO npc_vendor_template VALUES (435,28056,0,0,0); -- Blackflight Arrow [2/2/49]
INSERT INTO npc_vendor_template VALUES (435,28060,0,0,0); -- Impact Shot [2/2/89]
INSERT INTO npc_vendor_template VALUES (435,28061,0,0,0); -- Ironbite Shell [2/2/51]
INSERT INTO npc_vendor_template VALUES (435,28399,0,0,0); -- Filtered Draenic Water [2/2/51]
INSERT INTO npc_vendor_template VALUES (435,29013,0,0,0); -- Jagged Throwing Axe [2/2/73]
INSERT INTO npc_vendor_template VALUES (435,29014,0,0,0); -- Blacksteel Throwing Dagger [2/2/72]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 8932,0,0,0 Alterac Swiss [1/2/35]
-- 8952,0,0,0 Roasted Quail [1/2/101]
-- 27854,0,0,0 Smoked Talbuk Venison [1/2/35]
-- 27857,0,0,0 Garadar Sharp [1/2/11]
-- 29448,0,0,0 Mag'har Mild Cheese [1/2/11]
-- 29451,0,0,0 Clefthoof Ribs [1/2/36]

INSERT INTO npc_vendor VALUES (20080,8932,0,0,0); -- Alterac Swiss
INSERT INTO npc_vendor VALUES (23143,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (23143,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (20080,27857,0,0,0); -- Garadar Sharp
INSERT INTO npc_vendor VALUES (20080,29448,0,0,0); -- Mag'har Mild Cheese
INSERT INTO npc_vendor VALUES (23143,29451,0,0,0); -- Clefthoof Ribs

-- Total count: Templates: 13, single 6, sum 19, before: 32

-- ------------
-- General Supplies 11
-- 12959,14624,15174,15397
-- ------------
DELETE FROM npc_vendor WHERE entry IN (12959,14624,15174,15397);
UPDATE creature_template SET vendor_id=436 WHERE entry IN (12959,14624,15174,15397);

INSERT INTO npc_vendor_template VALUES (436,117,0,0,0); -- Tough Jerky [4/4/63]
INSERT INTO npc_vendor_template VALUES (436,159,0,0,0); -- Refreshing Spring Water [4/4/227]
INSERT INTO npc_vendor_template VALUES (436,1179,0,0,0); -- Ice Cold Milk [4/4/169]
INSERT INTO npc_vendor_template VALUES (436,1205,0,0,0); -- Melon Juice [4/4/175]
INSERT INTO npc_vendor_template VALUES (436,1645,0,0,0); -- Moonberry Juice [4/4/163]
INSERT INTO npc_vendor_template VALUES (436,1708,0,0,0); -- Sweet Nectar [4/4/164]
INSERT INTO npc_vendor_template VALUES (436,2287,0,0,0); -- Haunch of Meat [4/4/64]
INSERT INTO npc_vendor_template VALUES (436,2515,0,0,0); -- Sharp Arrow [4/4/104]
INSERT INTO npc_vendor_template VALUES (436,2519,0,0,0); -- Heavy Shot [4/4/84]
INSERT INTO npc_vendor_template VALUES (436,3030,0,0,0); -- Razor Arrow [4/4/75]
INSERT INTO npc_vendor_template VALUES (436,3033,0,0,0); -- Solid Shot [4/4/61]
INSERT INTO npc_vendor_template VALUES (436,3770,0,0,0); -- Mutton Chop [4/4/66]
INSERT INTO npc_vendor_template VALUES (436,3771,0,0,0); -- Wild Hog Shank [4/4/66]
INSERT INTO npc_vendor_template VALUES (436,4470,0,0,0); -- Simple Wood [4/4/132]
INSERT INTO npc_vendor_template VALUES (436,4471,0,0,0); -- Flint and Tinder [4/4/85]
INSERT INTO npc_vendor_template VALUES (436,4497,0,0,0); -- Heavy Brown Bag [4/4/55]
INSERT INTO npc_vendor_template VALUES (436,4498,0,0,0); -- Brown Leather Satchel [4/4/82]
INSERT INTO npc_vendor_template VALUES (436,4599,0,0,0); -- Cured Ham Steak [4/4/67]
INSERT INTO npc_vendor_template VALUES (436,8766,0,0,0); -- Morning Glory Dew [4/4/188]
INSERT INTO npc_vendor_template VALUES (436,8952,0,0,0); -- Roasted Quail [4/4/101]
INSERT INTO npc_vendor_template VALUES (436,11284,0,0,0); -- Accurate Slugs [4/4/95]
INSERT INTO npc_vendor_template VALUES (436,11285,0,0,0); -- Jagged Arrow [4/4/100]
INSERT INTO npc_vendor_template VALUES (436,25873,0,0,0); -- Keen Throwing Knife [4/4/51]
INSERT INTO npc_vendor_template VALUES (436,25875,0,0,0); -- Deadly Throwing Axe [4/4/45]
INSERT INTO npc_vendor_template VALUES (436,25876,0,0,0); -- Gleaming Throwing Axe [4/4/39]
INSERT INTO npc_vendor_template VALUES (436,28053,0,0,0); -- Wicked Arrow [4/4/100]
INSERT INTO npc_vendor_template VALUES (436,28060,0,0,0); -- Impact Shot [4/4/89]
INSERT INTO npc_vendor_template VALUES (436,29009,0,0,0); -- Heavy Throwing Dagger [4/4/41]
INSERT INTO npc_vendor_template VALUES (436,29010,0,0,0); -- Wicked Throwing Dagger [4/4/34]
INSERT INTO npc_vendor_template VALUES (436,29013,0,0,0); -- Jagged Throwing Axe [4/4/73]
INSERT INTO npc_vendor_template VALUES (436,29014,0,0,0); -- Blacksteel Throwing Dagger [4/4/72]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2880,0,0,0 Weak Flux [1/4/156]
-- 2901,0,0,0 Mining Pick [1/4/157]
-- 3466,0,0,0 Strong Flux [1/4/134]
-- 3857,0,0,0 Coal [1/4/99]
-- 5956,0,0,0 Blacksmith Hammer [1/4/144]
-- 15758,1,7500,0 Pattern: Devilsaur Gauntlets [1/4/1]
-- 18567,0,0,0 Elemental Flux [1/4/41]

INSERT INTO npc_vendor VALUES (14624,2880,0,0,0); -- Weak Flux
INSERT INTO npc_vendor VALUES (14624,2901,0,0,0); -- Mining Pick
INSERT INTO npc_vendor VALUES (14624,3466,0,0,0); -- Strong Flux
INSERT INTO npc_vendor VALUES (14624,3857,0,0,0); -- Coal
INSERT INTO npc_vendor VALUES (14624,5956,0,0,0); -- Blacksmith Hammer
INSERT INTO npc_vendor VALUES (12959,15758,1,7500,0); -- Pattern: Devilsaur Gauntlets
INSERT INTO npc_vendor VALUES (14624,18567,0,0,0); -- Elemental Flux
INSERT INTO npc_vendor VALUES (15174,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (15174,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (15174,21833,0,0,0); -- Cologne Bottle [added for LiitA]

-- Total count: Templates: 31, single 7, sum 38, before: 131

-- ------------
-- General Supplies 12
-- 1464,5111,6930,7736
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1464,5111,6930,7736);
UPDATE creature_template SET vendor_id=437 WHERE entry IN (1464,5111,6930,7736);

INSERT INTO npc_vendor_template VALUES (437,117,0,0,0); -- Tough Jerky [4/4/63]
INSERT INTO npc_vendor_template VALUES (437,159,0,0,0); -- Refreshing Spring Water [4/4/227]
INSERT INTO npc_vendor_template VALUES (437,1179,0,0,0); -- Ice Cold Milk [4/4/169]
INSERT INTO npc_vendor_template VALUES (437,1205,0,0,0); -- Melon Juice [4/4/175]
INSERT INTO npc_vendor_template VALUES (437,1645,0,0,0); -- Moonberry Juice [4/4/163]
INSERT INTO npc_vendor_template VALUES (437,1708,0,0,0); -- Sweet Nectar [4/4/164]
INSERT INTO npc_vendor_template VALUES (437,2287,0,0,0); -- Haunch of Meat [4/4/64]
INSERT INTO npc_vendor_template VALUES (437,3770,0,0,0); -- Mutton Chop [4/4/66]
INSERT INTO npc_vendor_template VALUES (437,3771,0,0,0); -- Wild Hog Shank [4/4/66]
INSERT INTO npc_vendor_template VALUES (437,4599,0,0,0); -- Cured Ham Steak [4/4/67]
INSERT INTO npc_vendor_template VALUES (437,6948,0,0,0); -- Hearthstone [4/4/18]
INSERT INTO npc_vendor_template VALUES (437,8766,0,0,0); -- Morning Glory Dew [4/4/188]
INSERT INTO npc_vendor_template VALUES (437,8952,0,0,0); -- Roasted Quail [4/4/101]
INSERT INTO npc_vendor_template VALUES (437,21815,10,43200,0); -- Love Token [4/4/18]
INSERT INTO npc_vendor_template VALUES (437,21829,0,0,0); -- Perfume Bottle [4/4/18]
INSERT INTO npc_vendor_template VALUES (437,21833,0,0,0); -- Cologne Bottle [4/4/18]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 414,5,43200,0 Dalaran Sharp [1/4/1]
-- 422,5,43200,0 Dwarven Mild [1/4/1]
-- 1707,5,43200,0 Stormwind Brie [1/4/1]
-- 2070,5,43200,0 Darnassian Bleu [1/4/1]
-- 2593,0,0,0 Flask of Port [1/4/24]
-- 2594,0,0,0 Flagon of Mead [2/4/28]
-- 2595,0,0,0 Jug of Bourbon [1/4/24]
-- 2596,0,0,0 Skin of Dwarven Stout [1/4/24]
-- 2723,0,0,0 Bottle of Pinot Noir [1/4/24]
-- 3927,5,43200,0 Fine Aged Cheddar [1/4/1]
-- 4536,5,43200,0 Shiny Red Apple [1/4/2]
-- 4537,5,43200,0 Tel'Abim Banana [1/4/2]
-- 4538,5,43200,0 Snapvine Watermelon [1/4/3]
-- 4539,5,43200,0 Goldenbark Apple [1/4/3]
-- 4602,5,43200,0 Moon Harvest Pumpkin [1/4/3]
-- 8932,5,43200,0 Alterac Swiss [1/4/1]
-- 8953,5,43200,0 Deep Fried Plantains [1/4/3]

INSERT INTO npc_vendor VALUES (6930,414,5,43200,0); -- Dalaran Sharp
INSERT INTO npc_vendor VALUES (6930,422,5,43200,0); -- Dwarven Mild
INSERT INTO npc_vendor VALUES (6930,1707,5,43200,0); -- Stormwind Brie
INSERT INTO npc_vendor VALUES (6930,2070,5,43200,0); -- Darnassian Bleu
INSERT INTO npc_vendor VALUES (5111,2593,0,0,0); -- Flask of Port
INSERT INTO npc_vendor VALUES (1464,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (5111,2594,0,0,0); -- Flagon of Mead
INSERT INTO npc_vendor VALUES (5111,2595,0,0,0); -- Jug of Bourbon
INSERT INTO npc_vendor VALUES (5111,2596,0,0,0); -- Skin of Dwarven Stout
INSERT INTO npc_vendor VALUES (5111,2723,0,0,0); -- Bottle of Pinot Noir
INSERT INTO npc_vendor VALUES (6930,3927,5,43200,0); -- Fine Aged Cheddar
INSERT INTO npc_vendor VALUES (7736,4536,5,43200,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (7736,4537,5,43200,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (7736,4538,5,43200,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (7736,4539,5,43200,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (7736,4602,5,43200,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (6930,8932,5,43200,0); -- Alterac Swiss
INSERT INTO npc_vendor VALUES (7736,8953,5,43200,0); -- Deep Fried Plantains

-- Total count: Templates: 16, single 18, sum 34, before: 82

-- ------------
-- General Supplies 13
-- 15287,16920
-- ------------
DELETE FROM npc_vendor WHERE entry IN (15287,16920);
UPDATE creature_template SET vendor_id=438 WHERE entry IN (15287,16920);

INSERT INTO npc_vendor_template VALUES (438,159,0,0,0); -- Refreshing Spring Water [2/2/227]
INSERT INTO npc_vendor_template VALUES (438,2512,0,0,0); -- Rough Arrow [2/2/94]
INSERT INTO npc_vendor_template VALUES (438,20857,0,0,0); -- Honey Bread [2/2/3]
INSERT INTO npc_vendor_template VALUES (438,25861,0,0,0); -- Crude Throwing Axe [2/2/44]

-- Total count: Templates: 4, single 0, sum 4, before: 8

-- ------------
-- General Supplies 14
-- 791,1685,18810
-- ------------
DELETE FROM npc_vendor WHERE entry IN (791,1685,18810);
UPDATE creature_template SET vendor_id=439 WHERE entry IN (791,1685,18810);

INSERT INTO npc_vendor_template VALUES (439,159,0,0,0); -- Refreshing Spring Water [3/3/227]
INSERT INTO npc_vendor_template VALUES (439,1179,0,0,0); -- Ice Cold Milk [3/3/169]
INSERT INTO npc_vendor_template VALUES (439,2512,0,0,0); -- Rough Arrow [3/3/94]
INSERT INTO npc_vendor_template VALUES (439,2515,0,0,0); -- Sharp Arrow [3/3/104]
INSERT INTO npc_vendor_template VALUES (439,2516,0,0,0); -- Light Shot [3/3/72]
INSERT INTO npc_vendor_template VALUES (439,2519,0,0,0); -- Heavy Shot [3/3/84]
INSERT INTO npc_vendor_template VALUES (439,4470,0,0,0); -- Simple Wood [3/3/132]
INSERT INTO npc_vendor_template VALUES (439,4471,0,0,0); -- Flint and Tinder [3/3/85]
INSERT INTO npc_vendor_template VALUES (439,4496,0,0,0); -- Small Brown Pouch [3/3/53]
INSERT INTO npc_vendor_template VALUES (439,4498,0,0,0); -- Brown Leather Satchel [3/3/82]
INSERT INTO npc_vendor_template VALUES (439,25861,0,0,0); -- Crude Throwing Axe [3/3/44]
INSERT INTO npc_vendor_template VALUES (439,25872,0,0,0); -- Balanced Throwing Dagger [3/3/44]
INSERT INTO npc_vendor_template VALUES (439,29007,0,0,0); -- Weighted Throwing Axe [3/3/39]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 858,3,43200,0 Lesser Healing Potion [1/3/1]
-- 1205,0,0,0 Melon Juice [1/3/175]
-- 2455,3,43200,0 Minor Mana Potion [1/3/1]
-- 2946,0,0,0 Broken Balanced Throwing Dagger [1/3/1]
-- 3107,0,0,0 Broken Keen Throwing Knife [1/3/1]
-- 3131,0,0,0 Broken Weighted Throwing Axe [1/3/1]
-- 3135,0,0,0 Broken Sharp Throwing Axe [1/3/1]
-- 5042,0,0,0 Red Ribboned Wrapping Paper [2/3/31]
-- 5048,0,0,0 Blue Ribboned Wrapping Paper [1/3/16]
-- 5640,0,0,0 Recipe: Rage Potion [1/3/2]
-- 6053,0,0,0 Recipe: Holy Protection Potion [1/3/2]
-- 6183,0,0,0 Unlit Poor Torch [1/3/4]
-- 20857,0,0,0 Honey Bread [1/3/3]
-- 25873,0,0,0 Keen Throwing Knife [1/3/51]
-- 28979,0,0,0 Light Throwing Knife [2/3/36]
-- 29008,0,0,0 Sharp Throwing Axe [1/3/26]

INSERT INTO npc_vendor VALUES (18810,858,3,43200,0); -- Lesser Healing Potion
INSERT INTO npc_vendor VALUES (791,1205,0,0,0); -- Melon Juice
INSERT INTO npc_vendor VALUES (18810,2455,3,43200,0); -- Minor Mana Potion
INSERT INTO npc_vendor VALUES (791,2946,0,0,0); -- Broken Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (791,3107,0,0,0); -- Broken Keen Throwing Knife
INSERT INTO npc_vendor VALUES (791,3131,0,0,0); -- Broken Weighted Throwing Axe
INSERT INTO npc_vendor VALUES (791,3135,0,0,0); -- Broken Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (1685,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (18810,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (791,5048,0,0,0); -- Blue Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (1685,5640,0,0,0); -- Recipe: Rage Potion
INSERT INTO npc_vendor VALUES (1685,6053,0,0,0); -- Recipe: Holy Protection Potion
INSERT INTO npc_vendor VALUES (791,6183,0,0,0); -- Unlit Poor Torch
INSERT INTO npc_vendor VALUES (791,20857,0,0,0); -- Honey Bread
INSERT INTO npc_vendor VALUES (791,25873,0,0,0); -- Keen Throwing Knife
INSERT INTO npc_vendor VALUES (1685,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (18810,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (791,29008,0,0,0); -- Sharp Throwing Axe

-- Total count: Templates: 13, single 18, sum 31, before: 57

-- ------------
-- General Supplies 15
-- 1149,2401,2803,2806,3541,8139,11038,11555,12021,12246
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1149,2401,2803,2806,3541,8139,11038,11555,12021,12246);
UPDATE creature_template SET vendor_id=440 WHERE entry IN (1149,2401,2803,2806,3541,8139,11038,11555,12021,12246);

INSERT INTO npc_vendor_template VALUES (440,159,0,0,0); -- Refreshing Spring Water [10/10/227]
INSERT INTO npc_vendor_template VALUES (440,1205,0,0,0); -- Melon Juice [10/10/175]
INSERT INTO npc_vendor_template VALUES (440,1645,0,0,0); -- Moonberry Juice [10/10/163]
INSERT INTO npc_vendor_template VALUES (440,1708,0,0,0); -- Sweet Nectar [10/10/164]
INSERT INTO npc_vendor_template VALUES (440,2515,0,0,0); -- Sharp Arrow [10/10/104]
INSERT INTO npc_vendor_template VALUES (440,2519,0,0,0); -- Heavy Shot [10/10/84]
INSERT INTO npc_vendor_template VALUES (440,3030,0,0,0); -- Razor Arrow [10/10/75]
INSERT INTO npc_vendor_template VALUES (440,3033,0,0,0); -- Solid Shot [10/10/61]
INSERT INTO npc_vendor_template VALUES (440,4470,0,0,0); -- Simple Wood [10/10/132]
INSERT INTO npc_vendor_template VALUES (440,4471,0,0,0); -- Flint and Tinder [10/10/85]
INSERT INTO npc_vendor_template VALUES (440,4497,0,0,0); -- Heavy Brown Bag [10/10/55]
INSERT INTO npc_vendor_template VALUES (440,4498,0,0,0); -- Brown Leather Satchel [10/10/82]
INSERT INTO npc_vendor_template VALUES (440,11284,0,0,0); -- Accurate Slugs [10/10/95]
INSERT INTO npc_vendor_template VALUES (440,11285,0,0,0); -- Jagged Arrow [10/10/100]
INSERT INTO npc_vendor_template VALUES (440,25873,0,0,0); -- Keen Throwing Knife [10/10/51]
INSERT INTO npc_vendor_template VALUES (440,25876,0,0,0); -- Gleaming Throwing Axe [10/10/39]
INSERT INTO npc_vendor_template VALUES (440,28053,0,0,0); -- Wicked Arrow [10/10/100]
INSERT INTO npc_vendor_template VALUES (440,28060,0,0,0); -- Impact Shot [10/10/89]
INSERT INTO npc_vendor_template VALUES (440,29009,0,0,0); -- Heavy Throwing Dagger [10/10/41]
INSERT INTO npc_vendor_template VALUES (440,29010,0,0,0); -- Wicked Throwing Dagger [10/10/34]
INSERT INTO npc_vendor_template VALUES (440,29013,0,0,0); -- Jagged Throwing Axe [10/10/73]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1179,0,0,0 Ice Cold Milk [7/10/169]
-- 1477,0,0,0 Scroll of Agility II [1/10/1]
-- 1711,0,0,0 Scroll of Stamina II [1/10/3]
-- 2289,0,0,0 Scroll of Strength II [1/10/1]
-- 2290,0,0,0 Scroll of Intellect II [1/10/3]
-- 3734,0,0,0 Recipe: Big Bear Steak [1/10/2]
-- 4421,0,0,0 Scroll of Protection III [1/10/1]
-- 4424,0,0,0 Scroll of Spirit III [1/10/1]
-- 4604,0,0,0 Forest Mushroom Cap [2/10/18]
-- 4605,0,0,0 Red-speckled Mushroom [2/10/18]
-- 4606,0,0,0 Spongy Morel [2/10/21]
-- 4607,0,0,0 Delicious Cave Mold [2/10/21]
-- 4608,0,0,0 Raw Black Truffle [2/10/21]
-- 4609,0,0,0 Recipe: Barbecued Buzzard Wing [1/10/2]
-- 6401,0,0,0 Pattern: Dark Silk Shirt [1/10/2]
-- 7087,0,0,0 Pattern: Crimson Silk Cloak [1/10/2]
-- 7561,1,3600,0 Schematic: Goblin Jumper Cables [1/10/4]
-- 8766,0,0,0 Morning Glory Dew [2/10/188]
-- 8948,0,0,0 Dried King Bolete [2/10/27]
-- 12227,0,0,0 Recipe: Lean Wolf Steak [1/10/1]
-- 12229,0,0,0 Recipe: Hot Wolf Ribs [1/10/3]
-- 12233,0,0,0 Recipe: Mystery Stew [1/10/3]
-- 12239,0,0,0 Recipe: Dragonbreath Chili [1/10/3]
-- 13308,0,0,0 Schematic: Ice Deflector [1/10/2]
-- 13310,0,0,0 Schematic: Accurate Scope [1/10/1]
-- 14630,0,0,0 Pattern: Enchanter's Cowl [1/10/2]
-- 16110,0,0,0 Recipe: Monster Omelet [2/10/3]
-- 16111,0,0,0 Recipe: Spiced Chili Crab [1/10/3]
-- 16767,1,10800,0 Recipe: Undermine Clam Chowder [1/10/1]
-- 16768,0,0,0 Furbolg Medicine Pouch [1/10/1]
-- 16769,0,0,0 Furbolg Medicine Totem [1/10/1]
-- 25875,0,0,0 Deadly Throwing Axe [9/10/45]
-- 29008,0,0,0 Sharp Throwing Axe [6/10/26]
-- 29014,0,0,0 Blacksteel Throwing Dagger [9/10/72]
-- 35564,0,0,0 Recipe: Charred Bear Kabobs [2/10/2]
-- 35566,0,0,0 Recipe: Juicy Bear Burger [2/10/2]

INSERT INTO npc_vendor VALUES (2401,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (2803,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (2806,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (3541,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (8139,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (11038,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (12021,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (12246,1477,0,0,0); -- Scroll of Agility II
INSERT INTO npc_vendor VALUES (12246,1711,0,0,0); -- Scroll of Stamina II
INSERT INTO npc_vendor VALUES (12246,2289,0,0,0); -- Scroll of Strength II
INSERT INTO npc_vendor VALUES (12246,2290,0,0,0); -- Scroll of Intellect II
INSERT INTO npc_vendor VALUES (12246,3734,0,0,0); -- Recipe: Big Bear Steak
INSERT INTO npc_vendor VALUES (12246,4421,0,0,0); -- Scroll of Protection III
INSERT INTO npc_vendor VALUES (12246,4424,0,0,0); -- Scroll of Spirit III
INSERT INTO npc_vendor VALUES (2803,4604,0,0,0); -- Forest Mushroom Cap
INSERT INTO npc_vendor VALUES (11038,4604,0,0,0); -- Forest Mushroom Cap
INSERT INTO npc_vendor VALUES (2803,4605,0,0,0); -- Red-speckled Mushroom
INSERT INTO npc_vendor VALUES (11038,4605,0,0,0); -- Red-speckled Mushroom
INSERT INTO npc_vendor VALUES (2803,4606,0,0,0); -- Spongy Morel
INSERT INTO npc_vendor VALUES (11038,4606,0,0,0); -- Spongy Morel
INSERT INTO npc_vendor VALUES (2803,4607,0,0,0); -- Delicious Cave Mold
INSERT INTO npc_vendor VALUES (11038,4607,0,0,0); -- Delicious Cave Mold
INSERT INTO npc_vendor VALUES (2803,4608,0,0,0); -- Raw Black Truffle
INSERT INTO npc_vendor VALUES (11038,4608,0,0,0); -- Raw Black Truffle
INSERT INTO npc_vendor VALUES (12246,4609,0,0,0); -- Recipe: Barbecued Buzzard Wing
INSERT INTO npc_vendor VALUES (12246,6401,0,0,0); -- Pattern: Dark Silk Shirt
INSERT INTO npc_vendor VALUES (12246,7087,0,0,0); -- Pattern: Crimson Silk Cloak
INSERT INTO npc_vendor VALUES (12246,7561,1,3600,0); -- Schematic: Goblin Jumper Cables
INSERT INTO npc_vendor VALUES (2803,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (11038,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (2803,8948,0,0,0); -- Dried King Bolete
INSERT INTO npc_vendor VALUES (11038,8948,0,0,0); -- Dried King Bolete
INSERT INTO npc_vendor VALUES (12246,12227,0,0,0); -- Recipe: Lean Wolf Steak
INSERT INTO npc_vendor VALUES (12246,12229,0,0,0); -- Recipe: Hot Wolf Ribs
INSERT INTO npc_vendor VALUES (12246,12233,0,0,0); -- Recipe: Mystery Stew
INSERT INTO npc_vendor VALUES (12246,12239,0,0,0); -- Recipe: Dragonbreath Chili
INSERT INTO npc_vendor VALUES (12246,13308,0,0,0); -- Schematic: Ice Deflector
INSERT INTO npc_vendor VALUES (12246,13310,0,0,0); -- Schematic: Accurate Scope
INSERT INTO npc_vendor VALUES (12246,14630,0,0,0); -- Pattern: Enchanter's Cowl
INSERT INTO npc_vendor VALUES (2803,16110,0,0,0); -- Recipe: Monster Omelet
INSERT INTO npc_vendor VALUES (2806,16110,0,0,0); -- Recipe: Monster Omelet
INSERT INTO npc_vendor VALUES (1149,16111,0,0,0); -- Recipe: Spiced Chili Crab
INSERT INTO npc_vendor VALUES (8139,16767,1,10800,0); -- Recipe: Undermine Clam Chowder
INSERT INTO npc_vendor VALUES (11555,16768,0,0,0); -- Furbolg Medicine Pouch
INSERT INTO npc_vendor VALUES (11555,16769,0,0,0); -- Furbolg Medicine Totem
INSERT INTO npc_vendor VALUES (1149,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (2401,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (2803,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (2806,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (3541,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (8139,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (11038,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (12021,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (12246,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (2401,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (2803,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (2806,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (3541,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (8139,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (12021,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (1149,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (2401,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (2803,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (2806,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (3541,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (8139,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (11038,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (12021,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (12246,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (2803,35564,0,0,0); -- Recipe: Charred Bear Kabobs
INSERT INTO npc_vendor VALUES (2806,35564,0,0,0); -- Recipe: Charred Bear Kabobs
INSERT INTO npc_vendor VALUES (2803,35566,0,0,0); -- Recipe: Juicy Bear Burger
INSERT INTO npc_vendor VALUES (2806,35566,0,0,0); -- Recipe: Juicy Bear Burger

-- Total count: Templates: 21, single 73, sum 94, before: 283

-- ------------
-- General Goods & Repairs
-- 19314,19315,20231
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19314,19315,20231);
UPDATE creature_template SET vendor_id=441 WHERE entry IN (19314,19315,20231);

INSERT INTO npc_vendor_template VALUES (441,4470,0,0,0); -- Simple Wood [3/3/132]
INSERT INTO npc_vendor_template VALUES (441,8766,0,0,0); -- Morning Glory Dew [3/3/188]
INSERT INTO npc_vendor_template VALUES (441,8952,0,0,0); -- Roasted Quail [3/3/101]
INSERT INTO npc_vendor_template VALUES (441,11284,0,0,0); -- Accurate Slugs [3/3/95]
INSERT INTO npc_vendor_template VALUES (441,11285,0,0,0); -- Jagged Arrow [3/3/100]
INSERT INTO npc_vendor_template VALUES (441,27854,0,0,0); -- Smoked Talbuk Venison [3/3/35]
INSERT INTO npc_vendor_template VALUES (441,27860,0,0,0); -- Purified Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (441,28053,0,0,0); -- Wicked Arrow [3/3/100]
INSERT INTO npc_vendor_template VALUES (441,28056,0,0,0); -- Blackflight Arrow [3/3/49]
INSERT INTO npc_vendor_template VALUES (441,28060,0,0,0); -- Impact Shot [3/3/89]
INSERT INTO npc_vendor_template VALUES (441,28061,0,0,0); -- Ironbite Shell [3/3/51]
INSERT INTO npc_vendor_template VALUES (441,28399,0,0,0); -- Filtered Draenic Water [3/3/51]
INSERT INTO npc_vendor_template VALUES (441,29013,0,0,0); -- Jagged Throwing Axe [3/3/73]
INSERT INTO npc_vendor_template VALUES (441,29014,0,0,0); -- Blacksteel Throwing Dagger [3/3/72]
INSERT INTO npc_vendor_template VALUES (441,29451,0,0,0); -- Clefthoof Ribs [3/3/36]

-- Total count: Templates: 15, single 0, sum 15, before: 45

-- ------------
-- Fish Vendors 1
-- 2834,2842,19045,23896
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2834,2842,19045,23896);
UPDATE creature_template SET vendor_id=442 WHERE entry IN (2834,2842,19045,23896);

INSERT INTO npc_vendor_template VALUES (442,787,0,0,0); -- Slitherskin Mackerel [4/4/30]
INSERT INTO npc_vendor_template VALUES (442,4592,0,0,0); -- Longjaw Mud Snapper [4/4/30]
INSERT INTO npc_vendor_template VALUES (442,4593,0,0,0); -- Bristle Whisker Catfish [4/4/31]
INSERT INTO npc_vendor_template VALUES (442,4594,0,0,0); -- Rockscale Cod [4/4/30]
INSERT INTO npc_vendor_template VALUES (442,8957,0,0,0); -- Spinefin Halibut [4/4/35]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6887,0,0,0 Spotted Yellowtail [1/4/16]
-- 21552,0,0,0 Striped Yellowtail [3/4/14]
-- 27858,0,0,0 Sunspring Carp [1/4/6]
-- 29452,0,0,0 Zangar Trout [1/4/6]

INSERT INTO npc_vendor VALUES (2834,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (2842,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (19045,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (23896,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (19045,27858,0,0,0); -- Sunspring Carp
INSERT INTO npc_vendor VALUES (19045,29452,0,0,0); -- Zangar Trout

-- Total count: Templates: 5, single 6, sum 11, before: 26

-- ------------
-- Fish Vendors 2
-- 3540,4200,4221,4305,4307,7943
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3540,4200,4221,4305,4307,7943);
UPDATE creature_template SET vendor_id=443 WHERE entry IN (3540,4200,4221,4305,4307,7943);

INSERT INTO npc_vendor_template VALUES (443,787,0,0,0); -- Slitherskin Mackerel [6/6/30]
INSERT INTO npc_vendor_template VALUES (443,4592,0,0,0); -- Longjaw Mud Snapper [6/6/30]
INSERT INTO npc_vendor_template VALUES (443,4593,0,0,0); -- Bristle Whisker Catfish [6/6/31]
INSERT INTO npc_vendor_template VALUES (443,4594,0,0,0); -- Rockscale Cod [6/6/30]
INSERT INTO npc_vendor_template VALUES (443,6887,0,0,0); -- Spotted Yellowtail [6/6/16]
INSERT INTO npc_vendor_template VALUES (443,8957,0,0,0); -- Spinefin Halibut [6/6/35]
INSERT INTO npc_vendor_template VALUES (443,21552,5,43200,0); -- Striped Yellowtail [6/6/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 159,5,43200,0 Refreshing Spring Water [1/6/1]
-- 1179,5,43200,0 Ice Cold Milk [1/6/2]
-- 1205,5,43200,0 Melon Juice [1/6/3]
-- 1645,5,43200,0 Moonberry Juice [1/6/3]
-- 1708,5,43200,0 Sweet Nectar [1/6/3]
-- 5485,0,0,0 Recipe: Fillet of Frenzy [1/6/1]
-- 5528,0,0,0 Recipe: Clam Chowder [2/6/2]
-- 6326,0,0,0 Recipe: Slitherskin Mackerel [1/6/5]
-- 6368,0,0,0 Recipe: Rainbow Fin Albacore [2/6/10]
-- 6369,0,0,0 Recipe: Rockscale Cod [1/6/9]
-- 8766,0,0,0 Morning Glory Dew [1/6/188]
-- 16111,0,0,0 Recipe: Spiced Chili Crab [1/6/3]
-- 17062,0,0,0 Recipe: Mithril Head Trout [1/6/9]

INSERT INTO npc_vendor VALUES (7943,159,5,43200,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (7943,1179,5,43200,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (7943,1205,5,43200,0); -- Melon Juice
INSERT INTO npc_vendor VALUES (7943,1645,5,43200,0); -- Moonberry Juice
INSERT INTO npc_vendor VALUES (7943,1708,5,43200,0); -- Sweet Nectar
INSERT INTO npc_vendor VALUES (4200,5485,0,0,0); -- Recipe: Fillet of Frenzy
INSERT INTO npc_vendor VALUES (4305,5528,0,0,0); -- Recipe: Clam Chowder
INSERT INTO npc_vendor VALUES (4307,5528,0,0,0); -- Recipe: Clam Chowder
INSERT INTO npc_vendor VALUES (4305,6326,0,0,0); -- Recipe: Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (4305,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (4307,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (4307,6369,0,0,0); -- Recipe: Rockscale Cod
INSERT INTO npc_vendor VALUES (7943,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (4305,16111,0,0,0); -- Recipe: Spiced Chili Crab
INSERT INTO npc_vendor VALUES (4307,17062,0,0,0); -- Recipe: Mithril Head Trout

-- Total count: Templates: 7, single 15, sum 22, before: 57

-- ------------
-- Fish Vendors 3
-- 1678,1684,3497
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1678,1684,3497);
UPDATE creature_template SET vendor_id=444 WHERE entry IN (1678,1684,3497);

INSERT INTO npc_vendor_template VALUES (444,787,0,0,0); -- Slitherskin Mackerel [3/3/30]
INSERT INTO npc_vendor_template VALUES (444,4592,0,0,0); -- Longjaw Mud Snapper [3/3/30]
INSERT INTO npc_vendor_template VALUES (444,4593,0,0,0); -- Bristle Whisker Catfish [3/3/31]
INSERT INTO npc_vendor_template VALUES (444,4594,0,0,0); -- Rockscale Cod [3/3/30]
INSERT INTO npc_vendor_template VALUES (444,6256,0,0,0); -- Fishing Pole [3/3/87]
INSERT INTO npc_vendor_template VALUES (444,6365,0,0,0); -- Strong Fishing Pole [3/3/12]
INSERT INTO npc_vendor_template VALUES (444,6529,0,0,0); -- Shiny Bauble [3/3/57]
INSERT INTO npc_vendor_template VALUES (444,6530,0,0,0); -- Nightcrawlers [3/3/84]
INSERT INTO npc_vendor_template VALUES (444,6532,0,0,0); -- Bright Baubles [3/3/96]
INSERT INTO npc_vendor_template VALUES (444,6533,2,43200,0); -- Aquadynamic Fish Attractor [3/3/18]
INSERT INTO npc_vendor_template VALUES (444,6887,0,0,0); -- Spotted Yellowtail [3/3/16]
INSERT INTO npc_vendor_template VALUES (444,8957,0,0,0); -- Spinefin Halibut [3/3/35]
INSERT INTO npc_vendor_template VALUES (444,21552,5,43200,0); -- Striped Yellowtail [3/3/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6325,0,0,0 Recipe: Brilliant Smallfish [1/3/9]
-- 6328,0,0,0 Recipe: Longjaw Mud Snapper [1/3/8]
-- 6329,0,0,0 Recipe: Loch Frenzy Delight [1/3/1]
-- 6330,0,0,0 Recipe: Bristle Whisker Catfish [1/3/7]
-- 6368,0,0,0 Recipe: Rainbow Fin Albacore [1/3/10]

INSERT INTO npc_vendor VALUES (1684,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (1684,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (1684,6329,0,0,0); -- Recipe: Loch Frenzy Delight
INSERT INTO npc_vendor VALUES (3497,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (3497,6368,0,0,0); -- Recipe: Rainbow Fin Albacore

-- Total count: Templates: 13, single 5, sum 18, before: 44

-- ------------
-- Cloth Armor 1 (Knitted)
-- 959,2264,3611
-- ------------
DELETE FROM npc_vendor WHERE entry IN (959,2264,3611);
UPDATE creature_template SET vendor_id=201 WHERE entry IN (959,2264,3611);

INSERT INTO npc_vendor_template VALUES (201,792,0,0,0); -- Knitted Sandals [3/3/13]
INSERT INTO npc_vendor_template VALUES (201,793,0,0,0); -- Knitted Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (201,794,0,0,0); -- Knitted Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (201,795,0,0,0); -- Knitted Tunic [3/3/13]
INSERT INTO npc_vendor_template VALUES (201,3602,0,0,0); -- Knitted Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (201,3603,0,0,0); -- Knitted Bracers [3/3/13]

-- Total count: Templates: 6, single 0, sum 6, before: 18

-- ------------
-- Cloth Armor 2 (Robes)
-- 1309,1350,4172,4580,5156,11111
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1309,1350,4172,4580,5156,11111);
UPDATE creature_template SET vendor_id=202 WHERE entry IN (1309,1350,4172,4580,5156,11111);

INSERT INTO npc_vendor_template VALUES (202,2612,0,0,0); -- Plain Robe [6/6/8]
INSERT INTO npc_vendor_template VALUES (202,2613,0,0,0); -- Double-stitched Robes [6/6/8]
INSERT INTO npc_vendor_template VALUES (202,2614,0,0,0); -- Robe of Apprenticeship [6/6/8]
INSERT INTO npc_vendor_template VALUES (202,2615,0,0,0); -- Chromatic Robe [6/6/8]
INSERT INTO npc_vendor_template VALUES (202,2616,0,0,0); -- Shimmering Silk Robes [6/6/8]
INSERT INTO npc_vendor_template VALUES (202,2617,0,0,0); -- Burning Robes [6/6/8]
INSERT INTO npc_vendor_template VALUES (202,2618,0,0,0); -- Silver Dress Robes [6/6/8]

-- Total count: Templates: 7, single 0, sum 7, before: 42

-- ------------
-- Cloth Armor 3 (Dirty, Tattered)
-- 2113,3160
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2113,3160);
UPDATE creature_template SET vendor_id=203 WHERE entry IN (2113,3160);

INSERT INTO npc_vendor_template VALUES (203,85,0,0,0); -- Dirty Leather Vest [2/2/4]
INSERT INTO npc_vendor_template VALUES (203,193,0,0,0); -- Tattered Cloth Vest [2/2/3]
INSERT INTO npc_vendor_template VALUES (203,194,0,0,0); -- Tattered Cloth Pants [2/2/3]
INSERT INTO npc_vendor_template VALUES (203,195,0,0,0); -- Tattered Cloth Boots [2/2/3]
INSERT INTO npc_vendor_template VALUES (203,209,0,0,0); -- Dirty Leather Pants [2/2/4]
INSERT INTO npc_vendor_template VALUES (203,210,0,0,0); -- Dirty Leather Boots [2/2/4]
INSERT INTO npc_vendor_template VALUES (203,711,0,0,0); -- Tattered Cloth Gloves [2/2/3]
INSERT INTO npc_vendor_template VALUES (203,714,0,0,0); -- Dirty Leather Gloves [2/2/4]
INSERT INTO npc_vendor_template VALUES (203,1835,0,0,0); -- Dirty Leather Belt [2/2/4]
INSERT INTO npc_vendor_template VALUES (203,1836,0,0,0); -- Dirty Leather Bracers [2/2/4]
INSERT INTO npc_vendor_template VALUES (203,3595,0,0,0); -- Tattered Cloth Belt [2/2/3]
INSERT INTO npc_vendor_template VALUES (203,3596,0,0,0); -- Tattered Cloth Bracers [2/2/3]

-- Total count: Templates: 12, single 0, sum 12, before: 24

-- ------------
-- Cloth Armor 4 (Heavy Weave)
-- 1214,3486,3554,3683,4185,16631
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1214,3486,3554,3683,4185,16631);
UPDATE creature_template SET vendor_id=204 WHERE entry IN (1214,3486,3554,3683,4185,16631);

INSERT INTO npc_vendor_template VALUES (204,837,0,0,0); -- Heavy Weave Armor [6/6/18]
INSERT INTO npc_vendor_template VALUES (204,838,0,0,0); -- Heavy Weave Pants [6/6/18]
INSERT INTO npc_vendor_template VALUES (204,839,0,0,0); -- Heavy Weave Gloves [6/6/18]
INSERT INTO npc_vendor_template VALUES (204,840,0,0,0); -- Heavy Weave Shoes [6/6/18]
INSERT INTO npc_vendor_template VALUES (204,3428,0,0,0); -- Common Gray Shirt [6/6/14]
INSERT INTO npc_vendor_template VALUES (204,3589,0,0,0); -- Heavy Weave Belt [6/6/18]
INSERT INTO npc_vendor_template VALUES (204,3590,0,0,0); -- Heavy Weave Bracers [6/6/18]
INSERT INTO npc_vendor_template VALUES (204,16059,0,0,0); -- Common Brown Shirt [6/6/13]
INSERT INTO npc_vendor_template VALUES (204,16060,0,0,0); -- Common White Shirt [6/6/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2589,10,43200,0 Linen Cloth [1/6/1]
-- 2592,8,43200,0 Wool Cloth [1/6/1]
-- 2996,2,43200,0 Bolt of Linen Cloth [1/6/1]
-- 2997,2,43200,0 Bolt of Woolen Cloth [1/6/1]
-- 4305,2,43200,0 Bolt of Silk Cloth [1/6/1]
-- 4306,2,43200,0 Silk Cloth [1/6/1]
-- 4338,2,43200,0 Mageweave Cloth [1/6/1]
-- 4781,0,0,0 Whispering Vest [1/6/2]
-- 4781,1,14400,0 Whispering Vest [2/6/2]
-- 4781,1,43200,0 Whispering Vest [1/6/1]
-- 4782,0,0,0 Solstice Robe [1/6/2]
-- 4782,1,14400,0 Solstice Robe [2/6/2]
-- 4782,1,43200,0 Solstice Robe [1/6/1]
-- 4786,0,0,0 Wise Man's Belt [1/6/2]
-- 4786,1,14400,0 Wise Man's Belt [2/6/2]
-- 4786,1,43200,0 Wise Man's Belt [1/6/1]
-- 4790,1,14400,0 Inferno Cloak [1/6/1]
-- 4792,1,14400,0 Spirit Cloak [1/6/1]
-- 4793,1,14400,0 Sylvan Cloak [1/6/1]
-- 5772,1,7200,0 Pattern: Red Woolen Bag [1/6/11]

INSERT INTO npc_vendor VALUES (16631,2589,10,43200,0); -- Linen Cloth
INSERT INTO npc_vendor VALUES (16631,2592,8,43200,0); -- Wool Cloth
INSERT INTO npc_vendor VALUES (16631,2996,2,43200,0); -- Bolt of Linen Cloth
INSERT INTO npc_vendor VALUES (16631,2997,2,43200,0); -- Bolt of Woolen Cloth
INSERT INTO npc_vendor VALUES (16631,4305,2,43200,0); -- Bolt of Silk Cloth
INSERT INTO npc_vendor VALUES (16631,4306,2,43200,0); -- Silk Cloth
INSERT INTO npc_vendor VALUES (16631,4338,2,43200,0); -- Mageweave Cloth
INSERT INTO npc_vendor VALUES (1214,4781,0,0,0); -- Whispering Vest
INSERT INTO npc_vendor VALUES (3486,4781,1,14400,0); -- Whispering Vest
INSERT INTO npc_vendor VALUES (3683,4781,1,14400,0); -- Whispering Vest
INSERT INTO npc_vendor VALUES (3554,4781,1,43200,0); -- Whispering Vest
INSERT INTO npc_vendor VALUES (1214,4782,0,0,0); -- Solstice Robe
INSERT INTO npc_vendor VALUES (3486,4782,1,14400,0); -- Solstice Robe
INSERT INTO npc_vendor VALUES (3683,4782,1,14400,0); -- Solstice Robe
INSERT INTO npc_vendor VALUES (3554,4782,1,43200,0); -- Solstice Robe
INSERT INTO npc_vendor VALUES (1214,4786,0,0,0); -- Wise Man's Belt
INSERT INTO npc_vendor VALUES (3486,4786,1,14400,0); -- Wise Man's Belt
INSERT INTO npc_vendor VALUES (3683,4786,1,14400,0); -- Wise Man's Belt
INSERT INTO npc_vendor VALUES (3554,4786,1,43200,0); -- Wise Man's Belt
INSERT INTO npc_vendor VALUES (3486,4790,1,14400,0); -- Inferno Cloak
INSERT INTO npc_vendor VALUES (3486,4792,1,14400,0); -- Spirit Cloak
INSERT INTO npc_vendor VALUES (3486,4793,1,14400,0); -- Sylvan Cloak
INSERT INTO npc_vendor VALUES (3683,5772,1,7200,0); -- Pattern: Red Woolen Bag

-- Total count: Templates: 9, single 23, sum 32, before: 77

-- ------------
-- Cloth Armor 5 (Thick Cloth, Heavy Weave, Woven)
-- 3317,16623
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3317,16623);
UPDATE creature_template SET vendor_id=205 WHERE entry IN (3317,16623);

INSERT INTO npc_vendor_template VALUES (205,200,0,0,0); -- Thick Cloth Vest [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,201,0,0,0); -- Thick Cloth Pants [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,202,0,0,0); -- Thick Cloth Shoes [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,203,0,0,0); -- Thick Cloth Gloves [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,837,0,0,0); -- Heavy Weave Armor [2/2/18]
INSERT INTO npc_vendor_template VALUES (205,838,0,0,0); -- Heavy Weave Pants [2/2/18]
INSERT INTO npc_vendor_template VALUES (205,839,0,0,0); -- Heavy Weave Gloves [2/2/18]
INSERT INTO npc_vendor_template VALUES (205,840,0,0,0); -- Heavy Weave Shoes [2/2/18]
INSERT INTO npc_vendor_template VALUES (205,2364,0,0,0); -- Woven Vest [2/2/6]
INSERT INTO npc_vendor_template VALUES (205,2366,0,0,0); -- Woven Pants [2/2/6]
INSERT INTO npc_vendor_template VALUES (205,2367,0,0,0); -- Woven Boots [2/2/6]
INSERT INTO npc_vendor_template VALUES (205,2369,0,0,0); -- Woven Gloves [2/2/6]
INSERT INTO npc_vendor_template VALUES (205,3428,0,0,0); -- Common Gray Shirt [2/2/14]
INSERT INTO npc_vendor_template VALUES (205,3589,0,0,0); -- Heavy Weave Belt [2/2/18]
INSERT INTO npc_vendor_template VALUES (205,3590,0,0,0); -- Heavy Weave Bracers [2/2/18]
INSERT INTO npc_vendor_template VALUES (205,3597,0,0,0); -- Thick Cloth Belt [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,3598,0,0,0); -- Thick Cloth Bracers [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,3606,0,0,0); -- Woven Belt [2/2/6]
INSERT INTO npc_vendor_template VALUES (205,3607,0,0,0); -- Woven Bracers [2/2/6]
INSERT INTO npc_vendor_template VALUES (205,16059,0,0,0); -- Common Brown Shirt [2/2/13]
INSERT INTO npc_vendor_template VALUES (205,16060,0,0,0); -- Common White Shirt [2/2/13]

-- Total count: Templates: 21, single 0, sum 21, before: 42

-- ------------
-- Cloth Armor 6 (Thick Cloth, Heavy Weave)
-- 1291,8358,16716
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1291,8358,16716);
UPDATE creature_template SET vendor_id=206 WHERE entry IN (1291,8358,16716);

INSERT INTO npc_vendor_template VALUES (206,200,0,0,0); -- Thick Cloth Vest [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,201,0,0,0); -- Thick Cloth Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,202,0,0,0); -- Thick Cloth Shoes [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,203,0,0,0); -- Thick Cloth Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,837,0,0,0); -- Heavy Weave Armor [3/3/18]
INSERT INTO npc_vendor_template VALUES (206,838,0,0,0); -- Heavy Weave Pants [3/3/18]
INSERT INTO npc_vendor_template VALUES (206,839,0,0,0); -- Heavy Weave Gloves [3/3/18]
INSERT INTO npc_vendor_template VALUES (206,840,0,0,0); -- Heavy Weave Shoes [3/3/18]
INSERT INTO npc_vendor_template VALUES (206,3428,0,0,0); -- Common Gray Shirt [3/3/14]
INSERT INTO npc_vendor_template VALUES (206,3589,0,0,0); -- Heavy Weave Belt [3/3/18]
INSERT INTO npc_vendor_template VALUES (206,3590,0,0,0); -- Heavy Weave Bracers [3/3/18]
INSERT INTO npc_vendor_template VALUES (206,3597,0,0,0); -- Thick Cloth Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,3598,0,0,0); -- Thick Cloth Bracers [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,16059,0,0,0); -- Common Brown Shirt [3/3/13]
INSERT INTO npc_vendor_template VALUES (206,16060,0,0,0); -- Common White Shirt [3/3/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 792,0,0,0 Knitted Sandals [2/3/13]
-- 793,0,0,0 Knitted Gloves [2/3/13]
-- 794,0,0,0 Knitted Pants [2/3/13]
-- 795,0,0,0 Knitted Tunic [2/3/13]
-- 3602,0,0,0 Knitted Belt [2/3/13]
-- 3603,0,0,0 Knitted Bracers [2/3/13]

INSERT INTO npc_vendor VALUES (1291,792,0,0,0); -- Knitted Sandals
INSERT INTO npc_vendor VALUES (16716,792,0,0,0); -- Knitted Sandals
INSERT INTO npc_vendor VALUES (1291,793,0,0,0); -- Knitted Gloves
INSERT INTO npc_vendor VALUES (16716,793,0,0,0); -- Knitted Gloves
INSERT INTO npc_vendor VALUES (1291,794,0,0,0); -- Knitted Pants
INSERT INTO npc_vendor VALUES (16716,794,0,0,0); -- Knitted Pants
INSERT INTO npc_vendor VALUES (1291,795,0,0,0); -- Knitted Tunic
INSERT INTO npc_vendor VALUES (16716,795,0,0,0); -- Knitted Tunic
INSERT INTO npc_vendor VALUES (1291,3602,0,0,0); -- Knitted Belt
INSERT INTO npc_vendor VALUES (16716,3602,0,0,0); -- Knitted Belt
INSERT INTO npc_vendor VALUES (1291,3603,0,0,0); -- Knitted Bracers
INSERT INTO npc_vendor VALUES (16716,3603,0,0,0); -- Knitted Bracers

-- Total count: Templates: 15, single 12, sum 27, before: 57

-- ------------
-- Cloth Armor 7 (Knitted, Thick Cloth, Heavy Weave, Padded, Russet, Embroidered)
-- 3092,4175,5821
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3092,4175,5821);
UPDATE creature_template SET vendor_id=207 WHERE entry IN (3092,4175,5821);

INSERT INTO npc_vendor_template VALUES (207,200,0,0,0); -- Thick Cloth Vest [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,201,0,0,0); -- Thick Cloth Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,202,0,0,0); -- Thick Cloth Shoes [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,203,0,0,0); -- Thick Cloth Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,792,0,0,0); -- Knitted Sandals [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,793,0,0,0); -- Knitted Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,794,0,0,0); -- Knitted Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,795,0,0,0); -- Knitted Tunic [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,837,0,0,0); -- Heavy Weave Armor [3/3/18]
INSERT INTO npc_vendor_template VALUES (207,838,0,0,0); -- Heavy Weave Pants [3/3/18]
INSERT INTO npc_vendor_template VALUES (207,839,0,0,0); -- Heavy Weave Gloves [3/3/18]
INSERT INTO npc_vendor_template VALUES (207,840,0,0,0); -- Heavy Weave Shoes [3/3/18]
INSERT INTO npc_vendor_template VALUES (207,2156,0,0,0); -- Padded Boots [3/3/9]
INSERT INTO npc_vendor_template VALUES (207,2158,0,0,0); -- Padded Gloves [3/3/9]
INSERT INTO npc_vendor_template VALUES (207,2159,0,0,0); -- Padded Pants [3/3/9]
INSERT INTO npc_vendor_template VALUES (207,2160,0,0,0); -- Padded Armor [3/3/9]
INSERT INTO npc_vendor_template VALUES (207,2429,0,0,0); -- Russet Vest [3/3/12]
INSERT INTO npc_vendor_template VALUES (207,2431,0,0,0); -- Russet Pants [3/3/12]
INSERT INTO npc_vendor_template VALUES (207,2432,0,0,0); -- Russet Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (207,2434,0,0,0); -- Russet Gloves [3/3/12]
INSERT INTO npc_vendor_template VALUES (207,2435,0,0,0); -- Embroidered Armor [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,2437,0,0,0); -- Embroidered Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,2438,0,0,0); -- Embroidered Boots [3/3/15]
INSERT INTO npc_vendor_template VALUES (207,2440,0,0,0); -- Embroidered Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3587,0,0,0); -- Embroidered Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3588,0,0,0); -- Embroidered Bracers [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3589,0,0,0); -- Heavy Weave Belt [3/3/18]
INSERT INTO npc_vendor_template VALUES (207,3590,0,0,0); -- Heavy Weave Bracers [3/3/18]
INSERT INTO npc_vendor_template VALUES (207,3591,0,0,0); -- Padded Belt [3/3/9]
INSERT INTO npc_vendor_template VALUES (207,3592,0,0,0); -- Padded Bracers [3/3/9]
INSERT INTO npc_vendor_template VALUES (207,3593,0,0,0); -- Russet Belt [3/3/12]
INSERT INTO npc_vendor_template VALUES (207,3594,0,0,0); -- Russet Bracers [3/3/12]
INSERT INTO npc_vendor_template VALUES (207,3597,0,0,0); -- Thick Cloth Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3598,0,0,0); -- Thick Cloth Bracers [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3602,0,0,0); -- Knitted Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3603,0,0,0); -- Knitted Bracers [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3889,0,0,0); -- Russet Hat [3/3/13]
INSERT INTO npc_vendor_template VALUES (207,3892,0,0,0); -- Embroidered Hat [3/3/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2117,0,0,0 Thin Cloth Shoes [1/3/6]
-- 2119,0,0,0 Thin Cloth Gloves [1/3/6]
-- 2120,0,0,0 Thin Cloth Pants [1/3/6]
-- 2121,0,0,0 Thin Cloth Armor [1/3/6]
-- 2612,0,0,0 Plain Robe [1/3/8]
-- 2613,0,0,0 Double-stitched Robes [1/3/8]
-- 2614,0,0,0 Robe of Apprenticeship [1/3/8]
-- 2615,0,0,0 Chromatic Robe [1/3/8]
-- 2616,0,0,0 Shimmering Silk Robes [1/3/8]
-- 2617,0,0,0 Burning Robes [1/3/8]
-- 2618,0,0,0 Silver Dress Robes [1/3/8]
-- 3599,0,0,0 Thin Cloth Belt [1/3/6]
-- 3600,0,0,0 Thin Cloth Bracers [1/3/6]
-- 12256,1,7200,0 Cindercloth Leggings [1/3/1]
-- 13896,0,0,0 Dark Green Wedding Hanbok [1/3/3]
-- 13897,0,0,0 White Traditional Hanbok [1/3/3]
-- 13898,0,0,0 Royal Dangui [1/3/3]

INSERT INTO npc_vendor VALUES (4175,2117,0,0,0); -- Thin Cloth Shoes
INSERT INTO npc_vendor VALUES (4175,2119,0,0,0); -- Thin Cloth Gloves
INSERT INTO npc_vendor VALUES (4175,2120,0,0,0); -- Thin Cloth Pants
INSERT INTO npc_vendor VALUES (4175,2121,0,0,0); -- Thin Cloth Armor
INSERT INTO npc_vendor VALUES (3092,2612,0,0,0); -- Plain Robe
INSERT INTO npc_vendor VALUES (3092,2613,0,0,0); -- Double-stitched Robes
INSERT INTO npc_vendor VALUES (3092,2614,0,0,0); -- Robe of Apprenticeship
INSERT INTO npc_vendor VALUES (3092,2615,0,0,0); -- Chromatic Robe
INSERT INTO npc_vendor VALUES (3092,2616,0,0,0); -- Shimmering Silk Robes
INSERT INTO npc_vendor VALUES (3092,2617,0,0,0); -- Burning Robes
INSERT INTO npc_vendor VALUES (3092,2618,0,0,0); -- Silver Dress Robes
INSERT INTO npc_vendor VALUES (4175,3599,0,0,0); -- Thin Cloth Belt
INSERT INTO npc_vendor VALUES (4175,3600,0,0,0); -- Thin Cloth Bracers
INSERT INTO npc_vendor VALUES (4175,12256,1,7200,0); -- Cindercloth Leggings
INSERT INTO npc_vendor VALUES (5821,13896,0,0,0); -- Dark Green Wedding Hanbok
INSERT INTO npc_vendor VALUES (5821,13897,0,0,0); -- White Traditional Hanbok
INSERT INTO npc_vendor VALUES (5821,13898,0,0,0); -- Royal Dangui

-- Total count: Templates: 38, single 17, sum 55, before: 131

-- ------------
-- Cloth Armor 8 (Russet, Embroidered)
-- 5155,10293
-- ------------
DELETE FROM npc_vendor WHERE entry IN (5155,10293);
UPDATE creature_template SET vendor_id=208 WHERE entry IN (5155,10293);

INSERT INTO npc_vendor_template VALUES (208,2429,0,0,0); -- Russet Vest [2/2/12]
INSERT INTO npc_vendor_template VALUES (208,2431,0,0,0); -- Russet Pants [2/2/12]
INSERT INTO npc_vendor_template VALUES (208,2432,0,0,0); -- Russet Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (208,2434,0,0,0); -- Russet Gloves [2/2/12]
INSERT INTO npc_vendor_template VALUES (208,2435,0,0,0); -- Embroidered Armor [2/2/13]
INSERT INTO npc_vendor_template VALUES (208,2437,0,0,0); -- Embroidered Pants [2/2/13]
INSERT INTO npc_vendor_template VALUES (208,2438,0,0,0); -- Embroidered Boots [2/2/15]
INSERT INTO npc_vendor_template VALUES (208,2440,0,0,0); -- Embroidered Gloves [2/2/13]
INSERT INTO npc_vendor_template VALUES (208,3587,0,0,0); -- Embroidered Belt [2/2/13]
INSERT INTO npc_vendor_template VALUES (208,3588,0,0,0); -- Embroidered Bracers [2/2/13]
INSERT INTO npc_vendor_template VALUES (208,3593,0,0,0); -- Russet Belt [2/2/12]
INSERT INTO npc_vendor_template VALUES (208,3594,0,0,0); -- Russet Bracers [2/2/12]
INSERT INTO npc_vendor_template VALUES (208,3889,0,0,0); -- Russet Hat [2/2/13]
INSERT INTO npc_vendor_template VALUES (208,3892,0,0,0); -- Embroidered Hat [2/2/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 200,0,0,0 Thick Cloth Vest [1/2/13]
-- 201,0,0,0 Thick Cloth Pants [1/2/13]
-- 202,0,0,0 Thick Cloth Shoes [1/2/13]
-- 203,0,0,0 Thick Cloth Gloves [1/2/13]
-- 3597,0,0,0 Thick Cloth Belt [1/2/13]
-- 3598,0,0,0 Thick Cloth Bracers [1/2/13]

INSERT INTO npc_vendor VALUES (5155,200,0,0,0); -- Thick Cloth Vest
INSERT INTO npc_vendor VALUES (5155,201,0,0,0); -- Thick Cloth Pants
INSERT INTO npc_vendor VALUES (5155,202,0,0,0); -- Thick Cloth Shoes
INSERT INTO npc_vendor VALUES (5155,203,0,0,0); -- Thick Cloth Gloves
INSERT INTO npc_vendor VALUES (5155,3597,0,0,0); -- Thick Cloth Belt
INSERT INTO npc_vendor VALUES (5155,3598,0,0,0); -- Thick Cloth Bracers

-- Total count: Templates: 14, single 6, sum 20, before: 34

-- ------------
-- Cloth Armor 9 (Thick Cloth, Padded)
-- 2849,3952,4188
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2849,3952,4188);
UPDATE creature_template SET vendor_id=209 WHERE entry IN (2849,3952,4188);

INSERT INTO npc_vendor_template VALUES (209,200,0,0,0); -- Thick Cloth Vest [3/3/13]
INSERT INTO npc_vendor_template VALUES (209,201,0,0,0); -- Thick Cloth Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (209,202,0,0,0); -- Thick Cloth Shoes [3/3/13]
INSERT INTO npc_vendor_template VALUES (209,203,0,0,0); -- Thick Cloth Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (209,2156,0,0,0); -- Padded Boots [3/3/9]
INSERT INTO npc_vendor_template VALUES (209,2158,0,0,0); -- Padded Gloves [3/3/9]
INSERT INTO npc_vendor_template VALUES (209,2159,0,0,0); -- Padded Pants [3/3/9]
INSERT INTO npc_vendor_template VALUES (209,2160,0,0,0); -- Padded Armor [3/3/9]
INSERT INTO npc_vendor_template VALUES (209,3591,0,0,0); -- Padded Belt [3/3/9]
INSERT INTO npc_vendor_template VALUES (209,3592,0,0,0); -- Padded Bracers [3/3/9]
INSERT INTO npc_vendor_template VALUES (209,3597,0,0,0); -- Thick Cloth Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (209,3598,0,0,0); -- Thick Cloth Bracers [3/3/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 792,0,0,0 Knitted Sandals [1/3/13]
-- 793,0,0,0 Knitted Gloves [1/3/13]
-- 794,0,0,0 Knitted Pants [1/3/13]
-- 795,0,0,0 Knitted Tunic [1/3/13]
-- 837,0,0,0 Heavy Weave Armor [1/3/18]
-- 838,0,0,0 Heavy Weave Pants [1/3/18]
-- 839,0,0,0 Heavy Weave Gloves [1/3/18]
-- 840,0,0,0 Heavy Weave Shoes [1/3/18]
-- 2429,0,0,0 Russet Vest [1/3/12]
-- 2431,0,0,0 Russet Pants [1/3/12]
-- 2432,0,0,0 Russet Boots [1/3/14]
-- 2434,0,0,0 Russet Gloves [1/3/12]
-- 2435,0,0,0 Embroidered Armor [1/3/13]
-- 2437,0,0,0 Embroidered Pants [1/3/13]
-- 2438,0,0,0 Embroidered Boots [1/3/15]
-- 2440,0,0,0 Embroidered Gloves [1/3/13]
-- 3587,0,0,0 Embroidered Belt [1/3/13]
-- 3588,0,0,0 Embroidered Bracers [1/3/13]
-- 3589,0,0,0 Heavy Weave Belt [1/3/18]
-- 3590,0,0,0 Heavy Weave Bracers [1/3/18]
-- 3593,0,0,0 Russet Belt [1/3/12]
-- 3594,0,0,0 Russet Bracers [1/3/12]
-- 3602,0,0,0 Knitted Belt [1/3/13]
-- 3603,0,0,0 Knitted Bracers [1/3/13]
-- 3889,0,0,0 Russet Hat [1/3/13]
-- 3892,0,0,0 Embroidered Hat [1/3/14]
-- 7337,0,0,0 The Rock [1/3/3]
-- 7338,0,0,0 Mood Ring [1/3/3]
-- 7339,0,0,0 Miniscule Diamond Ring [1/3/3]
-- 7340,0,0,0 Flawless Diamond Solitaire [1/3/3]
-- 7341,0,0,0 Cubic Zirconia Ring [1/3/3]
-- 7342,0,0,0 Silver Piffeny Band [1/3/3]

INSERT INTO npc_vendor VALUES (3952,792,0,0,0); -- Knitted Sandals
INSERT INTO npc_vendor VALUES (3952,793,0,0,0); -- Knitted Gloves
INSERT INTO npc_vendor VALUES (3952,794,0,0,0); -- Knitted Pants
INSERT INTO npc_vendor VALUES (3952,795,0,0,0); -- Knitted Tunic
INSERT INTO npc_vendor VALUES (3952,837,0,0,0); -- Heavy Weave Armor
INSERT INTO npc_vendor VALUES (3952,838,0,0,0); -- Heavy Weave Pants
INSERT INTO npc_vendor VALUES (3952,839,0,0,0); -- Heavy Weave Gloves
INSERT INTO npc_vendor VALUES (3952,840,0,0,0); -- Heavy Weave Shoes
INSERT INTO npc_vendor VALUES (2849,2429,0,0,0); -- Russet Vest
INSERT INTO npc_vendor VALUES (2849,2431,0,0,0); -- Russet Pants
INSERT INTO npc_vendor VALUES (2849,2432,0,0,0); -- Russet Boots
INSERT INTO npc_vendor VALUES (2849,2434,0,0,0); -- Russet Gloves
INSERT INTO npc_vendor VALUES (2849,2435,0,0,0); -- Embroidered Armor
INSERT INTO npc_vendor VALUES (2849,2437,0,0,0); -- Embroidered Pants
INSERT INTO npc_vendor VALUES (2849,2438,0,0,0); -- Embroidered Boots
INSERT INTO npc_vendor VALUES (2849,2440,0,0,0); -- Embroidered Gloves
INSERT INTO npc_vendor VALUES (2849,3587,0,0,0); -- Embroidered Belt
INSERT INTO npc_vendor VALUES (2849,3588,0,0,0); -- Embroidered Bracers
INSERT INTO npc_vendor VALUES (3952,3589,0,0,0); -- Heavy Weave Belt
INSERT INTO npc_vendor VALUES (3952,3590,0,0,0); -- Heavy Weave Bracers
INSERT INTO npc_vendor VALUES (2849,3593,0,0,0); -- Russet Belt
INSERT INTO npc_vendor VALUES (2849,3594,0,0,0); -- Russet Bracers
INSERT INTO npc_vendor VALUES (3952,3602,0,0,0); -- Knitted Belt
INSERT INTO npc_vendor VALUES (3952,3603,0,0,0); -- Knitted Bracers
INSERT INTO npc_vendor VALUES (2849,3889,0,0,0); -- Russet Hat
INSERT INTO npc_vendor VALUES (2849,3892,0,0,0); -- Embroidered Hat
INSERT INTO npc_vendor VALUES (2849,7337,0,0,0); -- The Rock
INSERT INTO npc_vendor VALUES (2849,7338,0,0,0); -- Mood Ring
INSERT INTO npc_vendor VALUES (2849,7339,0,0,0); -- Miniscule Diamond Ring
INSERT INTO npc_vendor VALUES (2849,7340,0,0,0); -- Flawless Diamond Solitaire
INSERT INTO npc_vendor VALUES (2849,7341,0,0,0); -- Cubic Zirconia Ring
INSERT INTO npc_vendor VALUES (2849,7342,0,0,0); -- Silver Piffeny Band

-- Total count: Templates: 12, single 32, sum 44, before: 68

-- ------------
-- Cloth Armor 10 (Woven)
-- 3522
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3522);
UPDATE creature_template SET vendor_id=210 WHERE entry IN (3522);

INSERT INTO npc_vendor_template VALUES (210,2364,0,0,0); -- Woven Vest [1/1/6]
INSERT INTO npc_vendor_template VALUES (210,2366,0,0,0); -- Woven Pants [1/1/6]
INSERT INTO npc_vendor_template VALUES (210,2367,0,0,0); -- Woven Boots [1/1/6]
INSERT INTO npc_vendor_template VALUES (210,2369,0,0,0); -- Woven Gloves [1/1/6]
INSERT INTO npc_vendor_template VALUES (210,3606,0,0,0); -- Woven Belt [1/1/6]
INSERT INTO npc_vendor_template VALUES (210,3607,0,0,0); -- Woven Bracers [1/1/6]
INSERT INTO npc_vendor_template VALUES (210,6270,0,0,0); -- Pattern: Blue Linen Vest [1/1/3]

-- Total count: Templates: 7, single 0, sum 7, before: 7

-- ------------
-- Cloth Armor 9 (Thin Cloth)
-- 3590
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3590);
UPDATE creature_template SET vendor_id=211 WHERE entry IN (3590);

INSERT INTO npc_vendor_template VALUES (211,2117,0,0,0); -- Thin Cloth Shoes [1/1/6]
INSERT INTO npc_vendor_template VALUES (211,2119,0,0,0); -- Thin Cloth Gloves [1/1/6]
INSERT INTO npc_vendor_template VALUES (211,2120,0,0,0); -- Thin Cloth Pants [1/1/6]
INSERT INTO npc_vendor_template VALUES (211,2121,0,0,0); -- Thin Cloth Armor [1/1/6]
INSERT INTO npc_vendor_template VALUES (211,3599,0,0,0); -- Thin Cloth Belt [1/1/6]
INSERT INTO npc_vendor_template VALUES (211,3600,0,0,0); -- Thin Cloth Bracers [1/1/6]

-- Total count: Templates: 6, single 0, sum 6, before: 6

-- ------------
-- Cloth & Leather Armor 0 (Heavy Weave, Tanned)
-- 4558,5108
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4558,5108);
UPDATE creature_template SET vendor_id=212 WHERE entry IN (4558,5108);

INSERT INTO npc_vendor_template VALUES (212,837,0,0,0); -- Heavy Weave Armor [2/2/18]
INSERT INTO npc_vendor_template VALUES (212,838,0,0,0); -- Heavy Weave Pants [2/2/18]
INSERT INTO npc_vendor_template VALUES (212,839,0,0,0); -- Heavy Weave Gloves [2/2/18]
INSERT INTO npc_vendor_template VALUES (212,840,0,0,0); -- Heavy Weave Shoes [2/2/18]
INSERT INTO npc_vendor_template VALUES (212,843,0,0,0); -- Tanned Leather Boots [2/2/20]
INSERT INTO npc_vendor_template VALUES (212,844,0,0,0); -- Tanned Leather Gloves [2/2/20]
INSERT INTO npc_vendor_template VALUES (212,845,0,0,0); -- Tanned Leather Pants [2/2/20]
INSERT INTO npc_vendor_template VALUES (212,846,0,0,0); -- Tanned Leather Jerkin [2/2/20]
INSERT INTO npc_vendor_template VALUES (212,1843,0,0,0); -- Tanned Leather Belt [2/2/20]
INSERT INTO npc_vendor_template VALUES (212,1844,0,0,0); -- Tanned Leather Bracers [2/2/20]
INSERT INTO npc_vendor_template VALUES (212,3428,0,0,0); -- Common Gray Shirt [2/2/14]
INSERT INTO npc_vendor_template VALUES (212,3589,0,0,0); -- Heavy Weave Belt [2/2/18]
INSERT INTO npc_vendor_template VALUES (212,3590,0,0,0); -- Heavy Weave Bracers [2/2/18]
INSERT INTO npc_vendor_template VALUES (212,16059,0,0,0); -- Common Brown Shirt [2/2/13]
INSERT INTO npc_vendor_template VALUES (212,16060,0,0,0); -- Common White Shirt [2/2/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 85,0,0,0 Dirty Leather Vest [1/2/4]
-- 193,0,0,0 Tattered Cloth Vest [1/2/3]
-- 194,0,0,0 Tattered Cloth Pants [1/2/3]
-- 195,0,0,0 Tattered Cloth Boots [1/2/3]
-- 209,0,0,0 Dirty Leather Pants [1/2/4]
-- 210,0,0,0 Dirty Leather Boots [1/2/4]
-- 711,0,0,0 Tattered Cloth Gloves [1/2/3]
-- 714,0,0,0 Dirty Leather Gloves [1/2/4]
-- 1835,0,0,0 Dirty Leather Belt [1/2/4]
-- 1836,0,0,0 Dirty Leather Bracers [1/2/4]
-- 2364,0,0,0 Woven Vest [1/2/6]
-- 2366,0,0,0 Woven Pants [1/2/6]
-- 2367,0,0,0 Woven Boots [1/2/6]
-- 2369,0,0,0 Woven Gloves [1/2/6]
-- 2370,0,0,0 Battered Leather Harness [1/2/8]
-- 2371,0,0,0 Battered Leather Belt [1/2/8]
-- 2372,0,0,0 Battered Leather Pants [1/2/8]
-- 2373,0,0,0 Battered Leather Boots [1/2/8]
-- 2374,0,0,0 Battered Leather Bracers [1/2/8]
-- 2375,0,0,0 Battered Leather Gloves [1/2/8]
-- 3595,0,0,0 Tattered Cloth Belt [1/2/3]
-- 3596,0,0,0 Tattered Cloth Bracers [1/2/3]
-- 3606,0,0,0 Woven Belt [1/2/6]
-- 3607,0,0,0 Woven Bracers [1/2/6]

INSERT INTO npc_vendor VALUES (4558,85,0,0,0); -- Dirty Leather Vest
INSERT INTO npc_vendor VALUES (4558,193,0,0,0); -- Tattered Cloth Vest
INSERT INTO npc_vendor VALUES (4558,194,0,0,0); -- Tattered Cloth Pants
INSERT INTO npc_vendor VALUES (4558,195,0,0,0); -- Tattered Cloth Boots
INSERT INTO npc_vendor VALUES (4558,209,0,0,0); -- Dirty Leather Pants
INSERT INTO npc_vendor VALUES (4558,210,0,0,0); -- Dirty Leather Boots
INSERT INTO npc_vendor VALUES (4558,711,0,0,0); -- Tattered Cloth Gloves
INSERT INTO npc_vendor VALUES (4558,714,0,0,0); -- Dirty Leather Gloves
INSERT INTO npc_vendor VALUES (4558,1835,0,0,0); -- Dirty Leather Belt
INSERT INTO npc_vendor VALUES (4558,1836,0,0,0); -- Dirty Leather Bracers
INSERT INTO npc_vendor VALUES (4558,2364,0,0,0); -- Woven Vest
INSERT INTO npc_vendor VALUES (4558,2366,0,0,0); -- Woven Pants
INSERT INTO npc_vendor VALUES (4558,2367,0,0,0); -- Woven Boots
INSERT INTO npc_vendor VALUES (4558,2369,0,0,0); -- Woven Gloves
INSERT INTO npc_vendor VALUES (4558,2370,0,0,0); -- Battered Leather Harness
INSERT INTO npc_vendor VALUES (4558,2371,0,0,0); -- Battered Leather Belt
INSERT INTO npc_vendor VALUES (4558,2372,0,0,0); -- Battered Leather Pants
INSERT INTO npc_vendor VALUES (4558,2373,0,0,0); -- Battered Leather Boots
INSERT INTO npc_vendor VALUES (4558,2374,0,0,0); -- Battered Leather Bracers
INSERT INTO npc_vendor VALUES (4558,2375,0,0,0); -- Battered Leather Gloves
INSERT INTO npc_vendor VALUES (4558,3595,0,0,0); -- Tattered Cloth Belt
INSERT INTO npc_vendor VALUES (4558,3596,0,0,0); -- Tattered Cloth Bracers
INSERT INTO npc_vendor VALUES (4558,3606,0,0,0); -- Woven Belt
INSERT INTO npc_vendor VALUES (4558,3607,0,0,0); -- Woven Bracers

-- Total count: Templates: 15, single 24, sum 39, before: 54

-- ------------
-- Cloth & Leather Armor 1 (Knitted, Rough Leather)
-- = Cloth 1 + Leather 1
-- NPC 1238 = C&L1 + C&L2
-- NPC 4164 = C&L0 + C&L1 + H 11
-- 74,1238,4164,17929
-- ------------
DELETE FROM npc_vendor WHERE entry IN (74,1238,4164,17929);
UPDATE creature_template SET vendor_id=213 WHERE entry IN (74,1238,4164,17929);

INSERT INTO npc_vendor_template VALUES (213,792,0,0,0); -- Knitted Sandals [4/4/13]
INSERT INTO npc_vendor_template VALUES (213,793,0,0,0); -- Knitted Gloves [4/4/13]
INSERT INTO npc_vendor_template VALUES (213,794,0,0,0); -- Knitted Pants [4/4/13]
INSERT INTO npc_vendor_template VALUES (213,795,0,0,0); -- Knitted Tunic [4/4/13]
INSERT INTO npc_vendor_template VALUES (213,796,0,0,0); -- Rough Leather Boots [4/4/12]
INSERT INTO npc_vendor_template VALUES (213,797,0,0,0); -- Rough Leather Gloves [4/4/12]
INSERT INTO npc_vendor_template VALUES (213,798,0,0,0); -- Rough Leather Pants [4/4/12]
INSERT INTO npc_vendor_template VALUES (213,799,0,0,0); -- Rough Leather Vest [4/4/12]
INSERT INTO npc_vendor_template VALUES (213,1839,0,0,0); -- Rough Leather Belt [4/4/12]
INSERT INTO npc_vendor_template VALUES (213,1840,0,0,0); -- Rough Leather Bracers [4/4/12]
INSERT INTO npc_vendor_template VALUES (213,3602,0,0,0); -- Knitted Belt [4/4/13]
INSERT INTO npc_vendor_template VALUES (213,3603,0,0,0); -- Knitted Bracers [4/4/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 837,0,0,0 Heavy Weave Armor [1/4/18]
-- 838,0,0,0 Heavy Weave Pants [1/4/18]
-- 839,0,0,0 Heavy Weave Gloves [1/4/18]
-- 840,0,0,0 Heavy Weave Shoes [1/4/18]
-- 843,0,0,0 Tanned Leather Boots [1/4/20]
-- 844,0,0,0 Tanned Leather Gloves [1/4/20]
-- 845,0,0,0 Tanned Leather Pants [1/4/20]
-- 846,0,0,0 Tanned Leather Jerkin [1/4/20]
-- 847,0,0,0 Chainmail Armor [1/4/17]
-- 848,0,0,0 Chainmail Pants [1/4/17]
-- 849,0,0,0 Chainmail Boots [1/4/17]
-- 850,0,0,0 Chainmail Gloves [1/4/17]
-- 1843,0,0,0 Tanned Leather Belt [1/4/20]
-- 1844,0,0,0 Tanned Leather Bracers [1/4/20]
-- 1845,0,0,0 Chainmail Belt [1/4/17]
-- 1846,0,0,0 Chainmail Bracers [1/4/17]
-- 2117,0,0,0 Thin Cloth Shoes [1/4/6]
-- 2119,0,0,0 Thin Cloth Gloves [1/4/6]
-- 2120,0,0,0 Thin Cloth Pants [1/4/6]
-- 2121,0,0,0 Thin Cloth Armor [1/4/6]
-- 2122,0,0,0 Cracked Leather Belt [1/4/6]
-- 2123,0,0,0 Cracked Leather Boots [1/4/6]
-- 2124,0,0,0 Cracked Leather Bracers [1/4/6]
-- 2125,0,0,0 Cracked Leather Gloves [1/4/6]
-- 2126,0,0,0 Cracked Leather Pants [1/4/6]
-- 2127,0,0,0 Cracked Leather Vest [1/4/6]
-- 2392,0,0,0 Light Mail Armor [1/4/12]
-- 2393,0,0,0 Light Mail Belt [1/4/12]
-- 2394,0,0,0 Light Mail Leggings [1/4/12]
-- 2395,0,0,0 Light Mail Boots [1/4/12]
-- 2396,0,0,0 Light Mail Bracers [1/4/12]
-- 2397,0,0,0 Light Mail Gloves [1/4/12]
-- 3589,0,0,0 Heavy Weave Belt [1/4/18]
-- 3590,0,0,0 Heavy Weave Bracers [1/4/18]
-- 3599,0,0,0 Thin Cloth Belt [1/4/6]
-- 3600,0,0,0 Thin Cloth Bracers [1/4/6]

INSERT INTO npc_vendor VALUES (4164,837,0,0,0); -- Heavy Weave Armor
INSERT INTO npc_vendor VALUES (4164,838,0,0,0); -- Heavy Weave Pants
INSERT INTO npc_vendor VALUES (4164,839,0,0,0); -- Heavy Weave Gloves
INSERT INTO npc_vendor VALUES (4164,840,0,0,0); -- Heavy Weave Shoes
INSERT INTO npc_vendor VALUES (4164,843,0,0,0); -- Tanned Leather Boots
INSERT INTO npc_vendor VALUES (4164,844,0,0,0); -- Tanned Leather Gloves
INSERT INTO npc_vendor VALUES (4164,845,0,0,0); -- Tanned Leather Pants
INSERT INTO npc_vendor VALUES (4164,846,0,0,0); -- Tanned Leather Jerkin
INSERT INTO npc_vendor VALUES (4164,847,0,0,0); -- Chainmail Armor
INSERT INTO npc_vendor VALUES (4164,848,0,0,0); -- Chainmail Pants
INSERT INTO npc_vendor VALUES (4164,849,0,0,0); -- Chainmail Boots
INSERT INTO npc_vendor VALUES (4164,850,0,0,0); -- Chainmail Gloves
INSERT INTO npc_vendor VALUES (4164,1843,0,0,0); -- Tanned Leather Belt
INSERT INTO npc_vendor VALUES (4164,1844,0,0,0); -- Tanned Leather Bracers
INSERT INTO npc_vendor VALUES (4164,1845,0,0,0); -- Chainmail Belt
INSERT INTO npc_vendor VALUES (4164,1846,0,0,0); -- Chainmail Bracers
INSERT INTO npc_vendor VALUES (1238,2117,0,0,0); -- Thin Cloth Shoes
INSERT INTO npc_vendor VALUES (1238,2119,0,0,0); -- Thin Cloth Gloves
INSERT INTO npc_vendor VALUES (1238,2120,0,0,0); -- Thin Cloth Pants
INSERT INTO npc_vendor VALUES (1238,2121,0,0,0); -- Thin Cloth Armor
INSERT INTO npc_vendor VALUES (1238,2122,0,0,0); -- Cracked Leather Belt
INSERT INTO npc_vendor VALUES (1238,2123,0,0,0); -- Cracked Leather Boots
INSERT INTO npc_vendor VALUES (1238,2124,0,0,0); -- Cracked Leather Bracers
INSERT INTO npc_vendor VALUES (1238,2125,0,0,0); -- Cracked Leather Gloves
INSERT INTO npc_vendor VALUES (1238,2126,0,0,0); -- Cracked Leather Pants
INSERT INTO npc_vendor VALUES (1238,2127,0,0,0); -- Cracked Leather Vest
INSERT INTO npc_vendor VALUES (4164,2392,0,0,0); -- Light Mail Armor
INSERT INTO npc_vendor VALUES (4164,2393,0,0,0); -- Light Mail Belt
INSERT INTO npc_vendor VALUES (4164,2394,0,0,0); -- Light Mail Leggings
INSERT INTO npc_vendor VALUES (4164,2395,0,0,0); -- Light Mail Boots
INSERT INTO npc_vendor VALUES (4164,2396,0,0,0); -- Light Mail Bracers
INSERT INTO npc_vendor VALUES (4164,2397,0,0,0); -- Light Mail Gloves
INSERT INTO npc_vendor VALUES (4164,3589,0,0,0); -- Heavy Weave Belt
INSERT INTO npc_vendor VALUES (4164,3590,0,0,0); -- Heavy Weave Bracers
INSERT INTO npc_vendor VALUES (1238,3599,0,0,0); -- Thin Cloth Belt
INSERT INTO npc_vendor VALUES (1238,3600,0,0,0); -- Thin Cloth Bracers

-- Total count: Templates: 12, single 36, sum 48, before: 84

-- ------------
-- Cloth & Leather Armor 2 (Thin Cloth, Cracked Leather)
-- 190,836,16918
-- ------------
DELETE FROM npc_vendor WHERE entry IN (190,836,16918);
UPDATE creature_template SET vendor_id=214 WHERE entry IN (190,836,16918);

INSERT INTO npc_vendor_template VALUES (214,2117,0,0,0); -- Thin Cloth Shoes [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2119,0,0,0); -- Thin Cloth Gloves [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2120,0,0,0); -- Thin Cloth Pants [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2121,0,0,0); -- Thin Cloth Armor [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2122,0,0,0); -- Cracked Leather Belt [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2123,0,0,0); -- Cracked Leather Boots [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2124,0,0,0); -- Cracked Leather Bracers [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2125,0,0,0); -- Cracked Leather Gloves [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2126,0,0,0); -- Cracked Leather Pants [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,2127,0,0,0); -- Cracked Leather Vest [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,3599,0,0,0); -- Thin Cloth Belt [3/3/6]
INSERT INTO npc_vendor_template VALUES (214,3600,0,0,0); -- Thin Cloth Bracers [3/3/6]

-- Total count: Templates: 12, single 0, sum 12, before: 36

-- ------------
-- Cloth & Leather Armor 3 (Woven, Battered)
-- 3166,16186
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3166,16186);
UPDATE creature_template SET vendor_id=215 WHERE entry IN (3166,16186);

INSERT INTO npc_vendor_template VALUES (215,2364,0,0,0); -- Woven Vest [2/2/6]
INSERT INTO npc_vendor_template VALUES (215,2366,0,0,0); -- Woven Pants [2/2/6]
INSERT INTO npc_vendor_template VALUES (215,2367,0,0,0); -- Woven Boots [2/2/6]
INSERT INTO npc_vendor_template VALUES (215,2369,0,0,0); -- Woven Gloves [2/2/6]
INSERT INTO npc_vendor_template VALUES (215,2370,0,0,0); -- Battered Leather Harness [2/2/8]
INSERT INTO npc_vendor_template VALUES (215,2371,0,0,0); -- Battered Leather Belt [2/2/8]
INSERT INTO npc_vendor_template VALUES (215,2372,0,0,0); -- Battered Leather Pants [2/2/8]
INSERT INTO npc_vendor_template VALUES (215,2373,0,0,0); -- Battered Leather Boots [2/2/8]
INSERT INTO npc_vendor_template VALUES (215,2374,0,0,0); -- Battered Leather Bracers [2/2/8]
INSERT INTO npc_vendor_template VALUES (215,2375,0,0,0); -- Battered Leather Gloves [2/2/8]
INSERT INTO npc_vendor_template VALUES (215,3606,0,0,0); -- Woven Belt [2/2/6]
INSERT INTO npc_vendor_template VALUES (215,3607,0,0,0); -- Woven Bracers [2/2/6]

-- Total count: Templates: 12, single 0, sum 12, before: 24

-- ------------
-- Cloth & Leather Armor 4 (Russet, Studded)
-- 1147,1407,8159
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1147,1407,8159);
UPDATE creature_template SET vendor_id=216 WHERE entry IN (1147,1407,8159);

INSERT INTO npc_vendor_template VALUES (216,2429,0,0,0); -- Russet Vest [3/3/12]
INSERT INTO npc_vendor_template VALUES (216,2431,0,0,0); -- Russet Pants [3/3/12]
INSERT INTO npc_vendor_template VALUES (216,2432,0,0,0); -- Russet Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (216,2434,0,0,0); -- Russet Gloves [3/3/12]
INSERT INTO npc_vendor_template VALUES (216,2463,0,0,0); -- Studded Doublet [3/3/11]
INSERT INTO npc_vendor_template VALUES (216,2464,0,0,0); -- Studded Belt [3/3/11]
INSERT INTO npc_vendor_template VALUES (216,2465,0,0,0); -- Studded Pants [3/3/11]
INSERT INTO npc_vendor_template VALUES (216,2467,0,0,0); -- Studded Boots [3/3/13]
INSERT INTO npc_vendor_template VALUES (216,2468,0,0,0); -- Studded Bracers [3/3/11]
INSERT INTO npc_vendor_template VALUES (216,2469,0,0,0); -- Studded Gloves [3/3/11]
INSERT INTO npc_vendor_template VALUES (216,3593,0,0,0); -- Russet Belt [3/3/12]
INSERT INTO npc_vendor_template VALUES (216,3594,0,0,0); -- Russet Bracers [3/3/12]
INSERT INTO npc_vendor_template VALUES (216,3889,0,0,0); -- Russet Hat [3/3/13]
INSERT INTO npc_vendor_template VALUES (216,3890,0,0,0); -- Studded Hat [3/3/12]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2528,0,0,0 Falchion [1/3/26]
-- 2529,0,0,0 Zweihander [1/3/24]
-- 2530,0,0,0 Francisca [1/3/19]
-- 2531,0,0,0 Great Axe [1/3/25]
-- 2532,0,0,0 Morning Star [1/3/19]
-- 2533,0,0,0 War Maul [1/3/25]
-- 2534,0,0,0 Rondel [1/3/26]
-- 2535,0,0,0 War Staff [1/3/27]
-- 12253,1,7200,0 Brilliant Red Cloak [1/3/2]
-- 12254,1,14400,0 Well Oiled Cloak [1/3/3]

INSERT INTO npc_vendor VALUES (1407,2528,0,0,0); -- Falchion
INSERT INTO npc_vendor VALUES (1407,2529,0,0,0); -- Zweihander
INSERT INTO npc_vendor VALUES (1407,2530,0,0,0); -- Francisca
INSERT INTO npc_vendor VALUES (1407,2531,0,0,0); -- Great Axe
INSERT INTO npc_vendor VALUES (1407,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (1407,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (1407,2534,0,0,0); -- Rondel
INSERT INTO npc_vendor VALUES (1407,2535,0,0,0); -- War Staff
INSERT INTO npc_vendor VALUES (8159,12253,1,7200,0); -- Brilliant Red Cloak
INSERT INTO npc_vendor VALUES (8159,12254,1,14400,0); -- Well Oiled Cloak

-- Total count: Templates: 14, single 10, sum 24, before: 52

-- ------------
-- Cloth & Leather Armor 5 (Embroidered, Reinforced)
-- 984,5129,11183,12023
-- ------------
DELETE FROM npc_vendor WHERE entry IN (984,5129,11183,12023);
UPDATE creature_template SET vendor_id=217 WHERE entry IN (984,5129,11183,12023);

INSERT INTO npc_vendor_template VALUES (217,2435,0,0,0); -- Embroidered Armor [4/4/13]
INSERT INTO npc_vendor_template VALUES (217,2437,0,0,0); -- Embroidered Pants [4/4/13]
INSERT INTO npc_vendor_template VALUES (217,2438,0,0,0); -- Embroidered Boots [4/4/15]
INSERT INTO npc_vendor_template VALUES (217,2440,0,0,0); -- Embroidered Gloves [4/4/13]
INSERT INTO npc_vendor_template VALUES (217,2470,0,0,0); -- Reinforced Leather Vest [4/4/11]
INSERT INTO npc_vendor_template VALUES (217,2471,0,0,0); -- Reinforced Leather Belt [4/4/11]
INSERT INTO npc_vendor_template VALUES (217,2472,0,0,0); -- Reinforced Leather Pants [4/4/11]
INSERT INTO npc_vendor_template VALUES (217,2473,0,0,0); -- Reinforced Leather Boots [4/4/13]
INSERT INTO npc_vendor_template VALUES (217,2474,0,0,0); -- Reinforced Leather Bracers [4/4/11]
INSERT INTO npc_vendor_template VALUES (217,2475,0,0,0); -- Reinforced Leather Gloves [4/4/11]
INSERT INTO npc_vendor_template VALUES (217,3587,0,0,0); -- Embroidered Belt [4/4/13]
INSERT INTO npc_vendor_template VALUES (217,3588,0,0,0); -- Embroidered Bracers [4/4/13]
INSERT INTO npc_vendor_template VALUES (217,3892,0,0,0); -- Embroidered Hat [4/4/14]
INSERT INTO npc_vendor_template VALUES (217,3893,0,0,0); -- Reinforced Leather Cap [4/4/12]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2463,0,0,0 Studded Doublet [1/4/11]
-- 2464,0,0,0 Studded Belt [1/4/11]
-- 2465,0,0,0 Studded Pants [1/4/11]
-- 2467,0,0,0 Studded Boots [1/4/13]
-- 2468,0,0,0 Studded Bracers [1/4/11]
-- 2469,0,0,0 Studded Gloves [1/4/11]
-- 3890,0,0,0 Studded Hat [1/4/12]
-- 12254,1,14400,0 Well Oiled Cloak [1/4/3]
-- 12255,0,0,0 Pale Leggings [1/4/1]
-- 12256,0,0,0 Cindercloth Leggings [1/4/1]

INSERT INTO npc_vendor VALUES (5129,2463,0,0,0); -- Studded Doublet
INSERT INTO npc_vendor VALUES (5129,2464,0,0,0); -- Studded Belt
INSERT INTO npc_vendor VALUES (5129,2465,0,0,0); -- Studded Pants
INSERT INTO npc_vendor VALUES (5129,2467,0,0,0); -- Studded Boots
INSERT INTO npc_vendor VALUES (5129,2468,0,0,0); -- Studded Bracers
INSERT INTO npc_vendor VALUES (5129,2469,0,0,0); -- Studded Gloves
INSERT INTO npc_vendor VALUES (5129,3890,0,0,0); -- Studded Hat
INSERT INTO npc_vendor VALUES (12023,12254,1,14400,0); -- Well Oiled Cloak
INSERT INTO npc_vendor VALUES (984,12255,0,0,0); -- Pale Leggings
INSERT INTO npc_vendor VALUES (984,12256,0,0,0); -- Cindercloth Leggings

-- Total count: Templates: 14, single 10, sum 24, before: 66

-- ------------
-- Leather Armor 1 (Rough)
-- 896,3162,3612
-- ------------
DELETE FROM npc_vendor WHERE entry IN (896,3162,3612);
UPDATE creature_template SET vendor_id=218 WHERE entry IN (896,3162,3612);

INSERT INTO npc_vendor_template VALUES (218,796,0,0,0); -- Rough Leather Boots [3/3/12]
INSERT INTO npc_vendor_template VALUES (218,797,0,0,0); -- Rough Leather Gloves [3/3/12]
INSERT INTO npc_vendor_template VALUES (218,798,0,0,0); -- Rough Leather Pants [3/3/12]
INSERT INTO npc_vendor_template VALUES (218,799,0,0,0); -- Rough Leather Vest [3/3/12]
INSERT INTO npc_vendor_template VALUES (218,1839,0,0,0); -- Rough Leather Belt [3/3/12]
INSERT INTO npc_vendor_template VALUES (218,1840,0,0,0); -- Rough Leather Bracers [3/3/12]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 843,0,0,0 Tanned Leather Boots [1/3/20]
-- 844,0,0,0 Tanned Leather Gloves [1/3/20]
-- 845,0,0,0 Tanned Leather Pants [1/3/20]
-- 846,0,0,0 Tanned Leather Jerkin [1/3/20]
-- 1843,0,0,0 Tanned Leather Belt [1/3/20]
-- 1844,0,0,0 Tanned Leather Bracers [1/3/20]

INSERT INTO npc_vendor VALUES (896,843,0,0,0); -- Tanned Leather Boots
INSERT INTO npc_vendor VALUES (896,844,0,0,0); -- Tanned Leather Gloves
INSERT INTO npc_vendor VALUES (896,845,0,0,0); -- Tanned Leather Pants
INSERT INTO npc_vendor VALUES (896,846,0,0,0); -- Tanned Leather Jerkin
INSERT INTO npc_vendor VALUES (896,1843,0,0,0); -- Tanned Leather Belt
INSERT INTO npc_vendor VALUES (896,1844,0,0,0); -- Tanned Leather Bracers

-- Total count: Templates: 6, single 6, sum 12, before: 24

-- ------------
-- Leather Armor 2 (Tanned)
-- 954,1669,3483,3552,3684,4186,10380
-- ------------
DELETE FROM npc_vendor WHERE entry IN (954,1669,3483,3552,3684,4186,10380);
UPDATE creature_template SET vendor_id=219 WHERE entry IN (954,1669,3483,3552,3684,4186,10380);

INSERT INTO npc_vendor_template VALUES (219,843,0,0,0); -- Tanned Leather Boots [7/7/20]
INSERT INTO npc_vendor_template VALUES (219,844,0,0,0); -- Tanned Leather Gloves [7/7/20]
INSERT INTO npc_vendor_template VALUES (219,845,0,0,0); -- Tanned Leather Pants [7/7/20]
INSERT INTO npc_vendor_template VALUES (219,846,0,0,0); -- Tanned Leather Jerkin [7/7/20]
INSERT INTO npc_vendor_template VALUES (219,1843,0,0,0); -- Tanned Leather Belt [7/7/20]
INSERT INTO npc_vendor_template VALUES (219,1844,0,0,0); -- Tanned Leather Bracers [7/7/20]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 847,0,0,0 Chainmail Armor [1/7/17]
-- 848,0,0,0 Chainmail Pants [1/7/17]
-- 849,0,0,0 Chainmail Boots [1/7/17]
-- 850,0,0,0 Chainmail Gloves [1/7/17]
-- 1845,0,0,0 Chainmail Belt [1/7/17]
-- 1846,0,0,0 Chainmail Bracers [1/7/17]
-- 4788,0,0,0 Agile Boots [2/7/2]
-- 4788,1,14400,0 Agile Boots [1/7/1]
-- 4788,1,43200,0 Agile Boots [1/7/1]
-- 4789,0,0,0 Stable Boots [2/7/2]
-- 4789,1,14400,0 Stable Boots [1/7/1]
-- 4789,1,43200,0 Stable Boots [1/7/1]
-- 5640,0,0,0 Recipe: Rage Potion [1/7/2]
-- 5786,0,0,0 Pattern: Murloc Scale Belt [1/7/2]
-- 5787,0,0,0 Pattern: Murloc Scale Breastplate [1/7/2]

INSERT INTO npc_vendor VALUES (3483,847,0,0,0); -- Chainmail Armor
INSERT INTO npc_vendor VALUES (3483,848,0,0,0); -- Chainmail Pants
INSERT INTO npc_vendor VALUES (3483,849,0,0,0); -- Chainmail Boots
INSERT INTO npc_vendor VALUES (3483,850,0,0,0); -- Chainmail Gloves
INSERT INTO npc_vendor VALUES (3483,1845,0,0,0); -- Chainmail Belt
INSERT INTO npc_vendor VALUES (3483,1846,0,0,0); -- Chainmail Bracers
INSERT INTO npc_vendor VALUES (954,4788,0,0,0); -- Agile Boots
INSERT INTO npc_vendor VALUES (1669,4788,0,0,0); -- Agile Boots
INSERT INTO npc_vendor VALUES (3684,4788,1,14400,0); -- Agile Boots
INSERT INTO npc_vendor VALUES (3552,4788,1,43200,0); -- Agile Boots
INSERT INTO npc_vendor VALUES (954,4789,0,0,0); -- Stable Boots
INSERT INTO npc_vendor VALUES (1669,4789,0,0,0); -- Stable Boots
INSERT INTO npc_vendor VALUES (3684,4789,1,14400,0); -- Stable Boots
INSERT INTO npc_vendor VALUES (3552,4789,1,43200,0); -- Stable Boots
INSERT INTO npc_vendor VALUES (1669,5640,0,0,0); -- Recipe: Rage Potion
INSERT INTO npc_vendor VALUES (4186,5786,0,0,0); -- Pattern: Murloc Scale Belt
INSERT INTO npc_vendor VALUES (4186,5787,0,0,0); -- Pattern: Murloc Scale Breastplate

-- Total count: Templates: 6, single 17, sum 23, before: 59

-- ------------
-- Leather Armor 3 (Cured)
-- 1695,3097,3492,3536,8359
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1695,3097,3492,3536,8359);
UPDATE creature_template SET vendor_id=220 WHERE entry IN (1695,3097,3492,3536,8359);

INSERT INTO npc_vendor_template VALUES (220,236,0,0,0); -- Cured Leather Armor [5/5/14]
INSERT INTO npc_vendor_template VALUES (220,237,0,0,0); -- Cured Leather Pants [5/5/14]
INSERT INTO npc_vendor_template VALUES (220,238,0,0,0); -- Cured Leather Boots [5/5/14]
INSERT INTO npc_vendor_template VALUES (220,239,0,0,0); -- Cured Leather Gloves [5/5/14]
INSERT INTO npc_vendor_template VALUES (220,1849,0,0,0); -- Cured Leather Belt [5/5/14]
INSERT INTO npc_vendor_template VALUES (220,1850,0,0,0); -- Cured Leather Bracers [5/5/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 200,0,0,0 Thick Cloth Vest [1/5/13]
-- 201,0,0,0 Thick Cloth Pants [1/5/13]
-- 202,0,0,0 Thick Cloth Shoes [1/5/13]
-- 203,0,0,0 Thick Cloth Gloves [1/5/13]
-- 843,0,0,0 Tanned Leather Boots [1/5/20]
-- 844,0,0,0 Tanned Leather Gloves [1/5/20]
-- 845,0,0,0 Tanned Leather Pants [1/5/20]
-- 846,0,0,0 Tanned Leather Jerkin [1/5/20]
-- 1843,0,0,0 Tanned Leather Belt [1/5/20]
-- 1844,0,0,0 Tanned Leather Bracers [1/5/20]
-- 2141,0,0,0 Cuirboulli Vest [1/5/7]
-- 2142,0,0,0 Cuirboulli Belt [1/5/7]
-- 2143,0,0,0 Cuirboulli Boots [1/5/7]
-- 2144,0,0,0 Cuirboulli Bracers [1/5/7]
-- 2145,0,0,0 Cuirboulli Gloves [1/5/7]
-- 2146,0,0,0 Cuirboulli Pants [1/5/7]
-- 3597,0,0,0 Thick Cloth Belt [1/5/13]
-- 3598,0,0,0 Thick Cloth Bracers [1/5/13]
-- 4794,0,0,0 Wolf Bracers [1/5/1]
-- 4794,1,14400,0 Wolf Bracers [1/5/1]
-- 4794,1,43200,0 Wolf Bracers [1/5/1]
-- 4795,0,0,0 Bear Bracers [1/5/1]
-- 4795,1,14400,0 Bear Bracers [1/5/1]
-- 4795,1,43200,0 Bear Bracers [1/5/1]
-- 4796,0,0,0 Owl Bracers [1/5/1]
-- 4796,1,14400,0 Owl Bracers [1/5/1]
-- 4796,1,43200,0 Owl Bracers [1/5/1]
-- 4831,1,43200,0 Stalking Pants [1/5/1]

INSERT INTO npc_vendor VALUES (3492,200,0,0,0); -- Thick Cloth Vest
INSERT INTO npc_vendor VALUES (3492,201,0,0,0); -- Thick Cloth Pants
INSERT INTO npc_vendor VALUES (3492,202,0,0,0); -- Thick Cloth Shoes
INSERT INTO npc_vendor VALUES (3492,203,0,0,0); -- Thick Cloth Gloves
INSERT INTO npc_vendor VALUES (8359,843,0,0,0); -- Tanned Leather Boots
INSERT INTO npc_vendor VALUES (8359,844,0,0,0); -- Tanned Leather Gloves
INSERT INTO npc_vendor VALUES (8359,845,0,0,0); -- Tanned Leather Pants
INSERT INTO npc_vendor VALUES (8359,846,0,0,0); -- Tanned Leather Jerkin
INSERT INTO npc_vendor VALUES (8359,1843,0,0,0); -- Tanned Leather Belt
INSERT INTO npc_vendor VALUES (8359,1844,0,0,0); -- Tanned Leather Bracers
INSERT INTO npc_vendor VALUES (1695,2141,0,0,0); -- Cuirboulli Vest
INSERT INTO npc_vendor VALUES (1695,2142,0,0,0); -- Cuirboulli Belt
INSERT INTO npc_vendor VALUES (1695,2143,0,0,0); -- Cuirboulli Boots
INSERT INTO npc_vendor VALUES (1695,2144,0,0,0); -- Cuirboulli Bracers
INSERT INTO npc_vendor VALUES (1695,2145,0,0,0); -- Cuirboulli Gloves
INSERT INTO npc_vendor VALUES (1695,2146,0,0,0); -- Cuirboulli Pants
INSERT INTO npc_vendor VALUES (3492,3597,0,0,0); -- Thick Cloth Belt
INSERT INTO npc_vendor VALUES (3492,3598,0,0,0); -- Thick Cloth Bracers
INSERT INTO npc_vendor VALUES (3097,4794,0,0,0); -- Wolf Bracers
INSERT INTO npc_vendor VALUES (3492,4794,1,14400,0); -- Wolf Bracers
INSERT INTO npc_vendor VALUES (3536,4794,1,43200,0); -- Wolf Bracers
INSERT INTO npc_vendor VALUES (3097,4795,0,0,0); -- Bear Bracers
INSERT INTO npc_vendor VALUES (3492,4795,1,14400,0); -- Bear Bracers
INSERT INTO npc_vendor VALUES (3536,4795,1,43200,0); -- Bear Bracers
INSERT INTO npc_vendor VALUES (3097,4796,0,0,0); -- Owl Bracers
INSERT INTO npc_vendor VALUES (3492,4796,1,14400,0); -- Owl Bracers
INSERT INTO npc_vendor VALUES (3536,4796,1,43200,0); -- Owl Bracers
INSERT INTO npc_vendor VALUES (3536,4831,1,43200,0); -- Stalking Pants

-- Total count: Templates: 6, single 28, sum 34, before: 58

-- ------------
-- Leather Armor 4 (Cuirboulli, Padded, Russet, Embroidered, Studded, Reinforced
-- 1314,3315,3316
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1314,3315,3316);
UPDATE creature_template SET vendor_id=221 WHERE entry IN (1314,3315,3316);

INSERT INTO npc_vendor_template VALUES (221,2141,0,0,0); -- Cuirboulli Vest [3/3/7]
INSERT INTO npc_vendor_template VALUES (221,2142,0,0,0); -- Cuirboulli Belt [3/3/7]
INSERT INTO npc_vendor_template VALUES (221,2143,0,0,0); -- Cuirboulli Boots [3/3/7]
INSERT INTO npc_vendor_template VALUES (221,2144,0,0,0); -- Cuirboulli Bracers [3/3/7]
INSERT INTO npc_vendor_template VALUES (221,2145,0,0,0); -- Cuirboulli Gloves [3/3/7]
INSERT INTO npc_vendor_template VALUES (221,2146,0,0,0); -- Cuirboulli Pants [3/3/7]
INSERT INTO npc_vendor_template VALUES (221,2156,0,0,0); -- Padded Boots [3/3/9]
INSERT INTO npc_vendor_template VALUES (221,2158,0,0,0); -- Padded Gloves [3/3/9]
INSERT INTO npc_vendor_template VALUES (221,2159,0,0,0); -- Padded Pants [3/3/9]
INSERT INTO npc_vendor_template VALUES (221,2160,0,0,0); -- Padded Armor [3/3/9]
INSERT INTO npc_vendor_template VALUES (221,2429,0,0,0); -- Russet Vest [3/3/12]
INSERT INTO npc_vendor_template VALUES (221,2431,0,0,0); -- Russet Pants [3/3/12]
INSERT INTO npc_vendor_template VALUES (221,2432,0,0,0); -- Russet Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (221,2434,0,0,0); -- Russet Gloves [3/3/12]
INSERT INTO npc_vendor_template VALUES (221,2435,0,0,0); -- Embroidered Armor [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,2437,0,0,0); -- Embroidered Pants [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,2438,0,0,0); -- Embroidered Boots [3/3/15]
INSERT INTO npc_vendor_template VALUES (221,2440,0,0,0); -- Embroidered Gloves [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,2463,0,0,0); -- Studded Doublet [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2464,0,0,0); -- Studded Belt [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2465,0,0,0); -- Studded Pants [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2467,0,0,0); -- Studded Boots [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,2468,0,0,0); -- Studded Bracers [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2469,0,0,0); -- Studded Gloves [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2470,0,0,0); -- Reinforced Leather Vest [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2471,0,0,0); -- Reinforced Leather Belt [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2472,0,0,0); -- Reinforced Leather Pants [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2473,0,0,0); -- Reinforced Leather Boots [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,2474,0,0,0); -- Reinforced Leather Bracers [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,2475,0,0,0); -- Reinforced Leather Gloves [3/3/11]
INSERT INTO npc_vendor_template VALUES (221,3587,0,0,0); -- Embroidered Belt [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,3588,0,0,0); -- Embroidered Bracers [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,3591,0,0,0); -- Padded Belt [3/3/9]
INSERT INTO npc_vendor_template VALUES (221,3592,0,0,0); -- Padded Bracers [3/3/9]
INSERT INTO npc_vendor_template VALUES (221,3593,0,0,0); -- Russet Belt [3/3/12]
INSERT INTO npc_vendor_template VALUES (221,3594,0,0,0); -- Russet Bracers [3/3/12]
INSERT INTO npc_vendor_template VALUES (221,3889,0,0,0); -- Russet Hat [3/3/13]
INSERT INTO npc_vendor_template VALUES (221,3890,0,0,0); -- Studded Hat [3/3/12]
INSERT INTO npc_vendor_template VALUES (221,3892,0,0,0); -- Embroidered Hat [3/3/14]
INSERT INTO npc_vendor_template VALUES (221,3893,0,0,0); -- Reinforced Leather Cap [3/3/12]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2612,0,0,0 Plain Robe [1/3/8]
-- 2613,0,0,0 Double-stitched Robes [1/3/8]
-- 2614,0,0,0 Robe of Apprenticeship [1/3/8]
-- 2615,0,0,0 Chromatic Robe [1/3/8]
-- 2616,0,0,0 Shimmering Silk Robes [1/3/8]
-- 2617,0,0,0 Burning Robes [1/3/8]
-- 2618,0,0,0 Silver Dress Robes [1/3/8]

INSERT INTO npc_vendor VALUES (3315,2612,0,0,0); -- Plain Robe
INSERT INTO npc_vendor VALUES (3315,2613,0,0,0); -- Double-stitched Robes
INSERT INTO npc_vendor VALUES (3315,2614,0,0,0); -- Robe of Apprenticeship
INSERT INTO npc_vendor VALUES (3315,2615,0,0,0); -- Chromatic Robe
INSERT INTO npc_vendor VALUES (3315,2616,0,0,0); -- Shimmering Silk Robes
INSERT INTO npc_vendor VALUES (3315,2617,0,0,0); -- Burning Robes
INSERT INTO npc_vendor VALUES (3315,2618,0,0,0); -- Silver Dress Robes

-- Total count: Templates: 40, single 7, sum 47, before: 127

-- ------------
-- Leather Armor 5 (Battered)
-- 2137,3079
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2137,3079);
UPDATE creature_template SET vendor_id=222 WHERE entry IN (2137,3079);

INSERT INTO npc_vendor_template VALUES (222,2370,0,0,0); -- Battered Leather Harness [2/2/8]
INSERT INTO npc_vendor_template VALUES (222,2371,0,0,0); -- Battered Leather Belt [2/2/8]
INSERT INTO npc_vendor_template VALUES (222,2372,0,0,0); -- Battered Leather Pants [2/2/8]
INSERT INTO npc_vendor_template VALUES (222,2373,0,0,0); -- Battered Leather Boots [2/2/8]
INSERT INTO npc_vendor_template VALUES (222,2374,0,0,0); -- Battered Leather Bracers [2/2/8]
INSERT INTO npc_vendor_template VALUES (222,2375,0,0,0); -- Battered Leather Gloves [2/2/8]

-- Total count: Templates: 6, single 0, sum 6, before: 12

-- ------------
-- Leather Armor 6 (Cured, Rough, Tanned)
-- 1295,3953,16747
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1295,3953,16747);
UPDATE creature_template SET vendor_id=223 WHERE entry IN (1295,3953,16747);

INSERT INTO npc_vendor_template VALUES (223,236,0,0,0); -- Cured Leather Armor [3/3/14]
INSERT INTO npc_vendor_template VALUES (223,237,0,0,0); -- Cured Leather Pants [3/3/14]
INSERT INTO npc_vendor_template VALUES (223,238,0,0,0); -- Cured Leather Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (223,239,0,0,0); -- Cured Leather Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (223,796,0,0,0); -- Rough Leather Boots [3/3/12]
INSERT INTO npc_vendor_template VALUES (223,797,0,0,0); -- Rough Leather Gloves [3/3/12]
INSERT INTO npc_vendor_template VALUES (223,798,0,0,0); -- Rough Leather Pants [3/3/12]
INSERT INTO npc_vendor_template VALUES (223,799,0,0,0); -- Rough Leather Vest [3/3/12]
INSERT INTO npc_vendor_template VALUES (223,843,0,0,0); -- Tanned Leather Boots [3/3/20]
INSERT INTO npc_vendor_template VALUES (223,844,0,0,0); -- Tanned Leather Gloves [3/3/20]
INSERT INTO npc_vendor_template VALUES (223,845,0,0,0); -- Tanned Leather Pants [3/3/20]
INSERT INTO npc_vendor_template VALUES (223,846,0,0,0); -- Tanned Leather Jerkin [3/3/20]
INSERT INTO npc_vendor_template VALUES (223,1839,0,0,0); -- Rough Leather Belt [3/3/12]
INSERT INTO npc_vendor_template VALUES (223,1840,0,0,0); -- Rough Leather Bracers [3/3/12]
INSERT INTO npc_vendor_template VALUES (223,1843,0,0,0); -- Tanned Leather Belt [3/3/20]
INSERT INTO npc_vendor_template VALUES (223,1844,0,0,0); -- Tanned Leather Bracers [3/3/20]
INSERT INTO npc_vendor_template VALUES (223,1849,0,0,0); -- Cured Leather Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (223,1850,0,0,0); -- Cured Leather Bracers [3/3/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2141,0,0,0 Cuirboulli Vest [1/3/7]
-- 2142,0,0,0 Cuirboulli Belt [1/3/7]
-- 2143,0,0,0 Cuirboulli Boots [1/3/7]
-- 2144,0,0,0 Cuirboulli Bracers [1/3/7]
-- 2145,0,0,0 Cuirboulli Gloves [1/3/7]
-- 2146,0,0,0 Cuirboulli Pants [1/3/7]

INSERT INTO npc_vendor VALUES (3953,2141,0,0,0); -- Cuirboulli Vest
INSERT INTO npc_vendor VALUES (3953,2142,0,0,0); -- Cuirboulli Belt
INSERT INTO npc_vendor VALUES (3953,2143,0,0,0); -- Cuirboulli Boots
INSERT INTO npc_vendor VALUES (3953,2144,0,0,0); -- Cuirboulli Bracers
INSERT INTO npc_vendor VALUES (3953,2145,0,0,0); -- Cuirboulli Gloves
INSERT INTO npc_vendor VALUES (3953,2146,0,0,0); -- Cuirboulli Pants

-- Total count: Templates: 18, single 6, sum 24, before: 60

-- ------------
-- Leather Armor 7 (Cured, Tanned, Battered)
-- 3093,3321,16691
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3093,3321,16691);
UPDATE creature_template SET vendor_id=224 WHERE entry IN (3093,3321,16691);

INSERT INTO npc_vendor_template VALUES (224,236,0,0,0); -- Cured Leather Armor [3/3/14]
INSERT INTO npc_vendor_template VALUES (224,237,0,0,0); -- Cured Leather Pants [3/3/14]
INSERT INTO npc_vendor_template VALUES (224,238,0,0,0); -- Cured Leather Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (224,239,0,0,0); -- Cured Leather Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (224,843,0,0,0); -- Tanned Leather Boots [3/3/20]
INSERT INTO npc_vendor_template VALUES (224,844,0,0,0); -- Tanned Leather Gloves [3/3/20]
INSERT INTO npc_vendor_template VALUES (224,845,0,0,0); -- Tanned Leather Pants [3/3/20]
INSERT INTO npc_vendor_template VALUES (224,846,0,0,0); -- Tanned Leather Jerkin [3/3/20]
INSERT INTO npc_vendor_template VALUES (224,1843,0,0,0); -- Tanned Leather Belt [3/3/20]
INSERT INTO npc_vendor_template VALUES (224,1844,0,0,0); -- Tanned Leather Bracers [3/3/20]
INSERT INTO npc_vendor_template VALUES (224,1849,0,0,0); -- Cured Leather Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (224,1850,0,0,0); -- Cured Leather Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (224,2370,0,0,0); -- Battered Leather Harness [3/3/8]
INSERT INTO npc_vendor_template VALUES (224,2371,0,0,0); -- Battered Leather Belt [3/3/8]
INSERT INTO npc_vendor_template VALUES (224,2372,0,0,0); -- Battered Leather Pants [3/3/8]
INSERT INTO npc_vendor_template VALUES (224,2373,0,0,0); -- Battered Leather Boots [3/3/8]
INSERT INTO npc_vendor_template VALUES (224,2374,0,0,0); -- Battered Leather Bracers [3/3/8]
INSERT INTO npc_vendor_template VALUES (224,2375,0,0,0); -- Battered Leather Gloves [3/3/8]

-- Total count: Templates: 18, single 0, sum 18, before: 54

-- ------------
-- Leather Armor 8 (Cured, Rough, Tanned, Cuirboulli, Studded, Reinforced)
-- 4236,5820
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4236,5820);
UPDATE creature_template SET vendor_id=225 WHERE entry IN (4236,5820);

INSERT INTO npc_vendor_template VALUES (225,236,0,0,0); -- Cured Leather Armor [2/2/14]
INSERT INTO npc_vendor_template VALUES (225,237,0,0,0); -- Cured Leather Pants [2/2/14]
INSERT INTO npc_vendor_template VALUES (225,238,0,0,0); -- Cured Leather Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (225,239,0,0,0); -- Cured Leather Gloves [2/2/14]
INSERT INTO npc_vendor_template VALUES (225,796,0,0,0); -- Rough Leather Boots [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,797,0,0,0); -- Rough Leather Gloves [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,798,0,0,0); -- Rough Leather Pants [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,799,0,0,0); -- Rough Leather Vest [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,843,0,0,0); -- Tanned Leather Boots [2/2/20]
INSERT INTO npc_vendor_template VALUES (225,844,0,0,0); -- Tanned Leather Gloves [2/2/20]
INSERT INTO npc_vendor_template VALUES (225,845,0,0,0); -- Tanned Leather Pants [2/2/20]
INSERT INTO npc_vendor_template VALUES (225,846,0,0,0); -- Tanned Leather Jerkin [2/2/20]
INSERT INTO npc_vendor_template VALUES (225,1839,0,0,0); -- Rough Leather Belt [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,1840,0,0,0); -- Rough Leather Bracers [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,1843,0,0,0); -- Tanned Leather Belt [2/2/20]
INSERT INTO npc_vendor_template VALUES (225,1844,0,0,0); -- Tanned Leather Bracers [2/2/20]
INSERT INTO npc_vendor_template VALUES (225,1849,0,0,0); -- Cured Leather Belt [2/2/14]
INSERT INTO npc_vendor_template VALUES (225,1850,0,0,0); -- Cured Leather Bracers [2/2/14]
INSERT INTO npc_vendor_template VALUES (225,2141,0,0,0); -- Cuirboulli Vest [2/2/7]
INSERT INTO npc_vendor_template VALUES (225,2142,0,0,0); -- Cuirboulli Belt [2/2/7]
INSERT INTO npc_vendor_template VALUES (225,2143,0,0,0); -- Cuirboulli Boots [2/2/7]
INSERT INTO npc_vendor_template VALUES (225,2144,0,0,0); -- Cuirboulli Bracers [2/2/7]
INSERT INTO npc_vendor_template VALUES (225,2145,0,0,0); -- Cuirboulli Gloves [2/2/7]
INSERT INTO npc_vendor_template VALUES (225,2146,0,0,0); -- Cuirboulli Pants [2/2/7]
INSERT INTO npc_vendor_template VALUES (225,2463,0,0,0); -- Studded Doublet [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2464,0,0,0); -- Studded Belt [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2465,0,0,0); -- Studded Pants [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2467,0,0,0); -- Studded Boots [2/2/13]
INSERT INTO npc_vendor_template VALUES (225,2468,0,0,0); -- Studded Bracers [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2469,0,0,0); -- Studded Gloves [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2470,0,0,0); -- Reinforced Leather Vest [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2471,0,0,0); -- Reinforced Leather Belt [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2472,0,0,0); -- Reinforced Leather Pants [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2473,0,0,0); -- Reinforced Leather Boots [2/2/13]
INSERT INTO npc_vendor_template VALUES (225,2474,0,0,0); -- Reinforced Leather Bracers [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,2475,0,0,0); -- Reinforced Leather Gloves [2/2/11]
INSERT INTO npc_vendor_template VALUES (225,3890,0,0,0); -- Studded Hat [2/2/12]
INSERT INTO npc_vendor_template VALUES (225,3893,0,0,0); -- Reinforced Leather Cap [2/2/12]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2122,0,0,0 Cracked Leather Belt [1/2/6]
-- 2123,0,0,0 Cracked Leather Boots [1/2/6]
-- 2124,0,0,0 Cracked Leather Bracers [1/2/6]
-- 2125,0,0,0 Cracked Leather Gloves [1/2/6]
-- 2126,0,0,0 Cracked Leather Pants [1/2/6]
-- 2127,0,0,0 Cracked Leather Vest [1/2/6]

INSERT INTO npc_vendor VALUES (4236,2122,0,0,0); -- Cracked Leather Belt
INSERT INTO npc_vendor VALUES (4236,2123,0,0,0); -- Cracked Leather Boots
INSERT INTO npc_vendor VALUES (4236,2124,0,0,0); -- Cracked Leather Bracers
INSERT INTO npc_vendor VALUES (4236,2125,0,0,0); -- Cracked Leather Gloves
INSERT INTO npc_vendor VALUES (4236,2126,0,0,0); -- Cracked Leather Pants
INSERT INTO npc_vendor VALUES (4236,2127,0,0,0); -- Cracked Leather Vest

-- Total count: Templates: 38, single 6, sum 44, before: 82

-- ------------
-- Leather Armor 9 (Cracked)
-- 3591
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3591);
UPDATE creature_template SET vendor_id=226 WHERE entry IN (3591);

INSERT INTO npc_vendor_template VALUES (226,2122,0,0,0); -- Cracked Leather Belt [1/1/6]
INSERT INTO npc_vendor_template VALUES (226,2123,0,0,0); -- Cracked Leather Boots [1/1/6]
INSERT INTO npc_vendor_template VALUES (226,2124,0,0,0); -- Cracked Leather Bracers [1/1/6]
INSERT INTO npc_vendor_template VALUES (226,2125,0,0,0); -- Cracked Leather Gloves [1/1/6]
INSERT INTO npc_vendor_template VALUES (226,2126,0,0,0); -- Cracked Leather Pants [1/1/6]
INSERT INTO npc_vendor_template VALUES (226,2127,0,0,0); -- Cracked Leather Vest [1/1/6]

-- Total count: Templates: 6, single 0, sum 6, before: 6

-- ------------
-- Leather Armor 10 (Studded,Reinforced)
-- 1320
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1320);
UPDATE creature_template SET vendor_id=227 WHERE entry IN (1320);

INSERT INTO npc_vendor_template VALUES (227,2463,0,0,0); -- Studded Doublet [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2464,0,0,0); -- Studded Belt [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2465,0,0,0); -- Studded Pants [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2467,0,0,0); -- Studded Boots [1/1/13]
INSERT INTO npc_vendor_template VALUES (227,2468,0,0,0); -- Studded Bracers [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2469,0,0,0); -- Studded Gloves [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2470,0,0,0); -- Reinforced Leather Vest [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2471,0,0,0); -- Reinforced Leather Belt [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2472,0,0,0); -- Reinforced Leather Pants [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2473,0,0,0); -- Reinforced Leather Boots [1/1/13]
INSERT INTO npc_vendor_template VALUES (227,2474,0,0,0); -- Reinforced Leather Bracers [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,2475,0,0,0); -- Reinforced Leather Gloves [1/1/11]
INSERT INTO npc_vendor_template VALUES (227,3890,0,0,0); -- Studded Hat [1/1/12]
INSERT INTO npc_vendor_template VALUES (227,3893,0,0,0); -- Reinforced Leather Cap [1/1/12]

-- Total count: Templates: 14, single 0, sum 14, before: 14

-- ------------
-- Leather Armor 11 (Dirty)
-- 3074
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3074);
UPDATE creature_template SET vendor_id=228 WHERE entry IN (3074);

INSERT INTO npc_vendor_template VALUES (228,85,0,0,0); -- Dirty Leather Vest [1/1/4]
INSERT INTO npc_vendor_template VALUES (228,209,0,0,0); -- Dirty Leather Pants [1/1/4]
INSERT INTO npc_vendor_template VALUES (228,210,0,0,0); -- Dirty Leather Boots [1/1/4]
INSERT INTO npc_vendor_template VALUES (228,714,0,0,0); -- Dirty Leather Gloves [1/1/4]
INSERT INTO npc_vendor_template VALUES (228,1835,0,0,0); -- Dirty Leather Belt [1/1/4]
INSERT INTO npc_vendor_template VALUES (228,1836,0,0,0); -- Dirty Leather Bracers [1/1/4]

-- Total count: Templates: 6, single 0, sum 6, before: 6

-- ------------
-- Horse Vendors
-- 384,1460,2357,4885
-- ------------
DELETE FROM npc_vendor WHERE entry IN (384,1460,2357,4885);
UPDATE creature_template SET vendor_id=17 WHERE entry IN (384,1460,2357,4885);

INSERT INTO npc_vendor_template VALUES (17,2414,0,0,0); -- Pinto Bridle [4/4/4]
INSERT INTO npc_vendor_template VALUES (17,5655,0,0,0); -- Chestnut Mare Bridle [4/4/4]
INSERT INTO npc_vendor_template VALUES (17,5656,0,0,0); -- Brown Horse Bridle [4/4/4]
INSERT INTO npc_vendor_template VALUES (17,18776,0,0,0); -- Swift Palomino [4/4/4]
INSERT INTO npc_vendor_template VALUES (17,18777,0,0,0); -- Swift Brown Steed [4/4/4]
INSERT INTO npc_vendor_template VALUES (17,18778,0,0,0); -- Swift White Steed [4/4/4]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2411,0,0,0 Black Stallion Bridle [2/4/2]

INSERT INTO npc_vendor VALUES (384,2411,0,0,0); -- Black Stallion Bridle
INSERT INTO npc_vendor VALUES (1460,2411,0,0,0); -- Black Stallion Bridle

-- Total count: Templates: 6, single 2, sum 8, before: 26

-- ------------
-- Bow Vendors 1
-- 1198,3165,3589,3610
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1198,3165,3589,3610);
UPDATE creature_template SET vendor_id=303 WHERE entry IN (1198,3165,3589,3610);

INSERT INTO npc_vendor_template VALUES (303,2506,0,0,0); -- Hornwood Recurve Bow [4/4/15]
INSERT INTO npc_vendor_template VALUES (303,2507,0,0,0); -- Laminated Recurve Bow [4/4/23]
INSERT INTO npc_vendor_template VALUES (303,2512,0,0,0); -- Rough Arrow [4/4/94]
INSERT INTO npc_vendor_template VALUES (303,2515,0,0,0); -- Sharp Arrow [4/4/104]
INSERT INTO npc_vendor_template VALUES (303,5439,0,0,0); -- Small Quiver [4/4/44]
INSERT INTO npc_vendor_template VALUES (303,11362,0,0,0); -- Medium Quiver [4/4/47]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 11303,0,0,0 Fine Shortbow [1/4/3]

INSERT INTO npc_vendor VALUES (1198,11303,0,0,0); -- Fine Shortbow

-- Total count: Templates: 6, single 1, sum 7, before: 25

-- ------------
-- Bow Vendors 2
-- 228,1298,2839,3015,3410,4173,4604,4892,5122,9551,9552,9555,19561
-- ------------
DELETE FROM npc_vendor WHERE entry IN (228,1298,2839,3015,3410,4173,4604,4892,5122,9551,9552,9555,19561);
UPDATE creature_template SET vendor_id=304 WHERE entry IN (228,1298,2839,3015,3410,4173,4604,4892,5122,9551,9552,9555,19561);

INSERT INTO npc_vendor_template VALUES (304,2512,0,0,0); -- Rough Arrow [13/13/94]
INSERT INTO npc_vendor_template VALUES (304,2515,0,0,0); -- Sharp Arrow [13/13/104]
INSERT INTO npc_vendor_template VALUES (304,3026,0,0,0); -- Reinforced Bow [13/13/34]
INSERT INTO npc_vendor_template VALUES (304,3027,0,0,0); -- Heavy Recurve Bow [13/13/26]
INSERT INTO npc_vendor_template VALUES (304,3030,0,0,0); -- Razor Arrow [13/13/75]
INSERT INTO npc_vendor_template VALUES (304,5439,0,0,0); -- Small Quiver [13/13/44]
INSERT INTO npc_vendor_template VALUES (304,11285,0,0,0); -- Jagged Arrow [13/13/100]
INSERT INTO npc_vendor_template VALUES (304,11362,0,0,0); -- Medium Quiver [13/13/47]
INSERT INTO npc_vendor_template VALUES (304,28053,0,0,0); -- Wicked Arrow [13/13/100]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2509,0,0,0 Ornate Blunderbuss [1/13/16]
-- 2511,0,0,0 Hunter's Boomstick [1/13/13]
-- 2516,0,0,0 Light Shot [1/13/72]
-- 2519,0,0,0 Heavy Shot [1/13/84]
-- 3023,0,0,0 Large Bore Blunderbuss [1/13/18]
-- 3024,0,0,0 BKP 2700 "Enforcer" [1/13/15]
-- 3033,0,0,0 Solid Shot [1/13/61]
-- 5441,0,0,0 Small Shot Pouch [1/13/18]
-- 11284,0,0,0 Accurate Slugs [1/13/95]
-- 11303,0,0,0 Fine Shortbow [2/13/3]
-- 11303,1,7200,0 Fine Shortbow [1/13/1]
-- 11303,2,10800,0 Fine Shortbow [1/13/1]
-- 11304,0,0,0 Fine Longbow [1/13/5]
-- 11304,1,7200,0 Fine Longbow [1/13/1]
-- 11305,0,0,0 Dense Shortbow [1/13/3]
-- 11305,1,7200,0 Dense Shortbow [1/13/1]
-- 11306,0,0,0 Sturdy Recurve [2/13/2]
-- 11306,1,7200,0 Sturdy Recurve [1/13/1]
-- 11306,1,10800,0 Sturdy Recurve [1/13/1]
-- 11307,0,0,0 Massive Longbow [2/13/2]
-- 11307,1,10800,0 Massive Longbow [1/13/1]
-- 11308,1,7200,0 Sylvan Shortbow [1/13/1]

INSERT INTO npc_vendor VALUES (9551,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (9551,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (9551,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (9551,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (9551,3023,0,0,0); -- Large Bore Blunderbuss
INSERT INTO npc_vendor VALUES (9551,3024,0,0,0); -- BKP 2700 "Enforcer"
INSERT INTO npc_vendor VALUES (9551,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (9551,5441,0,0,0); -- Small Shot Pouch
INSERT INTO npc_vendor VALUES (9551,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (3015,11303,0,0,0); -- Fine Shortbow
INSERT INTO npc_vendor VALUES (5122,11303,0,0,0); -- Fine Shortbow
INSERT INTO npc_vendor VALUES (4173,11303,1,7200,0); -- Fine Shortbow
INSERT INTO npc_vendor VALUES (4604,11303,2,10800,0); -- Fine Shortbow
INSERT INTO npc_vendor VALUES (228,11304,0,0,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (9551,11304,1,7200,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (4892,11305,0,0,0); -- Dense Shortbow
INSERT INTO npc_vendor VALUES (9551,11305,1,7200,0); -- Dense Shortbow
INSERT INTO npc_vendor VALUES (3015,11306,0,0,0); -- Sturdy Recurve
INSERT INTO npc_vendor VALUES (5122,11306,0,0,0); -- Sturdy Recurve
INSERT INTO npc_vendor VALUES (4173,11306,1,7200,0); -- Sturdy Recurve
INSERT INTO npc_vendor VALUES (4604,11306,1,10800,0); -- Sturdy Recurve
INSERT INTO npc_vendor VALUES (3015,11307,0,0,0); -- Massive Longbow
INSERT INTO npc_vendor VALUES (5122,11307,0,0,0); -- Massive Longbow
INSERT INTO npc_vendor VALUES (4604,11307,1,10800,0); -- Massive Longbow
INSERT INTO npc_vendor VALUES (4173,11308,1,7200,0); -- Sylvan Shortbow

-- Total count: Templates: 9, single 25, sum 34, before: 142

-- ------------
-- Bow Vendors 3
-- 1668,1687,3488,3951,9549,9553
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1668,1687,3488,3951,9549,9553);
UPDATE creature_template SET vendor_id=305 WHERE entry IN (1668,1687,3488,3951,9549,9553);

INSERT INTO npc_vendor_template VALUES (305,2507,0,0,0); -- Laminated Recurve Bow [6/6/23]
INSERT INTO npc_vendor_template VALUES (305,2512,0,0,0); -- Rough Arrow [6/6/94]
INSERT INTO npc_vendor_template VALUES (305,2515,0,0,0); -- Sharp Arrow [6/6/104]
INSERT INTO npc_vendor_template VALUES (305,3026,0,0,0); -- Reinforced Bow [6/6/34]
INSERT INTO npc_vendor_template VALUES (305,5439,0,0,0); -- Small Quiver [6/6/44]
INSERT INTO npc_vendor_template VALUES (305,11362,0,0,0); -- Medium Quiver [6/6/47]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2509,0,0,0 Ornate Blunderbuss [1/6/16]
-- 2511,0,0,0 Hunter's Boomstick [1/6/13]
-- 2516,0,0,0 Light Shot [1/6/72]
-- 2519,0,0,0 Heavy Shot [1/6/84]
-- 5441,0,0,0 Small Shot Pouch [1/6/18]
-- 11304,0,0,0 Fine Longbow [2/6/5]
-- 11304,1,800,0 Fine Longbow [1/6/1]
-- 11304,1,14400,0 Fine Longbow [1/6/1]
-- 11304,2,43200,0 Fine Longbow [1/6/1]
-- 11305,0,0,0 Dense Shortbow [1/6/3]

INSERT INTO npc_vendor VALUES (3488,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (3488,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (3488,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (3488,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (3488,5441,0,0,0); -- Small Shot Pouch
INSERT INTO npc_vendor VALUES (1668,11304,0,0,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (1687,11304,0,0,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (3488,11304,1,800,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (9549,11304,1,14400,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (9553,11304,2,43200,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (3951,11305,0,0,0); -- Dense Shortbow

-- Total count: Templates: 6, single 11, sum 17, before: 47

-- ------------
-- Bow Vendors 4
-- 1297,1459,12029,14301,16263,16274,16619
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1297,1459,12029,14301,16263,16274,16619);
UPDATE creature_template SET vendor_id=306 WHERE entry IN (1297,1459,12029,14301,16263,16274,16619);

INSERT INTO npc_vendor_template VALUES (306,2504,0,0,0); -- Worn Shortbow [7/7/10]
INSERT INTO npc_vendor_template VALUES (306,2505,0,0,0); -- Polished Shortbow [7/7/10]
INSERT INTO npc_vendor_template VALUES (306,2506,0,0,0); -- Hornwood Recurve Bow [7/7/15]
INSERT INTO npc_vendor_template VALUES (306,2507,0,0,0); -- Laminated Recurve Bow [7/7/23]
INSERT INTO npc_vendor_template VALUES (306,2512,0,0,0); -- Rough Arrow [7/7/94]
INSERT INTO npc_vendor_template VALUES (306,2515,0,0,0); -- Sharp Arrow [7/7/104]
INSERT INTO npc_vendor_template VALUES (306,3026,0,0,0); -- Reinforced Bow [7/7/34]
INSERT INTO npc_vendor_template VALUES (306,3027,0,0,0); -- Heavy Recurve Bow [7/7/26]
INSERT INTO npc_vendor_template VALUES (306,3030,0,0,0); -- Razor Arrow [7/7/75]
INSERT INTO npc_vendor_template VALUES (306,5439,0,0,0); -- Small Quiver [7/7/44]
INSERT INTO npc_vendor_template VALUES (306,11362,0,0,0); -- Medium Quiver [7/7/47]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2101,0,0,0 Light Quiver [1/7/8]
-- 2509,0,0,0 Ornate Blunderbuss [2/7/16]
-- 2511,0,0,0 Hunter's Boomstick [2/7/13]
-- 2516,0,0,0 Light Shot [2/7/72]
-- 2519,0,0,0 Heavy Shot [2/7/84]
-- 3023,0,0,0 Large Bore Blunderbuss [2/7/18]
-- 3024,0,0,0 BKP 2700 "Enforcer" [1/7/15]
-- 3033,0,0,0 Solid Shot [2/7/61]
-- 5441,0,0,0 Small Shot Pouch [2/7/18]
-- 11284,0,0,0 Accurate Slugs [1/7/95]
-- 11285,0,0,0 Jagged Arrow [1/7/100]
-- 11304,0,0,0 Fine Longbow [1/7/5]
-- 11305,0,0,0 Dense Shortbow [1/7/3]
-- 11308,1,43200,0 Sylvan Shortbow [1/7/2]
-- 28053,0,0,0 Wicked Arrow [1/7/100]

INSERT INTO npc_vendor VALUES (1459,2101,0,0,0); -- Light Quiver
INSERT INTO npc_vendor VALUES (1297,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (16274,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (1297,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (16274,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (1297,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (16274,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (1297,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (16274,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (1297,3023,0,0,0); -- Large Bore Blunderbuss
INSERT INTO npc_vendor VALUES (16274,3023,0,0,0); -- Large Bore Blunderbuss
INSERT INTO npc_vendor VALUES (1297,3024,0,0,0); -- BKP 2700 "Enforcer"
INSERT INTO npc_vendor VALUES (1297,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (16274,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (1297,5441,0,0,0); -- Small Shot Pouch
INSERT INTO npc_vendor VALUES (16274,5441,0,0,0); -- Small Shot Pouch
INSERT INTO npc_vendor VALUES (1297,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (14301,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (1459,11304,0,0,0); -- Fine Longbow
INSERT INTO npc_vendor VALUES (14301,11305,0,0,0); -- Dense Shortbow
INSERT INTO npc_vendor VALUES (12029,11308,1,43200,0); -- Sylvan Shortbow
INSERT INTO npc_vendor VALUES (14301,28053,0,0,0); -- Wicked Arrow

-- Total count: Templates: 11, single 22, sum 33, before: 99

-- ------------
-- Arrow Vendors 1
-- Do something about 6028
-- 789,1462,6028,17598
-- ------------
DELETE FROM npc_vendor WHERE entry IN (789,1462,6028,17598);
UPDATE creature_template SET vendor_id=307 WHERE entry IN (789,1462,6028,17598);

INSERT INTO npc_vendor_template VALUES (307,2512,0,0,0); -- Rough Arrow [4/4/94]
INSERT INTO npc_vendor_template VALUES (307,2515,0,0,0); -- Sharp Arrow [4/4/104]
INSERT INTO npc_vendor_template VALUES (307,3030,0,0,0); -- Razor Arrow [4/4/75]
INSERT INTO npc_vendor_template VALUES (307,5439,0,0,0); -- Small Quiver [4/4/44]
INSERT INTO npc_vendor_template VALUES (307,11285,0,0,0); -- Jagged Arrow [4/4/100]
INSERT INTO npc_vendor_template VALUES (307,11362,0,0,0); -- Medium Quiver [4/4/47]
INSERT INTO npc_vendor_template VALUES (307,28053,0,0,0); -- Wicked Arrow [4/4/100]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2102,0,0,0 Small Ammo Pouch [1/4/2]
-- 2148,0,0,0 Polished Scale Belt [1/4/14]
-- 2149,0,0,0 Polished Scale Boots [1/4/14]
-- 2150,0,0,0 Polished Scale Bracers [1/4/14]
-- 2151,0,0,0 Polished Scale Gloves [1/4/14]
-- 2152,0,0,0 Polished Scale Leggings [1/4/14]
-- 2153,0,0,0 Polished Scale Vest [1/4/14]
-- 2446,0,0,0 Kite Shield [1/4/15]
-- 2516,0,0,0 Light Shot [1/4/72]
-- 2519,0,0,0 Heavy Shot [1/4/84]
-- 3033,0,0,0 Solid Shot [1/4/61]
-- 4384,0,0,0 Explosive Sheep [1/4/1]
-- 11363,0,0,0 Medium Shot Pouch [1/4/2]
-- 17192,0,0,0 Reinforced Targe [1/4/15]
-- 28060,0,0,0 Impact Shot [1/4/89]

INSERT INTO npc_vendor VALUES (6028,2102,0,0,0); -- Small Ammo Pouch
INSERT INTO npc_vendor VALUES (6028,2148,0,0,0); -- Polished Scale Belt
INSERT INTO npc_vendor VALUES (6028,2149,0,0,0); -- Polished Scale Boots
INSERT INTO npc_vendor VALUES (6028,2150,0,0,0); -- Polished Scale Bracers
INSERT INTO npc_vendor VALUES (6028,2151,0,0,0); -- Polished Scale Gloves
INSERT INTO npc_vendor VALUES (6028,2152,0,0,0); -- Polished Scale Leggings
INSERT INTO npc_vendor VALUES (6028,2153,0,0,0); -- Polished Scale Vest
INSERT INTO npc_vendor VALUES (6028,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (6028,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (6028,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (6028,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (789,4384,0,0,0); -- Explosive Sheep
INSERT INTO npc_vendor VALUES (6028,11363,0,0,0); -- Medium Shot Pouch
INSERT INTO npc_vendor VALUES (6028,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (6028,28060,0,0,0); -- Impact Shot

-- Total count: Templates: 7, single 15, sum 22, before: 43

-- ------------
-- Gun Vendors 1
-- 1686,3088
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1686,3088);
UPDATE creature_template SET vendor_id=308 WHERE entry IN (1686,3088);

INSERT INTO npc_vendor_template VALUES (308,2511,0,0,0); -- Hunter's Boomstick [2/2/13]
INSERT INTO npc_vendor_template VALUES (308,2516,0,0,0); -- Light Shot [2/2/72]
INSERT INTO npc_vendor_template VALUES (308,2519,0,0,0); -- Heavy Shot [2/2/84]
INSERT INTO npc_vendor_template VALUES (308,3023,0,0,0); -- Large Bore Blunderbuss [2/2/18]
INSERT INTO npc_vendor_template VALUES (308,3033,0,0,0); -- Solid Shot [2/2/61]
INSERT INTO npc_vendor_template VALUES (308,5441,0,0,0); -- Small Shot Pouch [2/2/18]

-- Total count: Templates: 6, single 0, sum 6, before: 12

-- ------------
-- Gun Vendors 2
-- 1461,3053,4889
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1461,3053,4889);
UPDATE creature_template SET vendor_id=309 WHERE entry IN (1461,3053,4889);

INSERT INTO npc_vendor_template VALUES (309,2516,0,0,0); -- Light Shot [3/3/72]
INSERT INTO npc_vendor_template VALUES (309,2519,0,0,0); -- Heavy Shot [3/3/84]
INSERT INTO npc_vendor_template VALUES (309,3023,0,0,0); -- Large Bore Blunderbuss [3/3/18]
INSERT INTO npc_vendor_template VALUES (309,3024,0,0,0); -- BKP 2700 "Enforcer" [3/3/15]
INSERT INTO npc_vendor_template VALUES (309,3033,0,0,0); -- Solid Shot [3/3/61]
INSERT INTO npc_vendor_template VALUES (309,11284,0,0,0); -- Accurate Slugs [3/3/95]

-- Total count: Templates: 6, single 0, sum 6, before: 18

-- ------------
-- Gun Vendors 3
-- 1243,1469,3078,5510
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1243,1469,3078,5510);
UPDATE creature_template SET vendor_id=310 WHERE entry IN (1243,1469,3078,5510);

INSERT INTO npc_vendor_template VALUES (310,2509,0,0,0); -- Ornate Blunderbuss [4/4/16]
INSERT INTO npc_vendor_template VALUES (310,2516,0,0,0); -- Light Shot [4/4/72]
INSERT INTO npc_vendor_template VALUES (310,2519,0,0,0); -- Heavy Shot [4/4/84]
INSERT INTO npc_vendor_template VALUES (310,5441,0,0,0); -- Small Shot Pouch [4/4/18]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2508,0,0,0 Old Blunderbuss [1/4/1]
-- 2510,0,0,0 Solid Blunderbuss [3/4/6]
-- 2511,0,0,0 Hunter's Boomstick [1/4/13]

INSERT INTO npc_vendor VALUES (5510,2508,0,0,0); -- Old Blunderbuss
INSERT INTO npc_vendor VALUES (1243,2510,0,0,0); -- Solid Blunderbuss
INSERT INTO npc_vendor VALUES (3078,2510,0,0,0); -- Solid Blunderbuss
INSERT INTO npc_vendor VALUES (5510,2510,0,0,0); -- Solid Blunderbuss
INSERT INTO npc_vendor VALUES (1469,2511,0,0,0); -- Hunter's Boomstick

-- Total count: Templates: 4, single 5, sum 9, before: 21

-- ------------
-- Gun Vendors 4
-- 3322,8131,9548,11184,18962
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3322,8131,9548,11184,18962);
UPDATE creature_template SET vendor_id=311 WHERE entry IN (3322,8131,9548,11184,18962);

INSERT INTO npc_vendor_template VALUES (311,2516,0,0,0); -- Light Shot [5/5/72]
INSERT INTO npc_vendor_template VALUES (311,2519,0,0,0); -- Heavy Shot [5/5/84]
INSERT INTO npc_vendor_template VALUES (311,3023,0,0,0); -- Large Bore Blunderbuss [5/5/18]
INSERT INTO npc_vendor_template VALUES (311,3024,0,0,0); -- BKP 2700 "Enforcer" [5/5/15]
INSERT INTO npc_vendor_template VALUES (311,3025,0,0,0); -- BKP 42 "Ultra" [5/5/7]
INSERT INTO npc_vendor_template VALUES (311,3033,0,0,0); -- Solid Shot [5/5/61]
INSERT INTO npc_vendor_template VALUES (311,11284,0,0,0); -- Accurate Slugs [5/5/95]
INSERT INTO npc_vendor_template VALUES (311,28060,0,0,0); -- Impact Shot [5/5/89]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2504,0,0,0 Worn Shortbow [1/5/10]
-- 2505,0,0,0 Polished Shortbow [1/5/10]
-- 2506,0,0,0 Hornwood Recurve Bow [1/5/15]
-- 2507,0,0,0 Laminated Recurve Bow [1/5/23]
-- 2509,0,0,0 Ornate Blunderbuss [1/5/16]
-- 2511,0,0,0 Hunter's Boomstick [1/5/13]
-- 2512,0,0,0 Rough Arrow [2/5/94]
-- 2515,0,0,0 Sharp Arrow [2/5/104]
-- 2528,0,0,0 Falchion [1/5/26]
-- 2529,0,0,0 Zweihander [1/5/24]
-- 2530,0,0,0 Francisca [1/5/19]
-- 2531,0,0,0 Great Axe [1/5/25]
-- 2532,0,0,0 Morning Star [1/5/19]
-- 2533,0,0,0 War Maul [1/5/25]
-- 2534,0,0,0 Rondel [1/5/26]
-- 2535,0,0,0 War Staff [1/5/27]
-- 3026,0,0,0 Reinforced Bow [2/5/34]
-- 3027,0,0,0 Heavy Recurve Bow [2/5/26]
-- 3030,0,0,0 Razor Arrow [2/5/75]
-- 5439,0,0,0 Small Quiver [2/5/44]
-- 5441,0,0,0 Small Shot Pouch [1/5/18]
-- 11285,0,0,0 Jagged Arrow [1/5/100]
-- 11308,1,14400,0 Sylvan Shortbow [1/5/1]
-- 11362,0,0,0 Medium Quiver [2/5/47]
-- 18650,1,1800,0 Schematic: EZ-Thro Dynamite II [1/5/1]
-- 28053,0,0,0 Wicked Arrow [1/5/100]
-- 30757,0,0,0 Draenic Light Crossbow [1/5/4]
-- 30758,0,0,0 Aldor Guardian Rifle [1/5/5]
-- 30759,0,0,0 Mag'hari Light Recurve [1/5/4]

INSERT INTO npc_vendor VALUES (18962,2504,0,0,0); -- Worn Shortbow
INSERT INTO npc_vendor VALUES (18962,2505,0,0,0); -- Polished Shortbow
INSERT INTO npc_vendor VALUES (18962,2506,0,0,0); -- Hornwood Recurve Bow
INSERT INTO npc_vendor VALUES (18962,2507,0,0,0); -- Laminated Recurve Bow
INSERT INTO npc_vendor VALUES (3322,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (3322,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (9548,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (18962,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (9548,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (18962,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (11184,2528,0,0,0); -- Falchion
INSERT INTO npc_vendor VALUES (11184,2529,0,0,0); -- Zweihander
INSERT INTO npc_vendor VALUES (11184,2530,0,0,0); -- Francisca
INSERT INTO npc_vendor VALUES (11184,2531,0,0,0); -- Great Axe
INSERT INTO npc_vendor VALUES (11184,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (11184,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (11184,2534,0,0,0); -- Rondel
INSERT INTO npc_vendor VALUES (11184,2535,0,0,0); -- War Staff
INSERT INTO npc_vendor VALUES (9548,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (18962,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (9548,3027,0,0,0); -- Heavy Recurve Bow
INSERT INTO npc_vendor VALUES (18962,3027,0,0,0); -- Heavy Recurve Bow
INSERT INTO npc_vendor VALUES (9548,3030,0,0,0); -- Razor Arrow
INSERT INTO npc_vendor VALUES (18962,3030,0,0,0); -- Razor Arrow
INSERT INTO npc_vendor VALUES (9548,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (18962,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (3322,5441,0,0,0); -- Small Shot Pouch
INSERT INTO npc_vendor VALUES (9548,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (9548,11308,1,14400,0); -- Sylvan Shortbow
INSERT INTO npc_vendor VALUES (9548,11362,0,0,0); -- Medium Quiver
INSERT INTO npc_vendor VALUES (18962,11362,0,0,0); -- Medium Quiver
INSERT INTO npc_vendor VALUES (8131,18650,1,1800,0); -- Schematic: EZ-Thro Dynamite II
INSERT INTO npc_vendor VALUES (9548,28053,0,0,0); -- Wicked Arrow
INSERT INTO npc_vendor VALUES (18962,30757,0,0,0); -- Draenic Light Crossbow
INSERT INTO npc_vendor VALUES (18962,30758,0,0,0); -- Aldor Guardian Rifle
INSERT INTO npc_vendor VALUES (18962,30759,0,0,0); -- Mag'hari Light Recurve

-- Total count: Templates: 8, single 36, sum 44, before: 76

-- ------------
-- Gun Vendors 5
-- 19836,22491
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19836,22491);
UPDATE creature_template SET vendor_id=312 WHERE entry IN (19836,22491);

INSERT INTO npc_vendor_template VALUES (312,3025,0,0,0); -- BKP 42 "Ultra" [2/2/7]
INSERT INTO npc_vendor_template VALUES (312,28060,0,0,0); -- Impact Shot [2/2/89]
INSERT INTO npc_vendor_template VALUES (312,28061,0,0,0); -- Ironbite Shell [2/2/51]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 23803,1,7200,0 Schematic: Cogspinner Goggles [1/2/1]
-- 23807,1,7200,0 Schematic: Adamantite Scope [1/2/1]

INSERT INTO npc_vendor VALUES (19836,23803,1,7200,0); -- Schematic: Cogspinner Goggles
INSERT INTO npc_vendor VALUES (19836,23807,1,7200,0); -- Schematic: Adamantite Scope

-- Total count: Templates: 3, single 2, sum 5, before: 8

-- ------------
-- Gun Vendors 6
-- 3018,4603,5123,16620,16735
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3018,4603,5123,16620,16735);
UPDATE creature_template SET vendor_id=313 WHERE entry IN (3018,4603,5123,16620,16735);

INSERT INTO npc_vendor_template VALUES (313,2509,0,0,0); -- Ornate Blunderbuss [5/5/16]
INSERT INTO npc_vendor_template VALUES (313,2516,0,0,0); -- Light Shot [5/5/72]
INSERT INTO npc_vendor_template VALUES (313,2519,0,0,0); -- Heavy Shot [5/5/84]
INSERT INTO npc_vendor_template VALUES (313,3023,0,0,0); -- Large Bore Blunderbuss [5/5/18]
INSERT INTO npc_vendor_template VALUES (313,3024,0,0,0); -- BKP 2700 "Enforcer" [5/5/15]
INSERT INTO npc_vendor_template VALUES (313,3033,0,0,0); -- Solid Shot [5/5/61]
INSERT INTO npc_vendor_template VALUES (313,5441,0,0,0); -- Small Shot Pouch [5/5/18]
INSERT INTO npc_vendor_template VALUES (313,11284,0,0,0); -- Accurate Slugs [5/5/95]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2510,0,0,0 Solid Blunderbuss [3/5/6]
-- 2511,0,0,0 Hunter's Boomstick [3/5/13]

INSERT INTO npc_vendor VALUES (3018,2510,0,0,0); -- Solid Blunderbuss
INSERT INTO npc_vendor VALUES (4603,2510,0,0,0); -- Solid Blunderbuss
INSERT INTO npc_vendor VALUES (5123,2510,0,0,0); -- Solid Blunderbuss
INSERT INTO npc_vendor VALUES (3018,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (16620,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (16735,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (4603,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (4603,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (4603,21833,0,0,0); -- Cologne Bottle [added for LiitA]
-- Total count: Templates: 8, single 6, sum 14, before: 46

-- ------------
-- Weapons 1
-- 2843,5170,16678,19047,19240,19499,21474,21485
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2843,5170,16678,19047,19240,19499,21474,21485);
UPDATE creature_template SET vendor_id=314 WHERE entry IN (2843,5170,16678,19047,19240,19499,21474,21485);

INSERT INTO npc_vendor_template VALUES (314,2520,0,0,0); -- Broadsword [8/8/26]
INSERT INTO npc_vendor_template VALUES (314,2521,0,0,0); -- Flamberge [8/8/24]
INSERT INTO npc_vendor_template VALUES (314,2526,0,0,0); -- Main Gauche [8/8/27]
INSERT INTO npc_vendor_template VALUES (314,2528,0,0,0); -- Falchion [8/8/26]
INSERT INTO npc_vendor_template VALUES (314,2529,0,0,0); -- Zweihander [8/8/24]
INSERT INTO npc_vendor_template VALUES (314,2534,0,0,0); -- Rondel [8/8/26]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 11308,0,0,0 Sylvan Shortbow [1/8/1]
-- 12162,1,3600,0 Plans: Hardened Iron Shortsword [1/8/2]
-- 12248,1,3600,0 Daring Dirk [1/8/4]
-- 15903,0,0,0 Right-Handed Claw [1/8/5]
-- 15904,0,0,0 Right-Handed Blades [1/8/5]
-- 15905,0,0,0 Right-Handed Brass Knuckles [1/8/5]
-- 15906,0,0,0 Left-Handed Brass Knuckles [1/8/5]
-- 15907,0,0,0 Left-Handed Claw [1/8/5]
-- 15909,0,0,0 Left-Handed Blades [1/8/4]
-- 24208,1,86400,0 Design: Mystic Dawnstone [2/8/2]
-- 28915,0,0,1647 Reins of the Dark Riding Talbuk [2/8/2]
-- 29228,0,0,1646 Reins of the Dark War Talbuk [2/8/2]
-- 30568,3,43200,0 The Sharp Cookie [1/8/1]
-- 30569,0,0,0 Proximo's Rudius [2/8/2]
-- 30570,3,43200,0 Arkadian Claymore [1/8/1]
-- 30571,1,43200,0 Don Rodrigo's Heart [1/8/1]
-- 30597,3,43200,0 Halaani Claymore [1/8/1]
-- 30598,1,43200,0 Don Amancio's Heart [1/8/1]
-- 30599,3,43200,0 Avenging Blades [1/8/1]
-- 30749,0,0,0 Draenic Sparring Blade [2/8/8]
-- 30750,0,0,0 Draenic Warblade [2/8/8]
-- 30751,0,0,0 Mag'hari Light Axe [1/8/7]
-- 30752,0,0,0 Mag'hari Battleaxe [1/8/7]
-- 30753,1,43200,0 Warphorn Spear [1/8/7]
-- 30754,0,0,0 Ancient Bone Mace [1/8/7]
-- 30755,1,43200,0 Mag'hari Fighting Claw [1/8/7]
-- 30757,0,0,0 Draenic Light Crossbow [1/8/4]
-- 30758,0,0,0 Aldor Guardian Rifle [1/8/5]
-- 30759,0,0,0 Mag'hari Light Recurve [1/8/4]

INSERT INTO npc_vendor VALUES (19499,11308,0,0,0); -- Sylvan Shortbow
INSERT INTO npc_vendor VALUES (2843,12162,1,3600,0); -- Plans: Hardened Iron Shortsword
INSERT INTO npc_vendor VALUES (2843,12248,1,3600,0); -- Daring Dirk
INSERT INTO npc_vendor VALUES (19047,15903,0,0,0); -- Right-Handed Claw
INSERT INTO npc_vendor VALUES (19047,15904,0,0,0); -- Right-Handed Blades
INSERT INTO npc_vendor VALUES (19047,15905,0,0,0); -- Right-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (19047,15906,0,0,0); -- Left-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (19047,15907,0,0,0); -- Left-Handed Claw
INSERT INTO npc_vendor VALUES (19047,15909,0,0,0); -- Left-Handed Blades
INSERT INTO npc_vendor VALUES (21474,24208,1,86400,0); -- Design: Mystic Dawnstone
INSERT INTO npc_vendor VALUES (21485,24208,1,86400,0); -- Design: Mystic Dawnstone
INSERT INTO npc_vendor VALUES (21474,28915,0,0,1647); -- Reins of the Dark Riding Talbuk
INSERT INTO npc_vendor VALUES (21485,28915,0,0,1647); -- Reins of the Dark Riding Talbuk
INSERT INTO npc_vendor VALUES (21474,29228,0,0,1646); -- Reins of the Dark War Talbuk
INSERT INTO npc_vendor VALUES (21485,29228,0,0,1646); -- Reins of the Dark War Talbuk
INSERT INTO npc_vendor VALUES (21474,30568,3,43200,0); -- The Sharp Cookie
INSERT INTO npc_vendor VALUES (21474,30569,0,0,0); -- Proximo's Rudius
INSERT INTO npc_vendor VALUES (21485,30569,0,0,0); -- Proximo's Rudius
INSERT INTO npc_vendor VALUES (21474,30570,3,43200,0); -- Arkadian Claymore
INSERT INTO npc_vendor VALUES (21474,30571,1,43200,0); -- Don Rodrigo's Heart
INSERT INTO npc_vendor VALUES (21485,30597,3,43200,0); -- Halaani Claymore
INSERT INTO npc_vendor VALUES (21485,30598,1,43200,0); -- Don Amancio's Heart
INSERT INTO npc_vendor VALUES (21485,30599,3,43200,0); -- Avenging Blades
INSERT INTO npc_vendor VALUES (19499,30749,0,0,0); -- Draenic Sparring Blade
INSERT INTO npc_vendor VALUES (21485,30749,0,0,0); -- Draenic Sparring Blade
INSERT INTO npc_vendor VALUES (19499,30750,0,0,0); -- Draenic Warblade
INSERT INTO npc_vendor VALUES (21485,30750,0,0,0); -- Draenic Warblade
INSERT INTO npc_vendor VALUES (19499,30751,0,0,0); -- Mag'hari Light Axe
INSERT INTO npc_vendor VALUES (19499,30752,0,0,0); -- Mag'hari Battleaxe
INSERT INTO npc_vendor VALUES (19499,30753,1,43200,0); -- Warphorn Spear
INSERT INTO npc_vendor VALUES (19499,30754,0,0,0); -- Ancient Bone Mace
INSERT INTO npc_vendor VALUES (19499,30755,1,43200,0); -- Mag'hari Fighting Claw
INSERT INTO npc_vendor VALUES (19499,30757,0,0,0); -- Draenic Light Crossbow
INSERT INTO npc_vendor VALUES (19499,30758,0,0,0); -- Aldor Guardian Rifle
INSERT INTO npc_vendor VALUES (19499,30759,0,0,0); -- Mag'hari Light Recurve

-- Total count: Templates: 6, single 35, sum 41, before: 83

-- ------------
-- Weapons 1.5
-- 3000,4600,20112
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3000,4600,20112);
UPDATE creature_template SET vendor_id=315 WHERE entry IN (3000,4600,20112);

INSERT INTO npc_vendor_template VALUES (315,2520,0,0,0); -- Broadsword [3/3/26]
INSERT INTO npc_vendor_template VALUES (315,2521,0,0,0); -- Flamberge [3/3/24]
INSERT INTO npc_vendor_template VALUES (315,2523,0,0,0); -- Bullova [3/3/25]
INSERT INTO npc_vendor_template VALUES (315,2525,0,0,0); -- War Hammer [3/3/24]
INSERT INTO npc_vendor_template VALUES (315,2526,0,0,0); -- Main Gauche [3/3/27]
INSERT INTO npc_vendor_template VALUES (315,2528,0,0,0); -- Falchion [3/3/26]
INSERT INTO npc_vendor_template VALUES (315,2529,0,0,0); -- Zweihander [3/3/24]
INSERT INTO npc_vendor_template VALUES (315,2531,0,0,0); -- Great Axe [3/3/25]
INSERT INTO npc_vendor_template VALUES (315,2533,0,0,0); -- War Maul [3/3/25]
INSERT INTO npc_vendor_template VALUES (315,2534,0,0,0); -- Rondel [3/3/26]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2522,0,0,0 Crescent Axe [2/3/19]
-- 2524,0,0,0 Truncheon [2/3/18]
-- 2527,0,0,0 Battle Staff [2/3/26]
-- 2530,0,0,0 Francisca [2/3/19]
-- 2532,0,0,0 Morning Star [2/3/19]
-- 2535,0,0,0 War Staff [2/3/27]
-- 30749,0,0,0 Draenic Sparring Blade [1/3/8]
-- 30750,0,0,0 Draenic Warblade [1/3/8]
-- 30751,0,0,0 Mag'hari Light Axe [1/3/7]
-- 30752,0,0,0 Mag'hari Battleaxe [1/3/7]
-- 30753,1,43200,0 Warphorn Spear [1/3/7]
-- 30754,0,0,0 Ancient Bone Mace [1/3/7]
-- 30755,1,43200,0 Mag'hari Fighting Claw [1/3/7]

INSERT INTO npc_vendor VALUES (3000,2522,0,0,0); -- Crescent Axe
INSERT INTO npc_vendor VALUES (20112,2522,0,0,0); -- Crescent Axe
INSERT INTO npc_vendor VALUES (3000,2524,0,0,0); -- Truncheon
INSERT INTO npc_vendor VALUES (20112,2524,0,0,0); -- Truncheon
INSERT INTO npc_vendor VALUES (3000,2527,0,0,0); -- Battle Staff
INSERT INTO npc_vendor VALUES (20112,2527,0,0,0); -- Battle Staff
INSERT INTO npc_vendor VALUES (3000,2530,0,0,0); -- Francisca
INSERT INTO npc_vendor VALUES (20112,2530,0,0,0); -- Francisca
INSERT INTO npc_vendor VALUES (3000,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (20112,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (3000,2535,0,0,0); -- War Staff
INSERT INTO npc_vendor VALUES (20112,2535,0,0,0); -- War Staff
INSERT INTO npc_vendor VALUES (20112,30749,0,0,0); -- Draenic Sparring Blade
INSERT INTO npc_vendor VALUES (20112,30750,0,0,0); -- Draenic Warblade
INSERT INTO npc_vendor VALUES (20112,30751,0,0,0); -- Mag'hari Light Axe
INSERT INTO npc_vendor VALUES (20112,30752,0,0,0); -- Mag'hari Battleaxe
INSERT INTO npc_vendor VALUES (20112,30753,1,43200,0); -- Warphorn Spear
INSERT INTO npc_vendor VALUES (20112,30754,0,0,0); -- Ancient Bone Mace
INSERT INTO npc_vendor VALUES (20112,30755,1,43200,0); -- Mag'hari Fighting Claw

-- Total count: Templates: 10, single 19, sum 29, before: 49


-- ------------
-- Weapons 2
-- 1333,4043,4180,8398
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1333,4043,4180,8398);
UPDATE creature_template SET vendor_id=316 WHERE entry IN (1333,4043,4180,8398);

INSERT INTO npc_vendor_template VALUES (316,2521,0,0,0); -- Flamberge [4/4/24]
INSERT INTO npc_vendor_template VALUES (316,2523,0,0,0); -- Bullova [4/4/25]
INSERT INTO npc_vendor_template VALUES (316,2525,0,0,0); -- War Hammer [4/4/24]
INSERT INTO npc_vendor_template VALUES (316,2529,0,0,0); -- Zweihander [4/4/24]
INSERT INTO npc_vendor_template VALUES (316,2531,0,0,0); -- Great Axe [4/4/25]
INSERT INTO npc_vendor_template VALUES (316,2533,0,0,0); -- War Maul [4/4/25]

-- Total count: Templates: 6, single 0, sum 6, before: 24

-- ------------
-- Weapons 3 (Axes)
-- 2483,5509,12045,16666,19479
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2483,5509,12045,16666,19479);
UPDATE creature_template SET vendor_id=317 WHERE entry IN (2483,5509,12045,16666,19479);

INSERT INTO npc_vendor_template VALUES (317,2522,0,0,0); -- Crescent Axe [5/5/19]
INSERT INTO npc_vendor_template VALUES (317,2523,0,0,0); -- Bullova [5/5/25]
INSERT INTO npc_vendor_template VALUES (317,2530,0,0,0); -- Francisca [5/5/19]
INSERT INTO npc_vendor_template VALUES (317,2531,0,0,0); -- Great Axe [5/5/25]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 12164,1,3600,0 Plans: Massive Iron Axe [1/5/2]
-- 12249,1,14400,0 Merciless Axe [1/5/1]
-- 12250,1,3600,0 Midnight Axe [1/5/4]
-- 12250,1,14400,0 Midnight Axe [1/5/1]

INSERT INTO npc_vendor VALUES (2483,12164,1,3600,0); -- Plans: Massive Iron Axe
INSERT INTO npc_vendor VALUES (12045,12249,1,14400,0); -- Merciless Axe
INSERT INTO npc_vendor VALUES (2483,12250,1,3600,0); -- Midnight Axe
INSERT INTO npc_vendor VALUES (12045,12250,1,14400,0); -- Midnight Axe

-- Total count: Templates: 4, single 4, sum 8, before: 24

-- ------------
-- Weapons 4
-- 1471,5152,8878,10379,16637,19370
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1471,5152,8878,10379,16637,19370);
UPDATE creature_template SET vendor_id=318 WHERE entry IN (1471,5152,8878,10379,16637,19370);

INSERT INTO npc_vendor_template VALUES (318,2524,0,0,0); -- Truncheon [6/6/18]
INSERT INTO npc_vendor_template VALUES (318,2525,0,0,0); -- War Hammer [6/6/24]
INSERT INTO npc_vendor_template VALUES (318,2527,0,0,0); -- Battle Staff [6/6/26]
INSERT INTO npc_vendor_template VALUES (318,2532,0,0,0); -- Morning Star [6/6/19]
INSERT INTO npc_vendor_template VALUES (318,2533,0,0,0); -- War Maul [6/6/25]
INSERT INTO npc_vendor_template VALUES (318,2535,0,0,0); -- War Staff [6/6/27]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2522,0,0,0 Crescent Axe [1/6/19]
-- 2523,0,0,0 Bullova [1/6/25]
-- 2530,0,0,0 Francisca [1/6/19]
-- 2531,0,0,0 Great Axe [1/6/25]
-- 10858,0,0,0 Plans: Solid Iron Maul [1/6/1]
-- 10858,1,7200,0 Plans: Solid Iron Maul [1/6/1]

INSERT INTO npc_vendor VALUES (10379,2522,0,0,0); -- Crescent Axe
INSERT INTO npc_vendor VALUES (10379,2523,0,0,0); -- Bullova
INSERT INTO npc_vendor VALUES (10379,2530,0,0,0); -- Francisca
INSERT INTO npc_vendor VALUES (10379,2531,0,0,0); -- Great Axe
INSERT INTO npc_vendor VALUES (1471,10858,0,0,0); -- Plans: Solid Iron Maul
INSERT INTO npc_vendor VALUES (8878,10858,1,7200,0); -- Plans: Solid Iron Maul

-- Total count: Templates: 6, single 6, sum 12, before: 42

-- ------------
-- Weapons 5
-- 20917=Weap4 + Weap5
-- 18997,19001,19333,19526,20917
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18997,19001,19333,19526,20917);
UPDATE creature_template SET vendor_id=319 WHERE entry IN (18997,19001,19333,19526,20917);

INSERT INTO npc_vendor_template VALUES (319,30749,0,0,0); -- Draenic Sparring Blade [5/5/8]
INSERT INTO npc_vendor_template VALUES (319,30750,0,0,0); -- Draenic Warblade [5/5/8]
INSERT INTO npc_vendor_template VALUES (319,30751,0,0,0); -- Mag'hari Light Axe [5/5/7]
INSERT INTO npc_vendor_template VALUES (319,30752,0,0,0); -- Mag'hari Battleaxe [5/5/7]
INSERT INTO npc_vendor_template VALUES (319,30753,1,43200,0); -- Warphorn Spear [5/5/7]
INSERT INTO npc_vendor_template VALUES (319,30754,0,0,0); -- Ancient Bone Mace [5/5/7]
INSERT INTO npc_vendor_template VALUES (319,30755,1,43200,0); -- Mag'hari Fighting Claw [5/5/7]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2524,0,0,0 Truncheon [1/5/18]
-- 2525,0,0,0 War Hammer [1/5/24]
-- 2527,0,0,0 Battle Staff [1/5/26]
-- 2532,0,0,0 Morning Star [1/5/19]
-- 2533,0,0,0 War Maul [1/5/25]
-- 2535,0,0,0 War Staff [1/5/27]

INSERT INTO npc_vendor VALUES (20917,2524,0,0,0); -- Truncheon
INSERT INTO npc_vendor VALUES (20917,2525,0,0,0); -- War Hammer
INSERT INTO npc_vendor VALUES (20917,2527,0,0,0); -- Battle Staff
INSERT INTO npc_vendor VALUES (20917,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (20917,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (20917,2535,0,0,0); -- War Staff

-- Total count: Templates: 7, single 6, sum 13, before: 41

-- ------------
-- Weapons 6
-- 78,945,2117,3073,3159,3588
-- ------------
DELETE FROM npc_vendor WHERE entry IN (78,945,2117,3073,3159,3588);
UPDATE creature_template SET vendor_id=320 WHERE entry IN (78,945,2117,3073,3159,3588);

INSERT INTO npc_vendor_template VALUES (320,1194,0,0,0); -- Bastard Sword [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2130,0,0,0); -- Club [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2131,0,0,0); -- Shortsword [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2132,0,0,0); -- Short Staff [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2134,0,0,0); -- Hand Axe [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2139,0,0,0); -- Dirk [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2479,0,0,0); -- Broad Axe [6/6/12]
INSERT INTO npc_vendor_template VALUES (320,2480,0,0,0); -- Large Club [6/6/12]

-- Total count: Templates: 8, single 0, sum 8, before: 48

-- ------------
-- Weapons 7
-- 1273,1698,2136,2265,2404,3077,3163,3609,10369,16257,18926
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1273,1698,2136,2265,2404,3077,3163,3609,10369,16257,18926);
UPDATE creature_template SET vendor_id=321 WHERE entry IN (1273,1698,2136,2265,2404,3077,3163,3609,10369,16257,18926);

INSERT INTO npc_vendor_template VALUES (321,2488,0,0,0); -- Gladius [11/11/17]
INSERT INTO npc_vendor_template VALUES (321,2489,0,0,0); -- Two-handed Sword [11/11/17]
INSERT INTO npc_vendor_template VALUES (321,2490,0,0,0); -- Tomahawk [11/11/18]
INSERT INTO npc_vendor_template VALUES (321,2491,0,0,0); -- Large Axe [11/11/18]
INSERT INTO npc_vendor_template VALUES (321,2492,0,0,0); -- Cudgel [11/11/20]
INSERT INTO npc_vendor_template VALUES (321,2493,0,0,0); -- Wooden Mallet [11/11/20]
INSERT INTO npc_vendor_template VALUES (321,2494,0,0,0); -- Stiletto [11/11/17]
INSERT INTO npc_vendor_template VALUES (321,2495,0,0,0); -- Walking Stick [11/11/19]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2506,0,0,0 Hornwood Recurve Bow [1/11/15]
-- 2507,0,0,0 Laminated Recurve Bow [1/11/23]
-- 2512,0,0,0 Rough Arrow [1/11/94]
-- 2515,0,0,0 Sharp Arrow [1/11/104]
-- 5439,0,0,0 Small Quiver [1/11/44]
-- 11362,0,0,0 Medium Quiver [1/11/47]

INSERT INTO npc_vendor VALUES (10369,2506,0,0,0); -- Hornwood Recurve Bow
INSERT INTO npc_vendor VALUES (10369,2507,0,0,0); -- Laminated Recurve Bow
INSERT INTO npc_vendor VALUES (10369,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (10369,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (10369,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (10369,11362,0,0,0); -- Medium Quiver

-- Total count: Templates: 8, single 6, sum 14, before: 94

-- ------------
-- Weapons 8
-- 981,1296,10361,12024,16388
-- ------------
DELETE FROM npc_vendor WHERE entry IN (981,1296,10361,12024,16388);
UPDATE creature_template SET vendor_id=322 WHERE entry IN (981,1296,10361,12024,16388);

INSERT INTO npc_vendor_template VALUES (322,2528,0,0,0); -- Falchion [5/5/26]
INSERT INTO npc_vendor_template VALUES (322,2529,0,0,0); -- Zweihander [5/5/24]
INSERT INTO npc_vendor_template VALUES (322,2530,0,0,0); -- Francisca [5/5/19]
INSERT INTO npc_vendor_template VALUES (322,2531,0,0,0); -- Great Axe [5/5/25]
INSERT INTO npc_vendor_template VALUES (322,2532,0,0,0); -- Morning Star [5/5/19]
INSERT INTO npc_vendor_template VALUES (322,2533,0,0,0); -- War Maul [5/5/25]
INSERT INTO npc_vendor_template VALUES (322,2534,0,0,0); -- Rondel [5/5/26]
INSERT INTO npc_vendor_template VALUES (322,2535,0,0,0); -- War Staff [5/5/27]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 31393,0,0,0 Plans: Iceguard Breastplate [1/5/1]
-- 31394,0,0,0 Plans: Iceguard Leggings [1/5/1]
-- 31395,0,0,0 Plans: Iceguard Helm [1/5/1]

INSERT INTO npc_vendor VALUES (16388,31393,0,0,0); -- Plans: Iceguard Breastplate
INSERT INTO npc_vendor VALUES (16388,31394,0,0,0); -- Plans: Iceguard Leggings
INSERT INTO npc_vendor VALUES (16388,31395,0,0,0); -- Plans: Iceguard Helm

-- Total count: Templates: 8, single 3, sum 11, before: 43

-- ------------
-- Weapons 9 (Blunt)
-- 1348,3020,3360,4233,5121,16765,17412
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1348,3020,3360,4233,5121,16765,17412);
UPDATE creature_template SET vendor_id=323 WHERE entry IN (1348,3020,3360,4233,5121,16765,17412);

INSERT INTO npc_vendor_template VALUES (323,852,0,0,0); -- Mace [7/7/22]
INSERT INTO npc_vendor_template VALUES (323,854,0,0,0); -- Quarter Staff [7/7/22]
INSERT INTO npc_vendor_template VALUES (323,924,0,0,0); -- Maul [7/7/16]
INSERT INTO npc_vendor_template VALUES (323,925,0,0,0); -- Flail [7/7/16]
INSERT INTO npc_vendor_template VALUES (323,928,0,0,0); -- Long Staff [7/7/18]
INSERT INTO npc_vendor_template VALUES (323,1197,0,0,0); -- Giant Mace [7/7/22]
INSERT INTO npc_vendor_template VALUES (323,2026,0,0,0); -- Rock Hammer [7/7/17]
INSERT INTO npc_vendor_template VALUES (323,2028,0,0,0); -- Hammer [7/7/17]
INSERT INTO npc_vendor_template VALUES (323,2030,0,0,0); -- Gnarled Staff [7/7/19]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2492,0,0,0 Cudgel [1/7/20]
-- 2493,0,0,0 Wooden Mallet [1/7/20]
-- 2524,0,0,0 Truncheon [2/7/18]
-- 2525,0,0,0 War Hammer [2/7/24]
-- 2527,0,0,0 Battle Staff [2/7/26]
-- 2532,0,0,0 Morning Star [2/7/19]
-- 2533,0,0,0 War Maul [2/7/25]
-- 2535,0,0,0 War Staff [2/7/27]

INSERT INTO npc_vendor VALUES (1348,2492,0,0,0); -- Cudgel
INSERT INTO npc_vendor VALUES (1348,2493,0,0,0); -- Wooden Mallet
INSERT INTO npc_vendor VALUES (5121,2524,0,0,0); -- Truncheon
INSERT INTO npc_vendor VALUES (16765,2524,0,0,0); -- Truncheon
INSERT INTO npc_vendor VALUES (5121,2525,0,0,0); -- War Hammer
INSERT INTO npc_vendor VALUES (16765,2525,0,0,0); -- War Hammer
INSERT INTO npc_vendor VALUES (5121,2527,0,0,0); -- Battle Staff
INSERT INTO npc_vendor VALUES (16765,2527,0,0,0); -- Battle Staff
INSERT INTO npc_vendor VALUES (5121,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (16765,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (5121,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (16765,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (5121,2535,0,0,0); -- War Staff
INSERT INTO npc_vendor VALUES (16765,2535,0,0,0); -- War Staff

-- Total count: Templates: 9, single 14, sum 23, before: 77

-- ------------
-- Weapons 10
-- 1146,1645,2482,4884,4888,21086
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1146,1645,2482,4884,4888,21086);
UPDATE creature_template SET vendor_id=324 WHERE entry IN (1146,1645,2482,4884,4888,21086);

INSERT INTO npc_vendor_template VALUES (324,2520,0,0,0); -- Broadsword [6/6/26]
INSERT INTO npc_vendor_template VALUES (324,2521,0,0,0); -- Flamberge [6/6/24]
INSERT INTO npc_vendor_template VALUES (324,2522,0,0,0); -- Crescent Axe [6/6/19]
INSERT INTO npc_vendor_template VALUES (324,2523,0,0,0); -- Bullova [6/6/25]
INSERT INTO npc_vendor_template VALUES (324,2524,0,0,0); -- Truncheon [6/6/18]
INSERT INTO npc_vendor_template VALUES (324,2525,0,0,0); -- War Hammer [6/6/24]
INSERT INTO npc_vendor_template VALUES (324,2526,0,0,0); -- Main Gauche [6/6/27]
INSERT INTO npc_vendor_template VALUES (324,2527,0,0,0); -- Battle Staff [6/6/26]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2532,0,0,0 Morning Star [1/6/19]
-- 2533,0,0,0 War Maul [1/6/25]
-- 2535,0,0,0 War Staff [1/6/27]
-- 12163,1,7200,0 Plans: Moonsteel Broadsword [1/6/1]
-- 12164,1,3600,0 Plans: Massive Iron Axe [1/6/2]
-- 12248,1,3600,0 Daring Dirk [2/6/4]
-- 12250,1,3600,0 Midnight Axe [3/6/4]
-- 12251,1,3600,0 Big Stick [2/6/4]
-- 12252,1,43200,0 Staff of Protection [1/6/2]

INSERT INTO npc_vendor VALUES (21086,2532,0,0,0); -- Morning Star
INSERT INTO npc_vendor VALUES (21086,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (21086,2535,0,0,0); -- War Staff
INSERT INTO npc_vendor VALUES (2482,12163,1,7200,0); -- Plans: Moonsteel Broadsword
INSERT INTO npc_vendor VALUES (1146,12164,1,3600,0); -- Plans: Massive Iron Axe
INSERT INTO npc_vendor VALUES (1146,12248,1,3600,0); -- Daring Dirk
INSERT INTO npc_vendor VALUES (4888,12248,1,3600,0); -- Daring Dirk
INSERT INTO npc_vendor VALUES (1146,12250,1,3600,0); -- Midnight Axe
INSERT INTO npc_vendor VALUES (4884,12250,1,3600,0); -- Midnight Axe
INSERT INTO npc_vendor VALUES (4888,12250,1,3600,0); -- Midnight Axe
INSERT INTO npc_vendor VALUES (2482,12251,1,3600,0); -- Big Stick
INSERT INTO npc_vendor VALUES (4884,12251,1,3600,0); -- Big Stick
INSERT INTO npc_vendor VALUES (2482,12252,1,43200,0); -- Staff of Protection

-- Total count: Templates: 8, single 13, sum 21, before: 61

-- ------------
-- Weapons 11
-- 3019,4232,5119
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3019,4232,5119);
UPDATE creature_template SET vendor_id=325 WHERE entry IN (3019,4232,5119);

INSERT INTO npc_vendor_template VALUES (325,853,0,0,0); -- Hatchet [3/3/18]
INSERT INTO npc_vendor_template VALUES (325,926,0,0,0); -- Battle Axe [3/3/14]
INSERT INTO npc_vendor_template VALUES (325,927,0,0,0); -- Double Axe [3/3/14]
INSERT INTO npc_vendor_template VALUES (325,1196,0,0,0); -- Tabar [3/3/18]
INSERT INTO npc_vendor_template VALUES (325,2025,0,0,0); -- Bearded Axe [3/3/15]
INSERT INTO npc_vendor_template VALUES (325,2029,0,0,0); -- Cleaver [3/3/15]
INSERT INTO npc_vendor_template VALUES (325,2522,0,0,0); -- Crescent Axe [3/3/19]
INSERT INTO npc_vendor_template VALUES (325,2523,0,0,0); -- Bullova [3/3/25]
INSERT INTO npc_vendor_template VALUES (325,2530,0,0,0); -- Francisca [3/3/19]
INSERT INTO npc_vendor_template VALUES (325,2531,0,0,0); -- Great Axe [3/3/25]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 12249,1,7200,0 Merciless Axe [2/3/2]

INSERT INTO npc_vendor VALUES (3019,12249,1,7200,0); -- Merciless Axe
INSERT INTO npc_vendor VALUES (4232,12249,1,7200,0); -- Merciless Axe

-- Total count: Templates: 10, single 2, sum 12, before: 32

-- ------------
-- Weapons 12
-- 4569,7231
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4569,7231);
UPDATE creature_template SET vendor_id=326 WHERE entry IN (4569,7231);

INSERT INTO npc_vendor_template VALUES (326,851,0,0,0); -- Cutlass [2/2/20]
INSERT INTO npc_vendor_template VALUES (326,922,0,0,0); -- Dacian Falx [2/2/16]
INSERT INTO npc_vendor_template VALUES (326,923,0,0,0); -- Longsword [2/2/16]
INSERT INTO npc_vendor_template VALUES (326,1198,0,0,0); -- Claymore [2/2/20]
INSERT INTO npc_vendor_template VALUES (326,2024,0,0,0); -- Espadon [2/2/17]
INSERT INTO npc_vendor_template VALUES (326,2027,0,0,0); -- Scimitar [2/2/17]
INSERT INTO npc_vendor_template VALUES (326,2207,0,0,0); -- Jambiya [2/2/20]
INSERT INTO npc_vendor_template VALUES (326,2208,0,0,0); -- Poniard [2/2/17]
INSERT INTO npc_vendor_template VALUES (326,2209,0,0,0); -- Kris [2/2/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2520,0,0,0 Broadsword [1/2/26]
-- 2526,0,0,0 Main Gauche [1/2/27]
-- 2528,0,0,0 Falchion [1/2/26]
-- 15903,0,0,0 Right-Handed Claw [1/2/5]
-- 15904,0,0,0 Right-Handed Blades [1/2/5]
-- 15905,0,0,0 Right-Handed Brass Knuckles [1/2/5]
-- 15906,0,0,0 Left-Handed Brass Knuckles [1/2/5]
-- 15907,0,0,0 Left-Handed Claw [1/2/5]

INSERT INTO npc_vendor VALUES (7231,2520,0,0,0); -- Broadsword
INSERT INTO npc_vendor VALUES (7231,2526,0,0,0); -- Main Gauche
INSERT INTO npc_vendor VALUES (7231,2528,0,0,0); -- Falchion
INSERT INTO npc_vendor VALUES (7231,15903,0,0,0); -- Right-Handed Claw
INSERT INTO npc_vendor VALUES (7231,15904,0,0,0); -- Right-Handed Blades
INSERT INTO npc_vendor VALUES (7231,15905,0,0,0); -- Right-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (7231,15906,0,0,0); -- Left-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (7231,15907,0,0,0); -- Left-Handed Claw

-- Total count: Templates: 9, single 8, sum 17, before: 26

-- ------------
-- Weapons 13
-- 222,2840
-- ------------
DELETE FROM npc_vendor WHERE entry IN (222,2840);
UPDATE creature_template SET vendor_id=327 WHERE entry IN (222,2840);

INSERT INTO npc_vendor_template VALUES (327,852,0,0,0); -- Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (327,1197,0,0,0); -- Giant Mace [2/2/22]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2492,0,0,0 Cudgel [1/2/20]
-- 2493,0,0,0 Wooden Mallet [1/2/20]
-- 4777,0,0,0 Ironwood Maul [1/2/2]
-- 4778,0,0,0 Heavy Spiked Mace [1/2/2]
-- 4778,1,7200,0 Heavy Spiked Mace [1/2/1]

INSERT INTO npc_vendor VALUES (222,2492,0,0,0); -- Cudgel
INSERT INTO npc_vendor VALUES (222,2493,0,0,0); -- Wooden Mallet
INSERT INTO npc_vendor VALUES (222,4777,0,0,0); -- Ironwood Maul
INSERT INTO npc_vendor VALUES (222,4778,0,0,0); -- Heavy Spiked Mace
INSERT INTO npc_vendor VALUES (2840,4778,1,7200,0); -- Heavy Spiked Mace

-- Total count: Templates: 2, single 5, sum 7, before: 9

-- ------------
-- Weapons 14
-- 3409,4601
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3409,4601);
UPDATE creature_template SET vendor_id=328 WHERE entry IN (3409,4601);

INSERT INTO npc_vendor_template VALUES (328,853,0,0,0); -- Hatchet [2/2/18]
INSERT INTO npc_vendor_template VALUES (328,926,0,0,0); -- Battle Axe [2/2/14]
INSERT INTO npc_vendor_template VALUES (328,927,0,0,0); -- Double Axe [2/2/14]
INSERT INTO npc_vendor_template VALUES (328,1196,0,0,0); -- Tabar [2/2/18]
INSERT INTO npc_vendor_template VALUES (328,2025,0,0,0); -- Bearded Axe [2/2/15]
INSERT INTO npc_vendor_template VALUES (328,2029,0,0,0); -- Cleaver [2/2/15]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 854,0,0,0 Quarter Staff [1/2/22]
-- 928,0,0,0 Long Staff [1/2/18]
-- 2030,0,0,0 Gnarled Staff [1/2/19]
-- 2495,0,0,0 Walking Stick [1/2/19]
-- 2507,0,0,0 Laminated Recurve Bow [1/2/23]
-- 2512,0,0,0 Rough Arrow [1/2/94]
-- 2515,0,0,0 Sharp Arrow [1/2/104]
-- 3026,0,0,0 Reinforced Bow [1/2/34]
-- 5439,0,0,0 Small Quiver [1/2/44]
-- 11362,0,0,0 Medium Quiver [1/2/47]
-- 15810,0,0,0 Short Spear [1/2/2]
-- 15811,0,0,0 Heavy Spear [1/2/2]
-- 25861,0,0,0 Crude Throwing Axe [1/2/44]
-- 25872,0,0,0 Balanced Throwing Dagger [1/2/44]
-- 25873,0,0,0 Keen Throwing Knife [1/2/51]
-- 25875,0,0,0 Deadly Throwing Axe [1/2/45]
-- 25876,0,0,0 Gleaming Throwing Axe [1/2/39]

INSERT INTO npc_vendor VALUES (3409,854,0,0,0); -- Quarter Staff
INSERT INTO npc_vendor VALUES (3409,928,0,0,0); -- Long Staff
INSERT INTO npc_vendor VALUES (3409,2030,0,0,0); -- Gnarled Staff
INSERT INTO npc_vendor VALUES (3409,2495,0,0,0); -- Walking Stick
INSERT INTO npc_vendor VALUES (3409,2507,0,0,0); -- Laminated Recurve Bow
INSERT INTO npc_vendor VALUES (3409,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (3409,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (3409,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (3409,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (3409,11362,0,0,0); -- Medium Quiver
INSERT INTO npc_vendor VALUES (4601,15810,0,0,0); -- Short Spear
INSERT INTO npc_vendor VALUES (4601,15811,0,0,0); -- Heavy Spear
INSERT INTO npc_vendor VALUES (3409,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (3409,25872,0,0,0); -- Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (3409,25873,0,0,0); -- Keen Throwing Knife
INSERT INTO npc_vendor VALUES (3409,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (3409,25876,0,0,0); -- Gleaming Throwing Axe

-- Total count: Templates: 6, single 17, sum 23, before: 29

-- ------------
-- Weapons 15
-- 225,1441,3539,4086,11137
-- ------------
DELETE FROM npc_vendor WHERE entry IN (225,1441,3539,4086,11137);
UPDATE creature_template SET vendor_id=329 WHERE entry IN (225,1441,3539,4086,11137);

INSERT INTO npc_vendor_template VALUES (329,922,0,0,0); -- Dacian Falx [5/5/16]
INSERT INTO npc_vendor_template VALUES (329,923,0,0,0); -- Longsword [5/5/16]
INSERT INTO npc_vendor_template VALUES (329,924,0,0,0); -- Maul [5/5/16]
INSERT INTO npc_vendor_template VALUES (329,925,0,0,0); -- Flail [5/5/16]
INSERT INTO npc_vendor_template VALUES (329,926,0,0,0); -- Battle Axe [5/5/14]
INSERT INTO npc_vendor_template VALUES (329,927,0,0,0); -- Double Axe [5/5/14]
INSERT INTO npc_vendor_template VALUES (329,928,0,0,0); -- Long Staff [5/5/18]
INSERT INTO npc_vendor_template VALUES (329,2209,0,0,0); -- Kris [5/5/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2024,0,0,0 Espadon [1/5/17]
-- 2025,0,0,0 Bearded Axe [1/5/15]
-- 2026,0,0,0 Rock Hammer [1/5/17]
-- 2027,0,0,0 Scimitar [1/5/17]
-- 2028,0,0,0 Hammer [1/5/17]
-- 2029,0,0,0 Cleaver [1/5/15]
-- 2030,0,0,0 Gnarled Staff [1/5/19]
-- 2208,0,0,0 Poniard [1/5/17]
-- 2520,0,0,0 Broadsword [1/5/26]
-- 2521,0,0,0 Flamberge [1/5/24]
-- 2522,0,0,0 Crescent Axe [1/5/19]
-- 2523,0,0,0 Bullova [1/5/25]
-- 2524,0,0,0 Truncheon [1/5/18]
-- 2525,0,0,0 War Hammer [1/5/24]
-- 2526,0,0,0 Main Gauche [1/5/27]
-- 2527,0,0,0 Battle Staff [1/5/26]
-- 3277,0,0,0 Executor Staff [1/5/1]
-- 4817,0,0,0 Blessed Claymore [2/5/4]
-- 4817,1,14400,0 Blessed Claymore [1/5/1]
-- 4818,0,0,0 Executioner's Sword [2/5/4]
-- 4818,2,14400,0 Executioner's Sword [1/5/1]
-- 4824,0,0,0 Blurred Axe [1/5/4]
-- 4825,0,0,0 Callous Axe [1/5/4]
-- 4826,0,0,0 Marauder Axe [1/5/4]
-- 4836,1,14400,0 Fireproof Orb [1/5/2]
-- 4837,1,14400,0 Strength of Will [1/5/2]
-- 4838,1,14400,0 Orb of Power [1/5/1]
-- 7561,1,3600,0 Schematic: Goblin Jumper Cables [1/5/4]
-- 12247,0,0,0 Broad Bladed Knife [2/5/2]
-- 12249,1,3600,0 Merciless Axe [2/5/2]

INSERT INTO npc_vendor VALUES (225,2024,0,0,0); -- Espadon
INSERT INTO npc_vendor VALUES (225,2025,0,0,0); -- Bearded Axe
INSERT INTO npc_vendor VALUES (225,2026,0,0,0); -- Rock Hammer
INSERT INTO npc_vendor VALUES (225,2027,0,0,0); -- Scimitar
INSERT INTO npc_vendor VALUES (225,2028,0,0,0); -- Hammer
INSERT INTO npc_vendor VALUES (225,2029,0,0,0); -- Cleaver
INSERT INTO npc_vendor VALUES (225,2030,0,0,0); -- Gnarled Staff
INSERT INTO npc_vendor VALUES (225,2208,0,0,0); -- Poniard
INSERT INTO npc_vendor VALUES (11137,2520,0,0,0); -- Broadsword
INSERT INTO npc_vendor VALUES (11137,2521,0,0,0); -- Flamberge
INSERT INTO npc_vendor VALUES (11137,2522,0,0,0); -- Crescent Axe
INSERT INTO npc_vendor VALUES (11137,2523,0,0,0); -- Bullova
INSERT INTO npc_vendor VALUES (11137,2524,0,0,0); -- Truncheon
INSERT INTO npc_vendor VALUES (11137,2525,0,0,0); -- War Hammer
INSERT INTO npc_vendor VALUES (11137,2526,0,0,0); -- Main Gauche
INSERT INTO npc_vendor VALUES (11137,2527,0,0,0); -- Battle Staff
INSERT INTO npc_vendor VALUES (3539,3277,0,0,0); -- Executor Staff
INSERT INTO npc_vendor VALUES (1441,4817,0,0,0); -- Blessed Claymore
INSERT INTO npc_vendor VALUES (3539,4817,0,0,0); -- Blessed Claymore
INSERT INTO npc_vendor VALUES (4086,4817,1,14400,0); -- Blessed Claymore
INSERT INTO npc_vendor VALUES (1441,4818,0,0,0); -- Executioner's Sword
INSERT INTO npc_vendor VALUES (3539,4818,0,0,0); -- Executioner's Sword
INSERT INTO npc_vendor VALUES (4086,4818,2,14400,0); -- Executioner's Sword
INSERT INTO npc_vendor VALUES (3539,4824,0,0,0); -- Blurred Axe
INSERT INTO npc_vendor VALUES (3539,4825,0,0,0); -- Callous Axe
INSERT INTO npc_vendor VALUES (3539,4826,0,0,0); -- Marauder Axe
INSERT INTO npc_vendor VALUES (4086,4836,1,14400,0); -- Fireproof Orb
INSERT INTO npc_vendor VALUES (4086,4837,1,14400,0); -- Strength of Will
INSERT INTO npc_vendor VALUES (4086,4838,1,14400,0); -- Orb of Power
INSERT INTO npc_vendor VALUES (4086,7561,1,3600,0); -- Schematic: Goblin Jumper Cables
INSERT INTO npc_vendor VALUES (225,12247,0,0,0); -- Broad Bladed Knife
INSERT INTO npc_vendor VALUES (3539,12247,0,0,0); -- Broad Bladed Knife
INSERT INTO npc_vendor VALUES (225,12249,1,3600,0); -- Merciless Axe
INSERT INTO npc_vendor VALUES (3539,12249,1,3600,0); -- Merciless Axe

-- Total count: Templates: 8, single 34, sum 42, before: 74

-- ------------
-- Weapons 16
-- 4557,5103
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4557,5103);
UPDATE creature_template SET vendor_id=330 WHERE entry IN (4557,5103);

INSERT INTO npc_vendor_template VALUES (330,851,0,0,0); -- Cutlass [2/2/20]
INSERT INTO npc_vendor_template VALUES (330,852,0,0,0); -- Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (330,853,0,0,0); -- Hatchet [2/2/18]
INSERT INTO npc_vendor_template VALUES (330,854,0,0,0); -- Quarter Staff [2/2/22]
INSERT INTO npc_vendor_template VALUES (330,1196,0,0,0); -- Tabar [2/2/18]
INSERT INTO npc_vendor_template VALUES (330,1197,0,0,0); -- Giant Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (330,1198,0,0,0); -- Claymore [2/2/20]
INSERT INTO npc_vendor_template VALUES (330,2024,0,0,0); -- Espadon [2/2/17]
INSERT INTO npc_vendor_template VALUES (330,2025,0,0,0); -- Bearded Axe [2/2/15]
INSERT INTO npc_vendor_template VALUES (330,2026,0,0,0); -- Rock Hammer [2/2/17]
INSERT INTO npc_vendor_template VALUES (330,2027,0,0,0); -- Scimitar [2/2/17]
INSERT INTO npc_vendor_template VALUES (330,2028,0,0,0); -- Hammer [2/2/17]
INSERT INTO npc_vendor_template VALUES (330,2029,0,0,0); -- Cleaver [2/2/15]
INSERT INTO npc_vendor_template VALUES (330,2030,0,0,0); -- Gnarled Staff [2/2/19]
INSERT INTO npc_vendor_template VALUES (330,2207,0,0,0); -- Jambiya [2/2/20]
INSERT INTO npc_vendor_template VALUES (330,2208,0,0,0); -- Poniard [2/2/17]

-- Total count: Templates: 16, single 0, sum 16, before: 32

-- ------------
-- Weapons 17
-- 2997,4231
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2997,4231);
UPDATE creature_template SET vendor_id=331 WHERE entry IN (2997,4231);

INSERT INTO npc_vendor_template VALUES (331,851,0,0,0); -- Cutlass [2/2/20]
INSERT INTO npc_vendor_template VALUES (331,852,0,0,0); -- Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (331,853,0,0,0); -- Hatchet [2/2/18]
INSERT INTO npc_vendor_template VALUES (331,854,0,0,0); -- Quarter Staff [2/2/22]
INSERT INTO npc_vendor_template VALUES (331,1194,0,0,0); -- Bastard Sword [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,1196,0,0,0); -- Tabar [2/2/18]
INSERT INTO npc_vendor_template VALUES (331,1197,0,0,0); -- Giant Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (331,1198,0,0,0); -- Claymore [2/2/20]
INSERT INTO npc_vendor_template VALUES (331,2024,0,0,0); -- Espadon [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2025,0,0,0); -- Bearded Axe [2/2/15]
INSERT INTO npc_vendor_template VALUES (331,2026,0,0,0); -- Rock Hammer [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2027,0,0,0); -- Scimitar [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2028,0,0,0); -- Hammer [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2029,0,0,0); -- Cleaver [2/2/15]
INSERT INTO npc_vendor_template VALUES (331,2030,0,0,0); -- Gnarled Staff [2/2/19]
INSERT INTO npc_vendor_template VALUES (331,2130,0,0,0); -- Club [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2131,0,0,0); -- Shortsword [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2132,0,0,0); -- Short Staff [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2134,0,0,0); -- Hand Axe [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2139,0,0,0); -- Dirk [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2207,0,0,0); -- Jambiya [2/2/20]
INSERT INTO npc_vendor_template VALUES (331,2208,0,0,0); -- Poniard [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2479,0,0,0); -- Broad Axe [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2480,0,0,0); -- Large Club [2/2/12]
INSERT INTO npc_vendor_template VALUES (331,2488,0,0,0); -- Gladius [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2489,0,0,0); -- Two-handed Sword [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2490,0,0,0); -- Tomahawk [2/2/18]
INSERT INTO npc_vendor_template VALUES (331,2491,0,0,0); -- Large Axe [2/2/18]
INSERT INTO npc_vendor_template VALUES (331,2492,0,0,0); -- Cudgel [2/2/20]
INSERT INTO npc_vendor_template VALUES (331,2493,0,0,0); -- Wooden Mallet [2/2/20]
INSERT INTO npc_vendor_template VALUES (331,2494,0,0,0); -- Stiletto [2/2/17]
INSERT INTO npc_vendor_template VALUES (331,2495,0,0,0); -- Walking Stick [2/2/19]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2509,0,0,0 Ornate Blunderbuss [1/2/16]
-- 2511,0,0,0 Hunter's Boomstick [1/2/13]
-- 2516,0,0,0 Light Shot [1/2/72]
-- 2519,0,0,0 Heavy Shot [1/2/84]
-- 5441,0,0,0 Small Shot Pouch [1/2/18]

INSERT INTO npc_vendor VALUES (2997,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (2997,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (2997,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (2997,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (2997,5441,0,0,0); -- Small Shot Pouch

-- Total count: Templates: 32, single 5, sum 37, before: 69

-- ------------
-- Weapons 18
-- 3314,3479,3534,3658,4183
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3314,3479,3534,3658,4183);
UPDATE creature_template SET vendor_id=332 WHERE entry IN (3314,3479,3534,3658,4183);

INSERT INTO npc_vendor_template VALUES (332,851,0,0,0); -- Cutlass [5/5/20]
INSERT INTO npc_vendor_template VALUES (332,852,0,0,0); -- Mace [5/5/22]
INSERT INTO npc_vendor_template VALUES (332,853,0,0,0); -- Hatchet [5/5/18]
INSERT INTO npc_vendor_template VALUES (332,854,0,0,0); -- Quarter Staff [5/5/22]
INSERT INTO npc_vendor_template VALUES (332,1196,0,0,0); -- Tabar [5/5/18]
INSERT INTO npc_vendor_template VALUES (332,1197,0,0,0); -- Giant Mace [5/5/22]
INSERT INTO npc_vendor_template VALUES (332,1198,0,0,0); -- Claymore [5/5/20]
INSERT INTO npc_vendor_template VALUES (332,2207,0,0,0); -- Jambiya [5/5/20]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 929,3,7200,0 Healing Potion [1/5/10]
-- 1194,0,0,0 Bastard Sword [1/5/12]
-- 2130,0,0,0 Club [1/5/12]
-- 2131,0,0,0 Shortsword [1/5/12]
-- 2132,0,0,0 Short Staff [1/5/12]
-- 2134,0,0,0 Hand Axe [1/5/12]
-- 2139,0,0,0 Dirk [1/5/12]
-- 2479,0,0,0 Broad Axe [1/5/12]
-- 2480,0,0,0 Large Club [1/5/12]
-- 2488,0,0,0 Gladius [1/5/17]
-- 2489,0,0,0 Two-handed Sword [1/5/17]
-- 2490,0,0,0 Tomahawk [1/5/18]
-- 2491,0,0,0 Large Axe [1/5/18]
-- 2492,0,0,0 Cudgel [1/5/20]
-- 2493,0,0,0 Wooden Mallet [1/5/20]
-- 2494,0,0,0 Stiletto [1/5/17]
-- 2495,0,0,0 Walking Stick [1/5/19]
-- 4765,2,8000,0 Enamelled Broadsword [1/5/2]
-- 4765,2,14400,0 Enamelled Broadsword [1/5/1]
-- 4766,2,8000,0 Feral Blade [1/5/1]
-- 4766,2,14400,0 Feral Blade [1/5/1]
-- 4777,0,0,0 Ironwood Maul [1/5/2]
-- 4777,2,14400,0 Ironwood Maul [1/5/1]
-- 4778,0,0,0 Heavy Spiked Mace [1/5/2]
-- 4778,2,14400,0 Heavy Spiked Mace [1/5/1]
-- 4817,0,0,0 Blessed Claymore [1/5/4]
-- 4818,0,0,0 Executioner's Sword [1/5/4]
-- 11304,0,0,0 Fine Longbow [1/5/5]

INSERT INTO npc_vendor VALUES (3534,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (3314,1194,0,0,0); -- Bastard Sword
INSERT INTO npc_vendor VALUES (3314,2130,0,0,0); -- Club
INSERT INTO npc_vendor VALUES (3314,2131,0,0,0); -- Shortsword
INSERT INTO npc_vendor VALUES (3314,2132,0,0,0); -- Short Staff
INSERT INTO npc_vendor VALUES (3314,2134,0,0,0); -- Hand Axe
INSERT INTO npc_vendor VALUES (3314,2139,0,0,0); -- Dirk
INSERT INTO npc_vendor VALUES (3314,2479,0,0,0); -- Broad Axe
INSERT INTO npc_vendor VALUES (3314,2480,0,0,0); -- Large Club
INSERT INTO npc_vendor VALUES (3314,2488,0,0,0); -- Gladius
INSERT INTO npc_vendor VALUES (3314,2489,0,0,0); -- Two-handed Sword
INSERT INTO npc_vendor VALUES (3314,2490,0,0,0); -- Tomahawk
INSERT INTO npc_vendor VALUES (3314,2491,0,0,0); -- Large Axe
INSERT INTO npc_vendor VALUES (3314,2492,0,0,0); -- Cudgel
INSERT INTO npc_vendor VALUES (3314,2493,0,0,0); -- Wooden Mallet
INSERT INTO npc_vendor VALUES (3314,2494,0,0,0); -- Stiletto
INSERT INTO npc_vendor VALUES (3314,2495,0,0,0); -- Walking Stick
INSERT INTO npc_vendor VALUES (3479,4765,2,8000,0); -- Enamelled Broadsword
INSERT INTO npc_vendor VALUES (3658,4765,2,14400,0); -- Enamelled Broadsword
INSERT INTO npc_vendor VALUES (3479,4766,2,8000,0); -- Feral Blade
INSERT INTO npc_vendor VALUES (3658,4766,2,14400,0); -- Feral Blade
INSERT INTO npc_vendor VALUES (3534,4777,0,0,0); -- Ironwood Maul
INSERT INTO npc_vendor VALUES (3658,4777,2,14400,0); -- Ironwood Maul
INSERT INTO npc_vendor VALUES (3534,4778,0,0,0); -- Heavy Spiked Mace
INSERT INTO npc_vendor VALUES (3658,4778,2,14400,0); -- Heavy Spiked Mace
INSERT INTO npc_vendor VALUES (3534,4817,0,0,0); -- Blessed Claymore
INSERT INTO npc_vendor VALUES (3534,4818,0,0,0); -- Executioner's Sword
INSERT INTO npc_vendor VALUES (3534,11304,0,0,0); -- Fine Longbow

-- Total count: Templates: 8, single 28, sum 36, before: 68

-- ------------
-- Weapons 19
-- 1289,4203
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1289,4203);
UPDATE creature_template SET vendor_id=333 WHERE entry IN (1289,4203);

INSERT INTO npc_vendor_template VALUES (333,851,0,0,0); -- Cutlass [2/2/20]
INSERT INTO npc_vendor_template VALUES (333,852,0,0,0); -- Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (333,853,0,0,0); -- Hatchet [2/2/18]
INSERT INTO npc_vendor_template VALUES (333,854,0,0,0); -- Quarter Staff [2/2/22]
INSERT INTO npc_vendor_template VALUES (333,922,0,0,0); -- Dacian Falx [2/2/16]
INSERT INTO npc_vendor_template VALUES (333,923,0,0,0); -- Longsword [2/2/16]
INSERT INTO npc_vendor_template VALUES (333,924,0,0,0); -- Maul [2/2/16]
INSERT INTO npc_vendor_template VALUES (333,925,0,0,0); -- Flail [2/2/16]
INSERT INTO npc_vendor_template VALUES (333,926,0,0,0); -- Battle Axe [2/2/14]
INSERT INTO npc_vendor_template VALUES (333,927,0,0,0); -- Double Axe [2/2/14]
INSERT INTO npc_vendor_template VALUES (333,928,0,0,0); -- Long Staff [2/2/18]
INSERT INTO npc_vendor_template VALUES (333,1196,0,0,0); -- Tabar [2/2/18]
INSERT INTO npc_vendor_template VALUES (333,1197,0,0,0); -- Giant Mace [2/2/22]
INSERT INTO npc_vendor_template VALUES (333,1198,0,0,0); -- Claymore [2/2/20]
INSERT INTO npc_vendor_template VALUES (333,2024,0,0,0); -- Espadon [2/2/17]
INSERT INTO npc_vendor_template VALUES (333,2025,0,0,0); -- Bearded Axe [2/2/15]
INSERT INTO npc_vendor_template VALUES (333,2026,0,0,0); -- Rock Hammer [2/2/17]
INSERT INTO npc_vendor_template VALUES (333,2027,0,0,0); -- Scimitar [2/2/17]
INSERT INTO npc_vendor_template VALUES (333,2028,0,0,0); -- Hammer [2/2/17]
INSERT INTO npc_vendor_template VALUES (333,2029,0,0,0); -- Cleaver [2/2/15]
INSERT INTO npc_vendor_template VALUES (333,2030,0,0,0); -- Gnarled Staff [2/2/19]
INSERT INTO npc_vendor_template VALUES (333,2207,0,0,0); -- Jambiya [2/2/20]
INSERT INTO npc_vendor_template VALUES (333,2208,0,0,0); -- Poniard [2/2/17]
INSERT INTO npc_vendor_template VALUES (333,2209,0,0,0); -- Kris [2/2/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2507,0,0,0 Laminated Recurve Bow [1/2/23]
-- 2512,0,0,0 Rough Arrow [1/2/94]
-- 2515,0,0,0 Sharp Arrow [1/2/104]
-- 3026,0,0,0 Reinforced Bow [1/2/34]
-- 5439,0,0,0 Small Quiver [1/2/44]
-- 11362,0,0,0 Medium Quiver [1/2/47]
-- 15810,0,0,0 Short Spear [1/2/2]
-- 15811,0,0,0 Heavy Spear [1/2/2]
-- 15903,0,0,0 Right-Handed Claw [1/2/5]
-- 15904,0,0,0 Right-Handed Blades [1/2/5]
-- 15905,0,0,0 Right-Handed Brass Knuckles [1/2/5]
-- 15906,0,0,0 Left-Handed Brass Knuckles [1/2/5]
-- 15907,0,0,0 Left-Handed Claw [1/2/5]
-- 15909,0,0,0 Left-Handed Blades [1/2/4]
-- 25861,0,0,0 Crude Throwing Axe [1/2/44]
-- 25872,0,0,0 Balanced Throwing Dagger [1/2/44]
-- 25873,0,0,0 Keen Throwing Knife [1/2/51]
-- 25875,0,0,0 Deadly Throwing Axe [1/2/45]
-- 25876,0,0,0 Gleaming Throwing Axe [1/2/39]

INSERT INTO npc_vendor VALUES (4203,2507,0,0,0); -- Laminated Recurve Bow
INSERT INTO npc_vendor VALUES (4203,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (4203,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (4203,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (4203,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (4203,11362,0,0,0); -- Medium Quiver
INSERT INTO npc_vendor VALUES (1289,15810,0,0,0); -- Short Spear
INSERT INTO npc_vendor VALUES (1289,15811,0,0,0); -- Heavy Spear
INSERT INTO npc_vendor VALUES (4203,15903,0,0,0); -- Right-Handed Claw
INSERT INTO npc_vendor VALUES (4203,15904,0,0,0); -- Right-Handed Blades
INSERT INTO npc_vendor VALUES (4203,15905,0,0,0); -- Right-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (4203,15906,0,0,0); -- Left-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (4203,15907,0,0,0); -- Left-Handed Claw
INSERT INTO npc_vendor VALUES (4203,15909,0,0,0); -- Left-Handed Blades
INSERT INTO npc_vendor VALUES (4203,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (4203,25872,0,0,0); -- Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (4203,25873,0,0,0); -- Keen Throwing Knife
INSERT INTO npc_vendor VALUES (4203,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (4203,25876,0,0,0); -- Gleaming Throwing Axe

-- Total count: Templates: 24, single 19, sum 43, before: 67
-- ------------
-- Weapons 20
-- 3021,3331,3361,4171,5120,16714
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3021,3331,3361,4171,5120,16714);
UPDATE creature_template SET vendor_id=334 WHERE entry IN (3021,3331,3361,4171,5120,16714);

INSERT INTO npc_vendor_template VALUES (334,851,0,0,0); -- Cutlass [6/6/20]
INSERT INTO npc_vendor_template VALUES (334,922,0,0,0); -- Dacian Falx [6/6/16]
INSERT INTO npc_vendor_template VALUES (334,923,0,0,0); -- Longsword [6/6/16]
INSERT INTO npc_vendor_template VALUES (334,1198,0,0,0); -- Claymore [6/6/20]
INSERT INTO npc_vendor_template VALUES (334,2024,0,0,0); -- Espadon [6/6/17]
INSERT INTO npc_vendor_template VALUES (334,2027,0,0,0); -- Scimitar [6/6/17]
INSERT INTO npc_vendor_template VALUES (334,2207,0,0,0); -- Jambiya [6/6/20]
INSERT INTO npc_vendor_template VALUES (334,2208,0,0,0); -- Poniard [6/6/17]
INSERT INTO npc_vendor_template VALUES (334,2209,0,0,0); -- Kris [6/6/16]
INSERT INTO npc_vendor_template VALUES (334,2520,0,0,0); -- Broadsword [6/6/26]
INSERT INTO npc_vendor_template VALUES (334,2526,0,0,0); -- Main Gauche [6/6/27]
INSERT INTO npc_vendor_template VALUES (334,2528,0,0,0); -- Falchion [6/6/26]
INSERT INTO npc_vendor_template VALUES (334,2534,0,0,0); -- Rondel [6/6/26]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 853,0,0,0 Hatchet [1/6/18]
-- 926,0,0,0 Battle Axe [1/6/14]
-- 927,0,0,0 Double Axe [1/6/14]
-- 1196,0,0,0 Tabar [1/6/18]
-- 2025,0,0,0 Bearded Axe [1/6/15]
-- 2029,0,0,0 Cleaver [1/6/15]
-- 2521,0,0,0 Flamberge [1/6/24]
-- 2529,0,0,0 Zweihander [1/6/24]
-- 15903,0,0,0 Right-Handed Claw [1/6/5]
-- 15904,0,0,0 Right-Handed Blades [1/6/5]
-- 15905,0,0,0 Right-Handed Brass Knuckles [1/6/5]
-- 15906,0,0,0 Left-Handed Brass Knuckles [1/6/5]
-- 15907,0,0,0 Left-Handed Claw [1/6/5]
-- 15909,0,0,0 Left-Handed Blades [1/6/4]
-- 25861,0,0,0 Crude Throwing Axe [1/6/44]
-- 25872,0,0,0 Balanced Throwing Dagger [1/6/44]
-- 25873,0,0,0 Keen Throwing Knife [1/6/51]
-- 25875,0,0,0 Deadly Throwing Axe [1/6/45]
-- 25876,0,0,0 Gleaming Throwing Axe [1/6/39]

INSERT INTO npc_vendor VALUES (16714,853,0,0,0); -- Hatchet
INSERT INTO npc_vendor VALUES (16714,926,0,0,0); -- Battle Axe
INSERT INTO npc_vendor VALUES (16714,927,0,0,0); -- Double Axe
INSERT INTO npc_vendor VALUES (16714,1196,0,0,0); -- Tabar
INSERT INTO npc_vendor VALUES (16714,2025,0,0,0); -- Bearded Axe
INSERT INTO npc_vendor VALUES (16714,2029,0,0,0); -- Cleaver
INSERT INTO npc_vendor VALUES (5120,2521,0,0,0); -- Flamberge
INSERT INTO npc_vendor VALUES (5120,2529,0,0,0); -- Zweihander
INSERT INTO npc_vendor VALUES (3361,15903,0,0,0); -- Right-Handed Claw
INSERT INTO npc_vendor VALUES (3361,15904,0,0,0); -- Right-Handed Blades
INSERT INTO npc_vendor VALUES (3361,15905,0,0,0); -- Right-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (3361,15906,0,0,0); -- Left-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (3361,15907,0,0,0); -- Left-Handed Claw
INSERT INTO npc_vendor VALUES (3361,15909,0,0,0); -- Left-Handed Blades
INSERT INTO npc_vendor VALUES (5120,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (5120,25872,0,0,0); -- Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (5120,25873,0,0,0); -- Keen Throwing Knife
INSERT INTO npc_vendor VALUES (5120,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (5120,25876,0,0,0); -- Gleaming Throwing Axe

-- Total count: Templates: 13, single 19, sum 32, before: 97

-- ------------
-- Weapons 21
-- 4556,5102
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4556,5102);
UPDATE creature_template SET vendor_id=335 WHERE entry IN (4556,5102);

INSERT INTO npc_vendor_template VALUES (335,1194,0,0,0); -- Bastard Sword [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2130,0,0,0); -- Club [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2131,0,0,0); -- Shortsword [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2132,0,0,0); -- Short Staff [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2134,0,0,0); -- Hand Axe [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2139,0,0,0); -- Dirk [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2479,0,0,0); -- Broad Axe [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2480,0,0,0); -- Large Club [2/2/12]
INSERT INTO npc_vendor_template VALUES (335,2488,0,0,0); -- Gladius [2/2/17]
INSERT INTO npc_vendor_template VALUES (335,2489,0,0,0); -- Two-handed Sword [2/2/17]
INSERT INTO npc_vendor_template VALUES (335,2490,0,0,0); -- Tomahawk [2/2/18]
INSERT INTO npc_vendor_template VALUES (335,2491,0,0,0); -- Large Axe [2/2/18]
INSERT INTO npc_vendor_template VALUES (335,2492,0,0,0); -- Cudgel [2/2/20]
INSERT INTO npc_vendor_template VALUES (335,2493,0,0,0); -- Wooden Mallet [2/2/20]
INSERT INTO npc_vendor_template VALUES (335,2494,0,0,0); -- Stiletto [2/2/17]
INSERT INTO npc_vendor_template VALUES (335,2495,0,0,0); -- Walking Stick [2/2/19]

-- Total count: Templates: 16, single 0, sum 16, before: 32

-- ------------
-- Weapons 22 (Crossbow)
-- 1287,4602,7976,16715,16919,17667
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1287,4602,7976,16715,16919,17667);
UPDATE creature_template SET vendor_id=336 WHERE entry IN (1287,4602,7976,16715,16919,17667);

INSERT INTO npc_vendor_template VALUES (336,2101,0,0,0); -- Light Quiver [6/6/8]
INSERT INTO npc_vendor_template VALUES (336,2512,0,0,0); -- Rough Arrow [6/6/94]
INSERT INTO npc_vendor_template VALUES (336,2515,0,0,0); -- Sharp Arrow [6/6/104]
INSERT INTO npc_vendor_template VALUES (336,3030,0,0,0); -- Razor Arrow [6/6/75]
INSERT INTO npc_vendor_template VALUES (336,7371,0,0,0); -- Heavy Quiver [6/6/6]
INSERT INTO npc_vendor_template VALUES (336,11362,0,0,0); -- Medium Quiver [6/6/47]
INSERT INTO npc_vendor_template VALUES (336,15807,0,0,0); -- Light Crossbow [6/6/6]
INSERT INTO npc_vendor_template VALUES (336,15808,0,0,0); -- Fine Light Crossbow [6/6/6]
INSERT INTO npc_vendor_template VALUES (336,15809,0,0,0); -- Heavy Crossbow [6/6/6]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 851,0,0,0 Cutlass [1/6/20]
-- 852,0,0,0 Mace [2/6/22]
-- 853,0,0,0 Hatchet [1/6/18]
-- 854,0,0,0 Quarter Staff [2/6/22]
-- 922,0,0,0 Dacian Falx [1/6/16]
-- 923,0,0,0 Longsword [1/6/16]
-- 924,0,0,0 Maul [2/6/16]
-- 925,0,0,0 Flail [2/6/16]
-- 926,0,0,0 Battle Axe [1/6/14]
-- 927,0,0,0 Double Axe [1/6/14]
-- 928,0,0,0 Long Staff [2/6/18]
-- 1194,0,0,0 Bastard Sword [1/6/12]
-- 1196,0,0,0 Tabar [1/6/18]
-- 1197,0,0,0 Giant Mace [2/6/22]
-- 1198,0,0,0 Claymore [1/6/20]
-- 2024,0,0,0 Espadon [1/6/17]
-- 2025,0,0,0 Bearded Axe [1/6/15]
-- 2026,0,0,0 Rock Hammer [2/6/17]
-- 2027,0,0,0 Scimitar [1/6/17]
-- 2028,0,0,0 Hammer [2/6/17]
-- 2029,0,0,0 Cleaver [1/6/15]
-- 2030,0,0,0 Gnarled Staff [2/6/19]
-- 2130,0,0,0 Club [1/6/12]
-- 2131,0,0,0 Shortsword [1/6/12]
-- 2132,0,0,0 Short Staff [1/6/12]
-- 2134,0,0,0 Hand Axe [1/6/12]
-- 2139,0,0,0 Dirk [1/6/12]
-- 2207,0,0,0 Jambiya [1/6/20]
-- 2208,0,0,0 Poniard [1/6/17]
-- 2209,0,0,0 Kris [1/6/16]
-- 2479,0,0,0 Broad Axe [1/6/12]
-- 2480,0,0,0 Large Club [1/6/12]
-- 2504,0,0,0 Worn Shortbow [2/6/10]
-- 2505,0,0,0 Polished Shortbow [2/6/10]
-- 2506,0,0,0 Hornwood Recurve Bow [2/6/15]
-- 2507,0,0,0 Laminated Recurve Bow [2/6/23]
-- 2509,0,0,0 Ornate Blunderbuss [1/6/16]
-- 2511,0,0,0 Hunter's Boomstick [1/6/13]
-- 2516,0,0,0 Light Shot [1/6/72]
-- 2519,0,0,0 Heavy Shot [1/6/84]
-- 2521,0,0,0 Flamberge [1/6/24]
-- 2523,0,0,0 Bullova [1/6/25]
-- 2525,0,0,0 War Hammer [1/6/24]
-- 2529,0,0,0 Zweihander [1/6/24]
-- 2531,0,0,0 Great Axe [1/6/25]
-- 2533,0,0,0 War Maul [1/6/25]
-- 3026,0,0,0 Reinforced Bow [2/6/34]
-- 3027,0,0,0 Heavy Recurve Bow [2/6/26]
-- 5439,0,0,0 Small Quiver [3/6/44]
-- 5441,0,0,0 Small Shot Pouch [1/6/18]
-- 11285,0,0,0 Jagged Arrow [1/6/100]
-- 15903,0,0,0 Right-Handed Claw [1/6/5]
-- 15904,0,0,0 Right-Handed Blades [1/6/5]
-- 15905,0,0,0 Right-Handed Brass Knuckles [1/6/5]
-- 15906,0,0,0 Left-Handed Brass Knuckles [1/6/5]
-- 15907,0,0,0 Left-Handed Claw [1/6/5]
-- 15909,0,0,0 Left-Handed Blades [1/6/4]
-- 28053,0,0,0 Wicked Arrow [1/6/100]

INSERT INTO npc_vendor VALUES (1287,851,0,0,0); -- Cutlass
INSERT INTO npc_vendor VALUES (1287,852,0,0,0); -- Mace
INSERT INTO npc_vendor VALUES (4602,852,0,0,0); -- Mace
INSERT INTO npc_vendor VALUES (1287,853,0,0,0); -- Hatchet
INSERT INTO npc_vendor VALUES (1287,854,0,0,0); -- Quarter Staff
INSERT INTO npc_vendor VALUES (4602,854,0,0,0); -- Quarter Staff
INSERT INTO npc_vendor VALUES (1287,922,0,0,0); -- Dacian Falx
INSERT INTO npc_vendor VALUES (1287,923,0,0,0); -- Longsword
INSERT INTO npc_vendor VALUES (1287,924,0,0,0); -- Maul
INSERT INTO npc_vendor VALUES (4602,924,0,0,0); -- Maul
INSERT INTO npc_vendor VALUES (1287,925,0,0,0); -- Flail
INSERT INTO npc_vendor VALUES (4602,925,0,0,0); -- Flail
INSERT INTO npc_vendor VALUES (1287,926,0,0,0); -- Battle Axe
INSERT INTO npc_vendor VALUES (1287,927,0,0,0); -- Double Axe
INSERT INTO npc_vendor VALUES (1287,928,0,0,0); -- Long Staff
INSERT INTO npc_vendor VALUES (4602,928,0,0,0); -- Long Staff
INSERT INTO npc_vendor VALUES (16919,1194,0,0,0); -- Bastard Sword
INSERT INTO npc_vendor VALUES (1287,1196,0,0,0); -- Tabar
INSERT INTO npc_vendor VALUES (1287,1197,0,0,0); -- Giant Mace
INSERT INTO npc_vendor VALUES (4602,1197,0,0,0); -- Giant Mace
INSERT INTO npc_vendor VALUES (1287,1198,0,0,0); -- Claymore
INSERT INTO npc_vendor VALUES (1287,2024,0,0,0); -- Espadon
INSERT INTO npc_vendor VALUES (1287,2025,0,0,0); -- Bearded Axe
INSERT INTO npc_vendor VALUES (1287,2026,0,0,0); -- Rock Hammer
INSERT INTO npc_vendor VALUES (4602,2026,0,0,0); -- Rock Hammer
INSERT INTO npc_vendor VALUES (1287,2027,0,0,0); -- Scimitar
INSERT INTO npc_vendor VALUES (1287,2028,0,0,0); -- Hammer
INSERT INTO npc_vendor VALUES (4602,2028,0,0,0); -- Hammer
INSERT INTO npc_vendor VALUES (1287,2029,0,0,0); -- Cleaver
INSERT INTO npc_vendor VALUES (1287,2030,0,0,0); -- Gnarled Staff
INSERT INTO npc_vendor VALUES (4602,2030,0,0,0); -- Gnarled Staff
INSERT INTO npc_vendor VALUES (16919,2130,0,0,0); -- Club
INSERT INTO npc_vendor VALUES (16919,2131,0,0,0); -- Shortsword
INSERT INTO npc_vendor VALUES (16919,2132,0,0,0); -- Short Staff
INSERT INTO npc_vendor VALUES (16919,2134,0,0,0); -- Hand Axe
INSERT INTO npc_vendor VALUES (16919,2139,0,0,0); -- Dirk
INSERT INTO npc_vendor VALUES (1287,2207,0,0,0); -- Jambiya
INSERT INTO npc_vendor VALUES (1287,2208,0,0,0); -- Poniard
INSERT INTO npc_vendor VALUES (1287,2209,0,0,0); -- Kris
INSERT INTO npc_vendor VALUES (16919,2479,0,0,0); -- Broad Axe
INSERT INTO npc_vendor VALUES (16919,2480,0,0,0); -- Large Club
INSERT INTO npc_vendor VALUES (16715,2504,0,0,0); -- Worn Shortbow
INSERT INTO npc_vendor VALUES (17667,2504,0,0,0); -- Worn Shortbow
INSERT INTO npc_vendor VALUES (16715,2505,0,0,0); -- Polished Shortbow
INSERT INTO npc_vendor VALUES (17667,2505,0,0,0); -- Polished Shortbow
INSERT INTO npc_vendor VALUES (16715,2506,0,0,0); -- Hornwood Recurve Bow
INSERT INTO npc_vendor VALUES (17667,2506,0,0,0); -- Hornwood Recurve Bow
INSERT INTO npc_vendor VALUES (16715,2507,0,0,0); -- Laminated Recurve Bow
INSERT INTO npc_vendor VALUES (17667,2507,0,0,0); -- Laminated Recurve Bow
INSERT INTO npc_vendor VALUES (7976,2509,0,0,0); -- Ornate Blunderbuss
INSERT INTO npc_vendor VALUES (7976,2511,0,0,0); -- Hunter's Boomstick
INSERT INTO npc_vendor VALUES (7976,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (7976,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (7976,2521,0,0,0); -- Flamberge
INSERT INTO npc_vendor VALUES (7976,2523,0,0,0); -- Bullova
INSERT INTO npc_vendor VALUES (7976,2525,0,0,0); -- War Hammer
INSERT INTO npc_vendor VALUES (7976,2529,0,0,0); -- Zweihander
INSERT INTO npc_vendor VALUES (7976,2531,0,0,0); -- Great Axe
INSERT INTO npc_vendor VALUES (7976,2533,0,0,0); -- War Maul
INSERT INTO npc_vendor VALUES (16715,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (17667,3026,0,0,0); -- Reinforced Bow
INSERT INTO npc_vendor VALUES (16715,3027,0,0,0); -- Heavy Recurve Bow
INSERT INTO npc_vendor VALUES (17667,3027,0,0,0); -- Heavy Recurve Bow
INSERT INTO npc_vendor VALUES (16715,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (16919,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (17667,5439,0,0,0); -- Small Quiver
INSERT INTO npc_vendor VALUES (7976,5441,0,0,0); -- Small Shot Pouch
INSERT INTO npc_vendor VALUES (16919,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (7976,15903,0,0,0); -- Right-Handed Claw
INSERT INTO npc_vendor VALUES (7976,15904,0,0,0); -- Right-Handed Blades
INSERT INTO npc_vendor VALUES (7976,15905,0,0,0); -- Right-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (7976,15906,0,0,0); -- Left-Handed Brass Knuckles
INSERT INTO npc_vendor VALUES (7976,15907,0,0,0); -- Left-Handed Claw
INSERT INTO npc_vendor VALUES (7976,15909,0,0,0); -- Left-Handed Blades
INSERT INTO npc_vendor VALUES (16919,28053,0,0,0); -- Wicked Arrow

-- Total count: Templates: 9, single 75, sum 84, before: 129

-- ------------
-- Wolf Trainer
-- 2942,4207
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2942,4207);
UPDATE creature_template SET vendor_id=445 WHERE entry IN (2942,4207);

INSERT INTO npc_vendor_template VALUES (445,2549,0,0,0); -- Staff of the Shade [2/2/2]
INSERT INTO npc_vendor_template VALUES (445,2679,0,0,0); -- Charred Wolf Meat [2/2/2]
INSERT INTO npc_vendor_template VALUES (445,2680,0,0,0); -- Spiced Wolf Meat [2/2/2]
INSERT INTO npc_vendor_template VALUES (445,15853,0,0,0); -- Windreaper [2/2/2]
INSERT INTO npc_vendor_template VALUES (445,15856,0,0,0); -- Archlight Talisman [2/2/2]
INSERT INTO npc_vendor_template VALUES (445,18045,0,0,0); -- Tender Wolf Steak [2/2/2]

-- Total count: Templates: 6, single 0, sum 6, before: 12

-- ------------
-- Mining Supplies
-- 372,790,3002,3358,3578,4256,4599,5514,6298,11186,16664,16751,20981
-- ------------
DELETE FROM npc_vendor WHERE entry IN (372,790,3002,3358,3578,4256,4599,5514,6298,11186,16664,16751,20981);
UPDATE creature_template SET vendor_id=115 WHERE entry IN (372,790,3002,3358,3578,4256,4599,5514,6298,11186,16664,16751,20981);

INSERT INTO npc_vendor_template VALUES (115,2880,0,0,0); -- Weak Flux [13/13/156]
INSERT INTO npc_vendor_template VALUES (115,2901,0,0,0); -- Mining Pick [13/13/157]
INSERT INTO npc_vendor_template VALUES (115,3466,0,0,0); -- Strong Flux [13/13/134]
INSERT INTO npc_vendor_template VALUES (115,3857,0,0,0); -- Coal [13/13/99]
INSERT INTO npc_vendor_template VALUES (115,20815,0,0,0); -- Jeweler's Kit [13/13/28]
INSERT INTO npc_vendor_template VALUES (115,20824,0,0,0); -- Simple Grinder [13/13/28]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 5956,0,0,0 Blacksmith Hammer [1/13/144]
-- 18567,0,0,0 Elemental Flux [1/13/41]
-- 22572,3,43200,0 Mote of Air [1/13/2]
-- 22573,3,43200,0 Mote of Earth [1/13/2]
-- 22574,3,43200,0 Mote of Fire [1/13/2]
-- 22575,3,43200,0 Mote of Life [1/13/2]
-- 22576,3,43200,0 Mote of Mana [1/13/2]
-- 22577,3,43200,0 Mote of Shadow [1/13/2]
-- 22578,3,43200,0 Mote of Water [1/13/2]
-- 23781,4,43200,0 Elemental Blasting Powder [1/13/1]
-- 23783,4,43200,0 Handful of Fel Iron Bolts [1/13/1]
-- 23784,2,43200,0 Adamantite Frame [1/13/1]
-- 23785,1,43200,0 Hardened Adamantite Tube [1/13/1]

INSERT INTO npc_vendor VALUES (790,5956,0,0,0); -- Blacksmith Hammer
INSERT INTO npc_vendor VALUES (790,18567,0,0,0); -- Elemental Flux
INSERT INTO npc_vendor VALUES (20981,22572,3,43200,0); -- Mote of Air
INSERT INTO npc_vendor VALUES (20981,22573,3,43200,0); -- Mote of Earth
INSERT INTO npc_vendor VALUES (20981,22574,3,43200,0); -- Mote of Fire
INSERT INTO npc_vendor VALUES (20981,22575,3,43200,0); -- Mote of Life
INSERT INTO npc_vendor VALUES (20981,22576,3,43200,0); -- Mote of Mana
INSERT INTO npc_vendor VALUES (20981,22577,3,43200,0); -- Mote of Shadow
INSERT INTO npc_vendor VALUES (20981,22578,3,43200,0); -- Mote of Water
INSERT INTO npc_vendor VALUES (20981,23781,4,43200,0); -- Elemental Blasting Powder
INSERT INTO npc_vendor VALUES (20981,23783,4,43200,0); -- Handful of Fel Iron Bolts
INSERT INTO npc_vendor VALUES (20981,23784,2,43200,0); -- Adamantite Frame
INSERT INTO npc_vendor VALUES (20981,23785,1,43200,0); -- Hardened Adamantite Tube

-- Total count: Templates: 6, single 13, sum 19, before: 91

-- ------------
-- Blacksmithing Supplies
-- I found no significant gains from splitting. (16670,16713,19662 could be separated -> Total 76 vs 78 rows)
-- 1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23724
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23724);
UPDATE creature_template SET vendor_id=116 WHERE entry IN (1690,2844,2847,2999,3343,3356,3477,4257,4259,4597,5411,5512,6300,8161,8176,9179,14737,15176,15400,16376,16583,16670,16713,16823,17245,17655,19011,19012,19056,19342,19520,19530,19662,19879,20082,20463,22264,22476,23724);

INSERT INTO npc_vendor_template VALUES (116,2880,0,0,0); -- Weak Flux [39/39/156]
INSERT INTO npc_vendor_template VALUES (116,2901,0,0,0); -- Mining Pick [39/39/157]
INSERT INTO npc_vendor_template VALUES (116,3466,0,0,0); -- Strong Flux [39/39/134]
INSERT INTO npc_vendor_template VALUES (116,3857,0,0,0); -- Coal [39/39/99]
INSERT INTO npc_vendor_template VALUES (116,5956,0,0,0); -- Blacksmith Hammer [39/39/144]
INSERT INTO npc_vendor_template VALUES (116,18567,0,0,0); -- Elemental Flux [39/39/41]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6047,1,7200,0 Plans: Golden Scale Coif [1/39/1]
-- 7995,0,0,0 Plans: Mithril Scale Bracers [2/39/2]
-- 10858,1,36600,0 Plans: Solid Iron Maul [1/39/1]
-- 12162,1,3600,0 Plans: Hardened Iron Shortsword [1/39/2]
-- 12162,1,7200,0 Plans: Hardened Iron Shortsword [1/39/1]
-- 22209,0,0,0 Plans: Heavy Obsidian Belt [1/39/1]
-- 22214,0,0,0 Plans: Light Obsidian Belt [1/39/1]
-- 22766,0,0,0 Plans: Ironvine Breastplate [1/39/1]
-- 22767,0,0,0 Plans: Ironvine Gloves [1/39/1]
-- 22768,0,0,0 Plans: Ironvine Belt [1/39/1]
-- 23590,1,43200,0 Plans: Adamantite Maul [3/39/3]
-- 23591,1,43200,0 Plans: Adamantite Cleaver [3/39/3]
-- 23592,1,43200,0 Plans: Adamantite Dagger [3/39/3]
-- 23593,1,43200,0 Plans: Adamantite Rapier [3/39/3]
-- 23594,1,43200,0 Plans: Adamantite Plate Bracers [1/39/2]
-- 23595,1,43200,0 Plans: Adamantite Plate Gloves [1/39/2]
-- 23596,1,43200,0 Plans: Adamantite Breastplate [1/39/2]
-- 23638,0,0,0 Plans: Lesser Ward of Shielding [1/39/1]
-- 25846,1,43200,0 Plans: Adamantite Rod [1/39/1]
-- 25847,0,0,0 Plans: Eternium Rod [1/39/1]
-- 30765,0,0,0 Heavy Draenic Breastplate [2/39/6]
-- 30771,0,0,0 Heavy Draenic Bracers [2/39/6]
-- 30775,0,0,0 Layered Bone Shield [2/39/6]
-- 30777,0,0,0 Aldor Heavy Belt [2/39/6]
-- 30781,0,0,0 Mag'hari Chain Vest [2/39/6]
-- 30784,0,0,0 Worn Mag'hari Gauntlets [2/39/6]

INSERT INTO npc_vendor VALUES (5411,6047,1,7200,0); -- Plans: Golden Scale Coif
INSERT INTO npc_vendor VALUES (8161,7995,0,0,0); -- Plans: Mithril Scale Bracers
INSERT INTO npc_vendor VALUES (8176,7995,0,0,0); -- Plans: Mithril Scale Bracers
INSERT INTO npc_vendor VALUES (9179,10858,1,36600,0); -- Plans: Solid Iron Maul
INSERT INTO npc_vendor VALUES (5512,12162,1,3600,0); -- Plans: Hardened Iron Shortsword
INSERT INTO npc_vendor VALUES (3356,12162,1,7200,0); -- Plans: Hardened Iron Shortsword
INSERT INTO npc_vendor VALUES (15176,22209,0,0,0); -- Plans: Heavy Obsidian Belt
INSERT INTO npc_vendor VALUES (15176,22214,0,0,0); -- Plans: Light Obsidian Belt
INSERT INTO npc_vendor VALUES (15176,22766,0,0,0); -- Plans: Ironvine Breastplate
INSERT INTO npc_vendor VALUES (15176,22767,0,0,0); -- Plans: Ironvine Gloves
INSERT INTO npc_vendor VALUES (15176,22768,0,0,0); -- Plans: Ironvine Belt
INSERT INTO npc_vendor VALUES (16670,23590,1,43200,0); -- Plans: Adamantite Maul
INSERT INTO npc_vendor VALUES (16713,23590,1,43200,0); -- Plans: Adamantite Maul
INSERT INTO npc_vendor VALUES (19662,23590,1,43200,0); -- Plans: Adamantite Maul
INSERT INTO npc_vendor VALUES (16670,23591,1,43200,0); -- Plans: Adamantite Cleaver
INSERT INTO npc_vendor VALUES (16713,23591,1,43200,0); -- Plans: Adamantite Cleaver
INSERT INTO npc_vendor VALUES (19662,23591,1,43200,0); -- Plans: Adamantite Cleaver
INSERT INTO npc_vendor VALUES (16670,23592,1,43200,0); -- Plans: Adamantite Dagger
INSERT INTO npc_vendor VALUES (16713,23592,1,43200,0); -- Plans: Adamantite Dagger
INSERT INTO npc_vendor VALUES (19662,23592,1,43200,0); -- Plans: Adamantite Dagger
INSERT INTO npc_vendor VALUES (16670,23593,1,43200,0); -- Plans: Adamantite Rapier
INSERT INTO npc_vendor VALUES (16713,23593,1,43200,0); -- Plans: Adamantite Rapier
INSERT INTO npc_vendor VALUES (19662,23593,1,43200,0); -- Plans: Adamantite Rapier
INSERT INTO npc_vendor VALUES (19342,23594,1,43200,0); -- Plans: Adamantite Plate Bracers
INSERT INTO npc_vendor VALUES (19342,23595,1,43200,0); -- Plans: Adamantite Plate Gloves
INSERT INTO npc_vendor VALUES (19342,23596,1,43200,0); -- Plans: Adamantite Breastplate
INSERT INTO npc_vendor VALUES (16583,23638,0,0,0); -- Plans: Lesser Ward of Shielding
INSERT INTO npc_vendor VALUES (19662,25846,1,43200,0); -- Plans: Adamantite Rod
INSERT INTO npc_vendor VALUES (16583,25847,0,0,0); -- Plans: Eternium Rod
INSERT INTO npc_vendor VALUES (19011,30765,0,0,0); -- Heavy Draenic Breastplate
INSERT INTO npc_vendor VALUES (19012,30765,0,0,0); -- Heavy Draenic Breastplate
INSERT INTO npc_vendor VALUES (19011,30771,0,0,0); -- Heavy Draenic Bracers
INSERT INTO npc_vendor VALUES (19012,30771,0,0,0); -- Heavy Draenic Bracers
INSERT INTO npc_vendor VALUES (19011,30775,0,0,0); -- Layered Bone Shield
INSERT INTO npc_vendor VALUES (19012,30775,0,0,0); -- Layered Bone Shield
INSERT INTO npc_vendor VALUES (19011,30777,0,0,0); -- Aldor Heavy Belt
INSERT INTO npc_vendor VALUES (19012,30777,0,0,0); -- Aldor Heavy Belt
INSERT INTO npc_vendor VALUES (19011,30781,0,0,0); -- Mag'hari Chain Vest
INSERT INTO npc_vendor VALUES (19012,30781,0,0,0); -- Mag'hari Chain Vest
INSERT INTO npc_vendor VALUES (19011,30784,0,0,0); -- Worn Mag'hari Gauntlets
INSERT INTO npc_vendor VALUES (19012,30784,0,0,0); -- Worn Mag'hari Gauntlets

-- Total count: Templates: 6, single 41, sum 47, before: 275

-- ------------
-- Fruit 1
-- 894,1671,3017,3342,7978
-- ------------
DELETE FROM npc_vendor WHERE entry IN (894,1671,3017,3342,7978);
UPDATE creature_template SET vendor_id=446 WHERE entry IN (894,1671,3017,3342,7978);

INSERT INTO npc_vendor_template VALUES (446,4536,0,0,0); -- Shiny Red Apple [5/5/22]
INSERT INTO npc_vendor_template VALUES (446,4537,0,0,0); -- Tel'Abim Banana [5/5/21]
INSERT INTO npc_vendor_template VALUES (446,4538,0,0,0); -- Snapvine Watermelon [5/5/25]
INSERT INTO npc_vendor_template VALUES (446,4539,0,0,0); -- Goldenbark Apple [5/5/25]
INSERT INTO npc_vendor_template VALUES (446,4602,0,0,0); -- Moon Harvest Pumpkin [5/5/24]
INSERT INTO npc_vendor_template VALUES (446,8953,0,0,0); -- Deep Fried Plantains [5/5/41]

-- Total count: Templates: 6, single 0, sum 6, before: 30

-- ------------
-- Bread 1
-- 233,1670,3003,3291,3480,3518,3948,5109,23522,23603
-- ------------
DELETE FROM npc_vendor WHERE entry IN (233,1670,3003,3291,3480,3518,3948,5109,23522,23603);
UPDATE creature_template SET vendor_id=447 WHERE entry IN (233,1670,3003,3291,3480,3518,3948,5109,23522,23603);

INSERT INTO npc_vendor_template VALUES (447,4540,0,0,0); -- Tough Hunk of Bread [10/10/61]
INSERT INTO npc_vendor_template VALUES (447,4541,0,0,0); -- Freshly Baked Bread [10/10/51]
INSERT INTO npc_vendor_template VALUES (447,4542,0,0,0); -- Moist Cornbread [10/10/51]
INSERT INTO npc_vendor_template VALUES (447,4544,0,0,0); -- Mulgore Spice Bread [10/10/51]
INSERT INTO npc_vendor_template VALUES (447,4601,0,0,0); -- Soft Banana Bread [10/10/51]
INSERT INTO npc_vendor_template VALUES (447,8950,0,0,0); -- Homemade Cherry Pie [10/10/66]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 11109,0,0,0 Special Chicken Feed [1/10/1]
-- 27855,0,0,0 Mag'har Grainbread [2/10/16]
-- 29449,0,0,0 Bladespire Bagel [2/10/17]
-- 33043,0,0,0 The Essential Brewfest Pretzel [2/10/2]

INSERT INTO npc_vendor VALUES (233,11109,0,0,0); -- Special Chicken Feed
INSERT INTO npc_vendor VALUES (23522,27855,0,0,0); -- Mag'har Grainbread
INSERT INTO npc_vendor VALUES (23603,27855,0,0,0); -- Mag'har Grainbread
INSERT INTO npc_vendor VALUES (23522,29449,0,0,0); -- Bladespire Bagel
INSERT INTO npc_vendor VALUES (23603,29449,0,0,0); -- Bladespire Bagel
INSERT INTO npc_vendor VALUES (23522,33043,0,0,0); -- The Essential Brewfest Pretzel
INSERT INTO npc_vendor VALUES (23603,33043,0,0,0); -- The Essential Brewfest Pretzel

-- Total count: Templates: 6, single 7, sum 13, before: 67

-- ------------
-- Mushrooms 1
-- 3138,3329,3544,3547,5886,12384
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3138,3329,3544,3547,5886,12384);
UPDATE creature_template SET vendor_id=448 WHERE entry IN (3138,3329,3544,3547,5886,12384);

INSERT INTO npc_vendor_template VALUES (448,4604,0,0,0); -- Forest Mushroom Cap [6/6/18]
INSERT INTO npc_vendor_template VALUES (448,4605,0,0,0); -- Red-speckled Mushroom [6/6/18]
INSERT INTO npc_vendor_template VALUES (448,4606,0,0,0); -- Spongy Morel [6/6/21]
INSERT INTO npc_vendor_template VALUES (448,4607,0,0,0); -- Delicious Cave Mold [6/6/21]
INSERT INTO npc_vendor_template VALUES (448,4608,0,0,0); -- Raw Black Truffle [6/6/21]
INSERT INTO npc_vendor_template VALUES (448,8948,0,0,0); -- Dried King Bolete [6/6/27]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 15902,1,3600,0 A Crazy Grab Bag [1/6/1]

INSERT INTO npc_vendor VALUES (12384,15902,1,3600,0); -- A Crazy Grab Bag

-- Total count: Templates: 6, single 1, sum 7, before: 37

-- ------------
-- Fishing 1
-- Needs more love - 3029,3550,5494,5940,8508 could be split
-- 2626,3029,3333,3550,3572,4222,5494,5940,5942,7945,8508,10118,12031,12962,14740,16708,17101,18018,18347,18911,19472
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2626,3029,3333,3550,3572,4222,5494,5940,5942,7945,8508,10118,12031,12962,14740,16708,17101,18018,18347,18911,19472);
UPDATE creature_template SET vendor_id=117 WHERE entry IN (2626,3029,3333,3550,3572,4222,5494,5940,5942,7945,8508,10118,12031,12962,14740,16708,17101,18018,18347,18911,19472);

INSERT INTO npc_vendor_template VALUES (117,6256,0,0,0); -- Fishing Pole [21/21/87]
INSERT INTO npc_vendor_template VALUES (117,6529,0,0,0); -- Shiny Bauble [21/21/57]
INSERT INTO npc_vendor_template VALUES (117,6530,0,0,0); -- Nightcrawlers [21/21/84]
INSERT INTO npc_vendor_template VALUES (117,6532,0,0,0); -- Bright Baubles [21/21/96]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 787,0,0,0 Slitherskin Mackerel [1/21/30]
-- 4592,0,0,0 Longjaw Mud Snapper [1/21/30]
-- 4593,0,0,0 Bristle Whisker Catfish [1/21/31]
-- 4594,0,0,0 Rockscale Cod [1/21/30]
-- 6325,0,0,0 Recipe: Brilliant Smallfish [5/21/9]
-- 6326,0,0,0 Recipe: Slitherskin Mackerel [3/21/5]
-- 6328,0,0,0 Recipe: Longjaw Mud Snapper [1/21/8]
-- 6330,0,0,0 Recipe: Bristle Whisker Catfish [2/21/7]
-- 6365,0,0,0 Strong Fishing Pole [5/21/12]
-- 6365,1,7200,0 Strong Fishing Pole [3/21/3]
-- 6365,1,14400,0 Strong Fishing Pole [1/21/1]
-- 6365,1,43200,0 Strong Fishing Pole [6/21/6]
-- 6368,0,0,0 Recipe: Rainbow Fin Albacore [4/21/10]
-- 6369,0,0,0 Recipe: Rockscale Cod [2/21/9]
-- 6533,1,7200,0 Aquadynamic Fish Attractor [3/21/3]
-- 6533,2,7200,0 Aquadynamic Fish Attractor [3/21/3]
-- 6533,2,43200,0 Aquadynamic Fish Attractor [11/21/18]
-- 6565,1,7200,0 Shimmering Gloves [1/21/1]
-- 8957,0,0,0 Spinefin Halibut [2/21/35]
-- 16083,0,0,0 Expert Fishing - The Bass and You [1/21/1]
-- 17062,0,0,0 Recipe: Mithril Head Trout [2/21/9]
-- 21552,0,0,0 Striped Yellowtail [1/21/14]
-- 27532,0,0,0 Master Fishing - The Art of Angling [1/21/1]
-- 27696,0,0,0 Recipe: Blackened Sporefish [1/21/1]
-- 27858,0,0,0 Sunspring Carp [1/21/6]
-- 29452,0,0,0 Zangar Trout [1/21/6]

INSERT INTO npc_vendor VALUES (12962,787,0,0,0); -- Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (12962,4592,0,0,0); -- Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (12962,4593,0,0,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (12962,4594,0,0,0); -- Rockscale Cod
INSERT INTO npc_vendor VALUES (3029,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (3550,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (5494,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (5940,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (8508,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (3550,6326,0,0,0); -- Recipe: Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (5942,6326,0,0,0); -- Recipe: Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (10118,6326,0,0,0); -- Recipe: Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (5940,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (3029,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (5494,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (4222,6365,0,0,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (5494,6365,0,0,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (7945,6365,0,0,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (8508,6365,0,0,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (10118,6365,0,0,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (3029,6365,1,7200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (5940,6365,1,7200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (12031,6365,1,7200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (12962,6365,1,14400,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (14740,6365,1,43200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (16708,6365,1,43200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (17101,6365,1,43200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (18018,6365,1,43200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (18347,6365,1,43200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (19472,6365,1,43200,0); -- Strong Fishing Pole
INSERT INTO npc_vendor VALUES (3333,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (5494,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (5942,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (10118,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (3333,6369,0,0,0); -- Recipe: Rockscale Cod
INSERT INTO npc_vendor VALUES (12962,6369,0,0,0); -- Recipe: Rockscale Cod
INSERT INTO npc_vendor VALUES (3333,6533,1,7200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (12031,6533,1,7200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (14740,6533,1,7200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (3572,6533,2,7200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (5940,6533,2,7200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (12962,6533,2,7200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (4222,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (5494,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (7945,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (8508,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (10118,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (16708,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (17101,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (18018,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (18347,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (18911,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (19472,6533,2,43200,0); -- Aquadynamic Fish Attractor
INSERT INTO npc_vendor VALUES (3572,6565,1,7200,0); -- Shimmering Gloves
INSERT INTO npc_vendor VALUES (12962,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (19472,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (2626,16083,0,0,0); -- Expert Fishing - The Bass and You
INSERT INTO npc_vendor VALUES (3333,17062,0,0,0); -- Recipe: Mithril Head Trout
INSERT INTO npc_vendor VALUES (12962,17062,0,0,0); -- Recipe: Mithril Head Trout
INSERT INTO npc_vendor VALUES (12962,21552,0,0,0); -- Striped Yellowtail
INSERT INTO npc_vendor VALUES (18911,27532,0,0,0); -- Master Fishing - The Art of Angling
INSERT INTO npc_vendor VALUES (18911,27696,0,0,0); -- Recipe: Blackened Sporefish
INSERT INTO npc_vendor VALUES (19472,27858,0,0,0); -- Sunspring Carp
INSERT INTO npc_vendor VALUES (19472,29452,0,0,0); -- Zangar Trout

-- Total count: Templates: 4, single 64, sum 68, before: 148

-- ------------
-- Fishing 2
-- 2383,3178,4574,5162
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2383,3178,4574,5162);
UPDATE creature_template SET vendor_id=118 WHERE entry IN (2383,3178,4574,5162);

INSERT INTO npc_vendor_template VALUES (118,6256,0,0,0); -- Fishing Pole [4/4/87]
INSERT INTO npc_vendor_template VALUES (118,6365,0,0,0); -- Strong Fishing Pole [4/4/12]
INSERT INTO npc_vendor_template VALUES (118,6369,0,0,0); -- Recipe: Rockscale Cod [4/4/9]
INSERT INTO npc_vendor_template VALUES (118,6529,0,0,0); -- Shiny Bauble [4/4/57]
INSERT INTO npc_vendor_template VALUES (118,6530,0,0,0); -- Nightcrawlers [4/4/84]
INSERT INTO npc_vendor_template VALUES (118,6532,0,0,0); -- Bright Baubles [4/4/96]
INSERT INTO npc_vendor_template VALUES (118,6533,2,43200,0); -- Aquadynamic Fish Attractor [4/4/18]
INSERT INTO npc_vendor_template VALUES (118,17062,0,0,0); -- Recipe: Mithril Head Trout [4/4/9]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 787,0,0,0 Slitherskin Mackerel [1/4/30]
-- 4592,0,0,0 Longjaw Mud Snapper [1/4/30]
-- 4593,0,0,0 Bristle Whisker Catfish [1/4/31]
-- 4594,0,0,0 Rockscale Cod [1/4/30]
-- 6325,0,0,0 Recipe: Brilliant Smallfish [1/4/9]
-- 6326,0,0,0 Recipe: Slitherskin Mackerel [1/4/5]
-- 6328,0,0,0 Recipe: Longjaw Mud Snapper [2/4/8]
-- 6330,0,0,0 Recipe: Bristle Whisker Catfish [1/4/7]
-- 6368,0,0,0 Recipe: Rainbow Fin Albacore [1/4/10]
-- 6887,0,0,0 Spotted Yellowtail [1/4/16]
-- 8957,0,0,0 Spinefin Halibut [1/4/35]
-- 21552,5,43200,0 Striped Yellowtail [1/4/16]

INSERT INTO npc_vendor VALUES (3178,787,0,0,0); -- Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (3178,4592,0,0,0); -- Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (3178,4593,0,0,0); -- Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (3178,4594,0,0,0); -- Rockscale Cod
INSERT INTO npc_vendor VALUES (4574,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (5162,6326,0,0,0); -- Recipe: Slitherskin Mackerel
INSERT INTO npc_vendor VALUES (4574,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (5162,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (2383,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (3178,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (3178,6887,0,0,0); -- Spotted Yellowtail
INSERT INTO npc_vendor VALUES (3178,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (3178,21552,5,43200,0); -- Striped Yellowtail

-- Total count: Templates: 8, single 13, sum 21, before: 45

-- ------------
-- Shattrath Flasks
-- 23483,23484
-- ------------
DELETE FROM npc_vendor WHERE entry IN (23483,23484);
UPDATE creature_template SET vendor_id=18 WHERE entry IN (23483,23484);

INSERT INTO npc_vendor_template VALUES (18,32898,0,0,1959); -- Shattrath Flask of Fortification [2/2/2]
INSERT INTO npc_vendor_template VALUES (18,32899,0,0,1959); -- Shattrath Flask of Mighty Restoration [2/2/2]
INSERT INTO npc_vendor_template VALUES (18,32900,0,0,1959); -- Shattrath Flask of Supreme Power [2/2/2]
INSERT INTO npc_vendor_template VALUES (18,32901,0,0,1959); -- Shattrath Flask of Relentless Assault [2/2/2]
INSERT INTO npc_vendor_template VALUES (18,35716,0,0,1959); -- Shattrath Flask of Pure Death [2/2/2]
INSERT INTO npc_vendor_template VALUES (18,35717,0,0,1959); -- Shattrath Flask of Blinding Light [2/2/2]

-- Total count: Templates: 6, single 0, sum 6, before: 12

-- ------------
-- Cooking Supplies 1
-- 2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195);
UPDATE creature_template SET vendor_id=119 WHERE entry IN (2397,2664,3027,3085,3400,4223,4265,4553,5160,5483,8307,12033,14738,16253,16677,16718,17246,19195);

INSERT INTO npc_vendor_template VALUES (119,159,0,0,0); -- Refreshing Spring Water [18/18/227]
INSERT INTO npc_vendor_template VALUES (119,2678,0,0,0); -- Mild Spices [18/18/90]
INSERT INTO npc_vendor_template VALUES (119,2692,0,0,0); -- Hot Spices [18/18/80]
INSERT INTO npc_vendor_template VALUES (119,3713,0,0,0); -- Soothing Spices [18/18/93]
INSERT INTO npc_vendor_template VALUES (119,21099,0,0,0); -- Recipe: Smoked Sagefish [18/18/19]
INSERT INTO npc_vendor_template VALUES (119,21219,0,0,0); -- Recipe: Sagefish Delight [18/18/19]
INSERT INTO npc_vendor_template VALUES (119,30817,0,0,0); -- Simple Flour [18/18/33]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4540,0,0,0 Tough Hunk of Bread [1/18/61]
-- 4541,0,0,0 Freshly Baked Bread [1/18/51]
-- 4542,0,0,0 Moist Cornbread [1/18/51]
-- 4544,0,0,0 Mulgore Spice Bread [1/18/51]
-- 4601,0,0,0 Soft Banana Bread [1/18/51]
-- 6039,0,0,0 Recipe: Giant Clam Scorcho [1/18/1]
-- 6325,0,0,0 Recipe: Brilliant Smallfish [1/18/9]
-- 6328,0,0,0 Recipe: Longjaw Mud Snapper [2/18/8]
-- 6330,0,0,0 Recipe: Bristle Whisker Catfish [3/18/7]
-- 6368,0,0,0 Recipe: Rainbow Fin Albacore [1/18/10]
-- 6369,0,0,0 Recipe: Rockscale Cod [2/18/9]
-- 8950,0,0,0 Homemade Cherry Pie [1/18/66]
-- 13940,0,0,0 Recipe: Cooked Glossy Mightfish [1/18/1]
-- 13941,0,0,0 Recipe: Filet of Redgill [1/18/1]
-- 13943,0,0,0 Recipe: Hot Smoked Bass [1/18/1]
-- 16072,0,0,0 Expert Cookbook [1/18/2]
-- 17062,0,0,0 Recipe: Mithril Head Trout [2/18/9]
-- 22647,0,0,0 Recipe: Crunchy Spider Surprise [1/18/2]
-- 27687,0,0,0 Recipe: Bat Bites [1/18/1]

INSERT INTO npc_vendor VALUES (8307,4540,0,0,0); -- Tough Hunk of Bread
INSERT INTO npc_vendor VALUES (8307,4541,0,0,0); -- Freshly Baked Bread
INSERT INTO npc_vendor VALUES (8307,4542,0,0,0); -- Moist Cornbread
INSERT INTO npc_vendor VALUES (8307,4544,0,0,0); -- Mulgore Spice Bread
INSERT INTO npc_vendor VALUES (8307,4601,0,0,0); -- Soft Banana Bread
INSERT INTO npc_vendor VALUES (2664,6039,0,0,0); -- Recipe: Giant Clam Scorcho
INSERT INTO npc_vendor VALUES (4265,6325,0,0,0); -- Recipe: Brilliant Smallfish
INSERT INTO npc_vendor VALUES (3027,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (4265,6328,0,0,0); -- Recipe: Longjaw Mud Snapper
INSERT INTO npc_vendor VALUES (2397,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (3027,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (4553,6330,0,0,0); -- Recipe: Bristle Whisker Catfish
INSERT INTO npc_vendor VALUES (4553,6368,0,0,0); -- Recipe: Rainbow Fin Albacore
INSERT INTO npc_vendor VALUES (2664,6369,0,0,0); -- Recipe: Rockscale Cod
INSERT INTO npc_vendor VALUES (12033,6369,0,0,0); -- Recipe: Rockscale Cod
INSERT INTO npc_vendor VALUES (8307,8950,0,0,0); -- Homemade Cherry Pie
INSERT INTO npc_vendor VALUES (2664,13940,0,0,0); -- Recipe: Cooked Glossy Mightfish
INSERT INTO npc_vendor VALUES (2664,13941,0,0,0); -- Recipe: Filet of Redgill
INSERT INTO npc_vendor VALUES (2664,13943,0,0,0); -- Recipe: Hot Smoked Bass
INSERT INTO npc_vendor VALUES (12033,16072,0,0,0); -- Expert Cookbook
INSERT INTO npc_vendor VALUES (2664,17062,0,0,0); -- Recipe: Mithril Head Trout
INSERT INTO npc_vendor VALUES (12033,17062,0,0,0); -- Recipe: Mithril Head Trout
INSERT INTO npc_vendor VALUES (16253,22647,0,0,0); -- Recipe: Crunchy Spider Surprise
INSERT INTO npc_vendor VALUES (16253,27687,0,0,0); -- Recipe: Bat Bites

-- Total count: Templates: 7, single 24, sum 31, before: 150
-- ------------
-- Cooking Supplies 2
-- 18987,18993,19371,20028
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18987,18993,19371,20028);
UPDATE creature_template SET vendor_id=120 WHERE entry IN (18987,18993,19371,20028);

INSERT INTO npc_vendor_template VALUES (120,159,0,0,0); -- Refreshing Spring Water [4/4/227]
INSERT INTO npc_vendor_template VALUES (120,2678,0,0,0); -- Mild Spices [4/4/90]
INSERT INTO npc_vendor_template VALUES (120,2692,0,0,0); -- Hot Spices [4/4/80]
INSERT INTO npc_vendor_template VALUES (120,3713,0,0,0); -- Soothing Spices [4/4/93]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 27694,0,0,0 Recipe: Blackened Trout [1/4/2]
-- 27695,0,0,0 Recipe: Feltail Delight [1/4/2]
-- 27736,0,0,0 Master Cookbook [2/4/3]

INSERT INTO npc_vendor VALUES (20028,27694,0,0,0); -- Recipe: Blackened Trout
INSERT INTO npc_vendor VALUES (20028,27695,0,0,0); -- Recipe: Feltail Delight
INSERT INTO npc_vendor VALUES (18987,27736,0,0,0); -- Master Cookbook
INSERT INTO npc_vendor VALUES (18993,27736,0,0,0); -- Master Cookbook

-- Total count: Templates: 4, single 4, sum 8, before: 20

-- ------------
-- Cooking Supplies 3
-- 20096,20097
-- ------------
DELETE FROM npc_vendor WHERE entry IN (20096,20097);
UPDATE creature_template SET vendor_id=121 WHERE entry IN (20096,20097);

INSERT INTO npc_vendor_template VALUES (121,159,0,0,0); -- Refreshing Spring Water [2/2/227]
INSERT INTO npc_vendor_template VALUES (121,2678,0,0,0); -- Mild Spices [2/2/90]
INSERT INTO npc_vendor_template VALUES (121,2692,0,0,0); -- Hot Spices [2/2/80]
INSERT INTO npc_vendor_template VALUES (121,3713,0,0,0); -- Soothing Spices [2/2/93]
INSERT INTO npc_vendor_template VALUES (121,27691,0,0,0); -- Recipe: Roasted Clefthoof [2/2/2]
INSERT INTO npc_vendor_template VALUES (121,27692,0,0,0); -- Recipe: Warp Burger [2/2/4]
INSERT INTO npc_vendor_template VALUES (121,27693,0,0,0); -- Recipe: Talbuk Steak [2/2/2]
INSERT INTO npc_vendor_template VALUES (121,27697,0,0,0); -- Recipe: Grilled Mudfish [2/2/2]
INSERT INTO npc_vendor_template VALUES (121,27698,0,0,0); -- Recipe: Poached Bluefish [2/2/2]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 8952,0,0,0 Roasted Quail [1/2/101]
-- 27854,0,0,0 Smoked Talbuk Venison [1/2/35]
-- 29451,0,0,0 Clefthoof Ribs [1/2/36]

INSERT INTO npc_vendor VALUES (20097,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (20097,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (20097,29451,0,0,0); -- Clefthoof Ribs

-- Total count: Templates: 9, single 3, sum 12, before: 21

-- ------------
-- Poison 1
-- 19049,19239,20986,25043
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19049,19239,20986,25043);
UPDATE creature_template SET vendor_id=122 WHERE entry IN (19049,19239,20986,25043);

INSERT INTO npc_vendor_template VALUES (122,2931,0,0,0); -- Maiden's Anguish [4/4/42]
INSERT INTO npc_vendor_template VALUES (122,3777,0,0,0); -- Lethargy Root [4/4/53]
INSERT INTO npc_vendor_template VALUES (122,5140,0,0,0); -- Flash Powder [4/4/43]
INSERT INTO npc_vendor_template VALUES (122,5173,0,0,0); -- Deathweed [4/4/42]
INSERT INTO npc_vendor_template VALUES (122,8923,0,0,0); -- Essence of Agony [4/4/42]
INSERT INTO npc_vendor_template VALUES (122,8924,0,0,0); -- Dust of Deterioration [4/4/41]
INSERT INTO npc_vendor_template VALUES (122,8925,0,0,0); -- Crystal Vial [4/4/119]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2526,0,0,0 Main Gauche [1/4/27]
-- 2534,0,0,0 Rondel [1/4/26]
-- 22572,3,43200,0 Mote of Air [1/4/2]
-- 22573,3,43200,0 Mote of Earth [1/4/2]
-- 22574,3,43200,0 Mote of Fire [1/4/2]
-- 22575,3,43200,0 Mote of Life [1/4/2]
-- 22576,3,43200,0 Mote of Mana [1/4/2]
-- 22577,3,43200,0 Mote of Shadow [1/4/2]
-- 22578,3,43200,0 Mote of Water [1/4/2]
-- 29393,0,0,0 Diamond Berries [1/4/2]
-- 29394,0,0,0 Lyribread [1/4/2]
-- 29395,0,0,0 Ethermead [1/4/2]
-- 29454,0,0,0 Silverwine [1/4/2]

INSERT INTO npc_vendor VALUES (19239,2526,0,0,0); -- Main Gauche
INSERT INTO npc_vendor VALUES (19239,2534,0,0,0); -- Rondel
INSERT INTO npc_vendor VALUES (20986,22572,3,43200,0); -- Mote of Air
INSERT INTO npc_vendor VALUES (20986,22573,3,43200,0); -- Mote of Earth
INSERT INTO npc_vendor VALUES (20986,22574,3,43200,0); -- Mote of Fire
INSERT INTO npc_vendor VALUES (20986,22575,3,43200,0); -- Mote of Life
INSERT INTO npc_vendor VALUES (20986,22576,3,43200,0); -- Mote of Mana
INSERT INTO npc_vendor VALUES (20986,22577,3,43200,0); -- Mote of Shadow
INSERT INTO npc_vendor VALUES (20986,22578,3,43200,0); -- Mote of Water
INSERT INTO npc_vendor VALUES (20986,29393,0,0,0); -- Diamond Berries
INSERT INTO npc_vendor VALUES (20986,29394,0,0,0); -- Lyribread
INSERT INTO npc_vendor VALUES (20986,29395,0,0,0); -- Ethermead
INSERT INTO npc_vendor VALUES (20986,29454,0,0,0); -- Silverwine

-- Total count: Templates: 7, single 13, sum 20, before: 41

-- ------------
-- Poison 2
-- 1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121);
UPDATE creature_template SET vendor_id=123 WHERE entry IN (1325,1326,1457,2622,3090,3135,3334,3551,3561,3969,4585,5169,6779,16268,16683,20121);

INSERT INTO npc_vendor_template VALUES (123,2928,0,0,0); -- Dust of Decay [16/16/88]
INSERT INTO npc_vendor_template VALUES (123,2930,0,0,0); -- Essence of Pain [16/16/26]
INSERT INTO npc_vendor_template VALUES (123,2931,0,0,0); -- Maiden's Anguish [16/16/42]
INSERT INTO npc_vendor_template VALUES (123,3371,0,0,0); -- Empty Vial [16/16/133]
INSERT INTO npc_vendor_template VALUES (123,3372,0,0,0); -- Leaded Vial [16/16/115]
INSERT INTO npc_vendor_template VALUES (123,3777,0,0,0); -- Lethargy Root [16/16/53]
INSERT INTO npc_vendor_template VALUES (123,5060,0,0,0); -- Thieves' Tools [16/16/26]
INSERT INTO npc_vendor_template VALUES (123,5140,0,0,0); -- Flash Powder [16/16/43]
INSERT INTO npc_vendor_template VALUES (123,5173,0,0,0); -- Deathweed [16/16/42]
INSERT INTO npc_vendor_template VALUES (123,8923,0,0,0); -- Essence of Agony [16/16/42]
INSERT INTO npc_vendor_template VALUES (123,8924,0,0,0); -- Dust of Deterioration [16/16/41]
INSERT INTO npc_vendor_template VALUES (123,8925,0,0,0); -- Crystal Vial [16/16/119]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 929,3,7200,0 Healing Potion [1/16/10]
-- 18160,0,0,0 Recipe: Thistle Tea [1/16/1]
-- 24285,0,0,0 Crepuscular Powder [1/16/1]
-- 29583,1,43200,0 Sinister Scimitar [1/16/1]
-- 29584,1,43200,0 Throat Piercers [1/16/1]

INSERT INTO npc_vendor VALUES (1457,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (6779,18160,0,0,0); -- Recipe: Thistle Tea
INSERT INTO npc_vendor VALUES (16683,24285,0,0,0); -- Crepuscular Powder
INSERT INTO npc_vendor VALUES (16268,29583,1,43200,0); -- Sinister Scimitar
INSERT INTO npc_vendor VALUES (16268,29584,1,43200,0); -- Throat Piercers

-- Total count: Templates: 12, single 5, sum 17, before: 197

-- ------------
-- Poisons & Reagents 1
-- 16588,16829,18802,19013,19014,19679,20081,20915,22479,23145,23373,24780
-- ------------
DELETE FROM npc_vendor WHERE entry IN (16588,16829,18802,19013,19014,19679,20081,20915,22479,23145,23373,24780);
UPDATE creature_template SET vendor_id=124 WHERE entry IN (16588,16829,18802,19013,19014,19679,20081,20915,22479,23145,23373,24780);

INSERT INTO npc_vendor_template VALUES (124,2931,0,0,0); -- Maiden's Anguish [12/12/42]
INSERT INTO npc_vendor_template VALUES (124,3777,0,0,0); -- Lethargy Root [12/12/53]
INSERT INTO npc_vendor_template VALUES (124,5140,0,0,0); -- Flash Powder [12/12/43]
INSERT INTO npc_vendor_template VALUES (124,5173,0,0,0); -- Deathweed [12/12/42]
INSERT INTO npc_vendor_template VALUES (124,5565,0,0,0); -- Infernal Stone [12/12/68]
INSERT INTO npc_vendor_template VALUES (124,8923,0,0,0); -- Essence of Agony [12/12/42]
INSERT INTO npc_vendor_template VALUES (124,16583,0,0,0); -- Demonic Figurine [12/12/68]
INSERT INTO npc_vendor_template VALUES (124,17020,0,0,0); -- Arcane Powder [12/12/68]
INSERT INTO npc_vendor_template VALUES (124,17021,0,0,0); -- Wild Berries [12/12/67]
INSERT INTO npc_vendor_template VALUES (124,17026,0,0,0); -- Wild Thornroot [12/12/67]
INSERT INTO npc_vendor_template VALUES (124,17028,0,0,0); -- Holy Candle [12/12/67]
INSERT INTO npc_vendor_template VALUES (124,17029,0,0,0); -- Sacred Candle [12/12/69]
INSERT INTO npc_vendor_template VALUES (124,17030,0,0,0); -- Ankh [12/12/69]
INSERT INTO npc_vendor_template VALUES (124,17031,0,0,0); -- Rune of Teleportation [12/12/67]
INSERT INTO npc_vendor_template VALUES (124,17032,0,0,0); -- Rune of Portals [12/12/67]
INSERT INTO npc_vendor_template VALUES (124,17033,0,0,0); -- Symbol of Divinity [12/12/69]
INSERT INTO npc_vendor_template VALUES (124,17037,0,0,0); -- Hornbeam Seed [12/12/66]
INSERT INTO npc_vendor_template VALUES (124,17038,0,0,0); -- Ironwood Seed [12/12/66]
INSERT INTO npc_vendor_template VALUES (124,21177,0,0,0); -- Symbol of Kings [12/12/69]
INSERT INTO npc_vendor_template VALUES (124,22147,0,0,0); -- Flintweed Seed [12/12/69]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2928,0,0,0 Dust of Decay [1/12/88]
-- 2930,0,0,0 Essence of Pain [1/12/26]
-- 3371,5,28800,0 Empty Vial [1/12/1]
-- 3372,5,28800,0 Leaded Vial [1/12/1]
-- 3713,0,0,0 Soothing Spices [1/12/93]
-- 4470,0,0,0 Simple Wood [2/12/132]
-- 4471,0,0,0 Flint and Tinder [1/12/85]
-- 5060,0,0,0 Thieves' Tools [1/12/26]
-- 6532,0,0,0 Bright Baubles [1/12/96]
-- 8766,0,0,0 Morning Glory Dew [1/12/188]
-- 8924,0,0,0 Dust of Deterioration [11/12/41]
-- 8925,0,0,0 Crystal Vial [11/12/119]
-- 8925,5,28800,0 Crystal Vial [1/12/1]
-- 8952,0,0,0 Roasted Quail [1/12/101]
-- 11284,0,0,0 Accurate Slugs [2/12/95]
-- 11285,0,0,0 Jagged Arrow [2/12/100]
-- 14341,0,0,0 Rune Thread [1/12/126]
-- 17034,0,0,0 Maple Seed [3/12/50]
-- 17035,0,0,0 Stranglethorn Seed [3/12/50]
-- 17036,0,0,0 Ashwood Seed [3/12/50]
-- 18256,0,0,0 Imbued Vial [4/12/88]
-- 18256,5,28800,0 Imbued Vial [1/12/1]
-- 22148,0,0,0 Wild Quillvine [6/12/61]
-- 22900,1,7200,0 Recipe: Elixir of Camouflage [2/12/5]
-- 27498,2,3600,0 Scroll of Agility V [1/12/1]
-- 27499,2,3600,0 Scroll of Intellect V [1/12/1]
-- 27503,2,3600,0 Scroll of Strength V [1/12/1]
-- 27854,0,0,0 Smoked Talbuk Venison [1/12/35]
-- 27860,0,0,0 Purified Draenic Water [1/12/51]
-- 28053,0,0,0 Wicked Arrow [2/12/100]
-- 28056,0,0,0 Blackflight Arrow [3/12/49]
-- 28060,0,0,0 Impact Shot [2/12/89]
-- 28061,0,0,0 Ironbite Shell [3/12/51]
-- 28100,2,3600,0 Volatile Healing Potion [1/12/1]
-- 28101,2,3600,0 Unstable Mana Potion [1/12/1]
-- 28399,0,0,0 Filtered Draenic Water [1/12/51]
-- 29013,0,0,0 Jagged Throwing Axe [1/12/73]
-- 29014,0,0,0 Blacksteel Throwing Dagger [1/12/72]
-- 29451,0,0,0 Clefthoof Ribs [1/12/36]
-- 32903,0,0,1963 Cenarion Mana Salve [1/12/1]
-- 32904,0,0,1963 Cenarion Healing Salve [1/12/1]

INSERT INTO npc_vendor VALUES (16829,2928,0,0,0); -- Dust of Decay
INSERT INTO npc_vendor VALUES (16829,2930,0,0,0); -- Essence of Pain
INSERT INTO npc_vendor VALUES (16829,3371,5,28800,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (16829,3372,5,28800,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (20081,3713,0,0,0); -- Soothing Spices
INSERT INTO npc_vendor VALUES (19679,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (20081,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (20081,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (16829,5060,0,0,0); -- Thieves' Tools
INSERT INTO npc_vendor VALUES (20081,6532,0,0,0); -- Bright Baubles
INSERT INTO npc_vendor VALUES (19679,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (16588,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (16829,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (18802,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (19013,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (19014,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (19679,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (20081,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (20915,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (22479,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (23145,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (23373,8924,0,0,0); -- Dust of Deterioration
INSERT INTO npc_vendor VALUES (16588,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (18802,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (19013,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (19014,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (19679,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (20081,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (20915,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (22479,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (23145,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (23373,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (24780,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (16829,8925,5,28800,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (19679,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (19679,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (23373,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (19679,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (23373,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (20081,14341,0,0,0); -- Rune Thread
INSERT INTO npc_vendor VALUES (16829,17034,0,0,0); -- Maple Seed
INSERT INTO npc_vendor VALUES (20081,17034,0,0,0); -- Maple Seed
INSERT INTO npc_vendor VALUES (22479,17034,0,0,0); -- Maple Seed
INSERT INTO npc_vendor VALUES (16829,17035,0,0,0); -- Stranglethorn Seed
INSERT INTO npc_vendor VALUES (20081,17035,0,0,0); -- Stranglethorn Seed
INSERT INTO npc_vendor VALUES (22479,17035,0,0,0); -- Stranglethorn Seed
INSERT INTO npc_vendor VALUES (16829,17036,0,0,0); -- Ashwood Seed
INSERT INTO npc_vendor VALUES (20081,17036,0,0,0); -- Ashwood Seed
INSERT INTO npc_vendor VALUES (22479,17036,0,0,0); -- Ashwood Seed
INSERT INTO npc_vendor VALUES (16588,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (18802,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (20081,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (24780,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (16829,18256,5,28800,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (16829,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (20081,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (22479,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (23145,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (23373,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (24780,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (16588,22900,1,7200,0); -- Recipe: Elixir of Camouflage
INSERT INTO npc_vendor VALUES (18802,22900,1,7200,0); -- Recipe: Elixir of Camouflage
INSERT INTO npc_vendor VALUES (24780,27498,2,3600,0); -- Scroll of Agility V
INSERT INTO npc_vendor VALUES (24780,27499,2,3600,0); -- Scroll of Intellect V
INSERT INTO npc_vendor VALUES (24780,27503,2,3600,0); -- Scroll of Strength V
INSERT INTO npc_vendor VALUES (19679,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (19679,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (19679,28053,0,0,0); -- Wicked Arrow
INSERT INTO npc_vendor VALUES (23373,28053,0,0,0); -- Wicked Arrow
INSERT INTO npc_vendor VALUES (19679,28056,0,0,0); -- Blackflight Arrow
INSERT INTO npc_vendor VALUES (23373,28056,0,0,0); -- Blackflight Arrow
INSERT INTO npc_vendor VALUES (24780,28056,0,0,0); -- Blackflight Arrow
INSERT INTO npc_vendor VALUES (19679,28060,0,0,0); -- Impact Shot
INSERT INTO npc_vendor VALUES (23373,28060,0,0,0); -- Impact Shot
INSERT INTO npc_vendor VALUES (19679,28061,0,0,0); -- Ironbite Shell
INSERT INTO npc_vendor VALUES (23373,28061,0,0,0); -- Ironbite Shell
INSERT INTO npc_vendor VALUES (24780,28061,0,0,0); -- Ironbite Shell
INSERT INTO npc_vendor VALUES (24780,28100,2,3600,0); -- Volatile Healing Potion
INSERT INTO npc_vendor VALUES (24780,28101,2,3600,0); -- Unstable Mana Potion
INSERT INTO npc_vendor VALUES (19679,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (19679,29013,0,0,0); -- Jagged Throwing Axe
INSERT INTO npc_vendor VALUES (19679,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (19679,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (23373,32903,0,0,1963); -- Cenarion Mana Salve
INSERT INTO npc_vendor VALUES (23373,32904,0,0,1963); -- Cenarion Healing Salve

-- Total count: Templates: 20, single 85, sum 105, before: 325

-- ------------
-- Poisons & Reagents 2
-- 3490,3542,5139,10364,12096,12097,15175,18006,18019
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3490,3542,5139,10364,12096,12097,15175,18006,18019);
UPDATE creature_template SET vendor_id=125 WHERE entry IN (3490,3542,5139,10364,12096,12097,15175,18006,18019);

INSERT INTO npc_vendor_template VALUES (125,2928,0,0,0); -- Dust of Decay [9/9/88]
INSERT INTO npc_vendor_template VALUES (125,2930,0,0,0); -- Essence of Pain [9/9/26]
INSERT INTO npc_vendor_template VALUES (125,2931,0,0,0); -- Maiden's Anguish [9/9/42]
INSERT INTO npc_vendor_template VALUES (125,3371,0,0,0); -- Empty Vial [9/9/133]
INSERT INTO npc_vendor_template VALUES (125,3372,0,0,0); -- Leaded Vial [9/9/115]
INSERT INTO npc_vendor_template VALUES (125,3777,0,0,0); -- Lethargy Root [9/9/53]
INSERT INTO npc_vendor_template VALUES (125,5060,0,0,0); -- Thieves' Tools [9/9/26]
INSERT INTO npc_vendor_template VALUES (125,5140,0,0,0); -- Flash Powder [9/9/43]
INSERT INTO npc_vendor_template VALUES (125,5173,0,0,0); -- Deathweed [9/9/42]
INSERT INTO npc_vendor_template VALUES (125,5565,0,0,0); -- Infernal Stone [9/9/68]
INSERT INTO npc_vendor_template VALUES (125,8923,0,0,0); -- Essence of Agony [9/9/42]
INSERT INTO npc_vendor_template VALUES (125,8924,0,0,0); -- Dust of Deterioration [9/9/41]
INSERT INTO npc_vendor_template VALUES (125,8925,0,0,0); -- Crystal Vial [9/9/119]
INSERT INTO npc_vendor_template VALUES (125,16583,0,0,0); -- Demonic Figurine [9/9/68]
INSERT INTO npc_vendor_template VALUES (125,17020,0,0,0); -- Arcane Powder [9/9/68]
INSERT INTO npc_vendor_template VALUES (125,17021,0,0,0); -- Wild Berries [9/9/67]
INSERT INTO npc_vendor_template VALUES (125,17026,0,0,0); -- Wild Thornroot [9/9/67]
INSERT INTO npc_vendor_template VALUES (125,17028,0,0,0); -- Holy Candle [9/9/67]
INSERT INTO npc_vendor_template VALUES (125,17029,0,0,0); -- Sacred Candle [9/9/69]
INSERT INTO npc_vendor_template VALUES (125,17030,0,0,0); -- Ankh [9/9/69]
INSERT INTO npc_vendor_template VALUES (125,17031,0,0,0); -- Rune of Teleportation [9/9/67]
INSERT INTO npc_vendor_template VALUES (125,17032,0,0,0); -- Rune of Portals [9/9/67]
INSERT INTO npc_vendor_template VALUES (125,17033,0,0,0); -- Symbol of Divinity [9/9/69]
INSERT INTO npc_vendor_template VALUES (125,17034,0,0,0); -- Maple Seed [9/9/50]
INSERT INTO npc_vendor_template VALUES (125,17035,0,0,0); -- Stranglethorn Seed [9/9/50]
INSERT INTO npc_vendor_template VALUES (125,17036,0,0,0); -- Ashwood Seed [9/9/50]
INSERT INTO npc_vendor_template VALUES (125,17037,0,0,0); -- Hornbeam Seed [9/9/66]
INSERT INTO npc_vendor_template VALUES (125,17038,0,0,0); -- Ironwood Seed [9/9/66]
INSERT INTO npc_vendor_template VALUES (125,21177,0,0,0); -- Symbol of Kings [9/9/69]
INSERT INTO npc_vendor_template VALUES (125,22147,0,0,0); -- Flintweed Seed [9/9/69]
INSERT INTO npc_vendor_template VALUES (125,22148,0,0,0); -- Wild Quillvine [9/9/61]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 117,0,0,0 Tough Jerky [1/9/63]
-- 117,5,43200,0 Tough Jerky [1/9/1]
-- 159,0,0,0 Refreshing Spring Water [2/9/227]
-- 765,2,7200,0 Silverleaf [1/9/1]
-- 785,2,7200,0 Mageroyal [1/9/6]
-- 1179,0,0,0 Ice Cold Milk [1/9/169]
-- 1179,5,43200,0 Ice Cold Milk [1/9/2]
-- 1205,0,0,0 Melon Juice [1/9/175]
-- 1205,5,43200,0 Melon Juice [1/9/3]
-- 1645,0,0,0 Moonberry Juice [1/9/163]
-- 1645,5,43200,0 Moonberry Juice [1/9/3]
-- 1708,0,0,0 Sweet Nectar [1/9/164]
-- 1708,5,43200,0 Sweet Nectar [1/9/3]
-- 2287,0,0,0 Haunch of Meat [2/9/64]
-- 2447,3,7200,0 Peacebloom [1/9/1]
-- 2449,3,7200,0 Earthroot [1/9/6]
-- 2453,2,7200,0 Bruiseweed [1/9/7]
-- 3770,0,0,0 Mutton Chop [1/9/66]
-- 3770,5,43200,0 Mutton Chop [1/9/2]
-- 3771,0,0,0 Wild Hog Shank [1/9/66]
-- 3771,5,43200,0 Wild Hog Shank [1/9/2]
-- 4536,0,0,0 Shiny Red Apple [1/9/22]
-- 4536,5,43200,0 Shiny Red Apple [1/9/2]
-- 4537,0,0,0 Tel'Abim Banana [1/9/21]
-- 4537,5,43200,0 Tel'Abim Banana [1/9/2]
-- 4538,0,0,0 Snapvine Watermelon [1/9/25]
-- 4538,5,43200,0 Snapvine Watermelon [1/9/3]
-- 4539,0,0,0 Goldenbark Apple [1/9/25]
-- 4539,5,43200,0 Goldenbark Apple [1/9/3]
-- 4599,0,0,0 Cured Ham Steak [2/9/67]
-- 4602,0,0,0 Moon Harvest Pumpkin [1/9/24]
-- 4602,5,43200,0 Moon Harvest Pumpkin [1/9/3]
-- 4604,0,0,0 Forest Mushroom Cap [1/9/18]
-- 4604,5,43200,0 Forest Mushroom Cap [1/9/1]
-- 4605,0,0,0 Red-speckled Mushroom [1/9/18]
-- 4605,5,43200,0 Red-speckled Mushroom [1/9/1]
-- 4606,0,0,0 Spongy Morel [1/9/21]
-- 4606,5,43200,0 Spongy Morel [1/9/2]
-- 4607,0,0,0 Delicious Cave Mold [1/9/21]
-- 4607,5,43200,0 Delicious Cave Mold [1/9/2]
-- 4608,0,0,0 Raw Black Truffle [1/9/21]
-- 4608,5,43200,0 Raw Black Truffle [1/9/2]
-- 6053,1,7200,0 Recipe: Holy Protection Potion [1/9/1]
-- 8766,0,0,0 Morning Glory Dew [2/9/188]
-- 8948,0,0,0 Dried King Bolete [1/9/27]
-- 8948,5,43200,0 Dried King Bolete [1/9/2]
-- 8952,0,0,0 Roasted Quail [2/9/101]
-- 8953,0,0,0 Deep Fried Plantains [1/9/41]
-- 8953,5,43200,0 Deep Fried Plantains [1/9/3]

INSERT INTO npc_vendor VALUES (12097,117,0,0,0); -- Tough Jerky
INSERT INTO npc_vendor VALUES (12096,117,5,43200,0); -- Tough Jerky
INSERT INTO npc_vendor VALUES (12096,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (12097,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (3490,765,2,7200,0); -- Silverleaf
INSERT INTO npc_vendor VALUES (3490,785,2,7200,0); -- Mageroyal
INSERT INTO npc_vendor VALUES (12097,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (12096,1179,5,43200,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (12097,1205,0,0,0); -- Melon Juice
INSERT INTO npc_vendor VALUES (12096,1205,5,43200,0); -- Melon Juice
INSERT INTO npc_vendor VALUES (12097,1645,0,0,0); -- Moonberry Juice
INSERT INTO npc_vendor VALUES (12096,1645,5,43200,0); -- Moonberry Juice
INSERT INTO npc_vendor VALUES (12097,1708,0,0,0); -- Sweet Nectar
INSERT INTO npc_vendor VALUES (12096,1708,5,43200,0); -- Sweet Nectar
INSERT INTO npc_vendor VALUES (12096,2287,0,0,0); -- Haunch of Meat
INSERT INTO npc_vendor VALUES (12097,2287,0,0,0); -- Haunch of Meat
INSERT INTO npc_vendor VALUES (3490,2447,3,7200,0); -- Peacebloom
INSERT INTO npc_vendor VALUES (3490,2449,3,7200,0); -- Earthroot
INSERT INTO npc_vendor VALUES (3490,2453,2,7200,0); -- Bruiseweed
INSERT INTO npc_vendor VALUES (12097,3770,0,0,0); -- Mutton Chop
INSERT INTO npc_vendor VALUES (12096,3770,5,43200,0); -- Mutton Chop
INSERT INTO npc_vendor VALUES (12097,3771,0,0,0); -- Wild Hog Shank
INSERT INTO npc_vendor VALUES (12096,3771,5,43200,0); -- Wild Hog Shank
INSERT INTO npc_vendor VALUES (12097,4536,0,0,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (12096,4536,5,43200,0); -- Shiny Red Apple
INSERT INTO npc_vendor VALUES (12097,4537,0,0,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (12096,4537,5,43200,0); -- Tel'Abim Banana
INSERT INTO npc_vendor VALUES (12097,4538,0,0,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (12096,4538,5,43200,0); -- Snapvine Watermelon
INSERT INTO npc_vendor VALUES (12097,4539,0,0,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (12096,4539,5,43200,0); -- Goldenbark Apple
INSERT INTO npc_vendor VALUES (12096,4599,0,0,0); -- Cured Ham Steak
INSERT INTO npc_vendor VALUES (12097,4599,0,0,0); -- Cured Ham Steak
INSERT INTO npc_vendor VALUES (12097,4602,0,0,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (12096,4602,5,43200,0); -- Moon Harvest Pumpkin
INSERT INTO npc_vendor VALUES (12097,4604,0,0,0); -- Forest Mushroom Cap
INSERT INTO npc_vendor VALUES (12096,4604,5,43200,0); -- Forest Mushroom Cap
INSERT INTO npc_vendor VALUES (12097,4605,0,0,0); -- Red-speckled Mushroom
INSERT INTO npc_vendor VALUES (12096,4605,5,43200,0); -- Red-speckled Mushroom
INSERT INTO npc_vendor VALUES (12097,4606,0,0,0); -- Spongy Morel
INSERT INTO npc_vendor VALUES (12096,4606,5,43200,0); -- Spongy Morel
INSERT INTO npc_vendor VALUES (12097,4607,0,0,0); -- Delicious Cave Mold
INSERT INTO npc_vendor VALUES (12096,4607,5,43200,0); -- Delicious Cave Mold
INSERT INTO npc_vendor VALUES (12097,4608,0,0,0); -- Raw Black Truffle
INSERT INTO npc_vendor VALUES (12096,4608,5,43200,0); -- Raw Black Truffle
INSERT INTO npc_vendor VALUES (3490,6053,1,7200,0); -- Recipe: Holy Protection Potion
INSERT INTO npc_vendor VALUES (12096,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (12097,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (12097,8948,0,0,0); -- Dried King Bolete
INSERT INTO npc_vendor VALUES (12096,8948,5,43200,0); -- Dried King Bolete
INSERT INTO npc_vendor VALUES (12096,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (12097,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (12097,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (12096,8953,5,43200,0); -- Deep Fried Plantains

-- Total count: Templates: 31, single 54, sum 85, before: 333

-- ------------
-- Alchemy 1
-- 844,2848,3010,3348,3548,4610,4899,5594,8158,8305,11188,14847,18005,19074,19837,20989
-- ------------
DELETE FROM npc_vendor WHERE entry IN (844,2848,3010,3348,3548,4610,4899,5594,8158,8305,11188,14847,18005,19074,19837,20989);
UPDATE creature_template SET vendor_id=126 WHERE entry IN (844,2848,3010,3348,3548,4610,4899,5594,8158,8305,11188,14847,18005,19074,19837,20989);

INSERT INTO npc_vendor_template VALUES (126,3371,0,0,0); -- Empty Vial [16/16/133]
INSERT INTO npc_vendor_template VALUES (126,3372,0,0,0); -- Leaded Vial [16/16/115]
INSERT INTO npc_vendor_template VALUES (126,8925,0,0,0); -- Crystal Vial [16/16/119]
INSERT INTO npc_vendor_template VALUES (126,18256,0,0,0); -- Imbued Vial [16/16/88]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 765,2,3600,0 Silverleaf [1/16/1]
-- 785,1,3600,0 Mageroyal [1/16/1]
-- 785,2,7200,0 Mageroyal [2/16/6]
-- 858,3,3600,0 Lesser Healing Potion [1/16/1]
-- 858,3,7200,0 Lesser Healing Potion [1/16/1]
-- 858,3,86400,0 Lesser Healing Potion [1/16/1]
-- 929,3,14400,0 Healing Potion [1/16/1]
-- 954,1,7200,0 Scroll of Strength [1/16/1]
-- 955,1,43200,0 Scroll of Intellect [1/16/1]
-- 1180,1,43200,0 Scroll of Stamina [1/16/1]
-- 1181,3,7200,0 Scroll of Spirit [1/16/1]
-- 1477,1,7200,0 Scroll of Agility II [1/16/1]
-- 1710,0,0,0 Greater Healing Potion [1/16/4]
-- 1710,3,3600,0 Greater Healing Potion [1/16/1]
-- 1711,1,43200,0 Scroll of Stamina II [1/16/1]
-- 2289,1,43200,0 Scroll of Strength II [1/16/1]
-- 2290,2,7200,0 Scroll of Intellect II [1/16/1]
-- 2447,3,3600,0 Peacebloom [1/16/1]
-- 2449,3,7200,0 Earthroot [2/16/6]
-- 2453,2,7200,0 Bruiseweed [2/16/7]
-- 3012,2,7200,0 Scroll of Agility [1/16/1]
-- 3013,1,43200,0 Scroll of Protection [1/16/1]
-- 3355,1,7200,0 Wild Steelbloom [1/16/4]
-- 3355,1,14400,0 Wild Steelbloom [1/16/1]
-- 3356,1,7200,0 Kingsblood [1/16/6]
-- 3356,1,14400,0 Kingsblood [1/16/1]
-- 3357,0,0,0 Liferoot [1/16/3]
-- 3357,1,86400,0 Liferoot [1/16/1]
-- 3385,3,7200,0 Lesser Mana Potion [1/16/1]
-- 3827,0,0,0 Mana Potion [1/16/4]
-- 3827,1,3600,0 Mana Potion [1/16/1]
-- 3928,1,7200,0 Superior Healing Potion [1/16/1]
-- 3928,2,7200,0 Superior Healing Potion [2/16/2]
-- 4419,2,7200,0 Scroll of Intellect III [1/16/1]
-- 4421,1,7200,0 Scroll of Protection III [1/16/1]
-- 4422,1,7200,0 Scroll of Stamina III [1/16/1]
-- 4424,1,43200,0 Scroll of Spirit III [1/16/1]
-- 4425,1,7200,0 Scroll of Agility III [1/16/1]
-- 4426,2,7200,0 Scroll of Strength III [1/16/1]
-- 4777,2,86400,0 Ironwood Maul [1/16/1]
-- 4778,2,86400,0 Heavy Spiked Mace [1/16/1]
-- 4794,1,86400,0 Wolf Bracers [1/16/1]
-- 4795,1,86400,0 Bear Bracers [1/16/1]
-- 4796,1,86400,0 Owl Bracers [1/16/1]
-- 4817,2,86400,0 Blessed Claymore [1/16/1]
-- 4818,2,86400,0 Executioner's Sword [1/16/1]
-- 6056,1,3600,0 Recipe: Frost Protection Potion [1/16/1]
-- 6057,1,3600,0 Recipe: Nature Protection Potion [1/16/1]
-- 6057,1,7200,0 Recipe: Nature Protection Potion [2/16/2]
-- 6149,2,7200,0 Greater Mana Potion [2/16/2]
-- 6217,0,0,0 Copper Rod [1/16/87]
-- 9301,1,2700,0 Recipe: Elixir of Shadow Power [1/16/2]
-- 9302,1,3600,0 Recipe: Ghost Dye [1/16/1]
-- 9303,0,0,0 Recipe: Philosopher's Stone [1/16/1]
-- 9304,0,0,0 Recipe: Transmute Iron to Gold [1/16/1]
-- 9305,1,7200,0 Recipe: Transmute Mithril to Truesilver [1/16/1]
-- 10305,1,7200,0 Scroll of Protection IV [1/16/1]
-- 10306,2,7200,0 Scroll of Spirit IV [1/16/1]
-- 10307,1,7200,0 Scroll of Stamina IV [1/16/1]
-- 10308,2,7200,0 Scroll of Intellect IV [1/16/1]
-- 10309,2,7200,0 Scroll of Agility IV [1/16/1]
-- 10310,1,7200,0 Scroll of Strength IV [1/16/1]
-- 12958,0,0,0 Recipe: Transmute Arcanite [1/16/1]
-- 13443,1,43200,0 Superior Mana Potion [1/16/1]
-- 13444,2,43200,0 Major Mana Potion [1/16/2]
-- 13444,3,43200,0 Major Mana Potion [1/16/1]
-- 13446,2,43200,0 Major Healing Potion [1/16/2]
-- 13446,3,43200,0 Major Healing Potion [1/16/1]
-- 13467,3,43200,0 Icecap [1/16/1]
-- 13478,1,7200,0 Recipe: Elixir of Superior Defense [1/16/1]
-- 22250,0,0,0 Herb Pouch [2/16/8]
-- 22572,2,43200,0 Mote of Air [1/16/1]
-- 22573,2,43200,0 Mote of Earth [1/16/1]
-- 22574,2,43200,0 Mote of Fire [1/16/1]
-- 22575,1,43200,0 Mote of Life [1/16/1]
-- 22576,2,43200,0 Mote of Mana [1/16/1]
-- 22577,1,43200,0 Mote of Shadow [1/16/1]
-- 22578,1,43200,0 Mote of Water [1/16/1]
-- 22785,3,43200,0 Felweed [1/16/1]
-- 22786,3,43200,0 Dreaming Glory [1/16/1]
-- 22791,3,43200,0 Netherbloom [1/16/1]
-- 22793,1,43200,0 Mana Thistle [1/16/1]
-- 22829,2,18000,0 Super Healing Potion [1/16/1]
-- 22829,3,43200,0 Super Healing Potion [1/16/1]
-- 22832,1,18000,0 Super Mana Potion [1/16/1]
-- 22832,3,43200,0 Super Mana Potion [1/16/1]
-- 22845,2,43200,0 Major Arcane Protection Potion [1/16/1]
-- 22846,2,43200,0 Major Shadow Protection Potion [1/16/1]
-- 22900,1,7200,0 Recipe: Elixir of Camouflage [1/16/5]
-- 22902,1,43200,0 Recipe: Elixir of Major Frost Power [1/16/1]
-- 22907,1,43200,0 Recipe: Super Mana Potion [2/16/2]
-- 22909,1,43200,0 Recipe: Elixir of Major Defense [2/16/2]
-- 22911,0,0,0 Recipe: Major Dreamless Sleep Potion [1/16/1]
-- 23436,1,86400,0 Living Ruby [1/16/1]
-- 23437,1,86400,0 Talasite [1/16/1]
-- 23438,1,86400,0 Star of Elune [1/16/1]
-- 23439,1,86400,0 Noble Topaz [1/16/1]
-- 23440,1,86400,0 Dawnstone [1/16/1]
-- 23441,1,86400,0 Nightseye [1/16/1]
-- 23574,1,43200,0 Recipe: Transmute Primal Might [1/16/2]
-- 27498,2,7200,0 Scroll of Agility V [1/16/1]
-- 27499,2,7200,0 Scroll of Intellect V [1/16/1]
-- 27500,1,7200,0 Scroll of Protection V [1/16/1]
-- 27501,2,7200,0 Scroll of Spirit V [1/16/1]
-- 27502,2,7200,0 Scroll of Stamina V [1/16/1]
-- 27503,2,7200,0 Scroll of Strength V [1/16/1]

INSERT INTO npc_vendor VALUES (3548,765,2,3600,0); -- Silverleaf
INSERT INTO npc_vendor VALUES (3548,785,1,3600,0); -- Mageroyal
INSERT INTO npc_vendor VALUES (844,785,2,7200,0); -- Mageroyal
INSERT INTO npc_vendor VALUES (8305,785,2,7200,0); -- Mageroyal
INSERT INTO npc_vendor VALUES (3548,858,3,3600,0); -- Lesser Healing Potion
INSERT INTO npc_vendor VALUES (14847,858,3,7200,0); -- Lesser Healing Potion
INSERT INTO npc_vendor VALUES (844,858,3,86400,0); -- Lesser Healing Potion
INSERT INTO npc_vendor VALUES (8305,929,3,14400,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (14847,954,1,7200,0); -- Scroll of Strength
INSERT INTO npc_vendor VALUES (14847,955,1,43200,0); -- Scroll of Intellect
INSERT INTO npc_vendor VALUES (14847,1180,1,43200,0); -- Scroll of Stamina
INSERT INTO npc_vendor VALUES (14847,1181,3,7200,0); -- Scroll of Spirit
INSERT INTO npc_vendor VALUES (14847,1477,1,7200,0); -- Scroll of Agility II
INSERT INTO npc_vendor VALUES (4899,1710,0,0,0); -- Greater Healing Potion
INSERT INTO npc_vendor VALUES (2848,1710,3,3600,0); -- Greater Healing Potion
INSERT INTO npc_vendor VALUES (14847,1711,1,43200,0); -- Scroll of Stamina II
INSERT INTO npc_vendor VALUES (14847,2289,1,43200,0); -- Scroll of Strength II
INSERT INTO npc_vendor VALUES (14847,2290,2,7200,0); -- Scroll of Intellect II
INSERT INTO npc_vendor VALUES (3548,2447,3,3600,0); -- Peacebloom
INSERT INTO npc_vendor VALUES (844,2449,3,7200,0); -- Earthroot
INSERT INTO npc_vendor VALUES (8305,2449,3,7200,0); -- Earthroot
INSERT INTO npc_vendor VALUES (844,2453,2,7200,0); -- Bruiseweed
INSERT INTO npc_vendor VALUES (8305,2453,2,7200,0); -- Bruiseweed
INSERT INTO npc_vendor VALUES (14847,3012,2,7200,0); -- Scroll of Agility
INSERT INTO npc_vendor VALUES (14847,3013,1,43200,0); -- Scroll of Protection
INSERT INTO npc_vendor VALUES (844,3355,1,7200,0); -- Wild Steelbloom
INSERT INTO npc_vendor VALUES (8305,3355,1,14400,0); -- Wild Steelbloom
INSERT INTO npc_vendor VALUES (844,3356,1,7200,0); -- Kingsblood
INSERT INTO npc_vendor VALUES (8305,3356,1,14400,0); -- Kingsblood
INSERT INTO npc_vendor VALUES (8305,3357,0,0,0); -- Liferoot
INSERT INTO npc_vendor VALUES (844,3357,1,86400,0); -- Liferoot
INSERT INTO npc_vendor VALUES (14847,3385,3,7200,0); -- Lesser Mana Potion
INSERT INTO npc_vendor VALUES (4899,3827,0,0,0); -- Mana Potion
INSERT INTO npc_vendor VALUES (2848,3827,1,3600,0); -- Mana Potion
INSERT INTO npc_vendor VALUES (14847,3928,1,7200,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (8158,3928,2,7200,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (11188,3928,2,7200,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (14847,4419,2,7200,0); -- Scroll of Intellect III
INSERT INTO npc_vendor VALUES (14847,4421,1,7200,0); -- Scroll of Protection III
INSERT INTO npc_vendor VALUES (14847,4422,1,7200,0); -- Scroll of Stamina III
INSERT INTO npc_vendor VALUES (14847,4424,1,43200,0); -- Scroll of Spirit III
INSERT INTO npc_vendor VALUES (14847,4425,1,7200,0); -- Scroll of Agility III
INSERT INTO npc_vendor VALUES (14847,4426,2,7200,0); -- Scroll of Strength III
INSERT INTO npc_vendor VALUES (844,4777,2,86400,0); -- Ironwood Maul
INSERT INTO npc_vendor VALUES (844,4778,2,86400,0); -- Heavy Spiked Mace
INSERT INTO npc_vendor VALUES (844,4794,1,86400,0); -- Wolf Bracers
INSERT INTO npc_vendor VALUES (844,4795,1,86400,0); -- Bear Bracers
INSERT INTO npc_vendor VALUES (844,4796,1,86400,0); -- Owl Bracers
INSERT INTO npc_vendor VALUES (844,4817,2,86400,0); -- Blessed Claymore
INSERT INTO npc_vendor VALUES (844,4818,2,86400,0); -- Executioner's Sword
INSERT INTO npc_vendor VALUES (2848,6056,1,3600,0); -- Recipe: Frost Protection Potion
INSERT INTO npc_vendor VALUES (2848,6057,1,3600,0); -- Recipe: Nature Protection Potion
INSERT INTO npc_vendor VALUES (5594,6057,1,7200,0); -- Recipe: Nature Protection Potion
INSERT INTO npc_vendor VALUES (8158,6057,1,7200,0); -- Recipe: Nature Protection Potion
INSERT INTO npc_vendor VALUES (8158,6149,2,7200,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (11188,6149,2,7200,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (4899,6217,0,0,0); -- Copper Rod
INSERT INTO npc_vendor VALUES (4610,9301,1,2700,0); -- Recipe: Elixir of Shadow Power
INSERT INTO npc_vendor VALUES (8158,9302,1,3600,0); -- Recipe: Ghost Dye
INSERT INTO npc_vendor VALUES (5594,9303,0,0,0); -- Recipe: Philosopher's Stone
INSERT INTO npc_vendor VALUES (5594,9304,0,0,0); -- Recipe: Transmute Iron to Gold
INSERT INTO npc_vendor VALUES (5594,9305,1,7200,0); -- Recipe: Transmute Mithril to Truesilver
INSERT INTO npc_vendor VALUES (14847,10305,1,7200,0); -- Scroll of Protection IV
INSERT INTO npc_vendor VALUES (14847,10306,2,7200,0); -- Scroll of Spirit IV
INSERT INTO npc_vendor VALUES (14847,10307,1,7200,0); -- Scroll of Stamina IV
INSERT INTO npc_vendor VALUES (14847,10308,2,7200,0); -- Scroll of Intellect IV
INSERT INTO npc_vendor VALUES (14847,10309,2,7200,0); -- Scroll of Agility IV
INSERT INTO npc_vendor VALUES (14847,10310,1,7200,0); -- Scroll of Strength IV
INSERT INTO npc_vendor VALUES (5594,12958,0,0,0); -- Recipe: Transmute Arcanite
INSERT INTO npc_vendor VALUES (14847,13443,1,43200,0); -- Superior Mana Potion
INSERT INTO npc_vendor VALUES (19837,13444,2,43200,0); -- Major Mana Potion
INSERT INTO npc_vendor VALUES (20989,13444,3,43200,0); -- Major Mana Potion
INSERT INTO npc_vendor VALUES (19837,13446,2,43200,0); -- Major Healing Potion
INSERT INTO npc_vendor VALUES (20989,13446,3,43200,0); -- Major Healing Potion
INSERT INTO npc_vendor VALUES (20989,13467,3,43200,0); -- Icecap
INSERT INTO npc_vendor VALUES (3348,13478,1,7200,0); -- Recipe: Elixir of Superior Defense
INSERT INTO npc_vendor VALUES (3548,22250,0,0,0); -- Herb Pouch
INSERT INTO npc_vendor VALUES (4899,22250,0,0,0); -- Herb Pouch
INSERT INTO npc_vendor VALUES (14847,22572,2,43200,0); -- Mote of Air
INSERT INTO npc_vendor VALUES (14847,22573,2,43200,0); -- Mote of Earth
INSERT INTO npc_vendor VALUES (14847,22574,2,43200,0); -- Mote of Fire
INSERT INTO npc_vendor VALUES (14847,22575,1,43200,0); -- Mote of Life
INSERT INTO npc_vendor VALUES (14847,22576,2,43200,0); -- Mote of Mana
INSERT INTO npc_vendor VALUES (14847,22577,1,43200,0); -- Mote of Shadow
INSERT INTO npc_vendor VALUES (14847,22578,1,43200,0); -- Mote of Water
INSERT INTO npc_vendor VALUES (20989,22785,3,43200,0); -- Felweed
INSERT INTO npc_vendor VALUES (20989,22786,3,43200,0); -- Dreaming Glory
INSERT INTO npc_vendor VALUES (20989,22791,3,43200,0); -- Netherbloom
INSERT INTO npc_vendor VALUES (20989,22793,1,43200,0); -- Mana Thistle
INSERT INTO npc_vendor VALUES (14847,22829,2,18000,0); -- Super Healing Potion
INSERT INTO npc_vendor VALUES (20989,22829,3,43200,0); -- Super Healing Potion
INSERT INTO npc_vendor VALUES (14847,22832,1,18000,0); -- Super Mana Potion
INSERT INTO npc_vendor VALUES (20989,22832,3,43200,0); -- Super Mana Potion
INSERT INTO npc_vendor VALUES (20989,22845,2,43200,0); -- Major Arcane Protection Potion
INSERT INTO npc_vendor VALUES (20989,22846,2,43200,0); -- Major Shadow Protection Potion
INSERT INTO npc_vendor VALUES (19837,22900,1,7200,0); -- Recipe: Elixir of Camouflage
INSERT INTO npc_vendor VALUES (18005,22902,1,43200,0); -- Recipe: Elixir of Major Frost Power
INSERT INTO npc_vendor VALUES (18005,22907,1,43200,0); -- Recipe: Super Mana Potion
INSERT INTO npc_vendor VALUES (19837,22907,1,43200,0); -- Recipe: Super Mana Potion
INSERT INTO npc_vendor VALUES (18005,22909,1,43200,0); -- Recipe: Elixir of Major Defense
INSERT INTO npc_vendor VALUES (19837,22909,1,43200,0); -- Recipe: Elixir of Major Defense
INSERT INTO npc_vendor VALUES (19837,22911,0,0,0); -- Recipe: Major Dreamless Sleep Potion
INSERT INTO npc_vendor VALUES (14847,23436,1,86400,0); -- Living Ruby
INSERT INTO npc_vendor VALUES (14847,23437,1,86400,0); -- Talasite
INSERT INTO npc_vendor VALUES (14847,23438,1,86400,0); -- Star of Elune
INSERT INTO npc_vendor VALUES (14847,23439,1,86400,0); -- Noble Topaz
INSERT INTO npc_vendor VALUES (14847,23440,1,86400,0); -- Dawnstone
INSERT INTO npc_vendor VALUES (14847,23441,1,86400,0); -- Nightseye
INSERT INTO npc_vendor VALUES (19074,23574,1,43200,0); -- Recipe: Transmute Primal Might
INSERT INTO npc_vendor VALUES (14847,27498,2,7200,0); -- Scroll of Agility V
INSERT INTO npc_vendor VALUES (14847,27499,2,7200,0); -- Scroll of Intellect V
INSERT INTO npc_vendor VALUES (14847,27500,1,7200,0); -- Scroll of Protection V
INSERT INTO npc_vendor VALUES (14847,27501,2,7200,0); -- Scroll of Spirit V
INSERT INTO npc_vendor VALUES (14847,27502,2,7200,0); -- Scroll of Stamina V
INSERT INTO npc_vendor VALUES (14847,27503,2,7200,0); -- Scroll of Strength V

-- Total count: Templates: 4, single 115, sum 119, before: 179

-- ------------
-- Alchemy 2
-- 1453,2380,2480,2481,2812,3956,4226,5178,8157,8177,8178
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1453,2380,2480,2481,2812,3956,4226,5178,8157,8177,8178);
UPDATE creature_template SET vendor_id=127 WHERE entry IN (1453,2380,2480,2481,2812,3956,4226,5178,8157,8177,8178);

INSERT INTO npc_vendor_template VALUES (127,858,0,0,0); -- Lesser Healing Potion [11/11/12]
INSERT INTO npc_vendor_template VALUES (127,3371,0,0,0); -- Empty Vial [11/11/133]
INSERT INTO npc_vendor_template VALUES (127,3372,0,0,0); -- Leaded Vial [11/11/115]
INSERT INTO npc_vendor_template VALUES (127,3385,0,0,0); -- Lesser Mana Potion [11/11/14]
INSERT INTO npc_vendor_template VALUES (127,8925,0,0,0); -- Crystal Vial [11/11/119]
INSERT INTO npc_vendor_template VALUES (127,18256,0,0,0); -- Imbued Vial [11/11/88]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 929,3,7200,0 Healing Potion [3/11/10]
-- 1710,0,0,0 Greater Healing Potion [3/11/4]
-- 3827,0,0,0 Mana Potion [3/11/4]
-- 3928,0,0,0 Superior Healing Potion [3/11/4]
-- 5642,0,0,0 Recipe: Free Action Potion [2/11/2]
-- 5643,0,0,0 Recipe: Great Rage Potion [1/11/1]
-- 6054,0,0,0 Recipe: Shadow Protection Potion [1/11/1]
-- 6055,0,0,0 Recipe: Fire Protection Potion [1/11/1]
-- 6056,0,0,0 Recipe: Frost Protection Potion [1/11/1]
-- 6057,0,0,0 Recipe: Nature Protection Potion [1/11/1]
-- 6068,1,7200,0 Recipe: Shadow Oil [1/11/2]
-- 6149,0,0,0 Greater Mana Potion [3/11/4]
-- 9300,0,0,0 Recipe: Elixir of Demonslaying [2/11/2]
-- 9302,0,0,0 Recipe: Ghost Dye [1/11/1]
-- 13477,0,0,0 Recipe: Superior Mana Potion [1/11/1]
-- 13478,0,0,0 Recipe: Elixir of Superior Defense [1/11/1]
-- 14634,0,0,0 Recipe: Frost Oil [1/11/1]

INSERT INTO npc_vendor VALUES (1453,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (2481,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (3956,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (2380,1710,0,0,0); -- Greater Healing Potion
INSERT INTO npc_vendor VALUES (2480,1710,0,0,0); -- Greater Healing Potion
INSERT INTO npc_vendor VALUES (2812,1710,0,0,0); -- Greater Healing Potion
INSERT INTO npc_vendor VALUES (2380,3827,0,0,0); -- Mana Potion
INSERT INTO npc_vendor VALUES (2480,3827,0,0,0); -- Mana Potion
INSERT INTO npc_vendor VALUES (2812,3827,0,0,0); -- Mana Potion
INSERT INTO npc_vendor VALUES (8157,3928,0,0,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (8177,3928,0,0,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (8178,3928,0,0,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (4226,5642,0,0,0); -- Recipe: Free Action Potion
INSERT INTO npc_vendor VALUES (5178,5642,0,0,0); -- Recipe: Free Action Potion
INSERT INTO npc_vendor VALUES (4226,5643,0,0,0); -- Recipe: Great Rage Potion
INSERT INTO npc_vendor VALUES (3956,6054,0,0,0); -- Recipe: Shadow Protection Potion
INSERT INTO npc_vendor VALUES (2380,6055,0,0,0); -- Recipe: Fire Protection Potion
INSERT INTO npc_vendor VALUES (2812,6056,0,0,0); -- Recipe: Frost Protection Potion
INSERT INTO npc_vendor VALUES (8157,6057,0,0,0); -- Recipe: Nature Protection Potion
INSERT INTO npc_vendor VALUES (2481,6068,1,7200,0); -- Recipe: Shadow Oil
INSERT INTO npc_vendor VALUES (8157,6149,0,0,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (8177,6149,0,0,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (8178,6149,0,0,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (8177,9300,0,0,0); -- Recipe: Elixir of Demonslaying
INSERT INTO npc_vendor VALUES (8178,9300,0,0,0); -- Recipe: Elixir of Demonslaying
INSERT INTO npc_vendor VALUES (8157,9302,0,0,0); -- Recipe: Ghost Dye
INSERT INTO npc_vendor VALUES (4226,13477,0,0,0); -- Recipe: Superior Mana Potion
INSERT INTO npc_vendor VALUES (5178,13478,0,0,0); -- Recipe: Elixir of Superior Defense
INSERT INTO npc_vendor VALUES (2480,14634,0,0,0); -- Recipe: Frost Oil

-- Total count: Templates: 6, single 29, sum 35, before: 95

-- ------------
-- Alchemy 3
-- 3405,4216,4615,5138,5503,16367
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3405,4216,4615,5138,5503,16367);
UPDATE creature_template SET vendor_id=128 WHERE entry IN (3405,4216,4615,5138,5503,16367);

INSERT INTO npc_vendor_template VALUES (128,3371,0,0,0); -- Empty Vial [6/6/133]
INSERT INTO npc_vendor_template VALUES (128,3372,0,0,0); -- Leaded Vial [6/6/115]
INSERT INTO npc_vendor_template VALUES (128,8925,0,0,0); -- Crystal Vial [6/6/119]
INSERT INTO npc_vendor_template VALUES (128,22250,0,0,0); -- Herb Pouch [6/6/8]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6217,0,0,0 Copper Rod [2/6/87]

INSERT INTO npc_vendor VALUES (4216,6217,0,0,0); -- Copper Rod
INSERT INTO npc_vendor VALUES (5138,6217,0,0,0); -- Copper Rod

-- Total count: Templates: 4, single 2, sum 6, before: 26

-- ------------
-- Alchemy 4
-- 1313,16641,16705
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1313,16641,16705);
UPDATE creature_template SET vendor_id=129 WHERE entry IN (1313,16641,16705);

INSERT INTO npc_vendor_template VALUES (129,785,2,7200,0); -- Mageroyal [3/3/6]
INSERT INTO npc_vendor_template VALUES (129,2447,0,0,0); -- Peacebloom [3/3/3]
INSERT INTO npc_vendor_template VALUES (129,2449,3,7200,0); -- Earthroot [3/3/6]
INSERT INTO npc_vendor_template VALUES (129,2453,2,7200,0); -- Bruiseweed [3/3/7]
INSERT INTO npc_vendor_template VALUES (129,3355,1,7200,0); -- Wild Steelbloom [3/3/4]
INSERT INTO npc_vendor_template VALUES (129,3356,1,7200,0); -- Kingsblood [3/3/6]
INSERT INTO npc_vendor_template VALUES (129,3371,0,0,0); -- Empty Vial [3/3/133]
INSERT INTO npc_vendor_template VALUES (129,3372,0,0,0); -- Leaded Vial [3/3/115]
INSERT INTO npc_vendor_template VALUES (129,8925,0,0,0); -- Crystal Vial [3/3/119]
INSERT INTO npc_vendor_template VALUES (129,18256,0,0,0); -- Imbued Vial [3/3/88]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 765,0,0,0 Silverleaf [2/3/2]
-- 765,3,43200,0 Silverleaf [1/3/2]
-- 3357,0,0,0 Liferoot [2/3/3]
-- 3357,1,43200,0 Liferoot [1/3/1]
-- 9301,1,2700,0 Recipe: Elixir of Shadow Power [1/3/2]
-- 22900,1,7200,0 Recipe: Elixir of Camouflage [2/3/5]
-- 23574,0,0,0 Recipe: Transmute Primal Might [1/3/1]
-- 23574,1,43200,0 Recipe: Transmute Primal Might [1/3/2]

INSERT INTO npc_vendor VALUES (1313,765,0,0,0); -- Silverleaf
INSERT INTO npc_vendor VALUES (16705,765,0,0,0); -- Silverleaf
INSERT INTO npc_vendor VALUES (16641,765,3,43200,0); -- Silverleaf
INSERT INTO npc_vendor VALUES (1313,3357,0,0,0); -- Liferoot
INSERT INTO npc_vendor VALUES (16705,3357,0,0,0); -- Liferoot
INSERT INTO npc_vendor VALUES (16641,3357,1,43200,0); -- Liferoot
INSERT INTO npc_vendor VALUES (1313,9301,1,2700,0); -- Recipe: Elixir of Shadow Power
INSERT INTO npc_vendor VALUES (16641,22900,1,7200,0); -- Recipe: Elixir of Camouflage
INSERT INTO npc_vendor VALUES (16705,22900,1,7200,0); -- Recipe: Elixir of Camouflage
INSERT INTO npc_vendor VALUES (16705,23574,0,0,0); -- Recipe: Transmute Primal Might
INSERT INTO npc_vendor VALUES (16641,23574,1,43200,0); -- Recipe: Transmute Primal Might

-- Total count: Templates: 10, single 11, sum 21, before: 41

-- ------------
-- Heavy Armor 1 (Scalemail, Chainmail, Polished Scale, Light Mail, Augmented, Brigandine, Platemail)
-- 4177,5812,5819
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4177,5812,5819);
UPDATE creature_template SET vendor_id=229 WHERE entry IN (4177,5812,5819);

INSERT INTO npc_vendor_template VALUES (229,285,0,0,0); -- Scalemail Vest [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,286,0,0,0); -- Scalemail Pants [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,287,0,0,0); -- Scalemail Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,718,0,0,0); -- Scalemail Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,847,0,0,0); -- Chainmail Armor [3/3/17]
INSERT INTO npc_vendor_template VALUES (229,848,0,0,0); -- Chainmail Pants [3/3/17]
INSERT INTO npc_vendor_template VALUES (229,849,0,0,0); -- Chainmail Boots [3/3/17]
INSERT INTO npc_vendor_template VALUES (229,850,0,0,0); -- Chainmail Gloves [3/3/17]
INSERT INTO npc_vendor_template VALUES (229,1845,0,0,0); -- Chainmail Belt [3/3/17]
INSERT INTO npc_vendor_template VALUES (229,1846,0,0,0); -- Chainmail Bracers [3/3/17]
INSERT INTO npc_vendor_template VALUES (229,1852,0,0,0); -- Scalemail Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,1853,0,0,0); -- Scalemail Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2148,0,0,0); -- Polished Scale Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2149,0,0,0); -- Polished Scale Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2150,0,0,0); -- Polished Scale Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2151,0,0,0); -- Polished Scale Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2152,0,0,0); -- Polished Scale Leggings [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2153,0,0,0); -- Polished Scale Vest [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2392,0,0,0); -- Light Mail Armor [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,2393,0,0,0); -- Light Mail Belt [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,2394,0,0,0); -- Light Mail Leggings [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,2395,0,0,0); -- Light Mail Boots [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,2396,0,0,0); -- Light Mail Bracers [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,2397,0,0,0); -- Light Mail Gloves [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,2417,0,0,0); -- Augmented Chain Vest [3/3/11]
INSERT INTO npc_vendor_template VALUES (229,2418,0,0,0); -- Augmented Chain Leggings [3/3/11]
INSERT INTO npc_vendor_template VALUES (229,2419,0,0,0); -- Augmented Chain Belt [3/3/11]
INSERT INTO npc_vendor_template VALUES (229,2420,0,0,0); -- Augmented Chain Boots [3/3/13]
INSERT INTO npc_vendor_template VALUES (229,2421,0,0,0); -- Augmented Chain Bracers [3/3/11]
INSERT INTO npc_vendor_template VALUES (229,2422,0,0,0); -- Augmented Chain Gloves [3/3/11]
INSERT INTO npc_vendor_template VALUES (229,2423,0,0,0); -- Brigandine Vest [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2424,0,0,0); -- Brigandine Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2425,0,0,0); -- Brigandine Leggings [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2426,0,0,0); -- Brigandine Boots [3/3/16]
INSERT INTO npc_vendor_template VALUES (229,2427,0,0,0); -- Brigandine Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2428,0,0,0); -- Brigandine Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,2448,0,0,0); -- Heavy Pavise [3/3/15]
INSERT INTO npc_vendor_template VALUES (229,2451,0,0,0); -- Crested Heater Shield [3/3/16]
INSERT INTO npc_vendor_template VALUES (229,3891,0,0,0); -- Augmented Chain Helm [3/3/12]
INSERT INTO npc_vendor_template VALUES (229,3894,0,0,0); -- Brigandine Helm [3/3/15]
INSERT INTO npc_vendor_template VALUES (229,8088,0,0,0); -- Platemail Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,8089,0,0,0); -- Platemail Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,8090,0,0,0); -- Platemail Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,8091,0,0,0); -- Platemail Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,8092,0,0,0); -- Platemail Helm [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,8093,0,0,0); -- Platemail Leggings [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,8094,0,0,0); -- Platemail Armor [3/3/14]
INSERT INTO npc_vendor_template VALUES (229,17189,0,0,0); -- Metal Buckler [3/3/15]
INSERT INTO npc_vendor_template VALUES (229,17190,0,0,0); -- Ornate Buckler [3/3/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2379,0,0,0 Tarnished Chain Vest [1/3/5]
-- 2380,0,0,0 Tarnished Chain Belt [1/3/5]
-- 2381,0,0,0 Tarnished Chain Leggings [1/3/5]
-- 2383,0,0,0 Tarnished Chain Boots [1/3/5]
-- 2384,0,0,0 Tarnished Chain Bracers [1/3/5]
-- 2385,0,0,0 Tarnished Chain Gloves [1/3/5]
-- 2446,0,0,0 Kite Shield [2/3/15]
-- 17192,0,0,0 Reinforced Targe [2/3/15]

INSERT INTO npc_vendor VALUES (4177,2379,0,0,0); -- Tarnished Chain Vest
INSERT INTO npc_vendor VALUES (4177,2380,0,0,0); -- Tarnished Chain Belt
INSERT INTO npc_vendor VALUES (4177,2381,0,0,0); -- Tarnished Chain Leggings
INSERT INTO npc_vendor VALUES (4177,2383,0,0,0); -- Tarnished Chain Boots
INSERT INTO npc_vendor VALUES (4177,2384,0,0,0); -- Tarnished Chain Bracers
INSERT INTO npc_vendor VALUES (4177,2385,0,0,0); -- Tarnished Chain Gloves
INSERT INTO npc_vendor VALUES (5812,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (5819,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (5812,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (5819,17192,0,0,0); -- Reinforced Targe

-- Total count: Templates: 49, single 10, sum 59, before: 157

-- ------------
-- Heavy Armor 2 (Polished, Augmented, Brigandine, Platemail)
-- 1323,1349,3095
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1323,1349,3095);
UPDATE creature_template SET vendor_id=230 WHERE entry IN (1323,1349,3095);

INSERT INTO npc_vendor_template VALUES (230,2148,0,0,0); -- Polished Scale Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2149,0,0,0); -- Polished Scale Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2150,0,0,0); -- Polished Scale Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2151,0,0,0); -- Polished Scale Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2152,0,0,0); -- Polished Scale Leggings [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2153,0,0,0); -- Polished Scale Vest [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2417,0,0,0); -- Augmented Chain Vest [3/3/11]
INSERT INTO npc_vendor_template VALUES (230,2418,0,0,0); -- Augmented Chain Leggings [3/3/11]
INSERT INTO npc_vendor_template VALUES (230,2419,0,0,0); -- Augmented Chain Belt [3/3/11]
INSERT INTO npc_vendor_template VALUES (230,2420,0,0,0); -- Augmented Chain Boots [3/3/13]
INSERT INTO npc_vendor_template VALUES (230,2421,0,0,0); -- Augmented Chain Bracers [3/3/11]
INSERT INTO npc_vendor_template VALUES (230,2422,0,0,0); -- Augmented Chain Gloves [3/3/11]
INSERT INTO npc_vendor_template VALUES (230,2423,0,0,0); -- Brigandine Vest [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2424,0,0,0); -- Brigandine Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2425,0,0,0); -- Brigandine Leggings [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2426,0,0,0); -- Brigandine Boots [3/3/16]
INSERT INTO npc_vendor_template VALUES (230,2427,0,0,0); -- Brigandine Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2428,0,0,0); -- Brigandine Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,2446,0,0,0); -- Kite Shield [3/3/15]
INSERT INTO npc_vendor_template VALUES (230,2448,0,0,0); -- Heavy Pavise [3/3/15]
INSERT INTO npc_vendor_template VALUES (230,2451,0,0,0); -- Crested Heater Shield [3/3/16]
INSERT INTO npc_vendor_template VALUES (230,3891,0,0,0); -- Augmented Chain Helm [3/3/12]
INSERT INTO npc_vendor_template VALUES (230,3894,0,0,0); -- Brigandine Helm [3/3/15]
INSERT INTO npc_vendor_template VALUES (230,8088,0,0,0); -- Platemail Belt [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,8089,0,0,0); -- Platemail Boots [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,8090,0,0,0); -- Platemail Bracers [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,8091,0,0,0); -- Platemail Gloves [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,8092,0,0,0); -- Platemail Helm [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,8093,0,0,0); -- Platemail Leggings [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,8094,0,0,0); -- Platemail Armor [3/3/14]
INSERT INTO npc_vendor_template VALUES (230,17189,0,0,0); -- Metal Buckler [3/3/15]
INSERT INTO npc_vendor_template VALUES (230,17190,0,0,0); -- Ornate Buckler [3/3/16]
INSERT INTO npc_vendor_template VALUES (230,17192,0,0,0); -- Reinforced Targe [3/3/15]

-- Total count: Templates: 33, single 0, sum 33, before: 99

-- ------------
-- Heavy Armor 3 (Brigandine, Platemail)
-- 980,5126,5508,8129,11182,16626,16753,18010
-- ------------
DELETE FROM npc_vendor WHERE entry IN (980,5126,5508,8129,11182,16626,16753,18010);
UPDATE creature_template SET vendor_id=231 WHERE entry IN (980,5126,5508,8129,11182,16626,16753,18010);

INSERT INTO npc_vendor_template VALUES (231,2423,0,0,0); -- Brigandine Vest [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,2424,0,0,0); -- Brigandine Belt [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,2425,0,0,0); -- Brigandine Leggings [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,2426,0,0,0); -- Brigandine Boots [8/8/16]
INSERT INTO npc_vendor_template VALUES (231,2427,0,0,0); -- Brigandine Bracers [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,2428,0,0,0); -- Brigandine Gloves [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,2451,0,0,0); -- Crested Heater Shield [8/8/16]
INSERT INTO npc_vendor_template VALUES (231,3894,0,0,0); -- Brigandine Helm [8/8/15]
INSERT INTO npc_vendor_template VALUES (231,8088,0,0,0); -- Platemail Belt [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,8089,0,0,0); -- Platemail Boots [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,8090,0,0,0); -- Platemail Bracers [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,8091,0,0,0); -- Platemail Gloves [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,8092,0,0,0); -- Platemail Helm [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,8093,0,0,0); -- Platemail Leggings [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,8094,0,0,0); -- Platemail Armor [8/8/14]
INSERT INTO npc_vendor_template VALUES (231,17190,0,0,0); -- Ornate Buckler [8/8/16]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2417,0,0,0 Augmented Chain Vest [1/8/11]
-- 2418,0,0,0 Augmented Chain Leggings [1/8/11]
-- 2419,0,0,0 Augmented Chain Belt [1/8/11]
-- 2420,0,0,0 Augmented Chain Boots [1/8/13]
-- 2421,0,0,0 Augmented Chain Bracers [1/8/11]
-- 2422,0,0,0 Augmented Chain Gloves [1/8/11]
-- 2445,0,0,0 Large Metal Shield [2/8/10]
-- 2446,0,0,0 Kite Shield [2/8/15]
-- 2448,0,0,0 Heavy Pavise [3/8/15]
-- 2463,0,0,0 Studded Doublet [1/8/11]
-- 2464,0,0,0 Studded Belt [1/8/11]
-- 2465,0,0,0 Studded Pants [1/8/11]
-- 2467,0,0,0 Studded Boots [1/8/13]
-- 2468,0,0,0 Studded Bracers [1/8/11]
-- 2469,0,0,0 Studded Gloves [1/8/11]
-- 2470,0,0,0 Reinforced Leather Vest [1/8/11]
-- 2471,0,0,0 Reinforced Leather Belt [1/8/11]
-- 2472,0,0,0 Reinforced Leather Pants [1/8/11]
-- 2473,0,0,0 Reinforced Leather Boots [1/8/13]
-- 2474,0,0,0 Reinforced Leather Bracers [1/8/11]
-- 2475,0,0,0 Reinforced Leather Gloves [1/8/11]
-- 3890,0,0,0 Studded Hat [1/8/12]
-- 3891,0,0,0 Augmented Chain Helm [1/8/12]
-- 3893,0,0,0 Reinforced Leather Cap [1/8/12]
-- 17188,0,0,0 Ringed Buckler [2/8/10]
-- 17189,0,0,0 Metal Buckler [3/8/15]
-- 17192,0,0,0 Reinforced Targe [2/8/15]
-- 30765,0,0,0 Heavy Draenic Breastplate [1/8/6]
-- 30771,0,0,0 Heavy Draenic Bracers [1/8/6]
-- 30775,0,0,0 Layered Bone Shield [1/8/6]
-- 30777,0,0,0 Aldor Heavy Belt [1/8/6]
-- 30781,0,0,0 Mag'hari Chain Vest [1/8/6]
-- 30784,0,0,0 Worn Mag'hari Gauntlets [1/8/6]

INSERT INTO npc_vendor VALUES (8129,2417,0,0,0); -- Augmented Chain Vest
INSERT INTO npc_vendor VALUES (8129,2418,0,0,0); -- Augmented Chain Leggings
INSERT INTO npc_vendor VALUES (8129,2419,0,0,0); -- Augmented Chain Belt
INSERT INTO npc_vendor VALUES (8129,2420,0,0,0); -- Augmented Chain Boots
INSERT INTO npc_vendor VALUES (8129,2421,0,0,0); -- Augmented Chain Bracers
INSERT INTO npc_vendor VALUES (8129,2422,0,0,0); -- Augmented Chain Gloves
INSERT INTO npc_vendor VALUES (5126,2445,0,0,0); -- Large Metal Shield
INSERT INTO npc_vendor VALUES (18010,2445,0,0,0); -- Large Metal Shield
INSERT INTO npc_vendor VALUES (5126,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (18010,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (5126,2448,0,0,0); -- Heavy Pavise
INSERT INTO npc_vendor VALUES (8129,2448,0,0,0); -- Heavy Pavise
INSERT INTO npc_vendor VALUES (18010,2448,0,0,0); -- Heavy Pavise
INSERT INTO npc_vendor VALUES (18010,2463,0,0,0); -- Studded Doublet
INSERT INTO npc_vendor VALUES (18010,2464,0,0,0); -- Studded Belt
INSERT INTO npc_vendor VALUES (18010,2465,0,0,0); -- Studded Pants
INSERT INTO npc_vendor VALUES (18010,2467,0,0,0); -- Studded Boots
INSERT INTO npc_vendor VALUES (18010,2468,0,0,0); -- Studded Bracers
INSERT INTO npc_vendor VALUES (18010,2469,0,0,0); -- Studded Gloves
INSERT INTO npc_vendor VALUES (18010,2470,0,0,0); -- Reinforced Leather Vest
INSERT INTO npc_vendor VALUES (18010,2471,0,0,0); -- Reinforced Leather Belt
INSERT INTO npc_vendor VALUES (18010,2472,0,0,0); -- Reinforced Leather Pants
INSERT INTO npc_vendor VALUES (18010,2473,0,0,0); -- Reinforced Leather Boots
INSERT INTO npc_vendor VALUES (18010,2474,0,0,0); -- Reinforced Leather Bracers
INSERT INTO npc_vendor VALUES (18010,2475,0,0,0); -- Reinforced Leather Gloves
INSERT INTO npc_vendor VALUES (18010,3890,0,0,0); -- Studded Hat
INSERT INTO npc_vendor VALUES (8129,3891,0,0,0); -- Augmented Chain Helm
INSERT INTO npc_vendor VALUES (18010,3893,0,0,0); -- Reinforced Leather Cap
INSERT INTO npc_vendor VALUES (5126,17188,0,0,0); -- Ringed Buckler
INSERT INTO npc_vendor VALUES (18010,17188,0,0,0); -- Ringed Buckler
INSERT INTO npc_vendor VALUES (5126,17189,0,0,0); -- Metal Buckler
INSERT INTO npc_vendor VALUES (8129,17189,0,0,0); -- Metal Buckler
INSERT INTO npc_vendor VALUES (18010,17189,0,0,0); -- Metal Buckler
INSERT INTO npc_vendor VALUES (5126,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (18010,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (18010,30765,0,0,0); -- Heavy Draenic Breastplate
INSERT INTO npc_vendor VALUES (18010,30771,0,0,0); -- Heavy Draenic Bracers
INSERT INTO npc_vendor VALUES (18010,30775,0,0,0); -- Layered Bone Shield
INSERT INTO npc_vendor VALUES (18010,30777,0,0,0); -- Aldor Heavy Belt
INSERT INTO npc_vendor VALUES (18010,30781,0,0,0); -- Mag'hari Chain Vest
INSERT INTO npc_vendor VALUES (18010,30784,0,0,0); -- Worn Mag'hari Gauntlets

-- Total count: Templates: 16, single 41, sum 57, before: 169

-- ------------
-- Heavy Armor 4 (Rusted)
-- 2116,3075,3161
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2116,3075,3161);
UPDATE creature_template SET vendor_id=232 WHERE entry IN (2116,3075,3161);

INSERT INTO npc_vendor_template VALUES (232,1200,0,0,0); -- Large Wooden Shield [3/3/5]
INSERT INTO npc_vendor_template VALUES (232,2386,0,0,0); -- Rusted Chain Vest [3/3/4]
INSERT INTO npc_vendor_template VALUES (232,2387,0,0,0); -- Rusted Chain Belt [3/3/4]
INSERT INTO npc_vendor_template VALUES (232,2388,0,0,0); -- Rusted Chain Leggings [3/3/4]
INSERT INTO npc_vendor_template VALUES (232,2389,0,0,0); -- Rusted Chain Boots [3/3/4]
INSERT INTO npc_vendor_template VALUES (232,2390,0,0,0); -- Rusted Chain Bracers [3/3/4]
INSERT INTO npc_vendor_template VALUES (232,2391,0,0,0); -- Rusted Chain Gloves [3/3/4]
INSERT INTO npc_vendor_template VALUES (232,17183,0,0,0); -- Dented Buckler [3/3/5]

-- Total count: Templates: 8, single 0, sum 8, before: 24

-- ------------
-- Heavy Armor 5 (Light Mail)
-- 1240,1249,2046,3613,5106,17930
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1240,1249,2046,3613,5106,17930);
UPDATE creature_template SET vendor_id=233 WHERE entry IN (1240,1249,2046,3613,5106,17930);

INSERT INTO npc_vendor_template VALUES (233,2392,0,0,0); -- Light Mail Armor [6/6/12]
INSERT INTO npc_vendor_template VALUES (233,2393,0,0,0); -- Light Mail Belt [6/6/12]
INSERT INTO npc_vendor_template VALUES (233,2394,0,0,0); -- Light Mail Leggings [6/6/12]
INSERT INTO npc_vendor_template VALUES (233,2395,0,0,0); -- Light Mail Boots [6/6/12]
INSERT INTO npc_vendor_template VALUES (233,2396,0,0,0); -- Light Mail Bracers [6/6/12]
INSERT INTO npc_vendor_template VALUES (233,2397,0,0,0); -- Light Mail Gloves [6/6/12]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1201,0,0,0 Dull Heater Shield [5/6/7]
-- 2101,0,0,0 Light Quiver [1/6/8]
-- 2488,0,0,0 Gladius [1/6/17]
-- 2489,0,0,0 Two-handed Sword [1/6/17]
-- 2490,0,0,0 Tomahawk [1/6/18]
-- 2491,0,0,0 Large Axe [1/6/18]
-- 2492,0,0,0 Cudgel [1/6/20]
-- 2493,0,0,0 Wooden Mallet [1/6/20]
-- 2494,0,0,0 Stiletto [1/6/17]
-- 2495,0,0,0 Walking Stick [1/6/19]
-- 17186,0,0,0 Small Targe [5/6/7]

INSERT INTO npc_vendor VALUES (1249,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (2046,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (3613,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (5106,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (17930,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (17930,2101,0,0,0); -- Light Quiver
INSERT INTO npc_vendor VALUES (17930,2488,0,0,0); -- Gladius
INSERT INTO npc_vendor VALUES (17930,2489,0,0,0); -- Two-handed Sword
INSERT INTO npc_vendor VALUES (17930,2490,0,0,0); -- Tomahawk
INSERT INTO npc_vendor VALUES (17930,2491,0,0,0); -- Large Axe
INSERT INTO npc_vendor VALUES (17930,2492,0,0,0); -- Cudgel
INSERT INTO npc_vendor VALUES (17930,2493,0,0,0); -- Wooden Mallet
INSERT INTO npc_vendor VALUES (17930,2494,0,0,0); -- Stiletto
INSERT INTO npc_vendor VALUES (17930,2495,0,0,0); -- Walking Stick
INSERT INTO npc_vendor VALUES (1249,17186,0,0,0); -- Small Targe
INSERT INTO npc_vendor VALUES (2046,17186,0,0,0); -- Small Targe
INSERT INTO npc_vendor VALUES (3613,17186,0,0,0); -- Small Targe
INSERT INTO npc_vendor VALUES (5106,17186,0,0,0); -- Small Targe
INSERT INTO npc_vendor VALUES (17930,17186,0,0,0); -- Small Targe

-- Total count: Templates: 6, single 19, sum 25, before: 55

-- ------------
-- Heavy Armor 6 (Tarnished)
-- 1104,1213,3592,16917
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1104,1213,3592,16917);
UPDATE creature_template SET vendor_id=234 WHERE entry IN (1104,1213,3592,16917);

INSERT INTO npc_vendor_template VALUES (234,2129,0,0,0); -- Large Round Shield [4/4/6]
INSERT INTO npc_vendor_template VALUES (234,2379,0,0,0); -- Tarnished Chain Vest [4/4/5]
INSERT INTO npc_vendor_template VALUES (234,2380,0,0,0); -- Tarnished Chain Belt [4/4/5]
INSERT INTO npc_vendor_template VALUES (234,2381,0,0,0); -- Tarnished Chain Leggings [4/4/5]
INSERT INTO npc_vendor_template VALUES (234,2383,0,0,0); -- Tarnished Chain Boots [4/4/5]
INSERT INTO npc_vendor_template VALUES (234,2384,0,0,0); -- Tarnished Chain Bracers [4/4/5]
INSERT INTO npc_vendor_template VALUES (234,2385,0,0,0); -- Tarnished Chain Gloves [4/4/5]
INSERT INTO npc_vendor_template VALUES (234,17184,0,0,0); -- Small Shield [4/4/6]

-- Total count: Templates: 8, single 0, sum 8, before: 32

-- ------------
-- Heavy Armor 7 (Polished Scale)
-- maybe split 226,1450,4886 later
-- 226,1450,4085,4883,4886
-- ------------
DELETE FROM npc_vendor WHERE entry IN (226,1450,4085,4883,4886);
UPDATE creature_template SET vendor_id=235 WHERE entry IN (226,1450,4085,4883,4886);

INSERT INTO npc_vendor_template VALUES (235,2148,0,0,0); -- Polished Scale Belt [5/5/14]
INSERT INTO npc_vendor_template VALUES (235,2149,0,0,0); -- Polished Scale Boots [5/5/14]
INSERT INTO npc_vendor_template VALUES (235,2150,0,0,0); -- Polished Scale Bracers [5/5/14]
INSERT INTO npc_vendor_template VALUES (235,2151,0,0,0); -- Polished Scale Gloves [5/5/14]
INSERT INTO npc_vendor_template VALUES (235,2152,0,0,0); -- Polished Scale Leggings [5/5/14]
INSERT INTO npc_vendor_template VALUES (235,2153,0,0,0); -- Polished Scale Vest [5/5/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2446,0,0,0 Kite Shield [3/5/15]
-- 4797,0,0,0 Fiery Cloak [1/5/2]
-- 4798,0,0,0 Heavy Runed Cloak [1/5/2]
-- 4799,0,0,0 Antiquated Cloak [1/5/2]
-- 4800,0,0,0 Mighty Chain Pants [1/5/2]
-- 4816,0,0,0 Legionnaire's Leggings [1/5/2]
-- 4827,0,0,0 Wizard's Belt [1/5/6]
-- 4828,0,0,0 Nightwind Belt [1/5/6]
-- 4829,0,0,0 Dreamer's Belt [1/5/6]
-- 4830,0,0,0 Saber Leggings [1/5/3]
-- 4831,0,0,0 Stalking Pants [1/5/4]
-- 4832,0,0,0 Mystic Sarong [1/5/4]
-- 4833,0,0,0 Glorious Shoulders [1/5/4]
-- 4835,0,0,0 Elite Shoulders [1/5/4]
-- 17192,0,0,0 Reinforced Targe [3/5/15]

INSERT INTO npc_vendor VALUES (226,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (1450,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (4886,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (226,4797,0,0,0); -- Fiery Cloak
INSERT INTO npc_vendor VALUES (226,4798,0,0,0); -- Heavy Runed Cloak
INSERT INTO npc_vendor VALUES (226,4799,0,0,0); -- Antiquated Cloak
INSERT INTO npc_vendor VALUES (226,4800,0,0,0); -- Mighty Chain Pants
INSERT INTO npc_vendor VALUES (226,4816,0,0,0); -- Legionnaire's Leggings
INSERT INTO npc_vendor VALUES (4085,4827,0,0,0); -- Wizard's Belt
INSERT INTO npc_vendor VALUES (4085,4828,0,0,0); -- Nightwind Belt
INSERT INTO npc_vendor VALUES (4085,4829,0,0,0); -- Dreamer's Belt
INSERT INTO npc_vendor VALUES (4085,4830,0,0,0); -- Saber Leggings
INSERT INTO npc_vendor VALUES (4085,4831,0,0,0); -- Stalking Pants
INSERT INTO npc_vendor VALUES (4085,4832,0,0,0); -- Mystic Sarong
INSERT INTO npc_vendor VALUES (4085,4833,0,0,0); -- Glorious Shoulders
INSERT INTO npc_vendor VALUES (4085,4835,0,0,0); -- Elite Shoulders
INSERT INTO npc_vendor VALUES (226,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (1450,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (4886,17192,0,0,0); -- Reinforced Targe

-- Total count: Templates: 6, single 19, sum 25, before: 49

-- ------------
-- Heavy Armor 8 (Light Chain)
-- NPC 4559 = HA4 + HA8
-- 2135,3080,3167,4559,16258,16693
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2135,3080,3167,4559,16258,16693);
UPDATE creature_template SET vendor_id=236 WHERE entry IN (2135,3080,3167,4559,16258,16693);

INSERT INTO npc_vendor_template VALUES (236,2376,0,0,0); -- Worn Heater Shield [6/6/7]
INSERT INTO npc_vendor_template VALUES (236,2398,0,0,0); -- Light Chain Armor [6/6/8]
INSERT INTO npc_vendor_template VALUES (236,2399,0,0,0); -- Light Chain Belt [6/6/8]
INSERT INTO npc_vendor_template VALUES (236,2400,0,0,0); -- Light Chain Leggings [6/6/8]
INSERT INTO npc_vendor_template VALUES (236,2401,0,0,0); -- Light Chain Boots [6/6/8]
INSERT INTO npc_vendor_template VALUES (236,2402,0,0,0); -- Light Chain Bracers [6/6/8]
INSERT INTO npc_vendor_template VALUES (236,2403,0,0,0); -- Light Chain Gloves [6/6/8]
INSERT INTO npc_vendor_template VALUES (236,17185,0,0,0); -- Round Buckler [6/6/7]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1200,0,0,0 Large Wooden Shield [2/6/5]
-- 1202,0,0,0 Wall Shield [2/6/8]
-- 2386,0,0,0 Rusted Chain Vest [1/6/4]
-- 2387,0,0,0 Rusted Chain Belt [1/6/4]
-- 2388,0,0,0 Rusted Chain Leggings [1/6/4]
-- 2389,0,0,0 Rusted Chain Boots [1/6/4]
-- 2390,0,0,0 Rusted Chain Bracers [1/6/4]
-- 2391,0,0,0 Rusted Chain Gloves [1/6/4]
-- 2445,0,0,0 Large Metal Shield [1/6/10]
-- 2446,0,0,0 Kite Shield [1/6/15]
-- 2880,0,0,0 Weak Flux [1/6/156]
-- 2901,0,0,0 Mining Pick [1/6/157]
-- 3466,0,0,0 Strong Flux [1/6/134]
-- 3857,0,0,0 Coal [1/6/99]
-- 17183,0,0,0 Dented Buckler [2/6/5]
-- 17187,0,0,0 Banded Buckler [2/6/8]
-- 17188,0,0,0 Ringed Buckler [1/6/10]
-- 17192,0,0,0 Reinforced Targe [1/6/15]
-- 20815,0,0,0 Jeweler's Kit [1/6/28]
-- 20824,0,0,0 Simple Grinder [1/6/28]

INSERT INTO npc_vendor VALUES (4559,1200,0,0,0); -- Large Wooden Shield
INSERT INTO npc_vendor VALUES (16693,1200,0,0,0); -- Large Wooden Shield
INSERT INTO npc_vendor VALUES (4559,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (16693,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (4559,2386,0,0,0); -- Rusted Chain Vest
INSERT INTO npc_vendor VALUES (4559,2387,0,0,0); -- Rusted Chain Belt
INSERT INTO npc_vendor VALUES (4559,2388,0,0,0); -- Rusted Chain Leggings
INSERT INTO npc_vendor VALUES (4559,2389,0,0,0); -- Rusted Chain Boots
INSERT INTO npc_vendor VALUES (4559,2390,0,0,0); -- Rusted Chain Bracers
INSERT INTO npc_vendor VALUES (4559,2391,0,0,0); -- Rusted Chain Gloves
INSERT INTO npc_vendor VALUES (16693,2445,0,0,0); -- Large Metal Shield
INSERT INTO npc_vendor VALUES (16693,2446,0,0,0); -- Kite Shield
INSERT INTO npc_vendor VALUES (3167,2880,0,0,0); -- Weak Flux
INSERT INTO npc_vendor VALUES (3167,2901,0,0,0); -- Mining Pick
INSERT INTO npc_vendor VALUES (3167,3466,0,0,0); -- Strong Flux
INSERT INTO npc_vendor VALUES (3167,3857,0,0,0); -- Coal
INSERT INTO npc_vendor VALUES (4559,17183,0,0,0); -- Dented Buckler
INSERT INTO npc_vendor VALUES (16693,17183,0,0,0); -- Dented Buckler
INSERT INTO npc_vendor VALUES (4559,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (16693,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (16693,17188,0,0,0); -- Ringed Buckler
INSERT INTO npc_vendor VALUES (16693,17192,0,0,0); -- Reinforced Targe
INSERT INTO npc_vendor VALUES (3167,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (3167,20824,0,0,0); -- Simple Grinder

-- Total count: Templates: 8, single 24, sum 32, before: 72

-- ------------
-- Heavy Armor 9 (Augmented)
-- 1322,1381,2845
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1322,1381,2845);
UPDATE creature_template SET vendor_id=237 WHERE entry IN (1322,1381,2845);

INSERT INTO npc_vendor_template VALUES (237,2417,0,0,0); -- Augmented Chain Vest [3/3/11]
INSERT INTO npc_vendor_template VALUES (237,2418,0,0,0); -- Augmented Chain Leggings [3/3/11]
INSERT INTO npc_vendor_template VALUES (237,2419,0,0,0); -- Augmented Chain Belt [3/3/11]
INSERT INTO npc_vendor_template VALUES (237,2420,0,0,0); -- Augmented Chain Boots [3/3/13]
INSERT INTO npc_vendor_template VALUES (237,2421,0,0,0); -- Augmented Chain Bracers [3/3/11]
INSERT INTO npc_vendor_template VALUES (237,2422,0,0,0); -- Augmented Chain Gloves [3/3/11]
INSERT INTO npc_vendor_template VALUES (237,2448,0,0,0); -- Heavy Pavise [3/3/15]
INSERT INTO npc_vendor_template VALUES (237,3891,0,0,0); -- Augmented Chain Helm [3/3/12]
INSERT INTO npc_vendor_template VALUES (237,17189,0,0,0); -- Metal Buckler [3/3/15]

-- Total count: Templates: 9, single 0, sum 9, before: 27

-- ------------
-- Heavy Armor 10 (Scalemail)
-- 956,3493,3543,3682,8360
-- ------------
DELETE FROM npc_vendor WHERE entry IN (956,3493,3543,3682,8360);
UPDATE creature_template SET vendor_id=238 WHERE entry IN (956,3493,3543,3682,8360);

INSERT INTO npc_vendor_template VALUES (238,285,0,0,0); -- Scalemail Vest [5/5/14]
INSERT INTO npc_vendor_template VALUES (238,286,0,0,0); -- Scalemail Pants [5/5/14]
INSERT INTO npc_vendor_template VALUES (238,287,0,0,0); -- Scalemail Boots [5/5/14]
INSERT INTO npc_vendor_template VALUES (238,718,0,0,0); -- Scalemail Gloves [5/5/14]
INSERT INTO npc_vendor_template VALUES (238,1852,0,0,0); -- Scalemail Bracers [5/5/14]
INSERT INTO npc_vendor_template VALUES (238,1853,0,0,0); -- Scalemail Belt [5/5/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 847,0,0,0 Chainmail Armor [1/5/17]
-- 848,0,0,0 Chainmail Pants [1/5/17]
-- 849,0,0,0 Chainmail Boots [1/5/17]
-- 850,0,0,0 Chainmail Gloves [1/5/17]
-- 1202,0,0,0 Wall Shield [1/5/8]
-- 1845,0,0,0 Chainmail Belt [1/5/17]
-- 1846,0,0,0 Chainmail Bracers [1/5/17]
-- 2445,0,0,0 Large Metal Shield [2/5/10]
-- 4765,2,8000,0 Enamelled Broadsword [1/5/2]
-- 4766,1,8000,0 Feral Blade [1/5/1]
-- 4777,2,8000,0 Ironwood Maul [1/5/1]
-- 4778,2,8000,0 Heavy Spiked Mace [1/5/1]
-- 4797,0,0,0 Fiery Cloak [1/5/2]
-- 4797,1,8000,0 Fiery Cloak [1/5/1]
-- 4797,1,14400,0 Fiery Cloak [1/5/1]
-- 4798,0,0,0 Heavy Runed Cloak [1/5/2]
-- 4798,1,8000,0 Heavy Runed Cloak [1/5/1]
-- 4798,1,14400,0 Heavy Runed Cloak [1/5/1]
-- 4799,0,0,0 Antiquated Cloak [1/5/2]
-- 4799,1,8000,0 Antiquated Cloak [1/5/1]
-- 4799,1,14400,0 Antiquated Cloak [1/5/1]
-- 4800,0,0,0 Mighty Chain Pants [1/5/2]
-- 4800,1,8000,0 Mighty Chain Pants [1/5/1]
-- 4800,1,14400,0 Mighty Chain Pants [1/5/1]
-- 4816,0,0,0 Legionnaire's Leggings [1/5/2]
-- 4816,1,8000,0 Legionnaire's Leggings [1/5/1]
-- 4816,1,14400,0 Legionnaire's Leggings [1/5/1]
-- 4820,1,14400,0 Guardian Buckler [1/5/1]
-- 4821,1,14400,0 Bear Buckler [1/5/1]
-- 4822,1,14400,0 Owl's Disk [1/5/1]
-- 4833,0,0,0 Glorious Shoulders [1/5/4]
-- 4835,0,0,0 Elite Shoulders [1/5/4]
-- 17187,0,0,0 Banded Buckler [1/5/8]
-- 17188,0,0,0 Ringed Buckler [2/5/10]

INSERT INTO npc_vendor VALUES (8360,847,0,0,0); -- Chainmail Armor
INSERT INTO npc_vendor VALUES (8360,848,0,0,0); -- Chainmail Pants
INSERT INTO npc_vendor VALUES (8360,849,0,0,0); -- Chainmail Boots
INSERT INTO npc_vendor VALUES (8360,850,0,0,0); -- Chainmail Gloves
INSERT INTO npc_vendor VALUES (8360,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (8360,1845,0,0,0); -- Chainmail Belt
INSERT INTO npc_vendor VALUES (8360,1846,0,0,0); -- Chainmail Bracers
INSERT INTO npc_vendor VALUES (3493,2445,0,0,0); -- Large Metal Shield
INSERT INTO npc_vendor VALUES (8360,2445,0,0,0); -- Large Metal Shield
INSERT INTO npc_vendor VALUES (3682,4765,2,8000,0); -- Enamelled Broadsword
INSERT INTO npc_vendor VALUES (3682,4766,1,8000,0); -- Feral Blade
INSERT INTO npc_vendor VALUES (3682,4777,2,8000,0); -- Ironwood Maul
INSERT INTO npc_vendor VALUES (3682,4778,2,8000,0); -- Heavy Spiked Mace
INSERT INTO npc_vendor VALUES (3543,4797,0,0,0); -- Fiery Cloak
INSERT INTO npc_vendor VALUES (3682,4797,1,8000,0); -- Fiery Cloak
INSERT INTO npc_vendor VALUES (3493,4797,1,14400,0); -- Fiery Cloak
INSERT INTO npc_vendor VALUES (3543,4798,0,0,0); -- Heavy Runed Cloak
INSERT INTO npc_vendor VALUES (3682,4798,1,8000,0); -- Heavy Runed Cloak
INSERT INTO npc_vendor VALUES (3493,4798,1,14400,0); -- Heavy Runed Cloak
INSERT INTO npc_vendor VALUES (3543,4799,0,0,0); -- Antiquated Cloak
INSERT INTO npc_vendor VALUES (3682,4799,1,8000,0); -- Antiquated Cloak
INSERT INTO npc_vendor VALUES (3493,4799,1,14400,0); -- Antiquated Cloak
INSERT INTO npc_vendor VALUES (3543,4800,0,0,0); -- Mighty Chain Pants
INSERT INTO npc_vendor VALUES (3682,4800,1,8000,0); -- Mighty Chain Pants
INSERT INTO npc_vendor VALUES (3493,4800,1,14400,0); -- Mighty Chain Pants
INSERT INTO npc_vendor VALUES (3543,4816,0,0,0); -- Legionnaire's Leggings
INSERT INTO npc_vendor VALUES (3682,4816,1,8000,0); -- Legionnaire's Leggings
INSERT INTO npc_vendor VALUES (3493,4816,1,14400,0); -- Legionnaire's Leggings
INSERT INTO npc_vendor VALUES (3493,4820,1,14400,0); -- Guardian Buckler
INSERT INTO npc_vendor VALUES (3493,4821,1,14400,0); -- Bear Buckler
INSERT INTO npc_vendor VALUES (3493,4822,1,14400,0); -- Owl's Disk
INSERT INTO npc_vendor VALUES (3543,4833,0,0,0); -- Glorious Shoulders
INSERT INTO npc_vendor VALUES (3543,4835,0,0,0); -- Elite Shoulders
INSERT INTO npc_vendor VALUES (8360,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (3493,17188,0,0,0); -- Ringed Buckler
INSERT INTO npc_vendor VALUES (8360,17188,0,0,0); -- Ringed Buckler

-- Total count: Templates: 6, single 36, sum 42, before: 66


-- ------------
-- Heavy Armor 11 (Chainmail)
-- 167,1362,3553,4187,4560,5107,11703
-- ------------
DELETE FROM npc_vendor WHERE entry IN (167,1362,3553,4187,4560,5107,11703);
UPDATE creature_template SET vendor_id=239 WHERE entry IN (167,1362,3553,4187,4560,5107,11703);

INSERT INTO npc_vendor_template VALUES (239,847,0,0,0); -- Chainmail Armor [7/7/17]
INSERT INTO npc_vendor_template VALUES (239,848,0,0,0); -- Chainmail Pants [7/7/17]
INSERT INTO npc_vendor_template VALUES (239,849,0,0,0); -- Chainmail Boots [7/7/17]
INSERT INTO npc_vendor_template VALUES (239,850,0,0,0); -- Chainmail Gloves [7/7/17]
INSERT INTO npc_vendor_template VALUES (239,1845,0,0,0); -- Chainmail Belt [7/7/17]
INSERT INTO npc_vendor_template VALUES (239,1846,0,0,0); -- Chainmail Bracers [7/7/17]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1202,0,0,0 Wall Shield [3/7/8]
-- 4765,0,0,0 Enamelled Broadsword [1/7/1]
-- 4766,0,0,0 Feral Blade [1/7/1]
-- 17187,0,0,0 Banded Buckler [3/7/8]

INSERT INTO npc_vendor VALUES (4187,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (4560,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (5107,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (167,4765,0,0,0); -- Enamelled Broadsword
INSERT INTO npc_vendor VALUES (167,4766,0,0,0); -- Feral Blade
INSERT INTO npc_vendor VALUES (4187,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (4560,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (5107,17187,0,0,0); -- Banded Buckler

-- Total count: Templates: 6, single 8, sum 14, before: 50

-- ------------
-- Heavy Armor 12 (Scalemail, Chainmail, Light Mail)
-- 1294,16750
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1294,16750);
UPDATE creature_template SET vendor_id=240 WHERE entry IN (1294,16750);

INSERT INTO npc_vendor_template VALUES (240,285,0,0,0); -- Scalemail Vest [2/2/14]
INSERT INTO npc_vendor_template VALUES (240,286,0,0,0); -- Scalemail Pants [2/2/14]
INSERT INTO npc_vendor_template VALUES (240,287,0,0,0); -- Scalemail Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (240,718,0,0,0); -- Scalemail Gloves [2/2/14]
INSERT INTO npc_vendor_template VALUES (240,847,0,0,0); -- Chainmail Armor [2/2/17]
INSERT INTO npc_vendor_template VALUES (240,848,0,0,0); -- Chainmail Pants [2/2/17]
INSERT INTO npc_vendor_template VALUES (240,849,0,0,0); -- Chainmail Boots [2/2/17]
INSERT INTO npc_vendor_template VALUES (240,850,0,0,0); -- Chainmail Gloves [2/2/17]
INSERT INTO npc_vendor_template VALUES (240,1845,0,0,0); -- Chainmail Belt [2/2/17]
INSERT INTO npc_vendor_template VALUES (240,1846,0,0,0); -- Chainmail Bracers [2/2/17]
INSERT INTO npc_vendor_template VALUES (240,1852,0,0,0); -- Scalemail Bracers [2/2/14]
INSERT INTO npc_vendor_template VALUES (240,1853,0,0,0); -- Scalemail Belt [2/2/14]
INSERT INTO npc_vendor_template VALUES (240,2392,0,0,0); -- Light Mail Armor [2/2/12]
INSERT INTO npc_vendor_template VALUES (240,2393,0,0,0); -- Light Mail Belt [2/2/12]
INSERT INTO npc_vendor_template VALUES (240,2394,0,0,0); -- Light Mail Leggings [2/2/12]
INSERT INTO npc_vendor_template VALUES (240,2395,0,0,0); -- Light Mail Boots [2/2/12]
INSERT INTO npc_vendor_template VALUES (240,2396,0,0,0); -- Light Mail Bracers [2/2/12]
INSERT INTO npc_vendor_template VALUES (240,2397,0,0,0); -- Light Mail Gloves [2/2/12]

-- Total count: Templates: 18, single 0, sum 18, before: 36

-- ------------
-- Heavy Armor 13 (Scalemail, Chainmail, Light Chain)
-- 3319,16625
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3319,16625);
UPDATE creature_template SET vendor_id=241 WHERE entry IN (3319,16625);

INSERT INTO npc_vendor_template VALUES (241,285,0,0,0); -- Scalemail Vest [2/2/14]
INSERT INTO npc_vendor_template VALUES (241,286,0,0,0); -- Scalemail Pants [2/2/14]
INSERT INTO npc_vendor_template VALUES (241,287,0,0,0); -- Scalemail Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (241,718,0,0,0); -- Scalemail Gloves [2/2/14]
INSERT INTO npc_vendor_template VALUES (241,847,0,0,0); -- Chainmail Armor [2/2/17]
INSERT INTO npc_vendor_template VALUES (241,848,0,0,0); -- Chainmail Pants [2/2/17]
INSERT INTO npc_vendor_template VALUES (241,849,0,0,0); -- Chainmail Boots [2/2/17]
INSERT INTO npc_vendor_template VALUES (241,850,0,0,0); -- Chainmail Gloves [2/2/17]
INSERT INTO npc_vendor_template VALUES (241,1845,0,0,0); -- Chainmail Belt [2/2/17]
INSERT INTO npc_vendor_template VALUES (241,1846,0,0,0); -- Chainmail Bracers [2/2/17]
INSERT INTO npc_vendor_template VALUES (241,1852,0,0,0); -- Scalemail Bracers [2/2/14]
INSERT INTO npc_vendor_template VALUES (241,1853,0,0,0); -- Scalemail Belt [2/2/14]
INSERT INTO npc_vendor_template VALUES (241,2398,0,0,0); -- Light Chain Armor [2/2/8]
INSERT INTO npc_vendor_template VALUES (241,2399,0,0,0); -- Light Chain Belt [2/2/8]
INSERT INTO npc_vendor_template VALUES (241,2400,0,0,0); -- Light Chain Leggings [2/2/8]
INSERT INTO npc_vendor_template VALUES (241,2401,0,0,0); -- Light Chain Boots [2/2/8]
INSERT INTO npc_vendor_template VALUES (241,2402,0,0,0); -- Light Chain Bracers [2/2/8]
INSERT INTO npc_vendor_template VALUES (241,2403,0,0,0); -- Light Chain Gloves [2/2/8]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1202,0,0,0 Wall Shield [1/2/8]
-- 2376,0,0,0 Worn Heater Shield [1/2/7]
-- 2445,0,0,0 Large Metal Shield [1/2/10]
-- 17185,0,0,0 Round Buckler [1/2/7]
-- 17187,0,0,0 Banded Buckler [1/2/8]
-- 17188,0,0,0 Ringed Buckler [1/2/10]

INSERT INTO npc_vendor VALUES (3319,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (3319,2376,0,0,0); -- Worn Heater Shield
INSERT INTO npc_vendor VALUES (3319,2445,0,0,0); -- Large Metal Shield
INSERT INTO npc_vendor VALUES (3319,17185,0,0,0); -- Round Buckler
INSERT INTO npc_vendor VALUES (3319,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (3319,17188,0,0,0); -- Ringed Buckler

-- Total count: Templates: 18, single 6, sum 24, before: 42

-- ------------
-- Heavy Armor 14 (Scalemail, Polished Scale)
-- 1341,5125
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1341,5125);
UPDATE creature_template SET vendor_id=242 WHERE entry IN (1341,5125);

INSERT INTO npc_vendor_template VALUES (242,285,0,0,0); -- Scalemail Vest [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,286,0,0,0); -- Scalemail Pants [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,287,0,0,0); -- Scalemail Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,718,0,0,0); -- Scalemail Gloves [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,1852,0,0,0); -- Scalemail Bracers [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,1853,0,0,0); -- Scalemail Belt [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,2148,0,0,0); -- Polished Scale Belt [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,2149,0,0,0); -- Polished Scale Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,2150,0,0,0); -- Polished Scale Bracers [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,2151,0,0,0); -- Polished Scale Gloves [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,2152,0,0,0); -- Polished Scale Leggings [2/2/14]
INSERT INTO npc_vendor_template VALUES (242,2153,0,0,0); -- Polished Scale Vest [2/2/14]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2417,0,0,0 Augmented Chain Vest [1/2/11]
-- 2418,0,0,0 Augmented Chain Leggings [1/2/11]
-- 2419,0,0,0 Augmented Chain Belt [1/2/11]
-- 2420,0,0,0 Augmented Chain Boots [1/2/13]
-- 2421,0,0,0 Augmented Chain Bracers [1/2/11]
-- 2422,0,0,0 Augmented Chain Gloves [1/2/11]
-- 2448,0,0,0 Heavy Pavise [1/2/15]
-- 3891,0,0,0 Augmented Chain Helm [1/2/12]
-- 17189,0,0,0 Metal Buckler [1/2/15]

INSERT INTO npc_vendor VALUES (5125,2417,0,0,0); -- Augmented Chain Vest
INSERT INTO npc_vendor VALUES (5125,2418,0,0,0); -- Augmented Chain Leggings
INSERT INTO npc_vendor VALUES (5125,2419,0,0,0); -- Augmented Chain Belt
INSERT INTO npc_vendor VALUES (5125,2420,0,0,0); -- Augmented Chain Boots
INSERT INTO npc_vendor VALUES (5125,2421,0,0,0); -- Augmented Chain Bracers
INSERT INTO npc_vendor VALUES (5125,2422,0,0,0); -- Augmented Chain Gloves
INSERT INTO npc_vendor VALUES (5125,2448,0,0,0); -- Heavy Pavise
INSERT INTO npc_vendor VALUES (5125,3891,0,0,0); -- Augmented Chain Helm
INSERT INTO npc_vendor VALUES (5125,17189,0,0,0); -- Metal Buckler

-- Total count: Templates: 12, single 9, sum 21, before: 33

-- ------------
-- Shields 1
-- 1319,4240,16762
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1319,4240,16762);
UPDATE creature_template SET vendor_id=243 WHERE entry IN (1319,4240,16762);

INSERT INTO npc_vendor_template VALUES (243,2445,0,0,0); -- Large Metal Shield [3/3/10]
INSERT INTO npc_vendor_template VALUES (243,2446,0,0,0); -- Kite Shield [3/3/15]
INSERT INTO npc_vendor_template VALUES (243,17188,0,0,0); -- Ringed Buckler [3/3/10]
INSERT INTO npc_vendor_template VALUES (243,17192,0,0,0); -- Reinforced Targe [3/3/15]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 1201,0,0,0 Dull Heater Shield [2/3/7]
-- 1202,0,0,0 Wall Shield [1/3/8]
-- 2129,0,0,0 Large Round Shield [2/3/6]
-- 2448,0,0,0 Heavy Pavise [2/3/15]
-- 2451,0,0,0 Crested Heater Shield [2/3/16]
-- 17184,0,0,0 Small Shield [2/3/6]
-- 17186,0,0,0 Small Targe [2/3/7]
-- 17187,0,0,0 Banded Buckler [1/3/8]
-- 17189,0,0,0 Metal Buckler [2/3/15]
-- 17190,0,0,0 Ornate Buckler [2/3/16]

INSERT INTO npc_vendor VALUES (4240,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (16762,1201,0,0,0); -- Dull Heater Shield
INSERT INTO npc_vendor VALUES (16762,1202,0,0,0); -- Wall Shield
INSERT INTO npc_vendor VALUES (4240,2129,0,0,0); -- Large Round Shield
INSERT INTO npc_vendor VALUES (16762,2129,0,0,0); -- Large Round Shield
INSERT INTO npc_vendor VALUES (1319,2448,0,0,0); -- Heavy Pavise
INSERT INTO npc_vendor VALUES (4240,2448,0,0,0); -- Heavy Pavise
INSERT INTO npc_vendor VALUES (1319,2451,0,0,0); -- Crested Heater Shield
INSERT INTO npc_vendor VALUES (4240,2451,0,0,0); -- Crested Heater Shield
INSERT INTO npc_vendor VALUES (4240,17184,0,0,0); -- Small Shield
INSERT INTO npc_vendor VALUES (16762,17184,0,0,0); -- Small Shield
INSERT INTO npc_vendor VALUES (4240,17186,0,0,0); -- Small Targe
INSERT INTO npc_vendor VALUES (16762,17186,0,0,0); -- Small Targe
INSERT INTO npc_vendor VALUES (16762,17187,0,0,0); -- Banded Buckler
INSERT INTO npc_vendor VALUES (1319,17189,0,0,0); -- Metal Buckler
INSERT INTO npc_vendor VALUES (4240,17189,0,0,0); -- Metal Buckler
INSERT INTO npc_vendor VALUES (1319,17190,0,0,0); -- Ornate Buckler
INSERT INTO npc_vendor VALUES (4240,17190,0,0,0); -- Ornate Buckler

-- Total count: Templates: 4, single 18, sum 22, before: 30

-- ------------
-- Wands
-- 1312,5133,5754,5816,16632,16636,19236
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1312,5133,5754,5816,16632,16636,19236);
UPDATE creature_template SET vendor_id=337 WHERE entry IN (1312,5133,5754,5816,16632,16636,19236);

INSERT INTO npc_vendor_template VALUES (337,5208,0,0,0); -- Smoldering Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5209,0,0,0); -- Gloom Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5210,0,0,0); -- Burning Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5211,0,0,0); -- Dusk Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5236,0,0,0); -- Combustible Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5238,0,0,0); -- Pitchwood Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5239,0,0,0); -- Blackbone Wand [7/7/7]
INSERT INTO npc_vendor_template VALUES (337,5347,0,0,0); -- Pestilent Wand [7/7/7]

-- Total count: Templates: 8, single 0, sum 8, before: 56

-- ------------
-- Ammunition 1
-- 19339,19351,19473,21483,21488
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19339,19351,19473,21483,21488);
UPDATE creature_template SET vendor_id=338 WHERE entry IN (19339,19351,19473,21483,21488);

INSERT INTO npc_vendor_template VALUES (338,11284,0,0,0); -- Accurate Slugs [5/5/95]
INSERT INTO npc_vendor_template VALUES (338,11285,0,0,0); -- Jagged Arrow [5/5/100]
INSERT INTO npc_vendor_template VALUES (338,28053,0,0,0); -- Wicked Arrow [5/5/100]
INSERT INTO npc_vendor_template VALUES (338,28056,0,0,0); -- Blackflight Arrow [5/5/49]
INSERT INTO npc_vendor_template VALUES (338,28060,0,0,0); -- Impact Shot [5/5/89]
INSERT INTO npc_vendor_template VALUES (338,28061,0,0,0); -- Ironbite Shell [5/5/51]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 23807,1,43200,0 Schematic: Adamantite Scope [1/5/1]
-- 29013,0,0,0 Jagged Throwing Axe [1/5/73]
-- 29014,0,0,0 Blacksteel Throwing Dagger [1/5/72]
-- 30611,0,0,0 Halaani Razorshaft [2/5/2]
-- 30612,0,0,0 Halaani Grimshot [2/5/2]
-- 30757,0,0,0 Draenic Light Crossbow [1/5/4]
-- 30758,0,0,0 Aldor Guardian Rifle [2/5/5]
-- 30759,0,0,0 Mag'hari Light Recurve [1/5/4]

INSERT INTO npc_vendor VALUES (19351,23807,1,43200,0); -- Schematic: Adamantite Scope
INSERT INTO npc_vendor VALUES (19473,29013,0,0,0); -- Jagged Throwing Axe
INSERT INTO npc_vendor VALUES (19473,29014,0,0,0); -- Blacksteel Throwing Dagger
INSERT INTO npc_vendor VALUES (21483,30611,0,0,0); -- Halaani Razorshaft
INSERT INTO npc_vendor VALUES (21488,30611,0,0,0); -- Halaani Razorshaft
INSERT INTO npc_vendor VALUES (21483,30612,0,0,0); -- Halaani Grimshot
INSERT INTO npc_vendor VALUES (21488,30612,0,0,0); -- Halaani Grimshot
INSERT INTO npc_vendor VALUES (19339,30757,0,0,0); -- Draenic Light Crossbow
INSERT INTO npc_vendor VALUES (19339,30758,0,0,0); -- Aldor Guardian Rifle
INSERT INTO npc_vendor VALUES (19351,30758,0,0,0); -- Aldor Guardian Rifle
INSERT INTO npc_vendor VALUES (19339,30759,0,0,0); -- Mag'hari Light Recurve

-- Total count: Templates: 6, single 11, sum 17, before: 41

-- ------------
-- Cheese
-- 483,18929,23521,23604
-- ------------
DELETE FROM npc_vendor WHERE entry IN (483,18929,23521,23604);
UPDATE creature_template SET vendor_id=449 WHERE entry IN (483,18929,23521,23604);

INSERT INTO npc_vendor_template VALUES (449,414,0,0,0); -- Dalaran Sharp [4/4/26]
INSERT INTO npc_vendor_template VALUES (449,422,0,0,0); -- Dwarven Mild [4/4/27]
INSERT INTO npc_vendor_template VALUES (449,1707,0,0,0); -- Stormwind Brie [4/4/26]
INSERT INTO npc_vendor_template VALUES (449,2070,0,0,0); -- Darnassian Bleu [4/4/26]
INSERT INTO npc_vendor_template VALUES (449,3927,0,0,0); -- Fine Aged Cheddar [4/4/26]
INSERT INTO npc_vendor_template VALUES (449,8932,0,0,0); -- Alterac Swiss [4/4/35]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2091,0,0,0 Magic Dust [1/4/1]
-- 27857,0,0,0 Garadar Sharp [2/4/11]
-- 29448,0,0,0 Mag'har Mild Cheese [2/4/11]
-- 34065,0,0,0 Spiced Onion Cheese [2/4/2]

INSERT INTO npc_vendor VALUES (18929,2091,0,0,0); -- Magic Dust
INSERT INTO npc_vendor VALUES (23521,27857,0,0,0); -- Garadar Sharp
INSERT INTO npc_vendor VALUES (23604,27857,0,0,0); -- Garadar Sharp
INSERT INTO npc_vendor VALUES (23521,29448,0,0,0); -- Mag'har Mild Cheese
INSERT INTO npc_vendor VALUES (23604,29448,0,0,0); -- Mag'har Mild Cheese
INSERT INTO npc_vendor VALUES (23521,34065,0,0,0); -- Spiced Onion Cheese
INSERT INTO npc_vendor VALUES (23604,34065,0,0,0); -- Spiced Onion Cheese

-- Total count: Templates: 6, single 7, sum 13, before: 31

-- ------------
-- Medic
-- 18990,18991
-- ------------
DELETE FROM npc_vendor WHERE entry IN (18990,18991);
UPDATE creature_template SET vendor_id=130 WHERE entry IN (18990,18991);

INSERT INTO npc_vendor_template VALUES (130,21992,0,0,0); -- Manual: Netherweave Bandage [2/2/2]
INSERT INTO npc_vendor_template VALUES (130,21993,0,0,0); -- Manual: Heavy Netherweave Bandage [2/2/2]
INSERT INTO npc_vendor_template VALUES (130,22012,0,0,0); -- Master First Aid - Doctor in the House [2/2/2]

-- Total count: Templates: 3, single 0, sum 3, before: 6

-- ------------
-- Smokywood Pastures 1
-- 14961,14962
-- ------------
DELETE FROM npc_vendor WHERE entry IN (14961,14962);
UPDATE creature_template SET vendor_id=450 WHERE entry IN (14961,14962);

INSERT INTO npc_vendor_template VALUES (450,8766,0,0,0); -- Morning Glory Dew [2/2/188]
INSERT INTO npc_vendor_template VALUES (450,8948,0,0,0); -- Dried King Bolete [2/2/27]
INSERT INTO npc_vendor_template VALUES (450,8952,0,0,0); -- Roasted Quail [2/2/101]
INSERT INTO npc_vendor_template VALUES (450,8953,0,0,0); -- Deep Fried Plantains [2/2/41]

-- Total count: Templates: 4, single 0, sum 4, before: 8

-- ------------
-- Smokywood Pastures 2
-- 14963,15124,15125
-- ------------
DELETE FROM npc_vendor WHERE entry IN (14963,15124,15125);
UPDATE creature_template SET vendor_id=451 WHERE entry IN (14963,15124,15125);

INSERT INTO npc_vendor_template VALUES (451,1205,0,0,0); -- Melon Juice [3/3/175]
INSERT INTO npc_vendor_template VALUES (451,1645,0,0,0); -- Moonberry Juice [3/3/163]
INSERT INTO npc_vendor_template VALUES (451,1708,0,0,0); -- Sweet Nectar [3/3/164]
INSERT INTO npc_vendor_template VALUES (451,3770,0,0,0); -- Mutton Chop [3/3/66]
INSERT INTO npc_vendor_template VALUES (451,3771,0,0,0); -- Wild Hog Shank [3/3/66]
INSERT INTO npc_vendor_template VALUES (451,4538,0,0,0); -- Snapvine Watermelon [3/3/25]
INSERT INTO npc_vendor_template VALUES (451,4539,0,0,0); -- Goldenbark Apple [3/3/25]
INSERT INTO npc_vendor_template VALUES (451,4599,0,0,0); -- Cured Ham Steak [3/3/67]
INSERT INTO npc_vendor_template VALUES (451,4602,0,0,0); -- Moon Harvest Pumpkin [3/3/24]
INSERT INTO npc_vendor_template VALUES (451,4606,0,0,0); -- Spongy Morel [3/3/21]
INSERT INTO npc_vendor_template VALUES (451,4607,0,0,0); -- Delicious Cave Mold [3/3/21]
INSERT INTO npc_vendor_template VALUES (451,4608,0,0,0); -- Raw Black Truffle [3/3/21]
INSERT INTO npc_vendor_template VALUES (451,8766,0,0,0); -- Morning Glory Dew [3/3/188]
INSERT INTO npc_vendor_template VALUES (451,8948,0,0,0); -- Dried King Bolete [3/3/27]
INSERT INTO npc_vendor_template VALUES (451,8952,0,0,0); -- Roasted Quail [3/3/101]
INSERT INTO npc_vendor_template VALUES (451,8953,0,0,0); -- Deep Fried Plantains [3/3/41]

-- Total count: Templates: 16, single 0, sum 16, before: 48

-- ------------
-- Flowers
-- 1302,1303,3014
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1302,1303,3014);
UPDATE creature_template SET vendor_id=19 WHERE entry IN (1302,1303,3014);

INSERT INTO npc_vendor_template VALUES (19,3419,0,0,0); -- Red Rose [3/3/3]
INSERT INTO npc_vendor_template VALUES (19,3420,0,0,0); -- Black Rose [3/3/3]
INSERT INTO npc_vendor_template VALUES (19,3421,0,0,0); -- Simple Wildflowers [3/3/3]
INSERT INTO npc_vendor_template VALUES (19,3422,0,0,0); -- Beautiful Wildflowers [3/3/3]
INSERT INTO npc_vendor_template VALUES (19,3423,0,0,0); -- Bouquet of White Roses [3/3/3]
INSERT INTO npc_vendor_template VALUES (19,3424,0,0,0); -- Bouquet of Black Roses [3/3/3]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2665,0,0,0 Stormwind Seasoning Herbs [1/3/1]
-- 3371,0,0,0 Empty Vial [1/3/133]
-- 3372,0,0,0 Leaded Vial [1/3/115]
-- 8925,0,0,0 Crystal Vial [1/3/119]
-- 18256,0,0,0 Imbued Vial [1/3/88]

INSERT INTO npc_vendor VALUES (1303,2665,0,0,0); -- Stormwind Seasoning Herbs
INSERT INTO npc_vendor VALUES (3014,3371,0,0,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (3014,3372,0,0,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (3014,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (3014,18256,0,0,0); -- Imbued Vial

-- Total count: Templates: 6, single 5, sum 11, before: 23

-- ------------
-- Enchanting 1
-- 1318,4617,5158,5757,5758,15198,15419,16635,16722,18753,18773,18951,19234,19537,19663
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1318,4617,5158,5757,5758,15198,15419,16635,16722,18753,18773,18951,19234,19537,19663);
UPDATE creature_template SET vendor_id=131 WHERE entry IN (1318,4617,5158,5757,5758,15198,15419,16635,16722,18753,18773,18951,19234,19537,19663);

INSERT INTO npc_vendor_template VALUES (131,4470,0,0,0); -- Simple Wood [15/15/132]
INSERT INTO npc_vendor_template VALUES (131,6217,0,0,0); -- Copper Rod [15/15/87]
INSERT INTO npc_vendor_template VALUES (131,6342,1,7200,0); -- Formula: Enchant Chest - Minor Mana [15/15/17]
INSERT INTO npc_vendor_template VALUES (131,10938,2,7200,0); -- Lesser Magic Essence [15/15/17]
INSERT INTO npc_vendor_template VALUES (131,10940,4,7200,0); -- Strange Dust [15/15/15]
INSERT INTO npc_vendor_template VALUES (131,11291,0,0,0); -- Star Wood [15/15/18]
INSERT INTO npc_vendor_template VALUES (131,20752,0,0,0); -- Formula: Minor Mana Oil [15/15/18]
INSERT INTO npc_vendor_template VALUES (131,20753,0,0,0); -- Formula: Lesser Wizard Oil [15/15/18]
INSERT INTO npc_vendor_template VALUES (131,20758,0,0,0); -- Formula: Minor Wizard Oil [15/15/18]
INSERT INTO npc_vendor_template VALUES (131,22307,0,0,0); -- Pattern: Enchanted Mageweave Pouch [15/15/18]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6346,1,7200,0 Formula: Enchant Chest - Lesser Mana [1/15/2]
-- 6349,0,0,0 Formula: Enchant 2H Weapon - Lesser Intellect [1/15/1]
-- 20732,0,0,0 Formula: Enchant Cloak - Greater Fire Resistance [2/15/2]
-- 20733,0,0,0 Formula: Enchant Cloak - Greater Nature Resistance [2/15/2]
-- 20754,0,0,0 Formula: Lesser Mana Oil [2/15/2]
-- 20755,0,0,0 Formula: Wizard Oil [2/15/2]
-- 22308,0,0,0 Pattern: Enchanted Runecloth Bag [2/15/2]
-- 22562,1,43200,0 Formula: Superior Mana Oil [3/15/3]
-- 22563,1,43200,0 Formula: Superior Wizard Oil [3/15/3]
-- 22565,1,43200,0 Formula: Large Prismatic Shard [3/15/3]
-- 25849,1,43200,0 Formula: Runed Eternium Rod [1/15/1]
-- 28282,1,43200,0 Formula: Enchant Shield - Major Stamina [1/15/1]

INSERT INTO npc_vendor VALUES (5757,6346,1,7200,0); -- Formula: Enchant Chest - Lesser Mana
INSERT INTO npc_vendor VALUES (5158,6349,0,0,0); -- Formula: Enchant 2H Weapon - Lesser Intellect
INSERT INTO npc_vendor VALUES (15198,20732,0,0,0); -- Formula: Enchant Cloak - Greater Fire Resistance
INSERT INTO npc_vendor VALUES (15419,20732,0,0,0); -- Formula: Enchant Cloak - Greater Fire Resistance
INSERT INTO npc_vendor VALUES (15198,20733,0,0,0); -- Formula: Enchant Cloak - Greater Nature Resistance
INSERT INTO npc_vendor VALUES (15419,20733,0,0,0); -- Formula: Enchant Cloak - Greater Nature Resistance
INSERT INTO npc_vendor VALUES (15198,20754,0,0,0); -- Formula: Lesser Mana Oil
INSERT INTO npc_vendor VALUES (15419,20754,0,0,0); -- Formula: Lesser Mana Oil
INSERT INTO npc_vendor VALUES (15198,20755,0,0,0); -- Formula: Wizard Oil
INSERT INTO npc_vendor VALUES (15419,20755,0,0,0); -- Formula: Wizard Oil
INSERT INTO npc_vendor VALUES (15198,22308,0,0,0); -- Pattern: Enchanted Runecloth Bag
INSERT INTO npc_vendor VALUES (15419,22308,0,0,0); -- Pattern: Enchanted Runecloth Bag
INSERT INTO npc_vendor VALUES (16635,22562,1,43200,0); -- Formula: Superior Mana Oil
INSERT INTO npc_vendor VALUES (16722,22562,1,43200,0); -- Formula: Superior Mana Oil
INSERT INTO npc_vendor VALUES (19663,22562,1,43200,0); -- Formula: Superior Mana Oil
INSERT INTO npc_vendor VALUES (16635,22563,1,43200,0); -- Formula: Superior Wizard Oil
INSERT INTO npc_vendor VALUES (16722,22563,1,43200,0); -- Formula: Superior Wizard Oil
INSERT INTO npc_vendor VALUES (19663,22563,1,43200,0); -- Formula: Superior Wizard Oil
INSERT INTO npc_vendor VALUES (16635,22565,1,43200,0); -- Formula: Large Prismatic Shard
INSERT INTO npc_vendor VALUES (16722,22565,1,43200,0); -- Formula: Large Prismatic Shard
INSERT INTO npc_vendor VALUES (19663,22565,1,43200,0); -- Formula: Large Prismatic Shard
INSERT INTO npc_vendor VALUES (19663,25849,1,43200,0); -- Formula: Runed Eternium Rod
INSERT INTO npc_vendor VALUES (19663,28282,1,43200,0); -- Formula: Enchant Shield - Major Stamina

-- Total count: Templates: 10, single 23, sum 33, before: 173

-- ------------
-- Enchanting 2
-- 3012,3346,4228
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3012,3346,4228);
UPDATE creature_template SET vendor_id=132 WHERE entry IN (3012,3346,4228);

INSERT INTO npc_vendor_template VALUES (132,4470,0,0,0); -- Simple Wood [3/3/132]
INSERT INTO npc_vendor_template VALUES (132,6217,0,0,0); -- Copper Rod [3/3/87]
INSERT INTO npc_vendor_template VALUES (132,11291,0,0,0); -- Star Wood [3/3/18]
INSERT INTO npc_vendor_template VALUES (132,20752,0,0,0); -- Formula: Minor Mana Oil [3/3/18]
INSERT INTO npc_vendor_template VALUES (132,20753,0,0,0); -- Formula: Lesser Wizard Oil [3/3/18]
INSERT INTO npc_vendor_template VALUES (132,20758,0,0,0); -- Formula: Minor Wizard Oil [3/3/18]
INSERT INTO npc_vendor_template VALUES (132,22307,0,0,0); -- Pattern: Enchanted Mageweave Pouch [3/3/18]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 6342,1,1800,0 Formula: Enchant Chest - Minor Mana [1/3/1]
-- 6342,1,7200,0 Formula: Enchant Chest - Minor Mana [2/3/17]
-- 6346,1,7200,0 Formula: Enchant Chest - Lesser Mana [1/3/2]
-- 6349,1,7200,0 Formula: Enchant 2H Weapon - Lesser Intellect [2/3/2]
-- 6377,1,7200,0 Formula: Enchant Boots - Minor Agility [1/3/1]
-- 10938,2,3600,0 Lesser Magic Essence [1/3/1]
-- 10938,2,7200,0 Lesser Magic Essence [2/3/17]
-- 10940,2,7200,0 Strange Dust [1/3/1]
-- 10940,3,7200,0 Strange Dust [1/3/1]
-- 10940,4,3600,0 Strange Dust [1/3/1]

INSERT INTO npc_vendor VALUES (4228,6342,1,1800,0); -- Formula: Enchant Chest - Minor Mana
INSERT INTO npc_vendor VALUES (3012,6342,1,7200,0); -- Formula: Enchant Chest - Minor Mana
INSERT INTO npc_vendor VALUES (3346,6342,1,7200,0); -- Formula: Enchant Chest - Minor Mana
INSERT INTO npc_vendor VALUES (3346,6346,1,7200,0); -- Formula: Enchant Chest - Lesser Mana
INSERT INTO npc_vendor VALUES (3012,6349,1,7200,0); -- Formula: Enchant 2H Weapon - Lesser Intellect
INSERT INTO npc_vendor VALUES (3346,6349,1,7200,0); -- Formula: Enchant 2H Weapon - Lesser Intellect
INSERT INTO npc_vendor VALUES (3012,6377,1,7200,0); -- Formula: Enchant Boots - Minor Agility
INSERT INTO npc_vendor VALUES (4228,10938,2,3600,0); -- Lesser Magic Essence
INSERT INTO npc_vendor VALUES (3012,10938,2,7200,0); -- Lesser Magic Essence
INSERT INTO npc_vendor VALUES (3346,10938,2,7200,0); -- Lesser Magic Essence
INSERT INTO npc_vendor VALUES (3346,10940,2,7200,0); -- Strange Dust
INSERT INTO npc_vendor VALUES (3012,10940,3,7200,0); -- Strange Dust
INSERT INTO npc_vendor VALUES (4228,10940,4,3600,0); -- Strange Dust

-- Total count: Templates: 7, single 13, sum 20, before: 34

-- ------------
-- Engineering 1
-- Once we reach enough bronze tubes, they should be split off
-- 2685,2687,2688,3413,3495,6730,8678,8679,9544,9676,11185,14337,14637,21112
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2685,2687,2688,3413,3495,6730,8678,8679,9544,9676,11185,14337,14637,21112);
UPDATE creature_template SET vendor_id=133 WHERE entry IN (2685,2687,2688,3413,3495,6730,8678,8679,9544,9676,11185,14337,14637,21112);

INSERT INTO npc_vendor_template VALUES (133,2880,0,0,0); -- Weak Flux [14/14/156]
INSERT INTO npc_vendor_template VALUES (133,2901,0,0,0); -- Mining Pick [14/14/157]
INSERT INTO npc_vendor_template VALUES (133,3466,0,0,0); -- Strong Flux [14/14/134]
INSERT INTO npc_vendor_template VALUES (133,4357,4,10800,0); -- Rough Blasting Powder [14/14/35]
INSERT INTO npc_vendor_template VALUES (133,4364,4,10800,0); -- Coarse Blasting Powder [14/14/35]
INSERT INTO npc_vendor_template VALUES (133,4399,0,0,0); -- Wooden Stock [14/14/80]
INSERT INTO npc_vendor_template VALUES (133,4400,0,0,0); -- Heavy Stock [14/14/80]
INSERT INTO npc_vendor_template VALUES (133,5956,0,0,0); -- Blacksmith Hammer [14/14/144]
INSERT INTO npc_vendor_template VALUES (133,10647,0,0,0); -- Engineer's Ink [14/14/39]
INSERT INTO npc_vendor_template VALUES (133,10648,0,0,0); -- Blank Parchment [14/14/40]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2102,0,0,0 Small Ammo Pouch [1/14/2]
-- 2516,0,0,0 Light Shot [1/14/72]
-- 2519,0,0,0 Heavy Shot [1/14/84]
-- 3033,0,0,0 Solid Shot [1/14/61]
-- 4361,2,10800,0 Copper Tube [3/14/22]
-- 4363,2,10800,0 Copper Modulator [2/14/22]
-- 4371,2,10800,0 Bronze Tube [4/14/25]
-- 4382,1,10800,0 Bronze Framework [3/14/24]
-- 4389,1,7200,0 Gyrochronatom [1/14/1]
-- 4404,3,10800,0 Silver Contact [4/14/23]
-- 7560,1,43200,0 Schematic: Gnomish Universal Remote [1/14/2]
-- 10602,1,7200,0 Schematic: Deadly Scope [1/14/1]
-- 10602,1,14400,0 Schematic: Deadly Scope [1/14/1]
-- 10607,1,7200,0 Schematic: Deepdive Helmet [1/14/1]
-- 10609,1,7200,0 Schematic: Mithril Mechanical Dragonling [1/14/1]
-- 11363,0,0,0 Medium Shot Pouch [1/14/2]
-- 13309,1,43200,0 Schematic: Lovingly Crafted Boomstick [1/14/2]
-- 13310,1,7200,0 Schematic: Accurate Scope [1/14/1]
-- 13311,1,7200,0 Schematic: Mechanical Dragonling [1/14/1]
-- 14639,1,43200,0 Schematic: Minor Recombobulator [1/14/3]
-- 16046,1,10800,0 Schematic: Masterwork Target Dummy [1/14/1]
-- 16050,1,10800,0 Schematic: Delicate Arcanite Converter [1/14/1]
-- 18648,1,43200,0 Schematic: Green Firework [1/14/2]
-- 18652,1,10800,0 Schematic: Gyrofreeze Ice Reflector [1/14/1]
-- 18656,1,10800,0 Schematic: Powerful Seaforium Charge [1/14/1]
-- 19027,0,0,0 Schematic: Snake Burst Firework [1/14/1]
-- 22729,1,7200,0 Schematic: Steam Tonk Controller [1/14/1]
-- 23736,2,43200,0 Fel Iron Bomb [1/14/1]
-- 23768,1,43200,0 White Smoke Flare [1/14/1]
-- 23781,1,43200,0 Elemental Blasting Powder [1/14/1]
-- 23783,2,43200,0 Handful of Fel Iron Bolts [1/14/1]
-- 28060,0,0,0 Impact Shot [1/14/89]
-- 32381,1,10800,0 Schematic: Fused Wiring [1/14/1]

INSERT INTO npc_vendor VALUES (2685,2102,0,0,0); -- Small Ammo Pouch
INSERT INTO npc_vendor VALUES (2685,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (2685,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (2685,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (2685,4361,2,10800,0); -- Copper Tube
INSERT INTO npc_vendor VALUES (14637,4361,2,10800,0); -- Copper Tube
INSERT INTO npc_vendor VALUES (21112,4361,2,10800,0); -- Copper Tube
INSERT INTO npc_vendor VALUES (6730,4363,2,10800,0); -- Copper Modulator
INSERT INTO npc_vendor VALUES (11185,4363,2,10800,0); -- Copper Modulator
INSERT INTO npc_vendor VALUES (2685,4371,2,10800,0); -- Bronze Tube
INSERT INTO npc_vendor VALUES (2687,4371,2,10800,0); -- Bronze Tube
INSERT INTO npc_vendor VALUES (3495,4371,2,10800,0); -- Bronze Tube
INSERT INTO npc_vendor VALUES (9544,4371,2,10800,0); -- Bronze Tube
INSERT INTO npc_vendor VALUES (9676,4382,1,10800,0); -- Bronze Framework
INSERT INTO npc_vendor VALUES (11185,4382,1,10800,0); -- Bronze Framework
INSERT INTO npc_vendor VALUES (21112,4382,1,10800,0); -- Bronze Framework
INSERT INTO npc_vendor VALUES (2688,4389,1,7200,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (3413,4404,3,10800,0); -- Silver Contact
INSERT INTO npc_vendor VALUES (6730,4404,3,10800,0); -- Silver Contact
INSERT INTO npc_vendor VALUES (11185,4404,3,10800,0); -- Silver Contact
INSERT INTO npc_vendor VALUES (21112,4404,3,10800,0); -- Silver Contact
INSERT INTO npc_vendor VALUES (6730,7560,1,43200,0); -- Schematic: Gnomish Universal Remote
INSERT INTO npc_vendor VALUES (8679,10602,1,7200,0); -- Schematic: Deadly Scope
INSERT INTO npc_vendor VALUES (9544,10602,1,14400,0); -- Schematic: Deadly Scope
INSERT INTO npc_vendor VALUES (8678,10607,1,7200,0); -- Schematic: Deepdive Helmet
INSERT INTO npc_vendor VALUES (2688,10609,1,7200,0); -- Schematic: Mithril Mechanical Dragonling
INSERT INTO npc_vendor VALUES (2685,11363,0,0,0); -- Medium Shot Pouch
INSERT INTO npc_vendor VALUES (6730,13309,1,43200,0); -- Schematic: Lovingly Crafted Boomstick
INSERT INTO npc_vendor VALUES (2685,13310,1,7200,0); -- Schematic: Accurate Scope
INSERT INTO npc_vendor VALUES (2687,13311,1,7200,0); -- Schematic: Mechanical Dragonling
INSERT INTO npc_vendor VALUES (3495,14639,1,43200,0); -- Schematic: Minor Recombobulator
INSERT INTO npc_vendor VALUES (11185,16046,1,10800,0); -- Schematic: Masterwork Target Dummy
INSERT INTO npc_vendor VALUES (11185,16050,1,10800,0); -- Schematic: Delicate Arcanite Converter
INSERT INTO npc_vendor VALUES (3495,18648,1,43200,0); -- Schematic: Green Firework
INSERT INTO npc_vendor VALUES (11185,18652,1,10800,0); -- Schematic: Gyrofreeze Ice Reflector
INSERT INTO npc_vendor VALUES (11185,18656,1,10800,0); -- Schematic: Powerful Seaforium Charge
INSERT INTO npc_vendor VALUES (14637,19027,0,0,0); -- Schematic: Snake Burst Firework
INSERT INTO npc_vendor VALUES (3413,22729,1,7200,0); -- Schematic: Steam Tonk Controller
INSERT INTO npc_vendor VALUES (21112,23736,2,43200,0); -- Fel Iron Bomb
INSERT INTO npc_vendor VALUES (21112,23768,1,43200,0); -- White Smoke Flare
INSERT INTO npc_vendor VALUES (21112,23781,1,43200,0); -- Elemental Blasting Powder
INSERT INTO npc_vendor VALUES (21112,23783,2,43200,0); -- Handful of Fel Iron Bolts
INSERT INTO npc_vendor VALUES (2685,28060,0,0,0); -- Impact Shot
INSERT INTO npc_vendor VALUES (11185,32381,1,10800,0); -- Schematic: Fused Wiring

-- Total count: Templates: 10, single 44, sum 54, before: 184

-- ------------
-- Engineering 2
-- 1448,1694,2682,2683,2684,3133,5175,5519,6777,16657,16782,17222,17421,18278,18752,18775,19383,19575
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1448,1694,2682,2683,2684,3133,5175,5519,6777,16657,16782,17222,17421,18278,18752,18775,19383,19575);
UPDATE creature_template SET vendor_id=134 WHERE entry IN (1448,1694,2682,2683,2684,3133,5175,5519,6777,16657,16782,17222,17421,18278,18752,18775,19383,19575);

INSERT INTO npc_vendor_template VALUES (134,2880,0,0,0); -- Weak Flux [18/18/156]
INSERT INTO npc_vendor_template VALUES (134,2901,0,0,0); -- Mining Pick [18/18/157]
INSERT INTO npc_vendor_template VALUES (134,3466,0,0,0); -- Strong Flux [18/18/134]
INSERT INTO npc_vendor_template VALUES (134,4357,4,10800,0); -- Rough Blasting Powder [18/18/35]
INSERT INTO npc_vendor_template VALUES (134,4361,2,10800,0); -- Copper Tube [18/18/22]
INSERT INTO npc_vendor_template VALUES (134,4363,2,10800,0); -- Copper Modulator [18/18/22]
INSERT INTO npc_vendor_template VALUES (134,4364,4,10800,0); -- Coarse Blasting Powder [18/18/35]
INSERT INTO npc_vendor_template VALUES (134,4371,2,10800,0); -- Bronze Tube [18/18/25]
INSERT INTO npc_vendor_template VALUES (134,4382,1,10800,0); -- Bronze Framework [18/18/24]
INSERT INTO npc_vendor_template VALUES (134,4399,0,0,0); -- Wooden Stock [18/18/80]
INSERT INTO npc_vendor_template VALUES (134,4400,0,0,0); -- Heavy Stock [18/18/80]
INSERT INTO npc_vendor_template VALUES (134,4404,3,10800,0); -- Silver Contact [18/18/23]
INSERT INTO npc_vendor_template VALUES (134,5956,0,0,0); -- Blacksmith Hammer [18/18/144]
INSERT INTO npc_vendor_template VALUES (134,10647,0,0,0); -- Engineer's Ink [18/18/39]
INSERT INTO npc_vendor_template VALUES (134,10648,0,0,0); -- Blank Parchment [18/18/40]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 159,0,0,0 Refreshing Spring Water [2/18/227]
-- 1179,0,0,0 Ice Cold Milk [2/18/169]
-- 1205,0,0,0 Melon Juice [1/18/175]
-- 2512,0,0,0 Rough Arrow [1/18/94]
-- 2515,0,0,0 Sharp Arrow [2/18/104]
-- 2516,0,0,0 Light Shot [1/18/72]
-- 2519,0,0,0 Heavy Shot [2/18/84]
-- 3030,0,0,0 Razor Arrow [1/18/75]
-- 3033,0,0,0 Solid Shot [1/18/61]
-- 3857,0,0,0 Coal [1/18/99]
-- 4389,0,0,0 Gyrochronatom [13/18/13]
-- 4389,1,3600,0 Gyrochronatom [1/18/1]
-- 4389,1,10800,0 Gyrochronatom [1/18/1]
-- 4389,1,43200,0 Gyrochronatom [3/18/3]
-- 4470,0,0,0 Simple Wood [2/18/132]
-- 4471,0,0,0 Flint and Tinder [2/18/85]
-- 4496,0,0,0 Small Brown Pouch [1/18/53]
-- 4497,0,0,0 Heavy Brown Bag [1/18/55]
-- 4498,0,0,0 Brown Leather Satchel [2/18/82]
-- 5042,0,0,0 Red Ribboned Wrapping Paper [1/18/31]
-- 6183,0,0,0 Unlit Poor Torch [1/18/4]
-- 7560,1,43200,0 Schematic: Gnomish Universal Remote [1/18/2]
-- 7742,1,14400,0 Schematic: Gnomish Cloaking Device [1/18/1]
-- 13308,0,0,0 Schematic: Ice Deflector [1/18/2]
-- 13309,1,43200,0 Schematic: Lovingly Crafted Boomstick [1/18/2]
-- 14639,1,43200,0 Schematic: Minor Recombobulator [2/18/3]
-- 16041,0,0,0 Schematic: Thorium Grenade [1/18/1]
-- 16042,0,0,0 Schematic: Thorium Widget [1/18/1]
-- 18649,0,0,0 Schematic: Blue Firework [1/18/2]
-- 20815,0,0,0 Jeweler's Kit [1/18/28]
-- 20824,0,0,0 Simple Grinder [1/18/28]
-- 20970,0,0,0 Design: Pendant of the Agate Shield [1/18/1]
-- 22729,1,86400,0 Schematic: Steam Tonk Controller [1/18/1]
-- 23736,3,10800,0 Fel Iron Bomb [1/18/1]
-- 23737,3,10800,0 Adamantite Grenade [1/18/1]
-- 23768,3,10800,0 White Smoke Flare [1/18/1]
-- 23771,3,10800,0 Green Smoke Flare [1/18/1]
-- 23781,2,10800,0 Elemental Blasting Powder [1/18/1]
-- 23782,1,10800,0 Fel Iron Casing [1/18/1]
-- 23783,2,10800,0 Handful of Fel Iron Bolts [1/18/1]
-- 23784,1,10800,0 Adamantite Frame [1/18/1]
-- 23786,1,10800,0 Khorium Power Core [1/18/1]
-- 23787,1,10800,0 Felsteel Stabilizer [1/18/1]
-- 23799,1,43200,0 Schematic: Adamantite Rifle [2/18/3]
-- 23803,0,0,0 Schematic: Cogspinner Goggles [1/18/1]
-- 23805,1,43200,0 Schematic: Ultra-Spectropic Detection Goggles [2/18/2]
-- 23811,1,43200,0 Schematic: White Smoke Flare [3/18/4]
-- 23815,1,43200,0 Schematic: Adamantite Shell Machine [2/18/3]
-- 23816,1,43200,0 Schematic: Fel Iron Toolbox [2/18/3]
-- 25861,0,0,0 Crude Throwing Axe [1/18/44]
-- 25872,0,0,0 Balanced Throwing Dagger [1/18/44]
-- 25873,0,0,0 Keen Throwing Knife [1/18/51]
-- 25875,0,0,0 Deadly Throwing Axe [1/18/45]
-- 28979,0,0,0 Light Throwing Knife [1/18/36]
-- 29007,0,0,0 Weighted Throwing Axe [1/18/39]
-- 29008,0,0,0 Sharp Throwing Axe [1/18/26]
-- 29009,0,0,0 Heavy Throwing Dagger [1/18/41]

INSERT INTO npc_vendor VALUES (1448,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (17421,159,0,0,0); -- Refreshing Spring Water
INSERT INTO npc_vendor VALUES (1448,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (17421,1179,0,0,0); -- Ice Cold Milk
INSERT INTO npc_vendor VALUES (1448,1205,0,0,0); -- Melon Juice
INSERT INTO npc_vendor VALUES (17421,2512,0,0,0); -- Rough Arrow
INSERT INTO npc_vendor VALUES (1448,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (17421,2515,0,0,0); -- Sharp Arrow
INSERT INTO npc_vendor VALUES (17421,2516,0,0,0); -- Light Shot
INSERT INTO npc_vendor VALUES (1448,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (17421,2519,0,0,0); -- Heavy Shot
INSERT INTO npc_vendor VALUES (1448,3030,0,0,0); -- Razor Arrow
INSERT INTO npc_vendor VALUES (1448,3033,0,0,0); -- Solid Shot
INSERT INTO npc_vendor VALUES (3133,3857,0,0,0); -- Coal
INSERT INTO npc_vendor VALUES (1448,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (1694,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (2682,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (2683,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (2684,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (3133,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (5175,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (5519,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (6777,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (16657,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (16782,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (18752,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (18775,4389,0,0,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (17222,4389,1,3600,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (19575,4389,1,10800,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (17421,4389,1,43200,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (18278,4389,1,43200,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (19383,4389,1,43200,0); -- Gyrochronatom
INSERT INTO npc_vendor VALUES (1448,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (17421,4470,0,0,0); -- Simple Wood
INSERT INTO npc_vendor VALUES (1448,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (17421,4471,0,0,0); -- Flint and Tinder
INSERT INTO npc_vendor VALUES (17421,4496,0,0,0); -- Small Brown Pouch
INSERT INTO npc_vendor VALUES (1448,4497,0,0,0); -- Heavy Brown Bag
INSERT INTO npc_vendor VALUES (1448,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (17421,4498,0,0,0); -- Brown Leather Satchel
INSERT INTO npc_vendor VALUES (17421,5042,0,0,0); -- Red Ribboned Wrapping Paper
INSERT INTO npc_vendor VALUES (1448,6183,0,0,0); -- Unlit Poor Torch
INSERT INTO npc_vendor VALUES (5175,7560,1,43200,0); -- Schematic: Gnomish Universal Remote
INSERT INTO npc_vendor VALUES (6777,7742,1,14400,0); -- Schematic: Gnomish Cloaking Device
INSERT INTO npc_vendor VALUES (2684,13308,0,0,0); -- Schematic: Ice Deflector
INSERT INTO npc_vendor VALUES (2682,13309,1,43200,0); -- Schematic: Lovingly Crafted Boomstick
INSERT INTO npc_vendor VALUES (2682,14639,1,43200,0); -- Schematic: Minor Recombobulator
INSERT INTO npc_vendor VALUES (2683,14639,1,43200,0); -- Schematic: Minor Recombobulator
INSERT INTO npc_vendor VALUES (5175,16041,0,0,0); -- Schematic: Thorium Grenade
INSERT INTO npc_vendor VALUES (5175,16042,0,0,0); -- Schematic: Thorium Widget
INSERT INTO npc_vendor VALUES (5175,18649,0,0,0); -- Schematic: Blue Firework
INSERT INTO npc_vendor VALUES (3133,20815,0,0,0); -- Jeweler's Kit
INSERT INTO npc_vendor VALUES (3133,20824,0,0,0); -- Simple Grinder
INSERT INTO npc_vendor VALUES (1448,20970,0,0,0); -- Design: Pendant of the Agate Shield
INSERT INTO npc_vendor VALUES (5175,22729,1,86400,0); -- Schematic: Steam Tonk Controller
INSERT INTO npc_vendor VALUES (19575,23736,3,10800,0); -- Fel Iron Bomb
INSERT INTO npc_vendor VALUES (19575,23737,3,10800,0); -- Adamantite Grenade
INSERT INTO npc_vendor VALUES (19575,23768,3,10800,0); -- White Smoke Flare
INSERT INTO npc_vendor VALUES (19575,23771,3,10800,0); -- Green Smoke Flare
INSERT INTO npc_vendor VALUES (19575,23781,2,10800,0); -- Elemental Blasting Powder
INSERT INTO npc_vendor VALUES (19575,23782,1,10800,0); -- Fel Iron Casing
INSERT INTO npc_vendor VALUES (19575,23783,2,10800,0); -- Handful of Fel Iron Bolts
INSERT INTO npc_vendor VALUES (19575,23784,1,10800,0); -- Adamantite Frame
INSERT INTO npc_vendor VALUES (19575,23786,1,10800,0); -- Khorium Power Core
INSERT INTO npc_vendor VALUES (19575,23787,1,10800,0); -- Felsteel Stabilizer
INSERT INTO npc_vendor VALUES (16657,23799,1,43200,0); -- Schematic: Adamantite Rifle
INSERT INTO npc_vendor VALUES (16782,23799,1,43200,0); -- Schematic: Adamantite Rifle
INSERT INTO npc_vendor VALUES (18775,23803,0,0,0); -- Schematic: Cogspinner Goggles
INSERT INTO npc_vendor VALUES (18775,23805,1,43200,0); -- Schematic: Ultra-Spectropic Detection Goggles
INSERT INTO npc_vendor VALUES (19383,23805,1,43200,0); -- Schematic: Ultra-Spectropic Detection Goggles
INSERT INTO npc_vendor VALUES (16657,23811,1,43200,0); -- Schematic: White Smoke Flare
INSERT INTO npc_vendor VALUES (16782,23811,1,43200,0); -- Schematic: White Smoke Flare
INSERT INTO npc_vendor VALUES (19383,23811,1,43200,0); -- Schematic: White Smoke Flare
INSERT INTO npc_vendor VALUES (16657,23815,1,43200,0); -- Schematic: Adamantite Shell Machine
INSERT INTO npc_vendor VALUES (16782,23815,1,43200,0); -- Schematic: Adamantite Shell Machine
INSERT INTO npc_vendor VALUES (16657,23816,1,43200,0); -- Schematic: Fel Iron Toolbox
INSERT INTO npc_vendor VALUES (16782,23816,1,43200,0); -- Schematic: Fel Iron Toolbox
INSERT INTO npc_vendor VALUES (17421,25861,0,0,0); -- Crude Throwing Axe
INSERT INTO npc_vendor VALUES (17421,25872,0,0,0); -- Balanced Throwing Dagger
INSERT INTO npc_vendor VALUES (1448,25873,0,0,0); -- Keen Throwing Knife
INSERT INTO npc_vendor VALUES (1448,25875,0,0,0); -- Deadly Throwing Axe
INSERT INTO npc_vendor VALUES (17421,28979,0,0,0); -- Light Throwing Knife
INSERT INTO npc_vendor VALUES (17421,29007,0,0,0); -- Weighted Throwing Axe
INSERT INTO npc_vendor VALUES (1448,29008,0,0,0); -- Sharp Throwing Axe
INSERT INTO npc_vendor VALUES (1448,29009,0,0,0); -- Heavy Throwing Dagger

-- Total count: Templates: 15, single 85, sum 100, before: 355

-- ------------
-- Engineering 3
-- 4587,18484,20890
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4587,18484,20890);
UPDATE creature_template SET vendor_id=135 WHERE entry IN (4587,18484,20890);

INSERT INTO npc_vendor_template VALUES (135,2880,0,0,0); -- Weak Flux [3/3/156]
INSERT INTO npc_vendor_template VALUES (135,2901,0,0,0); -- Mining Pick [3/3/157]
INSERT INTO npc_vendor_template VALUES (135,3466,0,0,0); -- Strong Flux [3/3/134]
INSERT INTO npc_vendor_template VALUES (135,4357,4,10800,0); -- Rough Blasting Powder [3/3/35]
INSERT INTO npc_vendor_template VALUES (135,4364,4,10800,0); -- Coarse Blasting Powder [3/3/35]
INSERT INTO npc_vendor_template VALUES (135,4371,2,10800,0); -- Bronze Tube [3/3/25]
INSERT INTO npc_vendor_template VALUES (135,4382,1,10800,0); -- Bronze Framework [3/3/24]
INSERT INTO npc_vendor_template VALUES (135,4399,0,0,0); -- Wooden Stock [3/3/80]
INSERT INTO npc_vendor_template VALUES (135,4400,0,0,0); -- Heavy Stock [3/3/80]
INSERT INTO npc_vendor_template VALUES (135,5956,0,0,0); -- Blacksmith Hammer [3/3/144]
INSERT INTO npc_vendor_template VALUES (135,10647,0,0,0); -- Engineer's Ink [3/3/39]
INSERT INTO npc_vendor_template VALUES (135,10648,0,0,0); -- Blank Parchment [3/3/40]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4361,2,10800,0 Copper Tube [1/3/22]
-- 4363,2,10800,0 Copper Modulator [2/3/22]
-- 4404,3,10800,0 Silver Contact [1/3/23]
-- 23811,1,43200,0 Schematic: White Smoke Flare [1/3/4]
-- 23815,1,43200,0 Schematic: Adamantite Shell Machine [1/3/3]
-- 23816,1,43200,0 Schematic: Fel Iron Toolbox [1/3/3]

INSERT INTO npc_vendor VALUES (20890,4361,2,10800,0); -- Copper Tube
INSERT INTO npc_vendor VALUES (4587,4363,2,10800,0); -- Copper Modulator
INSERT INTO npc_vendor VALUES (20890,4363,2,10800,0); -- Copper Modulator
INSERT INTO npc_vendor VALUES (20890,4404,3,10800,0); -- Silver Contact
INSERT INTO npc_vendor VALUES (18484,23811,1,43200,0); -- Schematic: White Smoke Flare
INSERT INTO npc_vendor VALUES (18484,23815,1,43200,0); -- Schematic: Adamantite Shell Machine
INSERT INTO npc_vendor VALUES (18484,23816,1,43200,0); -- Schematic: Fel Iron Toolbox

-- Total count: Templates: 12, single 7, sum 19, before: 43

-- ------------
-- Reagents 1
-- If more Reagents + Vials come in, maybe split off. Right now still a bit unfavorable (108 vs 110)
-- 958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19718,23112
-- ------------
DELETE FROM npc_vendor WHERE entry IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19718,23112);
UPDATE creature_template SET vendor_id=136 WHERE entry IN (958,983,1257,1275,1307,1308,1351,1463,1673,2805,3323,3351,3500,3562,3700,3970,4083,4220,4562,4575,4878,5110,5151,8361,13476,14739,16015,16611,16612,16706,16757,18243,19004,19718,23112);

INSERT INTO npc_vendor_template VALUES (136,5565,0,0,0); -- Infernal Stone [35/35/68]
INSERT INTO npc_vendor_template VALUES (136,16583,0,0,0); -- Demonic Figurine [35/35/68]
INSERT INTO npc_vendor_template VALUES (136,17020,0,0,0); -- Arcane Powder [35/35/68]
INSERT INTO npc_vendor_template VALUES (136,17021,0,0,0); -- Wild Berries [35/35/67]
INSERT INTO npc_vendor_template VALUES (136,17026,0,0,0); -- Wild Thornroot [35/35/67]
INSERT INTO npc_vendor_template VALUES (136,17028,0,0,0); -- Holy Candle [35/35/67]
INSERT INTO npc_vendor_template VALUES (136,17029,0,0,0); -- Sacred Candle [35/35/69]
INSERT INTO npc_vendor_template VALUES (136,17030,0,0,0); -- Ankh [35/35/69]
INSERT INTO npc_vendor_template VALUES (136,17031,0,0,0); -- Rune of Teleportation [35/35/67]
INSERT INTO npc_vendor_template VALUES (136,17032,0,0,0); -- Rune of Portals [35/35/67]
INSERT INTO npc_vendor_template VALUES (136,17033,0,0,0); -- Symbol of Divinity [35/35/69]
INSERT INTO npc_vendor_template VALUES (136,17034,0,0,0); -- Maple Seed [35/35/50]
INSERT INTO npc_vendor_template VALUES (136,17035,0,0,0); -- Stranglethorn Seed [35/35/50]
INSERT INTO npc_vendor_template VALUES (136,17036,0,0,0); -- Ashwood Seed [35/35/50]
INSERT INTO npc_vendor_template VALUES (136,17037,0,0,0); -- Hornbeam Seed [35/35/66]
INSERT INTO npc_vendor_template VALUES (136,17038,0,0,0); -- Ironwood Seed [35/35/66]
INSERT INTO npc_vendor_template VALUES (136,21177,0,0,0); -- Symbol of Kings [35/35/69]
INSERT INTO npc_vendor_template VALUES (136,22147,0,0,0); -- Flintweed Seed [35/35/69]
INSERT INTO npc_vendor_template VALUES (136,22148,0,0,0); -- Wild Quillvine [35/35/61]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 785,1,7200,0 Mageroyal [1/35/1]
-- 858,0,0,0 Lesser Healing Potion [1/35/12]
-- 929,3,7200,0 Healing Potion [4/35/10]
-- 954,0,0,0 Scroll of Strength [2/35/3]
-- 955,0,0,0 Scroll of Intellect [1/35/2]
-- 1180,0,0,0 Scroll of Stamina [1/35/2]
-- 1181,0,0,0 Scroll of Spirit [1/35/2]
-- 1478,0,0,0 Scroll of Protection II [1/35/2]
-- 1711,0,0,0 Scroll of Stamina II [1/35/3]
-- 1711,2,7200,0 Scroll of Stamina II [1/35/1]
-- 1712,0,0,0 Scroll of Spirit II [1/35/2]
-- 1712,2,7200,0 Scroll of Spirit II [1/35/1]
-- 2290,0,0,0 Scroll of Intellect II [1/35/3]
-- 2290,1,3600,0 Scroll of Intellect II [1/35/2]
-- 2290,1,7200,0 Scroll of Intellect II [1/35/1]
-- 2449,1,7200,0 Earthroot [1/35/1]
-- 2453,2,7200,0 Bruiseweed [1/35/7]
-- 2455,0,0,0 Minor Mana Potion [1/35/1]
-- 2455,2,43200,0 Minor Mana Potion [2/35/2]
-- 3012,0,0,0 Scroll of Agility [2/35/3]
-- 3012,1,3600,0 Scroll of Agility [1/35/1]
-- 3012,1,7200,0 Scroll of Agility [1/35/1]
-- 3013,0,0,0 Scroll of Protection [1/35/2]
-- 3356,1,7200,0 Kingsblood [2/35/6]
-- 3357,1,7200,0 Liferoot [1/35/1]
-- 3371,0,0,0 Empty Vial [5/35/133]
-- 3372,0,0,0 Leaded Vial [5/35/115]
-- 3385,0,0,0 Lesser Mana Potion [2/35/14]
-- 3385,2,7200,0 Lesser Mana Potion [1/35/1]
-- 3928,0,0,0 Superior Healing Potion [1/35/4]
-- 4824,0,0,0 Blurred Axe [1/35/4]
-- 4825,0,0,0 Callous Axe [1/35/4]
-- 4826,0,0,0 Marauder Axe [1/35/4]
-- 4827,0,0,0 Wizard's Belt [1/35/6]
-- 4828,0,0,0 Nightwind Belt [1/35/6]
-- 4829,0,0,0 Dreamer's Belt [1/35/6]
-- 6055,1,7200,0 Recipe: Fire Protection Potion [1/35/1]
-- 6068,1,7200,0 Recipe: Shadow Oil [1/35/2]
-- 6149,0,0,0 Greater Mana Potion [1/35/4]
-- 8766,0,0,0 Morning Glory Dew [1/35/188]
-- 8846,5,7200,0 Gromsblood [1/35/1]
-- 8925,0,0,0 Crystal Vial [5/35/119]
-- 8932,0,0,0 Alterac Swiss [1/35/35]
-- 8952,0,0,0 Roasted Quail [1/35/101]
-- 8953,0,0,0 Deep Fried Plantains [1/35/41]
-- 11284,0,0,0 Accurate Slugs [1/35/95]
-- 11285,0,0,0 Jagged Arrow [1/35/100]
-- 14256,2,7200,0 Felcloth [1/35/1]
-- 16084,0,0,0 Expert First Aid - Under Wraps [2/35/2]
-- 16112,0,0,0 Manual: Heavy Silk Bandage [2/35/2]
-- 16113,0,0,0 Manual: Mageweave Bandage [2/35/2]
-- 18256,0,0,0 Imbued Vial [5/35/88]
-- 21939,0,0,0 Fel Elemental Rod [1/35/1]
-- 24286,0,0,0 Arcane Catalyst [1/35/1]
-- 25848,1,43200,0 Formula: Runed Adamantite Rod [1/35/2]
-- 27854,0,0,0 Smoked Talbuk Venison [1/35/35]
-- 27856,0,0,0 Skethyl Berries [1/35/15]
-- 27857,0,0,0 Garadar Sharp [1/35/11]
-- 27860,0,0,0 Purified Draenic Water [1/35/51]
-- 28053,0,0,0 Wicked Arrow [1/35/100]
-- 28056,0,0,0 Blackflight Arrow [1/35/49]
-- 28060,0,0,0 Impact Shot [1/35/89]
-- 28061,0,0,0 Ironbite Shell [1/35/51]
-- 28399,0,0,0 Filtered Draenic Water [1/35/51]
-- 29448,0,0,0 Mag'har Mild Cheese [1/35/11]
-- 29450,0,0,0 Telaari Grapes [1/35/16]
-- 29451,0,0,0 Clefthoof Ribs [1/35/36]

INSERT INTO npc_vendor VALUES (4878,785,1,7200,0); -- Mageroyal
INSERT INTO npc_vendor VALUES (958,858,0,0,0); -- Lesser Healing Potion
INSERT INTO npc_vendor VALUES (1307,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (2805,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (4878,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (13476,929,3,7200,0); -- Healing Potion
INSERT INTO npc_vendor VALUES (958,954,0,0,0); -- Scroll of Strength
INSERT INTO npc_vendor VALUES (2805,954,0,0,0); -- Scroll of Strength
INSERT INTO npc_vendor VALUES (958,955,0,0,0); -- Scroll of Intellect
INSERT INTO npc_vendor VALUES (958,1180,0,0,0); -- Scroll of Stamina
INSERT INTO npc_vendor VALUES (958,1181,0,0,0); -- Scroll of Spirit
INSERT INTO npc_vendor VALUES (2805,1478,0,0,0); -- Scroll of Protection II
INSERT INTO npc_vendor VALUES (2805,1711,0,0,0); -- Scroll of Stamina II
INSERT INTO npc_vendor VALUES (4878,1711,2,7200,0); -- Scroll of Stamina II
INSERT INTO npc_vendor VALUES (2805,1712,0,0,0); -- Scroll of Spirit II
INSERT INTO npc_vendor VALUES (4878,1712,2,7200,0); -- Scroll of Spirit II
INSERT INTO npc_vendor VALUES (2805,2290,0,0,0); -- Scroll of Intellect II
INSERT INTO npc_vendor VALUES (13476,2290,1,3600,0); -- Scroll of Intellect II
INSERT INTO npc_vendor VALUES (4878,2290,1,7200,0); -- Scroll of Intellect II
INSERT INTO npc_vendor VALUES (4083,2449,1,7200,0); -- Earthroot
INSERT INTO npc_vendor VALUES (4083,2453,2,7200,0); -- Bruiseweed
INSERT INTO npc_vendor VALUES (958,2455,0,0,0); -- Minor Mana Potion
INSERT INTO npc_vendor VALUES (16612,2455,2,43200,0); -- Minor Mana Potion
INSERT INTO npc_vendor VALUES (16706,2455,2,43200,0); -- Minor Mana Potion
INSERT INTO npc_vendor VALUES (958,3012,0,0,0); -- Scroll of Agility
INSERT INTO npc_vendor VALUES (2805,3012,0,0,0); -- Scroll of Agility
INSERT INTO npc_vendor VALUES (13476,3012,1,3600,0); -- Scroll of Agility
INSERT INTO npc_vendor VALUES (4878,3012,1,7200,0); -- Scroll of Agility
INSERT INTO npc_vendor VALUES (958,3013,0,0,0); -- Scroll of Protection
INSERT INTO npc_vendor VALUES (4083,3356,1,7200,0); -- Kingsblood
INSERT INTO npc_vendor VALUES (4878,3356,1,7200,0); -- Kingsblood
INSERT INTO npc_vendor VALUES (4878,3357,1,7200,0); -- Liferoot
INSERT INTO npc_vendor VALUES (958,3371,0,0,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (983,3371,0,0,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (1257,3371,0,0,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (16612,3371,0,0,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (16706,3371,0,0,0); -- Empty Vial
INSERT INTO npc_vendor VALUES (958,3372,0,0,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (983,3372,0,0,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (1257,3372,0,0,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (16612,3372,0,0,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (16706,3372,0,0,0); -- Leaded Vial
INSERT INTO npc_vendor VALUES (1307,3385,0,0,0); -- Lesser Mana Potion
INSERT INTO npc_vendor VALUES (2805,3385,0,0,0); -- Lesser Mana Potion
INSERT INTO npc_vendor VALUES (4083,3385,2,7200,0); -- Lesser Mana Potion
INSERT INTO npc_vendor VALUES (983,3928,0,0,0); -- Superior Healing Potion
INSERT INTO npc_vendor VALUES (1307,4824,0,0,0); -- Blurred Axe
INSERT INTO npc_vendor VALUES (1307,4825,0,0,0); -- Callous Axe
INSERT INTO npc_vendor VALUES (1307,4826,0,0,0); -- Marauder Axe
INSERT INTO npc_vendor VALUES (1307,4827,0,0,0); -- Wizard's Belt
INSERT INTO npc_vendor VALUES (1307,4828,0,0,0); -- Nightwind Belt
INSERT INTO npc_vendor VALUES (1307,4829,0,0,0); -- Dreamer's Belt
INSERT INTO npc_vendor VALUES (4083,6055,1,7200,0); -- Recipe: Fire Protection Potion
INSERT INTO npc_vendor VALUES (4878,6068,1,7200,0); -- Recipe: Shadow Oil
INSERT INTO npc_vendor VALUES (983,6149,0,0,0); -- Greater Mana Potion
INSERT INTO npc_vendor VALUES (19718,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (16015,8846,5,7200,0); -- Gromsblood
INSERT INTO npc_vendor VALUES (958,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (983,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (1257,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (16612,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (16706,8925,0,0,0); -- Crystal Vial
INSERT INTO npc_vendor VALUES (19718,8932,0,0,0); -- Alterac Swiss
INSERT INTO npc_vendor VALUES (19718,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (19718,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (19718,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (19718,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (16015,14256,2,7200,0); -- Felcloth
INSERT INTO npc_vendor VALUES (2805,16084,0,0,0); -- Expert First Aid - Under Wraps
INSERT INTO npc_vendor VALUES (13476,16084,0,0,0); -- Expert First Aid - Under Wraps
INSERT INTO npc_vendor VALUES (2805,16112,0,0,0); -- Manual: Heavy Silk Bandage
INSERT INTO npc_vendor VALUES (13476,16112,0,0,0); -- Manual: Heavy Silk Bandage
INSERT INTO npc_vendor VALUES (2805,16113,0,0,0); -- Manual: Mageweave Bandage
INSERT INTO npc_vendor VALUES (13476,16113,0,0,0); -- Manual: Mageweave Bandage
INSERT INTO npc_vendor VALUES (958,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (983,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (1257,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (16612,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (16706,18256,0,0,0); -- Imbued Vial
INSERT INTO npc_vendor VALUES (16015,21939,0,0,0); -- Fel Elemental Rod
INSERT INTO npc_vendor VALUES (16611,24286,0,0,0); -- Arcane Catalyst
INSERT INTO npc_vendor VALUES (19004,25848,1,43200,0); -- Formula: Runed Adamantite Rod
INSERT INTO npc_vendor VALUES (19718,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (19718,27856,0,0,0); -- Skethyl Berries
INSERT INTO npc_vendor VALUES (19718,27857,0,0,0); -- Garadar Sharp
INSERT INTO npc_vendor VALUES (19718,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (19718,28053,0,0,0); -- Wicked Arrow
INSERT INTO npc_vendor VALUES (19718,28056,0,0,0); -- Blackflight Arrow
INSERT INTO npc_vendor VALUES (19718,28060,0,0,0); -- Impact Shot
INSERT INTO npc_vendor VALUES (19718,28061,0,0,0); -- Ironbite Shell
INSERT INTO npc_vendor VALUES (19718,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (19718,29448,0,0,0); -- Mag'har Mild Cheese
INSERT INTO npc_vendor VALUES (19718,29450,0,0,0); -- Telaari Grapes
INSERT INTO npc_vendor VALUES (19718,29451,0,0,0); -- Clefthoof Ribs

-- Total count: Templates: 19, single 94, sum 113, before: 759

-- ------------
-- Reagents 2
-- 17518,18017,18998,19235,19535,23157,25039
-- ------------
DELETE FROM npc_vendor WHERE entry IN (17518,18017,18998,19235,19535,23157,25039);
UPDATE creature_template SET vendor_id=137 WHERE entry IN (17518,18017,18998,19235,19535,23157,25039);

INSERT INTO npc_vendor_template VALUES (137,5565,0,0,0); -- Infernal Stone [7/7/68]
INSERT INTO npc_vendor_template VALUES (137,16583,0,0,0); -- Demonic Figurine [7/7/68]
INSERT INTO npc_vendor_template VALUES (137,17020,0,0,0); -- Arcane Powder [7/7/68]
INSERT INTO npc_vendor_template VALUES (137,17021,0,0,0); -- Wild Berries [7/7/67]
INSERT INTO npc_vendor_template VALUES (137,17026,0,0,0); -- Wild Thornroot [7/7/67]
INSERT INTO npc_vendor_template VALUES (137,17028,0,0,0); -- Holy Candle [7/7/67]
INSERT INTO npc_vendor_template VALUES (137,17029,0,0,0); -- Sacred Candle [7/7/69]
INSERT INTO npc_vendor_template VALUES (137,17030,0,0,0); -- Ankh [7/7/69]
INSERT INTO npc_vendor_template VALUES (137,17031,0,0,0); -- Rune of Teleportation [7/7/67]
INSERT INTO npc_vendor_template VALUES (137,17032,0,0,0); -- Rune of Portals [7/7/67]
INSERT INTO npc_vendor_template VALUES (137,17033,0,0,0); -- Symbol of Divinity [7/7/69]
INSERT INTO npc_vendor_template VALUES (137,17037,0,0,0); -- Hornbeam Seed [7/7/66]
INSERT INTO npc_vendor_template VALUES (137,17038,0,0,0); -- Ironwood Seed [7/7/66]
INSERT INTO npc_vendor_template VALUES (137,21177,0,0,0); -- Symbol of Kings [7/7/69]
INSERT INTO npc_vendor_template VALUES (137,22147,0,0,0); -- Flintweed Seed [7/7/69]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 22148,0,0,0 Wild Quillvine [5/7/61]
-- 22535,0,0,0 Formula: Enchant Ring - Striking [1/7/1]
-- 22901,0,0,0 Recipe: Sneaking Potion [1/7/1]
-- 22902,0,0,0 Recipe: Elixir of Major Frost Power [1/7/1]
-- 25902,0,0,0 Design: Powerful Earthstorm Diamond [1/7/1]
-- 25903,0,0,0 Design: Bracing Earthstorm Diamond [1/7/1]

INSERT INTO npc_vendor VALUES (17518,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (18998,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (19535,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (23157,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (25039,22148,0,0,0); -- Wild Quillvine
INSERT INTO npc_vendor VALUES (17518,22535,0,0,0); -- Formula: Enchant Ring - Striking
INSERT INTO npc_vendor VALUES (18017,22901,0,0,0); -- Recipe: Sneaking Potion
INSERT INTO npc_vendor VALUES (18017,22902,0,0,0); -- Recipe: Elixir of Major Frost Power
INSERT INTO npc_vendor VALUES (17518,25902,0,0,0); -- Design: Powerful Earthstorm Diamond
INSERT INTO npc_vendor VALUES (17518,25903,0,0,0); -- Design: Bracing Earthstorm Diamond

-- Total count: Templates: 15, single 10, sum 25, before: 115

-- ------------
-- Reagents 3
-- 3335,19678,23560
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3335,19678,23560);
UPDATE creature_template SET vendor_id=138 WHERE entry IN (3335,19678,23560);

INSERT INTO npc_vendor_template VALUES (138,5565,0,0,0); -- Infernal Stone [3/3/68]
INSERT INTO npc_vendor_template VALUES (138,16583,0,0,0); -- Demonic Figurine [3/3/68]
INSERT INTO npc_vendor_template VALUES (138,17020,0,0,0); -- Arcane Powder [3/3/68]
INSERT INTO npc_vendor_template VALUES (138,17021,0,0,0); -- Wild Berries [3/3/67]
INSERT INTO npc_vendor_template VALUES (138,17026,0,0,0); -- Wild Thornroot [3/3/67]
INSERT INTO npc_vendor_template VALUES (138,17028,0,0,0); -- Holy Candle [3/3/67]
INSERT INTO npc_vendor_template VALUES (138,17029,0,0,0); -- Sacred Candle [3/3/69]
INSERT INTO npc_vendor_template VALUES (138,17030,0,0,0); -- Ankh [3/3/69]
INSERT INTO npc_vendor_template VALUES (138,17031,0,0,0); -- Rune of Teleportation [3/3/67]
INSERT INTO npc_vendor_template VALUES (138,17032,0,0,0); -- Rune of Portals [3/3/67]
INSERT INTO npc_vendor_template VALUES (138,17033,0,0,0); -- Symbol of Divinity [3/3/69]
INSERT INTO npc_vendor_template VALUES (138,17034,0,0,0); -- Maple Seed [3/3/50]
INSERT INTO npc_vendor_template VALUES (138,17035,0,0,0); -- Stranglethorn Seed [3/3/50]
INSERT INTO npc_vendor_template VALUES (138,17036,0,0,0); -- Ashwood Seed [3/3/50]
INSERT INTO npc_vendor_template VALUES (138,21177,0,0,0); -- Symbol of Kings [3/3/69]
INSERT INTO npc_vendor_template VALUES (138,22147,0,0,0); -- Flintweed Seed [3/3/69]
INSERT INTO npc_vendor_template VALUES (138,22148,0,0,0); -- Wild Quillvine [3/3/61]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 5640,2,7200,0 Recipe: Rage Potion [1/3/1]
-- 5643,1,7200,0 Recipe: Great Rage Potion [1/3/1]
-- 17037,0,0,0 Hornbeam Seed [2/3/66]
-- 17038,0,0,0 Ironwood Seed [2/3/66]
-- 30823,0,0,0 Demon Warding Totem [1/3/1]

INSERT INTO npc_vendor VALUES (3335,5640,2,7200,0); -- Recipe: Rage Potion
INSERT INTO npc_vendor VALUES (3335,5643,1,7200,0); -- Recipe: Great Rage Potion
INSERT INTO npc_vendor VALUES (3335,17037,0,0,0); -- Hornbeam Seed
INSERT INTO npc_vendor VALUES (19678,17037,0,0,0); -- Hornbeam Seed
INSERT INTO npc_vendor VALUES (3335,17038,0,0,0); -- Ironwood Seed
INSERT INTO npc_vendor VALUES (19678,17038,0,0,0); -- Ironwood Seed
INSERT INTO npc_vendor VALUES (19678,30823,0,0,0); -- Demon Warding Totem

-- Total count: Templates: 17, single 7, sum 24, before: 58

-- ------------
-- Reagents 4
-- Yes, this one sucks
-- 24409,26304
-- ------------
DELETE FROM npc_vendor WHERE entry IN (24409,26304);
UPDATE creature_template SET vendor_id=139 WHERE entry IN (24409,26304);

INSERT INTO npc_vendor_template VALUES (139,17029,0,0,0); -- Sacred Candle [2/2/69]
INSERT INTO npc_vendor_template VALUES (139,17030,0,0,0); -- Ankh [2/2/69]
INSERT INTO npc_vendor_template VALUES (139,17033,0,0,0); -- Symbol of Divinity [2/2/69]
INSERT INTO npc_vendor_template VALUES (139,21177,0,0,0); -- Symbol of Kings [2/2/69]
INSERT INTO npc_vendor_template VALUES (139,22147,0,0,0); -- Flintweed Seed [2/2/69]
INSERT INTO npc_vendor_template VALUES (139,22148,0,0,0); -- Wild Quillvine [2/2/61]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 3776,0,0,0 Crippling Poison II [1/2/1]
-- 5140,0,0,0 Flash Powder [1/2/43]
-- 5565,0,0,0 Infernal Stone [1/2/68]
-- 6265,0,0,0 Soul Shard [1/2/1]
-- 9186,0,0,0 Mind-numbing Poison III [1/2/1]
-- 16583,0,0,0 Demonic Figurine [1/2/68]
-- 17020,0,0,0 Arcane Powder [1/2/68]
-- 17056,0,0,0 Light Feather [1/2/1]
-- 17057,0,0,0 Shiny Fish Scales [1/2/1]
-- 17058,0,0,0 Fish Oil [1/2/1]
-- 21927,0,0,0 Instant Poison VII [1/2/1]
-- 21991,0,0,0 Heavy Netherweave Bandage [1/2/1]
-- 22054,0,0,0 Deadly Poison VII [1/2/1]
-- 22055,0,0,0 Wound Poison V [1/2/1]
-- 22829,0,0,0 Super Healing Potion [1/2/1]
-- 22829,5,7200,0 Super Healing Potion [1/2/1]
-- 22832,0,0,0 Super Mana Potion [1/2/1]
-- 22832,5,7200,0 Super Mana Potion [1/2/1]
-- 29449,0,0,0 Bladespire Bagel [1/2/17]
-- 29450,0,0,0 Telaari Grapes [1/2/16]
-- 29451,0,0,0 Clefthoof Ribs [1/2/36]
-- 29469,0,0,0 Horn of the Black War Wolf [1/2/1]
-- 29471,0,0,0 Reins of the Black War Tiger [1/2/1]
-- 32453,0,0,0 Star's Tears [1/2/1]
-- 33928,1,604800,0 Hollowed Bone Decanter [1/2/1]
-- 34581,0,0,0 Mysterious Arrow [1/2/4]
-- 34582,0,0,0 Mysterious Shell [1/2/4]

INSERT INTO npc_vendor VALUES (26304,3776,0,0,0); -- Crippling Poison II
INSERT INTO npc_vendor VALUES (26304,5140,0,0,0); -- Flash Powder
INSERT INTO npc_vendor VALUES (26304,5565,0,0,0); -- Infernal Stone
INSERT INTO npc_vendor VALUES (26304,6265,0,0,0); -- Soul Shard
INSERT INTO npc_vendor VALUES (26304,9186,0,0,0); -- Mind-numbing Poison III
INSERT INTO npc_vendor VALUES (24409,16583,0,0,0); -- Demonic Figurine
INSERT INTO npc_vendor VALUES (26304,17020,0,0,0); -- Arcane Powder
INSERT INTO npc_vendor VALUES (26304,17056,0,0,0); -- Light Feather
INSERT INTO npc_vendor VALUES (26304,17057,0,0,0); -- Shiny Fish Scales
INSERT INTO npc_vendor VALUES (26304,17058,0,0,0); -- Fish Oil
INSERT INTO npc_vendor VALUES (26304,21927,0,0,0); -- Instant Poison VII
INSERT INTO npc_vendor VALUES (26304,21991,0,0,0); -- Heavy Netherweave Bandage
INSERT INTO npc_vendor VALUES (26304,22054,0,0,0); -- Deadly Poison VII
INSERT INTO npc_vendor VALUES (26304,22055,0,0,0); -- Wound Poison V
INSERT INTO npc_vendor VALUES (26304,22829,0,0,0); -- Super Healing Potion
INSERT INTO npc_vendor VALUES (24409,22829,5,7200,0); -- Super Healing Potion
INSERT INTO npc_vendor VALUES (26304,22832,0,0,0); -- Super Mana Potion
INSERT INTO npc_vendor VALUES (24409,22832,5,7200,0); -- Super Mana Potion
INSERT INTO npc_vendor VALUES (26304,29449,0,0,0); -- Bladespire Bagel
INSERT INTO npc_vendor VALUES (26304,29450,0,0,0); -- Telaari Grapes
INSERT INTO npc_vendor VALUES (26304,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (26304,29469,0,0,0); -- Horn of the Black War Wolf
INSERT INTO npc_vendor VALUES (26304,29471,0,0,0); -- Reins of the Black War Tiger
INSERT INTO npc_vendor VALUES (26304,32453,0,0,0); -- Star's Tears
INSERT INTO npc_vendor VALUES (24409,33928,1,604800,0); -- Hollowed Bone Decanter
INSERT INTO npc_vendor VALUES (26304,34581,0,0,0); -- Mysterious Arrow
INSERT INTO npc_vendor VALUES (26304,34582,0,0,0); -- Mysterious Shell

-- Total count: Templates: 6, single 27, sum 33, before: 39

-- ------------
-- Leatherworking & Tailoring 1
-- 1347,1454,1474,1672,2394,2668,2669,2670,2672,3091,3096,3364,3485,4168,4189,4577,5154,5944,6567,6568,6574,6576,7940,8681,11557,15165,16366,16638,16767,18749,18772,19213,19521,19722
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1347,1454,1474,1672,2394,2668,2669,2670,2672,3091,3096,3364,3485,4168,4189,4577,5154,5944,6567,6568,6574,6576,7940,8681,11557,15165,16366,16638,16767,18749,18772,19213,19521,19722);
UPDATE creature_template SET vendor_id=140 WHERE entry IN (1347,1454,1474,1672,2394,2668,2669,2670,2672,3091,3096,3364,3485,4168,4189,4577,5154,5944,6567,6568,6574,6576,7940,8681,11557,15165,16366,16638,16767,18749,18772,19213,19521,19722);

INSERT INTO npc_vendor_template VALUES (140,2320,0,0,0); -- Coarse Thread [34/34/130]
INSERT INTO npc_vendor_template VALUES (140,2321,0,0,0); -- Fine Thread [34/34/120]
INSERT INTO npc_vendor_template VALUES (140,2324,0,0,0); -- Bleach [34/34/77]
INSERT INTO npc_vendor_template VALUES (140,2325,0,0,0); -- Black Dye [34/34/101]
INSERT INTO npc_vendor_template VALUES (140,2604,0,0,0); -- Red Dye [34/34/119]
INSERT INTO npc_vendor_template VALUES (140,2605,0,0,0); -- Green Dye [34/34/78]
INSERT INTO npc_vendor_template VALUES (140,4291,0,0,0); -- Silken Thread [34/34/108]
INSERT INTO npc_vendor_template VALUES (140,4340,0,0,0); -- Gray Dye [34/34/101]
INSERT INTO npc_vendor_template VALUES (140,4341,0,0,0); -- Yellow Dye [34/34/101]
INSERT INTO npc_vendor_template VALUES (140,4342,0,0,0); -- Purple Dye [34/34/101]
INSERT INTO npc_vendor_template VALUES (140,6260,0,0,0); -- Blue Dye [34/34/88]
INSERT INTO npc_vendor_template VALUES (140,6261,0,0,0); -- Orange Dye [34/34/64]
INSERT INTO npc_vendor_template VALUES (140,8343,0,0,0); -- Heavy Silken Thread [34/34/101]
INSERT INTO npc_vendor_template VALUES (140,10290,0,0,0); -- Pink Dye [34/34/64]
INSERT INTO npc_vendor_template VALUES (140,14341,0,0,0); -- Rune Thread [34/34/126]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4289,0,0,0 Salt [1/34/98]
-- 4355,1,7200,0 Pattern: Icy Cloak [1/34/1]
-- 4781,0,0,0 Whispering Vest [1/34/2]
-- 4782,0,0,0 Solstice Robe [1/34/2]
-- 4786,0,0,0 Wise Man's Belt [1/34/2]
-- 4790,0,0,0 Inferno Cloak [1/34/1]
-- 4790,1,7200,0 Inferno Cloak [1/34/1]
-- 4792,0,0,0 Spirit Cloak [1/34/1]
-- 4792,1,7200,0 Spirit Cloak [1/34/1]
-- 4793,0,0,0 Sylvan Cloak [1/34/1]
-- 4793,1,7200,0 Sylvan Cloak [1/34/1]
-- 4827,0,0,0 Wizard's Belt [1/34/6]
-- 4828,0,0,0 Nightwind Belt [1/34/6]
-- 4829,0,0,0 Dreamer's Belt [1/34/6]
-- 5771,0,0,0 Pattern: Red Linen Bag [1/34/2]
-- 5772,1,7200,0 Pattern: Red Woolen Bag [7/34/11]
-- 6270,0,0,0 Pattern: Blue Linen Vest [1/34/3]
-- 6270,1,7200,0 Pattern: Blue Linen Vest [1/34/1]
-- 6272,1,7200,0 Pattern: Blue Linen Robe [2/34/5]
-- 6274,0,0,0 Pattern: Blue Overalls [1/34/2]
-- 6274,1,7200,0 Pattern: Blue Overalls [2/34/2]
-- 6275,0,0,0 Pattern: Greater Adept's Robe [3/34/3]
-- 6275,1,3600,0 Pattern: Greater Adept's Robe [2/34/2]
-- 6401,0,0,0 Pattern: Dark Silk Shirt [1/34/2]
-- 6401,1,7200,0 Pattern: Dark Silk Shirt [1/34/1]
-- 7005,0,0,0 Skinning Knife [1/34/90]
-- 7087,0,0,0 Pattern: Crimson Silk Cloak [1/34/2]
-- 7088,1,7200,0 Pattern: Crimson Silk Robe [1/34/1]
-- 7089,0,0,0 Pattern: Azure Silk Cloak [1/34/1]
-- 7089,1,43200,0 Pattern: Azure Silk Cloak [1/34/1]
-- 10311,1,3600,0 Pattern: Orange Martial Shirt [1/34/1]
-- 10314,0,0,0 Pattern: Lavender Mageweave Shirt [1/34/1]
-- 10314,1,7200,0 Pattern: Lavender Mageweave Shirt [1/34/1]
-- 10317,0,0,0 Pattern: Pink Mageweave Shirt [1/34/1]
-- 10317,1,7200,0 Pattern: Pink Mageweave Shirt [1/34/1]
-- 10318,0,0,0 Pattern: Admiral's Hat [1/34/1]
-- 10321,0,0,0 Pattern: Tuxedo Shirt [1/34/1]
-- 10321,1,3600,0 Pattern: Tuxedo Shirt [1/34/1]
-- 10323,0,0,0 Pattern: Tuxedo Pants [1/34/1]
-- 10323,1,3600,0 Pattern: Tuxedo Pants [1/34/1]
-- 10325,0,0,0 Pattern: White Wedding Dress [1/34/1]
-- 10326,0,0,0 Pattern: Tuxedo Jacket [1/34/1]
-- 10326,1,3600,0 Pattern: Tuxedo Jacket [1/34/1]
-- 13484,0,0,0 Recipe: Transmute Earth to Water [1/34/1]
-- 14627,0,0,0 Pattern: Bright Yellow Shirt [1/34/1]
-- 14630,0,0,0 Pattern: Enchanter's Cowl [1/34/2]
-- 19202,0,0,0 Plans: Heavy Timbermaw Belt [1/34/1]
-- 19204,0,0,0 Plans: Heavy Timbermaw Boots [1/34/1]
-- 19215,0,0,0 Pattern: Wisdom of the Timbermaw [1/34/1]
-- 19218,0,0,0 Pattern: Mantle of the Timbermaw [1/34/1]
-- 19326,0,0,0 Pattern: Might of the Timbermaw [1/34/1]
-- 19327,0,0,0 Pattern: Timbermaw Brawlers [1/34/1]
-- 19445,0,0,0 Formula: Enchant Weapon - Agility [1/34/1]
-- 20253,0,0,0 Pattern: Warbear Harness [1/34/1]
-- 20254,0,0,0 Pattern: Warbear Woolies [1/34/1]
-- 21358,0,0,0 Pattern: Soul Pouch [1/34/1]
-- 21892,0,0,0 Pattern: Bolt of Imbued Netherweave [3/34/3]
-- 21893,0,0,0 Pattern: Imbued Netherweave Bag [1/34/2]
-- 21894,0,0,0 Pattern: Bolt of Soulcloth [1/34/2]
-- 21894,1,43200,0 Pattern: Bolt of Soulcloth [1/34/2]
-- 21896,0,0,0 Pattern: Netherweave Robe [2/34/2]
-- 21896,1,43200,0 Pattern: Netherweave Robe [1/34/1]
-- 21897,0,0,0 Pattern: Netherweave Tunic [2/34/2]
-- 21897,1,43200,0 Pattern: Netherweave Tunic [1/34/1]
-- 21898,1,43200,0 Pattern: Imbued Netherweave Pants [1/34/1]
-- 21899,1,43200,0 Pattern: Imbued Netherweave Boots [1/34/1]
-- 21900,1,43200,0 Pattern: Imbued Netherweave Robe [1/34/1]
-- 21901,1,43200,0 Pattern: Imbued Netherweave Tunic [1/34/1]
-- 22392,0,0,0 Formula: Enchant 2H Weapon - Agility [1/34/1]
-- 37915,1,7200,0 Pattern: Dress Shoes [1/34/1]
-- 38327,0,0,0 Pattern: Haliscan Jacket [1/34/1]
-- 38328,0,0,0 Pattern: Haliscan Pantaloons [1/34/1]

INSERT INTO npc_vendor VALUES (5944,4289,0,0,0); -- Salt
INSERT INTO npc_vendor VALUES (6567,4355,1,7200,0); -- Pattern: Icy Cloak
INSERT INTO npc_vendor VALUES (3091,4781,0,0,0); -- Whispering Vest
INSERT INTO npc_vendor VALUES (3091,4782,0,0,0); -- Solstice Robe
INSERT INTO npc_vendor VALUES (3091,4786,0,0,0); -- Wise Man's Belt
INSERT INTO npc_vendor VALUES (1454,4790,0,0,0); -- Inferno Cloak
INSERT INTO npc_vendor VALUES (3096,4790,1,7200,0); -- Inferno Cloak
INSERT INTO npc_vendor VALUES (1454,4792,0,0,0); -- Spirit Cloak
INSERT INTO npc_vendor VALUES (3096,4792,1,7200,0); -- Spirit Cloak
INSERT INTO npc_vendor VALUES (1454,4793,0,0,0); -- Sylvan Cloak
INSERT INTO npc_vendor VALUES (3096,4793,1,7200,0); -- Sylvan Cloak
INSERT INTO npc_vendor VALUES (1454,4827,0,0,0); -- Wizard's Belt
INSERT INTO npc_vendor VALUES (1454,4828,0,0,0); -- Nightwind Belt
INSERT INTO npc_vendor VALUES (1454,4829,0,0,0); -- Dreamer's Belt
INSERT INTO npc_vendor VALUES (4189,5771,0,0,0); -- Pattern: Red Linen Bag
INSERT INTO npc_vendor VALUES (1454,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (1474,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (3364,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (3485,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (4189,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (4577,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (5944,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (4189,6270,0,0,0); -- Pattern: Blue Linen Vest
INSERT INTO npc_vendor VALUES (3364,6270,1,7200,0); -- Pattern: Blue Linen Vest
INSERT INTO npc_vendor VALUES (3485,6272,1,7200,0); -- Pattern: Blue Linen Robe
INSERT INTO npc_vendor VALUES (4168,6272,1,7200,0); -- Pattern: Blue Linen Robe
INSERT INTO npc_vendor VALUES (1347,6274,0,0,0); -- Pattern: Blue Overalls
INSERT INTO npc_vendor VALUES (2394,6274,1,7200,0); -- Pattern: Blue Overalls
INSERT INTO npc_vendor VALUES (3364,6274,1,7200,0); -- Pattern: Blue Overalls
INSERT INTO npc_vendor VALUES (1454,6275,0,0,0); -- Pattern: Greater Adept's Robe
INSERT INTO npc_vendor VALUES (1474,6275,0,0,0); -- Pattern: Greater Adept's Robe
INSERT INTO npc_vendor VALUES (2669,6275,0,0,0); -- Pattern: Greater Adept's Robe
INSERT INTO npc_vendor VALUES (4168,6275,1,3600,0); -- Pattern: Greater Adept's Robe
INSERT INTO npc_vendor VALUES (4577,6275,1,3600,0); -- Pattern: Greater Adept's Robe
INSERT INTO npc_vendor VALUES (2669,6401,0,0,0); -- Pattern: Dark Silk Shirt
INSERT INTO npc_vendor VALUES (2394,6401,1,7200,0); -- Pattern: Dark Silk Shirt
INSERT INTO npc_vendor VALUES (5944,7005,0,0,0); -- Skinning Knife
INSERT INTO npc_vendor VALUES (2670,7087,0,0,0); -- Pattern: Crimson Silk Cloak
INSERT INTO npc_vendor VALUES (6568,7088,1,7200,0); -- Pattern: Crimson Silk Robe
INSERT INTO npc_vendor VALUES (6576,7089,0,0,0); -- Pattern: Azure Silk Cloak
INSERT INTO npc_vendor VALUES (6574,7089,1,43200,0); -- Pattern: Azure Silk Cloak
INSERT INTO npc_vendor VALUES (4168,10311,1,3600,0); -- Pattern: Orange Martial Shirt
INSERT INTO npc_vendor VALUES (8681,10314,0,0,0); -- Pattern: Lavender Mageweave Shirt
INSERT INTO npc_vendor VALUES (3364,10314,1,7200,0); -- Pattern: Lavender Mageweave Shirt
INSERT INTO npc_vendor VALUES (8681,10317,0,0,0); -- Pattern: Pink Mageweave Shirt
INSERT INTO npc_vendor VALUES (3364,10317,1,7200,0); -- Pattern: Pink Mageweave Shirt
INSERT INTO npc_vendor VALUES (2672,10318,0,0,0); -- Pattern: Admiral's Hat
INSERT INTO npc_vendor VALUES (8681,10321,0,0,0); -- Pattern: Tuxedo Shirt
INSERT INTO npc_vendor VALUES (4577,10321,1,3600,0); -- Pattern: Tuxedo Shirt
INSERT INTO npc_vendor VALUES (8681,10323,0,0,0); -- Pattern: Tuxedo Pants
INSERT INTO npc_vendor VALUES (4577,10323,1,3600,0); -- Pattern: Tuxedo Pants
INSERT INTO npc_vendor VALUES (1347,10325,0,0,0); -- Pattern: White Wedding Dress
INSERT INTO npc_vendor VALUES (8681,10326,0,0,0); -- Pattern: Tuxedo Jacket
INSERT INTO npc_vendor VALUES (4577,10326,1,3600,0); -- Pattern: Tuxedo Jacket
INSERT INTO npc_vendor VALUES (11557,13484,0,0,0); -- Recipe: Transmute Earth to Water
INSERT INTO npc_vendor VALUES (2668,14627,0,0,0); -- Pattern: Bright Yellow Shirt
INSERT INTO npc_vendor VALUES (2670,14630,0,0,0); -- Pattern: Enchanter's Cowl
INSERT INTO npc_vendor VALUES (11557,19202,0,0,0); -- Plans: Heavy Timbermaw Belt
INSERT INTO npc_vendor VALUES (11557,19204,0,0,0); -- Plans: Heavy Timbermaw Boots
INSERT INTO npc_vendor VALUES (11557,19215,0,0,0); -- Pattern: Wisdom of the Timbermaw
INSERT INTO npc_vendor VALUES (11557,19218,0,0,0); -- Pattern: Mantle of the Timbermaw
INSERT INTO npc_vendor VALUES (11557,19326,0,0,0); -- Pattern: Might of the Timbermaw
INSERT INTO npc_vendor VALUES (11557,19327,0,0,0); -- Pattern: Timbermaw Brawlers
INSERT INTO npc_vendor VALUES (11557,19445,0,0,0); -- Formula: Enchant Weapon - Agility
INSERT INTO npc_vendor VALUES (11557,20253,0,0,0); -- Pattern: Warbear Harness
INSERT INTO npc_vendor VALUES (11557,20254,0,0,0); -- Pattern: Warbear Woolies
INSERT INTO npc_vendor VALUES (6568,21358,0,0,0); -- Pattern: Soul Pouch
INSERT INTO npc_vendor VALUES (16638,21892,0,0,0); -- Pattern: Bolt of Imbued Netherweave
INSERT INTO npc_vendor VALUES (16767,21892,0,0,0); -- Pattern: Bolt of Imbued Netherweave
INSERT INTO npc_vendor VALUES (19213,21892,0,0,0); -- Pattern: Bolt of Imbued Netherweave
INSERT INTO npc_vendor VALUES (19213,21893,0,0,0); -- Pattern: Imbued Netherweave Bag
INSERT INTO npc_vendor VALUES (16767,21894,0,0,0); -- Pattern: Bolt of Soulcloth
INSERT INTO npc_vendor VALUES (16638,21894,1,43200,0); -- Pattern: Bolt of Soulcloth
INSERT INTO npc_vendor VALUES (16767,21896,0,0,0); -- Pattern: Netherweave Robe
INSERT INTO npc_vendor VALUES (19213,21896,0,0,0); -- Pattern: Netherweave Robe
INSERT INTO npc_vendor VALUES (16638,21896,1,43200,0); -- Pattern: Netherweave Robe
INSERT INTO npc_vendor VALUES (16767,21897,0,0,0); -- Pattern: Netherweave Tunic
INSERT INTO npc_vendor VALUES (19213,21897,0,0,0); -- Pattern: Netherweave Tunic
INSERT INTO npc_vendor VALUES (16638,21897,1,43200,0); -- Pattern: Netherweave Tunic
INSERT INTO npc_vendor VALUES (19722,21898,1,43200,0); -- Pattern: Imbued Netherweave Pants
INSERT INTO npc_vendor VALUES (19722,21899,1,43200,0); -- Pattern: Imbued Netherweave Boots
INSERT INTO npc_vendor VALUES (19521,21900,1,43200,0); -- Pattern: Imbued Netherweave Robe
INSERT INTO npc_vendor VALUES (19521,21901,1,43200,0); -- Pattern: Imbued Netherweave Tunic
INSERT INTO npc_vendor VALUES (11557,22392,0,0,0); -- Formula: Enchant 2H Weapon - Agility
INSERT INTO npc_vendor VALUES (15165,37915,1,7200,0); -- Pattern: Dress Shoes
INSERT INTO npc_vendor VALUES (15165,38327,0,0,0); -- Pattern: Haliscan Jacket
INSERT INTO npc_vendor VALUES (15165,38328,0,0,0); -- Pattern: Haliscan Pantaloons

-- Total count: Templates: 15, single 87, sum 102, before: 597
-- ------------
-- Leatherworking & Tailoring 2
-- 2697,2698,2699,2816,2819,2846,3005,3366,3958,4225,4589,5128,5565,5783,6731,7852,7854,8160,11874,12942,12943,12956,16689,16748,18277,18754,18771,19196,19532,21085
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2697,2698,2699,2816,2819,2846,3005,3366,3958,4225,4589,5128,5565,5783,6731,7852,7854,8160,11874,12942,12943,12956,16689,16748,18277,18754,18771,19196,19532,21085);
UPDATE creature_template SET vendor_id=141 WHERE entry IN (2697,2698,2699,2816,2819,2846,3005,3366,3958,4225,4589,5128,5565,5783,6731,7852,7854,8160,11874,12942,12943,12956,16689,16748,18277,18754,18771,19196,19532,21085);

INSERT INTO npc_vendor_template VALUES (141,2320,0,0,0); -- Coarse Thread [30/30/130]
INSERT INTO npc_vendor_template VALUES (141,2321,0,0,0); -- Fine Thread [30/30/120]
INSERT INTO npc_vendor_template VALUES (141,2325,0,0,0); -- Black Dye [30/30/101]
INSERT INTO npc_vendor_template VALUES (141,2604,0,0,0); -- Red Dye [30/30/119]
INSERT INTO npc_vendor_template VALUES (141,2605,0,0,0); -- Green Dye [30/30/78]
INSERT INTO npc_vendor_template VALUES (141,4289,0,0,0); -- Salt [30/30/98]
INSERT INTO npc_vendor_template VALUES (141,4291,0,0,0); -- Silken Thread [30/30/108]
INSERT INTO npc_vendor_template VALUES (141,4340,0,0,0); -- Gray Dye [30/30/101]
INSERT INTO npc_vendor_template VALUES (141,4341,0,0,0); -- Yellow Dye [30/30/101]
INSERT INTO npc_vendor_template VALUES (141,4342,0,0,0); -- Purple Dye [30/30/101]
INSERT INTO npc_vendor_template VALUES (141,6260,0,0,0); -- Blue Dye [30/30/88]
INSERT INTO npc_vendor_template VALUES (141,6261,0,0,0); -- Orange Dye [30/30/64]
INSERT INTO npc_vendor_template VALUES (141,7005,0,0,0); -- Skinning Knife [30/30/90]
INSERT INTO npc_vendor_template VALUES (141,8343,0,0,0); -- Heavy Silken Thread [30/30/101]
INSERT INTO npc_vendor_template VALUES (141,10290,0,0,0); -- Pink Dye [30/30/64]
INSERT INTO npc_vendor_template VALUES (141,14341,0,0,0); -- Rune Thread [30/30/126]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 236,0,0,0 Cured Leather Armor [1/30/14]
-- 237,0,0,0 Cured Leather Pants [1/30/14]
-- 238,0,0,0 Cured Leather Boots [1/30/14]
-- 239,0,0,0 Cured Leather Gloves [1/30/14]
-- 1849,0,0,0 Cured Leather Belt [1/30/14]
-- 1850,0,0,0 Cured Leather Bracers [1/30/14]
-- 2324,0,0,0 Bleach [1/30/77]
-- 5771,1,7200,0 Pattern: Red Linen Bag [1/30/3]
-- 5772,1,7200,0 Pattern: Red Woolen Bag [1/30/11]
-- 5788,1,43200,0 Pattern: Thick Murloc Armor [1/30/3]
-- 5789,1,43200,0 Pattern: Murloc Scale Bracers [1/30/2]
-- 5973,0,0,0 Pattern: Barbaric Leggings [1/30/2]
-- 6474,2,10800,0 Pattern: Deviate Scale Cloak [1/30/1]
-- 6475,2,10800,0 Pattern: Deviate Scale Gloves [1/30/1]
-- 7289,0,0,0 Pattern: Black Whelp Cloak [1/30/1]
-- 7361,0,0,0 Pattern: Herbalist's Gloves [1/30/1]
-- 7451,0,0,0 Pattern: Green Whelp Bracers [1/30/1]
-- 7451,1,7200,0 Pattern: Green Whelp Bracers [2/30/2]
-- 7613,0,0,0 Pattern: Green Leather Armor [1/30/2]
-- 8385,0,0,0 Pattern: Turtle Scale Gloves [1/30/1]
-- 8385,1,3600,0 Pattern: Turtle Scale Gloves [1/30/1]
-- 8409,0,0,0 Pattern: Nightscape Shoulders [1/30/1]
-- 8409,1,7200,0 Pattern: Nightscape Shoulders [1/30/1]
-- 10311,1,7200,0 Pattern: Orange Martial Shirt [1/30/1]
-- 10325,1,7200,0 Pattern: White Wedding Dress [1/30/1]
-- 12253,1,7200,0 Brilliant Red Cloak [1/30/2]
-- 12254,1,14400,0 Well Oiled Cloak [1/30/3]
-- 13287,1,43200,0 Pattern: Raptor Hide Harness [1/30/1]
-- 13288,0,0,0 Pattern: Raptor Hide Belt [1/30/1]
-- 14635,1,3600,0 Pattern: Gem-studded Leather Belt [1/30/1]
-- 15724,1,7200,0 Pattern: Heavy Scorpid Bracers [1/30/1]
-- 15725,0,0,0 Pattern: Wicked Leather Gauntlets [1/30/1]
-- 15725,1,7200,0 Pattern: Wicked Leather Gauntlets [1/30/1]
-- 15726,1,7200,0 Pattern: Green Dragonscale Breastplate [1/30/1]
-- 15734,0,0,0 Pattern: Living Shoulders [1/30/1]
-- 15734,1,3600,0 Pattern: Living Shoulders [1/30/1]
-- 15741,0,0,0 Pattern: Stormshroud Pants [1/30/1]
-- 15741,1,7200,0 Pattern: Stormshroud Pants [1/30/1]
-- 15762,1,7200,0 Pattern: Heavy Scorpid Helm [1/30/1]
-- 18239,1,3600,0 Pattern: Shadowskin Gloves [1/30/1]
-- 18731,0,0,0 Pattern: Heavy Leather Ball [1/30/1]
-- 18731,1,7200,0 Pattern: Heavy Leather Ball [1/30/1]
-- 18949,1,3600,0 Pattern: Barbaric Bracers [2/30/2]
-- 25720,1,43200,0 Pattern: Heavy Knothide Leather [3/30/3]
-- 25726,1,43200,0 Pattern: Comfortable Insoles [2/30/2]

INSERT INTO npc_vendor VALUES (5783,236,0,0,0); -- Cured Leather Armor
INSERT INTO npc_vendor VALUES (5783,237,0,0,0); -- Cured Leather Pants
INSERT INTO npc_vendor VALUES (5783,238,0,0,0); -- Cured Leather Boots
INSERT INTO npc_vendor VALUES (5783,239,0,0,0); -- Cured Leather Gloves
INSERT INTO npc_vendor VALUES (5783,1849,0,0,0); -- Cured Leather Belt
INSERT INTO npc_vendor VALUES (5783,1850,0,0,0); -- Cured Leather Bracers
INSERT INTO npc_vendor VALUES (3005,2324,0,0,0); -- Bleach
INSERT INTO npc_vendor VALUES (3005,5771,1,7200,0); -- Pattern: Red Linen Bag
INSERT INTO npc_vendor VALUES (3005,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (2846,5788,1,43200,0); -- Pattern: Thick Murloc Armor
INSERT INTO npc_vendor VALUES (2846,5789,1,43200,0); -- Pattern: Murloc Scale Bracers
INSERT INTO npc_vendor VALUES (3958,5973,0,0,0); -- Pattern: Barbaric Leggings
INSERT INTO npc_vendor VALUES (5783,6474,2,10800,0); -- Pattern: Deviate Scale Cloak
INSERT INTO npc_vendor VALUES (5783,6475,2,10800,0); -- Pattern: Deviate Scale Gloves
INSERT INTO npc_vendor VALUES (2697,7289,0,0,0); -- Pattern: Black Whelp Cloak
INSERT INTO npc_vendor VALUES (6731,7361,0,0,0); -- Pattern: Herbalist's Gloves
INSERT INTO npc_vendor VALUES (7852,7451,0,0,0); -- Pattern: Green Whelp Bracers
INSERT INTO npc_vendor VALUES (4225,7451,1,7200,0); -- Pattern: Green Whelp Bracers
INSERT INTO npc_vendor VALUES (7854,7451,1,7200,0); -- Pattern: Green Whelp Bracers
INSERT INTO npc_vendor VALUES (2698,7613,0,0,0); -- Pattern: Green Leather Armor
INSERT INTO npc_vendor VALUES (7852,8385,0,0,0); -- Pattern: Turtle Scale Gloves
INSERT INTO npc_vendor VALUES (7854,8385,1,3600,0); -- Pattern: Turtle Scale Gloves
INSERT INTO npc_vendor VALUES (8160,8409,0,0,0); -- Pattern: Nightscape Shoulders
INSERT INTO npc_vendor VALUES (7854,8409,1,7200,0); -- Pattern: Nightscape Shoulders
INSERT INTO npc_vendor VALUES (3005,10311,1,7200,0); -- Pattern: Orange Martial Shirt
INSERT INTO npc_vendor VALUES (3005,10325,1,7200,0); -- Pattern: White Wedding Dress
INSERT INTO npc_vendor VALUES (11874,12253,1,7200,0); -- Brilliant Red Cloak
INSERT INTO npc_vendor VALUES (11874,12254,1,14400,0); -- Well Oiled Cloak
INSERT INTO npc_vendor VALUES (2819,13287,1,43200,0); -- Pattern: Raptor Hide Harness
INSERT INTO npc_vendor VALUES (2816,13288,0,0,0); -- Pattern: Raptor Hide Belt
INSERT INTO npc_vendor VALUES (2699,14635,1,3600,0); -- Pattern: Gem-studded Leather Belt
INSERT INTO npc_vendor VALUES (12956,15724,1,7200,0); -- Pattern: Heavy Scorpid Bracers
INSERT INTO npc_vendor VALUES (12942,15725,0,0,0); -- Pattern: Wicked Leather Gauntlets
INSERT INTO npc_vendor VALUES (12943,15725,1,7200,0); -- Pattern: Wicked Leather Gauntlets
INSERT INTO npc_vendor VALUES (11874,15726,1,7200,0); -- Pattern: Green Dragonscale Breastplate
INSERT INTO npc_vendor VALUES (7852,15734,0,0,0); -- Pattern: Living Shoulders
INSERT INTO npc_vendor VALUES (7854,15734,1,3600,0); -- Pattern: Living Shoulders
INSERT INTO npc_vendor VALUES (12942,15741,0,0,0); -- Pattern: Stormshroud Pants
INSERT INTO npc_vendor VALUES (12943,15741,1,7200,0); -- Pattern: Stormshroud Pants
INSERT INTO npc_vendor VALUES (12956,15762,1,7200,0); -- Pattern: Heavy Scorpid Helm
INSERT INTO npc_vendor VALUES (2699,18239,1,3600,0); -- Pattern: Shadowskin Gloves
INSERT INTO npc_vendor VALUES (5128,18731,0,0,0); -- Pattern: Heavy Leather Ball
INSERT INTO npc_vendor VALUES (3366,18731,1,7200,0); -- Pattern: Heavy Leather Ball
INSERT INTO npc_vendor VALUES (4225,18949,1,3600,0); -- Pattern: Barbaric Bracers
INSERT INTO npc_vendor VALUES (4589,18949,1,3600,0); -- Pattern: Barbaric Bracers
INSERT INTO npc_vendor VALUES (16689,25720,1,43200,0); -- Pattern: Heavy Knothide Leather
INSERT INTO npc_vendor VALUES (16748,25720,1,43200,0); -- Pattern: Heavy Knothide Leather
INSERT INTO npc_vendor VALUES (19196,25720,1,43200,0); -- Pattern: Heavy Knothide Leather
INSERT INTO npc_vendor VALUES (16689,25726,1,43200,0); -- Pattern: Comfortable Insoles
INSERT INTO npc_vendor VALUES (16748,25726,1,43200,0); -- Pattern: Comfortable Insoles

-- Total count: Templates: 16, single 50, sum 66, before: 530

-- ------------
-- Boots
-- 1339,23571
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1339,23571);
UPDATE creature_template SET vendor_id=244 WHERE entry IN (1339,23571);

INSERT INTO npc_vendor_template VALUES (244,2420,0,0,0); -- Augmented Chain Boots [2/2/13]
INSERT INTO npc_vendor_template VALUES (244,2426,0,0,0); -- Brigandine Boots [2/2/16]
INSERT INTO npc_vendor_template VALUES (244,2432,0,0,0); -- Russet Boots [2/2/14]
INSERT INTO npc_vendor_template VALUES (244,2438,0,0,0); -- Embroidered Boots [2/2/15]
INSERT INTO npc_vendor_template VALUES (244,2467,0,0,0); -- Studded Boots [2/2/13]
INSERT INTO npc_vendor_template VALUES (244,2473,0,0,0); -- Reinforced Leather Boots [2/2/13]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 2522,0,0,0 Crescent Axe [1/2/19]
-- 2523,0,0,0 Bullova [1/2/25]
-- 2530,0,0,0 Francisca [1/2/19]
-- 2531,0,0,0 Great Axe [1/2/25]

INSERT INTO npc_vendor VALUES (23571,2522,0,0,0); -- Crescent Axe
INSERT INTO npc_vendor VALUES (23571,2523,0,0,0); -- Bullova
INSERT INTO npc_vendor VALUES (23571,2530,0,0,0); -- Francisca
INSERT INTO npc_vendor VALUES (23571,2531,0,0,0); -- Great Axe

-- Total count: Templates: 6, single 4, sum 10, before: 16

-- ------------
-- Hanbok (Random 0)
-- 1299,4184
-- ------------
DELETE FROM npc_vendor WHERE entry IN (1299,4184);
UPDATE creature_template SET vendor_id=20 WHERE entry IN (1299,4184);

INSERT INTO npc_vendor_template VALUES (20,13896,0,0,0); -- Dark Green Wedding Hanbok [2/2/3]
INSERT INTO npc_vendor_template VALUES (20,13897,0,0,0); -- White Traditional Hanbok [2/2/3]
INSERT INTO npc_vendor_template VALUES (20,13898,0,0,0); -- Royal Dangui [2/2/3]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 3426,0,0,0 Bold Yellow Shirt [1/2/1]
-- 3427,0,0,0 Stylish Black Shirt [1/2/1]
-- 3428,0,0,0 Common Gray Shirt [1/2/14]
-- 13895,1,604800,0 Formal Dangui [1/2/1]
-- 13899,1,604800,0 Red Traditional Hanbok [1/2/1]
-- 13900,1,604800,0 Green Wedding Hanbok [1/2/1]

INSERT INTO npc_vendor VALUES (1299,3426,0,0,0); -- Bold Yellow Shirt
INSERT INTO npc_vendor VALUES (1299,3427,0,0,0); -- Stylish Black Shirt
INSERT INTO npc_vendor VALUES (1299,3428,0,0,0); -- Common Gray Shirt
INSERT INTO npc_vendor VALUES (4184,13895,1,604800,0); -- Formal Dangui
INSERT INTO npc_vendor VALUES (4184,13899,1,604800,0); -- Red Traditional Hanbok
INSERT INTO npc_vendor VALUES (4184,13900,1,604800,0); -- Green Wedding Hanbok

-- Total count: Templates: 3, single 6, sum 9, before: 12

-- ------------
-- Random 1
-- Sorry, cannot find a better name
-- 3180,4890
-- ------------
DELETE FROM npc_vendor WHERE entry IN (3180,4890);
UPDATE creature_template SET vendor_id=21 WHERE entry IN (3180,4890);

INSERT INTO npc_vendor_template VALUES (21,4824,0,0,0); -- Blurred Axe [2/2/4]
INSERT INTO npc_vendor_template VALUES (21,4825,0,0,0); -- Callous Axe [2/2/4]
INSERT INTO npc_vendor_template VALUES (21,4826,0,0,0); -- Marauder Axe [2/2/4]
INSERT INTO npc_vendor_template VALUES (21,4831,0,0,0); -- Stalking Pants [2/2/4]
INSERT INTO npc_vendor_template VALUES (21,4832,0,0,0); -- Mystic Sarong [2/2/4]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4378,3,7200,0 Heavy Dynamite [1/2/1]
-- 4817,0,0,0 Blessed Claymore [1/2/4]
-- 4818,0,0,0 Executioner's Sword [1/2/4]
-- 4830,0,0,0 Saber Leggings [1/2/3]
-- 4830,1,43200,0 Saber Leggings [1/2/1]
-- 4833,0,0,0 Glorious Shoulders [1/2/4]
-- 4833,1,43200,0 Glorious Shoulders [1/2/1]
-- 4835,0,0,0 Elite Shoulders [1/2/4]
-- 4835,1,43200,0 Elite Shoulders [1/2/1]
-- 5740,0,0,0 Red Fireworks Rocket [1/2/11]

INSERT INTO npc_vendor VALUES (3180,4378,3,7200,0); -- Heavy Dynamite
INSERT INTO npc_vendor VALUES (4890,4817,0,0,0); -- Blessed Claymore
INSERT INTO npc_vendor VALUES (4890,4818,0,0,0); -- Executioner's Sword
INSERT INTO npc_vendor VALUES (4890,4830,0,0,0); -- Saber Leggings
INSERT INTO npc_vendor VALUES (3180,4830,1,43200,0); -- Saber Leggings
INSERT INTO npc_vendor VALUES (4890,4833,0,0,0); -- Glorious Shoulders
INSERT INTO npc_vendor VALUES (3180,4833,1,43200,0); -- Glorious Shoulders
INSERT INTO npc_vendor VALUES (4890,4835,0,0,0); -- Elite Shoulders
INSERT INTO npc_vendor VALUES (3180,4835,1,43200,0); -- Elite Shoulders
INSERT INTO npc_vendor VALUES (3180,5740,0,0,0); -- Red Fireworks Rocket

-- Total count: Templates: 5, single 10, sum 15, before: 20

-- ------------
-- Random 2
-- 2679,3537
-- ------------
DELETE FROM npc_vendor WHERE entry IN (2679,3537);
UPDATE creature_template SET vendor_id=22 WHERE entry IN (2679,3537);

INSERT INTO npc_vendor_template VALUES (22,4827,0,0,0); -- Wizard's Belt [2/2/6]
INSERT INTO npc_vendor_template VALUES (22,4828,0,0,0); -- Nightwind Belt [2/2/6]
INSERT INTO npc_vendor_template VALUES (22,4829,0,0,0); -- Dreamer's Belt [2/2/6]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 4830,0,0,0 Saber Leggings [1/2/3]
-- 4831,0,0,0 Stalking Pants [1/2/4]
-- 4832,0,0,0 Mystic Sarong [1/2/4]
-- 4833,0,0,0 Glorious Shoulders [1/2/4]
-- 4835,0,0,0 Elite Shoulders [1/2/4]
-- 4836,1,14400,0 Fireproof Orb [1/2/2]
-- 4837,1,14400,0 Strength of Will [1/2/2]
-- 4838,0,0,0 Orb of Power [1/2/2]
-- 5772,1,7200,0 Pattern: Red Woolen Bag [1/2/11]
-- 6377,1,14400,0 Formula: Enchant Boots - Minor Agility [1/2/1]
-- 7114,0,0,0 Pattern: Azure Silk Gloves [1/2/1]
-- 7290,0,0,0 Pattern: Red Whelp Gloves [1/2/1]
-- 7362,1,14400,0 Pattern: Earthen Leather Shoulders [1/2/1]
-- 7561,1,3600,0 Schematic: Goblin Jumper Cables [1/2/4]
-- 7613,0,0,0 Pattern: Green Leather Armor [1/2/2]

INSERT INTO npc_vendor VALUES (2679,4830,0,0,0); -- Saber Leggings
INSERT INTO npc_vendor VALUES (2679,4831,0,0,0); -- Stalking Pants
INSERT INTO npc_vendor VALUES (2679,4832,0,0,0); -- Mystic Sarong
INSERT INTO npc_vendor VALUES (2679,4833,0,0,0); -- Glorious Shoulders
INSERT INTO npc_vendor VALUES (2679,4835,0,0,0); -- Elite Shoulders
INSERT INTO npc_vendor VALUES (3537,4836,1,14400,0); -- Fireproof Orb
INSERT INTO npc_vendor VALUES (3537,4837,1,14400,0); -- Strength of Will
INSERT INTO npc_vendor VALUES (3537,4838,0,0,0); -- Orb of Power
INSERT INTO npc_vendor VALUES (3537,5772,1,7200,0); -- Pattern: Red Woolen Bag
INSERT INTO npc_vendor VALUES (3537,6377,1,14400,0); -- Formula: Enchant Boots - Minor Agility
INSERT INTO npc_vendor VALUES (2679,7114,0,0,0); -- Pattern: Azure Silk Gloves
INSERT INTO npc_vendor VALUES (2679,7290,0,0,0); -- Pattern: Red Whelp Gloves
INSERT INTO npc_vendor VALUES (3537,7362,1,14400,0); -- Pattern: Earthen Leather Shoulders
INSERT INTO npc_vendor VALUES (3537,7561,1,3600,0); -- Schematic: Goblin Jumper Cables
INSERT INTO npc_vendor VALUES (2679,7613,0,0,0); -- Pattern: Green Leather Armor

-- Total count: Templates: 3, single 15, sum 18, before: 21

-- ------------
-- Draenei Armor
-- 19373,19517,19694
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19373,19517,19694);
UPDATE creature_template SET vendor_id=245 WHERE entry IN (19373,19517,19694);

INSERT INTO npc_vendor_template VALUES (245,30765,0,0,0); -- Heavy Draenic Breastplate [3/3/6]
INSERT INTO npc_vendor_template VALUES (245,30771,0,0,0); -- Heavy Draenic Bracers [3/3/6]
INSERT INTO npc_vendor_template VALUES (245,30775,0,0,0); -- Layered Bone Shield [3/3/6]
INSERT INTO npc_vendor_template VALUES (245,30777,0,0,0); -- Aldor Heavy Belt [3/3/6]
INSERT INTO npc_vendor_template VALUES (245,30781,0,0,0); -- Mag'hari Chain Vest [3/3/6]
INSERT INTO npc_vendor_template VALUES (245,30784,0,0,0); -- Worn Mag'hari Gauntlets [3/3/6]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 11284,0,0,0 Accurate Slugs [1/3/95]
-- 11285,0,0,0 Jagged Arrow [1/3/100]
-- 23594,1,43200,0 Plans: Adamantite Plate Bracers [1/3/2]
-- 23595,1,43200,0 Plans: Adamantite Plate Gloves [1/3/2]
-- 23596,1,43200,0 Plans: Adamantite Breastplate [1/3/2]
-- 23638,1,43200,0 Plans: Lesser Ward of Shielding [1/3/1]
-- 25847,1,43200,0 Plans: Eternium Rod [1/3/1]
-- 28053,0,0,0 Wicked Arrow [1/3/100]
-- 28056,0,0,0 Blackflight Arrow [1/3/49]
-- 28060,0,0,0 Impact Shot [1/3/89]
-- 28061,0,0,0 Ironbite Shell [1/3/51]

INSERT INTO npc_vendor VALUES (19694,11284,0,0,0); -- Accurate Slugs
INSERT INTO npc_vendor VALUES (19694,11285,0,0,0); -- Jagged Arrow
INSERT INTO npc_vendor VALUES (19694,23594,1,43200,0); -- Plans: Adamantite Plate Bracers
INSERT INTO npc_vendor VALUES (19694,23595,1,43200,0); -- Plans: Adamantite Plate Gloves
INSERT INTO npc_vendor VALUES (19694,23596,1,43200,0); -- Plans: Adamantite Breastplate
INSERT INTO npc_vendor VALUES (19373,23638,1,43200,0); -- Plans: Lesser Ward of Shielding
INSERT INTO npc_vendor VALUES (19373,25847,1,43200,0); -- Plans: Eternium Rod
INSERT INTO npc_vendor VALUES (19694,28053,0,0,0); -- Wicked Arrow
INSERT INTO npc_vendor VALUES (19694,28056,0,0,0); -- Blackflight Arrow
INSERT INTO npc_vendor VALUES (19694,28060,0,0,0); -- Impact Shot
INSERT INTO npc_vendor VALUES (19694,28061,0,0,0); -- Ironbite Shell

-- Total count: Templates: 6, single 11, sum 17, before: 29

-- ------------
-- Random 3
-- 19471,22266,23748,24408
-- ------------
DELETE FROM npc_vendor WHERE entry IN (19471,22266,23748,24408);
UPDATE creature_template SET vendor_id=23 WHERE entry IN (19471,22266,23748,24408);

INSERT INTO npc_vendor_template VALUES (23,8948,0,0,0); -- Dried King Bolete [4/4/27]
INSERT INTO npc_vendor_template VALUES (23,27859,0,0,0); -- Zangar Caps [4/4/4]
INSERT INTO npc_vendor_template VALUES (23,29453,0,0,0); -- Sporeggar Mushroom [4/4/4]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 8766,0,0,0 Morning Glory Dew [1/4/188]
-- 8932,0,0,0 Alterac Swiss [1/4/35]
-- 8952,0,0,0 Roasted Quail [2/4/101]
-- 8953,0,0,0 Deep Fried Plantains [2/4/41]
-- 8957,0,0,0 Spinefin Halibut [2/4/35]
-- 27657,12,7200,0 Blackened Basilisk [1/4/1]
-- 27666,12,7200,0 Golden Fish Sticks [1/4/1]
-- 27667,12,7200,0 Spicy Crawdad [1/4/1]
-- 27854,0,0,0 Smoked Talbuk Venison [2/4/35]
-- 27856,0,0,0 Skethyl Berries [2/4/15]
-- 27857,0,0,0 Garadar Sharp [1/4/11]
-- 27858,0,0,0 Sunspring Carp [2/4/6]
-- 27860,0,0,0 Purified Draenic Water [1/4/51]
-- 28399,0,0,0 Filtered Draenic Water [1/4/51]
-- 29448,0,0,0 Mag'har Mild Cheese [1/4/11]
-- 29450,0,0,0 Telaari Grapes [2/4/16]
-- 29451,0,0,0 Clefthoof Ribs [2/4/36]
-- 29452,0,0,0 Zangar Trout [2/4/6]
-- 32685,0,0,0 Ogri'la Chicken Fingers [1/4/1]
-- 32686,0,0,0 Mingo's Fortune Giblets [1/4/1]
-- 33926,1,604800,0 Sealed Scroll Case [1/4/1]

INSERT INTO npc_vendor VALUES (23748,8766,0,0,0); -- Morning Glory Dew
INSERT INTO npc_vendor VALUES (22266,8932,0,0,0); -- Alterac Swiss
INSERT INTO npc_vendor VALUES (22266,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (23748,8952,0,0,0); -- Roasted Quail
INSERT INTO npc_vendor VALUES (19471,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (22266,8953,0,0,0); -- Deep Fried Plantains
INSERT INTO npc_vendor VALUES (22266,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (23748,8957,0,0,0); -- Spinefin Halibut
INSERT INTO npc_vendor VALUES (24408,27657,12,7200,0); -- Blackened Basilisk
INSERT INTO npc_vendor VALUES (24408,27666,12,7200,0); -- Golden Fish Sticks
INSERT INTO npc_vendor VALUES (24408,27667,12,7200,0); -- Spicy Crawdad
INSERT INTO npc_vendor VALUES (22266,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (23748,27854,0,0,0); -- Smoked Talbuk Venison
INSERT INTO npc_vendor VALUES (19471,27856,0,0,0); -- Skethyl Berries
INSERT INTO npc_vendor VALUES (22266,27856,0,0,0); -- Skethyl Berries
INSERT INTO npc_vendor VALUES (22266,27857,0,0,0); -- Garadar Sharp
INSERT INTO npc_vendor VALUES (22266,27858,0,0,0); -- Sunspring Carp
INSERT INTO npc_vendor VALUES (23748,27858,0,0,0); -- Sunspring Carp
INSERT INTO npc_vendor VALUES (23748,27860,0,0,0); -- Purified Draenic Water
INSERT INTO npc_vendor VALUES (23748,28399,0,0,0); -- Filtered Draenic Water
INSERT INTO npc_vendor VALUES (22266,29448,0,0,0); -- Mag'har Mild Cheese
INSERT INTO npc_vendor VALUES (19471,29450,0,0,0); -- Telaari Grapes
INSERT INTO npc_vendor VALUES (22266,29450,0,0,0); -- Telaari Grapes
INSERT INTO npc_vendor VALUES (22266,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (23748,29451,0,0,0); -- Clefthoof Ribs
INSERT INTO npc_vendor VALUES (22266,29452,0,0,0); -- Zangar Trout
INSERT INTO npc_vendor VALUES (23748,29452,0,0,0); -- Zangar Trout
INSERT INTO npc_vendor VALUES (22266,32685,0,0,0); -- Ogri'la Chicken Fingers
INSERT INTO npc_vendor VALUES (22266,32686,0,0,0); -- Mingo's Fortune Giblets
INSERT INTO npc_vendor VALUES (24408,33926,1,604800,0); -- Sealed Scroll Case

-- Total count: Templates: 3, single 30, sum 33, before: 42

-- ------------
-- Throwing
-- 4235,4592
-- ------------
DELETE FROM npc_vendor WHERE entry IN (4235,4592);
UPDATE creature_template SET vendor_id=339 WHERE entry IN (4235,4592);

INSERT INTO npc_vendor_template VALUES (339,25861,0,0,0); -- Crude Throwing Axe [2/2/44]
INSERT INTO npc_vendor_template VALUES (339,25872,0,0,0); -- Balanced Throwing Dagger [2/2/44]
INSERT INTO npc_vendor_template VALUES (339,25873,0,0,0); -- Keen Throwing Knife [2/2/51]
INSERT INTO npc_vendor_template VALUES (339,25875,0,0,0); -- Deadly Throwing Axe [2/2/45]
INSERT INTO npc_vendor_template VALUES (339,25876,0,0,0); -- Gleaming Throwing Axe [2/2/39]

-- UNIQUE ITEMS THAT NPC'S SELL (NOT ALLOCATED INTO TEMPLATE)
-- ----------------------------------------------------------
-- 12247,1,7200,0 Broad Bladed Knife [1/2/1]

INSERT INTO npc_vendor VALUES (4235,12247,1,7200,0); -- Broad Bladed Knife

-- Total count: Templates: 5, single 1, sum 6, before: 11

-- ------------------------------------------------------

-- Inkeeper Aelerya
-- 22922
-- no vendor entries for her so far...
INSERT INTO npc_vendor VALUES (22922,21815,10,43200,0); -- Love Token [added for LiitA]
INSERT INTO npc_vendor VALUES (22922,21829,0,0,0); -- Perfume Bottle [added for LiitA]
INSERT INTO npc_vendor VALUES (22922,21833,0,0,0); -- Cologne Bottle [added for LiitA]


