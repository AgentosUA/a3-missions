if (not local _this) exitwith {};

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

_this forceAddUniform 'usm_bdu_bti_odg';
_this addItemToUniform 'rhsusf_ANPVS_14';
_this addItemToUniform 'ACE_EarPlugs';
_this addVest 'usm_vest_pasgt_odg';

for '_i' from 1 to 2 do { _this addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 4 do { _this addItemToUniform 'rhsusf_mag_7x45acp_MHP';};

_this addWeapon 'rhsusf_weap_m1911a1';
_this addHeadgear 'H_Cap_headphones';
_this addGoggles 'G_Aviator';
_this linkItem 'ItemMap';
_this linkItem 'ItemCompass';
_this linkItem 'ItemWatch';
_this linkItem 'tf_anprc152';
_this linkItem 'ItemGPS';
_this addWeapon 'Binocular';
