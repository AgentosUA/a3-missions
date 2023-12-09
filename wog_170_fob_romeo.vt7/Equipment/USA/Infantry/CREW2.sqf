if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'rhs_weap_m3a1';
_this addPrimaryWeaponItem 'rhsgref_30rnd_1143x23_M1911B_SMG';

_this forceAddUniform 'TRYK_OVERALL_SAGE_BLKboots_nk';
_this addItemToUniform 'ACE_EarPlugs';
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_epinephrine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_morphine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_tourniquet';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_splint';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_quikclot';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_fieldDressing';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_packingBandage';};

_this addVest 'usm_vest_lbe_rm2'; 
for '_i' from 1 to 4 do { _this addItemToVest 'rhsgref_30rnd_1143x23_M1911B_SMG';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _this addItemToVest 'SmokeShell';};


_Headgear = ['rhsusf_cvc_green_helmet', 'rhsusf_cvc_green_alt_helmet', 'rhsusf_cvc_green_ess'] call BIS_fnc_selectRandom;
_this addHeadgear _Headgear;
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';