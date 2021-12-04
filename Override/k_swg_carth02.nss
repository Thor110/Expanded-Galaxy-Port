//:: k_swg_carth02
/*
    If Carth's personal dialogue is on second branch
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult = GetGlobalNumber("K_SWG_CARTH");
    int nLevel = GetHitDice(GetFirstPC());
    int nLastLevel = GetGlobalNumber("K_SWG_CARTH_LEVEL");
    if ((iResult == 1) && (nLevel > nLastLevel))
    {
        return TRUE;
    }
    return FALSE;
}

