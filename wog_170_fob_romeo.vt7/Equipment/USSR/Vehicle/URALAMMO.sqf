if (not local _this) exitwith {};

[_this, "rhs_mag_3ubr8_160"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_3ubr8_160"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_3ubr8_160"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_3uof8_340"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_3uof8_340"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_3uof8_340"] call ace_rearm_fnc_addMagazineToSupply;

{_this lockCargo [_x, true];} foreach [2,3,4,5,6,7,8,9,10,11,12,13,14,15,16];

_this addItemCargoGlobal  ["WOG_TowRope_15m",1];

_this addMagazineCargoGlobal ["rhs_mag_rgd5",16];
_this addMagazineCargoGlobal ["rhs_mag_rdg2_white",16];
_this addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N6M_AK",24];
_this addMagazineCargoGlobal ["rhs_30Rnd_545x39_AK_plum_green",16];
_this addMagazineCargoGlobal ["rhs_45Rnd_545X39_7N6_AK",12];
_this addMagazineCargoGlobal ["rhs_45Rnd_545X39_AK_Green",12];
_this addMagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N1",6];
_this addMagazineCargoGlobal ["rhs_10Rnd_762x54mmR_T_46",4];
_this addMagazineCargoGlobal ["rhs_rpg7_PG7V_mag",12];
_this addMagazineCargoGlobal ["rhs_rpg7_PG7VL_mag",8];

_this addBackpackCargoGlobal ["rhs_sidor",2];