//:: k_swg_carth07
/*
    If Carth's personal dialogue is on seventh branch
    and second starmap uncovered
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_CARTH");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((iResult == 6) && (nPlot > 19))
    {
        return TRUE;
    }
    return FALSE;
}
