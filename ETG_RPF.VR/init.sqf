/*
	Filename: init.sqf
	Author: Kellojo
	Description: -
*/

//Add vehicles to get positions for here:
vehicle_list = ["C_Heli_Light_01_civil_F","C_Heli_Light_01_civil_F"];

//Player and var setup
removeAllWeapons player;
player allowDamage false;
cur_index = -1;
Pos_Array = [];
x1 = 1;
x2 = 1;
x3 = 1;

//Setup
fn_rpf = compile preprocessFile "fn_rpf.sqf";
waituntil {!(IsNull (findDisplay 46))};
key_Down_ETG = (findDisplay 46) displayAddEventHandler ["KeyDown", "[2,_this select 1,_this select 2,_this select 3,_this select 4] call fn_rpf;"];
33 cutRsc ["ETG_RPF_HUD","PLAIN"];

//orientation markers
addMissionEventHandler ["Draw3D", {
	drawIcon3D ["", [0.59,0.98,0.13,1], position ArrowUp, 0, 0, 0, "Arrow Up", 1, 0.05, "PuristaMedium"];
	drawIcon3D ["", [0.59,0.98,0.13,1], position ArrowDown, 0, 0, 0, "Arrow Down", 1, 0.05, "PuristaMedium"];
	drawIcon3D ["", [1,0,0,1], position ArrowLeft, 0, 0, 0, "Arrow Left", 1, 0.05, "PuristaMedium"];
	drawIcon3D ["", [1,0,0,1], position ArrowRight, 0, 0, 0, "Arrow Right", 1, 0.05, "PuristaMedium"];
}];
