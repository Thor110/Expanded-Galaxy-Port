//:: k_pdan_jedi06
/*
    Checks to see if DAN_JEDI_PLOT is 3, meaning that
    the players has successfully passed the first test.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_JEDI_PLOT") == 3);

    return iResult;
}
