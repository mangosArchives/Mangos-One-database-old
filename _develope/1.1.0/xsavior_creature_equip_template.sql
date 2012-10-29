-- =============================================================
-- CREATURE_EQUIP_TEMPLATE CLEANUP / CONVERSION / IMPLIMENTATION
-- =============================================================
DELETE FROM creature_equip_template WHERE entry BETWEEN 5000 and 5350;

-- ENTRY 1 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=1;
INSERT INTO creature_equip_template VALUES (5001,0,0,5258);
UPDATE creature_template SET equipment_id=5001 WHERE equipment_id=1; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5001 WHERE equipment_id=1; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5001);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=1;

-- ENTRY 2 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=2;
INSERT INTO creature_equip_template VALUES (5002,0,0,5259);
UPDATE creature_template SET equipment_id=5002 WHERE equipment_id=2; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5002 WHERE equipment_id=2; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5002);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=2;

-- ENTRY 3 (0x02FF0502 / 0x0111) - Existing Item Template Entry Looks Correct
DELETE FROM creature_equip_template WHERE entry=3;
INSERT INTO creature_equip_template VALUES (5003,5187,0,0);
UPDATE creature_template SET equipment_id=5003 WHERE equipment_id=3; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5003 WHERE equipment_id=3; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5003);
DELETE FROM creature_equip_template_raw WHERE entry=3;

-- ENTRY 4 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=4;
INSERT INTO creature_equip_template VALUES (5004,0,0,5260);
UPDATE creature_template SET equipment_id=5004 WHERE equipment_id=4; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5004 WHERE equipment_id=4; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5004);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=4;

-- ENTRY 5 (0x0F020202 / 0x0000) - Existing Item Template Entry Looks Correct
DELETE FROM creature_equip_template WHERE entry=5;
INSERT INTO creature_equip_template VALUES (5005,0,0,25244);
UPDATE creature_template SET equipment_id=5005 WHERE equipment_id=5; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5005 WHERE equipment_id=5; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5005);
DELETE FROM creature_equip_template_raw WHERE entry=5;

-- ENTRY 6 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=6;
INSERT INTO creature_equip_template VALUES (5006,0,0,5261);
UPDATE creature_template SET equipment_id=5006 WHERE equipment_id=6; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5006 WHERE equipment_id=6; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5006);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=6;

-- ENTRY 7 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=7;
DELETE FROM creature_equip_template_raw WHERE entry=7;
UPDATE creature SET equipment_id=0 WHERE equipment_id=7; -- CORRECT BAD ENTRY IN TBC-DB (IS ASSIGNED 865 IN CREATURE_TEMPLATE FOR THIS NPC)

-- ENTRY 8 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=8;
INSERT INTO creature_equip_template VALUES (5007,0,0,5262);
UPDATE creature_template SET equipment_id=5007 WHERE equipment_id=8; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5007 WHERE equipment_id=8; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5007);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5262,6235,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=8;

-- ENTRY 9 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=9;
DELETE FROM creature_equip_template_raw WHERE entry=9;

-- ENTRY 10 (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=10;
INSERT INTO creature_equip_template VALUES (5008,0,0,2552);
UPDATE creature_template SET equipment_id=5008 WHERE equipment_id=10; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5008 WHERE equipment_id=10; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5008);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=10;

-- ENTRY 11 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=11;
DELETE FROM creature_equip_template_raw WHERE entry=11;

-- ENTRY 12 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=12;
INSERT INTO creature_equip_template VALUES (5009,10756,0,0);
UPDATE creature_template SET equipment_id=5009 WHERE equipment_id=12; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5009 WHERE equipment_id=12; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5009);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10756,19766,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=12;

-- ENTRY 13 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=13;
INSERT INTO creature_equip_template VALUES (5010,0,0,2550);
UPDATE creature_template SET equipment_id=5010 WHERE equipment_id=13; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5010 WHERE equipment_id=13; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5010);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=13;

-- ENTRY 14 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=14;
INSERT INTO creature_equip_template VALUES (5011,2178,2180,0);
UPDATE creature_template SET equipment_id=5011 WHERE equipment_id=14; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5011 WHERE equipment_id=14; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5011);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2178,7482,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2180,7486,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=14;

-- ENTRY 15 (0x01FF1202 / 0x001A) 
DELETE FROM creature_equip_template WHERE entry=15;
INSERT INTO creature_equip_template VALUES (5012,0,0,2551);
UPDATE creature_template SET equipment_id=5012 WHERE equipment_id=15; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5012 WHERE equipment_id=15; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5012);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=15;

-- ENTRY 16 (0x01FF0F02 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=16;
INSERT INTO creature_equip_template VALUES (5013,2184,2053,0);
UPDATE creature_template SET equipment_id=5013 WHERE equipment_id=16; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5013 WHERE equipment_id=16; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5013);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,4,6,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=16;

-- ENTRY 17 (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=17;
INSERT INTO creature_equip_template VALUES (5014,0,0,11021);
UPDATE creature_template SET equipment_id=5014 WHERE equipment_id=17; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5014 WHERE equipment_id=17; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5014);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11021,20504,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=17;

-- ENTRY 18 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=18;
INSERT INTO creature_equip_template VALUES (5015,12297,12453,0);
UPDATE creature_template SET equipment_id=5015 WHERE equipment_id=18; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5015 WHERE equipment_id=18; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5015);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12297,22366,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12453,22637,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=18;

-- ENTRY 19 (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=19;
INSERT INTO creature_equip_template VALUES (5016,0,0,12523);
UPDATE creature_template SET equipment_id=5016 WHERE equipment_id=19; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5016 WHERE equipment_id=19; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5016);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12523,20726,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=19;

-- ENTRY 20 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=20;
DELETE FROM creature_equip_template_raw WHERE entry=20;

-- ENTRY 21 (0x02FF1302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=21;
INSERT INTO creature_equip_template VALUES (5017,0,0,6231);
UPDATE creature_template SET equipment_id=5017 WHERE equipment_id=21; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5017 WHERE equipment_id=21; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5017);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6231,21094,-1,19,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=21;

-- ENTRY 22 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=22;
INSERT INTO creature_equip_template VALUES (5018,2198,3694,0);
UPDATE creature_template SET equipment_id=5018 WHERE equipment_id=22; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5018 WHERE equipment_id=22; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5018);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2198,7465,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3694,6534,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=22;

-- ENTRY 23 (0x01FF0E02 / 0x000D) and (0x01FF0604 / 0x040E) 
DELETE FROM creature_equip_template WHERE entry=23;
INSERT INTO creature_equip_template VALUES (5019,2705,1984,0);
UPDATE creature_template SET equipment_id=5019 WHERE equipment_id=23; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5019 WHERE equipment_id=23; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5019);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2705,24595,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=23;

-- ENTRY 24 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=24;
INSERT INTO creature_equip_template VALUES (5020,1896,2052,2551);
UPDATE creature_template SET equipment_id=5020 WHERE equipment_id=24; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5020 WHERE equipment_id=24; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5020);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=24;

-- ENTRY 25 (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=25;
INSERT INTO creature_equip_template VALUES (5021,0,0,5870);
UPDATE creature_template SET equipment_id=5021 WHERE equipment_id=25; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5021 WHERE equipment_id=25; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5021);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=25;

-- ENTRY 26 (0x01FF0F02 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=26;
INSERT INTO creature_equip_template VALUES (5022,5281,0,2551);
UPDATE creature_template SET equipment_id=5022 WHERE equipment_id=26; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5022 WHERE equipment_id=26; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5022);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=26;

-- ENTRY 27 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=27;
INSERT INTO creature_equip_template VALUES (5023,0,0,13147);
UPDATE creature_template SET equipment_id=5023 WHERE equipment_id=27; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5023 WHERE equipment_id=27; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5023);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13147,23639,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=27;

-- ENTRY 28 (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=28;
INSERT INTO creature_equip_template VALUES (5024,0,0,13924);
UPDATE creature_template SET equipment_id=5024 WHERE equipment_id=28; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5024 WHERE equipment_id=28; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5024);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13924,24721,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=28;

-- ENTRY 29 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=29;
INSERT INTO creature_equip_template VALUES (5025,0,0,14105);
UPDATE creature_template SET equipment_id=5025 WHERE equipment_id=29; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5025 WHERE equipment_id=29; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5025);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14105,24930,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=29;

-- ENTRY 30 (0x1A010302 / 0x0000) - INCORRECT DEFAULT ESLOT HEX DATA (UPDATED WITH DBC VALUE)
DELETE FROM creature_equip_template WHERE entry=30;
INSERT INTO creature_equip_template VALUES (5026,0,0,14642);
UPDATE creature_template SET equipment_id=5026 WHERE equipment_id=30; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5026 WHERE equipment_id=30; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5026);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14642,25260,1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=30;

-- ENTRY 31 (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=31;
INSERT INTO creature_equip_template VALUES (5027,0,0,15460);
UPDATE creature_template SET equipment_id=5027 WHERE equipment_id=31; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5027 WHERE equipment_id=31; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5027);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (15460,26385,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=31;

-- ENTRY 32 (0x01FF0302 / 0x001A) - Existing Item Template Entry Looks Correct
DELETE FROM creature_equip_template WHERE entry=32;
INSERT INTO creature_equip_template VALUES (5028,0,0,18282);
UPDATE creature_template SET equipment_id=5028 WHERE equipment_id=32; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5028 WHERE equipment_id=32; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5028);
DELETE FROM creature_equip_template_raw WHERE entry=32;

-- ENTRY 33 (0x02FF0202 / 0x000F) - Existing Item Template Entry Looks Correct (THIS HEX DATA IS WRONG FOR SUBCLASS CORRECT IS 7 NOT 2)
DELETE FROM creature_equip_template WHERE entry=33;
INSERT INTO creature_equip_template VALUES (5029,0,0,23051);
UPDATE creature_template SET equipment_id=5029 WHERE equipment_id=33; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5029 WHERE equipment_id=33; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5029);
DELETE FROM creature_equip_template_raw WHERE entry=33;

-- ENTRY 34 (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=34;
INSERT INTO creature_equip_template VALUES (5030,0,0,23052);
UPDATE creature_template SET equipment_id=5030 WHERE equipment_id=34; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5030 WHERE equipment_id=34; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5030);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (23052,35456,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=34;

-- ENTRY 35 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=35;
INSERT INTO creature_equip_template VALUES (5031,0,0,23889);
UPDATE creature_template SET equipment_id=5031 WHERE equipment_id=35; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5031 WHERE equipment_id=35; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5031);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (23889,36600,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=35;

-- ENTRY 36 (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=36;
INSERT INTO creature_equip_template VALUES (5032,0,0,28023);
UPDATE creature_template SET equipment_id=5032 WHERE equipment_id=36; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5032 WHERE equipment_id=36; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5032);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (28023,38576,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=36;

-- ENTRY 37 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=37;
INSERT INTO creature_equip_template VALUES (5033,0,0,32826);
UPDATE creature_template SET equipment_id=5033 WHERE equipment_id=37; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5033 WHERE equipment_id=37; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5033);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32826,43383,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=37;

-- ENTRY 38 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=38;
INSERT INTO creature_equip_template VALUES (5034,0,0,31083);
UPDATE creature_template SET equipment_id=5034 WHERE equipment_id=38; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5034 WHERE equipment_id=38; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5034);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (31083,43386,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=38;

-- ENTRY 39 (0x02FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=39;
INSERT INTO creature_equip_template VALUES (5035,0,0,29626);
UPDATE creature_template SET equipment_id=5035 WHERE equipment_id=39; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5035 WHERE equipment_id=39; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5035);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (29626,44573,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=39;

-- ENTRY 40 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=40;
INSERT INTO creature_equip_template VALUES (5036,12786,0,0);
UPDATE creature_template SET equipment_id=5036 WHERE equipment_id=40; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5036 WHERE equipment_id=40; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5036);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12786,23253,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=40;

-- ENTRY 41 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=41;
DELETE FROM creature_equip_template_raw WHERE entry=41;

-- ENTRY 42 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=42;
INSERT INTO creature_equip_template VALUES (5037,0,1984,0);
UPDATE creature_template SET equipment_id=5037 WHERE equipment_id=42; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5037 WHERE equipment_id=42; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5037);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=42;

-- ENTRY 43  (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=43;
DELETE FROM creature_equip_template_raw WHERE entry=43;

-- ENTRY 44 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=44;
INSERT INTO creature_equip_template VALUES (5038,0,1985,0);
UPDATE creature_template SET equipment_id=5038 WHERE equipment_id=44; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5038 WHERE equipment_id=44; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5038);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=44;

-- ENTRY 45 (0x01FF0602 / 0x0211) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=45;
INSERT INTO creature_equip_template VALUES (5039,3432,0,13147);
UPDATE creature_template SET equipment_id=5039 WHERE equipment_id=45; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5039 WHERE equipment_id=45; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5039);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3432,7437,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13147,23639,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=45;

-- ENTRY 46 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=46;
INSERT INTO creature_equip_template VALUES (5040,0,2053,0);
UPDATE creature_template SET equipment_id=5040 WHERE equipment_id=46; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5040 WHERE equipment_id=46; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5040);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=46;

-- ENTRY 47 (0x01FF0F02 / 0x030D) and (0x02FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=47;
INSERT INTO creature_equip_template VALUES (5041,5281,3757,0);
UPDATE creature_template SET equipment_id=5041 WHERE equipment_id=47; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5041 WHERE equipment_id=47; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5041);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3757,6530,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=47;

-- ENTRY 48 (0x02FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=48;
INSERT INTO creature_equip_template VALUES (5042,0,3757,0);
UPDATE creature_template SET equipment_id=5042 WHERE equipment_id=48; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5042 WHERE equipment_id=48; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5042);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3757,6530,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=48;

-- ENTRY 49 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=49;
DELETE FROM creature_equip_template_raw WHERE entry=49;
UPDATE creature_template SET equipment_id=5042 WHERE equipment_id=49;  -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5042 WHERE equipment_id=49;  -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5042);

-- ENTRY 50 (0x17020004 / 0x0000) - INCORRECT DEFAULT ESLOT HEX DATA (UPDATED WITH DBC VALUE)
DELETE FROM creature_equip_template WHERE entry=50;
INSERT INTO creature_equip_template VALUES (5043,0,3697,0);
UPDATE creature_template SET equipment_id=5043 WHERE equipment_id=50; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5043 WHERE equipment_id=50; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5043);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3697,6531,2,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=50;

-- ENTRY 51 (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=51;
INSERT INTO creature_equip_template VALUES (5044,0,3695,0);
UPDATE creature_template SET equipment_id=5044 WHERE equipment_id=51; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5044 WHERE equipment_id=51; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5044);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3695,6535,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=51;

-- ENTRY 52 (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=52;
INSERT INTO creature_equip_template VALUES (5045,0,2081,0);
UPDATE creature_template SET equipment_id=5045 WHERE equipment_id=52; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5045 WHERE equipment_id=52; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5045);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=52;

-- ENTRY 53 (0x01FF0702 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=53;
INSERT INTO creature_equip_template VALUES (5046,1896,0,2550);
UPDATE creature_template SET equipment_id=5046 WHERE equipment_id=53; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5046 WHERE equipment_id=53; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5046);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=53;

-- ENTRY 54 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=54;
INSERT INTO creature_equip_template VALUES (5047,0,1903,0);
UPDATE creature_template SET equipment_id=5047 WHERE equipment_id=54; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5047 WHERE equipment_id=54; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5047);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=54;

-- ENTRY 55 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=55;
INSERT INTO creature_equip_template VALUES (5048,1905,0,5262);
UPDATE creature_template SET equipment_id=5048 WHERE equipment_id=55; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5048 WHERE equipment_id=55; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5048);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5262,6235,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=55;

-- ENTRY 56 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=56;
INSERT INTO creature_equip_template VALUES (5049,0,11041,0);
UPDATE creature_template SET equipment_id=5049 WHERE equipment_id=56; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5049 WHERE equipment_id=56; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5049);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11041,20537,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=56;

-- ENTRY 57 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=57;
INSERT INTO creature_equip_template VALUES (5050,5286,0,5259);
UPDATE creature_template SET equipment_id=5050 WHERE equipment_id=57; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5050 WHERE equipment_id=57; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5050);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=57;

-- ENTRY 58 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=58;
INSERT INTO creature_equip_template VALUES (5051,0,12452,0);
UPDATE creature_template SET equipment_id=5051 WHERE equipment_id=58; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5051 WHERE equipment_id=58; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5051);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12452,22635,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=58;

-- ENTRY 59 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=59;
INSERT INTO creature_equip_template VALUES (5052,0,12745,0);
UPDATE creature_template SET equipment_id=5052 WHERE equipment_id=59; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5052 WHERE equipment_id=59; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5052);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12745,23172,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=59;

-- ENTRY 60 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=60;
DELETE FROM creature_equip_template_raw WHERE entry=60;

-- ENTRY 61 (0x02FF0402 / 0x030D) and (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=61;
INSERT INTO creature_equip_template VALUES (5053,1903,2809,0);
UPDATE creature_template SET equipment_id=5053 WHERE equipment_id=61; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5053 WHERE equipment_id=61; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5053);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2809,7476,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=61;

-- ENTRY 62 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=62;
INSERT INTO creature_equip_template VALUES (5054,0,12851,0);
UPDATE creature_template SET equipment_id=5054 WHERE equipment_id=62; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5054 WHERE equipment_id=62; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5054);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12851,23316,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=62;

-- ENTRY 63 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=63;
INSERT INTO creature_equip_template VALUES (5055,0,12853,0);
UPDATE creature_template SET equipment_id=5055 WHERE equipment_id=63; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5055 WHERE equipment_id=63; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5055);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12853,23317,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=63;

-- ENTRY 64 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=64;
INSERT INTO creature_equip_template VALUES (5056,0,12859,0);
UPDATE creature_template SET equipment_id=5056 WHERE equipment_id=64; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5056 WHERE equipment_id=64; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5056);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12859,23320,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=64;

-- ENTRY 65 (0x02FF0402 / 0x030D) and (0x02FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=65;
INSERT INTO creature_equip_template VALUES (5057,2810,13219,0);
UPDATE creature_template SET equipment_id=5057 WHERE equipment_id=65; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5057 WHERE equipment_id=65; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5057);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2810,7479,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13219,23497,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=65;

-- ENTRY 66 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=66;
INSERT INTO creature_equip_template VALUES (5058,0,12863,0);
UPDATE creature_template SET equipment_id=5058 WHERE equipment_id=66; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5058 WHERE equipment_id=66; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5058);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12863,23321,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=66;

-- ENTRY 67 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=67;
INSERT INTO creature_equip_template VALUES (5059,13312,143,0);
UPDATE creature_template SET equipment_id=5059 WHERE equipment_id=67; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5059 WHERE equipment_id=67; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5059);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13312,23948,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=67;

-- ENTRY 68 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=68;
INSERT INTO creature_equip_template VALUES (5060,0,12867,0);
UPDATE creature_template SET equipment_id=5060 WHERE equipment_id=68; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5060 WHERE equipment_id=68; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5060);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12867,23323,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=68;

-- ENTRY 69 (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=69;
INSERT INTO creature_equip_template VALUES (5061,0,13406,0);
UPDATE creature_template SET equipment_id=5061 WHERE equipment_id=69; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5061 WHERE equipment_id=69; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5061);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13406,24116,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=69;

-- ENTRY 70 (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=70;
INSERT INTO creature_equip_template VALUES (5062,0,13606,0);
UPDATE creature_template SET equipment_id=5062 WHERE equipment_id=70; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5062 WHERE equipment_id=70; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5062);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13606,24283,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=70;

-- ENTRY 71 (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=71;
INSERT INTO creature_equip_template VALUES (5063,0,13609,0);
UPDATE creature_template SET equipment_id=5063 WHERE equipment_id=71; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5063 WHERE equipment_id=71; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5063);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13609,24293,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=71;

-- ENTRY 72 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=72;
INSERT INTO creature_equip_template VALUES (5064,2178,3986,0);
UPDATE creature_template SET equipment_id=5064 WHERE equipment_id=72; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5064 WHERE equipment_id=72; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5064);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2178,7482,-1,7,2,3,13);
-- USE EXISTING TEMPLATE ENTRY
DELETE FROM creature_equip_template_raw WHERE entry=72;

-- ENTRY 73 (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=73;
INSERT INTO creature_equip_template VALUES (5065,5598,0,20980);
UPDATE creature_template SET equipment_id=5065 WHERE equipment_id=73; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5065 WHERE equipment_id=73; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5065);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
-- USE EXISTING TEMPLATE ENTRY
DELETE FROM creature_equip_template_raw WHERE entry=73;

-- ENTRY 74 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=74;
INSERT INTO creature_equip_template VALUES (5066,0,23907,0);
UPDATE creature_template SET equipment_id=5066 WHERE equipment_id=74; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5066 WHERE equipment_id=74; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5066);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (23907,36637,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=74;

-- ENTRY 75 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=75;
INSERT INTO creature_equip_template VALUES (5067,0,24038,0);
UPDATE creature_template SET equipment_id=5067 WHERE equipment_id=75; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5067 WHERE equipment_id=75; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5067);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (24038,36726,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=75;

-- ENTRY 76  (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=76;
DELETE FROM creature_equip_template_raw WHERE entry=76;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=76; -- THIS TEMPLATE WAS REMOVED IN UDB AND CAN NOT FIND ANY DATA FOR TBC-DB (NPC: 12150 Riding Kodo (Purple))
UPDATE creature SET equipment_id=0 WHERE equipment_id=76; -- THIS TEMPLATE WAS REMOVED IN UDB AND CAN NOT FIND ANY DATA FOR TBC-DB (NPC: 12150 Riding Kodo (Purple))

-- ENTRY 77  (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=77;
DELETE FROM creature_equip_template_raw WHERE entry=77;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=77; -- THIS TEMPLATE WAS REMOVED IN UDB AND CAN NOT FIND ANY DATA FOR TBC-DB (NPC: 13017 Enthralled Deeprun Rat)
UPDATE creature SET equipment_id=0 WHERE equipment_id=77; -- THIS TEMPLATE WAS REMOVED IN UDB AND CAN NOT FIND ANY DATA FOR TBC-DB (NPC: 13017 Enthralled Deeprun Rat)

-- ENTRY 78 (0x01FF0002 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=78;
INSERT INTO creature_equip_template VALUES (5068,1910,13604,0);
UPDATE creature_template SET equipment_id=5068 WHERE equipment_id=78; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5068 WHERE equipment_id=78; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5068);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1910,7493,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13604,24281,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=78;

-- ENTRY 79 (0x11010602 / 0x0002) -- STRANGE HEX (USED DATA FROM UDB SINCE MODEL 1440 DOES NOT EXIST IN DBC) - CLASS AND SUBCLASS DATA FROM HEX BECAUSE NO UDB DATA WAS AVAILABLE FOR IT
DELETE FROM creature_equip_template WHERE entry=79;
INSERT INTO creature_equip_template VALUES (5069,13632,0,0);
UPDATE creature_template SET equipment_id=5069 WHERE equipment_id=79; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5069 WHERE equipment_id=79; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5069);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13632,24370,1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=79;

-- ENTRY 80 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=80;
INSERT INTO creature_equip_template VALUES (5070,1909,1985,0);
UPDATE creature_template SET equipment_id=5070 WHERE equipment_id=80; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5070 WHERE equipment_id=80; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5070);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=80;

-- ENTRY 81 (0x11010802 / 0x0001) -- INCORRECT ESLOT HEX DATA IN TBC-DB
DELETE FROM creature_equip_template WHERE entry=81;
INSERT INTO creature_equip_template VALUES (5071,751,0,0);
UPDATE creature_template SET equipment_id=5071 WHERE equipment_id=81; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5071 WHERE equipment_id=81; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5071);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (751,1515,1,8,2,3,21);
DELETE FROM creature_equip_template_raw WHERE entry=81;

-- ENTRY 82 (0x11020A02 / 0x0002)  -- INCORRECT DISPLAY_ID AND ESLOT HEX DATA IN TBC-DB (USED UDB DATA)
DELETE FROM creature_equip_template WHERE entry=82;
INSERT INTO creature_equip_template VALUES (5072,1907,0,0);
UPDATE creature_template SET equipment_id=5072 WHERE equipment_id=82; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5072 WHERE equipment_id=82; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5072);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1907,10654,2,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=82;

-- ENTRY 83 (0x02FF0402 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=83;
INSERT INTO creature_equip_template VALUES (5073,1903,12857,0);
UPDATE creature_template SET equipment_id=5073 WHERE equipment_id=83; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5073 WHERE equipment_id=83; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5073);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12857,23319,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=83;

-- ENTRY 84 (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=84;
INSERT INTO creature_equip_template VALUES (5074,5598,0,18482);
UPDATE creature_template SET equipment_id=5074 WHERE equipment_id=84; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5074 WHERE equipment_id=84; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5074);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (18482,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=84;

-- ENTRY 85 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=85;
INSERT INTO creature_equip_template VALUES (5075,1908,0,0);
UPDATE creature_template SET equipment_id=5075 WHERE equipment_id=85; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5075 WHERE equipment_id=85; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5075);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1908,1600,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=85;

-- ENTRY 86 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=86;
DELETE FROM creature_equip_template_raw WHERE entry=86;
UPDATE creature_template SET equipment_id=5075 WHERE equipment_id=86;  -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5075 WHERE equipment_id=86;  -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5075);

-- ENTRY 87 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=87;
INSERT INTO creature_equip_template VALUES (5076,12786,12454,0);
UPDATE creature_template SET equipment_id=5076 WHERE equipment_id=87; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5076 WHERE equipment_id=87; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5076);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12786,23253,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12454,22638,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=87;

-- ENTRY 88 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=88;
INSERT INTO creature_equip_template VALUES (5077,14875,0,0);
UPDATE creature_template SET equipment_id=5077 WHERE equipment_id=88; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5077 WHERE equipment_id=88; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5077);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14875,25470,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=88;

-- ENTRY 89 (0x02FF0A02 / 0x0211) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=89;
INSERT INTO creature_equip_template VALUES (5078,1908,3697,0);
UPDATE creature_template SET equipment_id=5078 WHERE equipment_id=89; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5078 WHERE equipment_id=89; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5078);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1908,1600,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3697,6531,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=89;

-- ENTRY 90 (0x11020A02 / 0x0000) and (0x17010004 / 0x0002) -- INCORRECT ESLOT HEX DATA IN TBC-DB (GUESSED ID 12745 AS NO UDB DATA EXISTS)
DELETE FROM creature_equip_template WHERE entry=90;
INSERT INTO creature_equip_template VALUES (5079,1908,12745,0);
UPDATE creature_template SET equipment_id=5079 WHERE equipment_id=90; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5079 WHERE equipment_id=90; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5079);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1908,1600,2,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12745,23172,1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=90;

-- ENTRY 91 (0x11020A02 / 0x0002) and (0x0D010002 / 0x0003) -- INCORRECT ESLOT HEX DATA IN TBC-DB
DELETE FROM creature_equip_template WHERE entry=91;
INSERT INTO creature_equip_template VALUES (5080,1908,18596,0);
UPDATE creature_template SET equipment_id=5080 WHERE equipment_id=91; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5080 WHERE equipment_id=91; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5080);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1908,1600,2,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (18596,30956,1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=91;

-- ENTRY 92 (0x0E010604 / 0x0004) -- INCORRECT ESLOT HEX DATA IN TBC-DB
DELETE FROM creature_equip_template WHERE entry=92;
INSERT INTO creature_equip_template VALUES (5081,1984,0,0);
UPDATE creature_template SET equipment_id=5081 WHERE equipment_id=92; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5081 WHERE equipment_id=92; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5081);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=92;

-- ENTRY 93 (0x01FF0702 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=93;
INSERT INTO creature_equip_template VALUES (5082,13165,0,5258);
UPDATE creature_template SET equipment_id=5082 WHERE equipment_id=93; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5082 WHERE equipment_id=93; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5082);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13165,23692,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=93;

-- ENTRY 94 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=94;
INSERT INTO creature_equip_template VALUES (5083,2176,0,0);
UPDATE creature_template SET equipment_id=5083 WHERE equipment_id=94; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5083 WHERE equipment_id=94; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5083);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2176,1926,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=94;

-- ENTRY 95 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=95;
DELETE FROM creature_equip_template_raw WHERE entry=95;
UPDATE creature_template SET equipment_id=5083 WHERE equipment_id=95; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5083 WHERE equipment_id=95; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5083);

-- ENTRY 96 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=96;
INSERT INTO creature_equip_template VALUES (5084,2177,0,0);
UPDATE creature_template SET equipment_id=5084 WHERE equipment_id=96; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5084 WHERE equipment_id=96; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5084);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2177,1927,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=96;

-- ENTRY 97 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=97;
DELETE FROM creature_equip_template_raw WHERE entry=97;
UPDATE creature_template SET equipment_id=5084 WHERE equipment_id=97; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5084 WHERE equipment_id=97; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5084);

-- ENTRY 98 (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=98;
INSERT INTO creature_equip_template VALUES (5085,5598,0,2550);
UPDATE creature_template SET equipment_id=5085 WHERE equipment_id=98; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5085 WHERE equipment_id=98; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5085);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=98;

-- ENTRY 99 (0x02FF0402 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=99;
INSERT INTO creature_equip_template VALUES (5086,6618,0,0);
UPDATE creature_template SET equipment_id=5086 WHERE equipment_id=99; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5086 WHERE equipment_id=99; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5086);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6618,8043,-1,4,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=99;

-- ENTRY 100 (0x01FF0002 / 0x0311)
DELETE FROM creature_equip_template WHERE entry=100;
INSERT INTO creature_equip_template VALUES (5087,19015,0,0);
UPDATE creature_template SET equipment_id=5087 WHERE equipment_id=100; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5087 WHERE equipment_id=100; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5087);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (19015,5027,-1,0,2,3,17);
DELETE FROM creature_equip_template_raw WHERE entry=100;

-- ENTRY 101 (0x11020A02 / 0x0002) and (0x17010004 / 0x0000) -- INCORRECT ESLOT HEX DATA IN TBC-DB
DELETE FROM creature_equip_template WHERE entry=101;
INSERT INTO creature_equip_template VALUES (5088,2177,12865,0);
UPDATE creature_template SET equipment_id=5088 WHERE equipment_id=101; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5088 WHERE equipment_id=101; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5088);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2177,1927,2,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12865,23322,1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=101;

-- ENTRY 102 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=102;
DELETE FROM creature_equip_template_raw WHERE entry=102;
UPDATE creature_template SET equipment_id=5087 WHERE equipment_id=102; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5087 WHERE equipment_id=102; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5087);

-- ENTRY 103 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=103;
INSERT INTO creature_equip_template VALUES (5089,12937,0,0);
UPDATE creature_template SET equipment_id=5089 WHERE equipment_id=103; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5089 WHERE equipment_id=103; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5089);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12937,2388,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=103;

-- ENTRY 104 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=104;
DELETE FROM creature_equip_template_raw WHERE entry=104;

