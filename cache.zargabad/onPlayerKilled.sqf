if (isRoundStarted) then {
	["Initialize", [player, [], true]] call BIS_fnc_EGSpectator;
};

format ["isRoundStarted: %1", isRoundStarted] remoteExec["hint"];
