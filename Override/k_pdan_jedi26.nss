//:: k_pdan_jedi26
/*
    Checks to see if DAN_JEDI_PLOT is 1, meaning that
    the players is being considered for Jedi training.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_JEDI_PLOT") == 1);

    return iResult;
}

