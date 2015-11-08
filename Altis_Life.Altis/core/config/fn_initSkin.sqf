#include <macro.h>
/*
	File: fn_initSkin.sqf
	
	Description:
	Skin changer
*/
while {true} do

	/*{
	if(playerSide == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\PoliceOfficer.paa"];
		};
	};
	*/
	
	if(playerSide == independent) then
	{
		if (uniform player == "U_B_HeliPilotCoveralls") then {
			player setObjectTextureGlobal[0,"textures\medic_uniform.jpg"];
		};
	};
	
	/*
	if(playerSide == east) then
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"textures\adac_uniform.paa"];
		};
	};
	if(playerSide == civilian) then
	{
		if (uniform player == "B_Soldier_base_F") then {
			player setObjectTextureGlobal[0,"textures\anzug.paa"];
		};
	};
	*/
	
	sleep 30;//safe some cpu
};