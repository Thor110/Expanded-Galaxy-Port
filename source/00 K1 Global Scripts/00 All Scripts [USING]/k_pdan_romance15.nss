//:: k_pdan_romance15
/*
    Checks to see if DAN_ESTATEC_DONE is FALSE, meaning
    that the player did not enter the estate by telling
    the droid about the Body of Casus Sandral.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalBoolean("DAN_ESTATEC_DONE") == FALSE);

    return iResult;
}

