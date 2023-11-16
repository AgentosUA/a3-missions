[] spawn {
    if (isServer) then {
        totalrounds = 10;
        roundtime = 60;
        timeouttime = 45;
        
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
        target = "CUP_hromada_beden_dekorativniX" createvehicle getPos target_spawn_1;
        
        createNewCargo = {
            deletevehicle target;
            target = "CUP_hromada_beden_dekorativniX" createvehicle getPos target_spawn_1;
        };
        
        startNewround = {
            [] call createNewCargo;

            _time = roundtime;
            isBlueAlive = true;
            isRedAlive = true;
            _positions = [
                [getPos target_spawn_1, getPos west_spawn_1, getPos east_spawn_1]
                // [getPos target_spawn_2, getPos west_spawn_2, getPos east_spawn_2]
                // [getPos target_spawn_3, getPos west_spawn_3, getPos east_spawn_3]
            ];

            /* Teleport players & target to round positions */
            _newPosition = selectRandom(_positions);
            _targetPosition = _newPosition select 0;
            _westPosition = _newPosition select 1;
            _eastPosition = _newPosition select 2;
            
            target setDamage 0;
            target setPos _targetPosition;

            {
                _x setPos _westPosition;
            } forEach westPlayers;

            {
                _x setPos _eastPosition;
            } forEach eastPlayers;
            
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
            hintSilent format["West: %1 \nEast: %1", blueWins, redWins];
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

             isRoundStarted = false;
            sleep 1;

            /* Teleport players to bases */
            {
                _x setPos getPos respawn_west;
            } forEach westPlayers;

            {
                _x setPos getPos respawn_east;
            } forEach eastPlayers;

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