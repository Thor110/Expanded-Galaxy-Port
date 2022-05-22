//:: k_swg_bastila03
/*
    The Bastila romance dialogue is in its third exchange
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nLastPlanet = GetGlobalNumber("K_LastPlanet");
    int iResult = GetGlobalNumber("K_SWG_BASTILA");
    int nLevel = GetHitDice(GetFirstPC());
    int nLastLevel = GetGlobalNumber("K_SWG_BASTILA_LEVEL");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((iResult == 2) && (nPlot > 9))
        {
         return TRUE;
        }

    return FALSE;
}

