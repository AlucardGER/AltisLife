/*
File: fn_medicLoadout.sqf
Author: Bryan "Tonic" Boardwine

Description:
Loads the medic out with the default gear.
*/

// Setzt den Medic nach Respawn zurück
removeUniform player;
removeHeadgear player;
removeBackpack player;
removeAllItems player;
removeVest player;
removeAllWeapons player;
removeAllAssignedItems player;
{player removeMagazine _x;} foreach (magazines player);
RemoveGoggles player;

player forceAddUniform "U_B_HeliPilotCoveralls";
player addBackpack "B_TacticalPack_blk";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";



[] call life_fnc_saveGear; 