-- ENTRY 105 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=105;
INSERT INTO creature_equip_template VALUES (5090,2557,0,0);
UPDATE creature_template SET equipment_id=5090 WHERE equipment_id=105; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5090 WHERE equipment_id=105; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5090);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2557,2466,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=105;

-- ENTRY 106 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=106;
DELETE FROM creature_equip_template_raw WHERE entry=106;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=106; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=106; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 107 (0x02FF0502 / 0x0111) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=107;
INSERT INTO creature_equip_template VALUES (5091,2557,0,2552);
UPDATE creature_template SET equipment_id=5091 WHERE equipment_id=107; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5091 WHERE equipment_id=107; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5091);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2557,2466,-1,5,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=107;

-- ENTRY 108 (0x02FF0A02 / 0x0211) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=108;
INSERT INTO creature_equip_template VALUES (5092,2177,12865,0);
UPDATE creature_template SET equipment_id=5092 WHERE equipment_id=108; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5092 WHERE equipment_id=108; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5092);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2177,1927,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12865,23322,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=108;

-- ENTRY 109 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=109;
DELETE FROM creature_equip_template_raw WHERE entry=109;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=109; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=109; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 110 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=110;
INSERT INTO creature_equip_template VALUES (5093,2559,0,0);
UPDATE creature_template SET equipment_id=5093 WHERE equipment_id=110; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5093 WHERE equipment_id=110; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5093);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2559,2469,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=110;

-- ENTRY 111 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=111;
DELETE FROM creature_equip_template_raw WHERE entry=111;
UPDATE creature_template SET equipment_id=5093 WHERE equipment_id=111; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5093 WHERE equipment_id=111; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5093);

-- ENTRY 112 (0x01FF0E02 / 0x0715) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=112;
INSERT INTO creature_equip_template VALUES (5094,4994,11586,0);
UPDATE creature_template SET equipment_id=5094 WHERE equipment_id=112; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5094 WHERE equipment_id=112; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5094);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4994,5569,-1,14,2,7,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11586,21540,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=112;

-- ENTRY 113 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=113;
INSERT INTO creature_equip_template VALUES (5095,23174,0,0);
UPDATE creature_template SET equipment_id=5095 WHERE equipment_id=113; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5095 WHERE equipment_id=113; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5095);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (23174,2738,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=113;

-- ENTRY 114 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=114;
INSERT INTO creature_equip_template VALUES (5096,5292,0,0);
UPDATE creature_template SET equipment_id=5096 WHERE equipment_id=114; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5096 WHERE equipment_id=114; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5096);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5292,2777,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=114;

-- ENTRY 115 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=115;
DELETE FROM creature_equip_template_raw WHERE entry=115;
UPDATE creature_template SET equipment_id=5096 WHERE equipment_id=115; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5096 WHERE equipment_id=115; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5096);

-- ENTRY 116 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=116;
DELETE FROM creature_equip_template_raw WHERE entry=116;

-- ENTRY 117 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=117;
INSERT INTO creature_equip_template VALUES (5097,5491,0,0);
UPDATE creature_template SET equipment_id=5097 WHERE equipment_id=117; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5097 WHERE equipment_id=117; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5097);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5491,2839,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=117;

-- ENTRY 118 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=118;
DELETE FROM creature_equip_template_raw WHERE entry=118;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=118; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=118; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 119 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=119;
INSERT INTO creature_equip_template VALUES (5098,5303,0,0);
UPDATE creature_template SET equipment_id=5098 WHERE equipment_id=119; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5098 WHERE equipment_id=119; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5098);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5303,2840,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=119;

-- ENTRY 120 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=120;
DELETE FROM creature_equip_template_raw WHERE entry=120;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=120; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=120; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature_template SET equipment_id=5098 WHERE entry in (7772,8200); -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id in (7772,8200); -- CORRECT BAD ENTRY IN TBC-DB (REDUNDANT DATA)

-- ENTRY 121 (0x02FF0A02 / 0x0211) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=121;
INSERT INTO creature_equip_template VALUES (5099,5303,12745,0);
UPDATE creature_template SET equipment_id=5099 WHERE equipment_id=121; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5099 WHERE equipment_id=121; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5099);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5303,2840,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12745,23172,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=121;

-- ENTRY 122 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=122;
INSERT INTO creature_equip_template VALUES (5100,12951,0,0);
UPDATE creature_template SET equipment_id=5100 WHERE equipment_id=122; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5100 WHERE equipment_id=122; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5100);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12951,3243,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=122;

-- ENTRY 123 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=123;
DELETE FROM creature_equip_template_raw WHERE entry=123;
UPDATE creature_template SET equipment_id=5100 WHERE equipment_id=123; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5100 WHERE equipment_id=123; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5100);

-- ENTRY 124 (0x11010102 / 0x0) and (0x1A010302 / 0x0) - INCORRECT DEFAULT ESLOT HEX and UNK0 DATA AND EQUIPMENT SLOT ASSIGNMENT (UPDATED WITH DBC VALUES AND UDB CONFIGURATION)
DELETE FROM creature_equip_template WHERE entry=124;
INSERT INTO creature_equip_template VALUES (5101,12951,0,12523);
UPDATE creature_template SET equipment_id=5101 WHERE equipment_id=124; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5101 WHERE equipment_id=124; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5101);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12951,3243,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12523,20726,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=124;

-- ENTRY 125 (0x01FF0102 / 0x0111) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=125;
INSERT INTO creature_equip_template VALUES (5102,14475,0,12523);
UPDATE creature_template SET equipment_id=5102 WHERE equipment_id=125; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5102 WHERE equipment_id=125; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5102);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14475,3367,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12523,20726,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=125;

-- ENTRY 126 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=126;
INSERT INTO creature_equip_template VALUES (5103,0,0,14118);
UPDATE creature_template SET equipment_id=5103 WHERE equipment_id=126; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5103 WHERE equipment_id=126; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5103);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14118,24931,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=126;

-- ENTRY 127 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=127;
INSERT INTO creature_equip_template VALUES (5104,5287,0,0);
UPDATE creature_template SET equipment_id=5104 WHERE equipment_id=127; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5104 WHERE equipment_id=127; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5104);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5287,3385,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=127;

-- ENTRY 128 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=128;
DELETE FROM creature_equip_template_raw WHERE entry=128;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=128; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=128; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 129 (0x01FF0E02 / 0x000D) and (0x02FF1302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=129;
INSERT INTO creature_equip_template VALUES (5105,12868,0,12941);
UPDATE creature_template SET equipment_id=5105 WHERE equipment_id=129; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5105 WHERE equipment_id=129; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5105);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12868,23324,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12941,23455,-1,19,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=129;

-- ENTRY 130 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=130;
DELETE FROM creature_equip_template_raw WHERE entry=130;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=130; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=130; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 131 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=131;
INSERT INTO creature_equip_template VALUES (5106,3326,0,0);
UPDATE creature_template SET equipment_id=5106 WHERE equipment_id=131; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5106 WHERE equipment_id=131; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5106);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3326,3502,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=131;

-- ENTRY 132 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=132;
DELETE FROM creature_equip_template_raw WHERE entry=132;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=132; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=132; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 133 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=133;
INSERT INTO creature_equip_template VALUES (5107,5289,0,0);
UPDATE creature_template SET equipment_id=5107 WHERE equipment_id=133; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5107 WHERE equipment_id=133; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5107);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5289,3797,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=133;

-- ENTRY 134 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=134;
DELETE FROM creature_equip_template_raw WHERE entry=134;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=134; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=134; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature_template SET equipment_id=5107 WHERE entry in (5271,5716); -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id in (5271,5716); -- CORRECT BAD ENTRY IN TBC-DB

-- ENTRY 135 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=135;
INSERT INTO creature_equip_template VALUES (5108,10611,1957,0);
UPDATE creature_template SET equipment_id=5108 WHERE equipment_id=135; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5108 WHERE equipment_id=135; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5108);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=135;

-- ENTRY 136 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=136;
INSERT INTO creature_equip_template VALUES (5109,5301,0,0);
UPDATE creature_template SET equipment_id=5109 WHERE equipment_id=136; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5109 WHERE equipment_id=136; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5109);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5301,3879,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=136;

-- ENTRY 137 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=137;
DELETE FROM creature_equip_template_raw WHERE entry=137;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=137; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=137; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- ENTRY 138 (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=138;
INSERT INTO creature_equip_template VALUES (5110,0,0,14642);
UPDATE creature_template SET equipment_id=5110 WHERE equipment_id=138; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5110 WHERE equipment_id=138; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5110);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14642,25260,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=138;

-- ENTRY 139 (0x02FF0402 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=139;
INSERT INTO creature_equip_template VALUES (5111,2813,0,2550);
UPDATE creature_template SET equipment_id=5111 WHERE equipment_id=139; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5111 WHERE equipment_id=139; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5111);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2813,7478,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=139;

-- ENTRY 140 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=140;
DELETE FROM creature_equip_template_raw WHERE entry=140;
UPDATE creature_template SET equipment_id=5115 WHERE equipment_id=140; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5115 WHERE equipment_id=140; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5115);

-- ENTRY 141 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=141;
DELETE FROM creature_equip_template_raw WHERE entry=141;

-- ENTRY 142 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=142;
DELETE FROM creature_equip_template_raw WHERE entry=142;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=142; -- CORRECT BAD ENTRY IN TBC-DB (UDB SHOWS WOTLK ITEM)
UPDATE creature SET equipment_id=0 WHERE equipment_id=142; -- CORRECT BAD ENTRY IN TBC-DB (UDB SHOWS WOTLK ITEM)

-- ENTRY 143 (0x02FF0A02 / 0x07D2)
DELETE FROM creature_equip_template WHERE entry=143;
INSERT INTO creature_equip_template VALUES (5112,5276,0,0);
UPDATE creature_template SET equipment_id=5112 WHERE equipment_id=143; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5112 WHERE equipment_id=143; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5112);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5276,5010,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=143;

-- ENTRY 144 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=144;
DELETE FROM creature_equip_template_raw WHERE entry=144;
UPDATE creature_template SET equipment_id=5112 WHERE equipment_id=144; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5112 WHERE equipment_id=144; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5112);

-- ENTRY 145 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=145;
INSERT INTO creature_equip_template VALUES (5113,5304,0,0);
UPDATE creature_template SET equipment_id=5113 WHERE equipment_id=145; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5113 WHERE equipment_id=145; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5113);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5304,5098,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=145;

-- ENTRY 146 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=146;
DELETE FROM creature_equip_template_raw WHERE entry=146;
UPDATE creature_template SET equipment_id=5113 WHERE equipment_id=146; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5113 WHERE equipment_id=146; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5113);

-- ENTRY 147 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=147;
INSERT INTO creature_equip_template VALUES (5114,5288,0,0);
UPDATE creature_template SET equipment_id=5114 WHERE equipment_id=147; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5114 WHERE equipment_id=147; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5114);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5288,5128,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=147;

-- ENTRY 148 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=148;
DELETE FROM creature_equip_template_raw WHERE entry=148;
UPDATE creature_template SET equipment_id=5114 WHERE equipment_id=148; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature SET equipment_id=5114 WHERE equipment_id=148; -- CORRECT BAD ENTRY IN TBC-DB
UPDATE creature_template SET equipment_id=0 WHERE entry=7797; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE id=7797; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5114);

-- ENTRY 149 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=149;
INSERT INTO creature_equip_template VALUES (5115,4991,0,0);
UPDATE creature_template SET equipment_id=5115 WHERE equipment_id=149; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5115 WHERE equipment_id=149; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5115);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4991,5175,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=149;

-- ENTRY 150 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=150;
DELETE FROM creature_equip_template_raw WHERE entry=150;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=150; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's
UPDATE creature SET equipment_id=0 WHERE equipment_id=150; -- UDB SHOWS NO EQUIPMENT ID FOR THESE NPC's

-- =============

-- ENTRY 151 (0x01FF0802 / 0x0111) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=151;
INSERT INTO creature_equip_template VALUES (5116,4991,0,2552);
UPDATE creature_template SET equipment_id=5116 WHERE equipment_id=151; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5116 WHERE equipment_id=151; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5116);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4991,5175,-1,8,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=151;

-- ENTRY 152 (0x01FF0802 / 0x0111) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=152;
INSERT INTO creature_equip_template VALUES (5117,4991,0,2551);
UPDATE creature_template SET equipment_id=5117 WHERE equipment_id=152; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5117 WHERE equipment_id=152; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5117);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4991,5175,-1,8,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=152;

-- ENTRY 153 (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=153;
INSERT INTO creature_equip_template VALUES (5118,0,1961,0);
UPDATE creature_template SET equipment_id=5118 WHERE equipment_id=153; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5118 WHERE equipment_id=153; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5118);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1961,1685,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=153;

-- ENTRY 154 (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=154;
INSERT INTO creature_equip_template VALUES (5119,0,3697,0);
UPDATE creature_template SET equipment_id=5119 WHERE equipment_id=154; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5119 WHERE equipment_id=154; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5119);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3697,6531,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=154;

-- ENTRY 155 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=155;
INSERT INTO creature_equip_template VALUES (5120,6224,0,0);
UPDATE creature_template SET equipment_id=5120 WHERE equipment_id=155; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5120 WHERE equipment_id=155; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5120);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6224,5176,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=155;

-- ENTRY 156 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=156;
UPDATE creature_template SET equipment_id=5120 WHERE equipment_id=156;
UPDATE creature SET equipment_id=5120 WHERE equipment_id=156;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5120);
DELETE FROM creature_equip_template_raw WHERE entry=156;

-- ENTRY 157 (0x02FF0402 / 0x0315)
DELETE FROM creature_equip_template WHERE entry=157;
INSERT INTO creature_equip_template VALUES (5121,5291,0,0);
UPDATE creature_template SET equipment_id=5121 WHERE equipment_id=157; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5121 WHERE equipment_id=157; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5121);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5291,5224,-1,4,2,3,21);
DELETE FROM creature_equip_template_raw WHERE entry=157;

-- ENTRY 158 (UNUSED OR DUPLICATE ENTRY - REMOVING) - UDB SHOWS NO EQUIPMENT ID
DELETE FROM creature_equip_template WHERE entry=158;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=158;
UPDATE creature SET equipment_id=0 WHERE equipment_id=158;
DELETE FROM creature_equip_template_raw WHERE entry=158;

-- ENTRY 159 (0x02FF0402 / 0x0315) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=159;
INSERT INTO creature_equip_template VALUES (5122,5291,0,2552);
UPDATE creature_template SET equipment_id=5122 WHERE equipment_id=159; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5122 WHERE equipment_id=159; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5122);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5291,5224,-1,4,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=159;

-- ENTRY 160 (0x02FF0402 / 0x0315) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=160;
INSERT INTO creature_equip_template VALUES (5123,5291,0,14118);
UPDATE creature_template SET equipment_id=5123 WHERE equipment_id=160; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5123 WHERE equipment_id=160; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5123);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5291,5224,-1,4,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14118,24931,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=160;

-- ENTRY 161 (0x02FF0402 / 0x070D) and (0x02FF1002 / 0x0719)
DELETE FROM creature_equip_template WHERE entry=161;
INSERT INTO creature_equip_template VALUES (5124,1906,0,6088);
UPDATE creature_template SET equipment_id=5124 WHERE equipment_id=161; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5124 WHERE equipment_id=161; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5124);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1906,12236,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6088,19805,-1,10,2,7,25);
DELETE FROM creature_equip_template_raw WHERE entry=161;

-- ENTRY 162 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=162;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=162; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=162; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
DELETE FROM creature_equip_template_raw WHERE entry=162;

-- ENTRY 163 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=163;
UPDATE creature_template SET equipment_id=5122 WHERE equipment_id=163; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5122 WHERE equipment_id=163; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5122);
DELETE FROM creature_equip_template_raw WHERE entry=163;

-- ENTRY 164 (0x01FF0702 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=164;
INSERT INTO creature_equip_template VALUES (5125,2147,0,2552);
UPDATE creature_template SET equipment_id=5125 WHERE equipment_id=164; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5125 WHERE equipment_id=164; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5125);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=164;

-- ENTRY 165 (0x02FF0402 / 0x0315) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=165;
INSERT INTO creature_equip_template VALUES (5126,5291,14880,0);
UPDATE creature_template SET equipment_id=5126 WHERE equipment_id=165; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5126 WHERE equipment_id=165; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5126);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5291,5224,-1,4,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14880,25499,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=165;

-- ENTRY 166 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=166;
INSERT INTO creature_equip_template VALUES (5127,14706,0,0);
UPDATE creature_template SET equipment_id=5127 WHERE equipment_id=166; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5127 WHERE equipment_id=166; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5127);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14706,5417,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=166;

-- ENTRY 167 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=167;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=167;
UPDATE creature SET equipment_id=0 WHERE equipment_id=167;
DELETE FROM creature_equip_template_raw WHERE entry=167;

-- ENTRY 168 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=168;
INSERT INTO creature_equip_template VALUES (5128,14643,0,0);
UPDATE creature_template SET equipment_id=5128 WHERE equipment_id=168; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5128 WHERE equipment_id=168; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5128);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14643,5509,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=168;

-- ENTRY 169 (0x01FF0002 / 0x030D) and (0x02FF0004 / 0x0017) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=169;
INSERT INTO creature_equip_template VALUES (5129,2827,13406,5258);
UPDATE creature_template SET equipment_id=5129 WHERE equipment_id=169; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5129 WHERE equipment_id=169; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5129);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13406,24116,-1,0,4,0,23);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=169;

-- ENTRY 170 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=170;
INSERT INTO creature_equip_template VALUES (5130,5300,0,0);
UPDATE creature_template SET equipment_id=5130 WHERE equipment_id=170; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5130 WHERE equipment_id=170; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5130);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5300,5527,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=170;

-- ENTRY 171 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=171;
UPDATE creature_template SET equipment_id=5130 WHERE equipment_id=171; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5130 WHERE equipment_id=171; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5130);
DELETE FROM creature_equip_template_raw WHERE entry=171;

-- ENTRY 172 (UNUSED OR DUPLICATE ENTRY - REMOVING) ==> SEE OLD ENTRY 1219
DELETE FROM creature_equip_template WHERE entry=172;
UPDATE creature_template SET equipment_id=1219 WHERE equipment_id=172;
UPDATE creature SET equipment_id=1219 WHERE equipment_id=172;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=1219);
DELETE FROM creature_equip_template_raw WHERE entry=172;

-- ENTRY 173 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=173;
INSERT INTO creature_equip_template VALUES (5131,5277,0,0);
UPDATE creature_template SET equipment_id=5131 WHERE equipment_id=173; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5131 WHERE equipment_id=173; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5131);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5277,5542,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=173;

-- ENTRY 174 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=174;
UPDATE creature_template SET equipment_id=5131 WHERE equipment_id=174;
UPDATE creature SET equipment_id=5131 WHERE equipment_id=174;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5131);
DELETE FROM creature_equip_template_raw WHERE entry=174;

-- ENTRY 175 (0x02FF0402 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=175;
INSERT INTO creature_equip_template VALUES (5132,2813,0,6886);
UPDATE creature_template SET equipment_id=5132 WHERE equipment_id=175; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5132 WHERE equipment_id=175; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5132);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2813,7478,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6886,16752,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=175;

-- ENTRY 176 (0x01FF0702 / 0x030D) and (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=176;
INSERT INTO creature_equip_template VALUES (5133,12297,2197,0);
UPDATE creature_template SET equipment_id=5133 WHERE equipment_id=176; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5133 WHERE equipment_id=176; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5133);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12297,22366,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2197,7443,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=176;

-- ENTRY 177 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=177;
INSERT INTO creature_equip_template VALUES (5134,2711,0,5258);
UPDATE creature_template SET equipment_id=5134 WHERE equipment_id=177; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5134 WHERE equipment_id=177; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5134);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=177;

-- ENTRY 178 (0x01FF0E02 / 0x0715)
DELETE FROM creature_equip_template WHERE entry=178;
INSERT INTO creature_equip_template VALUES (5135,4994,0,0);
UPDATE creature_template SET equipment_id=5135 WHERE equipment_id=178; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5135 WHERE equipment_id=178; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5135);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4994,5569,-1,14,2,7,21);
DELETE FROM creature_equip_template_raw WHERE entry=178;

-- ENTRY 179 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=179;
UPDATE creature_template SET equipment_id=5135 WHERE equipment_id=179;
UPDATE creature SET equipment_id=5135 WHERE equipment_id=179;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5135);
UPDATE creature_template SET equipment_id=0 WHERE entry in (3359,11829); -- THESE 2 NPC's SHOULD NOT HAVE THIS EQUIPMENT AS PER UDB/WOWHEAD
DELETE FROM creature_equip_template_raw WHERE entry=179;

-- ENTRY 180 (0x02FF0402 / 0x070D) x2
DELETE FROM creature_equip_template WHERE entry=180;
INSERT INTO creature_equip_template VALUES (5136,1906,1906,0);
UPDATE creature_template SET equipment_id=5136 WHERE equipment_id=180; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5136 WHERE equipment_id=180; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5136);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1906,12236,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=180;

-- ENTRY 181 (0x01FF0F02 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=181;
INSERT INTO creature_equip_template VALUES (5137,5278,2052,0);
UPDATE creature_template SET equipment_id=5137 WHERE equipment_id=181; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5137 WHERE equipment_id=181; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5137);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=181;

-- ENTRY 182 (0x01FF0E02 / 0x0715) and (0x02FF0004 / 0x0017) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=182;
INSERT INTO creature_equip_template VALUES (5138,4994,13855,12523);
UPDATE creature_template SET equipment_id=5138 WHERE equipment_id=182; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5138 WHERE equipment_id=182; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5138);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4994,5569,-1,14,2,7,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13855,24595,-1,0,4,0,23);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12523,20726,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=182;

-- ENTRY 183 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=183;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=183;
UPDATE creature SET equipment_id=0 WHERE equipment_id=183;
DELETE FROM creature_equip_template_raw WHERE entry=183;

-- ENTRY 184 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=184;
INSERT INTO creature_equip_template VALUES (5139,2711,5280,0);
UPDATE creature_template SET equipment_id=5139 WHERE equipment_id=184; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5139 WHERE equipment_id=184; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5139);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5280,6441,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=184;

-- ENTRY 185 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=185;
UPDATE creature_template SET equipment_id=5002 WHERE equipment_id=185;
UPDATE creature SET equipment_id=5002 WHERE equipment_id=185;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5002);
DELETE FROM creature_equip_template_raw WHERE entry=185;

-- ENTRY 186 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=186;
UPDATE creature_template SET equipment_id=5004 WHERE equipment_id=186;
UPDATE creature SET equipment_id=5004 WHERE equipment_id=186;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5004);
DELETE FROM creature_equip_template_raw WHERE entry=186;

-- ENTRY 187 (0x01FF0702 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=187;
INSERT INTO creature_equip_template VALUES (5140,2147,0,6886);
UPDATE creature_template SET equipment_id=5140 WHERE equipment_id=187; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5140 WHERE equipment_id=187; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5140);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6886,16752,-1,10,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=187;

-- ENTRY 188 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=188;
UPDATE creature_template SET equipment_id=5006 WHERE equipment_id=188;
UPDATE creature SET equipment_id=5006 WHERE equipment_id=188;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5006);
DELETE FROM creature_equip_template_raw WHERE entry=188;

-- ENTRY 189 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=189;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=189;
UPDATE creature SET equipment_id=0 WHERE equipment_id=189;
DELETE FROM creature_equip_template_raw WHERE entry=189;

-- ENTRY 190 (0x01FF0002 / 0x030D) and (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=190;
INSERT INTO creature_equip_template VALUES (5141,2827,2202,0);
UPDATE creature_template SET equipment_id=5141 WHERE equipment_id=190; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5141 WHERE equipment_id=190; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5141);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2202,7463,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=190;

-- ENTRY 191 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=191;
INSERT INTO creature_equip_template VALUES (5142,17283,0,0);
UPDATE creature_template SET equipment_id=5142 WHERE equipment_id=191; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5142 WHERE equipment_id=191; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5142);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (17283,6249,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=191;

-- ENTRY 192 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=192;
UPDATE creature_template SET equipment_id=5143 WHERE equipment_id=192;
UPDATE creature SET equipment_id=5143 WHERE equipment_id=192;
DELETE FROM creature_equip_template_raw WHERE entry=192;

-- ENTRY 193 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=193;
INSERT INTO creature_equip_template VALUES (5143,5278,0,0);
UPDATE creature_template SET equipment_id=5143 WHERE equipment_id=193; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5143 WHERE equipment_id=193; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5143);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=193;

-- ENTRY 194 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=194;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=194;
UPDATE creature SET equipment_id=0 WHERE equipment_id=194;
DELETE FROM creature_equip_template_raw WHERE entry=194;

-- ENTRY 195 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=4;
INSERT INTO creature_equip_template VALUES (5144,5278,0,5260);
UPDATE creature_template SET equipment_id=5144 WHERE equipment_id=195; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5144 WHERE equipment_id=195; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5144);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=195;

-- ENTRY 196 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=196;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=196; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=196; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
DELETE FROM creature_equip_template_raw WHERE entry=196;

-- ENTRY 197 (0x01FF0702 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=197;
INSERT INTO creature_equip_template VALUES (5145,3364,0,5260);
UPDATE creature_template SET equipment_id=5145 WHERE equipment_id=197; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5145 WHERE equipment_id=197; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5145);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3364,7484,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=197;

-- ENTRY 198 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=198;
INSERT INTO creature_equip_template VALUES (5146,5278,0,14118);
UPDATE creature_template SET equipment_id=5146 WHERE equipment_id=198; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5146 WHERE equipment_id=198; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5146);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14118,24931,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=198;

-- ENTRY 199 (0x01FF0F02 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=199;
INSERT INTO creature_equip_template VALUES (5147,5278,0,15460);
UPDATE creature_template SET equipment_id=5147 WHERE equipment_id=199; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5147 WHERE equipment_id=199; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5147);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (15460,26385,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=199;

-- ENTRY 200 (0x01FF0002 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=200;
INSERT INTO creature_equip_template VALUES (5148,5286,0,5856);
UPDATE creature_template SET equipment_id=5148 WHERE equipment_id=200; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5148 WHERE equipment_id=200; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5148);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5856,16751,-1,10,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=200;

-- ENTRY 201 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=201;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=201;
UPDATE creature SET equipment_id=0 WHERE equipment_id=201;
DELETE FROM creature_equip_template_raw WHERE entry=201;

-- ENTRY 202 (0x02FF0502 / 0x0111) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=202;
INSERT INTO creature_equip_template VALUES (5149,5292,0,2552);
UPDATE creature_template SET equipment_id=5149 WHERE equipment_id=202; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5149 WHERE equipment_id=202; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5149);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5292,2777,-1,5,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=202;

-- ENTRY 203 (0x01FF0E02 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=203;
INSERT INTO creature_equip_template VALUES (5150,2714,3697,0);
UPDATE creature_template SET equipment_id=5150 WHERE equipment_id=203; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5150 WHERE equipment_id=203; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5150);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2714,7461,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3697,6531,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=203;

-- ENTRY 204 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=204;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=204;
UPDATE creature SET equipment_id=0 WHERE equipment_id=204;
DELETE FROM creature_equip_template_raw WHERE entry=204;

-- ENTRY 205 (0x01FF0F02 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=205;
INSERT INTO creature_equip_template VALUES (5151,2184,12745,0);
UPDATE creature_template SET equipment_id=5151 WHERE equipment_id=205; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5151 WHERE equipment_id=205; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5151);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12745,23172,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=205;

-- ENTRY 206 (0x01FF0E02 / 0x000D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=206;
INSERT INTO creature_equip_template VALUES (5152,12856,2081,0);
UPDATE creature_template SET equipment_id=5152 WHERE equipment_id=206; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5152 WHERE equipment_id=206; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5152);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12856,23319,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=206;

-- ENTRY 207 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=207;
INSERT INTO creature_equip_template VALUES (5153,1905,0,5261);
UPDATE creature_template SET equipment_id=5153 WHERE equipment_id=207; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5153 WHERE equipment_id=207; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5153);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=207;

-- ENTRY 208 (0x02FF0402 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=208;
INSERT INTO creature_equip_template VALUES (5154,1902,0,5870);
UPDATE creature_template SET equipment_id=5154 WHERE equipment_id=208; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5154 WHERE equipment_id=208; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5154);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1902,7441,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,10,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=208;

-- ENTRY 209 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=209;
INSERT INTO creature_equip_template VALUES (5155,1911,13341,0);
UPDATE creature_template SET equipment_id=5155 WHERE equipment_id=209; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5155 WHERE equipment_id=209; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5155);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13341,6536,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=209;

-- ENTRY 210 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=210;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=210;
UPDATE creature SET equipment_id=0 WHERE equipment_id=210;
DELETE FROM creature_equip_template_raw WHERE entry=210;

-- ENTRY 211 (0x01FF0F02 / 0x030D) and (0x01FF0E02 / 0x0716)
DELETE FROM creature_equip_template WHERE entry=211;
INSERT INTO creature_equip_template VALUES (5156,5278,19485,0);
UPDATE creature_template SET equipment_id=5156 WHERE equipment_id=211; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5156 WHERE equipment_id=211; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5156);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (19485,10814,-1,14,2,7,22);
DELETE FROM creature_equip_template_raw WHERE entry=211;

-- ENTRY 212 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=212;
INSERT INTO creature_equip_template VALUES (5157,3361,2053,0);
UPDATE creature_template SET equipment_id=5157 WHERE equipment_id=212; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5157 WHERE equipment_id=212; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5157);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=212;

-- ENTRY 213 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=213;
INSERT INTO creature_equip_template VALUES (5158,1911,13606,0);
UPDATE creature_template SET equipment_id=5158 WHERE equipment_id=213; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5158 WHERE equipment_id=213; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5158);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13606,24283,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=213;

-- ENTRY 214 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=214;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=214;
UPDATE creature SET equipment_id=0 WHERE equipment_id=214;
DELETE FROM creature_equip_template_raw WHERE entry=214;

-- ENTRY 215 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=215;
UPDATE creature_template SET equipment_id=1821 WHERE equipment_id=215; -- CORRECTING EQUIPMENT ID BASED ON UDB DATA
UPDATE creature SET equipment_id=1821 WHERE equipment_id=215; -- CORRECTING EQUIPMENT ID BASED ON UDB DATA
DELETE FROM creature_equip_template_raw WHERE entry=215;

-- ENTRY 216 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=216;
UPDATE creature_template SET equipment_id=1821 WHERE equipment_id=216;
UPDATE creature SET equipment_id=1821 WHERE equipment_id=216;
DELETE FROM creature_equip_template_raw WHERE entry=216;

-- ENTRY 217 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=217;
INSERT INTO creature_equip_template VALUES (5159,1909,0,5258);
UPDATE creature_template SET equipment_id=5159 WHERE equipment_id=217; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5159 WHERE equipment_id=217; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5159);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=217;

-- ENTRY 218 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=218;
INSERT INTO creature_equip_template VALUES (5160,5285,5281,0);
UPDATE creature_template SET equipment_id=5160 WHERE equipment_id=218; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5160 WHERE equipment_id=218; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5160);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5285,6469,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=218;

