#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Rekruten Shop",
					[
						["hgun_P07_snds_F","Taser Pistole",0],
						["16Rnd_9x21_Mag","Taser Magazin 9x21",0], 						
						["hgun_P07_F",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["Binocular",nil,0],
						["Rangefinder",nil,0],
						["ItemMap",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Medic Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000],
						["U_B_HeliPilotCoveralls",nil,3000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Officer Shop",
					[
						["arifle_MXC_Black_F",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer",nil,0],
						["SMG_02_F",nil,0],
						["muzzle_snds_L",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["SMG_01_F",nil,0],
						["muzzle_snds_acp",nil,0],
						["30Rnd_45ACP_Mag_SMG_01",nil,0],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,0],
						["hgun_PDW2000_F",nil,0],
						["muzzle_snds_L",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["MineDetector",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_Hamr",nil,0],
						["optic_MRCO",nil,0],
						["MiniGrenade",nil,0]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Sergeant Officer Shop",
					[
						["hgun_Pistol_heavy_01_F",nil,0],
						["muzzle_snds_acp",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["optic_MRD",nil,0],
						["arifle_MX_Black_F",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["muzzle_snds_H_MG",nil,0],
						["100Rnd_65x39_caseless_mag",nil,0],
						["100Rnd_65x39_caseless_mag_Tracer",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["muzzle_snds_H",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_65x39_caseless_mag_Tracer",nil,0],
						["srifle_EBR_F",nil,0],
						["20Rnd_762x51_Mag",nil,0],
						["muzzle_snds_B",nil,0],
						["acc_flashlight",nil,0],
						["acc_pointer_IR",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_Hamr",nil,0],
						["optic_MRCO",nil,0],
						["optic_Arco",nil,0],
						["optic_SOS",nil,0],
						["optic_NVS",nil,0],
						["MiniGrenade",nil,0],
						["HandGrenade",nil,0]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["srifle_DMR_06_camo_F",nil,150000],
						["srifle_DMR_06_camo_F",nil,150000],
						["srifle_DMR_03_F",nil,100000],
						["srifle_DMR_03_khaki_F",nil,100000],
						["srifle_DMR_03_multicam_F",nil,100000],
						["srifle_DMR_03_tan_F",nil,100000],
						["srifle_DMR_03_woodland_F",nil,100000],
						["srifle_DMR_02_F",nil,150000],
						["srifle_DMR_02_camo_F",nil,150000],
						["srifle_DMR_02_sniper_F",nil,150000],
						["srifle_DMR_05_blk_F",nil,150000],
						["srifle_DMR_05_hex_F",nil,150000],
						["srifle_DMR_05_tan_F",nil,150000],
						["srifle_DMR_04_F",nil,100000],
						["srifle_DMR_04_Tan_F",nil,100000],
						["MMG_01_hex_F",nil,250000],
						["MMG_01_tan_F",nil,250000],
						["MMG_02_camo_F",nil,150000],
						["MMG_02_black_F",nil,150000],
						["MMG_02_sand_F",nil,150000],
						["150Rnd_93x64_Mag",nil,5000],
						["10Rnd_93x64_DMR_05_Mag",nil,2500],
						["10Rnd_338_Mag",nil,2000],
						["130Rnd_338_Mag",nil,2500],
						["10Rnd_127x54_Mag",nil,5000],
						["muzzle_snds_93mmg",nil,100000],
						["muzzle_snds_93mmg_tan",nil,100000],
						["muzzle_snds_338_green",nil,100000],
						["muzzle_snds_338_sand",nil,100000],
						["muzzle_snds_338_black",nil,100000],
						["bipod_01_F_snd",nil,100000],
						["bipod_01_F_blk",nil,100000],
						["bipod_01_F_mtp",nil,100000],
						["bipod_02_F_blk",nil,100000],
						["bipod_02_F_tan",nil,100000],
						["bipod_02_F_hex",nil,100000],
						["bipod_03_F_blk",nil,100000],
						["bipod_03_F_oli",nil,100000],
						["optic_AMS_khk",nil,50000],
						["optic_AMS_snd",nil,50000],
						["optic_AMS",nil,50000],
						["optic_KHS_blk",nil,50000],
						["optic_KHS_hex",nil,50000],
						["optic_KHS_old",nil,50000],
						["optic_KHS_tan",nil,50000],
						["hgun_Pistol_heavy_02_F",nil,5000],
						["optic_Yorris",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_PDW2000_F",nil,10000],
						["30Rnd_9x21_Mag",nil,500],
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["SMG_02_F",nil,10000],
						["30Rnd_9x21_Mag",nil,500],
						["arifle_SDAR_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["arifle_Katiba_C_F",nil,70000],
						["arifle_Katiba_F",nil,80000],
						["30Rnd_65x39_caseless_green",nil,1000],
						["arifle_Mk20C_F",nil,70000],
						["arifle_Mk20C_plain_F",nil,70000],
						["arifle_Mk20_F",nil,80000],
						["arifle_Mk20_plain_F",nil,80000],
						["30Rnd_556x45_Stanag",nil,1000],
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,1000],
						["srifle_EBR_F",nil,120000],
						["20Rnd_762x51_Mag",nil,1000],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Holosight",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_Hamr",nil,5000],
						["optic_MRCO",nil,6000],
						["optic_Arco",nil,8000],
						["optic_DMS",nil,10000],
				        ["ItemGPS",nil,100],
				        ["ToolKit",nil,5000],
				        ["FirstAidKit",nil,150],
				        ["NVGoggles_INDEP",nil,2000],
						["Rangefinder",nil,2500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Pistol_heavy_02_F",nil,28000],
						["optic_Yorris",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Rook40_F",nil,10000],
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,250],
						["hgun_PDW2000_F",nil,40000],
						["30Rnd_9x21_Mag",nil,1000],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["SMG_02_F",nil,40000],
						["30Rnd_9x21_Mag",nil,1000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,5000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["hgun_Pistol_heavy_02_F",nil,28000],
						["optic_Yorris",nil,2500],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_P07_F",nil,20000],
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Rook40_F",nil,10000],
						["16Rnd_9x21_Mag",nil,250],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,250],
						["hgun_PDW2000_F",nil,40000],
						["30Rnd_9x21_Mag",nil,1000],
						["SMG_01_F",nil,40000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["SMG_02_F",nil,40000],
						["30Rnd_9x21_Mag",nil,1000],
						["optic_Aco",nil,2500],
						["optic_ACO_grn",nil,2500],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,5000],
						["NVGoggles",nil,2500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,200],
				["Rangefinder",nil,5000],
				["ItemGPS",nil,250],
				["ToolKit",nil,5000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2500],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
