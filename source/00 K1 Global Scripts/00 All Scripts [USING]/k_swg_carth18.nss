//:: k_swg_carth18
/*
    Jordo has been talked to
    Carth wants to find Dustil on Korriban
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("KOR_DANEL") == 2;
    return iResult;
}
