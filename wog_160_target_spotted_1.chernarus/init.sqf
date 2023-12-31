﻿TF_defaultwestbackpack = "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";
TF_defaulteastbackpack = "av_r159";

[] call wmt_fnc_briefingmap;
[] execVM "briefing.sqf";

sleep 1;

/* Init fortification */

[] spawn {
    if (isServer) then {
        [east, 250,
            [
                ["land_fortified_nest_big", 4],
                ["land_fort_Watchtower", 4],
                ["land_fort_Bagfence_Bunker", 2],
                ["land_fortified_nest_small", 2],
                ["land_Hbarrier_3_F_D", 2],
                ["Hedgehog", 1],
                ["Wire", 1],
                ["wog_kord_spp_high", 20],
                ["RHS_AGS30_TriPod_VDV", 30]
            ]
        ] call acex_fortify_fnc_registerObjects;
    };
};

/* Welcome message */

[] spawn {
    waitUntil {
        WMT_pub_frzState > 2;
    };

    sleep 5;

    ["Target Spotted", "Chernarus 2008"] spawn BIS_fnc_infotext;
};


/* Remove reserve vehicle in case SL not exists */

if (isServer) then {
    [] spawn {
        if (isNil "us_reserve_1") then {
            deleteVehicle remove_unassign_1;
            deleteVehicle remove_unassign_2;
        };

        if (isNil "ru_reserve_1") then {
            deleteVehicle remove_unassign_3;
            deleteVehicle remove_unassign_4;
        };
    };
};

/* SCUDs Marker positioning */

if (isServer) then {
    [] spawn {
        waitUntil {
            WMT_pub_frzState > 2;
        };

        sleep 900; // 15 min
        
        while {true} do {
            _r = random 300; // 3 min
            _theta1 = (random 720) - 360;
            _theta2 = (random 720) - 360;
            _scud1 = getPosATL scud_1;
            _scud2 = getPosATL scud_2;
            
            if (alive scud_1) then {
                "scud_1" setMarkerPos [(_scud1 select 0) + _r * cos _theta1, (_scud1 select 1) + _r * sin _theta1];
            };

            if (alive scud_2) then {
                "scud_2" setMarkerPos [(_scud1 select 0) + _r * cos _theta2, (_scud2 select 1) + _r * sin _theta2];
            };
            
            sleep 180;
            
            // for future posible versions
            // if (getmarkerColor "docs1" == "ColorBlack") then {
                // _r = random 300;
                // _theta = (random 720)-360;
                // _scud1 = getPosATL scud_1;
                // "scud_1" setMarkerPos [(_scud1 select 0) + _r * cos _theta, (_scud1 select 1) + _r * sin _theta];
                // sleep 60;
            // };
        };
    }
};