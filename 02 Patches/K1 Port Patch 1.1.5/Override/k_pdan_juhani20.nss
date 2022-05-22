//:: k_pdan_juhani20
/*

*/
//:: Created By: Peter T
//:: Copyright (c) 2002 Bioware Corp.
#include "k_inc_debug"

int StartingConditional()
{
    int iResult;

    iResult = ((GetGlobalNumber("DAN_JUHANI_PLOT") == 2) && (GetGlobalBoolean("DAN_JUHANI_DONE") == FALSE));
    if (iResult)
        SetGlobalBoolean("DAN_JUHANI_DONE", TRUE);

    return iResult;
}

