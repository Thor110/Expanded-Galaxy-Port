//:: k_pdan_jedi35
/*
    Checks to see if DAN_JEDI_PLOT is 2, meaning that
    the players has been accepted for Jedi training, but
    not yet passed the first test.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_JEDI_PLOT") == 2);

    return iResult;
}

