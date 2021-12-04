//:: k_pdan_romance36
/*
    Checks to see if DAN_MEETS_DONE is FALSE, meaning
    that the player has not met Shen before. This
    conversation will not repeat since DAN_MEETS_DONE
    is set to TRUE to show that this conversation has
    taken place.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_MEETS_DONE") == FALSE);
    if (iResult)
        SetGlobalBoolean("DAN_MEETS_DONE", TRUE);

    return iResult;
}

