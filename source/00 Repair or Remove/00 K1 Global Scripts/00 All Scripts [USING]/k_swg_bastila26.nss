//:: k_swg_bastila26
/*
    If the Tatooine dream has been played
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("K_VIS_TATOOINE") == TRUE;
    return iResult;
}
