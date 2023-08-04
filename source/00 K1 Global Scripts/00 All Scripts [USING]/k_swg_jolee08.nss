//:: k_swg_jolee08
/*
    If Jolee's story is on its eighth part
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nResult = GetGlobalNumber("K_SWG_JOLEE");
    int nLastLevel = GetGlobalNumber("K_SWG_JOLEE_LEVEL");
    int nLevel = GetHitDice(GetFirstPC());
    if ((nResult == 7) && (nLevel > nLastLevel))
    {
        return TRUE;
    }
    return FALSE;
}
