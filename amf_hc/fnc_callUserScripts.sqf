#include "script_component.hpp"
LOG("Userscripts called");
if(!isNil QGVAR(userscripts)) then {
	LOG("Userscripts not nil");
	TRACE_1("Userscripts", GVAR(userscripts));
	if(IS_ARRAY(GVAR(userscripts))) then {
		{
			TRACE_1("Userscript foreach", _x);
			if(IS_CODE(_x)) then {
				LOG("Userscript is code and is called");
				[isServer] call _x;
			};

		} foreach GVAR(userscripts);

	};
};