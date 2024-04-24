#include "defines.hpp"
if !(hasInterface) exitWith {};
// only take 5/6ths of the set value in minutes (50), then convert to seconds (60), so total * 3000, but run 5 times in that time, so / 5 = 600
private _noWater = (acex_field_rations_timeWithoutWater * 600);
private _noFood = (acex_field_rations_timeWithoutFood * 600);
private _time = _noWater min _noFood;
[
	{
		if !(isNull (findDisplay 312)) then {
			ACE_player setVariable ["acex_field_rations_thirst",0];
			ACE_player setVariable ["acex_field_rations_hunger",0];
		};
		call FUNC(loop);
	},
	[],
	_time
] call CBA_fnc_waitAndExecute;