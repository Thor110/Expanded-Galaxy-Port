//:: k_swg_carth19
/*
    Dustil has been talked to
    Carth wants to find the evidence
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("KOR_DANEL") == 3;
    return iResult;
}
