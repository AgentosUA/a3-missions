if isNil{unitprocessor} then {
	unitprocessor = compile preprocessFileLineNumbers "gear\_unitprocessor.sqf";
};
_this call unitprocessor; 
