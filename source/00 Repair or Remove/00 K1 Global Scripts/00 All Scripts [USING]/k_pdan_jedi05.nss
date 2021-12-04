//:: k_pdan_jedi05
/*
    Checks to see if DAN_JEDI_PLOT is in the range of 2 to
    6 (meaning that the player has not yet been accepted
    for Jedi training) and that DAN_CRATISF_DONE is FALSE
    (meaning that Crattis has not welcomed the player as
    a new recruit). This conversation will not repeat as
    DAN_CRATISF_DONE is set to TRUE to show that this
    conversation has taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult, t;

    t = GetGlobalNumber("DAN_JEDI_PLOT");

    iResult = ((t > 1) && (t < 7) && (GetGlobalBoolean("DAN_CRATISF_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_CRATISF_DONE", TRUE);

    return iResult;
}

