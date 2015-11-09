_pathtovehiclescars = "AdminTool\vehicles\Autos\";
_pathtovehicleshelis = "AdminTool\vehicles\Helis\";
_pathtovehiclespanzer = "AdminTool\vehicles\Panzer\";
_pathtovehiclesoffroad = "AdminTool\vehicles\Offroad\";
_pathtovehiclesflugzeug = "AdminTool\vehicles\Flugzeug\";
_pathtovehiclesMPS = "AdminTool\weapons\MPS\";
_pathtovehiclesSturmgewehre = "AdminTool\weapons\Sturmgewehre\";
_pathtovehiclesSniper = "AdminTool\weapons\Sniper\";
_pathtovehiclesPistolen = "AdminTool\weapons\Pistolen\";
_pathtovehiclesMG = "AdminTool\weapons\MGS\";
_pathtotools = "AdminTool\tools\";
_EXECscript1 = 'player execVM "'+_pathtovehiclescars+'%1"';
_EXECscript2 = 'player execVM "'+_pathtovehicleshelis+'%1"';
_EXECscript4 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehiclespanzer+'%1"';
_EXECscript6 = 'player execVM "'+_pathtovehiclesoffroad+'%1"';
_EXECscript7 = 'player execVM "'+_pathtovehiclesflugzeug+'%1"';
_EXECscript8 = 'player execVM "'+_pathtovehiclesMPS+'%1"';
_EXECscript9 = 'player execVM "'+_pathtovehiclesSturmgewehre+'%1"';
_EXECscript10 = 'player execVM "'+_pathtovehiclesSniper+'%1"';
_EXECscript11 = 'player execVM "'+_pathtovehiclesPistolen+'%1"';
_EXECscript12 = 'player execVM "'+_pathtovehiclesMG+'%1"';

