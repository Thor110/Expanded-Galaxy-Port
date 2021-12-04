//:: k_swg_bastila22
/*
    Checks to see if any of the premonitions
    have already been played
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("K_VIS_TATOOINE") == TRUE) ||
              (GetGlobalBoolean("K_VIS_KASHYYYK") == TRUE) ||
              (GetGlobalBoolean("K_VIS_KORRIBAN") == TRUE) ||
              (GetGlobalBoolean("K_VIS_MANAAN") == TRUE);
    return iResult;
}
