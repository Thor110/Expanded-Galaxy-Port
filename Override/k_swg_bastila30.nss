//:: k_swg_bastila30
/*
    Bastila goes back to the bridge
    during a fade out.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
void main()
{
    int nPlot = GetGlobalNumber("K_SWG_BASTILA");
    SetGlobalNumber("K_SWG_BASTILA", (nPlot +1));

    SetGlobalFadeIn(1.5, 1.5);
    ActionPauseConversation();
    ActionMoveToObject(GetWaypointByTag("K_ROMANCE_RUNAWAY"));
    DelayCommand(2.0, ActionResumeConversation());
    DelayCommand(2.5, ActionJumpToObject( GetWaypointByTag("pebn_bastila") ));
}
