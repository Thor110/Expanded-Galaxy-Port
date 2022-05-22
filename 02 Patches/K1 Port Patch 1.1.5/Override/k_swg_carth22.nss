//:: k_swg_carth22
/*
    Dustil has just died
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nResult = GetGlobalNumber("KOR_DANEL");
    int nPlot = GetGlobalBoolean("K_SWG_DUSTIL2");
    if ((nResult == 5) && (nPlot == FALSE))
    {
        return TRUE;
    }
    return FALSE;
}
