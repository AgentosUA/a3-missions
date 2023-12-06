if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'rhs_weap_ak74';
_this addPrimaryWeaponItem 'rhs_acc_dtk1983';
_this addPrimaryWeaponItem 'rhs_30Rnd_545x39_7N6M_AK';

_Uniform = ['Peh_FloraButan_EAST_Uniform7', 'Peh_FloraButan_EAST_Uniform8'] call BIS_fnc_selectRandom;
_this forceAddUniform _Uniform; 
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_epinephrine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_morphine';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_tourniquet';};
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_splint';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_quikclot';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_fieldDressing';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 3 do { _this addItemToUniform 'ACE_packingBandage';};

_this addVest '6b3AK_Ol';
for '_i' from 1 to 6 do { _this addItemToVest 'rhs_30Rnd_545x39_7N6M_AK';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_30Rnd_545x39_AK_green';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rdg2_white';};

_this addBackpack 'rhs_medic_bag';
for '_i' from 1 to 2 do { _this addItemToBackpack  'ACE_adenosine';};
for '_i' from 1 to 8 do { _this addItemToBackpack  'ACE_epinephrine';};
for '_i' from 1 to 8 do { _this addItemToBackpack  'ACE_morphine';};
for '_i' from 1 to 8 do { _this addItemToBackpack  'ACE_tourniquet';};
for '_i' from 1 to 8 do { _this addItemToBackpack  'ACE_splint';};
for '_i' from 1 to 12 do { _this addItemToBackpack  'ACE_quikclot';};
for '_i' from 1 to 12 do { _this addItemToBackpack  'ACE_fieldDressing';};
for '_i' from 1 to 12 do { _this addItemToBackpack  'ACE_elasticBandage';};
for '_i' from 1 to 12 do { _this addItemToBackpack  'ACE_packingBandage';};
for '_i' from 1 to 8 do { _this addItemToBackpack  'ACE_salineIV_500';};
_this addItemToBackpack  'ACE_surgicalKit';

_Headgear = ['YuESH68','ssh68_dark_green','YuESH68ChButan'] call BIS_fnc_selectRandom;
_this addHeadgear _Headgear;
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';