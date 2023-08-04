//:: k_swg_bastila15
/*
    If Helena has been talked to
    she is waiting for the holocron
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("K_SWG_HELENA") == 3;
    return iResult;
}
