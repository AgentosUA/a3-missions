if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this addWeapon 'rhs_weap_aks74u';
_this addPrimaryWeaponItem 'rhs_acc_pgs64_74u';
_this addPrimaryWeaponItem 'rhs_30Rnd_545x39_7N6M_AK';

_this forceAddUniform 'pilot_suit_ttsko';
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

_this addVest 'FGN_RU_V95_KKO';
for '_i' from 1 to 6 do { _this addItemToVest 'rhs_30Rnd_545x39_7N6M_AK';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rdg2_white';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_nspd';};

_this addHeadgear 'rhs_zsh7a_alt';
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'ItemRadio';