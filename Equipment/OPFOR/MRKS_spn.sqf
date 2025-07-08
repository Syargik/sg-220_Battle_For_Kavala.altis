// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "mkk_10Rnd_338_Mag";
_unit addWeapon "nmg_weapon_svc338_camo";
_unit addPrimaryWeaponItem "mkk_gexagon338";
_unit addPrimaryWeaponItem "mkc_optic_1p86_camo";

_unit addWeapon "rhs_pdu4";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform "CUP_U_O_RUS_Ratnik_BeigeDigital";

// Vest with items:
_unit addVest "CUP_Vest_RUS_6B45_Sh117_BeigeDigital";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};
for '_i' from 1 to 6 do { _unit addItemToVest 'mkk_10Rnd_338_Mag';};
_unit addItemToVest "ACE_RangeCard";

// Backpack with items:
_unit addBackpack "BWA3_AssaultPack_Tropen";
_unit addHeadgear "CUP_H_RUS_6B47_v2_BeigeDigital";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";