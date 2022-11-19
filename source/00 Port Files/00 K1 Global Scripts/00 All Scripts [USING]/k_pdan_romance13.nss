//:: k_pdan_romance13
/*
    Checks to see if DAN_ROMANCE_PLOT is less than 3,
    meaning that the quest has not yet been completed.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_ROMANCE_PLOT") < 3);

    return iResult;
}

