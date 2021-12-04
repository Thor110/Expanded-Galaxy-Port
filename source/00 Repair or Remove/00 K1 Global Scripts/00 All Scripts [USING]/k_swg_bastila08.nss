//:: k_swg_bastila08
/*
    The Bastila romance dialogue is in its eighth exchange
    and the second starmap has been found
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_BASTILA");
    int nLevel = GetHitDice(GetFirstPC());
    int nLastLevel = GetGlobalNumber("K_SWG_BASTILA_LEVEL");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((iResult == 7) && (nPlot > 19) && (nLevel > nLastLevel))
    {
        return TRUE;
    }
    return FALSE;
}
