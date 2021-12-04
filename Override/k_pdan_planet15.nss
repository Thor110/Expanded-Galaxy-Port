//:: k_pdan_planet15
/*
    Checks to see if DAN_PLANET_PLOT is greater than 1
    (meaning that the player has been assigned the main
    quest) and DAN_VROOKP_DONE is FALSE (meaning that
    Vrook has not yet given advice to the player). This
    conversation will not repeat since DAN_VROOKP_DONE
    is set to TRUE to show that this conversation has
    taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_PLANET_PLOT") > 1) && (GetGlobalBoolean("DAN_VROOKP_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_VROOKP_DONE", TRUE);

    return iResult;
}

