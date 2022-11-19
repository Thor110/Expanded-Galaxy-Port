//:: k_pdan_casus03
/*
    Checks if DAN_CASUS_PLOT is greater than 1, meaning
    that the player has seen the body of Casus Sandral.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_CASUS_PLOT") > 1);

    return iResult;
}

