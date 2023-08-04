//:: k_swg_bastila23
/*
    If the Korriban dream has been played
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("K_VIS_KORRIBAN") == TRUE;
    return iResult;
}
