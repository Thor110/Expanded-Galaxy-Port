//:: k_pebn_loc08
/*
     Sets the location for the drop off
     and brings up the party selection
     screen.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    UT_SetPlotBooleanFlag(OBJECT_SELF, 8, TRUE);
    if(GetGlobalNumber("K_CURRENT_PLANET") != 10)
    {
        DelayCommand(1.5,ShowPartySelectionGUI("k_pebn_swoop"));
    }
    else
    {
        DelayCommand(1.5, ExecuteScript("k_pebn_swoop", OBJECT_SELF));
    }
}
