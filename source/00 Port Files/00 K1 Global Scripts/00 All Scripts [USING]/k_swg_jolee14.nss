//:: k_swg_jolee14
/*
    If the PC has not talked to Jolee about the trial
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    int nTalk = UT_GetPlotBooleanFlag(OBJECT_SELF, 4);
    int nPlot = GetGlobalNumber("MAN_MURDER_PLOT");

    if ((nTalk == FALSE) && (nPlot > 2))
    {
        return TRUE;
    }
    return FALSE;
}
