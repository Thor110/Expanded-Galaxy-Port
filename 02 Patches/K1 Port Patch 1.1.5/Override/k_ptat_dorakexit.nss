//:: k_ptat_dorakexit
/*
     Dorak leaves.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oExit = GetWaypointByTag("tat17ad_exit");

    ActionPauseConversation();
    SetGlobalFadeOut(0.0, 3.0);
    ActionForceMoveToObject(oExit, TRUE, 1.0, 3.0);
    ActionResumeConversation();
}
