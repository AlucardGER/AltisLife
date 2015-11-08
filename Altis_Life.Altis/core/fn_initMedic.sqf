#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	uiSleep 35;
};
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn life_fnc_IntroCam;

// Uniformen Texturen START
[] spawn
{
while {true} do
    {
        waitUntil {uniform player == "U_B_HeliPilotCoveralls};
        player setObjectTextureGlobal [0,"textures\medic_uniform.jpg"];
        waitUntil {uniform player != "U_B_HeliPilotCoveralls"};
    };
[] spawn
{
while {true} do
    {
        waitUntil {backpack player == "B_TacticalPack_blk"};
        (unitBackpack player) setObjectTextureGlobal [0,"textures\medic_backpack.jpg"];
        waitUntil {backpack player != "B_TacticalPack_blk"};
    };
};
if((__GETC__(life_medicLevel)) == 1) exitWith {
	[] call life_fnc_resetMedic;
	license_med_air = true;
};
if((__GETC__(life_medicLevel)) == 2) exitWith {
	[] call life_fnc_resetMedic;
	[] execVM "IgiLoad\IgiLoadInit.sqf";
	license_med_adac = true;
	license_med_air = true;
};