-- ENTRY 219 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=219;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=219;
UPDATE creature SET equipment_id=0 WHERE equipment_id=219;
DELETE FROM creature_equip_template_raw WHERE entry=219;

-- ENTRY 220 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=220;
INSERT INTO creature_equip_template VALUES (5161,5281,0,0);
UPDATE creature_template SET equipment_id=5161 WHERE equipment_id=220; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5161 WHERE equipment_id=220; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5161);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=220;

-- ENTRY 221 (0x01FF0002 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=221;
INSERT INTO creature_equip_template VALUES (5162,1905,0,5870);
UPDATE creature_template SET equipment_id=5162 WHERE equipment_id=221; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5162 WHERE equipment_id=221; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5162);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,10,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=221;

-- ENTRY 222 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=222;
INSERT INTO creature_equip_template VALUES (5163,5281,0,5259);
UPDATE creature_template SET equipment_id=5163 WHERE equipment_id=222; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5163 WHERE equipment_id=222; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5163);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=222;

-- ENTRY 223 (0x02FF0402 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=223;
INSERT INTO creature_equip_template VALUES (5164,12183,0,0);
UPDATE creature_template SET equipment_id=5164 WHERE equipment_id=223; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5164 WHERE equipment_id=223; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5164);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12183,22180,-1,4,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=223;

-- ENTRY 224 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=224;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=224;
UPDATE creature SET equipment_id=0 WHERE equipment_id=224; 
DELETE FROM creature_equip_template_raw WHERE entry=224;

-- ENTRY 225 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=225;
INSERT INTO creature_equip_template VALUES (5165,5286,1905,0);
UPDATE creature_template SET equipment_id=5165 WHERE equipment_id=225; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5165 WHERE equipment_id=225; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5165);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=225;

-- ENTRY 226 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=226;
INSERT INTO creature_equip_template VALUES (5166,12290,12452,0);
UPDATE creature_template SET equipment_id=5166 WHERE equipment_id=226; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5166 WHERE equipment_id=226; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5166);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12290,22319,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12452,22635,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=226;

-- ENTRY 227 (0x01FF0002 / 0x030D) and (0x02FF0004 / 0x017)
DELETE FROM creature_equip_template WHERE entry=227;
INSERT INTO creature_equip_template VALUES (5167,2827,13407,0);
UPDATE creature_template SET equipment_id=5167 WHERE equipment_id=227; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5167 WHERE equipment_id=227; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5167);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13407,24117,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=227;

-- ENTRY 228 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=228;
INSERT INTO creature_equip_template VALUES (5168,12787,0,0);
UPDATE creature_template SET equipment_id=5168 WHERE equipment_id=228; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5168 WHERE equipment_id=228; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5168);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12787,23254,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=228;

-- ENTRY 229 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=229;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=229;
UPDATE creature SET equipment_id=0 WHERE equipment_id=229;
DELETE FROM creature_equip_template_raw WHERE entry=229;

-- ENTRY 230 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=230;
INSERT INTO creature_equip_template VALUES (5169,5284,0,5259);
UPDATE creature_template SET equipment_id=5169 WHERE equipment_id=230; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5169 WHERE equipment_id=230; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5169);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5284,6454,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=230;

-- ENTRY 231 (0x0D010F02 / 0x0) and (0x0D010702 / 0x0) TBC-DB DATA IS INCORRECT BUT INTERPOLATED DATA AS REQUIRED
DELETE FROM creature_equip_template WHERE entry=231;
INSERT INTO creature_equip_template VALUES (5170,5281,1900,0);
UPDATE creature_template SET equipment_id=5170 WHERE equipment_id=231; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5170 WHERE equipment_id=231; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5170);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1900,7492,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=231;

-- ENTRY 232 (0x01FF0F02 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=232;
INSERT INTO creature_equip_template VALUES (5171,5281,13609,0);
UPDATE creature_template SET equipment_id=5171 WHERE equipment_id=232; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5171 WHERE equipment_id=232; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5171);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13609,24293,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=232;

-- ENTRY 233 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=233;
INSERT INTO creature_equip_template VALUES (5172,2812,0,0);
UPDATE creature_template SET equipment_id=5172 WHERE equipment_id=233; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5172 WHERE equipment_id=233; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5172);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2812,6448,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=233;

-- ENTRY 234 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=234;
INSERT INTO creature_equip_template VALUES (5173,5283,5283,0);
UPDATE creature_template SET equipment_id=5173 WHERE equipment_id=234; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5173 WHERE equipment_id=234; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5173);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5283,6448,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=234;

-- ENTRY 235 (0x02FF0402 / 0x0315) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=235;
INSERT INTO creature_equip_template VALUES (5174,5291,2051,0);
UPDATE creature_template SET equipment_id=5174 WHERE equipment_id=235; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5174 WHERE equipment_id=235; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5174);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5291,5224,-1,4,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2051,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=235;

-- ENTRY 236 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=236;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=236;
UPDATE creature SET equipment_id=0 WHERE equipment_id=236;
DELETE FROM creature_equip_template_raw WHERE entry=236;

-- ENTRY 237 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=237;
INSERT INTO creature_equip_template VALUES (5175,5284,0,0);
UPDATE creature_template SET equipment_id=5175 WHERE equipment_id=237; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5175 WHERE equipment_id=237; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5175);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5284,6454,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=237;

-- ENTRY 238 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=238;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=238;
UPDATE creature SET equipment_id=0 WHERE equipment_id=238;
DELETE FROM creature_equip_template_raw WHERE entry=238;

-- ENTRY 239 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=239;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=239;
UPDATE creature SET equipment_id=0 WHERE equipment_id=239;
DELETE FROM creature_equip_template_raw WHERE entry=239;

-- ENTRY 240 (0x01FF0602 / 0x0211) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=240;
INSERT INTO creature_equip_template VALUES (5176,3346,13609,0);
UPDATE creature_template SET equipment_id=5176 WHERE equipment_id=240; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5176 WHERE equipment_id=240; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5176);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3346,7495,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13609,24293,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=240;

-- ENTRY 241 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=241;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=241;
UPDATE creature SET equipment_id=0 WHERE equipment_id=241;
DELETE FROM creature_equip_template_raw WHERE entry=241;

-- ENTRY 242 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=242;
INSERT INTO creature_equip_template VALUES (5177,5285,0,0);
UPDATE creature_template SET equipment_id=5177 WHERE equipment_id=242; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5177 WHERE equipment_id=242; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5177);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5285,6469,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=242;

-- ENTRY 243 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=243;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=243;
UPDATE creature SET equipment_id=0 WHERE equipment_id=243;
DELETE FROM creature_equip_template_raw WHERE entry=243;

-- ENTRY 244 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=244;
INSERT INTO creature_equip_template VALUES (5178,5285,0,5258);
UPDATE creature_template SET equipment_id=5178 WHERE equipment_id=244; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5178 WHERE equipment_id=244; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5178);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5285,6469,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=244;

-- ENTRY 245 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=245;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=245; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=245; 
DELETE FROM creature_equip_template_raw WHERE entry=245;

-- ENTRY 246 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=246;
INSERT INTO creature_equip_template VALUES (5179,5285,5285,0);
UPDATE creature_template SET equipment_id=5179 WHERE equipment_id=246; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5179 WHERE equipment_id=246; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5179);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5285,6469,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=246;

-- ENTRY 247 (0x01FF0702 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=247;
INSERT INTO creature_equip_template VALUES (5180,1897,0,2552);
UPDATE creature_template SET equipment_id=5180 WHERE equipment_id=247; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5180 WHERE equipment_id=247; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5180);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1897,7485,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=247;

-- ENTRY 248 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=248;
INSERT INTO creature_equip_template VALUES (5181,5305,1985,0);
UPDATE creature_template SET equipment_id=5181 WHERE equipment_id=248; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5181 WHERE equipment_id=248; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5181);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=248;

-- ENTRY 249 (0x02FF0402 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=249;
INSERT INTO creature_equip_template VALUES (5182,6334,1905,0);
UPDATE creature_template SET equipment_id=5182 WHERE equipment_id=249; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5182 WHERE equipment_id=249; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5182);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6334,11289,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=249;

-- ENTRY 250 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=250;
INSERT INTO creature_equip_template VALUES (5183,5285,0,5262);
UPDATE creature_template SET equipment_id=5183 WHERE equipment_id=250; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5183 WHERE equipment_id=250; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5183);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5285,6469,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5262,6235,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=250;

-- ENTRY 251 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=251;
INSERT INTO creature_equip_template VALUES (5184,10619,10619,0);
UPDATE creature_template SET equipment_id=5184 WHERE equipment_id=251; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5184 WHERE equipment_id=251; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5184);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10619,19557,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=251;

-- ENTRY 252 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=252;
INSERT INTO creature_equip_template VALUES (5185,17283,17282,0);
UPDATE creature_template SET equipment_id=5185 WHERE equipment_id=252; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5185 WHERE equipment_id=252; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5185);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (17283,6249,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (17282,29276,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=252;

-- ENTRY 253 (0x01FF0002 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=253;
INSERT INTO creature_equip_template VALUES (5186,1910,12745,0);
UPDATE creature_template SET equipment_id=5186 WHERE equipment_id=253; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5186 WHERE equipment_id=253; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5186);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1910,7493,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12745,23172,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=253;

-- ENTRY 254 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=254;
INSERT INTO creature_equip_template VALUES (5187,10611,1957,2552);
UPDATE creature_template SET equipment_id=5187 WHERE equipment_id=254; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5187 WHERE equipment_id=254; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5187);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=254;

-- ENTRY 255 (UNUSED OR DUPLICATE ENTRY - REMOVING) - SET PROPER EQUIPMENT ID FOR THESE NPC'S
DELETE FROM creature_equip_template WHERE entry=255;
UPDATE creature_template SET equipment_id=5045 WHERE equipment_id=255; 
UPDATE creature SET equipment_id=5045 WHERE equipment_id=255; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5045);
DELETE FROM creature_equip_template_raw WHERE entry=255;

-- ENTRY 256 (0x01FF0E02 / 0x0015)
DELETE FROM creature_equip_template WHERE entry=256;
INSERT INTO creature_equip_template VALUES (5188,2901,0,0);
UPDATE creature_template SET equipment_id=5188 WHERE equipment_id=256; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5188 WHERE equipment_id=256; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5188);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2901,6568,-1,14,2,0,21);
DELETE FROM creature_equip_template_raw WHERE entry=256;

-- ENTRY 257 (UNUSED OR DUPLICATE ENTRY - REMOVING) - SET PROPER EQUIPMENT ID FOR THESE NPC'S
DELETE FROM creature_equip_template WHERE entry=257;
UPDATE creature_template SET equipment_id=5008 WHERE equipment_id=257;
UPDATE creature SET equipment_id=5008 WHERE equipment_id=257;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5008);
DELETE FROM creature_equip_template_raw WHERE entry=257;

-- ENTRY 258 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=258;
INSERT INTO creature_equip_template VALUES (5189,5293,0,0);
UPDATE creature_template SET equipment_id=5189 WHERE equipment_id=258; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5189 WHERE equipment_id=258; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5189);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5293,6799,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=258;

-- ENTRY 259 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=259;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=259;
UPDATE creature SET equipment_id=0 WHERE equipment_id=259;
DELETE FROM creature_equip_template_raw WHERE entry=259;

-- ENTRY 260 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=260;
INSERT INTO creature_equip_template VALUES (5190,1911,13610,0);
UPDATE creature_template SET equipment_id=5190 WHERE equipment_id=260; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5190 WHERE equipment_id=260; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5190);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13610,24294,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=260;

-- ENTRY 261 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=261;
INSERT INTO creature_equip_template VALUES (5191,2147,0,0);
UPDATE creature_template SET equipment_id=5191 WHERE equipment_id=261; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5191 WHERE equipment_id=261; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5191);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=261;

-- ENTRY 262 (UNUSED OR DUPLICATE ENTRY - REMOVING) - SET PROPER EQUIPMENT ID FOR THESE NPC'S
DELETE FROM creature_equip_template WHERE entry=262;
UPDATE creature_template SET equipment_id=5191 WHERE equipment_id=262;
UPDATE creature SET equipment_id=5191 WHERE equipment_id=262;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5191);
DELETE FROM creature_equip_template_raw WHERE entry=262;

-- ENTRY 263 (0x01FF0702 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=263;
INSERT INTO creature_equip_template VALUES (5192,2147,0,5259);
UPDATE creature_template SET equipment_id=5192 WHERE equipment_id=263; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5192 WHERE equipment_id=263; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5192);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=263;

-- ENTRY 264 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=264;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=264;
UPDATE creature SET equipment_id=0 WHERE equipment_id=264; 
DELETE FROM creature_equip_template_raw WHERE entry=264;

-- ENTRY 265 (0x01FF0102 / 0x0111) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=265;
INSERT INTO creature_equip_template VALUES (5193,12294,0,5262);
UPDATE creature_template SET equipment_id=5193 WHERE equipment_id=265; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5193 WHERE equipment_id=265; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5193);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12294,22598,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5262,6235,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=265;

-- ENTRY 266 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=266;
INSERT INTO creature_equip_template VALUES (5194,2147,1984,0);
UPDATE creature_template SET equipment_id=5194 WHERE equipment_id=266; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5194 WHERE equipment_id=266; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5194);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=266;

-- ENTRY 267 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=267;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=267; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=267; 
DELETE FROM creature_equip_template_raw WHERE entry=267;

-- ENTRY 268 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=268;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=268;
UPDATE creature SET equipment_id=0 WHERE equipment_id=268;
DELETE FROM creature_equip_template_raw WHERE entry=268;

-- ENTRY 269 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=269;
INSERT INTO creature_equip_template VALUES (5195,12290,12456,0);
UPDATE creature_template SET equipment_id=5195 WHERE equipment_id=269; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5195 WHERE equipment_id=269; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5195);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12290,22319,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12456,22640,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=269;

-- ENTRY 270 (0x0D010702 / 0x0003) and (0x0E010604 / 0x040E) - BAD TBC-DB DATA (CORRECTED AND INTERPOLATED DATA AS REQUIRED)
DELETE FROM creature_equip_template WHERE entry=270;
INSERT INTO creature_equip_template VALUES (5196,2147,2053,0);
UPDATE creature_template SET equipment_id=5196 WHERE equipment_id=270; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5196 WHERE equipment_id=270; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5196);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=270;

-- ENTRY 271 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=271;
INSERT INTO creature_equip_template VALUES (5197,10615,0,0);
UPDATE creature_template SET equipment_id=5197 WHERE equipment_id=271; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5197 WHERE equipment_id=271; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5197);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10615,19553,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=271;

-- ENTRY 272 (0x01FF0702 / 0x030D) and (0x01FF0004 / 0x0717) - CONSOLIDATED ENTRY 1961 WITH 272
DELETE FROM creature_equip_template WHERE entry=272;
DELETE FROM creature_equip_template WHERE entry=1961;
INSERT INTO creature_equip_template VALUES (5198,2147,2081,0);
UPDATE creature_template SET equipment_id=5198 WHERE equipment_id=272; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5198 WHERE equipment_id=272; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature_template SET equipment_id=5198 WHERE equipment_id=1961; -- CONSOLIDATED 2 EQUIPMENT ID'S
UPDATE creature SET equipment_id=5198 WHERE equipment_id=1961; -- CONSOLIDATED 2 EQUIPMENT ID'S
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5198);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=272;
DELETE FROM creature_equip_template_raw WHERE entry=1961;

-- ENTRY 273 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=273;
INSERT INTO creature_equip_template VALUES (5199,12593,0,0);
UPDATE creature_template SET equipment_id=5199 WHERE equipment_id=273; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5199 WHERE equipment_id=273; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5199);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12593,22814,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=273;

-- ENTRY 274 (0x0D010702 / 0x0003) (0x0F020202 / 0x0000) - BAD TBC-DB DATA (USED UDB DATA TO CORRECT THE EQUIPMENT)
DELETE FROM creature_equip_template WHERE entry=274;
INSERT INTO creature_equip_template VALUES (5200,2147,0,2550);
UPDATE creature_template SET equipment_id=5200 WHERE equipment_id=274; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5200 WHERE equipment_id=274; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5200);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=274;

-- ENTRY 275 (0x02FF0A02 / 0x0211) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=275;
INSERT INTO creature_equip_template VALUES (5201,13721,0,5258);
UPDATE creature_template SET equipment_id=5201 WHERE equipment_id=275; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5201 WHERE equipment_id=275; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5201);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13721,24483,-1,10,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=275;

-- ENTRY 276 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=276;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=276;
UPDATE creature SET equipment_id=0 WHERE equipment_id=276;
DELETE FROM creature_equip_template_raw WHERE entry=276;

-- ENTRY 277 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=277;
INSERT INTO creature_equip_template VALUES (5202,2179,0,0);
UPDATE creature_template SET equipment_id=5202 WHERE equipment_id=277; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5202 WHERE equipment_id=277; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5202);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=277;

-- ENTRY 278 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=278;
UPDATE creature_template SET equipment_id=5202 WHERE equipment_id=278;
UPDATE creature SET equipment_id=5202 WHERE equipment_id=278;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5202);
DELETE FROM creature_equip_template_raw WHERE entry=278;

-- ENTRY 279 (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=279;
INSERT INTO creature_equip_template VALUES (5203,0,12857,0);
UPDATE creature_template SET equipment_id=5203 WHERE equipment_id=279; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5203 WHERE equipment_id=279; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5203);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12857,23319,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=279;

-- ENTRY 280 (0x0D010702 / 0x0003) and (0x0E010604 / 0x040E) - BAD DATA IN TBC-DB (USED EXISTING AND UDB DATA TO INTERPOLATE CORRECT DATA) 
DELETE FROM creature_equip_template WHERE entry=280;
INSERT INTO creature_equip_template VALUES (5204,2179,1984,0);
UPDATE creature_template SET equipment_id=5204 WHERE equipment_id=280; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5204 WHERE equipment_id=280; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5204);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=280;

-- ENTRY 281 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=281;
INSERT INTO creature_equip_template VALUES (5205,2179,2053,0);
UPDATE creature_template SET equipment_id=5205 WHERE equipment_id=281; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5205 WHERE equipment_id=281; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5205);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,4,6,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=281;

-- ENTRY 282 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=282;
INSERT INTO creature_equip_template VALUES (5206,2179,143,0);
UPDATE creature_template SET equipment_id=5206 WHERE equipment_id=282; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5206 WHERE equipment_id=282; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5206);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=282;

-- ENTRY 283 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=283;
INSERT INTO creature_equip_template VALUES (5207,10616,0,5259);
UPDATE creature_template SET equipment_id=5207 WHERE equipment_id=283; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5207 WHERE equipment_id=283; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5207);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10616,19555,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=283;

-- ENTRY 284 (0x02FF0402 / 0x0315) and (0x01FF0604 / 0x040E) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=284;
INSERT INTO creature_equip_template VALUES (5208,5291,11586,2552);
UPDATE creature_template SET equipment_id=5208 WHERE equipment_id=284; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5208 WHERE equipment_id=284; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5208);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5291,5224,-1,4,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11586,21540,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=284;

-- ENTRY 285 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=285;
INSERT INTO creature_equip_template VALUES (5209,12944,0,0);
UPDATE creature_template SET equipment_id=5209 WHERE equipment_id=285; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5209 WHERE equipment_id=285; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5209);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12944,23472,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=285;

-- ENTRY 286 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=286;
INSERT INTO creature_equip_template VALUES (5210,2179,2147,0);
UPDATE creature_template SET equipment_id=5210 WHERE equipment_id=286; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5210 WHERE equipment_id=286; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5210);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=286;

-- ENTRY 287 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D) - CONSOLIDATED ENTRY 1904 WITH 287
DELETE FROM creature_equip_template WHERE entry=287;
INSERT INTO creature_equip_template VALUES (5211,2179,2179,0);
UPDATE creature_template SET equipment_id=5211 WHERE equipment_id=287; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5211 WHERE equipment_id=287; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature_template SET equipment_id=5211 WHERE equipment_id=1904; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5211 WHERE equipment_id=1904; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5211);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=287;
DELETE FROM creature_equip_template_raw WHERE entry=1904;

-- ENTRY 288 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=288;
INSERT INTO creature_equip_template VALUES (5212,2179,2711,0);
UPDATE creature_template SET equipment_id=5212 WHERE equipment_id=288; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5212 WHERE equipment_id=288; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5212);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=288;

-- ENTRY 289 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=289;
INSERT INTO creature_equip_template VALUES (5213,2179,1897,0);
UPDATE creature_template SET equipment_id=5213 WHERE equipment_id=289; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5213 WHERE equipment_id=289; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5213);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2179,7420,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1897,7485,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=289;

-- ENTRY 290 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=290;
UPDATE creature_template SET equipment_id=5213 WHERE equipment_id=290;
UPDATE creature SET equipment_id=5213 WHERE equipment_id=290;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5213);
DELETE FROM creature_equip_template_raw WHERE entry=290;

-- ENTRY 291 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=291;
INSERT INTO creature_equip_template VALUES (5214,1909,0,0);
UPDATE creature_template SET equipment_id=5214 WHERE equipment_id=291; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5214 WHERE equipment_id=291; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5214);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=291;

-- ENTRY 292 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=292;
UPDATE creature_template SET equipment_id=5214 WHERE equipment_id=292; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5214 WHERE equipment_id=292; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5214);
DELETE FROM creature_equip_template_raw WHERE entry=292;

-- ENTRY 293 (0x02FF0402 / 0x020D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=293;
INSERT INTO creature_equip_template VALUES (5215,1117,13605,0);
UPDATE creature_template SET equipment_id=5215 WHERE equipment_id=293; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5215 WHERE equipment_id=293; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5215);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1117,7453,-1,4,2,2,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13605,24282,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=293;

-- ENTRY 294 (0x01FF0002 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=294;
INSERT INTO creature_equip_template VALUES (5216,1909,0,2551);
UPDATE creature_template SET equipment_id=5216 WHERE equipment_id=294; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5216 WHERE equipment_id=294; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5216);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=294;

-- ENTRY 295 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=295;
INSERT INTO creature_equip_template VALUES (5217,12629,12629,0);
UPDATE creature_template SET equipment_id=5217 WHERE equipment_id=295; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5217 WHERE equipment_id=295; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5217);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12629,22893,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=295;

-- ENTRY 296 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=296;
INSERT INTO creature_equip_template VALUES (5218,1899,11041,0);
UPDATE creature_template SET equipment_id=5218 WHERE equipment_id=296; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5218 WHERE equipment_id=296; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5218);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11041,20537,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=296;

-- ENTRY 297 (0x0D010002 / 0x0003) and (0x0E0106042 / 0x040E) - INCORRECT TBC-DB DATA (FIXED AND INTERPOLATED WITH UDB DATA)
DELETE FROM creature_equip_template WHERE entry=297;
INSERT INTO creature_equip_template VALUES (5219,1909,2052,0);
UPDATE creature_template SET equipment_id=5219 WHERE equipment_id=297; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5219 WHERE equipment_id=297; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5219);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=297;

-- ENTRY 298 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=298;
INSERT INTO creature_equip_template VALUES (5220,1909,2053,0);
UPDATE creature_template SET equipment_id=5220 WHERE equipment_id=298; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5220 WHERE equipment_id=298; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5220);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=298;

-- ENTRY 299 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=299;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=299;
UPDATE creature SET equipment_id=0 WHERE equipment_id=299; 
DELETE FROM creature_equip_template_raw WHERE entry=299;

-- ENTRY 300 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=300;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=300; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=300; 
DELETE FROM creature_equip_template_raw WHERE entry=300;

-- ENTRY 301 (0x01FF0702 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=301;
INSERT INTO creature_equip_template VALUES (5221,13222,12861,0);
UPDATE creature_template SET equipment_id=5221 WHERE equipment_id=301; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5221 WHERE equipment_id=301; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5221);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13222,23798,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12861,23175,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=301;

-- ENTRY 302 (0x02FF0402 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=302;
INSERT INTO creature_equip_template VALUES (5222,12786,12861,0);
UPDATE creature_template SET equipment_id=5222 WHERE equipment_id=302; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5222 WHERE equipment_id=302; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5222);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12786,23253,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12861,23175,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=302;

-- ENTRY 303 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=303;
INSERT INTO creature_equip_template VALUES (5223,10612,12456,14642);
UPDATE creature_template SET equipment_id=5223 WHERE equipment_id=303; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5223 WHERE equipment_id=303; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5223);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12456,22640,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14642,25260,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=303;

-- ENTRY 304 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=304;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=304;
UPDATE creature SET equipment_id=0 WHERE equipment_id=304; 
DELETE FROM creature_equip_template_raw WHERE entry=304;

-- ENTRY 305 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=305;
INSERT INTO creature_equip_template VALUES (5224,1909,5286,0);
UPDATE creature_template SET equipment_id=5224 WHERE equipment_id=305; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5224 WHERE equipment_id=305; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5224);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1909,7426,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=305;

-- ENTRY 306 (0x02FF0402 / 0x030D) and (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=306;
INSERT INTO creature_equip_template VALUES (5225,13312,13312,0);
UPDATE creature_template SET equipment_id=5225 WHERE equipment_id=306; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5225 WHERE equipment_id=306; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5225);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13312,23948,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=306;

-- ENTRY 307 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=307;
INSERT INTO creature_equip_template VALUES (5226,12786,12786,0);
UPDATE creature_template SET equipment_id=5226 WHERE equipment_id=307; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5226 WHERE equipment_id=307; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5226);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12786,23253,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=307;

-- ENTRY 308 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=308;
INSERT INTO creature_equip_template VALUES (5227,2183,0,0);
UPDATE creature_template SET equipment_id=5227 WHERE equipment_id=308; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5227 WHERE equipment_id=308; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5227);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=308;

-- ENTRY 309 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=309;
UPDATE creature_template SET equipment_id=5227 WHERE equipment_id=309;
UPDATE creature SET equipment_id=5227 WHERE equipment_id=309;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5227);
DELETE FROM creature_equip_template_raw WHERE entry=309;

-- ENTRY 310 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=310;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=310;
UPDATE creature SET equipment_id=0 WHERE equipment_id=310;
DELETE FROM creature_equip_template_raw WHERE entry=310;

-- ENTRY 311 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=311;
INSERT INTO creature_equip_template VALUES (5228,2147,2147,0);
UPDATE creature_template SET equipment_id=5228 WHERE equipment_id=311; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5228 WHERE equipment_id=311; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5228);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=311;

-- ENTRY 312 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=312;
INSERT INTO creature_equip_template VALUES (5229,2183,1984,0);
UPDATE creature_template SET equipment_id=5229 WHERE equipment_id=312; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5229 WHERE equipment_id=312; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5229);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=312;

-- ENTRY 313 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=313;
UPDATE creature_template SET equipment_id=5229 WHERE equipment_id=313;
UPDATE creature SET equipment_id=5229 WHERE equipment_id=313;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5229);
DELETE FROM creature_equip_template_raw WHERE entry=313;

-- ENTRY 314 (0x01FF0602 / 0x0211) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=314;
INSERT INTO creature_equip_template VALUES (5230,5746,13609,0);
UPDATE creature_template SET equipment_id=5230 WHERE equipment_id=314; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5230 WHERE equipment_id=314; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5230);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5746,8746,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13609,24293,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=314;

-- ENTRY 315 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=315;
INSERT INTO creature_equip_template VALUES (5231,17123,0,0);
UPDATE creature_template SET equipment_id=5231 WHERE equipment_id=315; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5231 WHERE equipment_id=315; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5231);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (17123,29066,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=315;

-- ENTRY 316 (0x02FF0402 / 0x030D) and (0x02FF0402 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=316;
INSERT INTO creature_equip_template VALUES (5232,2809,2809,5259);
UPDATE creature_template SET equipment_id=5232 WHERE equipment_id=316; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5232 WHERE equipment_id=316; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5232);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2809,7476,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=316;

-- ENTRY 317 (0x0D010002 / 0x0003) and (0x0D010002 / 0x0003) - BAD TBC-DB HEX DATA (CORRECTED WITH PROPER DATA AND UDB CONFIRMED)
DELETE FROM creature_equip_template WHERE entry=317;
INSERT INTO creature_equip_template VALUES (5233,2183,5286,0);
UPDATE creature_template SET equipment_id=5233 WHERE equipment_id=317; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5233 WHERE equipment_id=317; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5233);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=317;

-- ENTRY 318 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=318;
INSERT INTO creature_equip_template VALUES (5234,2183,12893,0);
UPDATE creature_template SET equipment_id=5234 WHERE equipment_id=318; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5234 WHERE equipment_id=318; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5234);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12893,23387,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=318;

-- ENTRY 319 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=319;
INSERT INTO creature_equip_template VALUES (5235,1905,0,0);
UPDATE creature_template SET equipment_id=5235 WHERE equipment_id=319; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5235 WHERE equipment_id=319; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5235);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=319;

-- ENTRY 320 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=320;
UPDATE creature_template SET equipment_id=5235 WHERE equipment_id=320; 
UPDATE creature SET equipment_id=5235 WHERE equipment_id=320; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5235);
DELETE FROM creature_equip_template_raw WHERE entry=320;

-- ENTRY 321 (0x01FF0002 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=321;
INSERT INTO creature_equip_template VALUES (5236,1905,0,2551);
UPDATE creature_template SET equipment_id=5236 WHERE equipment_id=321; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5236 WHERE equipment_id=321; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5236);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=321;

-- ENTRY 322 (0x02FF1302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=322;
INSERT INTO creature_equip_template VALUES (5237,0,0,16582);
UPDATE creature_template SET equipment_id=5237 WHERE equipment_id=322; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5237 WHERE equipment_id=322; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5237);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (16582,27451,-1,13,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=322;

-- ENTRY 323 (0x01FF0002 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=323;
INSERT INTO creature_equip_template VALUES (5238,1905,0,5856);
UPDATE creature_template SET equipment_id=5238 WHERE equipment_id=323; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5238 WHERE equipment_id=323; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5238);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5856,16751,-1,10,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=323;

-- ENTRY 324 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=324;
UPDATE creature_template SET equipment_id=5036 WHERE equipment_id=324;
UPDATE creature SET equipment_id=5036 WHERE equipment_id=324;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5036);
DELETE FROM creature_equip_template_raw WHERE entry=324;

-- ENTRY 325 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=325;
INSERT INTO creature_equip_template VALUES (5239,1905,1957,0);
UPDATE creature_template SET equipment_id=5239 WHERE equipment_id=325; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5239 WHERE equipment_id=325; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5239);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=325;

-- ENTRY 326 (0x01FF0002 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=326;
INSERT INTO creature_equip_template VALUES (5240,10611,13609,0);
UPDATE creature_template SET equipment_id=5240 WHERE equipment_id=326; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5240 WHERE equipment_id=326; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5240);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13609,24293,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=326;

-- ENTRY 327 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=327;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=327;
UPDATE creature SET equipment_id=0 WHERE equipment_id=327; 
DELETE FROM creature_equip_template_raw WHERE entry=327;

