//:: k_pdan_jedi10
/*
    Checks to see if DAN_JEDI_PLOT is less than 2 (meaning
    the player has not yet been accepted for Jedi training)
    and DAN_KARALF_DONE is FALSE (meaning Karal has not
    greeted the player for the first time). This
    conversation will not repeat since DAN_KARALF_DONE is
    set to TRUE to show that this conversatio has taken
    place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JEDI_PLOT") < 2) && (GetGlobalBoolean("DAN_KARALF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_KARALF_DONE", TRUE);

    return iResult;
}

