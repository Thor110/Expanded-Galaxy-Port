//:: k_pdan_planet01
/*
    Checks to see if DAN_STARMAP_DONE is TRUE (meaning
    the player has already seen the Star Map) and
    DAN_JEDI_PLOT is less than 7 (meaning the player has
    not yet become a Padawan).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_STARMAP_DONE") == TRUE) && (GetGlobalNumber("DAN_JEDI_PLOT") < 7) && (GetGlobalBoolean("DAN_VANDARM_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_VANDARM_DONE", TRUE);

    return iResult;
}

