_uniform = missionNamespace getVariable "OPFOR_uniforms";
_headgear = missionNamespace getVariable "OPFOR_helmets";

// SolidGames

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "mkk_20Rnd_762x51_m80a1_Mag";
_unit addWeapon "nmg_weapon_svc762n";
_unit addPrimaryWeaponItem "rhsusf_acc_nxs_3515x50f1_h58";

_unit addWeapon "rhs_pdu4";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "rhs_6b23_digi_6sh92_Vog_Spetsnaz";
for '_i' from 1 to 5 do { _unit addItemToVest 'mkk_20Rnd_762x51_m80a1_Mag';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhsusf_20Rnd_762x51_m62_Mag';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rgd5';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_rdg2_white';};
_unit addItemToVest "ACE_RangeCard";

// Backpack with items:
_unit addBackpack "rhs_rk_sht_30_emr";
_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";