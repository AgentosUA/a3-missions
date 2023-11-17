_V_CHDKZ_processor = {
    _veh = _this select 0;
    _loadout = toUpper (_this select 1);
    switch _loadout do {
        case "VIP" : {
            _veh addbackpackCargoGlobal ["av_r159", 1];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 1];
            _veh additemCargoGlobal ["toolKit", 1];
        };
        case "BTR" : {
            _veh addmagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 14];
            _veh addmagazineCargoGlobal ["wog_rhs_30Rnd_545x39_7N10_AK_tracers", 15];
            _veh addmagazineCargoGlobal ["rhs_mag_rgd5", 5];
            _veh addmagazineCargoGlobal ["rhs_mag_rdg2_white", 5];
            _veh addmagazineCargoGlobal ["hlc_40Rnd_762x39_b_rpk", 4];
            _veh addmagazineCargoGlobal ["hlc_45Rnd_762x39_t_rpk", 4];
            _veh addmagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N14", 4];
            _veh addmagazineCargoGlobal ["rhs_VOG25", 15];
            _veh additemCargoGlobal ["ACE_EarPlugs", 1];
            _veh additemCargoGlobal ["toolKit", 1];
            _veh addweaponCargoGlobal ["rhs_weap_rpg26", 1];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh additemCargoGlobal ["T_ChDKZ_Beanie", 2];
            _veh addmagazineCargoGlobal ["rhs_100Rnd_762x54mmR", 20];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 3];
            _veh addbackpackCargoGlobal ["rhs_sidor", 3];
            _veh addbackpackCargoGlobal ["av_r159", 1];
            
            _veh addmagazineCargoGlobal ["ace_csw_wog_mag_145x114mm_50", 9];
            _veh addMagazineTurret ["rhs_mag_145x115mm_50", [0]];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
            _veh addMagazineTurret ["wog_100Rnd_762x54mmR_green", [0], 100];
        };
        case "AGS" : {
            _veh addmagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 10];
            _veh addmagazineCargoGlobal ["wog_rhs_30Rnd_545x39_7N10_AK_tracers", 10];
            _veh addmagazineCargoGlobal ["rhs_mag_rgd5", 5];
            _veh addmagazineCargoGlobal ["rhs_mag_rdg2_white", 5];
            _veh addmagazineCargoGlobal ["hlc_40Rnd_762x39_b_rpk", 2];
            _veh addmagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N14", 2];
            _veh addmagazineCargoGlobal ["rhs_VOG25", 10];
            _veh additemCargoGlobal ["ACE_EarPlugs", 1];
            _veh addweaponCargoGlobal ["rhs_weap_rpg26", 1];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh addbackpackCargoGlobal ["rhs_sidor", 2];
            _veh additemCargoGlobal ["T_ChDKZ_Beanie", 2];
            _veh addmagazineCargoGlobal ["ace_csw_RHS_mag_VOG17m_30", 5];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 3];
        };
        case "AMMO" : {
            _veh addmagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 30];
            _veh addmagazineCargoGlobal ["wog_rhs_30Rnd_545x39_7N10_AK_tracers", 30];
            _veh addmagazineCargoGlobal ["rhs_mag_rgd5", 15];
            _veh addmagazineCargoGlobal ["rhs_mag_rdg2_white", 15];
            _veh addmagazineCargoGlobal ["hlc_40Rnd_762x39_b_rpk", 30];
            _veh addmagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N14", 30];
            _veh addmagazineCargoGlobal ["rhs_VOG25", 30];
            _veh additemCargoGlobal ["ACE_EarPlugs", 10];
            _veh addweaponCargoGlobal ["rhs_weap_rpg26", 5];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 5];
            _veh addmagazineCargoGlobal ["ace_csw_RHS_mag_VOG17m_30", 10];
            _veh addmagazineCargoGlobal ["ace_csw_rhs_mag_127x108mm_50", 10];
            _veh addbackpackCargoGlobal ["rhs_sidor", 5];

        };
        case "HILUXM2" : {
            _veh addmagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 14];
            _veh addmagazineCargoGlobal ["wog_rhs_30Rnd_545x39_7N10_AK_tracers", 10];
            _veh addmagazineCargoGlobal ["rhs_mag_rgd5", 5];
            _veh addmagazineCargoGlobal ["rhs_mag_rdg2_white", 5];
            _veh addmagazineCargoGlobal ["hlc_40Rnd_762x39_b_rpk", 4];
            _veh addmagazineCargoGlobal ["hlc_45Rnd_762x39_t_rpk", 4];
            _veh addmagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N14", 4];
            _veh addmagazineCargoGlobal ["rhs_VOG25", 15];
            _veh additemCargoGlobal ["ACE_EarPlugs", 1];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 3];
            _veh addmagazineCargoGlobal ["ace_csw_rhs_mag_127x108mm_50", 5];
        };
        case "HILUX" : {
            _veh addmagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 14];
            _veh addmagazineCargoGlobal ["wog_rhs_30Rnd_545x39_7N10_AK_tracers", 10];
            _veh addmagazineCargoGlobal ["rhs_mag_rgd5", 5];
            _veh addmagazineCargoGlobal ["rhs_mag_rdg2_white", 5];
            _veh addmagazineCargoGlobal ["hlc_40Rnd_762x39_b_rpk", 4];
            _veh addmagazineCargoGlobal ["hlc_45Rnd_762x39_t_rpk", 4];
            _veh addmagazineCargoGlobal ["rhs_10Rnd_762x54mmR_7N14", 4];
            _veh addmagazineCargoGlobal ["rhs_VOG25", 15];
            _veh additemCargoGlobal ["ACE_EarPlugs", 1];
            _veh addweaponCargoGlobal ["rhs_weap_rpg26", 1];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 3];
            _veh addbackpackCargoGlobal ["av_r159", 1]
        };
        case "ZU" : {
            _veh addmagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 4];
            _veh addmagazineCargoGlobal ["rhs_mag_rgd5", 5];
            _veh addmagazineCargoGlobal ["rhs_mag_rdg2_white", 5];
            _veh additemCargoGlobal ["ACE_EarPlugs", 2];
            _veh additemCargoGlobal ["WOG_towRope_15m", 1];
            _veh addmagazineCargoGlobal ["ace_csw_RHS_mag_AZP23_100", 25];
            _veh addbackpackCargoGlobal ["av_r159", 1]
        };
        case "MED" : {
            _veh additemCargoGlobal ["ACE_epinephrine", 10];
            _veh additemCargoGlobal ["ACE_quikclot", 10];
            _veh additemCargoGlobal ["ACE_morphine", 10];
            _veh additemCargoGlobal ["ACE_adenosine", 10];
            _veh additemCargoGlobal ["ACE_tourniquet", 20];
            _veh additemCargoGlobal ["ACE_elasticBandage", 20];
            _veh additemCargoGlobal ["ACE_fieldDressing", 20];
            _veh additemCargoGlobal ["ACE_packingBandage", 20];
            _veh additemCargoGlobal ["ACE_bloodIV_500", 10];
            _veh additemCargoGlobal ["ACE_bloodIV_250", 10];
            _veh additemCargoGlobal ["ACE_surgicalKit", 2];
            _veh additemCargoGlobal ["ACE_personalAidKit", 5];
            _veh additemCargoGlobal ["ACE_splint", 10];
            _veh additemCargoGlobal ["ACE_Entrenchingtool", 2];
            _veh addbackpackCargoGlobal ["av_r159", 1]
        };
    };
};