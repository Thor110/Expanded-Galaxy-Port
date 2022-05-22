//:: k_swg_bastila07
/*
    The Bastila romance dialogue is in its seventh exchange
    and the first starmap has been found
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
    if ((iResult == 6) && (nPlot > 9) && (nLevel > nLastLevel))
    {
        return TRUE;
    }

       return FALSE;
}
