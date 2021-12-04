//:: k_pdan_jedi04
/*
    Checks to see if DAN_JEDI_PLOT is 7. This determines
    if the player has become a Padawan.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_JEDI_PLOT") == 7);

    return iResult;
}

