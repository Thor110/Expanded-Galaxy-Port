//:: k_pdan_juhani15
/*
    Checks to see if DAN_JUHANIQ_DONE is true. This
    determines if Zhar has given the player the quest to
    cleanse the grove.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = GetGlobalBoolean("DAN_JUHANIQ_DONE");

    return iResult;
}

