//:: k_pdan_planet04
/*
    Checks to see if DAN_PLANET_PLOT is 2, meaning that
    the player has been given the main quest to find the
    Star Maps.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_PLANET_PLOT") == 2);

    return iResult;
}

