//:: k_pdan_romance21
/*
    Checks to see if DAN_ROMANCE_PLOT is either 1 or 2,
    meaning the player has been given the quest, but has
    not yet finished it.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult, t;

    t = GetGlobalNumber("DAN_ROMANCE_PLOT");

    iResult = ((t > 0) && (t < 3));

    return iResult;
}

