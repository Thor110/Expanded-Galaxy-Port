//:: k_swg_jolee12
/*
    If the PC has the evidence tape
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    object oTape = GetItemPossessedBy(GetFirstPC(), "W_RTAPE");
    int nTalk = UT_GetPlotBooleanFlag(OBJECT_SELF, 3);
    int nPlot = GetGlobalNumber("MAN_MURDER_PLOT");

    if ((GetIsObjectValid(oTape)) && (nTalk == FALSE) && (!nPlot > 2))
    {
        return TRUE;
    }
    return FALSE;
}
