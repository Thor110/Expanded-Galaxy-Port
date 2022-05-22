//:: k_swg_bastila24
/*
    If the Manaan dream has been played
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("K_VIS_MANAAN") == TRUE;
    return iResult;
}
