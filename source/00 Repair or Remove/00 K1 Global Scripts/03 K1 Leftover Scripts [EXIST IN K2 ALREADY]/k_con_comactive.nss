//:: k_con_comactive
/*
     Is the droid active
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    if(UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_HAS_TALKED_TO))
    {
        return TRUE;
    }
    return FALSE;
}
