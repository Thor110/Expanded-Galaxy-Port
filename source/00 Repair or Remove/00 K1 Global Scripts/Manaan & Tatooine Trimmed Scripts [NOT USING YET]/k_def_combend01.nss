//:: k_def_combend01
/*
    On End of Combat Round Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_COMBAT_ROUND_END);
    /*
    //This counts the number of combat rounds the creature has seen combat for
    //int nLocal = GetLocalNumber(OBJECT_SELF, SW_NUMBER_LAST_COMBO);
    //nLocal++;
    //SetLocalNumber(OBJECT_SELF, SW_NUMBER_LAST_COMBO, nLocal);
    //GN_MyPrintString("GENERIC DEBUG *************** Determine Combat Round from On End Combat Round");
    if(!GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(GetCommandable())
        {
            SpeakString("GEN_COMBAT_ACTIVE", TALKVOLUME_SILENT_TALK);
            GN_DetermineCombatRound();
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_COMBAT_ROUND_END))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1003));
    }
    */
}


