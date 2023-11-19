if (side player == west) then {
	player setPos getPos respawn_west;
};

if (side player == east) then {
	player setPos getPos respawn_east;
};

if (isRoundStarted) then {
    ["initialize", [player, [], true]] call BIS_fnc_EGSpectator;
};