-- ENTRY 328 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=328;
INSERT INTO creature_equip_template VALUES (5241,1905,1985,0);
UPDATE creature_template SET equipment_id=5241 WHERE equipment_id=328; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5241 WHERE equipment_id=328; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5241);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=328;

-- ENTRY 329 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=329;
INSERT INTO creature_equip_template VALUES (5242,1905,2052,0);
UPDATE creature_template SET equipment_id=5242 WHERE equipment_id=329; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5242 WHERE equipment_id=329; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5242);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=329;

-- ENTRY 330 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=330;
INSERT INTO creature_equip_template VALUES (5243,8226,0,0);
UPDATE creature_template SET equipment_id=5243 WHERE equipment_id=330; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5243 WHERE equipment_id=330; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5243);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (8226,16539,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=330;

-- ENTRY 331 (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=331;
INSERT INTO creature_equip_template VALUES (5244,5598,0,13147);
UPDATE creature_template SET equipment_id=5244 WHERE equipment_id=331; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5244 WHERE equipment_id=331; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5244);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13147,23639,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=331;

-- ENTRY 332 (0x0D010002 / 0x0003) and (0x0F020202 / 0x0000) - BAD TBC-DB DATA (INTERPOLATED DATA)
DELETE FROM creature_equip_template WHERE entry=332;
INSERT INTO creature_equip_template VALUES (5245,1905,0,5258);
UPDATE creature_template SET equipment_id=5245 WHERE equipment_id=332; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5245 WHERE equipment_id=332; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5245);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=332;

-- ENTRY 333 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=333;
INSERT INTO creature_equip_template VALUES (5246,13707,13319,0);
UPDATE creature_template SET equipment_id=5246 WHERE equipment_id=333; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5246 WHERE equipment_id=333; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5246);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13707,24452,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13319,23977,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=333;

-- ENTRY 334 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=334;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=334;
UPDATE creature SET equipment_id=0 WHERE equipment_id=334; 
DELETE FROM creature_equip_template_raw WHERE entry=334;

-- ENTRY 335 (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=335;
INSERT INTO creature_equip_template VALUES (5247,5598,0,13147);
UPDATE creature_template SET equipment_id=5247 WHERE equipment_id=335; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5247 WHERE equipment_id=335; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5247);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13147,23639,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=335;

-- ENTRY 336 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=336;
INSERT INTO creature_equip_template VALUES (5248,12944,12944,13147);
UPDATE creature_template SET equipment_id=5248 WHERE equipment_id=336; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5248 WHERE equipment_id=336; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5248);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12944,23472,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13147,23639,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=336;

-- ENTRY 337 (0x02FF1402 / 0x0111) - REMOVED LEFT HAND EQUIPMENT (BAD TBC-DB DATA SO USED UDB DATA)
DELETE FROM creature_equip_template WHERE entry=337;
INSERT INTO creature_equip_template VALUES (5249,6256,0,0);
UPDATE creature_template SET equipment_id=5249 WHERE equipment_id=337; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5249 WHERE equipment_id=337; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5249);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6256,20730,-1,14,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=337;

-- ENTRY 338 (0x02FF0E02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=338;
INSERT INTO creature_equip_template VALUES (5250,13607,0,0);
UPDATE creature_template SET equipment_id=5250 WHERE equipment_id=338; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5250 WHERE equipment_id=338; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5250);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13607,24284,-1,14,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=338;

-- ENTRY 339 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=339;
INSERT INTO creature_equip_template VALUES (5251,1905,1905,0);
UPDATE creature_template SET equipment_id=5251 WHERE equipment_id=339; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5251 WHERE equipment_id=339; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5251);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1905,7428,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=339;

-- ENTRY 340 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=340;
UPDATE creature_template SET equipment_id=5251 WHERE equipment_id=340;
UPDATE creature SET equipment_id=5251 WHERE equipment_id=340; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5251);
DELETE FROM creature_equip_template_raw WHERE entry=340;

-- ENTRY 341 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=341;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=341;
UPDATE creature SET equipment_id=0 WHERE equipment_id=341; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=341);
DELETE FROM creature_equip_template_raw WHERE entry=341;

-- ENTRY 342 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=342;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=342; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=342; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=342);
DELETE FROM creature_equip_template_raw WHERE entry=342;

-- ENTRY 343 (0x01FF0102 / 0x0111) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=343;
INSERT INTO creature_equip_template VALUES (5252,14870,0,2552);
UPDATE creature_template SET equipment_id=5252 WHERE equipment_id=343; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5252 WHERE equipment_id=343; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5252);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14870,25410,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=343;

-- ENTRY 344 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=344;
INSERT INTO creature_equip_template VALUES (5253,1904,0,0);
UPDATE creature_template SET equipment_id=5253 WHERE equipment_id=344; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5253 WHERE equipment_id=344; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5253);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1904,7429,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=344;

-- ENTRY 345 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=345;
UPDATE creature_template SET equipment_id=5253 WHERE equipment_id=345;
UPDATE creature SET equipment_id=5253 WHERE equipment_id=345;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5253);
DELETE FROM creature_equip_template_raw WHERE entry=345;

-- ENTRY 346 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=346;
INSERT INTO creature_equip_template VALUES (5254,1904,0,5258);
UPDATE creature_template SET equipment_id=5254 WHERE equipment_id=346; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5254 WHERE equipment_id=346; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5254);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1904,7429,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=346;

-- ENTRY 347 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=347;
INSERT INTO creature_equip_template VALUES (5255,1904,0,5260);
UPDATE creature_template SET equipment_id=5255 WHERE equipment_id=347; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5255 WHERE equipment_id=347; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5255);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1904,7429,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=347;

-- ENTRY 348 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=348;
INSERT INTO creature_equip_template VALUES (5256,14882,20417,5261);
UPDATE creature_template SET equipment_id=5256 WHERE equipment_id=348; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5256 WHERE equipment_id=348; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5256);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14882,25504,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (20417,25504,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=348;

-- ENTRY 349 (0x01FF0002 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=349;
INSERT INTO creature_equip_template VALUES (5257,1904,0,2551);
UPDATE creature_template SET equipment_id=5257 WHERE equipment_id=349; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5257 WHERE equipment_id=349; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5257);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1904,7429,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=349;

-- ENTRY 350 (0x01FF0F02 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=350;
INSERT INTO creature_equip_template VALUES (5258,10617,12861,0);
UPDATE creature_template SET equipment_id=5258 WHERE equipment_id=350; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5258 WHERE equipment_id=350; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5258);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10617,19556,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12861,23175,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=350;

-- ENTRY 351 (0x01FF0002 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=351;
INSERT INTO creature_equip_template VALUES (5259,1904,0,5856);
UPDATE creature_template SET equipment_id=5259 WHERE equipment_id=351; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5259 WHERE equipment_id=351; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5259);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1904,7429,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5856,16751,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=351;

-- ENTRY 352 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=352;
INSERT INTO creature_equip_template VALUES (5260,14823,0,0);
UPDATE creature_template SET equipment_id=5260 WHERE equipment_id=352; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5260 WHERE equipment_id=352; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5260);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14823,25366,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=352;

-- ENTRY 353 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=353;
INSERT INTO creature_equip_template VALUES (5261,2183,10612,0);
UPDATE creature_template SET equipment_id=5261 WHERE equipment_id=353; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5261 WHERE equipment_id=353; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5261);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=353;

-- ENTRY 354 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=354;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=354;
UPDATE creature SET equipment_id=0 WHERE equipment_id=354;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=354);
DELETE FROM creature_equip_template_raw WHERE entry=354;

-- ENTRY 355 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=355;
INSERT INTO creature_equip_template VALUES (5262,12629,12629,5856);
UPDATE creature_template SET equipment_id=5262 WHERE equipment_id=355; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5262 WHERE equipment_id=355; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5262);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12629,22893,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5856,16751,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=355;

-- ENTRY 356 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=356;
INSERT INTO creature_equip_template VALUES (5263,21192,0,0);
UPDATE creature_template SET equipment_id=5263 WHERE equipment_id=356; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5263 WHERE equipment_id=356; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5263);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (21192,33536,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=356;

-- ENTRY 357 (0x01FF0102 / 0x0111) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=357;
INSERT INTO creature_equip_template VALUES (5264,17383,12452,0);
UPDATE creature_template SET equipment_id=5264 WHERE equipment_id=357; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5264 WHERE equipment_id=357; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5264);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (17383,29408,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12452,22635,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=357;

-- ENTRY 358 (0x01FF0D02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=358;
INSERT INTO creature_equip_template VALUES (5265,3494,0,0);
UPDATE creature_template SET equipment_id=5265 WHERE equipment_id=358; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5265 WHERE equipment_id=358; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5265);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3494,7430,-1,13,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=358;

-- ENTRY 359 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=359;
UPDATE creature_template SET equipment_id=5265 WHERE equipment_id=359;
UPDATE creature SET equipment_id=5265 WHERE equipment_id=359; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5265);
DELETE FROM creature_equip_template_raw WHERE entry=359;

-- ENTRY 360 (0x01FF0D02 / 0x070D) and (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=360;
INSERT INTO creature_equip_template VALUES (5266,3494,1906,0);
UPDATE creature_template SET equipment_id=5266 WHERE equipment_id=360; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5266 WHERE equipment_id=360; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5266);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3494,7430,-1,13,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1906,12236,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=360;

-- ENTRY 361 (0x01FF0D02 / 0x070D) and (0x01FF0D02 / 0x0716)
DELETE FROM creature_equip_template WHERE entry=361;
INSERT INTO creature_equip_template VALUES (5267,3494,11506,0);
UPDATE creature_template SET equipment_id=5267 WHERE equipment_id=361; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5267 WHERE equipment_id=361; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5267);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3494,7430,-1,13,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11506,21144,-1,13,2,7,22);
DELETE FROM creature_equip_template_raw WHERE entry=361;

-- ENTRY 362 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=362;
INSERT INTO creature_equip_template VALUES (5268,2196,13406,0);
UPDATE creature_template SET equipment_id=5268 WHERE equipment_id=362; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5268 WHERE equipment_id=362; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5268);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2196,7462,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13406,24116,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=362;

-- ENTRY 363 (0x01FF0D02 / 0x070D) and (0x01FF0D02 / 0x0716) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=363;
INSERT INTO creature_equip_template VALUES (5269,3494,11506,13924);
UPDATE creature_template SET equipment_id=5269 WHERE equipment_id=363; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5269 WHERE equipment_id=363; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5269);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3494,7430,-1,13,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11506,21144,-1,13,2,7,22);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13924,24721,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=363;

-- ENTRY 364 (0x01FF0D02 / 0x070D) and (0x01FF0D02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=364;
INSERT INTO creature_equip_template VALUES (5270,3494,11314,0);
UPDATE creature_template SET equipment_id=5270 WHERE equipment_id=364; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5270 WHERE equipment_id=364; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5270);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3494,7430,-1,13,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11314,21462,-1,13,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=364;

-- ENTRY 365 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=365;
INSERT INTO creature_equip_template VALUES (5271,2827,0,0);
UPDATE creature_template SET equipment_id=5271 WHERE equipment_id=365; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5271 WHERE equipment_id=365; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5271);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=365;

-- ENTRY 366 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=366;
UPDATE creature_template SET equipment_id=5271 WHERE equipment_id=366;
UPDATE creature SET equipment_id=5271 WHERE equipment_id=366;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5271);
DELETE FROM creature_equip_template_raw WHERE entry=366;

-- ENTRY 367 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=367;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=367;
UPDATE creature SET equipment_id=0 WHERE equipment_id=367;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=367);
DELETE FROM creature_equip_template_raw WHERE entry=367;

-- ENTRY 368 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=368;
INSERT INTO creature_equip_template VALUES (5272,1899,1895,0);
UPDATE creature_template SET equipment_id=5272 WHERE equipment_id=368; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5272 WHERE equipment_id=368; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5272);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1895,7488,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=368;

-- ENTRY 369 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=369;
INSERT INTO creature_equip_template VALUES (5273,2827,2827,0);
UPDATE creature_template SET equipment_id=5273 WHERE equipment_id=369; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5273 WHERE equipment_id=369; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5273);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=369;

-- ENTRY 370 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=370;
UPDATE creature_template SET equipment_id=5273 WHERE equipment_id=370;
UPDATE creature SET equipment_id=5273 WHERE equipment_id=370;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5273);
DELETE FROM creature_equip_template_raw WHERE entry=370;

-- ENTRY 371 (0x01FF0002 / 0x030D) and (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=371;
INSERT INTO creature_equip_template VALUES (5274,2827,2196,0);
UPDATE creature_template SET equipment_id=5274 WHERE equipment_id=371; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5274 WHERE equipment_id=371; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5274);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2196,7462,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=371;

-- ENTRY 372 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=372;
INSERT INTO creature_equip_template VALUES (5275,2201,0,0);
UPDATE creature_template SET equipment_id=5275 WHERE equipment_id=372; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5275 WHERE equipment_id=372; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5275);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2201,7473,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=372;

-- ENTRY 373 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=373;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=373;
UPDATE creature SET equipment_id=0 WHERE equipment_id=373;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=373);
DELETE FROM creature_equip_template_raw WHERE entry=373;

-- ENTRY 374 (0x033488898 / 0x030D) and (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=374;
INSERT INTO creature_equip_template VALUES (5276,2827,3351,0);
UPDATE creature_template SET equipment_id=5276 WHERE equipment_id=374; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5276 WHERE equipment_id=374; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5276);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3351,7468,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=374;

-- ENTRY 375 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=375;
UPDATE creature_template SET equipment_id=5276 WHERE equipment_id=375;
UPDATE creature SET equipment_id=5276 WHERE equipment_id=375;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5276);
DELETE FROM creature_equip_template_raw WHERE entry=375;

-- ENTRY 376 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=376;
INSERT INTO creature_equip_template VALUES (5277,2183,1957,5261);
UPDATE creature_template SET equipment_id=5277 WHERE equipment_id=376; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5277 WHERE equipment_id=376; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5277);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=376;

-- ENTRY 377 (0x01FF0002 / 0x030D) and (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=377;
INSERT INTO creature_equip_template VALUES (5278,2827,6228,0);
UPDATE creature_template SET equipment_id=5278 WHERE equipment_id=377; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5278 WHERE equipment_id=377; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5278);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2827,7431,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6228,10816,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=377;

-- ENTRY 378 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=378;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=378;
UPDATE creature SET equipment_id=0 WHERE equipment_id=378;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=378);
DELETE FROM creature_equip_template_raw WHERE entry=378;

-- ENTRY 379 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=379;
INSERT INTO creature_equip_template VALUES (5279,2147,5278,5261);
UPDATE creature_template SET equipment_id=5279 WHERE equipment_id=379; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5279 WHERE equipment_id=379; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5279);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2147,7419,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5278,6434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=379;

-- ENTRY 380 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=380;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=380;
UPDATE creature SET equipment_id=0 WHERE equipment_id=380;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=380);
DELETE FROM creature_equip_template_raw WHERE entry=380;

-- ENTRY 381 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=381;
INSERT INTO creature_equip_template VALUES (5280,2695,0,0);
UPDATE creature_template SET equipment_id=5280 WHERE equipment_id=381; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5280 WHERE equipment_id=381; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5280);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2695,7432,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=381;

-- ENTRY 382 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=382;
UPDATE creature_template SET equipment_id=5280 WHERE equipment_id=382;
UPDATE creature SET equipment_id=5280 WHERE equipment_id=382;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5280);
DELETE FROM creature_equip_template_raw WHERE entry=382;

-- ENTRY 383 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=383;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=383;
UPDATE creature SET equipment_id=0 WHERE equipment_id=383;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=383);
DELETE FROM creature_equip_template_raw WHERE entry=383;

-- ENTRY 384 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=384;
UPDATE creature_template SET equipment_id=5281 WHERE equipment_id=384;
UPDATE creature SET equipment_id=5281 WHERE equipment_id=384;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5281);
DELETE FROM creature_equip_template_raw WHERE entry=384;

-- ENTRY 385 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=385;
INSERT INTO creature_equip_template VALUES (5281,2711,0,0);
UPDATE creature_template SET equipment_id=5281 WHERE equipment_id=385; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5281 WHERE equipment_id=385; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5281);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=385;

-- ENTRY 386 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=386;
UPDATE creature_template SET equipment_id=5281 WHERE equipment_id=386;
UPDATE creature SET equipment_id=5281 WHERE equipment_id=386;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5281);
DELETE FROM creature_equip_template_raw WHERE entry=386;

-- ENTRY 387 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=387;
INSERT INTO creature_equip_template VALUES (5282,10898,12456,0);
UPDATE creature_template SET equipment_id=5282 WHERE equipment_id=387; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5282 WHERE equipment_id=387; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5282);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10898,20095,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12456,22640,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=387;

-- ENTRY 388 (0x01FF0F02 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=388;
INSERT INTO creature_equip_template VALUES (5283,2711,2051,0);
UPDATE creature_template SET equipment_id=5283 WHERE equipment_id=388; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5283 WHERE equipment_id=388; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5283);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2051,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=388;

-- ENTRY 389 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=389;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=389;
UPDATE creature SET equipment_id=0 WHERE equipment_id=389;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=389);
DELETE FROM creature_equip_template_raw WHERE entry=389;

-- ENTRY 390 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=390;
UPDATE creature_template SET equipment_id=5282 WHERE equipment_id=390;
UPDATE creature SET equipment_id=5282 WHERE equipment_id=390;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5282);
DELETE FROM creature_equip_template_raw WHERE entry=390;

-- ENTRY 391 (0x01FF0F02 / 0x030D) - CONSOLIDATED ENTRY 1943 WITH 391
DELETE FROM creature_equip_template WHERE entry IN (391,1943);
INSERT INTO creature_equip_template VALUES (5284,2711,2711,0);
UPDATE creature_template SET equipment_id=5284 WHERE equipment_id IN (391,1943); -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5284 WHERE equipment_id IN (391,1943); -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5284);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry IN (391,1943);

-- ENTRY 392 (0x01FF0F02 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=392;
INSERT INTO creature_equip_template VALUES (5285,2711,1900,0);
UPDATE creature_template SET equipment_id=5285 WHERE equipment_id=392; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5285 WHERE equipment_id=392; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5285);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2711,7433,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1900,7492,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=392;

-- ENTRY 393 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=393;
INSERT INTO creature_equip_template VALUES (5286,30441,0,0);
UPDATE creature_template SET equipment_id=5286 WHERE equipment_id=393; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5286 WHERE equipment_id=393; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5286);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (30441,42049,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=393;

-- ENTRY 394 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=394;
INSERT INTO creature_equip_template VALUES (5287,14880,0,5260);
UPDATE creature_template SET equipment_id=5287 WHERE equipment_id=394; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5287 WHERE equipment_id=394; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5287);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14880,25499,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=394;

-- ENTRY 395 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=395;
INSERT INTO creature_equip_template VALUES (5288,13165,1984,0);
UPDATE creature_template SET equipment_id=5288 WHERE equipment_id=395; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5288 WHERE equipment_id=395; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5288);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13165,23692,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=395;

-- ENTRY 396 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=396;
UPDATE creature_template SET equipment_id=5289 WHERE equipment_id=396;
UPDATE creature SET equipment_id=5289 WHERE equipment_id=396;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5289);
DELETE FROM creature_equip_template_raw WHERE entry=396;

-- ENTRY 397 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=397;
INSERT INTO creature_equip_template VALUES (5289,2184,0,0);
UPDATE creature_template SET equipment_id=5289 WHERE equipment_id=397; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5289 WHERE equipment_id=397; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5289);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=397;

-- ENTRY 398 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=398;
UPDATE creature_template SET equipment_id=5289 WHERE equipment_id=398;
UPDATE creature SET equipment_id=5289 WHERE equipment_id=398;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5289);
DELETE FROM creature_equip_template_raw WHERE entry=398;

-- ENTRY 399 (0x01FF0002 / 0x040D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=399;
INSERT INTO creature_equip_template VALUES (5290,18293,2081,0);
UPDATE creature_template SET equipment_id=5290 WHERE equipment_id=399; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5290 WHERE equipment_id=399; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5290);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (18293,30638,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=399;

-- ENTRY 400 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=400;
INSERT INTO creature_equip_template VALUES (5291,2184,0,2550);
UPDATE creature_template SET equipment_id=5291 WHERE equipment_id=400; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5291 WHERE equipment_id=400; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5291);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=400;

-- ENTRY 401 (0x01FF0F02 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=401;
INSERT INTO creature_equip_template VALUES (5292,2184,0,2551);
UPDATE creature_template SET equipment_id=5292 WHERE equipment_id=401; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5292 WHERE equipment_id=401; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5292);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=401;

-- ENTRY 402 (0x01FF0702 / 0x0315) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=402;
INSERT INTO creature_equip_template VALUES (5293,29403,27406,0);
UPDATE creature_template SET equipment_id=5293 WHERE equipment_id=402; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5293 WHERE equipment_id=402; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5293);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (29403,40654,-1,7,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (27406,38182,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=402;

-- ENTRY 403 (0x01FF0F02 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=403;
INSERT INTO creature_equip_template VALUES (5294,2184,1961,0);
UPDATE creature_template SET equipment_id=5294 WHERE equipment_id=403; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5294 WHERE equipment_id=403; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5294);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1961,1685,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=403;

-- ENTRY 404(0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=404;
INSERT INTO creature_equip_template VALUES (5295,14836,0,0);
UPDATE creature_template SET equipment_id=5295 WHERE equipment_id=404; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5295 WHERE equipment_id=404; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5295);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14836,25377,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=404;

-- ENTRY 405 (0x01FF0F02 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=405;
INSERT INTO creature_equip_template VALUES (5296,2184,2051,0);
UPDATE creature_template SET equipment_id=5296 WHERE equipment_id=405; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5296 WHERE equipment_id=405; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5296);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2051,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=405;

-- ENTRY 406 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=406;
INSERT INTO creature_equip_template VALUES (5297,12247,0,5260);
UPDATE creature_template SET equipment_id=5297 WHERE equipment_id=406; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5297 WHERE equipment_id=406; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5297);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12247,22247,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=406;

-- ENTRY 407 (0x01FF0702 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=407;
INSERT INTO creature_equip_template VALUES (5298,30408,0,34322);
UPDATE creature_template SET equipment_id=5298 WHERE equipment_id=407; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5298 WHERE equipment_id=407; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5298);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (30408,41978,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34322,47685,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=407;

-- ENTRY 408 (0x01FF0F02 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=408;
INSERT INTO creature_equip_template VALUES (5299,2184,3698,0);
UPDATE creature_template SET equipment_id=5299 WHERE equipment_id=408; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5299 WHERE equipment_id=408; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5299);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3698,6532,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=408;

-- ENTRY 409 (0x01FF0102 / 0x0111) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=409;
INSERT INTO creature_equip_template VALUES (5300,5289,0,5258);
UPDATE creature_template SET equipment_id=5300 WHERE equipment_id=409; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5300 WHERE equipment_id=409; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5300);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5289,3797,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=409;

-- ENTRY 410 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=410;
UPDATE creature_template SET equipment_id=5300 WHERE equipment_id=410;
UPDATE creature SET equipment_id=5300 WHERE equipment_id=410; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5300);
DELETE FROM creature_equip_template_raw WHERE entry=410;

-- ENTRY 411 (0x01FF0802 / 0x0311)
DELETE FROM creature_equip_template WHERE entry=411;
INSERT INTO creature_equip_template VALUES (5301,35712,0,0);
UPDATE creature_template SET equipment_id=5301 WHERE equipment_id=411; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5301 WHERE equipment_id=411; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5301);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (35712,48983,-1,8,2,3,17);
DELETE FROM creature_equip_template_raw WHERE entry=411;

-- ENTRY 412 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=412;
INSERT INTO creature_equip_template VALUES (5302,2184,2184,0);
UPDATE creature_template SET equipment_id=5302 WHERE equipment_id=412; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5302 WHERE equipment_id=412; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5302);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=412;

-- ENTRY 413 (0x01FF0702 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=413;
INSERT INTO creature_equip_template VALUES (5303,1925,0,28581);
UPDATE creature_template SET equipment_id=5303 WHERE equipment_id=413; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5303 WHERE equipment_id=413; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5303);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1925,20114,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (28581,41430,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=413;

-- ENTRY 414 (0x01FF0F02 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=414;
INSERT INTO creature_equip_template VALUES (5304,2184,1895,0);
UPDATE creature_template SET equipment_id=5304 WHERE equipment_id=414; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5304 WHERE equipment_id=414; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5304);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2184,7434,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1895,7488,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=414;

-- ENTRY 415 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=415;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=415;
UPDATE creature SET equipment_id=0 WHERE equipment_id=415;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=415);
DELETE FROM creature_equip_template_raw WHERE entry=415;

-- ENTRY 416 (0x01FF0702 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=416;
INSERT INTO creature_equip_template VALUES (5305,25879,0,0);
UPDATE creature_template SET equipment_id=5305 WHERE equipment_id=416; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5305 WHERE equipment_id=416; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5305);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (25879,37989,-1,7,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=416;

-- ENTRY 417 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=417;
INSERT INTO creature_equip_template VALUES (5306,3432,0,0);
UPDATE creature_template SET equipment_id=5306 WHERE equipment_id=417; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5306 WHERE equipment_id=417; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5306);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3432,7437,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=417;

-- ENTRY 418 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=418;
UPDATE creature_template SET equipment_id=5306 WHERE equipment_id=418;
UPDATE creature SET equipment_id=5306 WHERE equipment_id=418;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5306);
DELETE FROM creature_equip_template_raw WHERE entry=418;

-- ENTRY 419 (CURRENT HEX DATA IS VERY INCORRECT AND UDB HAS UPDATED INFORMATION - CURRENT DATA IS INTERPOLATED BASED ON EXISTING TBC-DB DATA)
DELETE FROM creature_equip_template WHERE entry=419;
INSERT INTO creature_equip_template VALUES (5307,3432,5259,0);
UPDATE creature_template SET equipment_id=5307 WHERE equipment_id=419; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5307 WHERE equipment_id=419; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5307);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3432,7437,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=419;

-- ENTRY 420 (0x01FF0E02 / 0x0015) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=420;
INSERT INTO creature_equip_template VALUES (5308,5956,24322,0);
UPDATE creature_template SET equipment_id=5308 WHERE equipment_id=420; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5308 WHERE equipment_id=420; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5308);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5956,8568,-1,14,2,0,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (24322,33307,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=420;

-- ENTRY 421/1083 (0x01FF0602 / 0x0211) CONVERT 1083 TO THIS TEMPLATE AND MERGE TOGETHER (DATA BASED ON UDB DATA AND RESEARCH)
DELETE FROM creature_equip_template WHERE entry in (421,1083);
INSERT INTO creature_equip_template VALUES (5309,12403,0,0);
UPDATE creature_template SET equipment_id=5309 WHERE equipment_id in (421,1083); -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5309 WHERE equipment_id in (421,1083); -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5309);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12403,22492,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry in (421,1083);

-- ENTRY 422 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=422;
INSERT INTO creature_equip_template VALUES (5310,2182,0,0);
UPDATE creature_template SET equipment_id=5310 WHERE equipment_id=422; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5310 WHERE equipment_id=422; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5310);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2182,7438,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=422;

-- ENTRY 423 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=423;
UPDATE creature_template SET equipment_id=5310 WHERE equipment_id=423;
UPDATE creature SET equipment_id=5310 WHERE equipment_id=423;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5310);
DELETE FROM creature_equip_template_raw WHERE entry=423;

-- ENTRY 424 (0x02FF0402 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=424;
INSERT INTO creature_equip_template VALUES (5311,2182,0,12523);
UPDATE creature_template SET equipment_id=5311 WHERE equipment_id=424; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5311 WHERE equipment_id=424; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5311);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2182,7438,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12523,20726,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=424;

-- ENTRY 425 (0x01FF0102 / 0x0111) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=425;
INSERT INTO creature_equip_template VALUES (5312,29651,0,13924);
UPDATE creature_template SET equipment_id=5312 WHERE equipment_id=425; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5312 WHERE equipment_id=425; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5312);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (29651,41315,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13924,24721,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=425;

-- ENTRY 426 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=426;
INSERT INTO creature_equip_template VALUES (5313,2182,1984,0);
UPDATE creature_template SET equipment_id=5313 WHERE equipment_id=426; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5313 WHERE equipment_id=426; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5313);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2182,7438,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=426;

-- ENTRY 427 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=427;
INSERT INTO creature_equip_template VALUES (5314,32731,32731,0);
UPDATE creature_template SET equipment_id=5314 WHERE equipment_id=427; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5314 WHERE equipment_id=427; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5314);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32731,36036,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=427;

-- ENTRY 428 (0x02FF0602 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=428;
INSERT INTO creature_equip_template VALUES (5315,32507,0,0);
UPDATE creature_template SET equipment_id=5315 WHERE equipment_id=428; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5315 WHERE equipment_id=428; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5315);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32507,45510,-1,6,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=428;

-- ENTRY 429 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=429;
INSERT INTO creature_equip_template VALUES (5316,1903,0,0);
UPDATE creature_template SET equipment_id=5316 WHERE equipment_id=429; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5316 WHERE equipment_id=429; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5316);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=429;

-- ENTRY 430 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=430;
UPDATE creature_template SET equipment_id=5316 WHERE equipment_id=430;
UPDATE creature SET equipment_id=5316 WHERE equipment_id=430;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5316);
DELETE FROM creature_equip_template_raw WHERE entry=430;

-- ENTRY 431/1738 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E) CONVERT 1738 TO THIS TEMPLATE AND MERGE TOGETHER
DELETE FROM creature_equip_template WHERE entry IN (431,1738);
INSERT INTO creature_equip_template VALUES (5317,1903,1984,0);
UPDATE creature_template SET equipment_id=5317 WHERE equipment_id IN (431,1738); -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5317 WHERE equipment_id IN (431,1738); -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5317);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry IN (431,1738);

-- ENTRY 432 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=432;
INSERT INTO creature_equip_template VALUES (5318,1903,1985,0);
UPDATE creature_template SET equipment_id=5318 WHERE equipment_id=432; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5318 WHERE equipment_id=432; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5318);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=432;

-- ENTRY 433 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=433;
INSERT INTO creature_equip_template VALUES (5319,30403,30403,0);
UPDATE creature_template SET equipment_id=5319 WHERE equipment_id=433; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5319 WHERE equipment_id=433; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5319);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (30403,41973,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=433;

-- ENTRY 434 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=434;
INSERT INTO creature_equip_template VALUES (5320,1903,2051,0);
UPDATE creature_template SET equipment_id=5320 WHERE equipment_id=434; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5320 WHERE equipment_id=434; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5320);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2051,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=434;

-- ENTRY 435 (0x02FF0402 / 0x030D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=435;
INSERT INTO creature_equip_template VALUES (5321,1903,2081,0);
UPDATE creature_template SET equipment_id=5321 WHERE equipment_id=435; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5321 WHERE equipment_id=435; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5321);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=435;

