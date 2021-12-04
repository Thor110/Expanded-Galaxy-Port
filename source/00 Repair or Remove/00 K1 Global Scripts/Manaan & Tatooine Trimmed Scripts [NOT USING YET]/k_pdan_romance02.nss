//:: k_pdan_romance02
/*
    Checks to see if DAN_ROMANCE_PLOT is 3, meaning that
    the player has returned Shen to his father.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_ROMANCE_PLOT") == 3);

    return iResult;
}

