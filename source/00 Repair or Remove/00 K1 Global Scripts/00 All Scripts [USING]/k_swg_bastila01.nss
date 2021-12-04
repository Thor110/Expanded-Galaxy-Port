//:: k_swg_bastila01
/*
    The Bastila romance dialogue is in its first exchange
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_BASTILA") == 0 &&
              GetGlobalBoolean("Tar_Destroyed")== FALSE;
    return iResult;
}