-- ENTRY 436 (BAD TBC-DB HEX DATA - INTERPOLATED AND CORRECTED DATA TO MATCH WHAT IT SHOULD BE - UDB HAS NO DATA)
DELETE FROM creature_equip_template WHERE entry=436;
INSERT INTO creature_equip_template VALUES (5322,1903,2552,0);
UPDATE creature_template SET equipment_id=5322 WHERE equipment_id=436; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5322 WHERE equipment_id=436; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5322);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=436;

-- ENTRY 437 (0x02FF0402 / 0x030D) and (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=437;
INSERT INTO creature_equip_template VALUES (5323,1903,1903,0);
UPDATE creature_template SET equipment_id=5323 WHERE equipment_id=437; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5323 WHERE equipment_id=437; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5323);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=437;

-- ENTRY 438 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=438;
INSERT INTO creature_equip_template VALUES (5324,32448,0,0);
UPDATE creature_template SET equipment_id=5324 WHERE equipment_id=438; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5324 WHERE equipment_id=438; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5324);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32448,44855,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=438;

-- ENTRY 439 (0x01FF0002 / 0x010D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=439;
INSERT INTO creature_equip_template VALUES (5325,32604,31468,0);
UPDATE creature_template SET equipment_id=5325 WHERE equipment_id=439; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5325 WHERE equipment_id=439; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5325);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32604,45073,-1,0,2,1,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (31468,44026,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=439;

-- ENTRY 440 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=440;
INSERT INTO creature_equip_template VALUES (5326,32603,0,0);
UPDATE creature_template SET equipment_id=5326 WHERE equipment_id=440; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5326 WHERE equipment_id=440; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5326);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32603,45069,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=440;

-- ENTRY 441 (0x01FF0A02 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=441;
INSERT INTO creature_equip_template VALUES (5327,32607,0,0);
UPDATE creature_template SET equipment_id=5327 WHERE equipment_id=441; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5327 WHERE equipment_id=441; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5327);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32607,45095,-1,10,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=441;

-- ENTRY 442 (0x01FF0702 / 0x010D) and (0x01FF0702 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=442;
INSERT INTO creature_equip_template VALUES (5328,32632,32633,0);
UPDATE creature_template SET equipment_id=5328 WHERE equipment_id=442; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5328 WHERE equipment_id=442; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5328);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32632,45150,-1,7,2,1,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32633,45146,-1,7,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=442;

-- ENTRY 443 (0x02FF0402 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=443;
INSERT INTO creature_equip_template VALUES (5329,1903,13611,0);
UPDATE creature_template SET equipment_id=5329 WHERE equipment_id=443; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5329 WHERE equipment_id=443; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5329);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13611,24295,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=443;

-- ENTRY 444 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=444;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=444;
UPDATE creature SET equipment_id=0 WHERE equipment_id=444;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5000);
DELETE FROM creature_equip_template_raw WHERE entry=444;

-- ENTRY 445 (0x02FF0402 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=445;
INSERT INTO creature_equip_template VALUES (5330,1903,13859,0);
UPDATE creature_template SET equipment_id=5330 WHERE equipment_id=445; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5330 WHERE equipment_id=445; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5330);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1903,7439,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13859,24596,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=445;

-- ENTRY 446 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=446;
INSERT INTO creature_equip_template VALUES (5331,1901,0,0);
UPDATE creature_template SET equipment_id=5331 WHERE equipment_id=446; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5331 WHERE equipment_id=446; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5331);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1901,7440,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=446;

-- ENTRY 447 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=447;
UPDATE creature_template SET equipment_id=5331 WHERE equipment_id=447;
UPDATE creature SET equipment_id=5331 WHERE equipment_id=447;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5331);
DELETE FROM creature_equip_template_raw WHERE entry=447;

-- ENTRY 448 (0x02FF0402 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=448;
INSERT INTO creature_equip_template VALUES (5332,1901,0,2552);
UPDATE creature_template SET equipment_id=5332 WHERE equipment_id=448; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5332 WHERE equipment_id=448; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5332);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1901,7440,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=448;

-- ENTRY 449 (0x01FF0A02 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=449;
INSERT INTO creature_equip_template VALUES (5333,32605,0,0);
UPDATE creature_template SET equipment_id=5333 WHERE equipment_id=449; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5333 WHERE equipment_id=449; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5333);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32605,45087,-1,10,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=449;

-- ENTRY 450 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=450;
INSERT INTO creature_equip_template VALUES (5334,32841,32841,0);
UPDATE creature_template SET equipment_id=5334 WHERE equipment_id=450; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5334 WHERE equipment_id=450; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5334);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32841,45493,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=450;

-- ENTRY 451 (0x02FF0402 / 0x030D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=451;
INSERT INTO creature_equip_template VALUES (5335,1901,12745,0);
UPDATE creature_template SET equipment_id=5335 WHERE equipment_id=451; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5335 WHERE equipment_id=451; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5335);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1901,7440,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12745,23172,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=451;

-- ENTRY 452 (0x02FF0402 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=452;
INSERT INTO creature_equip_template VALUES (5336,1901,13611,0);
UPDATE creature_template SET equipment_id=5336 WHERE equipment_id=452; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5336 WHERE equipment_id=452; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5336);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1901,7440,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13611,24295,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=452;

-- ENTRY 453 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=453;
INSERT INTO creature_equip_template VALUES (5337,1901,29637,0);
UPDATE creature_template SET equipment_id=5337 WHERE equipment_id=453; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5337 WHERE equipment_id=453; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5337);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1901,7440,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (29637,41301,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=453;

-- ENTRY 454 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=454;
INSERT INTO creature_equip_template VALUES (5338,1902,0,0);
UPDATE creature_template SET equipment_id=5338 WHERE equipment_id=454; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5338 WHERE equipment_id=454; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5338);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1902,7441,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=454;

-- ENTRY 455 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=455;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=455;
UPDATE creature SET equipment_id=0 WHERE equipment_id=455;
DELETE FROM creature_equip_template_raw WHERE entry=455;

-- ENTRY 456 (0x01FF0702 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=456;
INSERT INTO creature_equip_template VALUES (5339,32272,0,0);
UPDATE creature_template SET equipment_id=5339 WHERE equipment_id=456; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5339 WHERE equipment_id=456; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5339);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32272,44738,-1,7,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=456;

-- ENTRY 457 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=457;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=457;
UPDATE creature SET equipment_id=0 WHERE equipment_id=457;
DELETE FROM creature_equip_template_raw WHERE entry=457;

-- ENTRY 458 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=458;
INSERT INTO creature_equip_template VALUES (5340,2558,0,0);
UPDATE creature_template SET equipment_id=5340 WHERE equipment_id=458; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5340 WHERE equipment_id=458; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5340);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2558,7442,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=458;

-- ENTRY 459 (UNUSED OR DUPLICATE ENTRY - REMOVING) - SETTING EQUIP TO 0 BASED ON UDB DATA
DELETE FROM creature_equip_template WHERE entry=459;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=459;
UPDATE creature SET equipment_id=0 WHERE equipment_id=459;
DELETE FROM creature_equip_template_raw WHERE entry=459;

-- ENTRY 460 (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=460;
INSERT INTO creature_equip_template VALUES (5341,0,0,6886);
UPDATE creature_template SET equipment_id=5341 WHERE equipment_id=460; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5341 WHERE equipment_id=460; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5341);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6886,16752,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=460;

-- ENTRY 461 (0x01FF0102 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=461;
INSERT INTO creature_equip_template VALUES (5342,32875,0,0);
UPDATE creature_template SET equipment_id=5342 WHERE equipment_id=461; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5342 WHERE equipment_id=461; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5342);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32875,45526,-1,1,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=461;

-- ENTRY 462 (0x01FF0102 / 0x0111) and (0x01FF0202 / 0x010F)
DELETE FROM creature_equip_template WHERE entry=462;
INSERT INTO creature_equip_template VALUES (5343,32612,0,32613);
UPDATE creature_template SET equipment_id=5343 WHERE equipment_id=462; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5343 WHERE equipment_id=462; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5343);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32612,45110,-1,1,2,1,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32613,45111,-1,2,2,1,15);
DELETE FROM creature_equip_template_raw WHERE entry=462;

-- ENTRY 463 (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=463;
INSERT INTO creature_equip_template VALUES (5344,2197,0,0);
UPDATE creature_template SET equipment_id=5344 WHERE equipment_id=463; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5344 WHERE equipment_id=463; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5344);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2197,7443,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=463;

-- ENTRY 464 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=464;
UPDATE creature_template SET equipment_id=5344 WHERE equipment_id=464; 
UPDATE creature SET equipment_id=5344 WHERE equipment_id=464;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5344);
DELETE FROM creature_equip_template_raw WHERE entry=464;

-- ENTRY 465 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=465;
INSERT INTO creature_equip_template VALUES (5345,2197,13406,0);
UPDATE creature_template SET equipment_id=5345 WHERE equipment_id=465; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5345 WHERE equipment_id=465; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5345);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2197,7443,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13406,24116,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=465;

-- ENTRY 466 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=466;
INSERT INTO creature_equip_template VALUES (5346,3350,0,0);
UPDATE creature_template SET equipment_id=5346 WHERE equipment_id=466; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5346 WHERE equipment_id=466; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5346);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3350,7444,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=466;

-- ENTRY 467 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=467;
UPDATE creature_template SET equipment_id=5346 WHERE equipment_id=467;
UPDATE creature SET equipment_id=5346 WHERE equipment_id=467; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5346);
DELETE FROM creature_equip_template_raw WHERE entry=467;

-- ENTRY 468 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=468;
INSERT INTO creature_equip_template VALUES (5347,2717,0,0);
UPDATE creature_template SET equipment_id=5347 WHERE equipment_id=468; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5347 WHERE equipment_id=468; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5347);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2717,7445,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=468;

-- ENTRY 469 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=469;
UPDATE creature_template SET equipment_id=5347 WHERE equipment_id=469;
UPDATE creature SET equipment_id=5347 WHERE equipment_id=469;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5347);
DELETE FROM creature_equip_template_raw WHERE entry=469;

-- ENTRY 470 (0x01FF0E02 / 0x070D) and (0x02FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=470;
INSERT INTO creature_equip_template VALUES (5348,2717,3757,0);
UPDATE creature_template SET equipment_id=5348 WHERE equipment_id=470; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5348 WHERE equipment_id=470; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5348);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2717,7445,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3757,6530,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=470;

-- ENTRY 471 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=471;
INSERT INTO creature_equip_template VALUES (5349,32874,31468,0);
UPDATE creature_template SET equipment_id=5349 WHERE equipment_id=471; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5349 WHERE equipment_id=471; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5349);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32874,45518,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (31468,44026,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=471;

-- ENTRY 472 (0x01FF0E02 / 0x070D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=472;
INSERT INTO creature_equip_template VALUES (5350,2717,12860,0);
UPDATE creature_template SET equipment_id=5350 WHERE equipment_id=472; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5350 WHERE equipment_id=472; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5350);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2717,7445,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12860,23177,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=472;

-- ENTRY 473 (0x02FF0402 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=473;
INSERT INTO creature_equip_template VALUES (5351,2813,0,32876);
UPDATE creature_template SET equipment_id=5351 WHERE equipment_id=473; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5351 WHERE equipment_id=473; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5351);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2813,7478,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32876,45530,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=473;

-- ENTRY 474 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=474;
INSERT INTO creature_equip_template VALUES (5352,2716,0,0);
UPDATE creature_template SET equipment_id=5352 WHERE equipment_id=474; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5352 WHERE equipment_id=474; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5352);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2716,7446,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=474;

-- ENTRY 475 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=475;
UPDATE creature_template SET equipment_id=5352 WHERE equipment_id=475; 
UPDATE creature SET equipment_id=5352 WHERE equipment_id=475; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5352);
DELETE FROM creature_equip_template_raw WHERE entry=475;

-- ENTRY 476 (0x01FF0E02 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=476;
INSERT INTO creature_equip_template VALUES (5353,2716,3694,0);
UPDATE creature_template SET equipment_id=5353 WHERE equipment_id=476; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5353 WHERE equipment_id=476; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5353);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2716,7446,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3694,6534,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=476;

-- ENTRY 477 (0x01FF0E02 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=477;
INSERT INTO creature_equip_template VALUES (5354,2716,3695,0);
UPDATE creature_template SET equipment_id=5354 WHERE equipment_id=477; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5354 WHERE equipment_id=477; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5354);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2716,7446,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3695,6535,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=477;

-- ENTRY 478 (0x01FF0702 / 0x010D) and (0x01FF0702 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=478;
INSERT INTO creature_equip_template VALUES (5355,32615,32615,0);
UPDATE creature_template SET equipment_id=5355 WHERE equipment_id=478; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5355 WHERE equipment_id=478; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5355);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32615,45117,-1,7,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=478;

-- ENTRY 479 (0x01FF0E02 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=479;
INSERT INTO creature_equip_template VALUES (5356,2716,13609,0);
UPDATE creature_template SET equipment_id=5356 WHERE equipment_id=479; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5356 WHERE equipment_id=479; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5356);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2716,7446,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13609,24293,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=479;

-- ENTRY 480 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=480;
INSERT INTO creature_equip_template VALUES (5357,2710,0,0);
UPDATE creature_template SET equipment_id=5357 WHERE equipment_id=480; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5357 WHERE equipment_id=480; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5357);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2710,7447,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=480;

-- ENTRY 481 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=481;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=481; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=481; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=481);
DELETE FROM creature_equip_template_raw WHERE entry=481;

-- ENTRY 482 (0x02FF0E02 / 0x020D)
DELETE FROM creature_equip_template WHERE entry=482;
INSERT INTO creature_equip_template VALUES (5358,3362,0,0);
UPDATE creature_template SET equipment_id=5358 WHERE equipment_id=482; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5358 WHERE equipment_id=482; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5358);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3362,7449,-1,14,2,2,13);
DELETE FROM creature_equip_template_raw WHERE entry=482;

-- ENTRY 483 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=483;
UPDATE creature_template SET equipment_id=5358 WHERE equipment_id=483;
UPDATE creature SET equipment_id=5358 WHERE equipment_id=483; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5358);
DELETE FROM creature_equip_template_raw WHERE entry=483;

-- ENTRY 484 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=484;
INSERT INTO creature_equip_template VALUES (5359,32614,0,0);
UPDATE creature_template SET equipment_id=5359 WHERE equipment_id=484; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5359 WHERE equipment_id=484; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5359);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32614,45118,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=484;

-- ENTRY 485 (0x02FF0E02 / 0x020D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=485;
INSERT INTO creature_equip_template VALUES (5360,3362,13406,0);
UPDATE creature_template SET equipment_id=5360 WHERE equipment_id=485; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5360 WHERE equipment_id=485; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5360);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3362,7449,-1,14,2,2,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13406,24116,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=485;

-- ENTRY 486 (0x02FF0E02 / 0x020D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=486;
INSERT INTO creature_equip_template VALUES (5361,3362,13604,0);
UPDATE creature_template SET equipment_id=5361 WHERE equipment_id=486; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5361 WHERE equipment_id=486; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5361);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3362,7449,-1,14,2,2,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13604,24281,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=486;

-- ENTRY 487 (0x02FF0402 / 0x020D)
DELETE FROM creature_equip_template WHERE entry=487;
INSERT INTO creature_equip_template VALUES (5362,1117,0,0);
UPDATE creature_template SET equipment_id=5362 WHERE equipment_id=487; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5362 WHERE equipment_id=487; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5362);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1117,7453,-1,4,2,2,13);
DELETE FROM creature_equip_template_raw WHERE entry=487;

-- ENTRY 488 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=488;
UPDATE creature_template SET equipment_id=5362 WHERE equipment_id=488; 
UPDATE creature SET equipment_id=5362 WHERE equipment_id=488; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5362);
DELETE FROM creature_equip_template_raw WHERE entry=488;

-- ENTRY 489 (0x0 / 0x0) and (0x0 / 0x0) - OLD HEX DATA WAS BAD (FILLED IN WITH PROPER DATA)
DELETE FROM creature_equip_template WHERE entry=489;
INSERT INTO creature_equip_template VALUES (5363,1117,2552,0);
UPDATE creature_template SET equipment_id=5363 WHERE equipment_id=489; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5363 WHERE equipment_id=489; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5363);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1117,7453,-1,4,2,2,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=489;

-- ENTRY 490 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=490;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=490; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=490; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
DELETE FROM creature_equip_template_raw WHERE entry=490;

-- ENTRY 491 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=491;
INSERT INTO creature_equip_template VALUES (5364,2709,0,0);
UPDATE creature_template SET equipment_id=5364 WHERE equipment_id=491; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5364 WHERE equipment_id=491; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5364);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2709,7455,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=491;

-- ENTRY 492 (0x01FF0402 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=492;
INSERT INTO creature_equip_template VALUES (5365,32611,0,0);
UPDATE creature_template SET equipment_id=5365 WHERE equipment_id=492; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5365 WHERE equipment_id=492; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5365);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32611,45396,-1,4,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=492;

-- ENTRY 493 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=493;
INSERT INTO creature_equip_template VALUES (5366,2707,0,0);
UPDATE creature_template SET equipment_id=5366 WHERE equipment_id=493; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5366 WHERE equipment_id=493; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5366);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2707,7456,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=493;

-- ENTRY 494 (0x01FF0D02 / 0x0715)
DELETE FROM creature_equip_template WHERE entry=494;
INSERT INTO creature_equip_template VALUES (5367,32477,0,0);
UPDATE creature_template SET equipment_id=5367 WHERE equipment_id=494; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5367 WHERE equipment_id=494; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5367);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32477,34296,-1,13,2,7,21);
DELETE FROM creature_equip_template_raw WHERE entry=494;

-- ENTRY 495 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=495;
INSERT INTO creature_equip_template VALUES (5368,2707,3697,0);
UPDATE creature_template SET equipment_id=5368 WHERE equipment_id=495; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5368 WHERE equipment_id=495; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5368);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2707,7456,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3697,6531,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=495;

-- ENTRY 496 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=496;
INSERT INTO creature_equip_template VALUES (5369,2707,3694,0);
UPDATE creature_template SET equipment_id=5369 WHERE equipment_id=496; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5369 WHERE equipment_id=496; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5369);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2707,7456,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3694,6534,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=496;

-- ENTRY 497 (0x01FF0D02 / 0x010D) and (0x01FF0D02 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=497;
INSERT INTO creature_equip_template VALUES (5370,32878,32877,0);
UPDATE creature_template SET equipment_id=5370 WHERE equipment_id=497; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5370 WHERE equipment_id=497; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5370);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32878,45549,-1,13,2,1,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32877,45585,-1,13,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=497;

-- ENTRY 498 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=498;
INSERT INTO creature_equip_template VALUES (5371,2718,0,0);
UPDATE creature_template SET equipment_id=5371 WHERE equipment_id=498; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5371 WHERE equipment_id=498; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5371);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2718,7457,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=498;

-- ENTRY 499 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=499;
UPDATE creature_template SET equipment_id=5371 WHERE equipment_id=499;
UPDATE creature SET equipment_id=5371 WHERE equipment_id=499;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5371);
DELETE FROM creature_equip_template_raw WHERE entry=499;

-- ENTRY 500 (0x02FF0E02 / 0x020D)
DELETE FROM creature_equip_template WHERE entry=500;
INSERT INTO creature_equip_template VALUES (5372,3368,0,0);
UPDATE creature_template SET equipment_id=5372 WHERE equipment_id=500; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5372 WHERE equipment_id=500; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5372);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3368,7459,-1,14,2,2,13);
DELETE FROM creature_equip_template_raw WHERE entry=500;

-- ENTRY 501 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=501;
UPDATE creature_template SET equipment_id=5372 WHERE equipment_id=501; 
UPDATE creature SET equipment_id=5372 WHERE equipment_id=501; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5372);
DELETE FROM creature_equip_template_raw WHERE entry=501;

-- ENTRY 502 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=502;
INSERT INTO creature_equip_template VALUES (5373,2715,0,0);
UPDATE creature_template SET equipment_id=5373 WHERE equipment_id=502; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5373 WHERE equipment_id=502; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5373);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2715,7460,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=502;

-- ENTRY 503 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=503;
UPDATE creature_template SET equipment_id=5373 WHERE equipment_id=503; 
UPDATE creature SET equipment_id=5373 WHERE equipment_id=503; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5373);
DELETE FROM creature_equip_template_raw WHERE entry=503;

-- ENTRY 504 (0x01FF0E02 / 0x070D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=504;
INSERT INTO creature_equip_template VALUES (5374,2715,143,0);
UPDATE creature_template SET equipment_id=5374 WHERE equipment_id=504; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5374 WHERE equipment_id=504; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5374);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2715,7460,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=504;

-- ENTRY 505 (0x01FF0002 / 0x010D) and (0x01FF0002 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=505;
INSERT INTO creature_equip_template VALUES (5375,32887,32887,0);
UPDATE creature_template SET equipment_id=5375 WHERE equipment_id=505; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5375 WHERE equipment_id=505; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5375);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32887,45564,-1,0,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=505;

-- ENTRY 506 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=506;
INSERT INTO creature_equip_template VALUES (5376,32886,32885,0);
UPDATE creature_template SET equipment_id=5376 WHERE equipment_id=506; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5376 WHERE equipment_id=506; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5376);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32886,45560,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32885,45559,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=506;

-- ENTRY 507 (0x01FF0E02 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=507;
INSERT INTO creature_equip_template VALUES (5377,2715,13605,0);
UPDATE creature_template SET equipment_id=5377 WHERE equipment_id=507; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5377 WHERE equipment_id=507; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5377);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2715,7460,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13605,24282,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=507;

-- ENTRY 508 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=508;
INSERT INTO creature_equip_template VALUES (5378,2714,0,0);
UPDATE creature_template SET equipment_id=5378 WHERE equipment_id=508; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5378 WHERE equipment_id=508; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5378);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2714,7461,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=508;

-- ENTRY 509 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=509;
UPDATE creature_template SET equipment_id=5378 WHERE equipment_id=509; 
UPDATE creature SET equipment_id=5378 WHERE equipment_id=509; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5378);
DELETE FROM creature_equip_template_raw WHERE entry=509;

-- ENTRY 510 (0x01FF0E02 / 0x070D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=510;
INSERT INTO creature_equip_template VALUES (5379,2714,0,5259);
UPDATE creature_template SET equipment_id=5379 WHERE equipment_id=510; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5379 WHERE equipment_id=510; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5379);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2714,7461,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5259,6232,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=510;

-- ENTRY 511 (0x01FF0A02 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=511;
INSERT INTO creature_equip_template VALUES (5380,32884,0,0);
UPDATE creature_template SET equipment_id=5380 WHERE equipment_id=511; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5380 WHERE equipment_id=511; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5380);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32884,45557,-1,10,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=511;

-- ENTRY 512 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=512;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=512; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=512; 
DELETE FROM creature_equip_template_raw WHERE entry=512;

-- ENTRY 513 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=513;
INSERT INTO creature_equip_template VALUES (5381,32879,0,0);
UPDATE creature_template SET equipment_id=5381 WHERE equipment_id=513; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5381 WHERE equipment_id=513; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5381);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32879,45544,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=513;

-- ENTRY 514 (0x01FF0702 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=514;
INSERT INTO creature_equip_template VALUES (5382,32874,0,32876);
UPDATE creature_template SET equipment_id=5382 WHERE equipment_id=514; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5382 WHERE equipment_id=514; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5382);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32874,45518,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32876,45530,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=514;

-- ENTRY 515 (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=515;
INSERT INTO creature_equip_template VALUES (5383,2196,0,0);
UPDATE creature_template SET equipment_id=5383 WHERE equipment_id=515; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5383 WHERE equipment_id=515; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5383);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2196,7462,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=515;

-- ENTRY 516 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=516;
UPDATE creature_template SET equipment_id=5383 WHERE equipment_id=516; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5383 WHERE equipment_id=516; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5383);
DELETE FROM creature_equip_template_raw WHERE entry=516;

-- ENTRY 517 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=517;
INSERT INTO creature_equip_template VALUES (5384,29710,0,32730);
UPDATE creature_template SET equipment_id=5384 WHERE equipment_id=517; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5384 WHERE equipment_id=517; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5384);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (29710,41356,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32730,45393,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=517;

-- ENTRY 518 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=518;
INSERT INTO creature_equip_template VALUES (5385,31669,31669,0);
UPDATE creature_template SET equipment_id=5385 WHERE equipment_id=518; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5385 WHERE equipment_id=518; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5385);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (31669,44289,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=518;

-- ENTRY 519 (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=519;
INSERT INTO creature_equip_template VALUES (5386,2202,0,0);
UPDATE creature_template SET equipment_id=5386 WHERE equipment_id=519; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5386 WHERE equipment_id=519; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5386);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2202,7463,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=519;

-- ENTRY 520 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=520;
UPDATE creature_template SET equipment_id=5386 WHERE equipment_id=520; 
UPDATE creature SET equipment_id=5386 WHERE equipment_id=520; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5386);
DELETE FROM creature_equip_template_raw WHERE entry=520;

-- ENTRY 521 (0x02FF0402 / 0x070D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=521;
INSERT INTO creature_equip_template VALUES (5387,2202,0,2550);
UPDATE creature_template SET equipment_id=5387 WHERE equipment_id=521; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5387 WHERE equipment_id=521; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5387);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2202,7463,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=521;

-- ENTRY 522 (0x01FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=522;
INSERT INTO creature_equip_template VALUES (5388,32892,32891,0);
UPDATE creature_template SET equipment_id=5388 WHERE equipment_id=522; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5388 WHERE equipment_id=522; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5388);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32892,45579,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32891,45580,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=522;

-- ENTRY 523 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=523;
INSERT INTO creature_equip_template VALUES (5389,3367,0,0);
UPDATE creature_template SET equipment_id=5389 WHERE equipment_id=523; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5389 WHERE equipment_id=523; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5389);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3367,7464,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=523;

-- ENTRY 524 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=524;
UPDATE creature_template SET equipment_id=5389 WHERE equipment_id=524; 
UPDATE creature SET equipment_id=5389 WHERE equipment_id=524; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5389);
DELETE FROM creature_equip_template_raw WHERE entry=524;

-- ENTRY 525 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=525;
UPDATE creature_template SET equipment_id=5389 WHERE equipment_id=525; 
UPDATE creature SET equipment_id=5389 WHERE equipment_id=525; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5389);
DELETE FROM creature_equip_template_raw WHERE entry=525;

-- ENTRY 526 (0x01FF0602 / 0x0211) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=526;
INSERT INTO creature_equip_template VALUES (5390,3367,0,2550);
UPDATE creature_template SET equipment_id=5390 WHERE equipment_id=526; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5390 WHERE equipment_id=526; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5390);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3367,7464,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=526;

-- ENTRY 527 (0x01FF0A02 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=527;
INSERT INTO creature_equip_template VALUES (5391,32893,0,0);
UPDATE creature_template SET equipment_id=5391 WHERE equipment_id=527; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5391 WHERE equipment_id=527; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5391);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32893,45595,-1,10,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=527;

-- ENTRY 528 (0x01FF0702 / 0x010D) and (0x01FF0702 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=528;
INSERT INTO creature_equip_template VALUES (5392,32889,32889,0);
UPDATE creature_template SET equipment_id=5392 WHERE equipment_id=528; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5392 WHERE equipment_id=528; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5392);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32889,45568,-1,7,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=528;

-- ENTRY 529 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=529;
INSERT INTO creature_equip_template VALUES (5393,2198,0,0);
UPDATE creature_template SET equipment_id=5393 WHERE equipment_id=529; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5393 WHERE equipment_id=529; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5393);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2198,7465,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=529;

-- ENTRY 530 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=530;
UPDATE creature_template SET equipment_id=5393 WHERE equipment_id=530; 
UPDATE creature SET equipment_id=5393 WHERE equipment_id=530; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5393);
DELETE FROM creature_equip_template_raw WHERE entry=530;

-- ENTRY 531 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=531;
INSERT INTO creature_equip_template VALUES (5394,32894,32894,0);
UPDATE creature_template SET equipment_id=5394 WHERE equipment_id=531; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5394 WHERE equipment_id=531; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5394);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (32894,45594,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=531;

-- ENTRY 532 (0x02FF0402 / 0x070D) and (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=532;
INSERT INTO creature_equip_template VALUES (5395,1911,1911,0);
UPDATE creature_template SET equipment_id=5395 WHERE equipment_id=532; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5395 WHERE equipment_id=532; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5395);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=532;

-- ENTRY 533 (0x01FF0702 / 0x0315) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=533;
INSERT INTO creature_equip_template VALUES (5396,34596,34590,0);
UPDATE creature_template SET equipment_id=5396 WHERE equipment_id=533; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5396 WHERE equipment_id=533; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5396);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34596,47923,-1,7,2,3,21);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34590,47911,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=533;

-- ENTRY 534 (0x01FF0702 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=534;
INSERT INTO creature_equip_template VALUES (5397,34880,0,0);
UPDATE creature_template SET equipment_id=5397 WHERE equipment_id=534; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5397 WHERE equipment_id=534; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5397);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34880,48402,-1,7,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=534;

-- ENTRY 535 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=535;
INSERT INTO creature_equip_template VALUES (5398,34882,0,0);
UPDATE creature_template SET equipment_id=5398 WHERE equipment_id=535; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5398 WHERE equipment_id=535; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5398);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34882,48404,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=535;

-- ENTRY 536 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=536;
INSERT INTO creature_equip_template VALUES (5399,2200,0,0);
UPDATE creature_template SET equipment_id=5399 WHERE equipment_id=536; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5399 WHERE equipment_id=536; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5399);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2200,7466,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=536;

-- ENTRY 537 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=4;
UPDATE creature_template SET equipment_id=5399 WHERE equipment_id=537; 
UPDATE creature SET equipment_id=5399 WHERE equipment_id=537; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5399);
DELETE FROM creature_equip_template_raw WHERE entry=537;

-- ENTRY 538 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=538;
INSERT INTO creature_equip_template VALUES (5400,2200,3698,0);
UPDATE creature_template SET equipment_id=5400 WHERE equipment_id=538; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5400 WHERE equipment_id=538; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5400);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2200,7466,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3698,6532,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=538;

-- ENTRY 539 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=539;
INSERT INTO creature_equip_template VALUES (5401,2200,12870,0);
UPDATE creature_template SET equipment_id=5401 WHERE equipment_id=539; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5401 WHERE equipment_id=539; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5401);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2200,7466,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12870,6533,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=539;

-- ENTRY 540 (0x01FF0002 / 0x010D) and (0x01FF0002 / 0x010D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=540;
INSERT INTO creature_equip_template VALUES (5402,35463,35463,34280);
UPDATE creature_template SET equipment_id=5402 WHERE equipment_id=540; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5402 WHERE equipment_id=540; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5402);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (35463,48806,-1,0,2,1,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34280,45469,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=540;

-- ENTRY 541 (0x01FF0802 / 0x0311)
DELETE FROM creature_equip_template WHERE entry=541;
INSERT INTO creature_equip_template VALUES (5403,34311,0,0);
UPDATE creature_template SET equipment_id=5403 WHERE equipment_id=541; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5403 WHERE equipment_id=541; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5403);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34311,47676,-1,8,2,3,17);
DELETE FROM creature_equip_template_raw WHERE entry=541;

