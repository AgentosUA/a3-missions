if (not local _this) exitwith {};

_this RemoveMagazineTurret ["rhs_mag_1100Rnd_762x51_M240",[0]];
{_this RemoveMagazineTurret ["rhs_mag_70Rnd_25mm_M242_APFSDS",[0]];} forEach [1,2,3];
{_this RemoveMagazineTurret ["rhs_mag_230Rnd_25mm_M242_HEI",[0]];} forEach [1,2,3];

{_this AddMagazineTurret ["rhs_mag_70Rnd_25mm_M242_M791", [0]];} forEach [1,2];
_this AddMagazineTurret ["rhs_mag_230Rnd_25mm_M242_HEI", [0]];
_this AddMagazineTurret ["rhs_mag_2Rnd_TOW2A", [0]];
_this addMagazineCargoGlobal ["ace_csw_rhs_mag_TOW2",2];

_this addWeaponCargoGlobal ["CUP_launch_M72A2", 2];

_this addItemCargoGlobal ["ToolKit",1];
_this addItemCargoGlobal  ["WOG_TowRope_15m",1];
_this addItemCargoGlobal  ["ACE_EntrenchingTool",2];

_this addMagazineCargoGlobal ["rhs_mag_m67",16];
_this addMagazineCargoGlobal ["rhs_mag_an_m8hc",16];
_this addMagazineCargoGlobal ["rhs_mag_M441_HE",8];
_this addMagazineCargoGlobal ["rhs_mag_M433_HEDP",8];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag",24];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",16];
_this addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",4];
_this addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",4];

_this addBackpackCargoGlobal  ["usm_pack_alice",2];