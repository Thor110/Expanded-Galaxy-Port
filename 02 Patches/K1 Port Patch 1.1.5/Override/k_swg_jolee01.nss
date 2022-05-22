//:: k_swg_jolee01
/*
    If Jolee's story is on its first part
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_JOLEE") == 0 &&
              GetGlobalNumber("K_CURRENT_PLANET")!=20;
    return iResult;
}
