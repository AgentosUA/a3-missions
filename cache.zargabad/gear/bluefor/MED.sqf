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
for '_i' from 1 to 5 do { player addItemToBackpack  'ACE_adenosine';};
for '_i' from 1 to 10 do { player addItemToBackpack  'ACE_epinephrine';};
for '_i' from 1 to 10 do { player addItemToBackpack  'ACE_morphine';};
for '_i' from 1 to 10 do { player addItemToBackpack  'ACE_tourniquet';};
for '_i' from 1 to 10 do { player addItemToBackpack  'ACE_splint';};
for '_i' from 1 to 15 do { player addItemToBackpack  'ACE_quikclot';};
for '_i' from 1 to 15 do { player addItemToBackpack  'ACE_fieldDressing';};
for '_i' from 1 to 15 do { player addItemToBackpack  'ACE_elasticBandage';};
for '_i' from 1 to 15 do { player addItemToBackpack  'ACE_packingBandage';};
for '_i' from 1 to 5 do { player addItemToBackpack  'ACE_salineIV_500';};
for '_i' from 1 to 5 do { player addItemToBackpack  'ACE_bloodIV_500';};
player addItemToBackpack  'ACE_surgicalKit';
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