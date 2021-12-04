//:: k_pdan_jedi02
/*
    Checks to see if DAN_JEDI_PLOT is in the range of 2 to
    6. This means that the player has been accepted for
    Jedi training but has not yet become a Padawan.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult, t;

    t = GetGlobalNumber("DAN_JEDI_PLOT");

    iResult = ((t > 1) && (t < 7));

    return iResult;
}

