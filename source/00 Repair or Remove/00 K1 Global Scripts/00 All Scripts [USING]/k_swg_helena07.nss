//:: k_swg_helena07
/*
    If Bastila has the holocron
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    object oBastila = GetObjectByTag("bastila");
    object oPlot = GetItemPossessedBy(oBastila, "holocron");
    if (GetIsObjectValid(oPlot))
    {
        return TRUE;
    }
    return FALSE;
}
