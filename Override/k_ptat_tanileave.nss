//:: k_ptat_tanileave
/*
     Tanis leaves the hunter's lodge.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_tat"

void main()
{
    object oWaypoint = GetWaypointByTag("tat17_tanisexit");

    ActionPauseConversation();
    SetGlobalFadeOut(0.0, 3.0);
    ActionForceMoveToObject(oWaypoint, FALSE, 1.0, 3.0);
    ActionResumeConversation();
}
