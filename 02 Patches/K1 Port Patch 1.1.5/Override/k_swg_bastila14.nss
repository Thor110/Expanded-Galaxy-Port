//:: k_swg_bastila14
/*
    If Malare has been talked to
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_HELENA") == 2;
    return iResult;
}
