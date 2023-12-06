if (not local _this) exitwith {};

[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_70Rnd_25mm_M242_M791"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_230Rnd_25mm_M242_HEI"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_230Rnd_25mm_M242_HEI"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_230Rnd_25mm_M242_HEI"] call ace_rearm_fnc_addMagazineToSupply;
[_this, "rhs_mag_230Rnd_25mm_M242_HEI"] call ace_rearm_fnc_addMagazineToSupply;

for '_i' from 1 to 9 do {["lex_82mm_ammobox", _this] call ace_cargo_fnc_loadItem;};

_this addWeaponCargoGlobal ["rhs_weap_M136",8];

_this addItemCargoGlobal  ["WOG_TowRope_15m",1];

_this addMagazineCargoGlobal ["rhs_mag_m67",16];
_this addMagazineCargoGlobal ["rhs_mag_an_m8hc",16];
_this addMagazineCargoGlobal ["rhs_mag_M441_HE",16];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag",32];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",24];
_this addMagazineCargoGlobal ["rhsusf_200rnd_556x45_M855_box",16];

_this addBackpackCargoGlobal  ["usm_pack_m5_rifleman",2];