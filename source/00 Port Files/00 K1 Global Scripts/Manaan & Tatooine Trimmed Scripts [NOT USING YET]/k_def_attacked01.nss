//:: k_def_attacked01
/*
    Default On Attacked Script
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_switch"
#include "k_inc_debug"

void main()
{
    ExecuteScript("k_ai_master", OBJECT_SELF, KOTOR_DEFAULT_EVENT_ON_ATTACKED);
    /*
    //Shout that I was attacked
    SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
    //SpeakString("GEN_COMBAT_ACTIVE", TALKVOLUME_SILENT_TALK);
    if(GetCommandable() && !GN_GetSpawnInCondition(SW_FLAG_AI_OFF))
    {
        if(!GN_GetIsFighting(OBJECT_SELF))
        {
            GN_MyPrintString("GENERIC DEBUG *************** Determine Combat Round from On Attacked");
            GN_DetermineCombatRound();
            //Shout that I was attacked
            SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
            //SpeakString("GEN_COMBAT_ACTIVE", TALKVOLUME_SILENT_TALK);
        }
        else if(GetCurrentAction() == ACTION_QUEUEEMPTY)
        {
            GN_MyPrintString("GENERIC DEBUG *************** Determine Combat Round from On Attacked");
            GN_DetermineCombatRound();
            //Shout that I was attacked
            SpeakString("GEN_I_WAS_ATTACKED", TALKVOLUME_SILENT_TALK);
        }
    }
    if(GN_GetSpawnInCondition(SW_FLAG_EVENT_ON_ATTACKED))
    {
        SignalEvent(OBJECT_SELF, EventUserDefined(1005));
    }
    */
}
