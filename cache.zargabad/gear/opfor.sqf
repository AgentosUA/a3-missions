if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this forceAddUniform 'rhs_uniform_afghanka';
for '_i' from 1 to 5 do { _this addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 5 do { _this addItemToUniform 'ACE_packingBandage';};
for '_i' from 1 to 5 do { _this addItemToUniform 'ACE_fieldDressing';};
_this addItemToUniform 'ACE_EarPlugs';
for '_i' from 1 to 2 do { _this addItemToUniform 'ACE_morphine';};
_this addVest 'rhs_6b23_ML_6sh92';
for '_i' from 1 to 6 do { _this addItemToVest 'rhs_30Rnd_545x39_7N6_AK';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_30Rnd_545x39_AK_green';};
for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _this addItemToVest 'wog_mag_rdgm_white';};
_this addBackpack 'rhs_sidor';
_this addWeapon 'rhs_weap_ak74';
_this addHeadgear 'rhs_6b7_1m_ess';
_this linkItem 'ItemMap';
_this linkItem 'ItemGPS';
_this linkItem 'ItemCompass';
_this addWeapon 'Binocular';
