_USMC_processor = {
    _unit = _this select 0;
    _loadout = toUpper (_this select 1);
    switch _loadout do {
        case "OFF" : {
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_spc_squadleader";
            _unit addbackpack "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";
            
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addItemtouniform "ACE_Maptools";
            
            _unit addItemtouniform "rhsusf_mag_15Rnd_9x19_FMJ";
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_an_m8hc";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            _unit addItemtovest "rhsusf_mag_15Rnd_9x19_JHP";
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            
            _unit addWeapon "rhs_weap_m16a4";
            
            _unit addprimaryWeaponItem "rhsusf_acc_ACOG_USMC";
            _unit addWeapon "rhsusf_weap_m9";
            _unit addheadgear "rhs_8point_marpatwd";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "tf_anprc152";
            _unit linkItem "ItemGPS";
            _unit addWeapon "binocular";
        };
        
        case "SL" : {
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addItemtouniform "ACE_Maptools";
            _unit addItemtouniform "rhsusf_mag_15Rnd_9x19_FMJ";
            
            _unit addvest "rhsusf_spc_squadleader";
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_an_m8hc";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            _unit addItemtovest "rhsusf_mag_15Rnd_9x19_JHP";
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            _unit addbackpack "FRXA_tf_rt1523g_big_MARPAT_Woodlaand";
            _unit addWeapon "rhs_weap_m16a4";
            
            _unit addprimaryWeaponItem "rhsusf_acc_ACOG_USMC";
            _unit addWeapon "rhsusf_weap_m9";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_blk_ess";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "tf_anprc152";
            _unit linkItem "ItemGPS";
            _unit addWeapon "binocular";
        };
        
        case "TL" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            _unit addvest "rhsusf_spc_teamleader";
            _unit addItemtovest "rhs_mag_m67";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_an_m8hc";
            };
            
            for "_i" from 1 to 5 do {
                _unit addItemtovest "rhs_mag_M433_HEDP";
                _unit addItemtovest "rhs_mag_M441_HE";
            };

            _unit addWeapon "rhs_weap_m16a4_carryhandle_M203_ACOG";
            _unit addprimaryWeaponItem "rhsusf_acc_ACOG_USMC";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "tf_anprc152";
            _unit linkItem "ItemGPS";
        };
        
        case "UAV" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_spc_teamleader";
            
            for "_i" from 1 to 3 do {
                _unit addItemtouniform "rhs_mag_M441_HE";
            };
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            _unit addItemtovest "rhs_mag_m67";
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            _unit addItemtovest "rhs_mag_an_m8hc";
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_M441_HE";
            };
            for "_i" from 1 to 4 do {
                _unit addItemtovest "rhs_mag_M433_HEDP";
            };
            
            
            for "_i" from 1 to 2 do {
                
            };
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            _unit addWeapon "rhs_weap_m16a4_carryhandle_M203_ACOG";
            _unit addprimaryWeaponItem "rhsusf_acc_ACOG_USMC";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "tf_anprc152";
            _unit linkItem 'B_UavTerminal';
        };
        
        case "AR" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_mbav_mg";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addItemtouniform "rhs_mag_m67";
            _unit addItemtouniform "rhs_mag_an_m8hc";
            _unit addItemtovest "rhs_200rnd_556x45_B_SAW";
            _unit addItemtovest "rhs_200rnd_556x45_M_SAW";
            _unit addItemtobackpack "rhs_200rnd_556x45_B_SAW";
            
            
            _unit addWeapon "rhs_weap_m249_pip";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd";
            
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
        };
        
        case "RM" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_spc_rifleman";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addItemtovest "rhs_mag_an_m8hc";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtobackpack "rhs_200rnd_556x45_B_SAW";
            };
            _unit addWeapon "rhs_weap_m16a4_carryhandle_compm4s";
            
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
        };
        
        case "AT": {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addvest "rhsusf_spc_rifleman";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            _unit addItemtovest "rhs_mag_an_m8hc";
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            
            _unit addWeapon "rhs_weap_m16a4_carryhandle_compm4s";
            
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            _unit addWeapon "rhs_weap_M136";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_blk_ess";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
        };
        
        case "DM": {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_spc_marksman";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            
            _unit addItemtouniform "ACE_RangeCard";

            for "_i" from 1 to 4 do {
                _unit addItemtovest "rhsusf_20Rnd_762x51_m993_Mag";
            };

            for "_i" from 1 to 2 do {
                _unit addItemtobackpack "rhsusf_20Rnd_762x51_m62_Mag";
            };

            for "_i" from 1 to 2 do {
                _unit addItemtouniform "rhs_mag_m67";
                _unit addItemtouniform "rhs_mag_an_m8hc";
                _unit addItemtovest "rhsusf_mag_7x45acp_MHP";
            };
        
            
            _unit addWeapon "hlc_rifle_m14dmr_LRT";
            _unit addprimaryWeaponItem "hlc_optic_LRT_m14";
            _unit addWeapon "rhsusf_weap_m1911a1";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_blk_ess";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "tf_anprc152";
        };
        
        case "MG": {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addItemtouniform "rhs_mag_m67";
            _unit addItemtouniform "rhs_mag_an_m8hc";
            _unit addvest "rhsusf_mbav_mg";
            _unit addWeapon "rhs_weap_m240B";
            _unit addprimaryWeaponItem "rhsusf_acc_ELCAN";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
            
            for "_i" from 1 to 3 do {
                _unit addItemtovest "rhsusf_100Rnd_762x51_m61_ap";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtobackpack "rhsusf_100Rnd_762x51_m61_ap";
            };
        };
        
        case "AMG": {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_spc_rifleman";
            
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addItemtovest "rhs_mag_an_m8hc";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy_ar";
            _unit addWeapon "rhs_weap_m16a4_carryhandle_compm4s";
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
            _unit addWeapon "binocular";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
        };
        
        case "SM": {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addvest "rhsusf_spc_rifleman";
            _unit addbackpack "B_Carryall_khk";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            
            for "_i" from 1 to 1 do {
                _unit addItemtobackpack "rhs_mag_smaw_HEDP";
            };
            
            _unit addItemtobackpack "rhs_mag_smaw_HEAA";
            
            for "_i" from 1 to 2 do {
                _unit addItemtobackpack "rhs_mag_smaw_SR";
            };
            
            _unit addWeapon "rhs_weap_m16a4_carryhandle_compm4s";
            _unit addWeapon "rhs_weap_smaw_green";
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            _unit addsecondaryWeaponItem "rhs_weap_optic_smaw";
            
            _unit addWeapon "binocular";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
        };
        
        case "ASM": {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addvest "rhsusf_spc_rifleman";
            _unit addItemtovest "rhs_mag_an_m8hc";
            _unit addbackpack "B_Carryall_khk";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            
            for "_i" from 1 to 1 do {
                _unit addItemtobackpack "rhs_mag_smaw_HEDP";
            };
            
            for "_i" from 1 to 1 do {
                _unit addItemtobackpack "rhs_mag_smaw_HEAA";
            };
            
            _unit addWeapon "rhs_weap_m16a4_carryhandle_compm4s";
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
            _unit addWeapon "binocular";
        };
        
        case "MEDSL" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addvest "rhsusf_spc_rifleman";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            _unit addWeapon "rhs_weap_m16a4";
            
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
            _unit linkItem "ItemGPS";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            _unit addItemtovest "rhs_mag_an_m8hc";
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
        };
        
        case "MED" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addItemtouniform "ACE_EarPlugs";
            _unit addvest "rhsusf_spc_rifleman";
            _unit addbackpack "rhsusf_assault_eagleaiii_coy";
            
            for "_i" from 1 to 6 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            _unit addItemtovest "rhs_mag_an_m8hc";
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m18_green";
            };
            
            _unit addWeapon "rhs_weap_m16a4";
            _unit addprimaryWeaponItem "rhsusf_acc_eotech_552";
            
            _unit addheadgear "rhsusf_lwh_helmet_marpatwd_headset_blk";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
            _unit linkItem "ItemGPS";
        };
        
        case "PL" : {
            removeAllweapons _unit;
            removeAllItems _unit;
            removeAllAssignedItems _unit;
            removeuniform _unit;
            removevest _unit;
            removeBackpack _unit;
            removeHeadgear _unit;
            removeGoggles _unit;
            
            _unit forceAdduniform "rhs_uniform_FROG01_wd";
            _unit addvest "rhsusf_spc_light";
            _unit addItemtouniform "ACE_EarPlugs";
            
            for "_i" from 1 to 4 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_m67";
            };
            for "_i" from 1 to 2 do {
                _unit addItemtovest "rhs_mag_an_m8hc";
            };
            
            _unit addWeapon "rhs_weap_m4_carryhandle";
            _unit addheadgear "rhsusf_hgu56p";
            _unit linkItem "ItemMap";
            _unit linkItem "ItemCompass";
            _unit linkItem "ItemWatch";
            _unit linkItem "Itemradio";
            _unit linkItem "ItemGPS";
        };
    };
};