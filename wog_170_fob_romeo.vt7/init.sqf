wog3_no_auto_long_range_radio = true;

[] call WMT_fnc_BriefingMap;
[] execVM "briefing.sqf";

waitUntil {sleep 5; WMT_pub_frzState >= 3};

introText = "<t font='PuristaBold' size='1.6'>FOB Romeo</t><br/>1984<br />by Agentos"; 

[parseText introText, true, nil, 10, 3.2, 0] spawn BIS_fnc_textTiles;