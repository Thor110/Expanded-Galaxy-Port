//:: k_pdan_jedi34
/*
    Checks to see if DAN_JEDI_PLOT is less than 7
    (meaning that the player is not yet a Padawan) and
    DAN_NEMOF_DONE is FALSE (meaning that the player has
    not yet met Nemo). This conversation will not repeat
    since DAN_NEMOF_DONE is set to TRUE to show that this
    conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") < 7) && (GetGlobalBoolean("DAN_NEMOF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_NEMOF_DONE", TRUE);

    return iResult;
}

