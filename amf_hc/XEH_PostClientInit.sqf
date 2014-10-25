#include "script_component.hpp"
TRACE_1("Process","PostInitClient");
waitUntil{!isNull player};

if(isMultiplayer) then {
    LOG("Multiplayer");
    
    //Only executed on hc client
    if (!hasInterface && !isServer) then{
        if(isNil "paramsArray") then{ paramsArray=[0,0,0]};
        
        //HC should be used
        if(paramsArray select 0 == 1) then{
            if(!isNil QGVAR(DELAYED_START)) then {
                waitUntil{!isNil QGVAR(DELAYED_START_GO)};
            };
            LOG("HC present and activated");
            HCName = name player; 
            publicVariable "HCName";
            HCPresent = true;
            publicVariable "HCPresent";
            [] call FUNC(callUserScripts);
        }else{
            LOG("HC present but not activated");  
        };
    };
}else{
    LOG("No Multiplayer - nothing to do for the client");   
};

