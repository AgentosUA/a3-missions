_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;
if (not local _unit) exitwith {};

_common_processor = {
    removeAllweapons _unit;
    removeAllItems _unit;
    removeAllAssignedItems _unit;
    removeuniform _unit;
    removevest _unit;
    removeBackpack _unit;
    removeHeadgear _unit;
    removeGoggles _unit;
    _unit linkItem 'ItemCompass';
    _unit linkItem 'ItemWatch';
    _unit linkItem 'Itemradio';
};

#include "USMC.sqf"
#include "CHDKZ.sqf"

_unit call _common_processor;

switch _faction do {
    case "USMC"		: {
        [_unit, _loadout] call _USMC_processor
    };
    case "CHDKZ": {
        [_unit, _loadout] call _CHDKZ_processor
    };
    
    default {
        diag_log format ["Undefined unit faction : %1", _faction]
    };
};

/*
for '_i' from 1 to 4 do {
    _unit addItemtouniform 'ACE_fieldDressing';
};
for '_i' from 1 to 4 do {
    _unit addItemtouniform 'ACE_elasticBandage';
};
for '_i' from 1 to 3 do {
    _unit addItemtouniform 'ACE_packingBandage';
};
for '_i' from 1 to 3 do {
    _unit addItemtouniform 'ACE_quikclot';
};
for '_i' from 1 to 1 do {
    _unit addItemtouniform 'ACE_tourniquet';
};
for '_i' from 1 to 1 do {
    _unit addItemtouniform 'ACE_morphine';
};
for '_i' from 1 to 1 do {
    _unit addItemtouniform 'ACE_epinephrine';
};
*/