if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'hlc_lmg_m60';
_this addPrimaryWeaponItem 'rhsusf_100Rnd_762x51_m61_ap';

_Uniform = ['usm_bdu_wdl', 'usm_bdu_srl_wdl', 'usm_bdu_srh_wdl'] call BIS_fnc_selectRandom;
_this forceAddUniform _Uniform; 
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_epinephrine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_morphine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_tourniquet';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_splint';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_quikclot';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_fieldDressing';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_packingBandage';};

_this addVest 'usm_vest_pasgt_lbe_mg';
_this addItemToVest 'rhsusf_100Rnd_762x51_m61_ap';
_this addItemToVest 'rhsusf_100Rnd_762x51_m62_tracer';
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _this addItemToVest 'SmokeShell';};

_this addBackpack 'usm_pack_alice';
_this addItemToBackpack  'rhsusf_100Rnd_762x51_m61_ap';
_this addItemToBackpack  'rhsusf_100Rnd_762x51_m61_ap';
_this addItemToBackpack  'rhsusf_100Rnd_762x51_m62_tracer';

_Headgear = ['usm_helmet_pasgt_ce_wdl', 'usm_helmet_pasgt_ceswd_wdl', 'usm_helmet_pasgt_rm_wdl', 'usm_helmet_pasgt_rms_wdl'] call BIS_fnc_selectRandom;
_this addHeadgear _Headgear;
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';