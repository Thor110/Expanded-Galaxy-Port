//:: k_swg_hk4707
/*
    If HK-47 is on his first memory
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_HK47_FIX") == 1;
    return iResult;
}
