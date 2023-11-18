

if (side unit == west) then {
	unit setPos getPos respawn_west;
};

if (side unit == east) then {
	unit setPos getPos respawn_east;
};

if (isRoundStarted) then {
    ["initialize", [unit, [], true]] call BIS_fnc_EGSpectator;
};