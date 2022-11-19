//:: k_con_comver33
/*
     Verify that this option has not
     been used elsewhere already in
     the module.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    if(UT_GetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_DEACTIVATE_TURRETS))
    {
        return FALSE;
    }
    return TRUE;
}
