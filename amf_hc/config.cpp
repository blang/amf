class CfgPatches
{
	class AMF_HC {
	    version = "0.0.1";
	    versionStr = "0.0.1";
	    versionAr[] = {0,0,1};
	    author[] = {"Echo12 Coati (blang)"};
	    authorUrl = "https://github.com/blang/";
	    units[] = {};
	    weapons[] = {};
	    requiredVersion = 0.60;
	    requiredAddons[] = {"AMF_Core"};
	};
};




class Extended_PreInit_EventHandlers
{
	class AMF_HC {
        clientInit = "call compile preprocessFileLineNumbers 'x\amf\addons\hc\XEH_PreClientInit.sqf'";
        serverInit = "call compile preprocessFileLineNumbers 'x\amf\addons\hc\XEH_PreServerInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
	class AMF_HC {
        clientInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\amf\addons\hc\XEH_PostClientInit.sqf'";
        serverInit = "e12retnull = [] spawn compile preprocessFileLineNumbers 'x\amf\addons\hc\XEH_PostServerInit.sqf'";
    };
};





