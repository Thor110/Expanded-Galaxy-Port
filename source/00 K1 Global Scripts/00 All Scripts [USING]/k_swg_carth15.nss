//:: k_swg_carth15
/*
    Dustil has been killed
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nResult = GetGlobalNumber("KOR_DANEL");
    int nPlot = GetGlobalBoolean("K_SWG_DUSTIL1");
    if ((nResult == 5) && (nPlot == FALSE))
    {
        return TRUE;
    }
    return FALSE;
}
