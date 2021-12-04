//:: k_pdan_romance23
/*
    Checks to see if DAN_ROMANCE_PLOT is 4 (meaning that
    Shen and Rahasia ran away to the Jedi Enclave) and
    DAN_VANDARS_DONE is FALSE (meaning the player has not
    yet talked to Vandar about the romance outcome). This
    conversation will not repeat since DAN_VANDARS_DONE
    is et to TRUE to show that this conversation has
    taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalBoolean("DAN_VANDARS_DONE") == FALSE) && (GetGlobalNumber("DAN_ROMANCE_PLOT") == 4));
    if (iResult)
        SetGlobalBoolean("DAN_VANDARS_DONE", TRUE);

    return iResult;
}

