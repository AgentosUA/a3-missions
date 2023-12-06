if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'hlc_rifle_rpk74n';
_this addPrimaryWeaponItem 'rhs_acc_dtk1983';
_this addPrimaryWeaponItem 'rhs_45Rnd_545X39_7N6_AK';

_Uniform = ['Peh_FloraButan_EAST_Uniform7', 'Peh_FloraButan_EAST_Uniform8'] call BIS_fnc_selectRandom;
_this forceAddUniform _Uniform; 
_this addItemToUniform 'ACE_EarPlugs';
_this addItemToUniform 'ACE_MapTools';
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_epinephrine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_morphine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_tourniquet';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_splint';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_quikclot';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_fieldDressing';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_packingBandage';};

_this addVest '6b3AK_Ol';
for '_i' from 1 to 4 do { _this addItemToVest 'rhs_45Rnd_545X39_7N6_AK';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_45Rnd_545X39_AK_Green';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rdg2_white';};

_this addBackpack 'rhs_sidor';
for '_i' from 1 to 6 do { _this addItemToBackpack  'rhs_45Rnd_545X39_7N6_AK';};
for '_i' from 1 to 3 do { _this addItemToBackpack  'rhs_45Rnd_545X39_AK_Green';};

_Headgear = ['YuESH68','ssh68_dark_green','YuESH68ChButan'] call BIS_fnc_selectRandom;
_this addHeadgear _Headgear;
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';