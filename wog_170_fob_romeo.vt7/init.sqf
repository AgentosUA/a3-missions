wog3_no_auto_long_range_radio = true;

[] call WMT_fnc_BriefingMap;
[] execVM "briefing.sqf";

waitUntil {sleep 5; WMT_pub_frzState >= 3};
[

	[
		["3:00 AM", "<t align = 'left' shadow = '1' size = '0.7' font='PuristaMedium' color='#91f5a4'>%1</t><br/>"],
		["May 6, 1984", "<t align = 'left' shadow = '1' size = '0.7' font='PuristaMedium' color='#91f5a4'>%1</t><br/>"],
		["FOB Romeo", "<t align = 'left' shadow = '1' size = '0.7' font='PuristaMedium' color='#91f5a4'>%1</t><br/>"],
		["Somewhere in Europe", "<t align = 'left' shadow = '1' size = '0.7' font='PuristaMedium' color='#91f5a4'>%1</t><br/>"],
		[format ["%1", name player], "<t align = 'left' shadow = '1' size = '0.7' font='PuristaMedium' color='#91f5a4'>%1</t><br/>", 30]
	], -0.65, -0.3

] spawn BIS_fnc_typeText;
