//:: k_swg_jolee16
/*
    If Sunry was turned in
*/
//:: Created By: David Gaider
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalNumber("MAN_MURDER_PLOT") == 3;
    return iResult;
}
