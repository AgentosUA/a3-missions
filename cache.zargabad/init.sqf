TF_defaultwestbackpack = "rhs_sidor";
TF_defaulteastbackpack = "rhs_sidor";
wog3_no_auto_long_range_radio = true;
currentHintMarker = "wmt_west_hint_1";
targetMarker = "target_marker";

hideSpectator = {
    ["Terminate"] remoteExecCall ["BIS_fnc_EGSpectator"];
};

saveLoadout = {
    player setVariable ["saved_loadout", getUnitloadout player];
};

loadSavedLoadout = {
  player setUnitLoadout(player getVariable["saved_loadout",[]]);
};

[] spawn {
    waitUntil { not isNull player };
    /* Spectator */

    bluefor_flag addAction ["Spectate",{[] call BIS_fnc_respawnSpectator;},nil,6,true,true,"",""];
    opfor_flag addAction ["Spectate",{[] call BIS_fnc_respawnSpectator;},nil,6,true,true,"",""];

    /* Stamina */

    if (0 == ["Stamina"] call BIS_fnc_getParamValue) then {
        player enableFatigue false;
        player addEventhandler ["Respawn", {player enableFatigue false}];
    };

    /* Virtual arsenal */

    if (0 == ["ArsenalSettings"] call BIS_fnc_getParamValue || 3 == ["ArsenalSettings"] call BIS_fnc_getParamValue) then {
        // bluefor_arsenal addAction ["Open Virtual Arsenal", {["Open",true] spawn BIS_fnc_arsenal}]; 
        // opfor_arsenal addAction ["Open Virtual Arsenal", {["Open",true] spawn BIS_fnc_arsenal}];
    };

    /* Loadout */

    if (0 == ["ArsenalSettings"] call BIS_fnc_getParamValue || 1 == ["ArsenalSettings"] call BIS_fnc_getParamValue) then {
        /* BLUEFOR GEAR PRESETS */
    
        bluefor_arsenal addAction ["Squad Leader", "gear\bluefor\loadout.sqf", [0], 6, false, true, "", ""];

        bluefor_arsenal addAction ["Automatic Rifleman", "gear\bluefor\loadout.sqf", [1], 6, false, true, "", ""];

        bluefor_arsenal addAction ["Rifleman", "gear\bluefor\loadout.sqf", [2], 6, false, true, "", ""];

        bluefor_arsenal addAction ["Medic", "gear\bluefor\loadout.sqf", [3], 6, false, true, "", ""];

        bluefor_arsenal addAction ["Marksman", "gear\bluefor\loadout.sqf", [4], 6, false, true, "", ""];

        /* OPFOR GEAR PRESETS */

        opfor_arsenal addAction ["Squad Leader", "gear\opfor\loadout.sqf", [0], 6, false, true, "", ""];

        opfor_arsenal addAction ["Automatic Rifleman", "gear\opfor\loadout.sqf", [1], 6, false, true, "", ""];

        opfor_arsenal addAction ["Rifleman", "gear\opfor\loadout.sqf", [2], 6, false, true, "", ""];

        opfor_arsenal addAction ["Medic", "gear\opfor\loadout.sqf", [3], 6, false, true, "", ""];

        opfor_arsenal addAction ["Marksman", "gear\opfor\loadout.sqf", [4], 6, false, true, "", ""];
    };
};

[] spawn {
    while {true} do {
       waitUntil {inputAction "Eject" > 0 || inputAction "ingamePause" > 0};
       [] call hideSpectator;
    };
};

[] spawn {
    isRoundStarted = false;

    while { true } do {
       if (side group player == west && isRoundStarted) then {
            currentHintMarker setMarkerAlphaLocal 1;
            currentHintMarker setMarkerColorLocal "ColorGreen";
       };

       if (side group player == east && isRoundStarted) then {
            targetMarker setMarkerAlphaLocal 1;
            targetMarker setMarkerPosLocal getPos target;
       };

       sleep 1;
    };
};

