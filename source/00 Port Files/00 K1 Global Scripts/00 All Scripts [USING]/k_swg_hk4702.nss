//:: k_swg_hk4702
/*
    If the PC knows about hk-47's memory
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_HK47_FIX") > 0;
    return iResult;
}
