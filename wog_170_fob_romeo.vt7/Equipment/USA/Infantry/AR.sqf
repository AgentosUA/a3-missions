if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'rhs_weap_m249_pip';
_this addPrimaryWeaponItem 'rhsusf_acc_saw_bipod';
_this addPrimaryWeaponItem 'rhsusf_200rnd_556x45_M855_box';

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
_this addItemToVest 'rhsusf_200rnd_556x45_M855_box';
_this addItemToVest 'rhsusf_200rnd_556x45_M855_mixed_box';
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _this addItemToVest 'SmokeShell';};
for '_i' from 1 to 2 do { _this addItemToVest 'SmokeShellGreen';};

_this addBackpack 'usm_pack_alice';
_this addItemToBackpack  'rhsusf_200rnd_556x45_M855_box';
_this addItemToBackpack  'rhsusf_200rnd_556x45_M855_mixed_box';
_this addItemToBackpack  'rhs_200rnd_556x45_T_SAW';

_this addHeadgear 'usm_bdu_boonie_wdl';
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';