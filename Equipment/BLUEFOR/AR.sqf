_uniform = missionNamespace getVariable "BLUFOR_uniforms";
_headgear = missionNamespace getVariable "BLUFOR_helmets";

// Squad Games

_unit addBackpack "B_Carryall_Base";

// Weapons with attachments:

_unit addItem "rhs_mag_100Rnd_556x45_M855A1_cmag";
_unit addWeapon "rhs_weap_m27iar_grip";
_unit addPrimaryWeaponItem "rhsusf_acc_eotech_552";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

removeBackpack _unit;

// Uniform with items:
_unit forceAddUniform _uniform;

// Vest with items:
_unit addVest "rhsusf_spc_iar";
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_100Rnd_556x45_M855A1_cmag';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_m67';};
for '_i' from 1 to 2 do { _unit addItemToVest 'rhs_mag_an_m8hc';};

// Backpack with items:
_unit addBackpack "rhsusf_assault_eagleaiii_coy";
for '_i' from 1 to 3 do { _unit addItemToBackpack 'rhs_mag_100Rnd_556x45_M855A1_cmag';};
_unit addItemToBackpack 'rhs_mag_100Rnd_556x45_M855A1_cmag_mixed';

_unit addHeadgear _headgear;

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";