//:: k_act_exitarea
/*
    Causes an NPC to move to waypoint
    K_EXIT and destroy self
*/
//:: Created By:  Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    DelayCommand(0.5, UT_ExitArea());
}
