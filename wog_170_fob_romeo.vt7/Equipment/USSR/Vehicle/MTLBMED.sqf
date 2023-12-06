if (not local _this) exitwith {};

MEDFLAG attachTo [MTLBMED, [0.95,-2.4,1]];

_this addItemCargoGlobal  ["ToolKit",1];
_this addItemCargoGlobal  ["WOG_TowRope_15m",1];

_this addMagazineCargoGlobal ["rhs_mag_rgd5",8];
_this addMagazineCargoGlobal ["rhs_mag_rdg2_white",8];
_this addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N6M_AK",12];
_this addMagazineCargoGlobal ["rhs_30Rnd_545x39_AK_plum_green",8];

_this addBackpackCargoGlobal ["rhs_sidor",1];