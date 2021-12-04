//:: k_swg_jolee18
/*
    If Sunry has been mentioned
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nPlot1 = GetGlobalBoolean("K_SWG_DAVIN");
    int nPlot2 = GetGlobalNumber("MAN_MURDER_PLOT");
    int nTalk = UT_GetPlotBooleanFlag(OBJECT_SELF, 5);

    if (((nPlot1 == TRUE) || (nPlot2 == 1) || (nPlot2 == 2)) && (nTalk == FALSE))
    {
        return TRUE;
    }
    return FALSE;
}
