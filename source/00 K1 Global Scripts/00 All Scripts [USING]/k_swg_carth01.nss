//:: k_swg_carth01
/*
    If Carth's personal dialogue has not been started
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_CARTH") == 0;
    return iResult;
}
