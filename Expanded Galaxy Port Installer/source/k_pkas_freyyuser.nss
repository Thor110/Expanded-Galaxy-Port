//::///////////////////////////////////////////////
//:: User
//:: k_pkas_freyyuser
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    When Freyyr dies a global must be set.
*/
//:://////////////////////////////////////////////
//:: Created By: John Winski
//:: Created On: August 1, 2002
//:://////////////////////////////////////////////
#include "k_inc_kas"

void main()
{
    object oPC = GetFirstPC();
    int nUser = GetUserDefinedEventNumber();

    if (nUser == 100)
    {
        if (GetIsInCombat(oPC) == FALSE &&
            GetIsInCombat(OBJECT_SELF) == FALSE &&
            GetIsConversationActive() == FALSE)
        {
        }
        else
        {
            DelayCommand(3.0, SignalEvent(OBJECT_SELF, EventUserDefined(100)));
        }
    }
    else if(nUser == 1001) //HEARTBEAT
    {

    }
    else if(nUser == 1002) // PERCEIVE
    {

    }
    else if(nUser == 1003) // END OF COMBAT
    {

    }
    else if(nUser == 1004) // ON DIALOGUE
    {

    }
    else if(nUser == 1005) // ATTACKED
    {

    }
    else if(nUser == 1006) // DAMAGED
    {
        if (GetFreyyrBeatLocal() == FALSE &&
            IntToFloat(GetMaxHitPoints()) / IntToFloat(GetCurrentHitPoints()) >= 4.0)
        {
            SetFreyyrBeatLocal(TRUE);
            SurrenderToEnemies();

            ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE);
//            SignalEvent(OBJECT_SELF, EventUserDefined(100));
        }
    }
    else if(nUser == 1007) // DEATH
    {
        SetFreyyrDeadGlobal(TRUE);
        AddJournalQuestEntry("kas23_mainwookplot",100);

    }
    else if(nUser == 1008) // DISTURBED
    {

    }
    else if(nUser == 1009) // BLOCKED
    {

    }
    else if(nUser == 1010) // SPELL CAST AT
    {

    }
}
