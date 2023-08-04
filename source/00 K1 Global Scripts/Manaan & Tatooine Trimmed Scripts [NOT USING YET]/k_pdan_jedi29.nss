//:: k_pdan_jedi29
/*
    Checks to see if DAN_JEDI_PLOT is 5, meaning that
    the player has built a lightsaber.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_JEDI_PLOT") == 5);

    return iResult;
}

