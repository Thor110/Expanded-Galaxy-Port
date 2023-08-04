//:: k_pdan_planet03
/*
    Checks to see if DAN_JEDI_PLOT is 7 (meaning the
    player has become a Padawan) and DAN_STARMAP_DONE
    is FALSE (meaning the player has not yet seen the
    Star Map).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") == 7) && (GetGlobalBoolean("DAN_STARMAP_DONE") == FALSE) && (GetGlobalBoolean("DAN_VANDARR_DONE") == FALSE));

    return iResult;
}

