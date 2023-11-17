_CHDKZ_processor = {
    _unit = _this select 0;
    _loadout = toUpper (_this select 1);
    switch _loadout do {
        case "COM" : {
            _unit forceAdduniform 'CUP_U_O_CHDKZ_Lopotev';
            _unit addvest 'rhs_6b3_AK';
            for '_i' from 1 to 6 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'wog_rhs_30Rnd_545x39_7N10_AK_tracers';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addItemtovest 'ACE_fortify';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            _unit addWeapon 'rhs_weap_ak74m';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addprimaryWeaponItem 'rhs_acc_pso1m2';
            _unit addheadgear 'T_ChDKZ_Beanie';
            _unit linkItem 'ItemMap';
            _unit addWeapon 'rhssaf_zrak_rd7j';
        };
        case "SL" : {
            _unit forceAdduniform 'T_CHDKZ_chedak6_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b3_AK';
            for '_i' from 1 to 8 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'wog_rhs_30Rnd_545x39_7N10_AK_tracers';
            };
            _unit addItemtovest 'ACE_fortify';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            _unit addWeapon 'rhs_weap_ak74m';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addprimaryWeaponItem 'rhs_acc_pso1m2';
            _unit addheadgear 'T_ChDKZ_Beanie';
            _unit linkItem 'ItemMap';
            _unit addWeapon 'rhssaf_zrak_rd7j';
        };
        case "TL" : {
            _unit forceAdduniform 'T_CHDKZ_chedak9_uniform';
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addvest 'rhs_6b3_VOG';
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'rhs_mag_rgd5';
            };
            for '_i' from 1 to 11 do {
                _unit addItemtovest 'rhs_VOG25';
            };
            for '_i' from 1 to 6 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addWeapon 'rhs_weap_ak74_gp25';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addheadgear 'T_ChDKZ_Beanie_black';
            _unit linkItem 'ItemMap';
            _unit addWeapon 'rhssaf_zrak_rd7j';
        };
        case "SN" : {
            _unit forceAdduniform 'T_CHDKZ_chedak9_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b2_chicom';
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'rhs_10Rnd_762x54mmR_T_46M';
            };
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 11 do {
                _unit addItemtovest 'rhs_10Rnd_762x54mmR_7N14';
            };
            _unit addWeapon 'CUP_srifle_SVD';
            _unit addprimaryWeaponItem 'rhs_acc_pso1m2';
            _unit addgoggles 'YuEBalaklavaW2Bl';
            _unit linkItem 'ItemMap';
        };
        case "AT": {
            _unit forceAdduniform 'T_CHDKZ_chedak6_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b3';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 5 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addbackpack 'rhs_rpg_6b3';
            for '_i' from 1 to 3 do {
                _unit addItemtobackpack 'rhs_rpg7_PG7VL_mag';
            };
            _unit addWeapon 'rhs_weap_ak74';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addWeapon 'rhs_weap_rpg7';
            _unit addsecondaryWeaponItem 'rhs_acc_pgo7v2';
            _unit addheadgear 'YuEShapka1Ol';
            _unit linkItem 'ItemMap';
        };
        case "RF": {
            _unit forceAdduniform 'T_CHDKZ_chedak3_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b2_chicom';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 6 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addWeapon 'rhs_weap_ak74';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addheadgear 'T_ChDKZ_Beanie_black';
            _unit linkItem 'ItemMap';
        };
        case "RF1": {
            _unit forceAdduniform 'T_CHDKZ_chedak3_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b3_AK';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 11 do {
                _unit addItemtovest 'rhs_VOG25';
            };
            for '_i' from 1 to 6 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addWeapon 'rhs_weap_ak74_gp25';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addheadgear 'T_ChDKZ_Beanie_black';
            // _unit linkItem 'ItemMap';
        };
        case "AAT" : {
            _unit forceAdduniform 'T_CHDKZ_chedak3_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b2_chicom';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 6 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addbackpack 'rhs_rpg_6b2';
            for '_i' from 1 to 2 do {
                _unit addItemtobackpack 'rhs_rpg7_PG7VL_mag';
            };
            for '_i' from 1 to 2 do {
                _unit addItemtobackpack 'rhs_rpg7_OG7V_mag';
            };
            _unit addWeapon 'rhs_weap_ak74';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addheadgear 'YuEShapka1Ol';
        };
        case "GUN" : {
            _unit forceAdduniform 'T_CHDKZ_chedak6_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b3';
            for '_i' from 1 to 5 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addWeapon 'rhs_weap_aks74u';
            _unit addprimaryWeaponItem 'rhs_acc_pgs64_74u';
            _unit addheadgear 'rhs_tsh4';
            _unit linkItem 'ItemMap';
        };
        case "GUN2" : {
            _unit forceAdduniform 'T_CHDKZ_chedak9_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b2_chicom';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 5 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addWeapon 'rhs_weap_aks74u';
            _unit addprimaryWeaponItem 'rhs_acc_pgs64_74u';
            _unit addheadgear 'rhs_tsh4';
            _unit linkItem 'ItemMap';
            _unit addWeapon 'rhssaf_zrak_rd7j';
        };
        case "MED" : {
            _unit forceAdduniform 'T_CHDKZ_chedak6_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b3';
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'rhs_mag_rdg2_white';
            };
            for '_i' from 1 to 5 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addbackpack 'rhs_sidor';
            _unit addWeapon 'rhs_weap_ak74';
            _unit addprimaryWeaponItem 'rhs_acc_dtk1983';
            _unit addheadgear 'T_ChDKZ_Beanie';
            _unit linkItem 'ItemMap';
        };
        case "DRV" : {
            _unit forceAdduniform 'T_CHDKZ_chedak9_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addItemtouniform 'rhs_mag_rdg2_white';
            _unit addvest 'rhs_6b2_chicom';
            _unit addItemtovest 'rhs_mag_rdg2_white';
            for '_i' from 1 to 5 do {
                _unit addItemtovest 'rhs_30Rnd_545x39_7N10_AK';
            };
            _unit addWeapon 'rhs_weap_aks74u';
            _unit addprimaryWeaponItem 'rhs_acc_pgs64_74u';
            _unit addheadgear 'rhs_tsh4';
            _unit linkItem 'ItemMap';
            _unit addbackpack 'rhs_sidor';
        };
        
        case "MG" : {
            _unit forceAdduniform 'T_CHDKZ_chedak4_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addbackpack 'rhs_rd54';
            _unit addvest 'rhs_6b3_RPK';
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'rhs_mag_rdg2_white';
            };
            for '_i' from 1 to 4 do {
                _unit addItemtovest 'hlc_40Rnd_762x39_b_rpk';
            };
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'hlc_45Rnd_762x39_t_rpk';
            };
            _unit addWeapon 'hlc_rifle_rpk';
            _unit addgoggles 'T_ChDKZ_Balaclava_camo';
            _unit linkItem 'ItemMap';
        };
        case "MG_O" : {
            _unit forceAdduniform 'T_CHDKZ_chedak2_uniform';
            for '_i' from 1 to 2 do {
                _unit addItemtouniform 'rhs_mag_rgd5';
            };
            _unit addvest 'rhs_6b3_RPK';
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'rhs_mag_rdg2_white';
            };
            for '_i' from 1 to 4 do {
                _unit addItemtovest 'hlc_40Rnd_762x39_b_rpk';
            };
            for '_i' from 1 to 2 do {
                _unit addItemtovest 'hlc_45Rnd_762x39_t_rpk';
            };
            _unit addWeapon 'hlc_rifle_rpk';
            _unit addheadgear 'YuEShapka1Bl';
            _unit linkItem 'ItemMap';
        };
    };
};