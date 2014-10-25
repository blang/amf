#include "script_component.hpp"

if(isMultiplayer) then {
    LOG("Multiplayer - Check if server should run AI");
    if(isNil "paramsArray") then{ paramsArray=[0,0,0]};
        
    //HC should be used
    if(paramsArray select 0 == 0) then{
        if(!isNil QGVAR(DELAYED_START)) then {
            waitUntil{!isNil QGVAR(DELAYED_START_GO)};
        };
        LOG("Server should run AI");
        HCPresent = false;
        HCName = "NONE";
        publicVariable "HCPresent";
        publicVariable "HCName";
        [] call FUNC(callUserScripts);
        LOG("Server runs AI");  
    }else{
    LOG("Server will not run AI");
};
}else{
    if(!isNil QGVAR(DELAYED_START)) then {
        waitUntil{!isNil QGVAR(DELAYED_START_GO)};
    };
    LOG("No Multiplayer - Server/Client is starting DAC"); 
    HCPresent = false;
    HCName = "NONE";
    publicVariable "HCPresent";
    publicVariable "HCName";
    [] call FUNC(callUserScripts);
};


