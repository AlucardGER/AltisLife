waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561198084167946","76561198003532796","76561198102879481","76561198015572039","76561198094627332"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"AdminTool\Admin-Pfad.sqf","",5,false,true,"",""];
};