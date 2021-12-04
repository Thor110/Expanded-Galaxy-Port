//:: k_swg_bastila18
/*
    Bastila has the holocron
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    object oBastila = GetObjectByTag("bastila");
    object oPlot1 = GetItemPossessedBy(oBastila, "holocron");
    int nPlot2 = GetGlobalBoolean("K_SWG_BASTILA_HOLO");
    if (GetIsObjectValid(oPlot1) && (nPlot2 == FALSE))
    {
        return TRUE;
    }
    return FALSE;
}
