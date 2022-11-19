#include "k_inc_man"
void main()
{
    string sTag = "man27_seljed";
    int nIdx;
    object oSelkath;
    for(nIdx = 1;nIdx <= 3;nIdx++)
    {
        oSelkath = GetObjectByTag(sTag + IntToString(nIdx));
        ChangeToStandardFaction(oSelkath,STANDARD_FACTION_HOSTILE_1);

        ExecuteScript("k_ai_master",oSelkath,3001);
    }
    ChangeToStandardFaction(OBJECT_SELF,STANDARD_FACTION_HOSTILE_1);
    ExecuteScript("k_ai_master",OBJECT_SELF,3001);
}
