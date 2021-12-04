//:: k_ptat_kraytran
/*
     This is the transition to the krayt
     dragon area.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

void main()
{
    object oEntered = GetEnteringObject();
    object oPC = GetFirstPC();
    object oSpeaker = GetNearestObjectByTag("tat18_kraytspeak", oPC);

    if (GetIsPC(oEntered) == TRUE)
    {
        if (GetKraytMapGlobal() == FALSE)
        {
            UT_NPC_InitConversation("tat18_kraytspeak");
//            AssignCommand(oSpeaker, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
        }
//        else
//        {
//            StartNewModule("tat_m18ac", "tat18aa_tat18ac");
//        }
    }
}
