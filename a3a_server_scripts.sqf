CrititalLosesWest = 7; // потери для синих
CrititalLosesEast = 9; // потери для красных
missionNamespace setVariable ["a3a_endMissionTime", 4800, true];

[] spawn {
	waitUntil {sleep 10; a3a_var_started};
	while {isNil "srv_triggerFinished"} do { 
	sleep 10;
	
		if (((Flag_1 getVariable ["controledBy", west]) == east) && ((Flag_2 getVariable ["controledBy", west]) == east)) then
		
		{
			srv_triggerFinished = true;
			sleep 10;
			["ВС РФ захватили обе ключевые позиции!", east] call a3a_fnc_endMission;
		};
		
		if ((east countside playableUnits) < CrititalLosesEast) then {
		srv_triggerFinished = true;
		sleep 10;
		["ВС РФ понесли тяжёлые потери! Победа КМП США!", west] call a3a_fnc_endMission;};
		
		if ((west countside playableUnits) < CrititalLosesWest) then {
		srv_triggerFinished = true;
		sleep 10;
		["КМП США понесли тяжёлые потери, победа ВС РФ!", east] call a3a_fnc_endMission;};
		
		if (mkk_platform_missionTime >= a3a_endMissionTime) then { 
			srv_triggerFinished = true;
			["Армия США успела перекинуть резервы!", west] call a3a_fnc_endMission;
		}; 
	};
};