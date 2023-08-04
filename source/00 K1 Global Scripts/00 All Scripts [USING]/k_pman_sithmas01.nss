#include "k_inc_man"
void main()
{
    if(IsNPCPartyMember(NPC_CANDEROUS) == FALSE)
    {
        object oSelkath = GetObjectByTag("man27_seljed4");
        object oSelkath2 = GetObjectByTag("man27_seljed7");
        object oMaster = GetObjectByTag("man27_sithmas");
        ChangeToStandardFaction(oSelkath,STANDARD_FACTION_HOSTILE_1);
        ChangeToStandardFaction(oSelkath2,STANDARD_FACTION_HOSTILE_1);
        ExecuteScript("k_ai_master",oSelkath,3001);
        ExecuteScript("k_ai_master",oSelkath2,3001);
        ChangeToStandardFaction(oMaster,STANDARD_FACTION_HOSTILE_1);
        ExecuteScript("k_ai_master",OBJECT_SELF,3001);
    }
}
