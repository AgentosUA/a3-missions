if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'rhs_weap_aks74';
_this addPrimaryWeaponItem 'hlc_muzzle_545SUP_AK';
_this addPrimaryWeaponItem 'rhs_30Rnd_545x39_7N6M_AK';

_Uniform = ['Spec_Gorka2_olive_EAST_Uniform', 'Spec_Gorka2_olive_sh_EAST_Uniform'] call BIS_fnc_selectRandom;
_this forceAddUniform _Uniform; 
_this addItemToUniform 'ACE_EarPlugs';
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_epinephrine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_morphine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_tourniquet';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_splint';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_quikclot';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_fieldDressing';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_packingBandage';};

_Backpack = ['YuE_RD54AKF', 'YuE_RD54AKFull'] call BIS_fnc_selectRandom;
_this addBackpack _Backpack;
for '_i' from 1 to 6 do { _this addItemToBackpack  'rhs_30Rnd_545x39_7N6M_AK';};
for '_i' from 1 to 2 do { _this addItemToBackpack  'rhs_mag_rgn';};
for '_i' from 1 to 2 do { _this addItemToBackpack  'rhs_mag_rgo';};
for '_i' from 1 to 2 do { _this addItemToBackpack  'rhs_mag_rdg2_white';};

_this addHeadgear 'YuEBandana_O';
_this addGoggles 'TRYK_Shemagh_G';
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';