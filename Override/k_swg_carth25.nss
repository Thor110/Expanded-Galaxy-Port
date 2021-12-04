//:: k_swg_carth25
/*
    After the final Star Map has been found
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nRomance = GetGlobalNumber("K_SWG_CARTH");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((nRomance == 14) && (nPlot > 49))
    {
        return TRUE;
    }
    return FALSE;
}
