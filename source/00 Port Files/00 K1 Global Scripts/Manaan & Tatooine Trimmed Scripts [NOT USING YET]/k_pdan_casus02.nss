//:: k_pdan_casus02
/*
    Checks to see if DAN_CASUS_PLOT is 2, meaning that the
    player has seen the body of Casus Sandral.
*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = (GetGlobalNumber("DAN_CASUS_PLOT") == 2);

    return iResult;
}

