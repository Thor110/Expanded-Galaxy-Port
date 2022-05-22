//:: k_swg_hk4704
/*
    Player has only recovered memories 1 & 2
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_HK47_FIX") < 3;
    return iResult;
}
