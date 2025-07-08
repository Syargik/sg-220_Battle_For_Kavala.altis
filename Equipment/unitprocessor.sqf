_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;

_item_processor = {
	removeAllItems _this;
	removeAllWeapons _this;
	removeAllItemsWithMagazines _this;
	removeAllAssignedItems _this;
	removeUniform _this;
	removeBackpack _this;
	removeHeadgear _this;
	removeVest _this;
	removeGoggles _this;
};

if (!isServer) exitWith {};

_unit call _item_processor;

_svn = format ["SerP_equipment_codes_%1_%2",_faction, _loadout];
if (isNil _svn) then
{
	missionNamespace setVariable [_svn, 
		compile preprocessFileLineNumbers format ["Equipment\%1\%2.sqf", _faction, _loadout]];
};

[_unit] call (missionNamespace getVariable [_svn, {}]);

missionNamespace setVariable ["OPFOR_uniforms", [
	"rhs_uniform_vkpo",
	"rhs_uniform_vkpo_alt",
	"rhs_uniform_vkpo_gloves",
	"rhs_uniform_vkpo_gloves_alt"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["OPFOR_helmets", [
	"rhs_6b47_6m2",
	"rhs_6b47_6m2_1",
	"rhs_6b47_ess",
	"rhs_6b47_6B50",
	"rhs_6b47_emr_2",
	"rhs_6b47_emr_1",
	"rhs_6b47_emr",
	"rhs_6b47"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["BLUFOR_uniforms", [
	"FROG_USMC_Base_4_w",
	"FROG_USMC_KyleGloves_6_w",
	"FROG_USMC_KyleGloves_2_w",
	"FROG_USMC_KyleGloves_4_w"
] call BIS_fnc_selectRandom];

missionNamespace setVariable ["BLUFOR_helmets", [
	"MICH2000_Coverall_USMC_Preset_6_1",
	"MICH2000_Coverall_USMC_Preset_2_1",
	"MICH2000_Coverall_USMC_Preset_4_1",
	"MICH2000_Coverall_USMC_Preset_3_1",
	"MICH2000_Coverall_USMC_Preset_8_2",
	"MICH2000_Coverall_USMC_Preset_5_1"
] call BIS_fnc_selectRandom];