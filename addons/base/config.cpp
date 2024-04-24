#include "macros\defines.hpp"
class CfgPatches
{
	class ADDON
	{
		name="";
		units[]={};
		weapons[]={};
		requiredVersion=REQ_VERSION;
		requiredAddons[]={
			"ace_field_rations",
			"cba_main"
		};
		authors[]=
        {
			"Daisy"
        };
    };
};
class CfgFunctions {
	class PREFIX {
		tag=STR(PREFIX);
		class COMPONENT {
			//file="base\functions";
			//class loop;
			//class playerInit {postInit=1;};
			SQFC(loop);
			SQFC_POST(playerInit);
		};
	};
};