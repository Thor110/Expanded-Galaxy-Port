//:: k_pdan_romance40
/*
    Checks to see if DAN_ROMANCE_PLOT is 5 (meaning that
    Nurik has accepted Shen and Rahasia) and
    DAN_NEMOR_DONE is FALSE (meaning that Nemo has not
    spoken to the player about the romance outcome yet).
    This conversation will not repeat since DAN_NEMOR_DONE
    is set to TRUE to show that this conversation has
    taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_ROMANCE_PLOT") == 5) && (GetGlobalBoolean("DAN_NEMOR_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_NEMOR_DONE", TRUE);

    return iResult;
}

