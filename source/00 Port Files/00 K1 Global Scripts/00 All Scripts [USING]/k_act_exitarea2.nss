//:: k_act_exitarea2
/*
    Causes an NPC to run to waypoint
    K_EXIT and destroy self
*/
//:: Created By:  Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    DelayCommand(0.5, UT_ExitArea(TRUE));
}