-- ENTRY 542 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=542;
INSERT INTO creature_equip_template VALUES (5404,2200,3695,0);
UPDATE creature_template SET equipment_id=5404 WHERE equipment_id=542; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5404 WHERE equipment_id=542; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5404);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2200,7466,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3695,6535,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=542;

-- ENTRY 543 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=543;
UPDATE creature_template SET equipment_id=5404 WHERE equipment_id=543; 
UPDATE creature SET equipment_id=5404 WHERE equipment_id=543; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5404);
DELETE FROM creature_equip_template_raw WHERE entry=543;

-- ENTRY 544 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=544;
INSERT INTO creature_equip_template VALUES (5405,34884,0,0);
UPDATE creature_template SET equipment_id=5405 WHERE equipment_id=544; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5405 WHERE equipment_id=544; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5405);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34884,48406,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=544;

-- ENTRY 545 (0x01FF0E02 / 0x000D) and (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=545;
INSERT INTO creature_equip_template VALUES (5406,2200,2201,0);
UPDATE creature_template SET equipment_id=5406 WHERE equipment_id=545; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5406 WHERE equipment_id=545; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5406);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2200,7466,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2201,7473,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=545;

-- ENTRY 546 (0x02FF0402 / 0x0315)
DELETE FROM creature_equip_template WHERE entry=546;
INSERT INTO creature_equip_template VALUES (5407,34885,0,0);
UPDATE creature_template SET equipment_id=5407 WHERE equipment_id=546; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5407 WHERE equipment_id=546; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5407);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34885,48407,-1,4,2,3,21);
DELETE FROM creature_equip_template_raw WHERE entry=546;

-- ENTRY 547 (0x02FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=547;
INSERT INTO creature_equip_template VALUES (5408,3699,0,0);
UPDATE creature_template SET equipment_id=5408 WHERE equipment_id=547; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5408 WHERE equipment_id=547; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5408);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3699,7467,-1,13,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=547;

-- ENTRY 548 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=548;
UPDATE creature_template SET equipment_id=5408 WHERE equipment_id=548; 
UPDATE creature SET equipment_id=5408 WHERE equipment_id=548; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5408);
DELETE FROM creature_equip_template_raw WHERE entry=548;

-- ENTRY 549 (0x02FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=549;
INSERT INTO creature_equip_template VALUES (5409,3699,3697,0);
UPDATE creature_template SET equipment_id=5409 WHERE equipment_id=549; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5409 WHERE equipment_id=549; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5409);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3699,7467,-1,13,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3697,6531,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=549;

-- ENTRY 550 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=550;
UPDATE creature_template SET equipment_id=5409 WHERE equipment_id=550; 
UPDATE creature SET equipment_id=5409 WHERE equipment_id=550; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5409);
DELETE FROM creature_equip_template_raw WHERE entry=550;

-- ENTRY 551 (0x01FF0702 / 0x010D) and (0x01FF0702 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=551;
INSERT INTO creature_equip_template VALUES (5410,34886,34886,0);
UPDATE creature_template SET equipment_id=5410 WHERE equipment_id=551; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5410 WHERE equipment_id=551; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5410);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (34886,48408,-1,7,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=551;

-- ENTRY 552 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=552;
INSERT INTO creature_equip_template VALUES (5411,35236,0,0);
UPDATE creature_template SET equipment_id=5411 WHERE equipment_id=552; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5411 WHERE equipment_id=552; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5411);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (35236,48680,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=552;

-- ENTRY 553 (0x02FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=553;
INSERT INTO creature_equip_template VALUES (5412,3699,13341,0);
UPDATE creature_template SET equipment_id=5412 WHERE equipment_id=553; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5412 WHERE equipment_id=553; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5412);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3699,7467,-1,13,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13341,6536,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=553;

-- ENTRY 554 (0x01FF0F02 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=554;
INSERT INTO creature_equip_template VALUES (5413,5285,0,13147);
UPDATE creature_template SET equipment_id=5413 WHERE equipment_id=554; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5413 WHERE equipment_id=554; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5413);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5285,6469,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13147,23639,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=554;

-- ENTRY 555 (0x02FF0E02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=555;
INSERT INTO creature_equip_template VALUES (5414,3351,0,0);
UPDATE creature_template SET equipment_id=5414 WHERE equipment_id=555; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5414 WHERE equipment_id=555; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5414);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3351,7468,-1,14,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=555;

-- ENTRY 556 (Entry Does Not Exist)
-- ENTRY 557 (Entry Does Not Exist)
-- ENTRY 558 (Entry Does Not Exist)

-- ENTRY 559 (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=559;
INSERT INTO creature_equip_template VALUES (5415,4993,0,0);
UPDATE creature_template SET equipment_id=5415 WHERE equipment_id=559; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5415 WHERE equipment_id=559; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5415);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (4993,7469,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=559;

-- ENTRY 560 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=560;
UPDATE creature_template SET equipment_id=5415 WHERE equipment_id=560; 
UPDATE creature SET equipment_id=5415 WHERE equipment_id=560; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5415);
DELETE FROM creature_equip_template_raw WHERE entry=560;

-- ENTRY 561 (Entry Does Not Exist)

-- ENTRY 562 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=562;
INSERT INTO creature_equip_template VALUES (5416,2201,3698,0);
UPDATE creature_template SET equipment_id=5416 WHERE equipment_id=562; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5416 WHERE equipment_id=562; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5416);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2201,7473,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3698,6532,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=562;

-- ENTRY 563 (Entry Does Not Exist)

-- ENTRY 564 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=564;
INSERT INTO creature_equip_template VALUES (5417,2199,0,0);
UPDATE creature_template SET equipment_id=5417 WHERE equipment_id=564; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5417 WHERE equipment_id=564; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5417);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2199,7474,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=564;

-- ENTRY 565 (Entry Does Not Exist)

-- ENTRY 566 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=566;
INSERT INTO creature_equip_template VALUES (5418,2199,3694,0);
UPDATE creature_template SET equipment_id=5418 WHERE equipment_id=566; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5418 WHERE equipment_id=566; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5418);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2199,7474,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3694,6534,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=566;

-- ENTRY 567 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=567;
UPDATE creature_template SET equipment_id=5418 WHERE equipment_id=567; 
UPDATE creature SET equipment_id=5418 WHERE equipment_id=567; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5418);
DELETE FROM creature_equip_template_raw WHERE entry=567;

-- ENTRY 568 (Entry Does Not Exist)

-- ENTRY 569 (0x01FF0E02 / 0x000D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=569;
INSERT INTO creature_equip_template VALUES (5419,2199,13341,0);
UPDATE creature_template SET equipment_id=5419 WHERE equipment_id=569; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5419 WHERE equipment_id=569; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5419);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2199,7474,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13341,6536,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=569;

-- ENTRY 570 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=570;
UPDATE creature_template SET equipment_id=5419 WHERE equipment_id=570; 
UPDATE creature SET equipment_id=5419 WHERE equipment_id=570; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5419);
DELETE FROM creature_equip_template_raw WHERE entry=570;

-- ENTRY 571 (0x01FF0E02 / 0x000D) and (0x01FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=571;
INSERT INTO creature_equip_template VALUES (5420,2199,12851,0);
UPDATE creature_template SET equipment_id=5420 WHERE equipment_id=571; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5420 WHERE equipment_id=571; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5420);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2199,7474,-1,14,2,0,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12851,23316,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=571;

-- ENTRY 572 (0x02FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=572;
INSERT INTO creature_equip_template VALUES (5421,3696,0,0);
UPDATE creature_template SET equipment_id=5421 WHERE equipment_id=572; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5421 WHERE equipment_id=572; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5421);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3696,7475,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=572;

-- ENTRY 573 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=573;
UPDATE creature_template SET equipment_id=5421 WHERE equipment_id=573; 
UPDATE creature SET equipment_id=5421 WHERE equipment_id=573; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5421);
DELETE FROM creature_equip_template_raw WHERE entry=573;

-- ENTRY 574 (Entry Does Not Exist)

-- ENTRY 575 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=575;
INSERT INTO creature_equip_template VALUES (5422,2809,0,0);
UPDATE creature_template SET equipment_id=5422 WHERE equipment_id=575; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5422 WHERE equipment_id=575; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5422);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2809,7476,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=575;

-- ENTRY 576 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=576;
UPDATE creature_template SET equipment_id=5422 WHERE equipment_id=576; 
UPDATE creature SET equipment_id=5422 WHERE equipment_id=576; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5422);
DELETE FROM creature_equip_template_raw WHERE entry=576;

-- ENTRY 577 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=577;
INSERT INTO creature_equip_template VALUES (5423,2809,1957,0);
UPDATE creature_template SET equipment_id=5423 WHERE equipment_id=577; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5423 WHERE equipment_id=577; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5423);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2809,7476,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=577;

-- ENTRY 578 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=578;
UPDATE creature_template SET equipment_id=5423 WHERE equipment_id=578; 
UPDATE creature SET equipment_id=5423 WHERE equipment_id=578; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5423);
DELETE FROM creature_equip_template_raw WHERE entry=578;

-- ENTRY 579 (Entry Does Not Exist)

-- ENTRY 580 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=580;
INSERT INTO creature_equip_template VALUES (5424,2809,1985,0);
UPDATE creature_template SET equipment_id=5424 WHERE equipment_id=580; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5424 WHERE equipment_id=580; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5424);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2809,7476,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=580;

-- ENTRY 581 (Entry Does Not Exist)
-- ENTRY 582 (Entry Does Not Exist)

-- ENTRY 583 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=583;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=583; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=583; 
DELETE FROM creature_equip_template_raw WHERE entry=583;

-- ENTRY 584 (Entry Does Not Exist)
-- ENTRY 585 (Entry Does Not Exist)

-- ENTRY 586 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=586;
INSERT INTO creature_equip_template VALUES (5425,3361,0,0);
UPDATE creature_template SET equipment_id=5425 WHERE equipment_id=586; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5425 WHERE equipment_id=586; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5425);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=586;

-- ENTRY 587 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=587;
UPDATE creature_template SET equipment_id=5425 WHERE equipment_id=587; 
UPDATE creature SET equipment_id=5425 WHERE equipment_id=587; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5425);
DELETE FROM creature_equip_template_raw WHERE entry=587;

-- ENTRY 588 (0x02FF0402 / 0x030D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=588;
INSERT INTO creature_equip_template VALUES (5426,3361,0,2552);
UPDATE creature_template SET equipment_id=5426 WHERE equipment_id=588; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5426 WHERE equipment_id=588; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5426);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=588;

-- ENTRY 589 (Entry Does Not Exist)
-- ENTRY 590 (Entry Does Not Exist)

-- ENTRY 591 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=591;
INSERT INTO creature_equip_template VALUES (5427,3361,1984,0);
UPDATE creature_template SET equipment_id=5427 WHERE equipment_id=591; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5427 WHERE equipment_id=591; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5427);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=591;

-- ENTRY 592 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=592;
UPDATE creature_template SET equipment_id=5427 WHERE equipment_id=592; 
UPDATE creature SET equipment_id=5427 WHERE equipment_id=592; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5427);
DELETE FROM creature_equip_template_raw WHERE entry=592;

-- ENTRY 593 (Entry Does Not Exist)

-- ENTRY 594 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=594;
INSERT INTO creature_equip_template VALUES (5428,3361,2052,0);
UPDATE creature_template SET equipment_id=5428 WHERE equipment_id=594; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5428 WHERE equipment_id=594; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5428);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=594;

-- ENTRY 595 (Entry Does Not Exist)

-- ENTRY 596 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=596;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=596; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=596; 
DELETE FROM creature_equip_template_raw WHERE entry=596;

-- ENTRY 597 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=597;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=597; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=597; 
DELETE FROM creature_equip_template_raw WHERE entry=597;

-- ENTRY 598 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=598;
UPDATE creature_template SET equipment_id=5426 WHERE equipment_id=598; 
UPDATE creature SET equipment_id=5426 WHERE equipment_id=598; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5426);
DELETE FROM creature_equip_template_raw WHERE entry=598;

-- ENTRY 599 (0x02FF0402 / 0x030D) and (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=599;
INSERT INTO creature_equip_template VALUES (5429,3361,3361,0);
UPDATE creature_template SET equipment_id=5429 WHERE equipment_id=599; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5429 WHERE equipment_id=599; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5429);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=599;

-- ENTRY 600 (Entry Does Not Exist)
-- ENTRY 601 (Entry Does Not Exist)
-- ENTRY 602 (Entry Does Not Exist)

-- ENTRY 603 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=603;
INSERT INTO creature_equip_template VALUES (5430,3361,13628,0);
UPDATE creature_template SET equipment_id=5430 WHERE equipment_id=603; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5430 WHERE equipment_id=603; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5430);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3361,7477,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13628,24367,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=603;

-- ENTRY 604 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=604;
INSERT INTO creature_equip_template VALUES (5431,2813,0,0);
UPDATE creature_template SET equipment_id=5431 WHERE equipment_id=604; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5431 WHERE equipment_id=604; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5431);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2813,7478,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=604;

-- ENTRY 605 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=605;
UPDATE creature_template SET equipment_id=5431 WHERE equipment_id=605; 
UPDATE creature SET equipment_id=5431 WHERE equipment_id=605;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5431);
DELETE FROM creature_equip_template_raw WHERE entry=605;

-- ENTRY 606 (0x02FF0402 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=606;
INSERT INTO creature_equip_template VALUES (5432,2813,0,2551);
UPDATE creature_template SET equipment_id=5432 WHERE equipment_id=606; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5432 WHERE equipment_id=606; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5432);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2813,7478,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,12,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=606;

-- ENTRY 607 (Entry Does Not Exist)
-- ENTRY 608 (Entry Does Not Exist)

-- ENTRY 609 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=609;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=609; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=609; 
DELETE FROM creature_equip_template_raw WHERE entry=609;

-- ENTRY 610 (BAD TBC-DB HEX DATA - CONFIRMED CORRECT DATA WITH UDB)
DELETE FROM creature_equip_template WHERE entry=4;
INSERT INTO creature_equip_template VALUES (5433,2810,0,0);
UPDATE creature_template SET equipment_id=5433 WHERE equipment_id=610; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5433 WHERE equipment_id=610; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5433);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2810,7479,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=610;

-- ENTRY 611 (Entry Does Not Exist)

-- ENTRY 612 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=612;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=612; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=612; 
DELETE FROM creature_equip_template_raw WHERE entry=612;

-- ENTRY 613 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=613;
INSERT INTO creature_equip_template VALUES (5434,3433,0,0);
UPDATE creature_template SET equipment_id=5434 WHERE equipment_id=613; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5434 WHERE equipment_id=613; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5434);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3433,7480,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=613;

-- ENTRY 614 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=614;
UPDATE creature_template SET equipment_id=5434 WHERE equipment_id=614; 
UPDATE creature SET equipment_id=5434 WHERE equipment_id=614; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5434);
DELETE FROM creature_equip_template_raw WHERE entry=614;

-- ENTRY 615 (Entry Does Not Exist)
-- ENTRY 616 (Entry Does Not Exist)

-- ENTRY 617 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=617;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=617; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=617; 
DELETE FROM creature_equip_template_raw WHERE entry=617;

-- ENTRY 618 (BAD TBC-DB HEX DATA)
DELETE FROM creature_equip_template WHERE entry=618;
INSERT INTO creature_equip_template VALUES (5435,3433,5870,0);
UPDATE creature_template SET equipment_id=5435 WHERE equipment_id=618; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5435 WHERE equipment_id=618; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5435);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3433,7480,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=618;

-- ENTRY 619 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=619;
INSERT INTO creature_equip_template VALUES (5436,2023,0,0);
UPDATE creature_template SET equipment_id=5436 WHERE equipment_id=619; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5436 WHERE equipment_id=619; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5436);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2023,7481,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=619;

-- ENTRY 620 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=620;
UPDATE creature_template SET equipment_id=5436 WHERE equipment_id=620; 
UPDATE creature SET equipment_id=5436 WHERE equipment_id=620; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5436);
DELETE FROM creature_equip_template_raw WHERE entry=620;

-- ENTRY 621 (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=621;
INSERT INTO creature_equip_template VALUES (5437,2023,0,5260);
UPDATE creature_template SET equipment_id=5437 WHERE equipment_id=621; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5437 WHERE equipment_id=621; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5437);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2023,7481,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=621;

-- ENTRY 622 (Entry Does Not Exist)
-- ENTRY 623 (Entry Does Not Exist)
-- ENTRY 624 (Entry Does Not Exist)

-- ENTRY 625 (BAD TBC-DB HEX DATA)
DELETE FROM creature_equip_template WHERE entry=625;
INSERT INTO creature_equip_template VALUES (5438,2023,2552,0);
UPDATE creature_template SET equipment_id=5438 WHERE equipment_id=625; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5438 WHERE equipment_id=625; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5438);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2023,7481,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=625;

-- ENTRY 626 (UNUSED OR DUPLICATE ENTRY - REMOVING) - THIS NPC SHOULD NOT HAVE THIS EQUIPMENT
DELETE FROM creature_equip_template WHERE entry=626;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=626; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=626; 
DELETE FROM creature_equip_template_raw WHERE entry=626;

-- ENTRY 627 (Entry Does Not Exist)

-- ENTRY 628 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=628;
INSERT INTO creature_equip_template VALUES (5439,2178,0,0);
UPDATE creature_template SET equipment_id=5439 WHERE equipment_id=628; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5439 WHERE equipment_id=628; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5439);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2178,7482,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=628;

-- ENTRY 629 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=629;
UPDATE creature_template SET equipment_id=5439 WHERE equipment_id=629; 
UPDATE creature SET equipment_id=5439 WHERE equipment_id=629; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5439);
DELETE FROM creature_equip_template_raw WHERE entry=629;

-- ENTRY 630 (Entry Does Not Exist)
-- ENTRY 631 (Entry Does Not Exist)

-- ENTRY 632 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=632;
INSERT INTO creature_equip_template VALUES (5440,2178,143,0);
UPDATE creature_template SET equipment_id=5440 WHERE equipment_id=632; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5440 WHERE equipment_id=632; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5440);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2178,7482,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=632;

-- ENTRY 633 (Entry Does Not Exist)

-- ENTRY 634 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=634;
INSERT INTO creature_equip_template VALUES (5441,2178,5284,0);
UPDATE creature_template SET equipment_id=5441 WHERE equipment_id=634; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5441 WHERE equipment_id=634; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5441);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2178,7482,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5284,6454,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=634;

-- ENTRY 635 (Entry Does Not Exist)
-- ENTRY 636 (Entry Does Not Exist)
-- ENTRY 637 (Entry Does Not Exist)
-- ENTRY 638 (Entry Does Not Exist)

-- ENTRY 639 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=639;
INSERT INTO creature_equip_template VALUES (5442,1899,0,0);
UPDATE creature_template SET equipment_id=5442 WHERE equipment_id=639; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5442 WHERE equipment_id=639; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5442);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=639;

-- ENTRY 640 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=640;
UPDATE creature_template SET equipment_id=5442 WHERE equipment_id=640; 
UPDATE creature SET equipment_id=5442 WHERE equipment_id=640; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5442);
DELETE FROM creature_equip_template_raw WHERE entry=640;

-- ENTRY 641 (Entry Does Not Exist)

-- ENTRY 642 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=642;
INSERT INTO creature_equip_template VALUES (5443,1899,1957,0);
UPDATE creature_template SET equipment_id=5443 WHERE equipment_id=642; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5443 WHERE equipment_id=642; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5443);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=642;

-- ENTRY 643 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=643;
UPDATE creature_template SET equipment_id=5443 WHERE equipment_id=643; 
UPDATE creature SET equipment_id=5443 WHERE equipment_id=643; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5443);
DELETE FROM creature_equip_template_raw WHERE entry=643;

-- ENTRY 644 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=644;
INSERT INTO creature_equip_template VALUES (5444,1899,1961,0);
UPDATE creature_template SET equipment_id=5444 WHERE equipment_id=644; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5444 WHERE equipment_id=644; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5444);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1961,1685,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=644;

-- ENTRY 645 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=645;
INSERT INTO creature_equip_template VALUES (5445,1899,1984,0);
UPDATE creature_template SET equipment_id=5445 WHERE equipment_id=645; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5445 WHERE equipment_id=645; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5445);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=645;

-- ENTRY 646 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=646;
UPDATE creature_template SET equipment_id=5445 WHERE equipment_id=646; 
UPDATE creature SET equipment_id=5445 WHERE equipment_id=646; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5445);
DELETE FROM creature_equip_template_raw WHERE entry=646;

-- ENTRY 647 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=647;
INSERT INTO creature_equip_template VALUES (5446,1899,1985,0);
UPDATE creature_template SET equipment_id=5446 WHERE equipment_id=647; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5446 WHERE equipment_id=647; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5446);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=647;

-- ENTRY 648 (Entry Does Not Exist)

-- ENTRY 649 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=649;
INSERT INTO creature_equip_template VALUES (5447,1899,2052,0);
UPDATE creature_template SET equipment_id=5447 WHERE equipment_id=649; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5447 WHERE equipment_id=649; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5447);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=649;

-- ENTRY 650 (Entry Does Not Exist)

-- ENTRY 651 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=651;
INSERT INTO creature_equip_template VALUES (5448,1899,2053,0);
UPDATE creature_template SET equipment_id=5448 WHERE equipment_id=651; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5448 WHERE equipment_id=651; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5448);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=651;

-- ENTRY 652 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=652;
UPDATE creature_template SET equipment_id=5448 WHERE equipment_id=652; 
UPDATE creature SET equipment_id=5448 WHERE equipment_id=652; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5448);
DELETE FROM creature_equip_template_raw WHERE entry=652;

-- ENTRY 653 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=653;
INSERT INTO creature_equip_template VALUES (5449,1899,143,0);
UPDATE creature_template SET equipment_id=5449 WHERE equipment_id=653; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5449 WHERE equipment_id=653; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5449);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1899,7483,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=653;

-- ENTRY 654 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=654;
UPDATE creature_template SET equipment_id=5449 WHERE equipment_id=654;
UPDATE creature SET equipment_id=5449 WHERE equipment_id=654; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5449);
DELETE FROM creature_equip_template_raw WHERE entry=654;

-- ENTRY 655 (Entry Does Not Exist)

-- ENTRY 656 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=656;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=656; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=656; 
DELETE FROM creature_equip_template_raw WHERE entry=656;

-- ENTRY 657 (Entry Does Not Exist)
-- ENTRY 658 (Entry Does Not Exist)
-- ENTRY 659 (Entry Does Not Exist)

-- ENTRY 660 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=660;
INSERT INTO creature_equip_template VALUES (5450,3364,0,0);
UPDATE creature_template SET equipment_id=5450 WHERE equipment_id=660; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5450 WHERE equipment_id=660; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5450);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3364,7484,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=660;

-- ENTRY 661 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=661;
UPDATE creature_template SET equipment_id=5450 WHERE equipment_id=661; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5450 WHERE equipment_id=661; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5450);
DELETE FROM creature_equip_template_raw WHERE entry=661;

-- ENTRY 662 (Entry Does Not Exist)

-- ENTRY 663 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=663;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=663; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=663; 
DELETE FROM creature_equip_template_raw WHERE entry=663;

-- ENTRY 664 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=664;
INSERT INTO creature_equip_template VALUES (5451,3364,5284,0);
UPDATE creature_template SET equipment_id=5451 WHERE equipment_id=664; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5451 WHERE equipment_id=664; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5451);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3364,7484,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5284,6454,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=664;

-- ENTRY 665 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=665;
INSERT INTO creature_equip_template VALUES (5452,3364,10616,0);
UPDATE creature_template SET equipment_id=5452 WHERE equipment_id=665; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5452 WHERE equipment_id=665; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5452);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3364,7484,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10616,19555,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=665;

-- ENTRY 666 (Entry Does Not Exist)

-- ENTRY 667 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=667;
INSERT INTO creature_equip_template VALUES (5453,1897,0,0);
UPDATE creature_template SET equipment_id=5453 WHERE equipment_id=667; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5453 WHERE equipment_id=667; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5453);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1897,7485,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=667;

-- ENTRY 668 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=668;
UPDATE creature_template SET equipment_id=5453 WHERE equipment_id=668; 
UPDATE creature SET equipment_id=5453 WHERE equipment_id=668; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5453);
DELETE FROM creature_equip_template_raw WHERE entry=668;

-- ENTRY 669 (Entry Does Not Exist)
-- ENTRY 670 (Entry Does Not Exist)

-- ENTRY 671 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=671;
INSERT INTO creature_equip_template VALUES (5454,1897,1957,0);
UPDATE creature_template SET equipment_id=5454 WHERE equipment_id=671; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5454 WHERE equipment_id=671; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5454);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1897,7485,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=671;

-- ENTRY 672 (Entry Does Not Exist)

-- ENTRY 673 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=673;
INSERT INTO creature_equip_template VALUES (5455,1897,2051,0);
UPDATE creature_template SET equipment_id=5455 WHERE equipment_id=673; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5455 WHERE equipment_id=673; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5455);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1897,7485,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2051,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=673;

-- ENTRY 674 (Entry Does Not Exist)

-- ENTRY 675 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=675;
INSERT INTO creature_equip_template VALUES (5456,1897,2053,0);
UPDATE creature_template SET equipment_id=5456 WHERE equipment_id=675; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5456 WHERE equipment_id=675; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5456);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1897,7485,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=675;

-- ENTRY 676 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=676;
UPDATE creature_template SET equipment_id=5456 WHERE equipment_id=676; 
UPDATE creature SET equipment_id=5456 WHERE equipment_id=676; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5456);
DELETE FROM creature_equip_template_raw WHERE entry=676;

-- ENTRY 677 (Entry Does Not Exist)
-- ENTRY 678 (Entry Does Not Exist)
-- ENTRY 679 (Entry Does Not Exist)
-- ENTRY 680 (Entry Does Not Exist)

-- ENTRY 681 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=681;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=681; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=681; 
DELETE FROM creature_equip_template_raw WHERE entry=681;

-- ENTRY 682 (Entry Does Not Exist)
-- ENTRY 683 (Entry Does Not Exist)
-- ENTRY 684 (Entry Does Not Exist)

-- ENTRY 685 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=685;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=685; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=685; 
DELETE FROM creature_equip_template_raw WHERE entry=685;

-- ENTRY 686 (Entry Does Not Exist)
-- ENTRY 687 (Entry Does Not Exist)
-- ENTRY 688 (Entry Does Not Exist)
-- ENTRY 689 (Entry Does Not Exist)

-- ENTRY 690 (0x01FF0702 / 0x030D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=690;
INSERT INTO creature_equip_template VALUES (5457,2180,2081,0);
UPDATE creature_template SET equipment_id=5457 WHERE equipment_id=690; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5457 WHERE equipment_id=690; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5457);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2180,7486,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=690;

-- ENTRY 691 (Entry Does Not Exist)

-- ENTRY 692 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=692;
INSERT INTO creature_equip_template VALUES (5458,2180,1896,0);
UPDATE creature_template SET equipment_id=5458 WHERE equipment_id=692; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5458 WHERE equipment_id=692; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5458);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2180,7486,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=692;

-- ENTRY 693 (Entry Does Not Exist)

-- ENTRY 694 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=694;
INSERT INTO creature_equip_template VALUES (5459,1896,0,0);
UPDATE creature_template SET equipment_id=5459 WHERE equipment_id=694; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5459 WHERE equipment_id=694; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5459);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=694;

-- ENTRY 695 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=695;
UPDATE creature_template SET equipment_id=5459 WHERE equipment_id=695; 
UPDATE creature SET equipment_id=5459 WHERE equipment_id=695; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5459);
DELETE FROM creature_equip_template_raw WHERE entry=695;

-- ENTRY 696 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=696;
UPDATE creature_template SET equipment_id=5459 WHERE equipment_id=696; 
UPDATE creature SET equipment_id=5459 WHERE equipment_id=696; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5459);
DELETE FROM creature_equip_template_raw WHERE entry=696;

-- ENTRY 697 (Entry Does Not Exist)
-- ENTRY 698 (Entry Does Not Exist)

-- ENTRY 699 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=699;
INSERT INTO creature_equip_template VALUES (5460,1896,1957,0);
UPDATE creature_template SET equipment_id=5460 WHERE equipment_id=699; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5460 WHERE equipment_id=699; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5460);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=699;

-- ENTRY 700 (Entry Does Not Exist)

-- ENTRY 701 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=701;
INSERT INTO creature_equip_template VALUES (5461,1896,1957,5258);
UPDATE creature_template SET equipment_id=5461 WHERE equipment_id=701; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5461 WHERE equipment_id=701; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5461);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1957,1684,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=701;

-- ENTRY 702 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=702;
INSERT INTO creature_equip_template VALUES (5462,1896,1961,0);
UPDATE creature_template SET equipment_id=5462 WHERE equipment_id=702; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5462 WHERE equipment_id=702; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5462);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1961,1685,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=702;

-- ENTRY 703 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=703;
UPDATE creature_template SET equipment_id=5462 WHERE equipment_id=703; 
UPDATE creature SET equipment_id=5462 WHERE equipment_id=703; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5462);
DELETE FROM creature_equip_template_raw WHERE entry=703;

-- ENTRY 704 (Entry Does Not Exist)
-- ENTRY 705 (Entry Does Not Exist)

-- ENTRY 706 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=706;
INSERT INTO creature_equip_template VALUES (5463,1896,2051,0);
UPDATE creature_template SET equipment_id=5463 WHERE equipment_id=706; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5463 WHERE equipment_id=706; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5463);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2051,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=706;

-- ENTRY 707 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=707;
UPDATE creature_template SET equipment_id=5463 WHERE equipment_id=707; 
UPDATE creature SET equipment_id=5463 WHERE equipment_id=707; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5463);
DELETE FROM creature_equip_template_raw WHERE entry=707;

-- ENTRY 708 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=708;
INSERT INTO creature_equip_template VALUES (5464,1896,2053,0);
UPDATE creature_template SET equipment_id=5464 WHERE equipment_id=708; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5464 WHERE equipment_id=708; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5464);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=708;

-- ENTRY 709 (Entry Does Not Exist)

-- ENTRY 710 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=710;
INSERT INTO creature_equip_template VALUES (5465,1896,5281,2551);
UPDATE creature_template SET equipment_id=5465 WHERE equipment_id=710; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5465 WHERE equipment_id=710; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5465);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1896,7487,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5281,6443,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=710;

-- ENTRY 711 (Entry Does Not Exist)
-- ENTRY 712 (Entry Does Not Exist)
-- ENTRY 713 (Entry Does Not Exist)
-- ENTRY 714 (Entry Does Not Exist)
-- ENTRY 715 (Entry Does Not Exist)
-- ENTRY 716 (Entry Does Not Exist)

-- ENTRY 717 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=717;
INSERT INTO creature_equip_template VALUES (5466,1895,0,0);
UPDATE creature_template SET equipment_id=5466 WHERE equipment_id=717; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5466 WHERE equipment_id=717; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5466);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1895,7488,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=717;

