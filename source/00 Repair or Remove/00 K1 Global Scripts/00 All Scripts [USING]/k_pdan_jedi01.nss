//:: k_pdan_jedi01
/*
    Checks to see if DAN_JEDI_PLOT is less than 2. This
    shows that the player has not yet been accepted for
    Jedi training.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_JEDI_PLOT") < 2);

    return iResult;
}

