//:: k_hen_combend01
/*
    On End of Combat Round Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_HENCH_EVENT_ON_COMBAT_ROUND_END);
    /*
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        //MODIFIED by Preston Watamaniuk April 14
        //Took out some legacy code for the Endar Spire
        //Changed the shout from Combat Active to I was attacked.
        if(GetPartyMemberByIndex(0) != OBJECT_SELF && !GetPlayerRestrictMode())
        {
            SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
            GN_DetermineCombatRound();
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_COMBAT_ROUND_END))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1003));
    }
    */
    /*
    LEAVE COMMENTED OUT IF THE ABOVE GOES BACK IN
    if(GetPartyMemberByIndex(0) == OBJECT_SELF)
    {
        SpeakString("GEN_COMBAT_ACTIVE", TALKVOLUME_SILENT_TALK);
    }
    */
}
