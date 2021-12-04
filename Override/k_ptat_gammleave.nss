//:: k_ptat_gammleave
/*
     The Gammoreans leave the hunter's lodge.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

void main()
{
    object oExit = GetWaypointByTag("tat17_gamorrexit");
    object oExit2 = GetWaypointByTag("tat17_gurkeexit");
    object oNarkal = GetObjectByTag("tat17_03narka_01");
    object oUgzak = GetObjectByTag("tat17_03ugzak_01");

    ClearAllActions();

    SetGlobalFadeOut(0.0, 3.0);

    ActionPauseConversation();

    SetGammoreanGoneGlobal(TRUE);

    AssignCommand(oNarkal, ClearAllActions());
    AssignCommand(oNarkal, ActionForceMoveToObject(oExit, TRUE, 1.0, 3.0));

    AssignCommand(oUgzak, ClearAllActions());
    AssignCommand(oUgzak, ActionForceMoveToObject(oExit, TRUE, 1.0, 3.0));

    ActionForceMoveToObject(oExit2, TRUE, 1.0, 3.0);
    ActionResumeConversation();
}