if ((getPlayerUID player) in ["76561198084167946","76561198003532796","76561198102879481","76561198015572039","76561198094627332"]) then { // Admin PlayerID Eintragen <--- Hier Bitte Alle Admins eintragen!
	if ((getPlayerUID player) in ["PlayerID","PlayerID"]) then { // Mod PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:ModToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["PlayerID","PlayerID"]) then { // Admin PlayerID Eintragen
        adminmenu =
        [
			["",true],
				["Tools Menu", [2], "#USER:AdminToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]	
        ];};
	if ((getPlayerUID player) in ["76561198084167946","76561198003532796","76561198102879481","76561198015572039","76561198094627332"]) then { // Super Admin PlayerID Eintragen
		adminmenu =
		[
			["",true],
				["Tools Menu", [2], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Spawn Manu", [3], "#USER:SpawnMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
};
ModToolsMenu =
[
	["",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AdminToolsMenu =
[
	["",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ToolsMenu =
[
	["",true],
		["God Mode", [2],  "", -5, [["expression", format[_EXECscript4,"Godmode.sqf"]]], "1", "1"],
		["Selber Heilen", [3],  "", -5, [["expression", format[_EXECscript4,"heal.sqf"]]], "1", "1"],
		["Spieler Heilen", [4],  "", -5, [["expression", format[_EXECscript4,"healp.sqf"]]], "1", "1"],
		["Car God", [5],  "", -5, [["expression", format[_EXECscript4,"cargod.sqf"]]], "1", "1"],
		["Spectate Player", [6],  "", -5, [["expression", format[_EXECscript4,"spectate.sqf"]]], "1", "1"],
		["Teleport To Me", [7], "", -5, [["expression", format[_EXECscript4, "TPtoME.sqf"]]], "1", "1"],
		["Teleport", [8], "", -5, [["expression", format[_EXECscript4, "Tele.sqf"]]], "1", "1"],
		["ESP", [9], "", -5, [["expression", format[_EXECscript4, "ESP.sqf"]]], "1", "1"],
		["Autos Repair und Flipen", [10], "", -5, [["expression", format[_EXECscript4, "repairflip.sqf"]]], "1", "1"],
		["Cash", [11], "", -5, [["expression", format[_EXECscript4, "cash.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
SpawnMenu =
[
	["Spawn",true],
			["Waffen", [12], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
			["Vehicle", [12], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
WeaponMenu =
[
	["Waffen",true],
		["MPS", [12], "#USER:MPS", -5, [["expression", ""]], "1", "1"],
		["Sturmgewehre", [12], "#USER:Sturmgewehre", -5, [["expression", ""]], "1", "1"],
		["Sniper", [12], "#USER:Sniper", -5, [["expression", ""]], "1", "1"],
		["Pistolen", [12], "#USER:Pistolen", -5, [["expression", ""]], "1", "1"],
		["MGS", [12], "#USER:MG", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
MPS = 
[
	["MP Waffen",true],
		["PDW2000", [2],  "", -5, [["expression", format[_EXECscript8,"hgun_PDW2000_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
Sturmgewehre = 
[
	["Sturmgewehr Waffen",true],
		["MX_GL_Black", [2],  "", -5, [["expression", format[_EXECscript9,"arifle_MX_GL_Black_Hamr_pointer_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
Sniper = 
[
	["Sniper Waffen",true],
		["EBR_DMS", [2],  "", -5, [["expression", format[_EXECscript10,"srifle_EBR_DMS_pointer_snds_F.sqf"]]], "1", "1"],
		["LRR", [3],  "", -5, [["expression", format[_EXECscript10,"lrr.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
Pistolen = 
[
	["Pistolen Waffen",true],
		["Rook40", [2],  "", -5, [["expression", format[_EXECscript11,"hgun_Rook40_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
MG = 
[
	["MG Waffen",true],
		["LMG_Mk200_MRCO", [2],  "", -5, [["expression", format[_EXECscript12,"LMG_Mk200_MRCO_F.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Vehicles",true],
		["Autos", [12], "#USER:AutoMenu", -5, [["expression", ""]], "1", "1"],
		["Offroad", [12], "#USER:OffroadMenu", -5, [["expression", ""]], "1", "1"],
		["Helis", [12], "#USER:HeliMenu", -5, [["expression", ""]], "1", "1"],
		["Flugzeuge", [12], "#USER:FlugzeugMenu", -5, [["expression", ""]], "1", "1"],
		["Panzer", [12], "#USER:PanzerMenu", -5, [["expression", ""]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
AutoMenu = 
[
	["Autos",true],
		["Box_Van", [2],  "", -5, [["expression", format[_EXECscript1,"Box_Van.sqf"]]], "1", "1"],
		["Hatchback", [2],  "", -5, [["expression", format[_EXECscript1,"Hatchback.sqf"]]], "1", "1"],
		["Hatchback_Sport", [2],  "", -5, [["expression", format[_EXECscript1,"Hatchback_Sport.sqf"]]], "1", "1"],
		["Hemtt_Box", [2],  "", -5, [["expression", format[_EXECscript1,"Hemtt_Box.sqf"]]], "1", "1"],
		["Hemtt_Transport", [2],  "", -5, [["expression", format[_EXECscript1,"Hemtt_Transport.sqf"]]], "1", "1"],
		["Offroad", [2],  "", -5, [["expression", format[_EXECscript1,"Offroad.sqf"]]], "1", "1"],
		["Quadbike", [2],  "", -5, [["expression", format[_EXECscript1,"Quadbike.sqf"]]], "1", "1"],
		["SUV", [2],  "", -5, [["expression", format[_EXECscript1,"SUV.sqf"]]], "1", "1"],
		["Tempest_Geraet", [2],  "", -5, [["expression", format[_EXECscript1,"Tempest_Geraet.sqf"]]], "1", "1"],
		["Van", [2],  "", -5, [["expression", format[_EXECscript1,"Van.sqf"]]], "1", "1"],
		["Zamak", [2],  "", -5, [["expression", format[_EXECscript1,"Zamak.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
OffroadMenu = 
[
	["Offroad",true],
		["Hunter", [2],  "", -5, [["expression", format[_EXECscript6,"Hunter.sqf"]]], "1", "1"],
		["Hunter_GMG", [2],  "", -5, [["expression", format[_EXECscript6,"Hunter_GMG.sqf"]]], "1", "1"],
		["Hunter_HMG", [2],  "", -5, [["expression", format[_EXECscript6,"Hunter_HMG.sqf"]]], "1", "1"],
		["Ifrit", [2],  "", -5, [["expression", format[_EXECscript6,"Ifrit.sqf"]]], "1", "1"],
		["Ifrit_HMG", [2],  "", -5, [["expression", format[_EXECscript6,"Ifrit_GMG.sqf"]]], "1", "1"],
		["Marid", [2],  "", -5, [["expression", format[_EXECscript6,"Marid.sqf"]]], "1", "1"],
		["Offroad_HMG", [2],  "", -5, [["expression", format[_EXECscript6,"Offroad_HMG.sqf"]]], "1", "1"],
		["Panther", [2],  "", -5, [["expression", format[_EXECscript6,"Panther.sqf"]]], "1", "1"],
		["Strider", [2],  "", -5, [["expression", format[_EXECscript6,"Strider.sqf"]]], "1", "1"],
		["Strider_GMG", [2],  "", -5, [["expression", format[_EXECscript6,"Strider_GMG.sqf"]]], "1", "1"],
		["Strider_HMG", [2],  "", -5, [["expression", format[_EXECscript6,"Strider_HMG.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
HeliMenu = 
[
	["Helis",true],
		["Blackfoot", [2],  "", -5, [["expression", format[_EXECscript2,"Goosthawk.sqf"]]], "1", "1"],
		["Hellcat", [2],  "", -5, [["expression", format[_EXECscript2,"Hellcat.sqf"]]], "1", "1"],
		["Hummingbird", [2],  "", -5, [["expression", format[_EXECscript2,"Hummingbird.sqf"]]], "1", "1"],
		["Huron", [2],  "", -5, [["expression", format[_EXECscript2,"Huron.sqf"]]], "1", "1"],
		["Kajman", [2],  "", -5, [["expression", format[_EXECscript2,"Kajman.sqf"]]], "1", "1"],
		["Mohawk", [2],  "", -5, [["expression", format[_EXECscript2,"Mohawk.sqf"]]], "1", "1"],
		["Orca", [2],  "", -5, [["expression", format[_EXECscript2,"Orca.sqf"]]], "1", "1"],
		["Pawnee", [2],  "", -5, [["expression", format[_EXECscript2,"Pawnee.sqf"]]], "1", "1"],
		["Taru", [2],  "", -5, [["expression", format[_EXECscript2,"Taru.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
FlugzeugMenu = 
[
	["Flugzeuge",true],
		["Buzzard_AA", [2],  "", -5, [["expression", format[_EXECscript7,"Buzzard_AA.sqf"]]], "1", "1"],
		["Buzzard_CAS", [2],  "", -5, [["expression", format[_EXECscript7,"Buzzard_CAS.sqf"]]], "1", "1"],
		["Neophron", [2],  "", -5, [["expression", format[_EXECscript7,"Neophron.sqf"]]], "1", "1"],
		["Wipeout", [2],  "", -5, [["expression", format[_EXECscript7,"Wipeout.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
PanzerMenu = 
[
	["Panzer",true],
		["Kuma", [3],  "", -5, [["expression", format[_EXECscript5,"Kuma.sqf"]]], "1", "1"],
		["Varsuk", [2],  "", -5, [["expression", format[_EXECscript5,"Varsuk.sqf"]]], "1", "1"],
		["Tigris", [2],  "", -5, [["expression", format[_EXECscript5,"Tigris.sqf"]]], "1", "1"],
		["Sochor", [2],  "", -5, [["expression", format[_EXECscript5,"Sochor.sqf"]]], "1", "1"],
		["Slammer_Up", [2],  "", -5, [["expression", format[_EXECscript5,"Slammer_Up.sqf"]]], "1", "1"],
		["Scorcher", [2],  "", -5, [["expression", format[_EXECscript5,"Scorcher.sqf"]]], "1", "1"],
		["Slammer", [2],  "", -5, [["expression", format[_EXECscript5,"Slammer.sqf"]]], "1", "1"],
		["Sandstorm", [2],  "", -5, [["expression", format[_EXECscript5,"Sandstorm.sqf"]]], "1", "1"],
		["Marshall", [2],  "", -5, [["expression", format[_EXECscript5,"Marshall.sqf"]]], "1", "1"],
		["Mora", [2],  "", -5, [["expression", format[_EXECscript5,"Mora.sqf"]]], "1", "1"],
		["Kamyah", [2],  "", -5, [["expression", format[_EXECscript5,"Kamyah.sqf"]]], "1", "1"],
		["Gorgon", [2],  "", -5, [["expression", format[_EXECscript5,"Gorgon.sqf"]]], "1", "1"],
		["Cheetah", [2],  "", -5, [["expression", format[_EXECscript5,"Cheetah.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

showCommandingMenu "#USER:adminmenu";