if (not local _this) exitwith {};

{_this lockCargo [_x, true];} foreach [5,7,8,9,10];

_this addMagazineTurret ["rhs_mag_100rnd_127x99_mag_Tracer_Red",[0]];

_this addItemCargoGlobal  ["ToolKit",1];
_this addItemCargoGlobal  ["WOG_TowRope_15m",1];
_this addItemCargoGlobal  ["ACE_EntrenchingTool",1];
_this addItemCargoGlobal  ["ACE_MapTools",1];
_this addItemCargoGlobal  ["ACE_RangeTable_M252",1];

_this addMagazineCargoGlobal ["rhs_mag_m67",8];
_this addMagazineCargoGlobal ["rhs_mag_an_m8hc",8];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag",16];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",8];
_this addmagazinecargoGlobal ["ace_csw_rhs_mag_100rnd_127x99_mag_Tracer_Red",10];

_this addBackpackCargoGlobal  ["usm_pack_m5_rifleman",1];