//:: k_swg_bastila12
/*
    The Bastila romance dialogue is in its 13th exchange
    (after the consumation on the Ebon Hawk)
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_BASTILA");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((iResult == 12) && (nPlot > 19))
    {
        return TRUE;
    }
    return FALSE;
}

