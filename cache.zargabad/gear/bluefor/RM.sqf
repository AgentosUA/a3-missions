removeAllweapons player;
removeAllItems player;
removeAllAssignedItems player;
removeuniform player;
removevest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

player forceAdduniform 'rhs_uniform_acu_ucp2';
for '_i' from 1 to 5 do {
    player addItemtouniform 'ACE_packingBandage';
};
for '_i' from 1 to 5 do {
    player addItemtouniform 'ACE_elasticBandage';
};
for '_i' from 1 to 5 do {
    player addItemtouniform 'ACE_fieldDressing';
};
player addItemtouniform 'ACE_EarPlugs';
for '_i' from 1 to 2 do {
    player addItemtouniform 'ACE_morphine';
};
player addvest 'rhsusf_spcs_ucp_teamleader';
for '_i' from 1 to 6 do {
    player addItemtovest 'rhs_mag_30Rnd_556x45_M855A1_PMAG';
};
for '_i' from 1 to 2 do {
    player addItemtovest 'rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red';
};
for '_i' from 1 to 2 do {
    player addItemtovest 'rhs_mag_m67';
};
for '_i' from 1 to 2 do {
    player addItemtovest 'rhs_mag_an_m8hc';
};
player addbackpack 'rhsusf_assault_eagleaiii_ucp';
player addItemtobackpack 'rhsusf_m112_mag';
player addWeapon 'rhs_weap_m4a1';
player addprimaryWeaponItem 'rhsusf_acc_eotech_552';
player addWeapon 'rhs_weap_m72a7';
player addheadgear 'rhsusf_ach_helmet_ucp';

player linkItem 'ItemMap';
player linkItem 'ItemRadio';
player linkItem 'ItemCompass';
player linkItem 'ItemGPS';
player linkItem 'tf_anprc152';
player addWeapon 'binocular';