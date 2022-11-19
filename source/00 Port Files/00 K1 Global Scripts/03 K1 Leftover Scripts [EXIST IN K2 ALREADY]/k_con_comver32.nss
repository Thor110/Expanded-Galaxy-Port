//:: k_con_comver32
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
    if(UT_GetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_USE_GAS))
    {
        return FALSE;
    }
    return TRUE;
}
