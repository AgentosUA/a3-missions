if (not local _this) exitwith {};

_this RemoveMagazineTurret ["rhs_mag_1100Rnd_762x51_M240",[0]];
{_this RemoveMagazineTurret ["rhs_mag_70Rnd_25mm_M242_APFSDS",[0]];} forEach [1,2,3];
{_this RemoveMagazineTurret ["rhs_mag_230Rnd_25mm_M242_HEI",[0]];} forEach [1,2,3];

{_this AddMagazineTurret ["rhs_mag_70Rnd_25mm_M242_M791", [0]];} forEach [1,2];
_this AddMagazineTurret ["rhs_mag_230Rnd_25mm_M242_HEI", [0]];
_this AddMagazineTurret ["rhs_mag_2Rnd_TOW2A", [0]];

{_this addMagazineTurret ["rhs_mag_TOW2a",[0]]} forEach [1,2];
_this addMagazineCargoGlobal ["ace_csw_rhs_mag_TOW2A",1];

_this addItemCargoGlobal ["ToolKit",1];
_this addItemCargoGlobal  ["WOG_TowRope_15m",1];
_this addItemCargoGlobal  ["ACE_EntrenchingTool",2];

_this addMagazineCargoGlobal ["rhs_mag_m67",16];
_this addMagazineCargoGlobal ["rhs_mag_an_m8hc",16];
_this addMagazineCargoGlobal ["rhs_mag_M441_HE",8];
_this addMagazineCargoGlobal ["rhs_mag_M433_HEDP",8];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag",24];
_this addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",16];
_this addMagazineCargoGlobal ["rhsusf_200rnd_556x45_M855_box",4];
_this addMagazineCargoGlobal ["rhsusf_200rnd_556x45_M855_mixed_box",4];
_this addMagazineCargoGlobal ["rhs_200rnd_556x45_T_SAW",4];
_this addMagazineCargoGlobal ["ace_csw_rhs_mag_TOW2",4];

_this addBackpackCargoGlobal  ["usm_pack_m5_rifleman",2];