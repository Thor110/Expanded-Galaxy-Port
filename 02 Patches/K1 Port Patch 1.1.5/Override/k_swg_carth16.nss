//:: k_swg_carth16
/*
    Dustil and Carth have been reunited
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nResult = GetGlobalNumber("KOR_DANEL");
    int nPlot = GetGlobalBoolean("K_SWG_DUSTIL1");
    if ((nResult == 4) && (nPlot == FALSE))
    {
        return TRUE;
    }
    return FALSE;
}
