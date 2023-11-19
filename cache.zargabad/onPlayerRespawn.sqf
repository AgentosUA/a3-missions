params [["_newUnit", "_oldUnit"]];

if (side group _newUnit == west ) then {
	_newUnit setPos getPos respawn_west;
};

if (side group _newUnit == east) then {
	_newUnit setPos getPos respawn_east;
};