-- ENTRY 718 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=718;
UPDATE creature_template SET equipment_id=5466 WHERE equipment_id=718; 
UPDATE creature SET equipment_id=5466 WHERE equipment_id=718; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5466);
DELETE FROM creature_equip_template_raw WHERE entry=718;

-- ENTRY 719 (Entry Does Not Exist)
-- ENTRY 720 (Entry Does Not Exist)

-- ENTRY 721 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=721;
INSERT INTO creature_equip_template VALUES (5467,1895,2052,0);
UPDATE creature_template SET equipment_id=5467 WHERE equipment_id=721; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5467 WHERE equipment_id=721; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5467);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1895,7488,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=721;

-- ENTRY 722 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=722;
INSERT INTO creature_equip_template VALUES (5468,1895,2053,0);
UPDATE creature_template SET equipment_id=5468 WHERE equipment_id=722; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5468 WHERE equipment_id=722; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5468);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1895,7488,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2053,1757,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=722;

-- ENTRY 723 (Entry Does Not Exist)

-- ENTRY 724 (BAD TBC-DB HEX DATA) - CONFIRMED DATA WITH UDB - Class/Subclass Values Were Determined based on 2H Sword Values in Core
DELETE FROM creature_equip_template WHERE entry=724;
INSERT INTO creature_equip_template VALUES (5469,2181,0,0);
UPDATE creature_template SET equipment_id=5469 WHERE equipment_id=724; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5469 WHERE equipment_id=724; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5469);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2181,7489,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=724;

-- ENTRY 725 (0x01FF0802 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=725;
INSERT INTO creature_equip_template VALUES (5470,1983,0,0);
UPDATE creature_template SET equipment_id=5470 WHERE equipment_id=725; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5470 WHERE equipment_id=725; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5470);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1983,7490,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=725;

-- ENTRY 726 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=726;
UPDATE creature_template SET equipment_id=5470 WHERE equipment_id=726; 
UPDATE creature SET equipment_id=5470 WHERE equipment_id=726; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5470);
DELETE FROM creature_equip_template_raw WHERE entry=726;

-- ENTRY 727 (0x01FF0802 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=727;
INSERT INTO creature_equip_template VALUES (5471,3366,0,0);
UPDATE creature_template SET equipment_id=5471 WHERE equipment_id=727; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5471 WHERE equipment_id=727; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5471);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3366,7491,-1,8,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=727;

-- ENTRY 728 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=728;
UPDATE creature_template SET equipment_id=5471 WHERE equipment_id=728; 
UPDATE creature SET equipment_id=5471 WHERE equipment_id=728; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5471);
DELETE FROM creature_equip_template_raw WHERE entry=728;

-- ENTRY 729 (Entry Does Not Exist)

-- ENTRY 730 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=730;
INSERT INTO creature_equip_template VALUES (5472,1900,0,0);
UPDATE creature_template SET equipment_id=5472 WHERE equipment_id=730; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5472 WHERE equipment_id=730; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5472);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1900,7492,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=730;

-- ENTRY 731 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=731;
UPDATE creature_template SET equipment_id=5472 WHERE equipment_id=731; 
UPDATE creature SET equipment_id=5472 WHERE equipment_id=731; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5472);
DELETE FROM creature_equip_template_raw WHERE entry=731;

-- ENTRY 732 (Entry Does Not Exist)
-- ENTRY 733 (Entry Does Not Exist)

-- ENTRY 734 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=734;
INSERT INTO creature_equip_template VALUES (5473,1900,5284,0);
UPDATE creature_template SET equipment_id=5473 WHERE equipment_id=734; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5473 WHERE equipment_id=734; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5473);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1900,7492,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5284,6454,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=734;

-- ENTRY 735 (0x01FF0702 / 0x030D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=735;
INSERT INTO creature_equip_template VALUES (5474,1900,2081,0);
UPDATE creature_template SET equipment_id=5474 WHERE equipment_id=735; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5474 WHERE equipment_id=735; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5474);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1900,7492,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=735;

-- ENTRY 736 (Entry Does Not Exist)

-- ENTRY 737 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=737;
INSERT INTO creature_equip_template VALUES (5475,1900,1900,0);
UPDATE creature_template SET equipment_id=5475 WHERE equipment_id=737; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5475 WHERE equipment_id=737; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5475);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1900,7492,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=737;

-- ENTRY 738 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=738;
INSERT INTO creature_equip_template VALUES (5476,1910,0,0);
UPDATE creature_template SET equipment_id=5476 WHERE equipment_id=738; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5476 WHERE equipment_id=738; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5476);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1910,7493,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=738;

-- ENTRY 739 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=739;
UPDATE creature_template SET equipment_id=5477 WHERE equipment_id=739; 
UPDATE creature SET equipment_id=5477 WHERE equipment_id=739; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5477);
DELETE FROM creature_equip_template_raw WHERE entry=739;

-- ENTRY 740 (Entry Does Not Exist)

-- ENTRY 741 (0x01FF0002 / 0x030D) and (0x02FF1002 / 0x0719)
DELETE FROM creature_equip_template WHERE entry=741;
INSERT INTO creature_equip_template VALUES (5478,1910,0,6088);
UPDATE creature_template SET equipment_id=5478 WHERE equipment_id=741; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5478 WHERE equipment_id=741; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5478);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1910,7493,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6088,19805,-1,16,2,7,25);
DELETE FROM creature_equip_template_raw WHERE entry=741;

-- ENTRY 742 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=742;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=742; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=742; 
DELETE FROM creature_equip_template_raw WHERE entry=742;

-- ENTRY 743 (0x01FF0002 / 0x030D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=743;
INSERT INTO creature_equip_template VALUES (5479,1910,2081,0);
UPDATE creature_template SET equipment_id=5479 WHERE equipment_id=743; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5479 WHERE equipment_id=743; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5479);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1910,7493,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=743;

-- ENTRY 744 (Entry Does Not Exist)
-- ENTRY 745 (Entry Does Not Exist)
-- ENTRY 746 (Entry Does Not Exist)

-- ENTRY 747 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=747;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=747; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=747; 
DELETE FROM creature_equip_template_raw WHERE entry=747;

-- ENTRY 748 (Entry Does Not Exist)

-- ENTRY 749 (0x01FF0002 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=749;
INSERT INTO creature_equip_template VALUES (5480,1910,13610,0);
UPDATE creature_template SET equipment_id=5480 WHERE equipment_id=749; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5480 WHERE equipment_id=749; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5480);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1910,7493,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13610,24294,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=749;

-- ENTRY 750 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=750;
UPDATE creature_template SET equipment_id=5480 WHERE equipment_id=750; 
UPDATE creature SET equipment_id=5480 WHERE equipment_id=750; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5480);
DELETE FROM creature_equip_template_raw WHERE entry=750;

-- ENTRY 751 (Entry Does Not Exist)

-- ENTRY 752 (0x02FF0402 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=752;
INSERT INTO creature_equip_template VALUES (5481,1911,0,0);
UPDATE creature_template SET equipment_id=5481 WHERE equipment_id=752; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5481 WHERE equipment_id=752; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5481);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=752;

-- ENTRY 753 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=753;
UPDATE creature_template SET equipment_id=5481 WHERE equipment_id=753; 
UPDATE creature SET equipment_id=5481 WHERE equipment_id=753; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5481);
DELETE FROM creature_equip_template_raw WHERE entry=753;

-- ENTRY 754 (0x02FF0402 / 0x070D) and (0x01FF0302 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=754;
INSERT INTO creature_equip_template VALUES (5482,1911,0,2552);
UPDATE creature_template SET equipment_id=5482 WHERE equipment_id=754; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5482 WHERE equipment_id=754; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5482);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2552,6593,-1,3,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=754;

-- ENTRY 755 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=755;
UPDATE creature_template SET equipment_id=5482 WHERE equipment_id=755; 
UPDATE creature SET equipment_id=5482 WHERE equipment_id=755; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5482);
DELETE FROM creature_equip_template_raw WHERE entry=755;

-- ENTRY 756 (Entry Does Not Exist)

-- ENTRY 757 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=757;
INSERT INTO creature_equip_template VALUES (5483,1911,3694,0);
UPDATE creature_template SET equipment_id=5483 WHERE equipment_id=757; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5483 WHERE equipment_id=757; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5483);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3694,6534,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=757;

-- ENTRY 758 (BAD TBC-DB HEX DATA) - CORRECTED DATA BASED ON OTHER TEMPLATES
DELETE FROM creature_equip_template WHERE entry=758;
INSERT INTO creature_equip_template VALUES (5484,1911,13341,0);
UPDATE creature_template SET equipment_id=5484 WHERE equipment_id=758; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5484 WHERE equipment_id=758; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5484);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13341,6536,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=758;

-- ENTRY 759 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=759;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=759; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=759; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
DELETE FROM creature_equip_template_raw WHERE entry=759;

-- ENTRY 760 (Entry Does Not Exist)
-- ENTRY 761 (Entry Does Not Exist)
-- ENTRY 762 (Entry Does Not Exist)

-- ENTRY 763 (0x02FF0402 / 0x070D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=763;
INSERT INTO creature_equip_template VALUES (5485,1911,11587,0);
UPDATE creature_template SET equipment_id=5485 WHERE equipment_id=763; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5485 WHERE equipment_id=763; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5485);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1911,7494,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11587,21541,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=763;

-- ENTRY 764 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=764;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=764; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=764; 
DELETE FROM creature_equip_template_raw WHERE entry=764;

-- ENTRY 765 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=765;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=765; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=765; 
DELETE FROM creature_equip_template_raw WHERE entry=765;

-- ENTRY 766 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=766;
INSERT INTO creature_equip_template VALUES (5486,3346,0,0);
UPDATE creature_template SET equipment_id=5486 WHERE equipment_id=766; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5486 WHERE equipment_id=766; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5486);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3346,7495,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=766;

-- ENTRY 767 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=767;
UPDATE creature_template SET equipment_id=5486 WHERE equipment_id=767; 
UPDATE creature SET equipment_id=5486 WHERE equipment_id=767; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5486);
DELETE FROM creature_equip_template_raw WHERE entry=767;

-- ENTRY 768 (Entry Does Not Exist)
-- ENTRY 769 (Entry Does Not Exist)

-- ENTRY 770 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=770;
INSERT INTO creature_equip_template VALUES (5487,3346,3756,0);
UPDATE creature_template SET equipment_id=5487 WHERE equipment_id=770; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5487 WHERE equipment_id=770; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5487);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3346,7495,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3756,6529,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=770;

-- ENTRY 771 (0x02FF0402 / 0x070D) and (0x02FF0004 / 0x0)
DELETE FROM creature_equip_template WHERE entry=771;
INSERT INTO creature_equip_template VALUES (5488,3346,13605,0);
UPDATE creature_template SET equipment_id=5488 WHERE equipment_id=771; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5488 WHERE equipment_id=771; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5488);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (3346,7495,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13605,24282,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=771;

-- ENTRY 772 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=772;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=772; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=772; 
DELETE FROM creature_equip_template_raw WHERE entry=772;

-- ENTRY 773 (Entry Does Not Exist)

-- ENTRY 774 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=774;
INSERT INTO creature_equip_template VALUES (5489,5286,0,0);
UPDATE creature_template SET equipment_id=5489 WHERE equipment_id=774; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5489 WHERE equipment_id=774; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5489);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=774;

-- ENTRY 775 (Entry Does Not Exist)
-- ENTRY 776 (Entry Does Not Exist)

-- ENTRY 777 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=777;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=777; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=777; 
DELETE FROM creature_equip_template_raw WHERE entry=777;

-- ENTRY 778 (Entry Does Not Exist)
-- ENTRY 779 (Entry Does Not Exist)

-- ENTRY 780 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=780;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=780; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=780; 
DELETE FROM creature_equip_template_raw WHERE entry=780;

-- ENTRY 781 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=781;
INSERT INTO creature_equip_template VALUES (5490,5286,5286,0);
UPDATE creature_template SET equipment_id=5490 WHERE equipment_id=781; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5490 WHERE equipment_id=781; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5490);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=781;

-- ENTRY 782 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=782;
UPDATE creature_template SET equipment_id=5490 WHERE equipment_id=782; 
UPDATE creature SET equipment_id=5490 WHERE equipment_id=782; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5490);
DELETE FROM creature_equip_template_raw WHERE entry=782;

-- ENTRY 783 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=783;
INSERT INTO creature_equip_template VALUES (5491,5286,6254,0);
UPDATE creature_template SET equipment_id=5491 WHERE equipment_id=783; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5491 WHERE equipment_id=783; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5491);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6254,10968,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=783;

-- ENTRY 784 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=784;
UPDATE creature_template SET equipment_id=5491 WHERE equipment_id=784; 
UPDATE creature SET equipment_id=5491 WHERE equipment_id=784; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5491);
DELETE FROM creature_equip_template_raw WHERE entry=784;

-- ENTRY 785 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=785;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=785; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=785; 
DELETE FROM creature_equip_template_raw WHERE entry=785;

-- ENTRY 786 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=786;
INSERT INTO creature_equip_template VALUES (5492,5286,14880,0);
UPDATE creature_template SET equipment_id=5492 WHERE equipment_id=786; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5492 WHERE equipment_id=786; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5492);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5286,7508,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14880,25499,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=786;

-- ENTRY 787 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=787;
INSERT INTO creature_equip_template VALUES (5493,5305,0,0);
UPDATE creature_template SET equipment_id=5493 WHERE equipment_id=787; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5493 WHERE equipment_id=787; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5493);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=787;

-- ENTRY 788 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=788;
UPDATE creature_template SET equipment_id=5493 WHERE equipment_id=788; 
UPDATE creature SET equipment_id=5493 WHERE equipment_id=788;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5493);
DELETE FROM creature_equip_template_raw WHERE entry=788;

-- ENTRY 789 (Entry Does Not Exist)

-- ENTRY 790 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=790;
INSERT INTO creature_equip_template VALUES (5494,5305,1984,0);
UPDATE creature_template SET equipment_id=5494 WHERE equipment_id=790; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5494 WHERE equipment_id=790; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5494);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=790;

-- ENTRY 791 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=791;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=791; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=791; 
DELETE FROM creature_equip_template_raw WHERE entry=791;

-- ENTRY 792 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=792;
INSERT INTO creature_equip_template VALUES (5495,5305,1985,5261);
UPDATE creature_template SET equipment_id=5495 WHERE equipment_id=792; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5495 WHERE equipment_id=792; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5495);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1985,1706,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=792;

-- ENTRY 793 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=793;
INSERT INTO creature_equip_template VALUES (5496,5305,143,0);
UPDATE creature_template SET equipment_id=5496 WHERE equipment_id=793; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5496 WHERE equipment_id=793; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5496);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=793;

-- ENTRY 794 (Entry Does Not Exist)
-- ENTRY 795 (Entry Does Not Exist)

-- ENTRY 796 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=796;
INSERT INTO creature_equip_template VALUES (5497,5305,5305,0);
UPDATE creature_template SET equipment_id=5497 WHERE equipment_id=796; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5497 WHERE equipment_id=796; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5497);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=796;

-- ENTRY 797 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=797;
INSERT INTO creature_equip_template VALUES (5498,5305,12980,0);
UPDATE creature_template SET equipment_id=5498 WHERE equipment_id=797; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5498 WHERE equipment_id=797; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5498);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5305,7526,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12980,23568,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=797;

-- ENTRY 798 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=798;
UPDATE creature_template SET equipment_id=5498 WHERE equipment_id=798; 
UPDATE creature SET equipment_id=5498 WHERE equipment_id=798; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5498);
DELETE FROM creature_equip_template_raw WHERE entry=798;

-- ENTRY 799 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=799;
INSERT INTO creature_equip_template VALUES (5499,5495,0,0);
UPDATE creature_template SET equipment_id=5499 WHERE equipment_id=799; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5499 WHERE equipment_id=799; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5499);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5495,8011,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=799;

-- ENTRY 800 (Entry Does Not Exist)

-- ENTRY 801 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=801;
INSERT INTO creature_equip_template VALUES (5500,5495,0,0);
UPDATE creature_template SET equipment_id=5500 WHERE equipment_id=801; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5500 WHERE equipment_id=801; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5500);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5495,8016,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=801;

-- ENTRY 802 (Entry Does Not Exist)

-- ENTRY 803 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=803;
UPDATE creature_template SET equipment_id=5086 WHERE equipment_id=803; 
UPDATE creature SET equipment_id=5086 WHERE equipment_id=803; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5086);
DELETE FROM creature_equip_template_raw WHERE entry=803;

-- ENTRY 804 (Entry Does Not Exist)

-- ENTRY 805 (0x01FF0E02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=805;
INSERT INTO creature_equip_template VALUES (5501,5532,0,0);
UPDATE creature_template SET equipment_id=5501 WHERE equipment_id=805; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5501 WHERE equipment_id=805; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5501);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5532,8078,-1,14,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=805;

-- ENTRY 806 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=806;
UPDATE creature_template SET equipment_id=5501 WHERE equipment_id=806;
UPDATE creature SET equipment_id=5501 WHERE equipment_id=806; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5501);
DELETE FROM creature_equip_template_raw WHERE entry=806;

-- ENTRY 807 (Entry Does Not Exist)

-- ENTRY 808 (0x01FF0E02 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=808;
INSERT INTO creature_equip_template VALUES (5502,5532,13605,0);
UPDATE creature_template SET equipment_id=5502 WHERE equipment_id=808; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5502 WHERE equipment_id=808; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5502);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5532,8078,-1,14,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13605,24282,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=808;

-- ENTRY 809 (0x01FF0E02 / 0x030D) and (0x02FF0004 / 0x0)
DELETE FROM creature_equip_template WHERE entry=809;
INSERT INTO creature_equip_template VALUES (5503,5532,13859,0);
UPDATE creature_template SET equipment_id=5503 WHERE equipment_id=809; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5503 WHERE equipment_id=809; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5503);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5532,8078,-1,14,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13859,24596,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=809;

-- ENTRY 810 (0x01FF0702 / 0x030D) - BAD ORIGINAL TBC-DB HEX DATA
DELETE FROM creature_equip_template WHERE entry=810;
INSERT INTO creature_equip_template VALUES (5504,12142,0,0);
UPDATE creature_template SET equipment_id=5504 WHERE equipment_id=810; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5504 WHERE equipment_id=810; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5504);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12142,8090,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=810;

-- ENTRY 811 (BAD ORIGINAL TBC-DB HEX DATA) - CORRECTED DATA AS REQUIRED TO FIX ENTRY
DELETE FROM creature_equip_template WHERE entry=811;
INSERT INTO creature_equip_template VALUES (5505,12142,15512,0);
UPDATE creature_template SET equipment_id=5505 WHERE equipment_id=811; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5505 WHERE equipment_id=811; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5505);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12142,8090,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (15512,26978,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=811;

-- ENTRY 812 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=812;
UPDATE creature_template SET equipment_id=5010 WHERE equipment_id=812; 
UPDATE creature SET equipment_id=5010 WHERE equipment_id=812; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5010);
DELETE FROM creature_equip_template_raw WHERE entry=812;

-- ENTRY 813 (0x01FF0002 / 0x040D)
DELETE FROM creature_equip_template WHERE entry=813;
INSERT INTO creature_equip_template VALUES (5506,5597,5597,0);
UPDATE creature_template SET equipment_id=5506 WHERE equipment_id=813; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5506 WHERE equipment_id=813; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5506);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5597,8376,-1,0,2,4,13);
DELETE FROM creature_equip_template_raw WHERE entry=813;

-- ENTRY 814 (0x01FF0002 / 0x040D)
DELETE FROM creature_equip_template WHERE entry=814;
INSERT INTO creature_equip_template VALUES (5507,5598,0,0);
UPDATE creature_template SET equipment_id=5507 WHERE equipment_id=814; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5507 WHERE equipment_id=814; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5507);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
DELETE FROM creature_equip_template_raw WHERE entry=814;

-- ENTRY 815 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=815;
UPDATE creature_template SET equipment_id=5507 WHERE equipment_id=815; 
UPDATE creature SET equipment_id=5507 WHERE equipment_id=815; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5507);
DELETE FROM creature_equip_template_raw WHERE entry=815;

-- ENTRY 816 (0x01FF0002 / 0x040D) and (0x02FF0202 / 0x0)
DELETE FROM creature_equip_template WHERE entry=816;
INSERT INTO creature_equip_template VALUES (5508,5598,0,14105);
UPDATE creature_template SET equipment_id=5508 WHERE equipment_id=816; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5508 WHERE equipment_id=816; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5508);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14105,24930,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=816;

-- ENTRY 817 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=817;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=817; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=817; 
DELETE FROM creature_equip_template_raw WHERE entry=817;

-- ENTRY 818 (0x01FF0002 / 0x040D) and (0x01FF0002 / 0x040D)
DELETE FROM creature_equip_template WHERE entry=818;
INSERT INTO creature_equip_template VALUES (5509,8377,8377,0);
UPDATE creature_template SET equipment_id=5509 WHERE equipment_id=818; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5509 WHERE equipment_id=818; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5509);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5598,8377,-1,0,2,4,13);
DELETE FROM creature_equip_template_raw WHERE entry=818;

-- ENTRY 819 (Entry Does Not Exist)

-- ENTRY 820 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=820;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=820; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=820; 
DELETE FROM creature_equip_template_raw WHERE entry=820;

-- ENTRY 821 (Entry Does Not Exist)

-- ENTRY 822 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=822;
INSERT INTO creature_equip_template VALUES (5510,5599,0,0);
UPDATE creature_template SET equipment_id=5510 WHERE equipment_id=822; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5510 WHERE equipment_id=822; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5510);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5599,8378,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=822;

-- ENTRY 823 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=823;
UPDATE creature_template SET equipment_id=5511 WHERE equipment_id=823; 
UPDATE creature SET equipment_id=5511 WHERE equipment_id=823; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5511);
DELETE FROM creature_equip_template_raw WHERE entry=4;

-- ENTRY 824 (Entry Does Not Exist)
-- ENTRY 825 (Entry Does Not Exist)

-- ENTRY 826 (0x01FF0E02 / 0x0015)
DELETE FROM creature_equip_template WHERE entry=826;
INSERT INTO creature_equip_template VALUES (5512,5956,0,0);
UPDATE creature_template SET equipment_id=5512 WHERE equipment_id=826; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5512 WHERE equipment_id=826; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5512);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5956,8568,-1,14,2,0,21);
DELETE FROM creature_equip_template_raw WHERE entry=826;

-- ENTRY 827 (Entry Does Not Exist)

-- ENTRY 828 (BAD TBC-DB DATA) - CORRECTED WITH UDB DATA
DELETE FROM creature_equip_template WHERE entry=828;
UPDATE creature_template SET equipment_id=5009 WHERE equipment_id=828; 
UPDATE creature SET equipment_id=5009 WHERE equipment_id=828; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5009);
DELETE FROM creature_equip_template_raw WHERE entry=828;

-- ENTRY 829 (BAD TBC-DB DATA) - CORRECTED WITH UDB DATA
DELETE FROM creature_equip_template WHERE entry=829;
UPDATE creature_template SET equipment_id=5009 WHERE equipment_id=829; 
UPDATE creature SET equipment_id=5009 WHERE equipment_id=829; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5009);
DELETE FROM creature_equip_template_raw WHERE entry=829;

-- ENTRY 830 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=830;
INSERT INTO creature_equip_template VALUES (5513,5745,0,0);
UPDATE creature_template SET equipment_id=5513 WHERE equipment_id=830; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5513 WHERE equipment_id=830; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5513);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5745,8745,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=830;

-- ENTRY 831 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=831;
UPDATE creature_template SET equipment_id=5513 WHERE equipment_id=831; 
UPDATE creature SET equipment_id=5513 WHERE equipment_id=831; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5513);
DELETE FROM creature_equip_template_raw WHERE entry=831;

-- ENTRY 832 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=832;
INSERT INTO creature_equip_template VALUES (5514,5746,0,0);
UPDATE creature_template SET equipment_id=5514 WHERE equipment_id=832; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5514 WHERE equipment_id=832; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5514);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5746,8746,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=832;

-- ENTRY 833 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=833;
UPDATE creature_template SET equipment_id=5514 WHERE equipment_id=833; 
UPDATE creature SET equipment_id=5514 WHERE equipment_id=833; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5514);
DELETE FROM creature_equip_template_raw WHERE entry=833;

-- ENTRY 834 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=834;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=834; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=834; 
DELETE FROM creature_equip_template_raw WHERE entry=834;

-- ENTRY 835 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=835;
INSERT INTO creature_equip_template VALUES (5515,5747,0,0);
UPDATE creature_template SET equipment_id=5515 WHERE equipment_id=835; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5515 WHERE equipment_id=835; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5515);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5747,8747,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=835;

-- ENTRY 836 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=836;
UPDATE creature_template SET equipment_id=5515 WHERE equipment_id=836; 
UPDATE creature SET equipment_id=5515 WHERE equipment_id=836; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5515);
DELETE FROM creature_equip_template_raw WHERE entry=836;

-- ENTRY 837 (0x01FF0802 / 0x010D)
DELETE FROM creature_equip_template WHERE entry=837;
INSERT INTO creature_equip_template VALUES (5516,14878,0,0);
UPDATE creature_template SET equipment_id=5516 WHERE equipment_id=837; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5516 WHERE equipment_id=837; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5516);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14878,9055,-1,8,2,1,13);
DELETE FROM creature_equip_template_raw WHERE entry=837;

-- ENTRY 838 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=838;
UPDATE creature_template SET equipment_id=5072 WHERE equipment_id=838; 
UPDATE creature SET equipment_id=5072 WHERE equipment_id=838; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5072);
DELETE FROM creature_equip_template_raw WHERE entry=838;

-- ENTRY 839 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=839;
UPDATE creature_template SET equipment_id=5072 WHERE equipment_id=839; 
UPDATE creature SET equipment_id=5072 WHERE equipment_id=839; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5072);
DELETE FROM creature_equip_template_raw WHERE entry=839;

-- ENTRY 840 (Entry Does Not Exist)

-- ENTRY 841 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=841;
INSERT INTO creature_equip_template VALUES (5517,6225,0,0);
UPDATE creature_template SET equipment_id=5517 WHERE equipment_id=841; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5517 WHERE equipment_id=841; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5517);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6225,10814,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=841;

-- ENTRY 842 (Entry Does Not Exist)

-- ENTRY 843 (0x01FF0E02 / 0x070D) and (0x01FF0E02 / 0x0716) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=843;
INSERT INTO creature_equip_template VALUES (5518,6225,19487,2550);
UPDATE creature_template SET equipment_id=5518 WHERE equipment_id=843; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5518 WHERE equipment_id=843; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5518);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6225,10814,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (19487,10816,-1,14,2,7,22);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2550,8106,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=843;

-- ENTRY 844 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=844;
INSERT INTO creature_equip_template VALUES (5519,6227,0,0);
UPDATE creature_template SET equipment_id=5519 WHERE equipment_id=844; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5519 WHERE equipment_id=844; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5519);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6227,10815,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=844;

-- ENTRY 845 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=845;
UPDATE creature_template SET equipment_id=5519 WHERE equipment_id=845; 
UPDATE creature SET equipment_id=5519 WHERE equipment_id=845; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5519);
DELETE FROM creature_equip_template_raw WHERE entry=845;

-- ENTRY 846 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=846;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=846; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=846; 
DELETE FROM creature_equip_template_raw WHERE entry=846;

-- ENTRY 847 (0x01FF0E02 / 0x070D)
DELETE FROM creature_equip_template WHERE entry=847;
INSERT INTO creature_equip_template VALUES (5520,6228,0,0);
UPDATE creature_template SET equipment_id=5520 WHERE equipment_id=847; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5520 WHERE equipment_id=847; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5520);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6228,10816,-1,14,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=847;

-- ENTRY 848 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=848;
UPDATE creature_template SET equipment_id=5520 WHERE equipment_id=848; 
UPDATE creature SET equipment_id=5520 WHERE equipment_id=848;
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5520);
DELETE FROM creature_equip_template_raw WHERE entry=848;

-- ENTRY 849 (0x01FF0E02 / 0x070D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=849;
INSERT INTO creature_equip_template VALUES (5521,6228,0,5870);
UPDATE creature_template SET equipment_id=5521 WHERE equipment_id=849; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5521 WHERE equipment_id=849; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5521);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6228,10816,-1,14,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=849;

-- ENTRY 850 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=850;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=850; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=850; 
DELETE FROM creature_equip_template_raw WHERE entry=850;

-- ENTRY 851 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=851;
INSERT INTO creature_equip_template VALUES (5522,6233,0,0);
UPDATE creature_template SET equipment_id=5522 WHERE equipment_id=851; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5522 WHERE equipment_id=851; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5522);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6233,10821,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=851;

-- ENTRY 852 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=852;
UPDATE creature_template SET equipment_id=5522 WHERE equipment_id=852; 
UPDATE creature SET equipment_id=5522 WHERE equipment_id=852; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5522);
DELETE FROM creature_equip_template_raw WHERE entry=852;

-- ENTRY 853 (Entry Does Not Exist)

-- ENTRY 854 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=854;
INSERT INTO creature_equip_template VALUES (5523,6234,0,0);
UPDATE creature_template SET equipment_id=5523 WHERE equipment_id=854; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5523 WHERE equipment_id=854; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5523);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6234,10822,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=854;

-- ENTRY 855 (Entry Does Not Exist)
-- ENTRY 856 (Entry Does Not Exist)

-- ENTRY 857 (0x01FF0E02 / 0x000D)
DELETE FROM creature_equip_template WHERE entry=857;
INSERT INTO creature_equip_template VALUES (5524,6237,0,0);
UPDATE creature_template SET equipment_id=5524 WHERE equipment_id=857; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5524 WHERE equipment_id=857; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5524);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6237,10825,-1,14,2,0,13);
DELETE FROM creature_equip_template_raw WHERE entry=857;

-- ENTRY 858 (Entry Does Not Exist)

-- ENTRY 859 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=859;
INSERT INTO creature_equip_template VALUES (5525,6322,0,0);
UPDATE creature_template SET equipment_id=5525 WHERE equipment_id=859; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5525 WHERE equipment_id=859; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5525);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6322,11259,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=859;

-- ENTRY 860 (Entry Does Not Exist)

-- ENTRY 861 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=861;
INSERT INTO creature_equip_template VALUES (5526,6334,0,0);
UPDATE creature_template SET equipment_id=5526 WHERE equipment_id=861; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5526 WHERE equipment_id=861; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5526);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6334,11289,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=861;

-- ENTRY 862 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=862;
UPDATE creature_template SET equipment_id=5526 WHERE equipment_id=862; 
UPDATE creature SET equipment_id=5526 WHERE equipment_id=862; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5526);
DELETE FROM creature_equip_template_raw WHERE entry=862;

-- ENTRY 863 (Entry Does Not Exist)

-- ENTRY 864 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=864;
INSERT INTO creature_equip_template VALUES (5527,19916,0,0);
UPDATE creature_template SET equipment_id=5527 WHERE equipment_id=864; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5527 WHERE equipment_id=864; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5527);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (19916,11958,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=864;

-- ENTRY 865 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=865;
UPDATE creature_template SET equipment_id=5136 WHERE equipment_id=865; 
UPDATE creature SET equipment_id=5136 WHERE equipment_id=865; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5136);
DELETE FROM creature_equip_template_raw WHERE entry=865;

