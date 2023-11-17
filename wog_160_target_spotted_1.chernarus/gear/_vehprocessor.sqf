_veh = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;
if (not local _veh) exitwith {};

_common_processor = {
    clearweaponCargoGlobal _veh;
    clearmagazineCargoGlobal _veh;
    clearitemCargoGlobal _veh;
    clearBackpackCargoGlobal _veh;
};

#include "veh_CH.sqf"
#include "veh_USMC.sqf"
_veh call _common_processor;

switch _faction do {
    case "CHDKZ"		: {
        [_veh, _loadout] call _V_CHDKZ_processor
    };
    case "USMC"		: {
        [_veh, _loadout] call _V_USMC_processor
    };
    default {
        diag_log format ["Undefined vehicle faction : %1", _faction]
    };
};