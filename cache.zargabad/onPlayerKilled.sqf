// missionNamespace setVariable ["HIA3_Spectator_Enable", false];

// Re-enable input if player is dead (acebug workaround) - probably not needed anymore
if (userInputDisabled) then
{
   disableUserInput false;
};

if (isRoundStarted) then {
	["Initialize", [player, [], true, true, true, true, true, true, true, true]] call BIS_fnc_EGSpectator;
};

