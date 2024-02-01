_unit = (_this select 1);
_loadout = (_this select 3) select 0;

_side = 'opfor';

switch (_loadout) do {
    case 0: {
        // Squad leader
        execVM format ["gear\%1\SL.sqf", _side];
    };
    
    case 1: {
        // Automatic Rifleman
        execVM format ["gear\%1\AR.sqf", _side];
    };
    
    case 2: {
        // Rifleman
        execVM format ["gear\%1\RM.sqf", _side];
    };
    
    case 3: {
        // Medic
        execVM format ["gear\%1\MED.sqf", _side];
    };
    
    case 4: {
        // Marksman
        execVM format ["gear\%1\DM.sqf", _side];
    };
    
    default {
        // player setVariable ["Saved_loadout", getUnitloadout player];
        // // Save loadout
        // return;
    };
};