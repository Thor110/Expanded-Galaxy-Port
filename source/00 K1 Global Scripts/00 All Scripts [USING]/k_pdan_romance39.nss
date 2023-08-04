//:: k_pdan_romance39
/*
    Checks to see if DAN_ROMANCE_PLOT is 4 (meaning that
    Shen and Rahasia have fled to the Jedi Enclave) and
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

    iResult = ((GetGlobalNumber("DAN_ROMANCE_PLOT") == 4) && (GetGlobalBoolean("DAN_NEMOR_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_NEMOR_DONE", TRUE);

    return iResult;
}

