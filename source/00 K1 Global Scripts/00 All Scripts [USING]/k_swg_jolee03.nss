//:: k_swg_jolee03
/*
    If Jolee's story is on its third part
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int nResult = GetGlobalNumber("K_SWG_JOLEE");
    int nLastLevel = GetGlobalNumber("K_SWG_JOLEE_LEVEL");
    int nLevel = GetHitDice(GetFirstPC());
    if ((nResult == 2) && (nLevel > nLastLevel))
    {
        return TRUE;
    }
    return FALSE;
}
