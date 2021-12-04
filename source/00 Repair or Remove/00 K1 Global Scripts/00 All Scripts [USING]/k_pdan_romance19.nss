//:: k_pdan_romance19
/*
    Checks if DA_ESTATE_DONE is FALSE, meaning that
    the player has not previously entered the Sandral
    Estate.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_ESTATE_DONE") == FALSE)
    ;
    return iResult;
}

