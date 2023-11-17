if isNil{vehprocessor} then {
	vehprocessor = compile preprocessFileLineNumbers "gear\_vehprocessor.sqf";
};
_this call vehprocessor; 
