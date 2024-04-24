#include "defines.hpp"

if !(hasInterface) exitWith {};

player addEventHandler ["Respawn", 
	{
		call FUNC(loop);
	}
];
call FUNC(loop);
private _msg = format ["Version %1 loaded.", VERSION_PATCH];
RPT_BASIC(_msg);