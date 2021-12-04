//:: k_pdan_belaya01
/*
    Checks to see if DAN_BELAYAM_DONE is FALSE (meaning
    that the player has not met Belaya), and that
    DAN_JEDI_PLOT is less than 2 (meaning the player has
    not yet been accepted for Jedi training).
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_BELAYAM_DONE") == FALSE) && (GetGlobalNumber("DAN_JEDI_PLOT") < 2));
    if (iResult)
        SetGlobalBoolean("DAN_BELAYAM_DONE", TRUE);

    return iResult;
}

