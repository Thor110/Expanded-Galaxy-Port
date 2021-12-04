//:: k_pdan_planet02
/*
    Checks to see if DAN_PLANET_PLOT is greater than 1
    (meaning that the player has been given the main
    quest) and DAN_VANDARP_DONE is FALSE (meaning that
    the player has not talked to Vandar about the main
    quest again). This conversation will not repeat since
    DAN_VANDARP_DONE is et to TRUE to show that this
    conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_PLANET_PLOT") > 1) && (GetGlobalBoolean("DAN_VANDARP_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_VANDARP_DONE", TRUE);

    return iResult;
}

