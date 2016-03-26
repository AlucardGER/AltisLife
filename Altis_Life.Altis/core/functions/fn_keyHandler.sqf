/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

switch (_code) do
{	
	//Map Key
	case _mapKey:
	{
		if(playerSide == west && !visibleMap) then {
			[] spawn life_fnc_copMarkers;
			[] spawn life_fnc_teamMarkers;
		};
	};
	
	//AS-Admin Menu
	case 60:
	{
		closeDialog 0;[] spawn life_fnc_openMenu;
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
			_handled = true;
		};
	};
	
		//Shift+P = Faded Sound
		case 25:
		{
			if(_shift) then
			{
			[] call life_fnc_fadeSound;
			_handled = true;
			};
		};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship") && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
    case 38: //Shift + L Key = Emergency Lights - Radar
    {
        _veh = vehicle player;
        if (_shift && !_alt && !_ctrlKey) then
        {
            if(playerSide in [west,independent] && _veh != player && ((driver _veh) == player)) then
            {
                if(!isNil {_veh getVariable "lights"}) then
                {
                    if(playerSide == west) then
                    {
                        [_veh] call life_fnc_sirenLights;
                    } else {
                        [_veh] call life_fnc_medicSirenLights;
                    };
                };
            };
            _handled = true;
        };
        if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
    };
 
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//V Key
	case 47:
	{
		//get out of restraints just v
		if(playerSide != west && (player getVariable "restrained") OR (player getVariable "transporting")) then {_handled = true;};
		
		//shift + v surrender
		if(_shift) then {_handled = true;};
		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};
	
   case 33: //F Key = Sirens
    {
        if (!_shift && !_alt && !_ctrlKey) then //F Key = EMS/Cops Sirens
        {
            _veh = vehicle player;
            if(playerSide in [west,independent] && _veh != player && !life_siren_active && ((driver _veh) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    uiSleep 0.5;
                    life_siren_active = false;
                };
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText [localize "STR_MISC_SirensOFF","PLAIN"];
                    _veh setVariable["siren",false,true];
                } else {
                    titleText [localize "STR_MISC_SirensON","PLAIN"];
                    _veh setVariable["siren",true,true];
                    if(playerSide == west) then {
                        [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    } else {
                        [[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
                    };
                };
            };
        };
    };
 
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
    };
	
    //U Key
    case 22:
    {
        if(!_alt && !_ctrlKey) then {
            if(vehicle player == player) then {
                _veh = cursorTarget;
            } else { //www.infinity-core.de
                _veh = vehicle player;
            };
            
            if(_veh isKindOf "House_F" && playerSide == civilian) then {
                if(_veh in life_vehicles && player distance _veh < 8) then {
                    _door = [_veh] call life_fnc_nearestDoor;
                    if(_door == 0) exitWith {hint "Du bist nicht in der Nähe einer Tür!"};
                    _locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
                    if(_locked == 0) then {
                        _veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
                        _veh animate [format["door_%1_rot",_door],0];
                        systemChat "You have locked that door.";
                    } else {
                        _veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
                        _veh animate [format["door_%1_rot",_door],1];
                        systemChat "Du hast die Tür aufgeschlossen.";
                    };
                };
            } else {
                _locked = locked _veh;
            
            if(_veh in life_vehicles && player distance _veh < 8) then
            {
                if(_locked == 2) then
                {
                    if(local _veh) then
                    {
                        _veh lock 0;
                        _veh animateDoor ["door_back_R",1];
                        _veh animateDoor ["door_back_L",1];
                            _veh animateDoor ['door_R',1]; 
                            _veh animateDoor ['door_L',1];
                            _veh animateDoor ['Door_rear',1];
                            _veh animateDoor ['Door_LM',1];
                            _veh animateDoor ['Door_RM',1];
                            _veh animateDoor ['Door_LF',1];
                            _veh animateDoor ['Door_RF',1];
                            _veh animateDoor ['Door_LB',1];
                            _veh animateDoor ['Door_RB',1];
                    }
                        else //www.infinity-core.de
                    {
                        [[_veh,0], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
                        _veh animateDoor ["door_back_R",1];
                        _veh animateDoor ["door_back_L",1];
                            _veh animateDoor ['door_R',1]; 
                            _veh animateDoor ['door_L',1];
                            _veh animateDoor ['Door_rear',1];
                            _veh animateDoor ['Door_LM',1];
                            _veh animateDoor ['Door_RM',1];
                            _veh animateDoor ['Door_LF',1];
                            _veh animateDoor ['Door_RF',1];
                            _veh animateDoor ['Door_LB',1];
                            _veh animateDoor ['Door_RB',1];
                    };
                    hint composeText [ image "icons\unlock.paa", "  Fahrzeug aufgeschlossen" ];
                    player say3D "unlock";
                    
                }
                    else //www.infinity-core.de
                {
                    if(local _veh) then
                    {
                        _veh lock 2;
                        _veh animateDoor ["door_back_R",0];
                        _veh animateDoor ["door_back_L",0];
                            _veh animateDoor ['door_R',0]; 
                            _veh animateDoor ['door_L',0];
                            _veh animateDoor ['Door_rear',0];
                            _veh animateDoor ['Door_LM',0];
                            _veh animateDoor ['Door_RM',0];
                            _veh animateDoor ['Door_LF',0];
                            _veh animateDoor ['Door_RF',0];
                            _veh animateDoor ['Door_LB',0];
                            _veh animateDoor ['Door_RB',0];

                    }
                        else //www.infinity-core.de
                    {
                        [[_veh,2], "life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
                        _veh animateDoor ["door_back_R",0];
                        _veh animateDoor ["door_back_L",0];
                            _veh animateDoor ['door_R',0]; 
                            _veh animateDoor ['door_L',0];
                            _veh animateDoor ['Door_rear',0];
                            _veh animateDoor ['Door_LM',0];
                            _veh animateDoor ['Door_RM',0];
                            _veh animateDoor ['Door_LF',0];
                            _veh animateDoor ['Door_RF',0];
                            _veh animateDoor ['Door_LB',0];
                            _veh animateDoor ['Door_RB',0];
                    };
                    
                    hint composeText [ image "icons\lock.paa", "  Fahrzeug abgeschlossen" ];
                    player say3D "car_lock";

                
                    };
                };
            };
        };
    };
	
	    case 48: // B Key = "Move Bitch" Chirp for Cop & EMS
    {
        if (!_shift && !_alt && !_ctrlKey) then
        {
            _veh = vehicle player;
            if(playerSide in [west,independent] && _veh != player && !life_chirp_active && ((driver _veh) == player)) then
            {
                [] spawn
                {
                    life_chirp_active = true;
                    uiSleep 0.5;
                    life_chirp_active = false;
                };
                if(playerSide == west) then
                {
                    [[_veh],"life_fnc_copChirp",true,false] spawn life_fnc_MP;
                } else {
                    [[_veh],"life_fnc_medicChirp",true,false] spawn life_fnc_MP;
                };
            };
        };
    };
	
	    // O, gate opener
        case 24:
    {

        if(playerSide in [west,independent,east] && vehicle 
		player != player && ((driver vehicle player) == player)) then 
        {
            [] call life_fnc_Opener;
        };
    };
};

_handled;