//:: k_swg_bastila02
/*
    The Bastila romance dialogue is in its second exchange
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
    if ((iResult == 1) && (nPlot > 9) && (nLevel > nLastLevel))
    {
        return TRUE;
    }
    if (GetGlobalNumber("K_SWG_BASTILA") == 0 &&
        GetGlobalBoolean("Tar_Destroyed")== TRUE)
    {
        return TRUE;
    }

    return FALSE;
}
