//:: k_pdan_romance17
/*
    Checks to see if DAN_HATE_DONE is TRUE, meaning that
    Rahasia hates the player.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("DAN_HATE_DONE");

    return iResult;
}