-- ENTRY 866 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=866;
UPDATE creature_template SET equipment_id=5136 WHERE equipment_id=866; 
UPDATE creature SET equipment_id=5136 WHERE equipment_id=866; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5136);
DELETE FROM creature_equip_template_raw WHERE entry=866;

-- ENTRY 867 (0x02FF0402 / 0x070D) and (0x02FF0202 / 0x0)
DELETE FROM creature_equip_template WHERE entry=867;
INSERT INTO creature_equip_template VALUES (5528,1906,0,5260);
UPDATE creature_template SET equipment_id=5528 WHERE equipment_id=867; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5528 WHERE equipment_id=867; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5528);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1906,12236,-1,4,2,7,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5260,6233,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=867;

-- ENTRY 868 (Entry Does Not Exist)

-- ENTRY 869 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=869;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=869; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE equipment_id=869; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
DELETE FROM creature_equip_template_raw WHERE entry=869;

-- ENTRY 870 (Entry Does Not Exist)
-- ENTRY 871 (Entry Does Not Exist)
-- ENTRY 872 (Entry Does Not Exist)

-- ENTRY 873 (BAD TBC-DB DATA - CORRECTED DATA TO WHAT IT SHOULD BE FOR THESE ITEMS)
DELETE FROM creature_equip_template WHERE entry=873;
INSERT INTO creature_equip_template VALUES (5529,1906,1906,0);
UPDATE creature_template SET equipment_id=5529 WHERE equipment_id=873; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5529 WHERE equipment_id=873; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5529);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1906,12236,-1,4,2,7,13);
DELETE FROM creature_equip_template_raw WHERE entry=873;

-- ENTRY 874 (Entry Does Not Exist)
-- ENTRY 875 (Entry Does Not Exist)
-- ENTRY 876 (Entry Does Not Exist)

-- ENTRY 877 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=877;
INSERT INTO creature_equip_template VALUES (5530,12890,0,0);
UPDATE creature_template SET equipment_id=5530 WHERE equipment_id=877; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5530 WHERE equipment_id=877; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5530);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12890,12274,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=877;

-- ENTRY 878 (Entry Does Not Exist)

-- ENTRY 879 (0x01FF0702 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=879;
INSERT INTO creature_equip_template VALUES (5531,12890,0,5258);
UPDATE creature_template SET equipment_id=5531 WHERE equipment_id=879; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5531 WHERE equipment_id=879; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5531);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12890,12274,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=879;

-- ENTRY 880 (Entry Does Not Exist)

-- ENTRY 881 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=881;
INSERT INTO creature_equip_template VALUES (5532,12890,2052,0);
UPDATE creature_template SET equipment_id=5532 WHERE equipment_id=881; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5532 WHERE equipment_id=881; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5532);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12890,12274,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2052,1755,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=881;

-- ENTRY 882 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=882;
INSERT INTO creature_equip_template VALUES (5533,12890,143,0);
UPDATE creature_template SET equipment_id=5533 WHERE equipment_id=882; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5533 WHERE equipment_id=882; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5533);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12890,12274,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=882;

-- ENTRY 883 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=883;
INSERT INTO creature_equip_template VALUES (5534,12890,12981,0);
UPDATE creature_template SET equipment_id=5534 WHERE equipment_id=883; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5534 WHERE equipment_id=883; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5534);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12890,12274,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12981,23569,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=883;

-- ENTRY 884 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=884;
UPDATE creature_template SET equipment_id=5534 WHERE equipment_id=884; 
UPDATE creature SET equipment_id=5534 WHERE equipment_id=884; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5534);
DELETE FROM creature_equip_template_raw WHERE entry=884;

-- ENTRY 885 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=4;
INSERT INTO creature_equip_template VALUES (5535,12890,12995,5261);
UPDATE creature_template SET equipment_id=5535 WHERE equipment_id=4; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5535 WHERE equipment_id=4; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5535);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12890,12274,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12995,23575,-1,6,4,4,14);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5261,6234,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=4;

-- ENTRY 886 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=886;
INSERT INTO creature_equip_template VALUES (5536,6680,0,0);
UPDATE creature_template SET equipment_id=5536 WHERE equipment_id=886; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5536 WHERE equipment_id=886; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5536);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6680,12857,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=886;

-- ENTRY 887 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=887;
UPDATE creature_template SET equipment_id=5536 WHERE equipment_id=887; 
UPDATE creature SET equipment_id=5536 WHERE equipment_id=887; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5536);
DELETE FROM creature_equip_template_raw WHERE entry=887;

-- ENTRY 888 (0x01FF0602 / 0x0211) and (0x01FF1202 / 0x001A)
DELETE FROM creature_equip_template WHERE entry=888;
INSERT INTO creature_equip_template VALUES (5537,6680,0,2551);
UPDATE creature_template SET equipment_id=5537 WHERE equipment_id=888; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5537 WHERE equipment_id=888; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5537);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6680,12857,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2551,10671,-1,18,2,0,26);
DELETE FROM creature_equip_template_raw WHERE entry=888;

-- ENTRY 889 (0x01FF0602 / 0x0211) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=889;
INSERT INTO creature_equip_template VALUES (5538,6680,0,5870);
UPDATE creature_template SET equipment_id=5538 WHERE equipment_id=889; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5538 WHERE equipment_id=889; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5538);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6680,12857,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=889;

-- ENTRY 890 (0x01FF0602 / 0x0211) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=890;
INSERT INTO creature_equip_template VALUES (5539,6680,5870,0);
UPDATE creature_template SET equipment_id=5539 WHERE equipment_id=890; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5539 WHERE equipment_id=890; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5539);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6680,12857,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=890;

-- ENTRY 891 (Entry Does Not Exist)
-- ENTRY 892 (Entry Does Not Exist)
-- ENTRY 893 (Entry Does Not Exist)
-- ENTRY 894 (Entry Does Not Exist)

-- ENTRY 895 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=895;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=895; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=895; 
DELETE FROM creature_equip_template_raw WHERE entry=895;

-- ENTRY 896 (Entry Does Not Exist)

-- ENTRY 897 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=897;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=897; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=897; 
DELETE FROM creature_equip_template_raw WHERE entry=897;

-- ENTRY 898 (BAD TBC-DB HEX DATA - CORRECTED DATA AS REQUIRED)
DELETE FROM creature_equip_template WHERE entry=898;
INSERT INTO creature_equip_template VALUES (5540,12285,0,0);
UPDATE creature_template SET equipment_id=5540 WHERE equipment_id=898; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5540 WHERE equipment_id=898; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5540);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12285,18607,-1,1,13,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=898;

-- ENTRY 899 (0x02FF0402 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=899;
INSERT INTO creature_equip_template VALUES (5541,6651,0,0);
UPDATE creature_template SET equipment_id=5541 WHERE equipment_id=899; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5541 WHERE equipment_id=899; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5541);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6651,18652,-1,4,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=899;

-- ENTRY 900 (Entry Does Not Exist)
-- ENTRY 901 (Entry Does Not Exist)

-- ENTRY 902 (0x01FF0002 / 0x030D) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=902;
INSERT INTO creature_equip_template VALUES (5542,11763,0,5856);
UPDATE creature_template SET equipment_id=5542 WHERE equipment_id=902; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5542 WHERE equipment_id=902; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5542);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11763,19132,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5856,16751,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=902;

-- ENTRY 903 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=903;
INSERT INTO creature_equip_template VALUES (5543,11763,11763,0);
UPDATE creature_template SET equipment_id=5543 WHERE equipment_id=903; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5543 WHERE equipment_id=903; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5543);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11763,19132,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=903;

-- ENTRY 904 (Entry Does Not Exist)

-- ENTRY 905 (0x02FF0502 / 0x0111)
DELETE FROM creature_equip_template WHERE entry=905;
INSERT INTO creature_equip_template VALUES (5544,10568,0,0);
UPDATE creature_template SET equipment_id=5544 WHERE equipment_id=905; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5544 WHERE equipment_id=905; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5544);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10568,19500,-1,5,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=905;

-- ENTRY 906 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=906;
UPDATE creature_template SET equipment_id=5544 WHERE equipment_id=906; 
UPDATE creature SET equipment_id=5544 WHERE equipment_id=906; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5544);
DELETE FROM creature_equip_template_raw WHERE entry=906;

-- ENTRY 907 (Entry Does Not Exist)

-- ENTRY 908 (0x02FF0402 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=908;
INSERT INTO creature_equip_template VALUES (5545,10591,6254,0);
UPDATE creature_template SET equipment_id=5545 WHERE equipment_id=908; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5545 WHERE equipment_id=908; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5545);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10591,19519,-1,4,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (6254,10968,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=908;

-- ENTRY 909 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=909;
INSERT INTO creature_equip_template VALUES (5546,10611,0,0);
UPDATE creature_template SET equipment_id=5546 WHERE equipment_id=909; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5546 WHERE equipment_id=909; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5546);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=909;

-- ENTRY 910 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=910;
UPDATE creature_template SET equipment_id=5546 WHERE equipment_id=910; 
UPDATE creature SET equipment_id=5546 WHERE equipment_id=910; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5546);
DELETE FROM creature_equip_template_raw WHERE entry=910;

-- ENTRY 911 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=911;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=911; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=911; 
DELETE FROM creature_equip_template_raw WHERE entry=911;

-- ENTRY 912 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=912;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=912; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=912; 
DELETE FROM creature_equip_template_raw WHERE entry=912;

-- ENTRY 913 (BAD TBC-DB HEX DATA - CORRECTED WITH PROPER DATA)
DELETE FROM creature_equip_template WHERE entry=913;
INSERT INTO creature_equip_template VALUES (5547,10611,5856,0);
UPDATE creature_template SET equipment_id=5547 WHERE equipment_id=913; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5547 WHERE equipment_id=913; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5547);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5856,16751,-1,10,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=913;

-- ENTRY 914 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=914;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=914; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=914; 
DELETE FROM creature_equip_template_raw WHERE entry=914;

-- ENTRY 915 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=915;
INSERT INTO creature_equip_template VALUES (5548,10611,10611,14118);
UPDATE creature_template SET equipment_id=5548 WHERE equipment_id=915; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5548 WHERE equipment_id=915; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5548);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (14118,24931,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=915;

-- ENTRY 916 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=916;
INSERT INTO creature_equip_template VALUES (5549,10611,12452,0);
UPDATE creature_template SET equipment_id=5549 WHERE equipment_id=916; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5549 WHERE equipment_id=916; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5549);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12452,22635,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=916;

-- ENTRY 917 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=917;
UPDATE creature_template SET equipment_id=5549 WHERE equipment_id=917; 
UPDATE creature SET equipment_id=5549 WHERE equipment_id=917; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5549);
DELETE FROM creature_equip_template_raw WHERE entry=917;

-- ENTRY 918 (BAD TBC-DB HEX DATA - CORRECTED DATA TO BE WHAT IS EXPECTED)
DELETE FROM creature_equip_template WHERE entry=918;
INSERT INTO creature_equip_template VALUES (5550,10611,12456,0);
UPDATE creature_template SET equipment_id=5550 WHERE equipment_id=918; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5550 WHERE equipment_id=918; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5550);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10611,19549,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12456,22640,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=918;

-- ENTRY 919 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=919;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=919; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=919; 
DELETE FROM creature_equip_template_raw WHERE entry=919;

-- ENTRY 920 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=920;
INSERT INTO creature_equip_template VALUES (5551,10612,0,0);
UPDATE creature_template SET equipment_id=5551 WHERE equipment_id=920; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5551 WHERE equipment_id=920; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5551);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=920;

-- ENTRY 921 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=921;
UPDATE creature_template SET equipment_id=5551 WHERE equipment_id=921; 
UPDATE creature SET equipment_id=5551 WHERE equipment_id=921; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5551);
DELETE FROM creature_equip_template_raw WHERE entry=921;

-- ENTRY 922 (0x01FF0002 / 0x030D) and (0x02FF0202 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=922;
INSERT INTO creature_equip_template VALUES (5552,10612,0,5258);
UPDATE creature_template SET equipment_id=5552 WHERE equipment_id=922; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5552 WHERE equipment_id=922; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5552);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5258,6231,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=922;

-- ENTRY 923 (0x01FF0002 / 0x030D) and (BAD TBC-DB HEX DATA - CORRECTED TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=923;
INSERT INTO creature_equip_template VALUES (5553,10612,5262,0);
UPDATE creature_template SET equipment_id=5553 WHERE equipment_id=923; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5553 WHERE equipment_id=923; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5553);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5262,6235,-1,2,2,0,15);
DELETE FROM creature_equip_template_raw WHERE entry=923;

-- ENTRY 924 (Entry Does Not Exist)
-- ENTRY 925 (Entry Does Not Exist)

-- ENTRY 926 (0x01FF0002 / 0x030D) and (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=926;
INSERT INTO creature_equip_template VALUES (5554,10612,10612,0);
UPDATE creature_template SET equipment_id=5554 WHERE equipment_id=926; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5554 WHERE equipment_id=926; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5554);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=926;

-- ENTRY 927 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=927;
UPDATE creature_template SET equipment_id=5554 WHERE equipment_id=927; 
UPDATE creature SET equipment_id=5554 WHERE equipment_id=927; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5554);
DELETE FROM creature_equip_template_raw WHERE entry=927;

-- ENTRY 928 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=928;
INSERT INTO creature_equip_template VALUES (5555,10612,11589,0);
UPDATE creature_template SET equipment_id=5555 WHERE equipment_id=928; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5555 WHERE equipment_id=928; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5555);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11589,21553,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=928;

-- ENTRY 929 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=929;
INSERT INTO creature_equip_template VALUES (5556,10612,12452,0);
UPDATE creature_template SET equipment_id=5556 WHERE equipment_id=929; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5556 WHERE equipment_id=929; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5556);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12452,22635,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=929;

-- ENTRY 930 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=930;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=930; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=930; 
DELETE FROM creature_equip_template_raw WHERE entry=930;

-- ENTRY 931 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=931;
INSERT INTO creature_equip_template VALUES (5557,10612,12454,0);
UPDATE creature_template SET equipment_id=5557 WHERE equipment_id=931; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5557 WHERE equipment_id=931; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5557);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12454,22638,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=931;

-- ENTRY 932 (0x01FF0002 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=932;
INSERT INTO creature_equip_template VALUES (5558,10612,12456,0);
UPDATE creature_template SET equipment_id=5558 WHERE equipment_id=932; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5558 WHERE equipment_id=932; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5558);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10612,19550,-1,0,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12456,22640,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=932;

-- ENTRY 933 (Entry Does Not Exist)

-- ENTRY 934 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=934;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=934; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=934; 
DELETE FROM creature_equip_template_raw WHERE entry=934;

-- ENTRY 935 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=935;
INSERT INTO creature_equip_template VALUES (5559,10613,0,0);
UPDATE creature_template SET equipment_id=5559 WHERE equipment_id=935; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5559 WHERE equipment_id=935; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5559);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10613,19551,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=935;

-- ENTRY 936 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=936;
INSERT INTO creature_equip_template VALUES (5560,10613,143,0);
UPDATE creature_template SET equipment_id=5560 WHERE equipment_id=936; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5560 WHERE equipment_id=936; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5560);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10613,19551,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (143,2080,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=936;

-- ENTRY 937 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=937;
INSERT INTO creature_equip_template VALUES (5561,10613,10613,0);
UPDATE creature_template SET equipment_id=5561 WHERE equipment_id=937; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5561 WHERE equipment_id=937; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5561);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10613,19551,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=937;

-- ENTRY 938 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=938;
INSERT INTO creature_equip_template VALUES (5562,10614,0,0);
UPDATE creature_template SET equipment_id=5562 WHERE equipment_id=938; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5562 WHERE equipment_id=938; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5562);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10614,19552,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=938;

-- ENTRY 939 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=939;
UPDATE creature_template SET equipment_id=5562 WHERE equipment_id=939; 
UPDATE creature SET equipment_id=5562 WHERE equipment_id=939; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5562);
DELETE FROM creature_equip_template_raw WHERE entry=939;

-- ENTRY 940 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=940;
INSERT INTO creature_equip_template VALUES (5563,10614,1984,0);
UPDATE creature_template SET equipment_id=5563 WHERE equipment_id=940; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5563 WHERE equipment_id=940; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5563);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10614,19552,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1984,1705,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=940;

-- ENTRY 941 (0x01FF0702 / 0x030D) and (0x01FF0004 / 0x0717)
DELETE FROM creature_equip_template WHERE entry=941;
INSERT INTO creature_equip_template VALUES (5564,10614,2081,0);
UPDATE creature_template SET equipment_id=5564 WHERE equipment_id=941; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5564 WHERE equipment_id=941; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5564);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10614,19552,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2081,6537,-1,0,4,7,23);
DELETE FROM creature_equip_template_raw WHERE entry=941;

-- ENTRY 942 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=942;
INSERT INTO creature_equip_template VALUES (5565,10614,10614,0);
UPDATE creature_template SET equipment_id=5565 WHERE equipment_id=942; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5565 WHERE equipment_id=942; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5565);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10614,19552,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=942;

-- ENTRY 943 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=943;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=943; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=943; 
DELETE FROM creature_equip_template_raw WHERE entry=943;

-- ENTRY 944 (Entry Does Not Exist)

-- ENTRY 945 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=945;
INSERT INTO creature_equip_template VALUES (5566,10616,0,0);
UPDATE creature_template SET equipment_id=5566 WHERE equipment_id=945; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5566 WHERE equipment_id=945; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5566);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10616,19555,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=945;

-- ENTRY 946 (Entry Does Not Exist)

-- ENTRY 947 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=947;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=947; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=947; 
DELETE FROM creature_equip_template_raw WHERE entry=947;

-- ENTRY 948 (Entry Does Not Exist)
-- ENTRY 949 (Entry Does Not Exist)

-- ENTRY 950 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=950;
INSERT INTO creature_equip_template VALUES (5567,10616,10616,0);
UPDATE creature_template SET equipment_id=5567 WHERE equipment_id=950; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5567 WHERE equipment_id=950; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5567);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10616,19555,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=950;

-- ENTRY 951 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=951;
UPDATE creature_template SET equipment_id=5567 WHERE equipment_id=951; 
UPDATE creature SET equipment_id=5567 WHERE equipment_id=951; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5567);
DELETE FROM creature_equip_template_raw WHERE entry=951;

-- ENTRY 952 (BAD TBC-DB HEX DATA - CORRECTED WITH EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=952;
INSERT INTO creature_equip_template VALUES (5568,10616,12861,0);
UPDATE creature_template SET equipment_id=5568 WHERE equipment_id=952; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5568 WHERE equipment_id=952; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5568);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10616,19555,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12861,23175,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=952;

-- ENTRY 953 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=953;
INSERT INTO creature_equip_template VALUES (5569,10616,22215,0);
UPDATE creature_template SET equipment_id=5569 WHERE equipment_id=953; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5569 WHERE equipment_id=953; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5569);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10616,19555,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (22215,34560,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=953;

-- ENTRY 954 (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=954;
INSERT INTO creature_equip_template VALUES (5570,10617,0,0);
UPDATE creature_template SET equipment_id=5570 WHERE equipment_id=954; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5570 WHERE equipment_id=954; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5570);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10617,19556,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=954;

-- ENTRY 955 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=955;
UPDATE creature_template SET equipment_id=5570 WHERE equipment_id=955; 
UPDATE creature SET equipment_id=5570 WHERE equipment_id=955; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5570);
DELETE FROM creature_equip_template_raw WHERE entry=955;

-- ENTRY 956 (Entry Does Not Exist)
-- ENTRY 957 (Entry Does Not Exist)

-- ENTRY 958 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=958;
INSERT INTO creature_equip_template VALUES (5571,10617,10617,0);
UPDATE creature_template SET equipment_id=5571 WHERE equipment_id=958; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5571 WHERE equipment_id=958; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5571);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10617,19556,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=958;

-- ENTRY 959 (0x01FF0F02 / 0x030D) and (0x01FF0F02 / 0x030D) and (0x01FF1002 / 0x000F)
DELETE FROM creature_equip_template WHERE entry=959;
INSERT INTO creature_equip_template VALUES (5572,10617,10617,5870);
UPDATE creature_template SET equipment_id=5572 WHERE equipment_id=959; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5572 WHERE equipment_id=959; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5572);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10617,19556,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=959;

-- ENTRY 960 (Entry Does Not Exist)

-- ENTRY 961 (0x01FF0F02 / 0x030D) and (0x02FF0004 / 0x0017)
DELETE FROM creature_equip_template WHERE entry=961;
INSERT INTO creature_equip_template VALUES (5573,10617,13406,0);
UPDATE creature_template SET equipment_id=5573 WHERE equipment_id=961; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5573 WHERE equipment_id=961; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5573);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10617,19556,-1,15,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13406,24116,-1,0,4,0,23);
DELETE FROM creature_equip_template_raw WHERE entry=961;

-- ENTRY 962 (0x01FF0F02 / 0x030D) - BAD TBC-DB HEX DATA - CORRECTED TO WHAT IS EXPECTED
DELETE FROM creature_equip_template WHERE entry=962;
INSERT INTO creature_equip_template VALUES (5574,10619,0,0);
UPDATE creature_template SET equipment_id=5574 WHERE equipment_id=962; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5574 WHERE equipment_id=962; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5574);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10619,19557,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=962;

-- ENTRY 963 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=963;
UPDATE creature_template SET equipment_id=5574 WHERE equipment_id=963; 
UPDATE creature SET equipment_id=5574 WHERE equipment_id=963; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5574);
DELETE FROM creature_equip_template_raw WHERE entry=963;

-- ENTRY 964 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=964;
UPDATE creature_template SET equipment_id=5574 WHERE equipment_id=964; 
UPDATE creature SET equipment_id=5574 WHERE equipment_id=964; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5574);
DELETE FROM creature_equip_template_raw WHERE entry=964;

-- ENTRY 965 (Entry Does Not Exist)

-- ENTRY 966 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=966;
UPDATE creature_template SET equipment_id=5184 WHERE equipment_id=966; 
UPDATE creature SET equipment_id=5184 WHERE equipment_id=966; 
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5184);
DELETE FROM creature_equip_template_raw WHERE entry=966;

-- ENTRY 967 (Entry Does Not Exist)
-- ENTRY 968 (Entry Does Not Exist)
-- ENTRY 969 (Entry Does Not Exist)
-- ENTRY 970 (Entry Does Not Exist)
-- ENTRY 971 (Entry Does Not Exist)

-- ENTRY 972 (BAD TBC-DB HEX DATA - CORRECTING TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=972;
INSERT INTO creature_equip_template VALUES (5575,2048,0,0);
UPDATE creature_template SET equipment_id=5575 WHERE equipment_id=972; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5575 WHERE equipment_id=972; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5575);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2048,19770,-1,4,2,3,21);
DELETE FROM creature_equip_template_raw WHERE entry=972;

-- ENTRY 973 (0x01FF0602 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=973;
INSERT INTO creature_equip_template VALUES (5576,13631,0,0);
UPDATE creature_template SET equipment_id=5576 WHERE equipment_id=973; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5576 WHERE equipment_id=973; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5576);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13631,19804,-1,6,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=973;

-- ENTRY 974 (Entry Does Not Exist)

-- ENTRY 975 (0x01FF0602 / 0x0211) and (0x01FF1002 / 0x0019)
DELETE FROM creature_equip_template WHERE entry=975;
INSERT INTO creature_equip_template VALUES (5577,13631,0,5870);
UPDATE creature_template SET equipment_id=5577 WHERE equipment_id=975; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5577 WHERE equipment_id=975; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5577);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13631,19804,-1,6,2,2,17);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5870,22671,-1,16,2,0,25);
DELETE FROM creature_equip_template_raw WHERE entry=975;

-- ENTRY 976 (BAD TBC-DB HEX DATA - CORRECTED TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=976;
INSERT INTO creature_equip_template VALUES (5578,10825,0,0);
UPDATE creature_template SET equipment_id=5578 WHERE equipment_id=976; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5578 WHERE equipment_id=976; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5578);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10825,19835,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=976;

-- ENTRY 977 (Entry Does Not Exist)
-- ENTRY 978 (Entry Does Not Exist)

-- ENTRY 979 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=979;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=979; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=979; 
DELETE FROM creature_equip_template_raw WHERE entry=979;

-- ENTRY 980 (Entry Does Not Exist)

-- ENTRY 981 (BAD TBC-DB HEX DATA - CORRECTED TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=981;
INSERT INTO creature_equip_template VALUES (5579,10878,12332,0);
UPDATE creature_template SET equipment_id=5579 WHERE equipment_id=981; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5579 WHERE equipment_id=981; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5579);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10878,20036,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12332,22403,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=981;

-- ENTRY 982 (BAD TBC-DB HEX DATA - CORRECTED TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=982;
INSERT INTO creature_equip_template VALUES (5580,10823,1168,0);
UPDATE creature_template SET equipment_id=5580 WHERE equipment_id=982; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5580 WHERE equipment_id=982; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5580);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10823,20086,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1168,30993,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=982;

-- ENTRY 983 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=983;
INSERT INTO creature_equip_template VALUES (5581,10898,0,0);
UPDATE creature_template SET equipment_id=5581 WHERE equipment_id=983; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5581 WHERE equipment_id=983; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5581);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (10898,20095,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=983;

-- ENTRY 984 (Entry Does Not Exist)

-- ENTRY 985 (BAD TBC-DB HEX DATA - CORRECTED TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=985;
INSERT INTO creature_equip_template VALUES (5582,1982,0,0);
UPDATE creature_template SET equipment_id=5582 WHERE equipment_id=985; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5582 WHERE equipment_id=985; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5582);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (1982,20191,-1,8,2,1,17);
DELETE FROM creature_equip_template_raw WHERE entry=985;

-- ENTRY 986 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=986;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=986; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=986; 
DELETE FROM creature_equip_template_raw WHERE entry=986;

-- ENTRY 987 (0x02FF0A02 / 0x0211)
DELETE FROM creature_equip_template WHERE entry=987;
INSERT INTO creature_equip_template VALUES (5583,5613,0,0);
UPDATE creature_template SET equipment_id=5583 WHERE equipment_id=987; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5583 WHERE equipment_id=987; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5583);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5613,20384,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=987;

-- ENTRY 988 (Entry Does Not Exist)
-- ENTRY 989 (Entry Does Not Exist)
-- ENTRY 990 (Entry Does Not Exist)

-- ENTRY 991 (0x01FF0702 / 0x030D) and (0x01FF0F02 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=991;
INSERT INTO creature_equip_template VALUES (5584,11019,5282,0);
UPDATE creature_template SET equipment_id=5584 WHERE equipment_id=991; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5584 WHERE equipment_id=991; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5584);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11019,20502,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (5282,6447,-1,15,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=991;

-- ENTRY 992 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=992;
INSERT INTO creature_equip_template VALUES (5585,11019,12452,0);
UPDATE creature_template SET equipment_id=5585 WHERE equipment_id=992; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5585 WHERE equipment_id=992; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5585);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11019,20502,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12452,22635,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=992;

-- ENTRY 993 (0x01FF0702 / 0x030D) and (0x01FF0604 / 0x040E)
DELETE FROM creature_equip_template WHERE entry=993;
INSERT INTO creature_equip_template VALUES (5586,11019,12893,0);
UPDATE creature_template SET equipment_id=5586 WHERE equipment_id=993; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5586 WHERE equipment_id=993; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5586);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11019,20502,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (12893,23387,-1,6,4,4,14);
DELETE FROM creature_equip_template_raw WHERE entry=993;

-- ENTRY 994 (0x01FF0702 / 0x030D) and (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=994;
INSERT INTO creature_equip_template VALUES (5587,11019,13718,0);
UPDATE creature_template SET equipment_id=5587 WHERE equipment_id=994; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5587 WHERE equipment_id=994; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5587);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11019,20502,-1,7,2,3,13);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13718,24478,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=994;

-- ENTRY 995 (Entry Does Not Exist)

-- ENTRY 996 (UNUSED OR DUPLICATE ENTRY - REMOVING)
DELETE FROM creature_equip_template WHERE entry=996;
UPDATE creature_template SET equipment_id=0 WHERE equipment_id=996; 
UPDATE creature SET equipment_id=0 WHERE equipment_id=996; 
DELETE FROM creature_equip_template_raw WHERE entry=996;

-- ENTRY 997 (Entry Does Not Exist)
-- ENTRY 998 (Entry Does Not Exist)

-- ENTRY 999 (0x01FF0702 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=999;
INSERT INTO creature_equip_template VALUES (5588,11025,11025,0);
UPDATE creature_template SET equipment_id=5588 WHERE equipment_id=999; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5588 WHERE equipment_id=999; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5588);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11025,20507,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=999;

-- ENTRY 1000 (BAD TBC-DB HEX DATA - CORRECTED TO EXPECTED DATA)
DELETE FROM creature_equip_template WHERE entry=1000;
INSERT INTO creature_equip_template VALUES (5589,11042,0,0);
UPDATE creature_template SET equipment_id=5589 WHERE equipment_id=1000; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=5589 WHERE equipment_id=1000; -- RENUMBER ID'S FOR GAPLESS TRANSITION (ONCE ALL ID'S ARE CONVERTED WILL RENUMBER AGAIN)
UPDATE creature SET equipment_id=0 WHERE id IN (SELECT entry FROM creature_template WHERE equipment_id=5589);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (11042,20538,-1,7,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=1000;


































-- THESE ARE TEMP DONE FOR A FEW SPECIFIC NPC'S (WILL RE-NUMBER THEM ACCORDINGLY WHEN THESE ID'S COME UP IN SEQUENCE
-- -----------------------------------------------------------------------------------------------------------------
-- ENTRY 1083 REMOVED (CONSOLIDATED INTO ENTRY 421)

-- ENTRY 1219 (0x02FF0A02 / 0x0211) => SEE OLD ENTRY 172
DELETE FROM creature_equip_template WHERE entry=1219;
INSERT INTO creature_equip_template VALUES (1219,13061,0,0);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (13061,23590,-1,10,2,2,17);
DELETE FROM creature_equip_template_raw WHERE entry=1219;

-- ENTRY 1738 REMOVED (CONSOLIDATED INTO ENTRY 431)

-- ENTRY 1874 (0x01FF0002 / 0x030D)
DELETE FROM creature_equip_template WHERE entry=1874;
INSERT INTO creature_equip_template VALUES (1874,2183,2183,0);
INSERT IGNORE INTO item_template (entry,displayid,unk0,subclass,class,sheath,inventorytype) VALUES (2183,7427,-1,0,2,3,13);
DELETE FROM creature_equip_template_raw WHERE entry=1874;


-- ENTRY 1904 REMOVED (CONSOLIDATED INTO ENTRY 287)
-- ENTRY 1943 REMOVED (CONSOLIDATED INTO ENTRY 391)
-- ENTRY 1961 REMOVED (CONSOLIDATED INTO ENTRY 272)































































