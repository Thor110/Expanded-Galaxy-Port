//:: k_swg_carth06
/*
    If Carth's personal dialogue is on sixth branch
    and first starmap uncovered
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_CARTH");
    int nLevel = GetHitDice(GetFirstPC());
    int nLastLevel = GetGlobalNumber("K_SWG_CARTH_LEVEL");
    int nPlot = GetGlobalNumber("K_STAR_MAP");
    if ((iResult == 5) && (nPlot > 9) && (nLevel > nLastLevel))
    {
        return TRUE;
    }
    return FALSE;
}
