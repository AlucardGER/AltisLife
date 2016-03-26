enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

if(isDedicated && isNil("life_ATMhacked")) then
{
 life_ATMhacked = 0;
 publicVariable "life_ATMhacked";
 diag_log format["life_ATMhacked: %1",life_ATMhacked];
};

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
[] execVM "AdminTool\loop.sqf"; //Load AdminMenu
[] execVM "script\fn_statusBar.sqf"; //Load the Statusbar
nul=[] execVM "script\intlight.sqf"; //Load Interior Lighting
[] execVM "CLAY_CarRadio\initCarRadio.sqf"; //Load Car Radio