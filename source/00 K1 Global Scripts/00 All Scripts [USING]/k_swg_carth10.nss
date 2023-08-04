//:: k_swg_carth10
/*
    If Carth's personal dialogue is on tenth branch
    and third starmap uncovered
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_CARTH");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((iResult == 9) && (nPlot > 29))
    {
        return TRUE;
    }
    return FALSE;
}
