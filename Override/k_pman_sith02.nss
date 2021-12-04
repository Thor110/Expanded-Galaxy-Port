#include "k_inc_man"
void main()
{
    ChangeToStandardFaction(GetObjectByTag("man27_sithdip"),STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("pman_sithwara"),STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("pman_sithwarb"),STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("pman_sithward"),STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(GetObjectByTag("pman_sithwarc"),STANDARD_FACTION_HOSTILE_1);
    ChangeToStandardFaction(OBJECT_SELF,STANDARD_FACTION_HOSTILE_1);

ExecuteScript("k_ai_master",GetObjectByTag("man27_sithdip"),3001);
ExecuteScript("k_ai_master",GetObjectByTag("pman_sithwara"),3001);
ExecuteScript("k_ai_master",GetObjectByTag("pman_sithwarb"),3001);
ExecuteScript("k_ai_master",GetObjectByTag("pman_sithwarc"),3001);
ExecuteScript("k_ai_master",GetObjectByTag("pman_sithward"),3001);
	
    ExecuteScript("k_ai_master",OBJECT_SELF,3001);
}
