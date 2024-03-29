removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAddUniform 'rhs_uniform_acu_ucp2';
for '_i' from 1 to 5 do { player addItemToUniform 'ACE_packingBandage';};
for '_i' from 1 to 5 do { player addItemToUniform 'ACE_elasticBandage';};
for '_i' from 1 to 5 do { player addItemToUniform 'ACE_fieldDressing';};
player addItemToUniform 'ACE_EarPlugs';
for '_i' from 1 to 2 do { player addItemToUniform 'ACE_morphine';};
player addVest 'rhsusf_spcs_ucp_machinegunner';
for '_i' from 1 to 2 do { player addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { player addItemToVest 'rhs_mag_an_m8hc';};

player addBackpack 'rhsusf_assault_eagleaiii_ucp';
player addItemToBackpack  'rhsusf_m112_mag';
for '_i' from 1 to 3 do { player addItemToBackpack  'rhsusf_200rnd_556x45_M855_mixed_box';};
player addWeapon 'rhs_weap_m249_pip_S';
player addPrimaryWeaponItem 'rhsusf_acc_eotech_552';
player addHeadgear 'rhsusf_ach_helmet_ucp';

player linkItem 'ItemMap';
player linkItem 'ItemRadio';
player linkItem 'ItemCompass';
player linkItem 'ItemGPS';
player linkItem 'tf_anprc152';
player addWeapon 'Binocular';
