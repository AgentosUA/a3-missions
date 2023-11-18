TF_defaultwestbackpack = "rhs_sidor";
TF_defaulteastbackpack = "rhs_sidor";

[] spawn {
    if (isServer) then {
        totalrounds = ["TotalRounds"] call BIS_fnc_getParamValue;
        roundtime = ["RoundTime"] call BIS_fnc_getParamValue;
        timeouttime = ["PrepareTime"] call BIS_fnc_getParamValue;
        
        isRoundStarted = false;
        isBlueAlive = true;
        isRedAlive = true;
        blueWins = 0;
        redWins = 0;
        currentRound = 0;
        
        westPlayers = allplayers select {
            side _x == west
        };

        eastPlayers = allplayers select {
            side _x == east
        };
        
        target = "CUP_hromada_beden_dekorativniX" createvehicle getPos target_spawn_1;
        targetMarker = "target_marker";
        targetSpawns = [target_spawn_1, target_spawn_2, target_spawn_3, target_spawn_4, target_spawn_5, target_spawn_6, target_spawn_7, target_spawn_8, target_spawn_9, target_spawn_10];
        westSpawns = ["west_spawn_1", "west_spawn_2", "west_spawn_3", "west_spawn_4", "west_spawn_5", "west_spawn_6", "west_spawn_7", "west_spawn_8", "west_spawn_9", "west_spawn_10"];
        eastSpawns = ["east_spawn_1", "east_spawn_2", "east_spawn_3", "east_spawn_4", "east_spawn_5", "east_spawn_6", "east_spawn_7", "east_spawn_8", "east_spawn_9", "east_spawn_10"];
        hintMarkers = ["hint_1", "hint_2", "hint_3", "hint_4", "hint_5", "hint_6", "hint_7", "hint_8", "hint_9", "hint_10"];

        if (side player == east) then {
            {
                deleteMarkerLocal _x;
            } forEach hintMarkers;
        };

        if (side player == west) then {
            {
                deleteMarkerLocal "target_marker";
            } forEach hintMarkers;
        };

        hideAllMarkers = {
            {
                _x setMarkerAlpha 0;
            } forEach allMapMarkers;
        };

        createNewCargo = {
            deletevehicle target;
            target = "CUP_hromada_beden_dekorativniX" createvehicle getPos target_spawn_1;
        };
        
        startNewround = {
            [] call createNewCargo;

            _time = roundtime - 5;
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

            /* Set markers */
            targetMarker setMarkerAlpha 1;
            targetMarker setMarkerPos _targetPosition;

            _hintMarker setMarkerColor "ColorGreen";
            _hintMarker setMarkerAlpha 1;

            /* Teleport players */
            {
                _x setPos _westPosition;
            } forEach westPlayers;

            {
                _x setPos _eastPosition;
            } forEach eastPlayers;
            
            /* Activate check for alive players in base trigger */
            isRoundStarted = true;

            /* Start round timer */            
            while {_time > 0 && isBlueAlive && isRedAlive && alive target} do {
               _time = _time - 1;
                if (_time < roundtime - 5) then {
                    hintSilent format["Round #%1 started!", currentRound + 1];
                } else {
                    hintSilent format["Round time left: \n %1", [((_time)/60)+.01, "HH:MM"] call BIS_fnc_timetoString];
                };
                sleep 1;
            };
        };
        
        awaitingPlayers = {
            sleep 2;
            hintSilent "Welcome to the Cache Hunt!";
            sleep 5;
            hintSilent "Rules are simple:\n\nWest team need to find & destroy weapon cache or eliminate enemy team\n\nEast team need to defend weapon cache or eliminate enemy team";
            sleep 10;

            // waitUntil { sleep 1; hint "Waiting for players..."; count westPlayers > 0 && count eastPlayers > 0; };
            
            // TODO: create function for timer instead of hardcode
            hintSilent "Game starting in 10 seconds!";
            sleep 5;
            hintSilent "5";
            sleep 1;
            hintSilent "4";
            sleep 1;
            hintSilent "3";
            sleep 1;
            hintSilent "2";
            sleep 1;
            hintSilent "1";
            sleep 1;
        };
        
        displayWins = {
            hintSilent format["West: %1 \nEast: %2", blueWins, redWins];
            sleep 5;
        };
        
        timeoutround = {
            ["Terminate"] call BIS_fnc_EGSpectator;
            _timeouttime = timeouttime;
            while {_timeouttime > 0} do {
                _timeouttime = _timeouttime - 1;
                hintSilent format["Next round begins in: \n %1", [((_timeouttime)/60)+.01, "HH:MM"] call BIS_fnc_timetoString];
                sleep 1;
            };
        };
        
        checkWinside = {
            isRoundStarted = false;
            [] call hideAllMarkers;

            if (!alive target || !isRedAlive) then {
                blueWins = blueWins + 1;
                hint "West wins!";
            } else {
                redWins = redWins + 1;
                hint "East wins!";
            };

            sleep 1;

            /* Teleport players to bases */
            {
                _x setPos getPos respawn_west;
            } forEach westPlayers;

            {
                _x setPos getPos respawn_east;
            } forEach eastPlayers;

            sleep 5;
        };
    };
    
    start = {
        [] call awaitingPlayers;
        [] call createNewCargo;
        
        while {currentRound < totalrounds} do {
            [] call startNewround;
            [] call checkWinside;
            [] call displayWins;
            [] call timeoutround;
            currentRound = currentRound + 1;
        };
        
        if (blueWins > redWins) then {
            hint "Bluefor wins the match!";
            sleep 5;
        } else {
            hint "Redfor wins the match!";
            sleep 5;
        };
        
        ["END1"] remoteExec ["endMission", 0, true];
    };
    
    [] call start;
};