_unit = (_this select 1);
_loadout = (_this select 3) select 0;

switch (_loadout) do {
    case 0: {
        // Squad leader
        execVM "gear\bluefor\SL.sqf";
    };
    
    case 1: {
        // Automatic Rifleman
        execVM "gear\bluefor\AR.sqf";
    };
    
    case 2: {
        // Rifleman
        execVM "gear\bluefor\RM.sqf";
    };
    
    case 3: {
        // Medic
        execVM "gear\bluefor\MED.sqf";
    };
    
    case 3: {
        // Marksman
        execVM "gear\bluefor\DM.sqf";
    };
    
    default {};
};