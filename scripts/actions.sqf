flags = [Flag_1, Flag_2];
if (playerside == east) then {
	{
		[
			_x, 
			"Поднять флаг",
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
			"((_this distance _target) < 5) && ((_target getVariable 'controledBy') != east)",
			"(_this distance _target) < 5",
			{[_target, 0] call BIS_fnc_animateFlag},
			{},
			
			{_target setVariable ["controledBy", east, true]; 
			
			[_target, "ca\data\flag_rus_co.paa"] remoteExec ["setFlagTexture", _target];
								
			[_target, 1] call BIS_fnc_animateFlag},
			{[_target, 1] call BIS_fnc_animateFlag},
			
			[],
			10, 
			0, 
			false, 
			false
		] call BIS_fnc_holdActionAdd;
	} forEach flags; 
};