// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_100Rnd_762x54mmR_7N13";
_unit addWeapon "mkk_VTN_PKP_TUNED_TACTICAL_CAMO";
_unit addPrimaryWeaponItem "nmg_silence_dtk_gexagonak_camo";
_unit addPrimaryWeaponItem "mkc_optic_1p86_camo";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "CUP_U_O_RUS_Ratnik_BeigeDigital";

// Vest with items:
_unit addVest "CUP_Vest_RUS_6B45_Sh117_PKP_BeigeDigital";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};
_unit addItemToVest 'rhs_100Rnd_762x54mmR_7N13';

// Backpack with items:
_unit addBackpack "BWA3_AssaultPack_Tropen";
for '_i' from 1 to 2 do { _unit addItemToBackpack 'rhs_100Rnd_762x54mmR_7N13';};
_unit addHeadgear "CUP_H_RUS_6B47_v2_BeigeDigital";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";