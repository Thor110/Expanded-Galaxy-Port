//:: k_pdan_planet06
/*
    Checks to see if DAN_PLANET_PLOT is less than 2
    (meaning the player has not yet been given the main
    quest).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_PLANET_PLOT") < 2);

    return iResult;
}
