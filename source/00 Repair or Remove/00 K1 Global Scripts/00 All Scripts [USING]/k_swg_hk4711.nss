//:: k_swg_hk4711
/*
    If not all of HK-47's memories have been activated
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_HK47_FIX") < 5;
    return iResult;
}
