[] spawn {
    if (isServer) then {
        totalrounds = 10;
        roundtime = 15;
        timeouttime = 15;
        
        isRoundStarted = false;
        isBlueAlive = true;
        isRedAlive = true;
        blueWins = 0;
        redWins = 0;
        
        westPlayers = allplayers select {
            side _x == west
        };
        // Returns all players of side west.
        eastPlayers = allUnits select {
            side _x == east
        };
        // Returns all players of side east.
        
        currentround = 1;
        target = "CUP_hromada_beden_dekorativniX" createvehicle getPos start_place;
        
        createNewCargo = {
            deletevehicle target;
            target = "CUP_hromada_beden_dekorativniX" createvehicle getPos start_place;
        };
        
        startNewround = {
            [] call createNewCargo;

            _time = roundtime;
            isBlueAlive = true;
            isRedAlive = true;
            _positions = [
                [getPos target_spawn_1, getPos west_spawn_1, getPos east_spawn_1]
                [getPos target_spawn_2, getPos west_spawn_2, getPos east_spawn_2]
                [getPos target_spawn_3, getPos west_spawn_3, getPos east_spawn_3]
            ];

            /* Teleport players to bases */
            _newPosition = selectRandom(_positions);
            _currentPosition = _newPosition[0];
            _westPositions = _newPosition[1];
            _eastPositions = _newPosition[1];
            
            target setDamage 0;
            target setPos _currentPosition;
            
            sleep 1;
            isRoundStarted = true;
            
            while {_time > 0 && isBlueAlive && isRedAlive && alive target} do {
               _time = _time - 1;
                hintSilent format["round time left: \n %1", [((_time)/60)+.01, "HH:MM"] call BIS_fnc_timetoString];
                sleep 1;
            };
        };
        
        welcomehint = {
            hintSilent "Welcome to the Cash Destroy mode!";
            sleep 5;
            
            hintSilent "Game starting in 5 seconds!";
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
            hintSilent format["BLUEfor: %1 \nREDfor: %1", blueWins, redWins];
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
            sleep 1;

            /* Teleport players to bases */
            {
                _x setPos getPos respawn_west;
            } forEach westPlayers;

            {
                _x setPos getPos respawn_east;
            } forEach eastPlayers;

            switch true do {
                case (!alive target || !isRedAlive): {
                    blueWins = blueWins + 1;
                    hint "Bluefor wins!";
                };

                case (alive target || !isBlueAlive): {
                    redWins = redWins + 1;
                    hint "Redfor wins!";
                }
            };

            sleep 5;
            
            // if (!alive target || !isRedAlive) exitWith {
            //     blueWins = blueWins + 1;
            //     hint "Bluefor wins!";
            //     sleep 5;
            // };
            
            // if (alive target || !isBlueAlive) exitWith {
            //     redWins = redWins + 1;
            //     hint "Redfor wins!";
            //     sleep 5;
            //     exitWith {};
            // };
        };
    };
    
    start = {
        [] call welcomehint;
        [] call createNewCargo;
        
        while {currentround < totalrounds} do {
            [] call startNewround;
            [] call checkWinside;
            [] call displayWins;
            [] call timeoutround;
            currentround = currentround + 1;
        };
        
        if (blueWins > redWins) then {
            hint "Bluefor wins the match!";
        } else {
            hint "Redfor wins the match!";
        };
        
        ["END1"] remoteExec ["endMission", 0, true];
    };
    
    [] call start;
};