[] spawn {
    if (isServer) then {
        totalrounds = ["TotalRounds"] call BIS_fnc_getParamValue;
        roundtime = ["RoundTime"] call BIS_fnc_getParamValue;
        timeouttime = ["PrepareTime"] call BIS_fnc_getParamValue;
        roundConditionType = ["RoundConditionEnd"] call BIS_fnc_getParamValue;

        isRoundStarted = false;
        publicVariable "isRoundStarted";

        isBlueAlive = true;
        isRedAlive = true;
        blueWins = 0;
        redWins = 0;
        currentRound = 0;

        target = "CUP_hromada_beden_dekorativniX" createvehicle getPos target_spawn_1;
        targetSpawns = [target_spawn_1, target_spawn_2, target_spawn_3, target_spawn_4, target_spawn_5, target_spawn_6, target_spawn_7, target_spawn_8, target_spawn_9, target_spawn_10];
        westSpawns = ["west_spawn_1", "west_spawn_2", "west_spawn_3", "west_spawn_4", "west_spawn_5", "west_spawn_6", "west_spawn_7", "west_spawn_8", "west_spawn_9", "west_spawn_10"];
        eastSpawns = ["east_spawn_1", "east_spawn_2", "east_spawn_3", "east_spawn_4", "east_spawn_5", "east_spawn_6", "east_spawn_7", "east_spawn_8", "east_spawn_9", "east_spawn_10"];
        hintMarkers = ["wmt_west_hint_1", "wmt_west_hint_2", "wmt_west_hint_3", "wmt_west_hint_4", "wmt_west_hint_5", "wmt_west_hint_6", "wmt_west_hint_7", "wmt_west_hint_8", "wmt_west_hint_9", "wmt_west_hint_10"];

        hideAllMarkers = {
            {
               _x setMarkerAlpha 0;
            } forEach allMapMarkers;
        };

        hideCorps = {
            {
                deleteVehicle _x;
                sleep 0.01;
            } forEach allDeadMen;
        };

        getWestPlayers = {
            allunits select {
                side group _x == west;
            };
        };

        getEastPlayers = {
            allunits select {
                side group _x == east;
            };
        };

        [] call hideAllMarkers;

        waitUntil {
            sleep 1;
            westPlayers = [] call getWestPlayers;
            eastPlayers = [] call getEastPlayers;
            "Waiting for players..." remoteExec ["hint"];
            count westPlayers > 0 && count eastPlayers > 0;
        };

        westPlayers = [] call getWestPlayers;
        eastPlayers = [] call getEastPlayers;

        createNewCargo = {
            deletevehicle target;
            target = "CUP_hromada_beden_dekorativniX" createvehicle getPos target_spawn_1;
        };

        timeoutround = {
            params ["_timeouttime"];

            while {_timeouttime > 0} do {
                _timeouttime = _timeouttime - 1;
                format["Next round begins in: \n %1", [((_timeouttime)/60)+.01, "HH:MM"] call BIS_fnc_timetoString] remoteExec ["hintSilent"];
                sleep 1;
            };
        };
            
        startNewround = {
            [] call saveLoadout;
            [] call createNewCargo;
            _time = roundtime;
            isBlueAlive = true;
            isRedAlive = true;

            _entitites = [
                [targetSpawns select 0, westSpawns select 0, eastSpawns select 0, hintMarkers select 0],
                [targetSpawns select 1, westSpawns select 1, eastSpawns select 1, hintMarkers select 1],
                [targetSpawns select 2, westSpawns select 2, eastSpawns select 2, hintMarkers select 2],
                [targetSpawns select 3, westSpawns select 3, eastSpawns select 3, hintMarkers select 3],
                [targetSpawns select 4, westSpawns select 4, eastSpawns select 4, hintMarkers select 4],
                [targetSpawns select 5, westSpawns select 5, eastSpawns select 5, hintMarkers select 5],
                [targetSpawns select 6, westSpawns select 6, eastSpawns select 6, hintMarkers select 6],
                [targetSpawns select 7, westSpawns select 7, eastSpawns select 7, hintMarkers select 7],
                [targetSpawns select 8, westSpawns select 8, eastSpawns select 8, hintMarkers select 8],
                [targetSpawns select 9, westSpawns select 9, eastSpawns select 9, hintMarkers select 9]
            ];

                /* Get prepared entities and select one random */
                _selectedEntity = selectRandom _entitites;
                _targetPosition = getPos (_selectedEntity select 0);
                _westPosition = getMarkerPos (_selectedEntity select 1);
                _eastPosition = getMarkerPos (_selectedEntity select 2);
                _hintMarker = _selectedEntity select 3;

                /* Set target position */
                target setDamage 0;
                target setPos _targetPosition;
                publicVariable "target";

                /* Set markers */

                westPlayers = [] call getWestPlayers;
                eastPlayers = [] call getEastPlayers;
                
                currentHintMarker = _hintMarker;
                publicVariable "currentHintMarker";

                /* Load saved loadout */

                [] call loadSavedLoadout;

                /* Teleport players */

                {
                    _x setDamage 0;
                    _x setPos _westPosition;
                } forEach westPlayers;

                {
                    _x setDamage 0;
                    _x setPos _eastPosition;
                } forEach eastPlayers;

                [] call hideSpectator;
                
                /* Activate check for alive players in base trigger */

                isRoundStarted = true;
                publicVariable "isRoundStarted";

                /* Start round timer */

                while {_time > 0 && isRoundStarted} do {
                    _time = _time - 1;
                    _blueAliveCount = {alive _x && _x inArea zone} count westPlayers;
                    _eastAliveCount = {alive _x && _x inArea zone} count eastPlayers;

                    if (_blueAliveCount == 0) then {
                        isBlueAlive = false;
                    };

                    if (_eastAliveCount == 0) then {
                        isRedAlive = false;
                    };

                    if (!isBlueAlive || (roundConditionType == 1 && (!alive target || !isRedAlive)) || (roundConditionType == 2 && !alive target)) then {
                        isRoundStarted = false;
                    };

                    // format["%1, %2", _blueAliveCount, westPlayers] remoteExec ["hintSilent"];
                    format["Round time left: \n %1", [((_time)/60)+.01, "HH:MM"] call BIS_fnc_timetoString] remoteExec ["hintSilent"];
    
                    sleep 1;
                };
            };
            
            awaitingPlayers = {
                sleep 2;
                "Welcome to the Cache Hunt!" remoteExec ["hintSilent"];
                sleep 5;
                "Rules are simple:\n\nWest team need to find & destroy weapon cache or eliminate enemy team\n\nEast team need to defend weapon cache or eliminate enemy team" remoteExec ["hintSilent"];
                sleep 15;
                [timeouttime] call timeoutround;
            };
            
            displayWins = {
                format["West: %1 \nEast: %2", blueWins, redWins] remoteExec ["hintSilent"];
                sleep 5;
            };
            
            checkWinside = {
                isRoundStarted = false;
                publicVariable "isRoundStarted";
                [] call hideAllMarkers;
                [] call hideCorps;
                [] call hideSpectator;

                if (!alive target || (roundConditionType == 1 && !isRedAlive)) then {
                    blueWins = blueWins + 1;
                    "West wins!" remoteExec ["hint"];
                } else {
                    redWins = redWins + 1;
                    "East wins!" remoteExec ["hint"];
                };

                /* Teleport players to bases */
                westPlayers = [] call getWestPlayers;
                eastPlayers = [] call getEastPlayers;

                {
                    _x setDamage 0;
                    _x setPos getPos respawn_west;
                    _x call ace_medical_treatment_fnc_fullHealLocal;
                    [_x, false] call ace_medical_fnc_setUnconscious;
                } forEach westPlayers;

                {
                    _x setDamage 0;
                    _x setPos getPos respawn_east;
                    _x call ace_medical_treatment_fnc_fullHealLocal;
                    [_x, false] call ace_medical_fnc_setUnconscious;
                } forEach eastPlayers;

                sleep 5;
            };
        
        start = {
            [] call awaitingPlayers;
            [] call createNewCargo;
            
            while {currentRound < totalrounds} do {
                [] call startNewround;
                [] call checkWinside;
                [] call displayWins;
                [timeouttime] call timeoutround;
                currentRound = currentRound + 1;
            };
            
            if (blueWins > redWins) then {
                "West wins the match!" remoteExec ["hint"];
                sleep 5;
            } else {
                "East wins the match!" remoteExec ["hint"];
                sleep 5;
            };

            ["END1"] remoteExec ["endMission", 0, true];
        };
        
        [] call start;
    };
};